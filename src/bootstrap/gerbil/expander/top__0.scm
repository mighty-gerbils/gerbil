(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707735856)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx154331_)
        (letrec ((_expand-special154333_
                  (lambda (_hd154335_ _K154336_ _rest154337_ _r154338_)
                    (_K154336_
                     _rest154337_
                     (cons (gx#core-expand-top _hd154335_) _r154338_)))))
          (gx#core-expand-block__0 _stx154331_ _expand-special154333_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx154084_)
        (letrec ((_expand-special154086_
                  (lambda (_hd154206_ _K154207_ _rest154208_ _r154209_)
                    (let* ((_K154213_
                            (lambda (_e154211_)
                              (_K154207_
                               _rest154208_
                               (cons _e154211_ _r154209_))))
                           (_e154214154243_ _hd154206_)
                           (_E154238154247_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154214154243_)))
                           (_E154234154259_
                            (lambda ()
                              (if (gx#stx-pair? _e154214154243_)
                                  (let ((_e154239154251_
                                         (gx#syntax-e _e154214154243_)))
                                    (let ((_hd154240154254_
                                           (##car _e154239154251_))
                                          (_tl154241154256_
                                           (##cdr _e154239154251_)))
                                      (if (and (gx#identifier?
                                                _hd154240154254_)
                                               (gx#core-identifier=?
                                                _hd154240154254_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K154213_
                                               (gx#core-expand-define-runtime%
                                                _hd154206_))
                                              (_E154238154247_))
                                          (_E154238154247_))))
                                  (_E154238154247_))))
                           (_E154230154271_
                            (lambda ()
                              (if (gx#stx-pair? _e154214154243_)
                                  (let ((_e154235154263_
                                         (gx#syntax-e _e154214154243_)))
                                    (let ((_hd154236154266_
                                           (##car _e154235154263_))
                                          (_tl154237154268_
                                           (##cdr _e154235154263_)))
                                      (if (and (gx#identifier?
                                                _hd154236154266_)
                                               (gx#core-identifier=?
                                                _hd154236154266_
                                                '%#define-alias))
                                          (if '#t
                                              (_K154213_
                                               (gx#core-expand-define-alias%
                                                _hd154206_))
                                              (_E154234154259_))
                                          (_E154234154259_))))
                                  (_E154234154259_))))
                           (_E154220154283_
                            (lambda ()
                              (if (gx#stx-pair? _e154214154243_)
                                  (let ((_e154231154275_
                                         (gx#syntax-e _e154214154243_)))
                                    (let ((_hd154232154278_
                                           (##car _e154231154275_))
                                          (_tl154233154280_
                                           (##cdr _e154231154275_)))
                                      (if (and (gx#identifier?
                                                _hd154232154278_)
                                               (gx#core-identifier=?
                                                _hd154232154278_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K154213_
                                               (gx#core-expand-define-syntax%
                                                _hd154206_))
                                              (_E154230154271_))
                                          (_E154230154271_))))
                                  (_E154230154271_))))
                           (_E154216154315_
                            (lambda ()
                              (if (gx#stx-pair? _e154214154243_)
                                  (let ((_e154221154287_
                                         (gx#syntax-e _e154214154243_)))
                                    (let ((_hd154222154290_
                                           (##car _e154221154287_))
                                          (_tl154223154292_
                                           (##cdr _e154221154287_)))
                                      (if (and (gx#identifier?
                                                _hd154222154290_)
                                               (gx#core-identifier=?
                                                _hd154222154290_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154223154292_)
                                              (let ((_e154224154295_
                                                     (gx#syntax-e
                                                      _tl154223154292_)))
                                                (let ((_hd154225154298_
                                                       (##car _e154224154295_))
                                                      (_tl154226154300_
                                                       (##cdr _e154224154295_)))
                                                  (let ((_hd-bind154303_
                                                         _hd154225154298_))
                                                    (if (gx#stx-pair?
                                                         _tl154226154300_)
                                                        (let ((_e154227154305_
                                                               (gx#syntax-e
                                                                _tl154226154300_)))
                                                          (let ((_hd154228154308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154227154305_))
                        (_tl154229154310_ (##cdr _e154227154305_)))
                    (let ((_expr154313_ _hd154228154308_))
                      (if (gx#stx-null? _tl154229154310_)
                          (if (gx#core-bind-values? _hd-bind154303_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154303_)
                                (_K154213_ _hd154206_))
                              (_E154220154283_))
                          (_E154220154283_)))))
                (_E154220154283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154220154283_))
                                          (_E154220154283_))))
                                  (_E154220154283_))))
                           (_E154215154327_
                            (lambda ()
                              (if (gx#stx-pair? _e154214154243_)
                                  (let ((_e154217154319_
                                         (gx#syntax-e _e154214154243_)))
                                    (let ((_hd154218154322_
                                           (##car _e154217154319_))
                                          (_tl154219154324_
                                           (##cdr _e154217154319_)))
                                      (if (and (gx#identifier?
                                                _hd154218154322_)
                                               (gx#core-identifier=?
                                                _hd154218154322_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K154213_
                                               (gx#core-expand-begin-syntax%
                                                _hd154206_))
                                              (_E154216154315_))
                                          (_E154216154315_))))
                                  (_E154216154315_)))))
                      (_E154215154327_))))
                 (_eval-body154087_
                  (lambda (_rbody154095_)
                    (let _lp154097_ ((_rest154099_ _rbody154095_)
                                     (_body154100_ '())
                                     (_ebody154101_ '()))
                      (let* ((_rest154102154110_ _rest154099_)
                             (_else154104154118_
                              (lambda ()
                                (values _body154100_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody154101_)
                                          (gx#stx-source _stx154084_))))))
                             (_K154106154194_
                              (lambda (_rest154121_ _hd154122_)
                                (let* ((_e154123154140_ _hd154122_)
                                       (_E154135154144_
                                        (lambda ()
                                          (_lp154097_
                                           _rest154121_
                                           (cons _hd154122_ _body154100_)
                                           (cons _hd154122_ _ebody154101_))))
                                       (_E154125154156_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154123154140_)
                                              (let ((_e154136154148_
                                                     (gx#syntax-e
                                                      _e154123154140_)))
                                                (let ((_hd154137154151_
                                                       (##car _e154136154148_))
                                                      (_tl154138154153_
                                                       (##cdr _e154136154148_)))
                                                  (if (and (gx#identifier?
                                                            _hd154137154151_)
                                                           (gx#core-identifier=?
                                                            _hd154137154151_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp154097_
                                                           _rest154121_
                                                           (cons _hd154122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body154100_)
                   _ebody154101_)
                  (_E154135154144_))
              (_E154135154144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154135154144_))))
                                       (_E154124154190_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154123154140_)
                                              (let ((_e154126154160_
                                                     (gx#syntax-e
                                                      _e154123154140_)))
                                                (let ((_hd154127154163_
                                                       (##car _e154126154160_))
                                                      (_tl154128154165_
                                                       (##cdr _e154126154160_)))
                                                  (if (and (gx#identifier?
                                                            _hd154127154163_)
                                                           (gx#core-identifier=?
                                                            _hd154127154163_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl154128154165_)
                                                          (let ((_e154129154168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl154128154165_)))
                    (let ((_hd154130154171_ (##car _e154129154168_))
                          (_tl154131154173_ (##cdr _e154129154168_)))
                      (let ((_hd-bind154176_ _hd154130154171_))
                        (if (gx#stx-pair? _tl154131154173_)
                            (let ((_e154132154178_
                                   (gx#syntax-e _tl154131154173_)))
                              (let ((_hd154133154181_ (##car _e154132154178_))
                                    (_tl154134154183_ (##cdr _e154132154178_)))
                                (let ((_expr154186_ _hd154133154181_))
                                  (if (gx#stx-null? _tl154134154183_)
                                      (if '#t
                                          (let ((_ehd154188_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind154176_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr154186_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd154122_))))
                                            (_lp154097_
                                             _rest154121_
                                             (cons _ehd154188_ _body154100_)
                                             (cons _ehd154188_ _ebody154101_)))
                                          (_E154125154156_))
                                      (_E154125154156_)))))
                            (_E154125154156_)))))
                  (_E154125154156_))
              (_E154125154156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154125154156_)))))
                                  (_E154124154190_)))))
                        (if (##pair? _rest154102154110_)
                            (let ((_hd154107154197_ (##car _rest154102154110_))
                                  (_tl154108154199_
                                   (##cdr _rest154102154110_)))
                              (let* ((_hd154202_ _hd154107154197_)
                                     (_rest154204_ _tl154108154199_))
                                (_K154106154194_ _rest154204_ _hd154202_)))
                            (_else154104154118_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody154090_
                     (gx#core-expand-block__1
                      _stx154084_
                      _expand-special154086_
                      '#f))
                    (_g158922_ (_eval-body154087_ _rbody154090_)))
               (begin
                 (let ((_g158923_
                        (if (##values? _g158922_)
                            (##vector-length _g158922_)
                            1)))
                   (if (not (##fx= _g158923_ 2))
                       (error "Context expects 2 values" _g158923_)))
                 (let ((_expanded-body154092_ (##vector-ref _g158922_ 0))
                       (_value154093_ (##vector-ref _g158922_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body154092_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value154093_ '())))
                    (gx#stx-source _stx154084_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx154054_)
        (let* ((_e154055154062_ _stx154054_)
               (_E154057154066_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154055154062_)))
               (_E154056154080_
                (lambda ()
                  (if (gx#stx-pair? _e154055154062_)
                      (let ((_e154058154070_ (gx#syntax-e _e154055154062_)))
                        (let ((_hd154059154073_ (##car _e154058154070_))
                              (_tl154060154075_ (##cdr _e154058154070_)))
                          (let ((_body154078_ _tl154060154075_))
                            (if (gx#stx-list? _body154078_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body154078_)
                                 (gx#stx-source _stx154054_))
                                (_E154057154066_)))))
                      (_E154057154066_)))))
          (_E154056154080_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx154052_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx154052_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx153998_)
        (let* ((_e153999154012_ _stx153998_)
               (_E154001154016_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153999154012_)))
               (_E154000154048_
                (lambda ()
                  (if (gx#stx-pair? _e153999154012_)
                      (let ((_e154002154020_ (gx#syntax-e _e153999154012_)))
                        (let ((_hd154003154023_ (##car _e154002154020_))
                              (_tl154004154025_ (##cdr _e154002154020_)))
                          (if (gx#stx-pair? _tl154004154025_)
                              (let ((_e154005154028_
                                     (gx#syntax-e _tl154004154025_)))
                                (let ((_hd154006154031_
                                       (##car _e154005154028_))
                                      (_tl154007154033_
                                       (##cdr _e154005154028_)))
                                  (let ((_ann154036_ _hd154006154031_))
                                    (if (gx#stx-pair? _tl154007154033_)
                                        (let ((_e154008154038_
                                               (gx#syntax-e _tl154007154033_)))
                                          (let ((_hd154009154041_
                                                 (##car _e154008154038_))
                                                (_tl154010154043_
                                                 (##cdr _e154008154038_)))
                                            (let ((_expr154046_
                                                   _hd154009154041_))
                                              (if (gx#stx-null?
                                                   _tl154010154043_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann154036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr154046_)
                                 '())))
               (gx#stx-source _stx153998_))
              (_E154001154016_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154001154016_)))))
                                        (_E154001154016_)))))
                              (_E154001154016_))))
                      (_E154001154016_)))))
          (_E154000154048_))))
    (define gx#core-expand-local-block
      (lambda (_stx153722_ _body153723_)
        (letrec ((_expand-special153725_
                  (lambda (_hd153993_ _K153994_ _rest153995_ _r153996_)
                    (_K153994_
                     '()
                     (cons (_expand-internal153726_ _hd153993_ _rest153995_)
                           _r153996_))))
                 (_expand-internal153726_
                  (lambda (_hd153989_ _rest153990_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal153728_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd153989_ _rest153990_))
                          (gx#stx-source _stx153722_))
                         _expand-internal-special153727_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj158916
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj158916)
                       __obj158916))))
                 (_expand-internal-special153727_
                  (lambda (_hd153884_ _K153885_ _rest153886_ _r153887_)
                    (let* ((_e153888153913_ _hd153884_)
                           (_E153908153917_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153888153913_)))
                           (_E153904153929_
                            (lambda ()
                              (if (gx#stx-pair? _e153888153913_)
                                  (let ((_e153909153921_
                                         (gx#syntax-e _e153888153913_)))
                                    (let ((_hd153910153924_
                                           (##car _e153909153921_))
                                          (_tl153911153926_
                                           (##cdr _e153909153921_)))
                                      (if (and (gx#identifier?
                                                _hd153910153924_)
                                               (gx#core-identifier=?
                                                _hd153910153924_
                                                '%#declare))
                                          (if '#t
                                              (_K153885_
                                               _rest153886_
                                               (cons (gx#core-expand-declare%
                                                      _hd153884_)
                                                     _r153887_))
                                              (_E153908153917_))
                                          (_E153908153917_))))
                                  (_E153908153917_))))
                           (_E153900153941_
                            (lambda ()
                              (if (gx#stx-pair? _e153888153913_)
                                  (let ((_e153905153933_
                                         (gx#syntax-e _e153888153913_)))
                                    (let ((_hd153906153936_
                                           (##car _e153905153933_))
                                          (_tl153907153938_
                                           (##cdr _e153905153933_)))
                                      (if (and (gx#identifier?
                                                _hd153906153936_)
                                               (gx#core-identifier=?
                                                _hd153906153936_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd153884_)
                                                (_K153885_
                                                 _rest153886_
                                                 _r153887_))
                                              (_E153904153929_))
                                          (_E153904153929_))))
                                  (_E153904153929_))))
                           (_E153890153953_
                            (lambda ()
                              (if (gx#stx-pair? _e153888153913_)
                                  (let ((_e153901153945_
                                         (gx#syntax-e _e153888153913_)))
                                    (let ((_hd153902153948_
                                           (##car _e153901153945_))
                                          (_tl153903153950_
                                           (##cdr _e153901153945_)))
                                      (if (and (gx#identifier?
                                                _hd153902153948_)
                                               (gx#core-identifier=?
                                                _hd153902153948_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd153884_)
                                                (_K153885_
                                                 _rest153886_
                                                 _r153887_))
                                              (_E153900153941_))
                                          (_E153900153941_))))
                                  (_E153900153941_))))
                           (_E153889153985_
                            (lambda ()
                              (if (gx#stx-pair? _e153888153913_)
                                  (let ((_e153891153957_
                                         (gx#syntax-e _e153888153913_)))
                                    (let ((_hd153892153960_
                                           (##car _e153891153957_))
                                          (_tl153893153962_
                                           (##cdr _e153891153957_)))
                                      (if (and (gx#identifier?
                                                _hd153892153960_)
                                               (gx#core-identifier=?
                                                _hd153892153960_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153893153962_)
                                              (let ((_e153894153965_
                                                     (gx#syntax-e
                                                      _tl153893153962_)))
                                                (let ((_hd153895153968_
                                                       (##car _e153894153965_))
                                                      (_tl153896153970_
                                                       (##cdr _e153894153965_)))
                                                  (let ((_hd-bind153973_
                                                         _hd153895153968_))
                                                    (if (gx#stx-pair?
                                                         _tl153896153970_)
                                                        (let ((_e153897153975_
                                                               (gx#syntax-e
                                                                _tl153896153970_)))
                                                          (let ((_hd153898153978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153897153975_))
                        (_tl153899153980_ (##cdr _e153897153975_)))
                    (let ((_expr153983_ _hd153898153978_))
                      (if (gx#stx-null? _tl153899153980_)
                          (if (gx#core-bind-values? _hd-bind153973_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153973_)
                                (_K153885_
                                 _rest153886_
                                 (cons _hd153884_ _r153887_)))
                              (_E153890153953_))
                          (_E153890153953_)))))
                (_E153890153953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153890153953_))
                                          (_E153890153953_))))
                                  (_E153890153953_)))))
                      (_E153889153985_))))
                 (_wrap-internal153728_
                  (lambda (_rbody153730_)
                    (let _lp153732_ ((_rest153734_ _rbody153730_)
                                     (_decls153735_ '())
                                     (_bind153736_ '())
                                     (_body153737_ '()))
                      (let* ((_e153738153745_ _rest153734_)
                             (_E153740153794_
                              (lambda ()
                                (let* ((_body153789_
                                        (let* ((_body153748153758_
                                                _body153737_)
                                               (_else153751153766_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153737_)
                                                   (gx#stx-source
                                                    _stx153722_)))))
                                          (let ((_K153756153786_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx153722_)))
                                                (_K153753153772_
                                                 (lambda (_expr153770_)
                                                   _expr153770_)))
                                            (let ((_try-match153750153782_
                                                   (lambda ()
                                                     (if (##pair? _body153748153758_)
                                                         (let ((_tl153755153777_
                                                                (##cdr _body153748153758_))
                                                               (_hd153754153775_
                                                                (##car _body153748153758_)))
                                                           (if (##null? _tl153755153777_)
                                                               (let ((_expr153780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153754153775_))
                         (_K153753153772_ _expr153780_))
                       (_else153751153766_)))
                 (_else153751153766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body153748153758_)
                                                  (_K153756153786_)
                                                  (_try-match153750153782_))))))
                                       (_body153791_
                                        (if (null? _bind153736_)
                                            _body153789_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind153736_
                                                         (cons _body153789_
                                                               '())))
                                             (gx#stx-source _stx153722_)))))
                                  (if (null? _decls153735_)
                                      _body153791_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls153735_
                                                   (cons _body153791_ '())))
                                       (gx#stx-source _stx153722_))))))
                             (_E153739153880_
                              (lambda ()
                                (if (gx#stx-pair? _e153738153745_)
                                    (let ((_e153741153798_
                                           (gx#syntax-e _e153738153745_)))
                                      (let ((_hd153742153801_
                                             (##car _e153741153798_))
                                            (_tl153743153803_
                                             (##cdr _e153741153798_)))
                                        (let* ((_hd153806_ _hd153742153801_)
                                               (_rest153808_ _tl153743153803_))
                                          (if '#t
                                              (let* ((_e153809153826_
                                                      _hd153806_)
                                                     (_E153821153830_
                                                      (lambda ()
                                                        (if (null? _bind153736_)
                                                            (_lp153732_
                                                             _rest153808_
                                                             _decls153735_
                                                             _bind153736_
                                                             (cons _hd153806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body153737_))
                    (_lp153732_
                     _rest153808_
                     _decls153735_
                     (cons (cons '#f (cons _hd153806_ '())) _bind153736_)
                     _body153737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153811153844_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153809153826_)
                                                            (let ((_e153822153834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153809153826_)))
                      (let ((_hd153823153837_ (##car _e153822153834_))
                            (_tl153824153839_ (##cdr _e153822153834_)))
                        (if (and (gx#identifier? _hd153823153837_)
                                 (gx#core-identifier=?
                                  _hd153823153837_
                                  '%#declare))
                            (let ((_xdecls153842_ _tl153824153839_))
                              (if '#t
                                  (_lp153732_
                                   _rest153808_
                                   (gx#stx-foldr
                                    cons
                                    _decls153735_
                                    _xdecls153842_)
                                   _bind153736_
                                   _body153737_)
                                  (_E153821153830_)))
                            (_E153821153830_))))
                    (_E153821153830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153810153876_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153809153826_)
                                                            (let ((_e153812153848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153809153826_)))
                      (let ((_hd153813153851_ (##car _e153812153848_))
                            (_tl153814153853_ (##cdr _e153812153848_)))
                        (if (and (gx#identifier? _hd153813153851_)
                                 (gx#core-identifier=?
                                  _hd153813153851_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl153814153853_)
                                (let ((_e153815153856_
                                       (gx#syntax-e _tl153814153853_)))
                                  (let ((_hd153816153859_
                                         (##car _e153815153856_))
                                        (_tl153817153861_
                                         (##cdr _e153815153856_)))
                                    (let ((_hd-bind153864_ _hd153816153859_))
                                      (if (gx#stx-pair? _tl153817153861_)
                                          (let ((_e153818153866_
                                                 (gx#syntax-e
                                                  _tl153817153861_)))
                                            (let ((_hd153819153869_
                                                   (##car _e153818153866_))
                                                  (_tl153820153871_
                                                   (##cdr _e153818153866_)))
                                              (let ((_expr153874_
                                                     _hd153819153869_))
                                                (if (gx#stx-null?
                                                     _tl153820153871_)
                                                    (if '#t
                                                        (_lp153732_
                                                         _rest153808_
                                                         _decls153735_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind153864_)
                             (cons (gx#core-expand-expression _expr153874_)
                                   '()))
                       _bind153736_)
                 _body153737_)
                (_E153811153844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153811153844_)))))
                                          (_E153811153844_)))))
                                (_E153811153844_))
                            (_E153811153844_))))
                    (_E153811153844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153810153876_))
                                              (_E153740153794_)))))
                                    (_E153740153794_)))))
                        (_E153739153880_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body153723_)
            (gx#stx-source _stx153722_))
           _expand-special153725_))))
    (define gx#core-expand-declare%
      (lambda (_stx153660_)
        (let* ((_e153661153668_ _stx153660_)
               (_E153663153672_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153661153668_)))
               (_E153662153718_
                (lambda ()
                  (if (gx#stx-pair? _e153661153668_)
                      (let ((_e153664153676_ (gx#syntax-e _e153661153668_)))
                        (let ((_hd153665153679_ (##car _e153664153676_))
                              (_tl153666153681_ (##cdr _e153664153676_)))
                          (let ((_body153684_ _tl153666153681_))
                            (if (gx#stx-list? _body153684_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl153686_)
                                     (let* ((_e153687153694_ _decl153686_)
                                            (_E153689153698_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e153687153694_)))
                                            (_E153688153714_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e153687153694_)
                                                   (let ((_e153690153702_
                                                          (gx#syntax-e
                                                           _e153687153694_)))
                                                     (let ((_hd153691153705_
                                                            (##car _e153690153702_))
                                                           (_tl153692153707_
                                                            (##cdr _e153690153702_)))
                                                       (let* ((_head153710_
                                                               _hd153691153705_)
                                                              (_args153712_
                                                               _tl153692153707_))
                                                         (if (gx#stx-list?
                                                              _args153712_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl153686_)
                                                             (_E153689153698_)))))
                                                   (_E153689153698_)))))
                                       (_E153688153714_)))
                                   _body153684_))
                                 (gx#stx-source _stx153660_))
                                (_E153663153672_)))))
                      (_E153663153672_)))))
          (_E153662153718_))))
    (define gx#core-expand-extern%
      (lambda (_stx153564_)
        (let* ((_e153565153572_ _stx153564_)
               (_E153567153576_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153565153572_)))
               (_E153566153656_
                (lambda ()
                  (if (gx#stx-pair? _e153565153572_)
                      (let ((_e153568153580_ (gx#syntax-e _e153565153572_)))
                        (let ((_hd153569153583_ (##car _e153568153580_))
                              (_tl153570153585_ (##cdr _e153568153580_)))
                          (let ((_body153588_ _tl153570153585_))
                            (if '#t
                                (let _lp153590_ ((_rest153592_ _body153588_)
                                                 (_r153593_ '()))
                                  (let* ((_e153594153608_ _rest153592_)
                                         (_E153606153612_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx153564_)))
                                         (_E153596153616_
                                          (lambda ()
                                            (if (gx#stx-null? _e153594153608_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r153593_))
                                                     (gx#stx-source
                                                      _stx153564_))
                                                    (_E153606153612_))
                                                (_E153606153612_))))
                                         (_E153595153652_
                                          (lambda ()
                                            (if (gx#stx-pair? _e153594153608_)
                                                (let ((_e153597153620_
                                                       (gx#syntax-e
                                                        _e153594153608_)))
                                                  (let ((_hd153598153623_
                                                         (##car _e153597153620_))
                                                        (_tl153599153625_
                                                         (##cdr _e153597153620_)))
                                                    (if (gx#stx-pair?
                                                         _hd153598153623_)
                                                        (let ((_e153600153628_
                                                               (gx#syntax-e
                                                                _hd153598153623_)))
                                                          (let ((_hd153601153631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153600153628_))
                        (_tl153602153633_ (##cdr _e153600153628_)))
                    (let ((_id153636_ _hd153601153631_))
                      (if (gx#stx-pair? _tl153602153633_)
                          (let ((_e153603153638_
                                 (gx#syntax-e _tl153602153633_)))
                            (let ((_hd153604153641_ (##car _e153603153638_))
                                  (_tl153605153643_ (##cdr _e153603153638_)))
                              (let ((_eid153646_ _hd153604153641_))
                                (if (gx#stx-null? _tl153605153643_)
                                    (let ((_rest153648_ _tl153599153625_))
                                      (if (and (gx#identifier? _id153636_)
                                               (gx#identifier? _eid153646_))
                                          (let ((_eid153650_
                                                 (gx#stx-e _eid153646_)))
                                            (gx#core-bind-extern!__0
                                             _id153636_
                                             _eid153650_)
                                            (_lp153590_
                                             _rest153648_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id153636_)
                                                         (cons _eid153650_
                                                               '()))
                                                   _r153593_)))
                                          (_E153596153616_)))
                                    (_E153596153616_)))))
                          (_E153596153616_)))))
                (_E153596153616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153596153616_)))))
                                    (_E153595153652_)))
                                (_E153567153576_)))))
                      (_E153567153576_)))))
          (_E153566153656_))))
    (define gx#core-expand-define-values%
      (lambda (_stx153510_)
        (let* ((_e153511153524_ _stx153510_)
               (_E153513153528_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153511153524_)))
               (_E153512153560_
                (lambda ()
                  (if (gx#stx-pair? _e153511153524_)
                      (let ((_e153514153532_ (gx#syntax-e _e153511153524_)))
                        (let ((_hd153515153535_ (##car _e153514153532_))
                              (_tl153516153537_ (##cdr _e153514153532_)))
                          (if (gx#stx-pair? _tl153516153537_)
                              (let ((_e153517153540_
                                     (gx#syntax-e _tl153516153537_)))
                                (let ((_hd153518153543_
                                       (##car _e153517153540_))
                                      (_tl153519153545_
                                       (##cdr _e153517153540_)))
                                  (let ((_hd153548_ _hd153518153543_))
                                    (if (gx#stx-pair? _tl153519153545_)
                                        (let ((_e153520153550_
                                               (gx#syntax-e _tl153519153545_)))
                                          (let ((_hd153521153553_
                                                 (##car _e153520153550_))
                                                (_tl153522153555_
                                                 (##cdr _e153520153550_)))
                                            (let ((_expr153558_
                                                   _hd153521153553_))
                                              (if (gx#stx-null?
                                                   _tl153522153555_)
                                                  (if (gx#core-bind-values?
                                                       _hd153548_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd153548_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153548_)
                             (cons (gx#core-expand-expression _expr153558_)
                                   '())))
                 (gx#stx-source _stx153510_)))
              (_E153513153528_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153513153528_)))))
                                        (_E153513153528_)))))
                              (_E153513153528_))))
                      (_E153513153528_)))))
          (_E153512153560_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx153454_)
        (let* ((_e153455153468_ _stx153454_)
               (_E153457153472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153455153468_)))
               (_E153456153506_
                (lambda ()
                  (if (gx#stx-pair? _e153455153468_)
                      (let ((_e153458153476_ (gx#syntax-e _e153455153468_)))
                        (let ((_hd153459153479_ (##car _e153458153476_))
                              (_tl153460153481_ (##cdr _e153458153476_)))
                          (if (gx#stx-pair? _tl153460153481_)
                              (let ((_e153461153484_
                                     (gx#syntax-e _tl153460153481_)))
                                (let ((_hd153462153487_
                                       (##car _e153461153484_))
                                      (_tl153463153489_
                                       (##cdr _e153461153484_)))
                                  (let ((_id153492_ _hd153462153487_))
                                    (if (gx#stx-pair? _tl153463153489_)
                                        (let ((_e153464153494_
                                               (gx#syntax-e _tl153463153489_)))
                                          (let ((_hd153465153497_
                                                 (##car _e153464153494_))
                                                (_tl153466153499_
                                                 (##cdr _e153464153494_)))
                                            (let ((_binding-id153502_
                                                   _hd153465153497_))
                                              (if (gx#stx-null?
                                                   _tl153466153499_)
                                                  (if (and (gx#identifier?
                                                            _id153492_)
                                                           (gx#identifier?
                                                            _binding-id153502_))
                                                      (let ((_eid153504_
                                                             (gx#stx-e
                                                              _binding-id153502_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id153492_
                                                         _eid153504_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153492_)
                             (cons _eid153504_ '())))))
              (_E153457153472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153457153472_)))))
                                        (_E153457153472_)))))
                              (_E153457153472_))))
                      (_E153457153472_)))))
          (_E153456153506_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx153397_)
        (let* ((_e153398153411_ _stx153397_)
               (_E153400153415_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153398153411_)))
               (_E153399153450_
                (lambda ()
                  (if (gx#stx-pair? _e153398153411_)
                      (let ((_e153401153419_ (gx#syntax-e _e153398153411_)))
                        (let ((_hd153402153422_ (##car _e153401153419_))
                              (_tl153403153424_ (##cdr _e153401153419_)))
                          (if (gx#stx-pair? _tl153403153424_)
                              (let ((_e153404153427_
                                     (gx#syntax-e _tl153403153424_)))
                                (let ((_hd153405153430_
                                       (##car _e153404153427_))
                                      (_tl153406153432_
                                       (##cdr _e153404153427_)))
                                  (let ((_id153435_ _hd153405153430_))
                                    (if (gx#stx-pair? _tl153406153432_)
                                        (let ((_e153407153437_
                                               (gx#syntax-e _tl153406153432_)))
                                          (let ((_hd153408153440_
                                                 (##car _e153407153437_))
                                                (_tl153409153442_
                                                 (##cdr _e153407153437_)))
                                            (let ((_expr153445_
                                                   _hd153408153440_))
                                              (if (gx#stx-null?
                                                   _tl153409153442_)
                                                  (if (gx#identifier?
                                                       _id153435_)
                                                      (let ((_g158924_
                                                             (gx#core-expand-expression+1
                                                              _expr153445_)))
                                                        (begin
                                                          (let ((_g158925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g158924_)
                             (##vector-length _g158924_)
                             1)))
                    (if (not (##fx= _g158925_ 2))
                        (error "Context expects 2 values" _g158925_)))
                  (let ((_e-stx153447_ (##vector-ref _g158924_ 0))
                        (_e153448_ (##vector-ref _g158924_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id153435_ _e153448_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id153435_)
                                   (cons _e-stx153447_ '())))
                       (gx#stx-source _stx153397_))))))
              (_E153400153415_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153400153415_)))))
                                        (_E153400153415_)))))
                              (_E153400153415_))))
                      (_E153400153415_)))))
          (_E153399153450_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx153341_)
        (let* ((_e153342153355_ _stx153341_)
               (_E153344153359_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153342153355_)))
               (_E153343153393_
                (lambda ()
                  (if (gx#stx-pair? _e153342153355_)
                      (let ((_e153345153363_ (gx#syntax-e _e153342153355_)))
                        (let ((_hd153346153366_ (##car _e153345153363_))
                              (_tl153347153368_ (##cdr _e153345153363_)))
                          (if (gx#stx-pair? _tl153347153368_)
                              (let ((_e153348153371_
                                     (gx#syntax-e _tl153347153368_)))
                                (let ((_hd153349153374_
                                       (##car _e153348153371_))
                                      (_tl153350153376_
                                       (##cdr _e153348153371_)))
                                  (let ((_id153379_ _hd153349153374_))
                                    (if (gx#stx-pair? _tl153350153376_)
                                        (let ((_e153351153381_
                                               (gx#syntax-e _tl153350153376_)))
                                          (let ((_hd153352153384_
                                                 (##car _e153351153381_))
                                                (_tl153353153386_
                                                 (##cdr _e153351153381_)))
                                            (let ((_alias-id153389_
                                                   _hd153352153384_))
                                              (if (gx#stx-null?
                                                   _tl153353153386_)
                                                  (if (and (gx#identifier?
                                                            _id153379_)
                                                           (gx#identifier?
                                                            _alias-id153389_))
                                                      (let ((_alias-id153391_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id153389_)))
                                                        (gx#core-bind-alias!__0
                                                         _id153379_
                                                         _alias-id153391_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153379_)
                             (cons _alias-id153391_ '())))))
              (_E153344153359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153344153359_)))))
                                        (_E153344153359_)))))
                              (_E153344153359_))))
                      (_E153344153359_)))))
          (_E153343153393_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx153284_ _wrap?153285_)
        (let* ((_e153286153296_ _stx153284_)
               (_E153288153300_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153286153296_)))
               (_E153287153327_
                (lambda ()
                  (if (gx#stx-pair? _e153286153296_)
                      (let ((_e153289153304_ (gx#syntax-e _e153286153296_)))
                        (let ((_hd153290153307_ (##car _e153289153304_))
                              (_tl153291153309_ (##cdr _e153289153304_)))
                          (if (gx#stx-pair? _tl153291153309_)
                              (let ((_e153292153312_
                                     (gx#syntax-e _tl153291153309_)))
                                (let ((_hd153293153315_
                                       (##car _e153292153312_))
                                      (_tl153294153317_
                                       (##cdr _e153292153312_)))
                                  (let* ((_hd153320_ _hd153293153315_)
                                         (_body153322_ _tl153294153317_))
                                    (if (gx#core-bind-values? _hd153320_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd153320_)
                                           (let ((_body153325_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd153320_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx153284_
                                                               _body153322_)
                                                              '()))))
                                             (if _wrap?153285_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body153325_)
                                                  (gx#stx-source _stx153284_))
                                                 _body153325_)))
                                         gx#current-expander-context
                                         (let ((__obj158917
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158917)
                                           __obj158917))
                                        (_E153288153300_)))))
                              (_E153288153300_))))
                      (_E153288153300_)))))
          (_E153287153327_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx153334_)
        (let ((_wrap?153336_ '#t))
          (gx#core-expand-lambda%__% _stx153334_ _wrap?153336_))))
    (define gx#core-expand-lambda%
      (lambda _g158927_
        (let ((_g158926_ (##length _g158927_)))
          (cond ((##fx= _g158926_ 1)
                 (apply (lambda (_stx153334_)
                          (gx#core-expand-lambda%__0 _stx153334_))
                        _g158927_))
                ((##fx= _g158926_ 2)
                 (apply (lambda (_stx153338_ _wrap?153339_)
                          (gx#core-expand-lambda%__%
                           _stx153338_
                           _wrap?153339_))
                        _g158927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g158927_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx153248_)
        (let* ((_e153249153256_ _stx153248_)
               (_E153251153260_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153249153256_)))
               (_E153250153279_
                (lambda ()
                  (if (gx#stx-pair? _e153249153256_)
                      (let ((_e153252153264_ (gx#syntax-e _e153249153256_)))
                        (let ((_hd153253153267_ (##car _e153252153264_))
                              (_tl153254153269_ (##cdr _e153252153264_)))
                          (let ((_clauses153272_ _tl153254153269_))
                            (if (gx#stx-list? _clauses153272_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause153274_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause153274_)
                                       (let ((_$e153276_
                                              (gx#stx-source _clause153274_)))
                                         (if _$e153276_
                                             _$e153276_
                                             (gx#stx-source _stx153248_))))
                                      '#f))
                                   _clauses153272_))
                                 (gx#stx-source _stx153248_))
                                (_E153251153260_)))))
                      (_E153251153260_)))))
          (_E153250153279_))))
    (define gx#core-expand-let-values%
      (lambda (_stx153202_)
        (let* ((_e153203153213_ _stx153202_)
               (_E153205153217_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153203153213_)))
               (_E153204153244_
                (lambda ()
                  (if (gx#stx-pair? _e153203153213_)
                      (let ((_e153206153221_ (gx#syntax-e _e153203153213_)))
                        (let ((_hd153207153224_ (##car _e153206153221_))
                              (_tl153208153226_ (##cdr _e153206153221_)))
                          (if (gx#stx-pair? _tl153208153226_)
                              (let ((_e153209153229_
                                     (gx#syntax-e _tl153208153226_)))
                                (let ((_hd153210153232_
                                       (##car _e153209153229_))
                                      (_tl153211153234_
                                       (##cdr _e153209153229_)))
                                  (let* ((_hd153237_ _hd153210153232_)
                                         (_body153239_ _tl153211153234_))
                                    (if (gx#core-expand-let-bind? _hd153237_)
                                        (let ((_expressions153241_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd153237_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd153237_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd153237_
                                                           _expressions153241_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx153202_
                         _body153239_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx153202_)))
                                           gx#current-expander-context
                                           (let ((__obj158918
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj158918)
                                             __obj158918)))
                                        (_E153205153217_)))))
                              (_E153205153217_))))
                      (_E153205153217_)))))
          (_E153204153244_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx153147_ _form153148_)
        (let* ((_e153149153159_ _stx153147_)
               (_E153151153163_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153149153159_)))
               (_E153150153188_
                (lambda ()
                  (if (gx#stx-pair? _e153149153159_)
                      (let ((_e153152153167_ (gx#syntax-e _e153149153159_)))
                        (let ((_hd153153153170_ (##car _e153152153167_))
                              (_tl153154153172_ (##cdr _e153152153167_)))
                          (if (gx#stx-pair? _tl153154153172_)
                              (let ((_e153155153175_
                                     (gx#syntax-e _tl153154153172_)))
                                (let ((_hd153156153178_
                                       (##car _e153155153175_))
                                      (_tl153157153180_
                                       (##cdr _e153155153175_)))
                                  (let* ((_hd153183_ _hd153156153178_)
                                         (_body153185_ _tl153157153180_))
                                    (if (gx#core-expand-let-bind? _hd153183_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd153183_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form153148_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd153183_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd153183_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx153147_
                                                               _body153185_)
                                                              '())))
                                            (gx#stx-source _stx153147_)))
                                         gx#current-expander-context
                                         (let ((__obj158919
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158919)
                                           __obj158919))
                                        (_E153151153163_)))))
                              (_E153151153163_))))
                      (_E153151153163_)))))
          (_E153150153188_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx153195_)
        (let ((_form153197_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx153195_ _form153197_))))
    (define gx#core-expand-letrec-values%
      (lambda _g158929_
        (let ((_g158928_ (##length _g158929_)))
          (cond ((##fx= _g158928_ 1)
                 (apply (lambda (_stx153195_)
                          (gx#core-expand-letrec-values%__0 _stx153195_))
                        _g158929_))
                ((##fx= _g158928_ 2)
                 (apply (lambda (_stx153199_ _form153200_)
                          (gx#core-expand-letrec-values%__%
                           _stx153199_
                           _form153200_))
                        _g158929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g158929_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx153144_)
        (gx#core-expand-letrec-values%__% _stx153144_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx153101_)
        (if (gx#stx-list? _stx153101_)
            (gx#stx-andmap
             (lambda (_bind153103_)
               (let* ((_e153104153114_ _bind153103_)
                      (_E153106153118_ (lambda () '#f))
                      (_E153105153140_
                       (lambda ()
                         (if (gx#stx-pair? _e153104153114_)
                             (let ((_e153107153122_
                                    (gx#syntax-e _e153104153114_)))
                               (let ((_hd153108153125_ (##car _e153107153122_))
                                     (_tl153109153127_
                                      (##cdr _e153107153122_)))
                                 (let ((_hd153130_ _hd153108153125_))
                                   (if (gx#stx-pair? _tl153109153127_)
                                       (let ((_e153110153132_
                                              (gx#syntax-e _tl153109153127_)))
                                         (let ((_hd153111153135_
                                                (##car _e153110153132_))
                                               (_tl153112153137_
                                                (##cdr _e153110153132_)))
                                           (if (gx#stx-null? _tl153112153137_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd153130_)
                                                   (_E153106153118_))
                                               (_E153106153118_))))
                                       (_E153106153118_)))))
                             (_E153106153118_)))))
                 (_E153105153140_)))
             _stx153101_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind153060_)
        (let* ((_e153061153071_ _bind153060_)
               (_E153063153075_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153061153071_)))
               (_E153062153097_
                (lambda ()
                  (if (gx#stx-pair? _e153061153071_)
                      (let ((_e153064153079_ (gx#syntax-e _e153061153071_)))
                        (let ((_hd153065153082_ (##car _e153064153079_))
                              (_tl153066153084_ (##cdr _e153064153079_)))
                          (if (gx#stx-pair? _tl153066153084_)
                              (let ((_e153067153087_
                                     (gx#syntax-e _tl153066153084_)))
                                (let ((_hd153068153090_
                                       (##car _e153067153087_))
                                      (_tl153069153092_
                                       (##cdr _e153067153087_)))
                                  (let ((_expr153095_ _hd153068153090_))
                                    (if (gx#stx-null? _tl153069153092_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr153095_)
                                            (_E153063153075_))
                                        (_E153063153075_)))))
                              (_E153063153075_))))
                      (_E153063153075_)))))
          (_E153062153097_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind153019_)
        (let* ((_e153020153030_ _bind153019_)
               (_E153022153034_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153020153030_)))
               (_E153021153056_
                (lambda ()
                  (if (gx#stx-pair? _e153020153030_)
                      (let ((_e153023153038_ (gx#syntax-e _e153020153030_)))
                        (let ((_hd153024153041_ (##car _e153023153038_))
                              (_tl153025153043_ (##cdr _e153023153038_)))
                          (let ((_hd153046_ _hd153024153041_))
                            (if (gx#stx-pair? _tl153025153043_)
                                (let ((_e153026153048_
                                       (gx#syntax-e _tl153025153043_)))
                                  (let ((_hd153027153051_
                                         (##car _e153026153048_))
                                        (_tl153028153053_
                                         (##cdr _e153026153048_)))
                                    (if (gx#stx-null? _tl153028153053_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd153046_)
                                            (_E153022153034_))
                                        (_E153022153034_))))
                                (_E153022153034_)))))
                      (_E153022153034_)))))
          (_E153021153056_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind152977_ _expr152978_)
        (let* ((_e152979152989_ _bind152977_)
               (_E152981152993_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152979152989_)))
               (_E152980153015_
                (lambda ()
                  (if (gx#stx-pair? _e152979152989_)
                      (let ((_e152982152997_ (gx#syntax-e _e152979152989_)))
                        (let ((_hd152983153000_ (##car _e152982152997_))
                              (_tl152984153002_ (##cdr _e152982152997_)))
                          (let ((_hd153005_ _hd152983153000_))
                            (if (gx#stx-pair? _tl152984153002_)
                                (let ((_e152985153007_
                                       (gx#syntax-e _tl152984153002_)))
                                  (let ((_hd152986153010_
                                         (##car _e152985153007_))
                                        (_tl152987153012_
                                         (##cdr _e152985153007_)))
                                    (if (gx#stx-null? _tl152987153012_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd153005_)
                                                  (cons _expr152978_ '()))
                                            (_E152981152993_))
                                        (_E152981152993_))))
                                (_E152981152993_)))))
                      (_E152981152993_)))))
          (_E152980153015_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx152931_)
        (let* ((_e152932152942_ _stx152931_)
               (_E152934152946_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152932152942_)))
               (_E152933152973_
                (lambda ()
                  (if (gx#stx-pair? _e152932152942_)
                      (let ((_e152935152950_ (gx#syntax-e _e152932152942_)))
                        (let ((_hd152936152953_ (##car _e152935152950_))
                              (_tl152937152955_ (##cdr _e152935152950_)))
                          (if (gx#stx-pair? _tl152937152955_)
                              (let ((_e152938152958_
                                     (gx#syntax-e _tl152937152955_)))
                                (let ((_hd152939152961_
                                       (##car _e152938152958_))
                                      (_tl152940152963_
                                       (##cdr _e152938152958_)))
                                  (let* ((_hd152966_ _hd152939152961_)
                                         (_body152968_ _tl152940152963_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152966_)
                                        (let ((_expanders152970_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd152966_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd152966_
                                              _expanders152970_)
                                             (gx#core-expand-local-block
                                              _stx152931_
                                              _body152968_))
                                           gx#current-expander-context
                                           (let ((__obj158920
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj158920)
                                             __obj158920)))
                                        (_E152934152946_)))))
                              (_E152934152946_))))
                      (_E152934152946_)))))
          (_E152933152973_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx152880_)
        (let* ((_e152881152891_ _stx152880_)
               (_E152883152895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152881152891_)))
               (_E152882152927_
                (lambda ()
                  (if (gx#stx-pair? _e152881152891_)
                      (let ((_e152884152899_ (gx#syntax-e _e152881152891_)))
                        (let ((_hd152885152902_ (##car _e152884152899_))
                              (_tl152886152904_ (##cdr _e152884152899_)))
                          (if (gx#stx-pair? _tl152886152904_)
                              (let ((_e152887152907_
                                     (gx#syntax-e _tl152886152904_)))
                                (let ((_hd152888152910_
                                       (##car _e152887152907_))
                                      (_tl152889152912_
                                       (##cdr _e152887152907_)))
                                  (let* ((_hd152915_ _hd152888152910_)
                                         (_body152917_ _tl152889152912_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152915_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd152915_
                                            (make-list
                                             (gx#stx-length _hd152915_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g152919152922_
                                                     _g152920152924_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g152919152922_
                                               _g152920152924_
                                               '#t))
                                            _hd152915_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd152915_))
                                           (gx#core-expand-local-block
                                            _stx152880_
                                            _body152917_))
                                         gx#current-expander-context
                                         (let ((__obj158921
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158921)
                                           __obj158921))
                                        (_E152883152895_)))))
                              (_E152883152895_))))
                      (_E152883152895_)))))
          (_E152882152927_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx152837_)
        (if (gx#stx-list? _stx152837_)
            (gx#stx-andmap
             (lambda (_bind152839_)
               (let* ((_e152840152850_ _bind152839_)
                      (_E152842152854_ (lambda () '#f))
                      (_E152841152876_
                       (lambda ()
                         (if (gx#stx-pair? _e152840152850_)
                             (let ((_e152843152858_
                                    (gx#syntax-e _e152840152850_)))
                               (let ((_hd152844152861_ (##car _e152843152858_))
                                     (_tl152845152863_
                                      (##cdr _e152843152858_)))
                                 (let ((_hd152866_ _hd152844152861_))
                                   (if (gx#stx-pair? _tl152845152863_)
                                       (let ((_e152846152868_
                                              (gx#syntax-e _tl152845152863_)))
                                         (let ((_hd152847152871_
                                                (##car _e152846152868_))
                                               (_tl152848152873_
                                                (##cdr _e152846152868_)))
                                           (if (gx#stx-null? _tl152848152873_)
                                               (if '#t
                                                   (gx#identifier? _hd152866_)
                                                   (_E152842152854_))
                                               (_E152842152854_))))
                                       (_E152842152854_)))))
                             (_E152842152854_)))))
                 (_E152841152876_)))
             _stx152837_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind152794_)
        (let* ((_e152795152805_ _bind152794_)
               (_E152797152809_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152795152805_)))
               (_E152796152833_
                (lambda ()
                  (if (gx#stx-pair? _e152795152805_)
                      (let ((_e152798152813_ (gx#syntax-e _e152795152805_)))
                        (let ((_hd152799152816_ (##car _e152798152813_))
                              (_tl152800152818_ (##cdr _e152798152813_)))
                          (if (gx#stx-pair? _tl152800152818_)
                              (let ((_e152801152821_
                                     (gx#syntax-e _tl152800152818_)))
                                (let ((_hd152802152824_
                                       (##car _e152801152821_))
                                      (_tl152803152826_
                                       (##cdr _e152801152821_)))
                                  (let ((_expr152829_ _hd152802152824_))
                                    (if (gx#stx-null? _tl152803152826_)
                                        (if '#t
                                            (let ((_g158930_
                                                   (gx#core-expand-expression+1
                                                    _expr152829_)))
                                              (begin
                                                (let ((_g158931_
                                                       (if (##values?
                                                            _g158930_)
                                                           (##vector-length
                                                            _g158930_)
                                                           1)))
                                                  (if (not (##fx= _g158931_ 2))
                                                      (error "Context expects 2 values"
                                                             _g158931_)))
                                                (let ((_e152831_
                                                       (##vector-ref
                                                        _g158930_
                                                        1)))
                                                  _e152831_)))
                                            (_E152797152809_))
                                        (_E152797152809_)))))
                              (_E152797152809_))))
                      (_E152797152809_)))))
          (_E152796152833_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind152739_ _e152740_ _rebind?152741_)
        (let* ((_e152742152752_ _bind152739_)
               (_E152744152756_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152742152752_)))
               (_E152743152778_
                (lambda ()
                  (if (gx#stx-pair? _e152742152752_)
                      (let ((_e152745152760_ (gx#syntax-e _e152742152752_)))
                        (let ((_hd152746152763_ (##car _e152745152760_))
                              (_tl152747152765_ (##cdr _e152745152760_)))
                          (let ((_id152768_ _hd152746152763_))
                            (if (gx#stx-pair? _tl152747152765_)
                                (let ((_e152748152770_
                                       (gx#syntax-e _tl152747152765_)))
                                  (let ((_hd152749152773_
                                         (##car _e152748152770_))
                                        (_tl152750152775_
                                         (##cdr _e152748152770_)))
                                    (if (gx#stx-null? _tl152750152775_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id152768_
                                             _e152740_
                                             _rebind?152741_)
                                            (_E152744152756_))
                                        (_E152744152756_))))
                                (_E152744152756_)))))
                      (_E152744152756_)))))
          (_E152743152778_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind152785_ _e152786_)
        (let ((_rebind?152788_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind152785_
           _e152786_
           _rebind?152788_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g158933_
        (let ((_g158932_ (##length _g158933_)))
          (cond ((##fx= _g158932_ 2)
                 (apply (lambda (_bind152785_ _e152786_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind152785_
                           _e152786_))
                        _g158933_))
                ((##fx= _g158932_ 3)
                 (apply (lambda (_bind152790_ _e152791_ _rebind?152792_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind152790_
                           _e152791_
                           _rebind?152792_))
                        _g158933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g158933_))))))
    (define gx#core-expand-expression%
      (lambda (_stx152697_)
        (let* ((_e152698152708_ _stx152697_)
               (_E152700152712_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152698152708_)))
               (_E152699152734_
                (lambda ()
                  (if (gx#stx-pair? _e152698152708_)
                      (let ((_e152701152716_ (gx#syntax-e _e152698152708_)))
                        (let ((_hd152702152719_ (##car _e152701152716_))
                              (_tl152703152721_ (##cdr _e152701152716_)))
                          (if (gx#stx-pair? _tl152703152721_)
                              (let ((_e152704152724_
                                     (gx#syntax-e _tl152703152721_)))
                                (let ((_hd152705152727_
                                       (##car _e152704152724_))
                                      (_tl152706152729_
                                       (##cdr _e152704152724_)))
                                  (let ((_expr152732_ _hd152705152727_))
                                    (if (gx#stx-null? _tl152706152729_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr152732_)
                                            (_E152700152712_))
                                        (_E152700152712_)))))
                              (_E152700152712_))))
                      (_E152700152712_)))))
          (_E152699152734_))))
    (define gx#core-expand-quote%
      (lambda (_stx152656_)
        (let* ((_e152657152667_ _stx152656_)
               (_E152659152671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152657152667_)))
               (_E152658152693_
                (lambda ()
                  (if (gx#stx-pair? _e152657152667_)
                      (let ((_e152660152675_ (gx#syntax-e _e152657152667_)))
                        (let ((_hd152661152678_ (##car _e152660152675_))
                              (_tl152662152680_ (##cdr _e152660152675_)))
                          (if (gx#stx-pair? _tl152662152680_)
                              (let ((_e152663152683_
                                     (gx#syntax-e _tl152662152680_)))
                                (let ((_hd152664152686_
                                       (##car _e152663152683_))
                                      (_tl152665152688_
                                       (##cdr _e152663152683_)))
                                  (let ((_e152691_ _hd152664152686_))
                                    (if (gx#stx-null? _tl152665152688_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e152691_)
                                                         '()))
                                             (gx#stx-source _stx152656_))
                                            (_E152659152671_))
                                        (_E152659152671_)))))
                              (_E152659152671_))))
                      (_E152659152671_)))))
          (_E152658152693_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx152615_)
        (let* ((_e152616152626_ _stx152615_)
               (_E152618152630_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152616152626_)))
               (_E152617152652_
                (lambda ()
                  (if (gx#stx-pair? _e152616152626_)
                      (let ((_e152619152634_ (gx#syntax-e _e152616152626_)))
                        (let ((_hd152620152637_ (##car _e152619152634_))
                              (_tl152621152639_ (##cdr _e152619152634_)))
                          (if (gx#stx-pair? _tl152621152639_)
                              (let ((_e152622152642_
                                     (gx#syntax-e _tl152621152639_)))
                                (let ((_hd152623152645_
                                       (##car _e152622152642_))
                                      (_tl152624152647_
                                       (##cdr _e152622152642_)))
                                  (let ((_e152650_ _hd152623152645_))
                                    (if (gx#stx-null? _tl152624152647_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e152650_)
                                                         '()))
                                             (gx#stx-source _stx152615_))
                                            (_E152618152630_))
                                        (_E152618152630_)))))
                              (_E152618152630_))))
                      (_E152618152630_)))))
          (_E152617152652_))))
    (define gx#core-expand-call%
      (lambda (_stx152572_)
        (let* ((_e152573152583_ _stx152572_)
               (_E152575152587_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152573152583_)))
               (_E152574152611_
                (lambda ()
                  (if (gx#stx-pair? _e152573152583_)
                      (let ((_e152576152591_ (gx#syntax-e _e152573152583_)))
                        (let ((_hd152577152594_ (##car _e152576152591_))
                              (_tl152578152596_ (##cdr _e152576152591_)))
                          (if (gx#stx-pair? _tl152578152596_)
                              (let ((_e152579152599_
                                     (gx#syntax-e _tl152578152596_)))
                                (let ((_hd152580152602_
                                       (##car _e152579152599_))
                                      (_tl152581152604_
                                       (##cdr _e152579152599_)))
                                  (let* ((_rator152607_ _hd152580152602_)
                                         (_args152609_ _tl152581152604_))
                                    (if (gx#stx-list? _args152609_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator152607_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args152609_))
                                         (gx#stx-source _stx152572_))
                                        (_E152575152587_)))))
                              (_E152575152587_))))
                      (_E152575152587_)))))
          (_E152574152611_))))
    (define gx#core-expand-if%
      (lambda (_stx152505_)
        (let* ((_e152506152522_ _stx152505_)
               (_E152508152526_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152506152522_)))
               (_E152507152568_
                (lambda ()
                  (if (gx#stx-pair? _e152506152522_)
                      (let ((_e152509152530_ (gx#syntax-e _e152506152522_)))
                        (let ((_hd152510152533_ (##car _e152509152530_))
                              (_tl152511152535_ (##cdr _e152509152530_)))
                          (if (gx#stx-pair? _tl152511152535_)
                              (let ((_e152512152538_
                                     (gx#syntax-e _tl152511152535_)))
                                (let ((_hd152513152541_
                                       (##car _e152512152538_))
                                      (_tl152514152543_
                                       (##cdr _e152512152538_)))
                                  (let ((_test152546_ _hd152513152541_))
                                    (if (gx#stx-pair? _tl152514152543_)
                                        (let ((_e152515152548_
                                               (gx#syntax-e _tl152514152543_)))
                                          (let ((_hd152516152551_
                                                 (##car _e152515152548_))
                                                (_tl152517152553_
                                                 (##cdr _e152515152548_)))
                                            (let ((_K152556_ _hd152516152551_))
                                              (if (gx#stx-pair?
                                                   _tl152517152553_)
                                                  (let ((_e152518152558_
                                                         (gx#syntax-e
                                                          _tl152517152553_)))
                                                    (let ((_hd152519152561_
                                                           (##car _e152518152558_))
                                                          (_tl152520152563_
                                                           (##cdr _e152518152558_)))
                                                      (let ((_E152566_
                                                             _hd152519152561_))
                                                        (if (gx#stx-null?
                                                             _tl152520152563_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test152546_)
                                     (cons (gx#core-expand-expression
                                            _K152556_)
                                           (cons (gx#core-expand-expression
                                                  _E152566_)
                                                 '()))))
                         (gx#stx-source _stx152505_))
                        (_E152508152526_))
                    (_E152508152526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152508152526_)))))
                                        (_E152508152526_)))))
                              (_E152508152526_))))
                      (_E152508152526_)))))
          (_E152507152568_))))
    (define gx#core-expand-ref%
      (lambda (_stx152464_)
        (let* ((_e152465152475_ _stx152464_)
               (_E152467152479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152465152475_)))
               (_E152466152501_
                (lambda ()
                  (if (gx#stx-pair? _e152465152475_)
                      (let ((_e152468152483_ (gx#syntax-e _e152465152475_)))
                        (let ((_hd152469152486_ (##car _e152468152483_))
                              (_tl152470152488_ (##cdr _e152468152483_)))
                          (if (gx#stx-pair? _tl152470152488_)
                              (let ((_e152471152491_
                                     (gx#syntax-e _tl152470152488_)))
                                (let ((_hd152472152494_
                                       (##car _e152471152491_))
                                      (_tl152473152496_
                                       (##cdr _e152471152491_)))
                                  (let ((_id152499_ _hd152472152494_))
                                    (if (gx#stx-null? _tl152473152496_)
                                        (if (gx#identifier? _id152499_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id152499_
                                                          _stx152464_)
                                                         '()))
                                             (gx#stx-source _stx152464_))
                                            (_E152467152479_))
                                        (_E152467152479_)))))
                              (_E152467152479_))))
                      (_E152467152479_)))))
          (_E152466152501_))))
    (define gx#core-expand-setq%
      (lambda (_stx152410_)
        (let* ((_e152411152424_ _stx152410_)
               (_E152413152428_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152411152424_)))
               (_E152412152460_
                (lambda ()
                  (if (gx#stx-pair? _e152411152424_)
                      (let ((_e152414152432_ (gx#syntax-e _e152411152424_)))
                        (let ((_hd152415152435_ (##car _e152414152432_))
                              (_tl152416152437_ (##cdr _e152414152432_)))
                          (if (gx#stx-pair? _tl152416152437_)
                              (let ((_e152417152440_
                                     (gx#syntax-e _tl152416152437_)))
                                (let ((_hd152418152443_
                                       (##car _e152417152440_))
                                      (_tl152419152445_
                                       (##cdr _e152417152440_)))
                                  (let ((_id152448_ _hd152418152443_))
                                    (if (gx#stx-pair? _tl152419152445_)
                                        (let ((_e152420152450_
                                               (gx#syntax-e _tl152419152445_)))
                                          (let ((_hd152421152453_
                                                 (##car _e152420152450_))
                                                (_tl152422152455_
                                                 (##cdr _e152420152450_)))
                                            (let ((_expr152458_
                                                   _hd152421152453_))
                                              (if (gx#stx-null?
                                                   _tl152422152455_)
                                                  (if (gx#identifier?
                                                       _id152448_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id152448_
                            _stx152410_)
                           (cons (gx#core-expand-expression _expr152458_)
                                 '())))
               (gx#stx-source _stx152410_))
              (_E152413152428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152413152428_)))))
                                        (_E152413152428_)))))
                              (_E152413152428_))))
                      (_E152413152428_)))))
          (_E152412152460_))))
    (define gx#macro-expand-extern
      (lambda (_stx152258_)
        (letrec ((_generate152260_
                  (lambda (_body152290_)
                    (let _lp152292_ ((_rest152294_ _body152290_)
                                     (_ns152295_
                                      (gx#core-context-namespace__0))
                                     (_r152296_ '()))
                      (let* ((_e152297152312_ _rest152294_)
                             (_E152310152316_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e152297152312_)))
                             (_E152306152320_
                              (lambda ()
                                (if (gx#stx-null? _e152297152312_)
                                    (if '#t
                                        (reverse _r152296_)
                                        (_E152310152316_))
                                    (_E152310152316_))))
                             (_E152299152377_
                              (lambda ()
                                (if (gx#stx-pair? _e152297152312_)
                                    (let ((_e152307152324_
                                           (gx#syntax-e _e152297152312_)))
                                      (let ((_hd152308152327_
                                             (##car _e152307152324_))
                                            (_tl152309152329_
                                             (##cdr _e152307152324_)))
                                        (let* ((_hd152332_ _hd152308152327_)
                                               (_rest152334_ _tl152309152329_))
                                          (if '#t
                                              (if (gx#identifier? _hd152332_)
                                                  (_lp152292_
                                                   _rest152334_
                                                   _ns152295_
                                                   (cons (cons _hd152332_
                                                               (cons (if _ns152295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd152332_
                                  _ns152295_
                                  '"#"
                                  _hd152332_)
                                 _hd152332_)
                             '()))
                 _r152296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e152335152345_
                                                          _hd152332_)
                                                         (_E152337152349_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e152335152345_)))
                                                         (_E152336152373_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e152335152345_)
                        (let ((_e152338152353_ (gx#syntax-e _e152335152345_)))
                          (let ((_hd152339152356_ (##car _e152338152353_))
                                (_tl152340152358_ (##cdr _e152338152353_)))
                            (let ((_id152361_ _hd152339152356_))
                              (if (gx#stx-pair? _tl152340152358_)
                                  (let ((_e152341152363_
                                         (gx#syntax-e _tl152340152358_)))
                                    (let ((_hd152342152366_
                                           (##car _e152341152363_))
                                          (_tl152343152368_
                                           (##cdr _e152341152363_)))
                                      (let ((_eid152371_ _hd152342152366_))
                                        (if (gx#stx-null? _tl152343152368_)
                                            (if (and (gx#identifier?
                                                      _id152361_)
                                                     (gx#identifier?
                                                      _eid152371_))
                                                (_lp152292_
                                                 _rest152334_
                                                 _ns152295_
                                                 (cons (cons _id152361_
                                                             (cons _eid152371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r152296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152337152349_))
                                            (_E152337152349_)))))
                                  (_E152337152349_)))))
                        (_E152337152349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152336152373_)))
                                              (_E152306152320_)))))
                                    (_E152306152320_))))
                             (_E152298152406_
                              (lambda ()
                                (if (gx#stx-pair? _e152297152312_)
                                    (let ((_e152300152381_
                                           (gx#syntax-e _e152297152312_)))
                                      (let ((_hd152301152384_
                                             (##car _e152300152381_))
                                            (_tl152302152386_
                                             (##cdr _e152300152381_)))
                                        (if (eq? (gx#stx-e _hd152301152384_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl152302152386_)
                                                (let ((_e152303152389_
                                                       (gx#syntax-e
                                                        _tl152302152386_)))
                                                  (let ((_hd152304152392_
                                                         (##car _e152303152389_))
                                                        (_tl152305152394_
                                                         (##cdr _e152303152389_)))
                                                    (let* ((_ns152397_
                                                            _hd152304152392_)
                                                           (_rest152399_
                                                            _tl152305152394_))
                                                      (if '#t
                                                          (let ((_ns152404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns152397_)
                             (symbol->string (gx#stx-e _ns152397_))
                             (if (or (gx#stx-string? _ns152397_)
                                     (gx#stx-false? _ns152397_))
                                 (gx#stx-e _ns152397_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx152258_
                                  _ns152397_)))))
                    (_lp152292_ _rest152399_ _ns152404_ _r152296_))
                  (_E152299152377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152299152377_))
                                            (_E152299152377_))))
                                    (_E152299152377_)))))
                        (_E152298152406_))))))
          (let* ((_e152261152268_ _stx152258_)
                 (_E152263152272_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152261152268_)))
                 (_E152262152286_
                  (lambda ()
                    (if (gx#stx-pair? _e152261152268_)
                        (let ((_e152264152276_ (gx#syntax-e _e152261152268_)))
                          (let ((_hd152265152279_ (##car _e152264152276_))
                                (_tl152266152281_ (##cdr _e152264152276_)))
                            (let ((_body152284_ _tl152266152281_))
                              (if (gx#stx-list? _body152284_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate152260_ _body152284_))
                                  (_E152263152272_)))))
                        (_E152263152272_)))))
            (_E152262152286_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx152204_)
        (let* ((_e152205152218_ _stx152204_)
               (_E152207152222_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152205152218_)))
               (_E152206152254_
                (lambda ()
                  (if (gx#stx-pair? _e152205152218_)
                      (let ((_e152208152226_ (gx#syntax-e _e152205152218_)))
                        (let ((_hd152209152229_ (##car _e152208152226_))
                              (_tl152210152231_ (##cdr _e152208152226_)))
                          (if (gx#stx-pair? _tl152210152231_)
                              (let ((_e152211152234_
                                     (gx#syntax-e _tl152210152231_)))
                                (let ((_hd152212152237_
                                       (##car _e152211152234_))
                                      (_tl152213152239_
                                       (##cdr _e152211152234_)))
                                  (let ((_hd152242_ _hd152212152237_))
                                    (if (gx#stx-pair? _tl152213152239_)
                                        (let ((_e152214152244_
                                               (gx#syntax-e _tl152213152239_)))
                                          (let ((_hd152215152247_
                                                 (##car _e152214152244_))
                                                (_tl152216152249_
                                                 (##cdr _e152214152244_)))
                                            (let ((_expr152252_
                                                   _hd152215152247_))
                                              (if (gx#stx-null?
                                                   _tl152216152249_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd152242_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd152242_)
                          (cons _expr152252_ '())))
              (_E152207152222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152207152222_)))))
                                        (_E152207152222_)))))
                              (_E152207152222_))))
                      (_E152207152222_)))))
          (_E152206152254_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx152150_)
        (let* ((_e152151152164_ _stx152150_)
               (_E152153152168_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152151152164_)))
               (_E152152152200_
                (lambda ()
                  (if (gx#stx-pair? _e152151152164_)
                      (let ((_e152154152172_ (gx#syntax-e _e152151152164_)))
                        (let ((_hd152155152175_ (##car _e152154152172_))
                              (_tl152156152177_ (##cdr _e152154152172_)))
                          (if (gx#stx-pair? _tl152156152177_)
                              (let ((_e152157152180_
                                     (gx#syntax-e _tl152156152177_)))
                                (let ((_hd152158152183_
                                       (##car _e152157152180_))
                                      (_tl152159152185_
                                       (##cdr _e152157152180_)))
                                  (let ((_hd152188_ _hd152158152183_))
                                    (if (gx#stx-pair? _tl152159152185_)
                                        (let ((_e152160152190_
                                               (gx#syntax-e _tl152159152185_)))
                                          (let ((_hd152161152193_
                                                 (##car _e152160152190_))
                                                (_tl152162152195_
                                                 (##cdr _e152160152190_)))
                                            (let ((_expr152198_
                                                   _hd152161152193_))
                                              (if (gx#stx-null?
                                                   _tl152162152195_)
                                                  (if (gx#identifier?
                                                       _hd152188_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd152188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr152198_ '())))
              (_E152153152168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152153152168_)))))
                                        (_E152153152168_)))))
                              (_E152153152168_))))
                      (_E152153152168_)))))
          (_E152152152200_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx152096_)
        (let* ((_e152097152110_ _stx152096_)
               (_E152099152114_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152097152110_)))
               (_E152098152146_
                (lambda ()
                  (if (gx#stx-pair? _e152097152110_)
                      (let ((_e152100152118_ (gx#syntax-e _e152097152110_)))
                        (let ((_hd152101152121_ (##car _e152100152118_))
                              (_tl152102152123_ (##cdr _e152100152118_)))
                          (if (gx#stx-pair? _tl152102152123_)
                              (let ((_e152103152126_
                                     (gx#syntax-e _tl152102152123_)))
                                (let ((_hd152104152129_
                                       (##car _e152103152126_))
                                      (_tl152105152131_
                                       (##cdr _e152103152126_)))
                                  (let ((_id152134_ _hd152104152129_))
                                    (if (gx#stx-pair? _tl152105152131_)
                                        (let ((_e152106152136_
                                               (gx#syntax-e _tl152105152131_)))
                                          (let ((_hd152107152139_
                                                 (##car _e152106152136_))
                                                (_tl152108152141_
                                                 (##cdr _e152106152136_)))
                                            (let ((_alias-id152144_
                                                   _hd152107152139_))
                                              (if (gx#stx-null?
                                                   _tl152108152141_)
                                                  (if (and (gx#identifier?
                                                            _id152134_)
                                                           (gx#identifier?
                                                            _alias-id152144_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id152134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id152144_ '())))
              (_E152099152114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152099152114_)))))
                                        (_E152099152114_)))))
                              (_E152099152114_))))
                      (_E152099152114_)))))
          (_E152098152146_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx152053_)
        (let* ((_e152054152064_ _stx152053_)
               (_E152056152068_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152054152064_)))
               (_E152055152092_
                (lambda ()
                  (if (gx#stx-pair? _e152054152064_)
                      (let ((_e152057152072_ (gx#syntax-e _e152054152064_)))
                        (let ((_hd152058152075_ (##car _e152057152072_))
                              (_tl152059152077_ (##cdr _e152057152072_)))
                          (if (gx#stx-pair? _tl152059152077_)
                              (let ((_e152060152080_
                                     (gx#syntax-e _tl152059152077_)))
                                (let ((_hd152061152083_
                                       (##car _e152060152080_))
                                      (_tl152062152085_
                                       (##cdr _e152060152080_)))
                                  (let* ((_hd152088_ _hd152061152083_)
                                         (_body152090_ _tl152062152085_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd152088_)
                                             (gx#stx-list? _body152090_)
                                             (not (gx#stx-null? _body152090_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd152088_)
                                         _body152090_)
                                        (_E152056152068_)))))
                              (_E152056152068_))))
                      (_E152056152068_)))))
          (_E152055152092_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx151989_)
        (letrec ((_generate151991_
                  (lambda (_clause152021_)
                    (let* ((_e152022152029_ _clause152021_)
                           (_E152024152033_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx151989_
                               _clause152021_)))
                           (_E152023152049_
                            (lambda ()
                              (if (gx#stx-pair? _e152022152029_)
                                  (let ((_e152025152037_
                                         (gx#syntax-e _e152022152029_)))
                                    (let ((_hd152026152040_
                                           (##car _e152025152037_))
                                          (_tl152027152042_
                                           (##cdr _e152025152037_)))
                                      (let* ((_hd152045_ _hd152026152040_)
                                             (_body152047_ _tl152027152042_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd152045_)
                                                 (gx#stx-list? _body152047_)
                                                 (not (gx#stx-null?
                                                       _body152047_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd152045_)
                                                   _body152047_)
                                             (gx#stx-source _clause152021_))
                                            (_E152024152033_)))))
                                  (_E152024152033_)))))
                      (_E152023152049_)))))
          (let* ((_e151992151999_ _stx151989_)
                 (_E151994152003_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151992151999_)))
                 (_E151993152017_
                  (lambda ()
                    (if (gx#stx-pair? _e151992151999_)
                        (let ((_e151995152007_ (gx#syntax-e _e151992151999_)))
                          (let ((_hd151996152010_ (##car _e151995152007_))
                                (_tl151997152012_ (##cdr _e151995152007_)))
                            (let ((_clauses152015_ _tl151997152012_))
                              (if (gx#stx-list? _clauses152015_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate151991_
                                    _clauses152015_))
                                  (_E151994152003_)))))
                        (_E151994152003_)))))
            (_E151993152017_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx151890_ _form151891_)
        (letrec ((_generate151893_
                  (lambda (_bind151936_)
                    (let* ((_e151937151947_ _bind151936_)
                           (_E151939151951_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx151890_
                               _bind151936_)))
                           (_E151938151975_
                            (lambda ()
                              (if (gx#stx-pair? _e151937151947_)
                                  (let ((_e151940151955_
                                         (gx#syntax-e _e151937151947_)))
                                    (let ((_hd151941151958_
                                           (##car _e151940151955_))
                                          (_tl151942151960_
                                           (##cdr _e151940151955_)))
                                      (let ((_ids151963_ _hd151941151958_))
                                        (if (gx#stx-pair? _tl151942151960_)
                                            (let ((_e151943151965_
                                                   (gx#syntax-e
                                                    _tl151942151960_)))
                                              (let ((_hd151944151968_
                                                     (##car _e151943151965_))
                                                    (_tl151945151970_
                                                     (##cdr _e151943151965_)))
                                                (let ((_expr151973_
                                                       _hd151944151968_))
                                                  (if (gx#stx-null?
                                                       _tl151945151970_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids151963_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids151963_)
                        (cons _expr151973_ '()))
                  (_E151939151951_))
              (_E151939151951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E151939151951_)))))
                                  (_E151939151951_)))))
                      (_E151938151975_)))))
          (let* ((_e151894151904_ _stx151890_)
                 (_E151896151908_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151894151904_)))
                 (_E151895151932_
                  (lambda ()
                    (if (gx#stx-pair? _e151894151904_)
                        (let ((_e151897151912_ (gx#syntax-e _e151894151904_)))
                          (let ((_hd151898151915_ (##car _e151897151912_))
                                (_tl151899151917_ (##cdr _e151897151912_)))
                            (if (gx#stx-pair? _tl151899151917_)
                                (let ((_e151900151920_
                                       (gx#syntax-e _tl151899151917_)))
                                  (let ((_hd151901151923_
                                         (##car _e151900151920_))
                                        (_tl151902151925_
                                         (##cdr _e151900151920_)))
                                    (let* ((_hd151928_ _hd151901151923_)
                                           (_body151930_ _tl151902151925_))
                                      (if (and (gx#stx-list? _hd151928_)
                                               (gx#stx-list? _body151930_)
                                               (not (gx#stx-null?
                                                     _body151930_)))
                                          (gx#core-cons*
                                           _form151891_
                                           (gx#stx-map1
                                            _generate151893_
                                            _hd151928_)
                                           _body151930_)
                                          (_E151896151908_)))))
                                (_E151896151908_))))
                        (_E151896151908_)))))
            (_E151895151932_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx151982_)
        (let ((_form151984_ '%#let-values))
          (gx#macro-expand-let-values__% _stx151982_ _form151984_))))
    (define gx#macro-expand-let-values
      (lambda _g158935_
        (let ((_g158934_ (##length _g158935_)))
          (cond ((##fx= _g158934_ 1)
                 (apply (lambda (_stx151982_)
                          (gx#macro-expand-let-values__0 _stx151982_))
                        _g158935_))
                ((##fx= _g158934_ 2)
                 (apply (lambda (_stx151986_ _form151987_)
                          (gx#macro-expand-let-values__%
                           _stx151986_
                           _form151987_))
                        _g158935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g158935_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx151887_)
        (gx#macro-expand-let-values__% _stx151887_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx151885_)
        (gx#macro-expand-let-values__% _stx151885_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx151776_)
        (let* ((_e151777151803_ _stx151776_)
               (_E151789151807_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151777151803_)))
               (_E151779151849_
                (lambda ()
                  (if (gx#stx-pair? _e151777151803_)
                      (let ((_e151790151811_ (gx#syntax-e _e151777151803_)))
                        (let ((_hd151791151814_ (##car _e151790151811_))
                              (_tl151792151816_ (##cdr _e151790151811_)))
                          (if (gx#stx-pair? _tl151792151816_)
                              (let ((_e151793151819_
                                     (gx#syntax-e _tl151792151816_)))
                                (let ((_hd151794151822_
                                       (##car _e151793151819_))
                                      (_tl151795151824_
                                       (##cdr _e151793151819_)))
                                  (let ((_test151827_ _hd151794151822_))
                                    (if (gx#stx-pair? _tl151795151824_)
                                        (let ((_e151796151829_
                                               (gx#syntax-e _tl151795151824_)))
                                          (let ((_hd151797151832_
                                                 (##car _e151796151829_))
                                                (_tl151798151834_
                                                 (##cdr _e151796151829_)))
                                            (let ((_K151837_ _hd151797151832_))
                                              (if (gx#stx-pair?
                                                   _tl151798151834_)
                                                  (let ((_e151799151839_
                                                         (gx#syntax-e
                                                          _tl151798151834_)))
                                                    (let ((_hd151800151842_
                                                           (##car _e151799151839_))
                                                          (_tl151801151844_
                                                           (##cdr _e151799151839_)))
                                                      (let ((_E151847_
                                                             _hd151800151842_))
                                                        (if (gx#stx-null?
                                                             _tl151801151844_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test151827_
                         _K151837_
                         _E151847_)
                        (_E151789151807_))
                    (_E151789151807_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151789151807_)))))
                                        (_E151789151807_)))))
                              (_E151789151807_))))
                      (_E151789151807_))))
               (_E151778151881_
                (lambda ()
                  (if (gx#stx-pair? _e151777151803_)
                      (let ((_e151780151853_ (gx#syntax-e _e151777151803_)))
                        (let ((_hd151781151856_ (##car _e151780151853_))
                              (_tl151782151858_ (##cdr _e151780151853_)))
                          (if (gx#stx-pair? _tl151782151858_)
                              (let ((_e151783151861_
                                     (gx#syntax-e _tl151782151858_)))
                                (let ((_hd151784151864_
                                       (##car _e151783151861_))
                                      (_tl151785151866_
                                       (##cdr _e151783151861_)))
                                  (let ((_test151869_ _hd151784151864_))
                                    (if (gx#stx-pair? _tl151785151866_)
                                        (let ((_e151786151871_
                                               (gx#syntax-e _tl151785151866_)))
                                          (let ((_hd151787151874_
                                                 (##car _e151786151871_))
                                                (_tl151788151876_
                                                 (##cdr _e151786151871_)))
                                            (let ((_K151879_ _hd151787151874_))
                                              (if (gx#stx-null?
                                                   _tl151788151876_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test151869_
                                                       _K151879_
                                                       '#!void)
                                                      (_E151779151849_))
                                                  (_E151779151849_)))))
                                        (_E151779151849_)))))
                              (_E151779151849_))))
                      (_E151779151849_)))))
          (_E151778151881_))))
    (define gx#free-identifier=?
      (lambda (_xid151764_ _yid151765_)
        (let ((_xe151767_ (gx#resolve-identifier__0 _xid151764_))
              (_ye151768_ (gx#resolve-identifier__0 _yid151765_)))
          (if (and _xe151767_ _ye151768_)
              (let ((_$e151770_ (eq? _xe151767_ _ye151768_)))
                (if _$e151770_
                    _$e151770_
                    (if (##structure-instance-of? _xe151767_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye151768_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe151767_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye151768_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe151767_ _ye151768_)
                  '#f
                  (gx#stx-eq? _xid151764_ _yid151765_))))))
    (define gx#bound-identifier=?
      (lambda (_xid151748_ _yid151749_)
        (letrec ((_context151751_
                  (lambda (_e151762_)
                    (if (##structure-direct-instance-of?
                         _e151762_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e151762_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks151752_
                  (lambda (_e151760_)
                    (if (symbol? _e151760_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e151760_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e151760_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e151760_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap151753_
                  (lambda (_e151758_)
                    (if (symbol? _e151758_)
                        _e151758_
                        (gx#syntax-local-unwrap _e151758_)))))
          (let ((_x151755_ (_unwrap151753_ _xid151748_))
                (_y151756_ (_unwrap151753_ _yid151749_)))
            (if (gx#stx-eq? _x151755_ _y151756_)
                (if (eq? (_context151751_ _x151755_)
                         (_context151751_ _y151756_))
                    (equal? (_marks151752_ _x151755_)
                            (_marks151752_ _y151756_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx151746_)
        (if (gx#identifier? _stx151746_)
            (gx#core-identifier=? _stx151746_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx151744_)
        (if (gx#identifier? _stx151744_)
            (gx#core-identifier=? _stx151744_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x151742_)
        (if (gx#identifier? _x151742_)
            (if (not (gx#underscore? _x151742_)) _x151742_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx151688_ _where151689_)
        (let _lp151691_ ((_rest151693_ (gx#syntax->list _stx151688_)))
          (let* ((_rest151694151702_ _rest151693_)
                 (_else151696151710_ (lambda () '#t))
                 (_K151698151720_
                  (lambda (_rest151713_ _hd151714_)
                    (if (not (gx#identifier? _hd151714_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where151689_
                         _hd151714_)
                        (if (find (lambda (_g151715151717_)
                                    (gx#bound-identifier=?
                                     _g151715151717_
                                     _hd151714_))
                                  _rest151713_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where151689_
                             _hd151714_)
                            (_lp151691_ _rest151713_))))))
            (if (##pair? _rest151694151702_)
                (let ((_hd151699151723_ (##car _rest151694151702_))
                      (_tl151700151725_ (##cdr _rest151694151702_)))
                  (let* ((_hd151728_ _hd151699151723_)
                         (_rest151730_ _tl151700151725_))
                    (_K151698151720_ _rest151730_ _hd151728_)))
                (_else151696151710_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx151735_)
        (let ((_where151737_ _stx151735_))
          (gx#check-duplicate-identifiers__% _stx151735_ _where151737_))))
    (define gx#check-duplicate-identifiers
      (lambda _g158937_
        (let ((_g158936_ (##length _g158937_)))
          (cond ((##fx= _g158936_ 1)
                 (apply (lambda (_stx151735_)
                          (gx#check-duplicate-identifiers__0 _stx151735_))
                        _g158937_))
                ((##fx= _g158936_ 2)
                 (apply (lambda (_stx151739_ _where151740_)
                          (gx#check-duplicate-identifiers__%
                           _stx151739_
                           _where151740_))
                        _g158937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g158937_))))))
    (define gx#core-bind-values?
      (lambda (_stx151680_)
        (gx#stx-andmap
         (lambda (_x151682_)
           (let ((_$e151684_ (gx#identifier? _x151682_)))
             (if _$e151684_ _$e151684_ (gx#stx-false? _x151682_))))
         _stx151680_)))
    (define gx#core-bind-values!__%
      (lambda (_stx151644_ _rebind?151645_ _phi151646_ _ctx151647_)
        (gx#stx-for-each1
         (lambda (_id151649_)
           (if (gx#identifier? _id151649_)
               (gx#core-bind-runtime!__%
                _id151649_
                _rebind?151645_
                _phi151646_
                _ctx151647_)
               '#!void))
         _stx151644_)))
    (define gx#core-bind-values!__0
      (lambda (_stx151654_)
        (let* ((_rebind?151656_ '#f)
               (_phi151658_ (gx#current-expander-phi))
               (_ctx151660_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151654_
           _rebind?151656_
           _phi151658_
           _ctx151660_))))
    (define gx#core-bind-values!__1
      (lambda (_stx151662_ _rebind?151663_)
        (let* ((_phi151665_ (gx#current-expander-phi))
               (_ctx151667_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151662_
           _rebind?151663_
           _phi151665_
           _ctx151667_))))
    (define gx#core-bind-values!__2
      (lambda (_stx151669_ _rebind?151670_ _phi151671_)
        (let ((_ctx151673_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151669_
           _rebind?151670_
           _phi151671_
           _ctx151673_))))
    (define gx#core-bind-values!
      (lambda _g158939_
        (let ((_g158938_ (##length _g158939_)))
          (cond ((##fx= _g158938_ 1)
                 (apply (lambda (_stx151654_)
                          (gx#core-bind-values!__0 _stx151654_))
                        _g158939_))
                ((##fx= _g158938_ 2)
                 (apply (lambda (_stx151662_ _rebind?151663_)
                          (gx#core-bind-values!__1
                           _stx151662_
                           _rebind?151663_))
                        _g158939_))
                ((##fx= _g158938_ 3)
                 (apply (lambda (_stx151669_ _rebind?151670_ _phi151671_)
                          (gx#core-bind-values!__2
                           _stx151669_
                           _rebind?151670_
                           _phi151671_))
                        _g158939_))
                ((##fx= _g158938_ 4)
                 (apply (lambda (_stx151675_
                                 _rebind?151676_
                                 _phi151677_
                                 _ctx151678_)
                          (gx#core-bind-values!__%
                           _stx151675_
                           _rebind?151676_
                           _phi151677_
                           _ctx151678_))
                        _g158939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g158939_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx151639_)
        (gx#stx-map1
         (lambda (_x151641_)
           (if (gx#identifier? _x151641_)
               (gx#core-quote-syntax__0 _x151641_)
               '#f))
         _stx151639_)))
    (define gx#core-runtime-ref?
      (lambda (_stx151632_)
        (if (gx#identifier? _stx151632_)
            (let* ((_bind151634_ (gx#resolve-identifier__0 _stx151632_))
                   (_$e151636_ (not _bind151634_)))
              (if _$e151636_
                  _$e151636_
                  (##structure-instance-of?
                   _bind151634_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id151624_ _form151625_)
        (let ((_bind151627_ (gx#resolve-identifier__0 _id151624_)))
          (if (##structure-instance-of? _bind151627_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id151624_)
              (if (not _bind151627_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id151624_)))
                      (gx#core-quote-syntax__0 _id151624_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form151625_
                       _id151624_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form151625_
                   _id151624_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id151583_ _rebind?151584_ _phi151585_ _ctx151586_)
        (let* ((_key151588_ (gx#core-identifier-key _id151583_))
               (_eid151590_
                (gx#make-binding-id__%
                 _key151588_
                 '#f
                 _phi151585_
                 _ctx151586_))
               (_bind151592_
                (if (##structure-instance-of?
                     _ctx151586_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151590_
                     _key151588_
                     _phi151585_
                     _ctx151586_)
                    (if (##structure-instance-of?
                         _ctx151586_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151590_
                         _key151588_
                         _phi151585_)
                        (if (##structure-instance-of?
                             _ctx151586_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid151590_
                             _key151588_
                             _phi151585_)
                            (##structure
                             gx#runtime-binding::t
                             _eid151590_
                             _key151588_
                             _phi151585_))))))
          (gx#bind-identifier!__%
           _id151583_
           _bind151592_
           _rebind?151584_
           _phi151585_
           _ctx151586_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id151598_)
        (let* ((_rebind?151600_ '#f)
               (_phi151602_ (gx#current-expander-phi))
               (_ctx151604_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151598_
           _rebind?151600_
           _phi151602_
           _ctx151604_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id151606_ _rebind?151607_)
        (let* ((_phi151609_ (gx#current-expander-phi))
               (_ctx151611_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151606_
           _rebind?151607_
           _phi151609_
           _ctx151611_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id151613_ _rebind?151614_ _phi151615_)
        (let ((_ctx151617_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151613_
           _rebind?151614_
           _phi151615_
           _ctx151617_))))
    (define gx#core-bind-runtime!
      (lambda _g158941_
        (let ((_g158940_ (##length _g158941_)))
          (cond ((##fx= _g158940_ 1)
                 (apply (lambda (_id151598_)
                          (gx#core-bind-runtime!__0 _id151598_))
                        _g158941_))
                ((##fx= _g158940_ 2)
                 (apply (lambda (_id151606_ _rebind?151607_)
                          (gx#core-bind-runtime!__1
                           _id151606_
                           _rebind?151607_))
                        _g158941_))
                ((##fx= _g158940_ 3)
                 (apply (lambda (_id151613_ _rebind?151614_ _phi151615_)
                          (gx#core-bind-runtime!__2
                           _id151613_
                           _rebind?151614_
                           _phi151615_))
                        _g158941_))
                ((##fx= _g158940_ 4)
                 (apply (lambda (_id151619_
                                 _rebind?151620_
                                 _phi151621_
                                 _ctx151622_)
                          (gx#core-bind-runtime!__%
                           _id151619_
                           _rebind?151620_
                           _phi151621_
                           _ctx151622_))
                        _g158941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g158941_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id151538_ _eid151539_ _rebind?151540_ _phi151541_ _ctx151542_)
        (let* ((_key151544_ (gx#core-identifier-key _id151538_))
               (_bind151546_
                (if (##structure-instance-of?
                     _ctx151542_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151539_
                     _key151544_
                     _phi151541_
                     _ctx151542_)
                    (if (##structure-instance-of?
                         _ctx151542_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151539_
                         _key151544_
                         _phi151541_)
                        (##structure
                         gx#runtime-binding::t
                         _eid151539_
                         _key151544_
                         _phi151541_)))))
          (gx#bind-identifier!__%
           _id151538_
           _bind151546_
           _rebind?151540_
           _phi151541_
           _ctx151542_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id151552_ _eid151553_)
        (let* ((_rebind?151555_ '#f)
               (_phi151557_ (gx#current-expander-phi))
               (_ctx151559_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151552_
           _eid151553_
           _rebind?151555_
           _phi151557_
           _ctx151559_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id151561_ _eid151562_ _rebind?151563_)
        (let* ((_phi151565_ (gx#current-expander-phi))
               (_ctx151567_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151561_
           _eid151562_
           _rebind?151563_
           _phi151565_
           _ctx151567_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id151569_ _eid151570_ _rebind?151571_ _phi151572_)
        (let ((_ctx151574_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151569_
           _eid151570_
           _rebind?151571_
           _phi151572_
           _ctx151574_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g158943_
        (let ((_g158942_ (##length _g158943_)))
          (cond ((##fx= _g158942_ 2)
                 (apply (lambda (_id151552_ _eid151553_)
                          (gx#core-bind-runtime-reference!__0
                           _id151552_
                           _eid151553_))
                        _g158943_))
                ((##fx= _g158942_ 3)
                 (apply (lambda (_id151561_ _eid151562_ _rebind?151563_)
                          (gx#core-bind-runtime-reference!__1
                           _id151561_
                           _eid151562_
                           _rebind?151563_))
                        _g158943_))
                ((##fx= _g158942_ 4)
                 (apply (lambda (_id151569_
                                 _eid151570_
                                 _rebind?151571_
                                 _phi151572_)
                          (gx#core-bind-runtime-reference!__2
                           _id151569_
                           _eid151570_
                           _rebind?151571_
                           _phi151572_))
                        _g158943_))
                ((##fx= _g158942_ 5)
                 (apply (lambda (_id151576_
                                 _eid151577_
                                 _rebind?151578_
                                 _phi151579_
                                 _ctx151580_)
                          (gx#core-bind-runtime-reference!__%
                           _id151576_
                           _eid151577_
                           _rebind?151578_
                           _phi151579_
                           _ctx151580_))
                        _g158943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g158943_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id151498_ _eid151499_ _rebind?151500_ _phi151501_ _ctx151502_)
        (gx#bind-identifier!__%
         _id151498_
         (##structure
          gx#extern-binding::t
          _eid151499_
          (gx#core-identifier-key _id151498_)
          _phi151501_)
         _rebind?151500_
         _phi151501_
         _ctx151502_)))
    (define gx#core-bind-extern!__0
      (lambda (_id151507_ _eid151508_)
        (let* ((_rebind?151510_ '#f)
               (_phi151512_ (gx#current-expander-phi))
               (_ctx151514_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151507_
           _eid151508_
           _rebind?151510_
           _phi151512_
           _ctx151514_))))
    (define gx#core-bind-extern!__1
      (lambda (_id151516_ _eid151517_ _rebind?151518_)
        (let* ((_phi151520_ (gx#current-expander-phi))
               (_ctx151522_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151516_
           _eid151517_
           _rebind?151518_
           _phi151520_
           _ctx151522_))))
    (define gx#core-bind-extern!__2
      (lambda (_id151524_ _eid151525_ _rebind?151526_ _phi151527_)
        (let ((_ctx151529_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151524_
           _eid151525_
           _rebind?151526_
           _phi151527_
           _ctx151529_))))
    (define gx#core-bind-extern!
      (lambda _g158945_
        (let ((_g158944_ (##length _g158945_)))
          (cond ((##fx= _g158944_ 2)
                 (apply (lambda (_id151507_ _eid151508_)
                          (gx#core-bind-extern!__0 _id151507_ _eid151508_))
                        _g158945_))
                ((##fx= _g158944_ 3)
                 (apply (lambda (_id151516_ _eid151517_ _rebind?151518_)
                          (gx#core-bind-extern!__1
                           _id151516_
                           _eid151517_
                           _rebind?151518_))
                        _g158945_))
                ((##fx= _g158944_ 4)
                 (apply (lambda (_id151524_
                                 _eid151525_
                                 _rebind?151526_
                                 _phi151527_)
                          (gx#core-bind-extern!__2
                           _id151524_
                           _eid151525_
                           _rebind?151526_
                           _phi151527_))
                        _g158945_))
                ((##fx= _g158944_ 5)
                 (apply (lambda (_id151531_
                                 _eid151532_
                                 _rebind?151533_
                                 _phi151534_
                                 _ctx151535_)
                          (gx#core-bind-extern!__%
                           _id151531_
                           _eid151532_
                           _rebind?151533_
                           _phi151534_
                           _ctx151535_))
                        _g158945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g158945_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id151452_ _e151453_ _rebind?151454_ _phi151455_ _ctx151456_)
        (gx#bind-identifier!__%
         _id151452_
         (let ((_key151461_ (gx#core-identifier-key _id151452_))
               (_e151462_
                (if (or (##structure-instance-of? _e151453_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e151453_
                         'gx#expander-context::t))
                    _e151453_
                    (##structure
                     gx#user-expander::t
                     _e151453_
                     _ctx151456_
                     _phi151455_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key151461_ '#t _phi151455_ _ctx151456_)
            _key151461_
            _phi151455_
            _e151462_))
         _rebind?151454_
         _phi151455_
         _ctx151456_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id151467_ _e151468_)
        (let* ((_rebind?151470_ '#f)
               (_phi151472_ (gx#current-expander-phi))
               (_ctx151474_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151467_
           _e151468_
           _rebind?151470_
           _phi151472_
           _ctx151474_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id151476_ _e151477_ _rebind?151478_)
        (let* ((_phi151480_ (gx#current-expander-phi))
               (_ctx151482_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151476_
           _e151477_
           _rebind?151478_
           _phi151480_
           _ctx151482_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id151484_ _e151485_ _rebind?151486_ _phi151487_)
        (let ((_ctx151489_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151484_
           _e151485_
           _rebind?151486_
           _phi151487_
           _ctx151489_))))
    (define gx#core-bind-syntax!
      (lambda _g158947_
        (let ((_g158946_ (##length _g158947_)))
          (cond ((##fx= _g158946_ 2)
                 (apply (lambda (_id151467_ _e151468_)
                          (gx#core-bind-syntax!__0 _id151467_ _e151468_))
                        _g158947_))
                ((##fx= _g158946_ 3)
                 (apply (lambda (_id151476_ _e151477_ _rebind?151478_)
                          (gx#core-bind-syntax!__1
                           _id151476_
                           _e151477_
                           _rebind?151478_))
                        _g158947_))
                ((##fx= _g158946_ 4)
                 (apply (lambda (_id151484_
                                 _e151485_
                                 _rebind?151486_
                                 _phi151487_)
                          (gx#core-bind-syntax!__2
                           _id151484_
                           _e151485_
                           _rebind?151486_
                           _phi151487_))
                        _g158947_))
                ((##fx= _g158946_ 5)
                 (apply (lambda (_id151491_
                                 _e151492_
                                 _rebind?151493_
                                 _phi151494_
                                 _ctx151495_)
                          (gx#core-bind-syntax!__%
                           _id151491_
                           _e151492_
                           _rebind?151493_
                           _phi151494_
                           _ctx151495_))
                        _g158947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g158947_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id151435_ _e151436_ _rebind?151437_)
        (gx#core-bind-syntax!__%
         _id151435_
         _e151436_
         _rebind?151437_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id151442_ _e151443_)
        (let ((_rebind?151445_ '#f))
          (gx#core-bind-root-syntax!__%
           _id151442_
           _e151443_
           _rebind?151445_))))
    (define gx#core-bind-root-syntax!
      (lambda _g158949_
        (let ((_g158948_ (##length _g158949_)))
          (cond ((##fx= _g158948_ 2)
                 (apply (lambda (_id151442_ _e151443_)
                          (gx#core-bind-root-syntax!__0 _id151442_ _e151443_))
                        _g158949_))
                ((##fx= _g158948_ 3)
                 (apply (lambda (_id151447_ _e151448_ _rebind?151449_)
                          (gx#core-bind-root-syntax!__%
                           _id151447_
                           _e151448_
                           _rebind?151449_))
                        _g158949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g158949_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id151393_
               _alias-id151394_
               _rebind?151395_
               _phi151396_
               _ctx151397_)
        (gx#bind-identifier!__%
         _id151393_
         (let ((_key151399_ (gx#core-identifier-key _id151393_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key151399_ '#t _phi151396_ _ctx151397_)
            _key151399_
            _phi151396_
            _alias-id151394_))
         _rebind?151395_
         _phi151396_
         _ctx151397_)))
    (define gx#core-bind-alias!__0
      (lambda (_id151404_ _alias-id151405_)
        (let* ((_rebind?151407_ '#f)
               (_phi151409_ (gx#current-expander-phi))
               (_ctx151411_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151404_
           _alias-id151405_
           _rebind?151407_
           _phi151409_
           _ctx151411_))))
    (define gx#core-bind-alias!__1
      (lambda (_id151413_ _alias-id151414_ _rebind?151415_)
        (let* ((_phi151417_ (gx#current-expander-phi))
               (_ctx151419_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151413_
           _alias-id151414_
           _rebind?151415_
           _phi151417_
           _ctx151419_))))
    (define gx#core-bind-alias!__2
      (lambda (_id151421_ _alias-id151422_ _rebind?151423_ _phi151424_)
        (let ((_ctx151426_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151421_
           _alias-id151422_
           _rebind?151423_
           _phi151424_
           _ctx151426_))))
    (define gx#core-bind-alias!
      (lambda _g158951_
        (let ((_g158950_ (##length _g158951_)))
          (cond ((##fx= _g158950_ 2)
                 (apply (lambda (_id151404_ _alias-id151405_)
                          (gx#core-bind-alias!__0 _id151404_ _alias-id151405_))
                        _g158951_))
                ((##fx= _g158950_ 3)
                 (apply (lambda (_id151413_ _alias-id151414_ _rebind?151415_)
                          (gx#core-bind-alias!__1
                           _id151413_
                           _alias-id151414_
                           _rebind?151415_))
                        _g158951_))
                ((##fx= _g158950_ 4)
                 (apply (lambda (_id151421_
                                 _alias-id151422_
                                 _rebind?151423_
                                 _phi151424_)
                          (gx#core-bind-alias!__2
                           _id151421_
                           _alias-id151422_
                           _rebind?151423_
                           _phi151424_))
                        _g158951_))
                ((##fx= _g158950_ 5)
                 (apply (lambda (_id151428_
                                 _alias-id151429_
                                 _rebind?151430_
                                 _phi151431_
                                 _ctx151432_)
                          (gx#core-bind-alias!__%
                           _id151428_
                           _alias-id151429_
                           _rebind?151430_
                           _phi151431_
                           _ctx151432_))
                        _g158951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g158951_))))))
    (define gx#make-binding-id__%
      (lambda (_key151350_ _syntax?151351_ _phi151352_ _ctx151353_)
        (if (uninterned-symbol? _key151350_)
            (gensym 'L)
            (if (pair? _key151350_)
                (gensym (car _key151350_))
                (if (##structure-instance-of? _ctx151353_ 'gx#top-context::t)
                    (let ((_ns151355_
                           (gx#core-context-namespace__% _ctx151353_)))
                      (if (and (fxzero? _phi151352_) (not _syntax?151351_))
                          (if _ns151355_
                              (make-symbol__1 _ns151355_ '"#" _key151350_)
                              _key151350_)
                          (if _syntax?151351_
                              (make-symbol__1
                               (let ((_$e151357_ _ns151355_))
                                 (if _$e151357_ _$e151357_ '""))
                               '"[:"
                               (number->string _phi151352_)
                               '":]#"
                               _key151350_)
                              (make-symbol__1
                               (let ((_$e151360_ _ns151355_))
                                 (if _$e151360_ _$e151360_ '""))
                               '"["
                               (number->string _phi151352_)
                               '"]#"
                               _key151350_))))
                    (gensym _key151350_))))))
    (define gx#make-binding-id__0
      (lambda (_key151366_)
        (let* ((_syntax?151368_ '#f)
               (_phi151370_ (gx#current-expander-phi))
               (_ctx151372_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151366_
           _syntax?151368_
           _phi151370_
           _ctx151372_))))
    (define gx#make-binding-id__1
      (lambda (_key151374_ _syntax?151375_)
        (let* ((_phi151377_ (gx#current-expander-phi))
               (_ctx151379_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151374_
           _syntax?151375_
           _phi151377_
           _ctx151379_))))
    (define gx#make-binding-id__2
      (lambda (_key151381_ _syntax?151382_ _phi151383_)
        (let ((_ctx151385_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151381_
           _syntax?151382_
           _phi151383_
           _ctx151385_))))
    (define gx#make-binding-id
      (lambda _g158953_
        (let ((_g158952_ (##length _g158953_)))
          (cond ((##fx= _g158952_ 1)
                 (apply (lambda (_key151366_)
                          (gx#make-binding-id__0 _key151366_))
                        _g158953_))
                ((##fx= _g158952_ 2)
                 (apply (lambda (_key151374_ _syntax?151375_)
                          (gx#make-binding-id__1 _key151374_ _syntax?151375_))
                        _g158953_))
                ((##fx= _g158952_ 3)
                 (apply (lambda (_key151381_ _syntax?151382_ _phi151383_)
                          (gx#make-binding-id__2
                           _key151381_
                           _syntax?151382_
                           _phi151383_))
                        _g158953_))
                ((##fx= _g158952_ 4)
                 (apply (lambda (_key151387_
                                 _syntax?151388_
                                 _phi151389_
                                 _ctx151390_)
                          (gx#make-binding-id__%
                           _key151387_
                           _syntax?151388_
                           _phi151389_
                           _ctx151390_))
                        _g158953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g158953_))))))))
