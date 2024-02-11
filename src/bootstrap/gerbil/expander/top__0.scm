(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707674931)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx154322_)
        (letrec ((_expand-special154324_
                  (lambda (_hd154326_ _K154327_ _rest154328_ _r154329_)
                    (_K154327_
                     _rest154328_
                     (cons (gx#core-expand-top _hd154326_) _r154329_)))))
          (gx#core-expand-block__0 _stx154322_ _expand-special154324_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx154075_)
        (letrec ((_expand-special154077_
                  (lambda (_hd154197_ _K154198_ _rest154199_ _r154200_)
                    (let* ((_K154204_
                            (lambda (_e154202_)
                              (_K154198_
                               _rest154199_
                               (cons _e154202_ _r154200_))))
                           (_e154205154234_ _hd154197_)
                           (_E154229154238_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154205154234_)))
                           (_E154225154250_
                            (lambda ()
                              (if (gx#stx-pair? _e154205154234_)
                                  (let ((_e154230154242_
                                         (gx#syntax-e _e154205154234_)))
                                    (let ((_hd154231154245_
                                           (##car _e154230154242_))
                                          (_tl154232154247_
                                           (##cdr _e154230154242_)))
                                      (if (and (gx#identifier?
                                                _hd154231154245_)
                                               (gx#core-identifier=?
                                                _hd154231154245_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K154204_
                                               (gx#core-expand-define-runtime%
                                                _hd154197_))
                                              (_E154229154238_))
                                          (_E154229154238_))))
                                  (_E154229154238_))))
                           (_E154221154262_
                            (lambda ()
                              (if (gx#stx-pair? _e154205154234_)
                                  (let ((_e154226154254_
                                         (gx#syntax-e _e154205154234_)))
                                    (let ((_hd154227154257_
                                           (##car _e154226154254_))
                                          (_tl154228154259_
                                           (##cdr _e154226154254_)))
                                      (if (and (gx#identifier?
                                                _hd154227154257_)
                                               (gx#core-identifier=?
                                                _hd154227154257_
                                                '%#define-alias))
                                          (if '#t
                                              (_K154204_
                                               (gx#core-expand-define-alias%
                                                _hd154197_))
                                              (_E154225154250_))
                                          (_E154225154250_))))
                                  (_E154225154250_))))
                           (_E154211154274_
                            (lambda ()
                              (if (gx#stx-pair? _e154205154234_)
                                  (let ((_e154222154266_
                                         (gx#syntax-e _e154205154234_)))
                                    (let ((_hd154223154269_
                                           (##car _e154222154266_))
                                          (_tl154224154271_
                                           (##cdr _e154222154266_)))
                                      (if (and (gx#identifier?
                                                _hd154223154269_)
                                               (gx#core-identifier=?
                                                _hd154223154269_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K154204_
                                               (gx#core-expand-define-syntax%
                                                _hd154197_))
                                              (_E154221154262_))
                                          (_E154221154262_))))
                                  (_E154221154262_))))
                           (_E154207154306_
                            (lambda ()
                              (if (gx#stx-pair? _e154205154234_)
                                  (let ((_e154212154278_
                                         (gx#syntax-e _e154205154234_)))
                                    (let ((_hd154213154281_
                                           (##car _e154212154278_))
                                          (_tl154214154283_
                                           (##cdr _e154212154278_)))
                                      (if (and (gx#identifier?
                                                _hd154213154281_)
                                               (gx#core-identifier=?
                                                _hd154213154281_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154214154283_)
                                              (let ((_e154215154286_
                                                     (gx#syntax-e
                                                      _tl154214154283_)))
                                                (let ((_hd154216154289_
                                                       (##car _e154215154286_))
                                                      (_tl154217154291_
                                                       (##cdr _e154215154286_)))
                                                  (let ((_hd-bind154294_
                                                         _hd154216154289_))
                                                    (if (gx#stx-pair?
                                                         _tl154217154291_)
                                                        (let ((_e154218154296_
                                                               (gx#syntax-e
                                                                _tl154217154291_)))
                                                          (let ((_hd154219154299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154218154296_))
                        (_tl154220154301_ (##cdr _e154218154296_)))
                    (let ((_expr154304_ _hd154219154299_))
                      (if (gx#stx-null? _tl154220154301_)
                          (if (gx#core-bind-values? _hd-bind154294_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154294_)
                                (_K154204_ _hd154197_))
                              (_E154211154274_))
                          (_E154211154274_)))))
                (_E154211154274_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154211154274_))
                                          (_E154211154274_))))
                                  (_E154211154274_))))
                           (_E154206154318_
                            (lambda ()
                              (if (gx#stx-pair? _e154205154234_)
                                  (let ((_e154208154310_
                                         (gx#syntax-e _e154205154234_)))
                                    (let ((_hd154209154313_
                                           (##car _e154208154310_))
                                          (_tl154210154315_
                                           (##cdr _e154208154310_)))
                                      (if (and (gx#identifier?
                                                _hd154209154313_)
                                               (gx#core-identifier=?
                                                _hd154209154313_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K154204_
                                               (gx#core-expand-begin-syntax%
                                                _hd154197_))
                                              (_E154207154306_))
                                          (_E154207154306_))))
                                  (_E154207154306_)))))
                      (_E154206154318_))))
                 (_eval-body154078_
                  (lambda (_rbody154086_)
                    (let _lp154088_ ((_rest154090_ _rbody154086_)
                                     (_body154091_ '())
                                     (_ebody154092_ '()))
                      (let* ((_rest154093154101_ _rest154090_)
                             (_else154095154109_
                              (lambda ()
                                (values _body154091_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody154092_)
                                          (gx#stx-source _stx154075_))))))
                             (_K154097154185_
                              (lambda (_rest154112_ _hd154113_)
                                (let* ((_e154114154131_ _hd154113_)
                                       (_E154126154135_
                                        (lambda ()
                                          (_lp154088_
                                           _rest154112_
                                           (cons _hd154113_ _body154091_)
                                           (cons _hd154113_ _ebody154092_))))
                                       (_E154116154147_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154114154131_)
                                              (let ((_e154127154139_
                                                     (gx#syntax-e
                                                      _e154114154131_)))
                                                (let ((_hd154128154142_
                                                       (##car _e154127154139_))
                                                      (_tl154129154144_
                                                       (##cdr _e154127154139_)))
                                                  (if (and (gx#identifier?
                                                            _hd154128154142_)
                                                           (gx#core-identifier=?
                                                            _hd154128154142_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp154088_
                                                           _rest154112_
                                                           (cons _hd154113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body154091_)
                   _ebody154092_)
                  (_E154126154135_))
              (_E154126154135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154126154135_))))
                                       (_E154115154181_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154114154131_)
                                              (let ((_e154117154151_
                                                     (gx#syntax-e
                                                      _e154114154131_)))
                                                (let ((_hd154118154154_
                                                       (##car _e154117154151_))
                                                      (_tl154119154156_
                                                       (##cdr _e154117154151_)))
                                                  (if (and (gx#identifier?
                                                            _hd154118154154_)
                                                           (gx#core-identifier=?
                                                            _hd154118154154_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl154119154156_)
                                                          (let ((_e154120154159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl154119154156_)))
                    (let ((_hd154121154162_ (##car _e154120154159_))
                          (_tl154122154164_ (##cdr _e154120154159_)))
                      (let ((_hd-bind154167_ _hd154121154162_))
                        (if (gx#stx-pair? _tl154122154164_)
                            (let ((_e154123154169_
                                   (gx#syntax-e _tl154122154164_)))
                              (let ((_hd154124154172_ (##car _e154123154169_))
                                    (_tl154125154174_ (##cdr _e154123154169_)))
                                (let ((_expr154177_ _hd154124154172_))
                                  (if (gx#stx-null? _tl154125154174_)
                                      (if '#t
                                          (let ((_ehd154179_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind154167_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr154177_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd154113_))))
                                            (_lp154088_
                                             _rest154112_
                                             (cons _ehd154179_ _body154091_)
                                             (cons _ehd154179_ _ebody154092_)))
                                          (_E154116154147_))
                                      (_E154116154147_)))))
                            (_E154116154147_)))))
                  (_E154116154147_))
              (_E154116154147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154116154147_)))))
                                  (_E154115154181_)))))
                        (if (##pair? _rest154093154101_)
                            (let ((_hd154098154188_ (##car _rest154093154101_))
                                  (_tl154099154190_
                                   (##cdr _rest154093154101_)))
                              (let* ((_hd154193_ _hd154098154188_)
                                     (_rest154195_ _tl154099154190_))
                                (_K154097154185_ _rest154195_ _hd154193_)))
                            (_else154095154109_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody154081_
                     (gx#core-expand-block__1
                      _stx154075_
                      _expand-special154077_
                      '#f))
                    (_g158913_ (_eval-body154078_ _rbody154081_)))
               (begin
                 (let ((_g158914_
                        (if (##values? _g158913_)
                            (##vector-length _g158913_)
                            1)))
                   (if (not (##fx= _g158914_ 2))
                       (error "Context expects 2 values" _g158914_)))
                 (let ((_expanded-body154083_ (##vector-ref _g158913_ 0))
                       (_value154084_ (##vector-ref _g158913_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body154083_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value154084_ '())))
                    (gx#stx-source _stx154075_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx154045_)
        (let* ((_e154046154053_ _stx154045_)
               (_E154048154057_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154046154053_)))
               (_E154047154071_
                (lambda ()
                  (if (gx#stx-pair? _e154046154053_)
                      (let ((_e154049154061_ (gx#syntax-e _e154046154053_)))
                        (let ((_hd154050154064_ (##car _e154049154061_))
                              (_tl154051154066_ (##cdr _e154049154061_)))
                          (let ((_body154069_ _tl154051154066_))
                            (if (gx#stx-list? _body154069_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body154069_)
                                 (gx#stx-source _stx154045_))
                                (_E154048154057_)))))
                      (_E154048154057_)))))
          (_E154047154071_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx154043_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx154043_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx153989_)
        (let* ((_e153990154003_ _stx153989_)
               (_E153992154007_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153990154003_)))
               (_E153991154039_
                (lambda ()
                  (if (gx#stx-pair? _e153990154003_)
                      (let ((_e153993154011_ (gx#syntax-e _e153990154003_)))
                        (let ((_hd153994154014_ (##car _e153993154011_))
                              (_tl153995154016_ (##cdr _e153993154011_)))
                          (if (gx#stx-pair? _tl153995154016_)
                              (let ((_e153996154019_
                                     (gx#syntax-e _tl153995154016_)))
                                (let ((_hd153997154022_
                                       (##car _e153996154019_))
                                      (_tl153998154024_
                                       (##cdr _e153996154019_)))
                                  (let ((_ann154027_ _hd153997154022_))
                                    (if (gx#stx-pair? _tl153998154024_)
                                        (let ((_e153999154029_
                                               (gx#syntax-e _tl153998154024_)))
                                          (let ((_hd154000154032_
                                                 (##car _e153999154029_))
                                                (_tl154001154034_
                                                 (##cdr _e153999154029_)))
                                            (let ((_expr154037_
                                                   _hd154000154032_))
                                              (if (gx#stx-null?
                                                   _tl154001154034_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann154027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr154037_)
                                 '())))
               (gx#stx-source _stx153989_))
              (_E153992154007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153992154007_)))))
                                        (_E153992154007_)))))
                              (_E153992154007_))))
                      (_E153992154007_)))))
          (_E153991154039_))))
    (define gx#core-expand-local-block
      (lambda (_stx153713_ _body153714_)
        (letrec ((_expand-special153716_
                  (lambda (_hd153984_ _K153985_ _rest153986_ _r153987_)
                    (_K153985_
                     '()
                     (cons (_expand-internal153717_ _hd153984_ _rest153986_)
                           _r153987_))))
                 (_expand-internal153717_
                  (lambda (_hd153980_ _rest153981_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal153719_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd153980_ _rest153981_))
                          (gx#stx-source _stx153713_))
                         _expand-internal-special153718_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj158907
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj158907)
                       __obj158907))))
                 (_expand-internal-special153718_
                  (lambda (_hd153875_ _K153876_ _rest153877_ _r153878_)
                    (let* ((_e153879153904_ _hd153875_)
                           (_E153899153908_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153879153904_)))
                           (_E153895153920_
                            (lambda ()
                              (if (gx#stx-pair? _e153879153904_)
                                  (let ((_e153900153912_
                                         (gx#syntax-e _e153879153904_)))
                                    (let ((_hd153901153915_
                                           (##car _e153900153912_))
                                          (_tl153902153917_
                                           (##cdr _e153900153912_)))
                                      (if (and (gx#identifier?
                                                _hd153901153915_)
                                               (gx#core-identifier=?
                                                _hd153901153915_
                                                '%#declare))
                                          (if '#t
                                              (_K153876_
                                               _rest153877_
                                               (cons (gx#core-expand-declare%
                                                      _hd153875_)
                                                     _r153878_))
                                              (_E153899153908_))
                                          (_E153899153908_))))
                                  (_E153899153908_))))
                           (_E153891153932_
                            (lambda ()
                              (if (gx#stx-pair? _e153879153904_)
                                  (let ((_e153896153924_
                                         (gx#syntax-e _e153879153904_)))
                                    (let ((_hd153897153927_
                                           (##car _e153896153924_))
                                          (_tl153898153929_
                                           (##cdr _e153896153924_)))
                                      (if (and (gx#identifier?
                                                _hd153897153927_)
                                               (gx#core-identifier=?
                                                _hd153897153927_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd153875_)
                                                (_K153876_
                                                 _rest153877_
                                                 _r153878_))
                                              (_E153895153920_))
                                          (_E153895153920_))))
                                  (_E153895153920_))))
                           (_E153881153944_
                            (lambda ()
                              (if (gx#stx-pair? _e153879153904_)
                                  (let ((_e153892153936_
                                         (gx#syntax-e _e153879153904_)))
                                    (let ((_hd153893153939_
                                           (##car _e153892153936_))
                                          (_tl153894153941_
                                           (##cdr _e153892153936_)))
                                      (if (and (gx#identifier?
                                                _hd153893153939_)
                                               (gx#core-identifier=?
                                                _hd153893153939_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd153875_)
                                                (_K153876_
                                                 _rest153877_
                                                 _r153878_))
                                              (_E153891153932_))
                                          (_E153891153932_))))
                                  (_E153891153932_))))
                           (_E153880153976_
                            (lambda ()
                              (if (gx#stx-pair? _e153879153904_)
                                  (let ((_e153882153948_
                                         (gx#syntax-e _e153879153904_)))
                                    (let ((_hd153883153951_
                                           (##car _e153882153948_))
                                          (_tl153884153953_
                                           (##cdr _e153882153948_)))
                                      (if (and (gx#identifier?
                                                _hd153883153951_)
                                               (gx#core-identifier=?
                                                _hd153883153951_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153884153953_)
                                              (let ((_e153885153956_
                                                     (gx#syntax-e
                                                      _tl153884153953_)))
                                                (let ((_hd153886153959_
                                                       (##car _e153885153956_))
                                                      (_tl153887153961_
                                                       (##cdr _e153885153956_)))
                                                  (let ((_hd-bind153964_
                                                         _hd153886153959_))
                                                    (if (gx#stx-pair?
                                                         _tl153887153961_)
                                                        (let ((_e153888153966_
                                                               (gx#syntax-e
                                                                _tl153887153961_)))
                                                          (let ((_hd153889153969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153888153966_))
                        (_tl153890153971_ (##cdr _e153888153966_)))
                    (let ((_expr153974_ _hd153889153969_))
                      (if (gx#stx-null? _tl153890153971_)
                          (if (gx#core-bind-values? _hd-bind153964_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153964_)
                                (_K153876_
                                 _rest153877_
                                 (cons _hd153875_ _r153878_)))
                              (_E153881153944_))
                          (_E153881153944_)))))
                (_E153881153944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153881153944_))
                                          (_E153881153944_))))
                                  (_E153881153944_)))))
                      (_E153880153976_))))
                 (_wrap-internal153719_
                  (lambda (_rbody153721_)
                    (let _lp153723_ ((_rest153725_ _rbody153721_)
                                     (_decls153726_ '())
                                     (_bind153727_ '())
                                     (_body153728_ '()))
                      (let* ((_e153729153736_ _rest153725_)
                             (_E153731153785_
                              (lambda ()
                                (let* ((_body153780_
                                        (let* ((_body153739153749_
                                                _body153728_)
                                               (_else153742153757_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153728_)
                                                   (gx#stx-source
                                                    _stx153713_)))))
                                          (let ((_K153747153777_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx153713_)))
                                                (_K153744153763_
                                                 (lambda (_expr153761_)
                                                   _expr153761_)))
                                            (let ((_try-match153741153773_
                                                   (lambda ()
                                                     (if (##pair? _body153739153749_)
                                                         (let ((_tl153746153768_
                                                                (##cdr _body153739153749_))
                                                               (_hd153745153766_
                                                                (##car _body153739153749_)))
                                                           (if (##null? _tl153746153768_)
                                                               (let ((_expr153771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153745153766_))
                         (_K153744153763_ _expr153771_))
                       (_else153742153757_)))
                 (_else153742153757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body153739153749_)
                                                  (_K153747153777_)
                                                  (_try-match153741153773_))))))
                                       (_body153782_
                                        (if (null? _bind153727_)
                                            _body153780_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind153727_
                                                         (cons _body153780_
                                                               '())))
                                             (gx#stx-source _stx153713_)))))
                                  (if (null? _decls153726_)
                                      _body153782_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls153726_
                                                   (cons _body153782_ '())))
                                       (gx#stx-source _stx153713_))))))
                             (_E153730153871_
                              (lambda ()
                                (if (gx#stx-pair? _e153729153736_)
                                    (let ((_e153732153789_
                                           (gx#syntax-e _e153729153736_)))
                                      (let ((_hd153733153792_
                                             (##car _e153732153789_))
                                            (_tl153734153794_
                                             (##cdr _e153732153789_)))
                                        (let* ((_hd153797_ _hd153733153792_)
                                               (_rest153799_ _tl153734153794_))
                                          (if '#t
                                              (let* ((_e153800153817_
                                                      _hd153797_)
                                                     (_E153812153821_
                                                      (lambda ()
                                                        (if (null? _bind153727_)
                                                            (_lp153723_
                                                             _rest153799_
                                                             _decls153726_
                                                             _bind153727_
                                                             (cons _hd153797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body153728_))
                    (_lp153723_
                     _rest153799_
                     _decls153726_
                     (cons (cons '#f (cons _hd153797_ '())) _bind153727_)
                     _body153728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153802153835_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153800153817_)
                                                            (let ((_e153813153825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153800153817_)))
                      (let ((_hd153814153828_ (##car _e153813153825_))
                            (_tl153815153830_ (##cdr _e153813153825_)))
                        (if (and (gx#identifier? _hd153814153828_)
                                 (gx#core-identifier=?
                                  _hd153814153828_
                                  '%#declare))
                            (let ((_xdecls153833_ _tl153815153830_))
                              (if '#t
                                  (_lp153723_
                                   _rest153799_
                                   (gx#stx-foldr
                                    cons
                                    _decls153726_
                                    _xdecls153833_)
                                   _bind153727_
                                   _body153728_)
                                  (_E153812153821_)))
                            (_E153812153821_))))
                    (_E153812153821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153801153867_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153800153817_)
                                                            (let ((_e153803153839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153800153817_)))
                      (let ((_hd153804153842_ (##car _e153803153839_))
                            (_tl153805153844_ (##cdr _e153803153839_)))
                        (if (and (gx#identifier? _hd153804153842_)
                                 (gx#core-identifier=?
                                  _hd153804153842_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl153805153844_)
                                (let ((_e153806153847_
                                       (gx#syntax-e _tl153805153844_)))
                                  (let ((_hd153807153850_
                                         (##car _e153806153847_))
                                        (_tl153808153852_
                                         (##cdr _e153806153847_)))
                                    (let ((_hd-bind153855_ _hd153807153850_))
                                      (if (gx#stx-pair? _tl153808153852_)
                                          (let ((_e153809153857_
                                                 (gx#syntax-e
                                                  _tl153808153852_)))
                                            (let ((_hd153810153860_
                                                   (##car _e153809153857_))
                                                  (_tl153811153862_
                                                   (##cdr _e153809153857_)))
                                              (let ((_expr153865_
                                                     _hd153810153860_))
                                                (if (gx#stx-null?
                                                     _tl153811153862_)
                                                    (if '#t
                                                        (_lp153723_
                                                         _rest153799_
                                                         _decls153726_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind153855_)
                             (cons (gx#core-expand-expression _expr153865_)
                                   '()))
                       _bind153727_)
                 _body153728_)
                (_E153802153835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153802153835_)))))
                                          (_E153802153835_)))))
                                (_E153802153835_))
                            (_E153802153835_))))
                    (_E153802153835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153801153867_))
                                              (_E153731153785_)))))
                                    (_E153731153785_)))))
                        (_E153730153871_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body153714_)
            (gx#stx-source _stx153713_))
           _expand-special153716_))))
    (define gx#core-expand-declare%
      (lambda (_stx153651_)
        (let* ((_e153652153659_ _stx153651_)
               (_E153654153663_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153652153659_)))
               (_E153653153709_
                (lambda ()
                  (if (gx#stx-pair? _e153652153659_)
                      (let ((_e153655153667_ (gx#syntax-e _e153652153659_)))
                        (let ((_hd153656153670_ (##car _e153655153667_))
                              (_tl153657153672_ (##cdr _e153655153667_)))
                          (let ((_body153675_ _tl153657153672_))
                            (if (gx#stx-list? _body153675_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl153677_)
                                     (let* ((_e153678153685_ _decl153677_)
                                            (_E153680153689_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e153678153685_)))
                                            (_E153679153705_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e153678153685_)
                                                   (let ((_e153681153693_
                                                          (gx#syntax-e
                                                           _e153678153685_)))
                                                     (let ((_hd153682153696_
                                                            (##car _e153681153693_))
                                                           (_tl153683153698_
                                                            (##cdr _e153681153693_)))
                                                       (let* ((_head153701_
                                                               _hd153682153696_)
                                                              (_args153703_
                                                               _tl153683153698_))
                                                         (if (gx#stx-list?
                                                              _args153703_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl153677_)
                                                             (_E153680153689_)))))
                                                   (_E153680153689_)))))
                                       (_E153679153705_)))
                                   _body153675_))
                                 (gx#stx-source _stx153651_))
                                (_E153654153663_)))))
                      (_E153654153663_)))))
          (_E153653153709_))))
    (define gx#core-expand-extern%
      (lambda (_stx153555_)
        (let* ((_e153556153563_ _stx153555_)
               (_E153558153567_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153556153563_)))
               (_E153557153647_
                (lambda ()
                  (if (gx#stx-pair? _e153556153563_)
                      (let ((_e153559153571_ (gx#syntax-e _e153556153563_)))
                        (let ((_hd153560153574_ (##car _e153559153571_))
                              (_tl153561153576_ (##cdr _e153559153571_)))
                          (let ((_body153579_ _tl153561153576_))
                            (if '#t
                                (let _lp153581_ ((_rest153583_ _body153579_)
                                                 (_r153584_ '()))
                                  (let* ((_e153585153599_ _rest153583_)
                                         (_E153597153603_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx153555_)))
                                         (_E153587153607_
                                          (lambda ()
                                            (if (gx#stx-null? _e153585153599_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r153584_))
                                                     (gx#stx-source
                                                      _stx153555_))
                                                    (_E153597153603_))
                                                (_E153597153603_))))
                                         (_E153586153643_
                                          (lambda ()
                                            (if (gx#stx-pair? _e153585153599_)
                                                (let ((_e153588153611_
                                                       (gx#syntax-e
                                                        _e153585153599_)))
                                                  (let ((_hd153589153614_
                                                         (##car _e153588153611_))
                                                        (_tl153590153616_
                                                         (##cdr _e153588153611_)))
                                                    (if (gx#stx-pair?
                                                         _hd153589153614_)
                                                        (let ((_e153591153619_
                                                               (gx#syntax-e
                                                                _hd153589153614_)))
                                                          (let ((_hd153592153622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153591153619_))
                        (_tl153593153624_ (##cdr _e153591153619_)))
                    (let ((_id153627_ _hd153592153622_))
                      (if (gx#stx-pair? _tl153593153624_)
                          (let ((_e153594153629_
                                 (gx#syntax-e _tl153593153624_)))
                            (let ((_hd153595153632_ (##car _e153594153629_))
                                  (_tl153596153634_ (##cdr _e153594153629_)))
                              (let ((_eid153637_ _hd153595153632_))
                                (if (gx#stx-null? _tl153596153634_)
                                    (let ((_rest153639_ _tl153590153616_))
                                      (if (and (gx#identifier? _id153627_)
                                               (gx#identifier? _eid153637_))
                                          (let ((_eid153641_
                                                 (gx#stx-e _eid153637_)))
                                            (gx#core-bind-extern!__0
                                             _id153627_
                                             _eid153641_)
                                            (_lp153581_
                                             _rest153639_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id153627_)
                                                         (cons _eid153641_
                                                               '()))
                                                   _r153584_)))
                                          (_E153587153607_)))
                                    (_E153587153607_)))))
                          (_E153587153607_)))))
                (_E153587153607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153587153607_)))))
                                    (_E153586153643_)))
                                (_E153558153567_)))))
                      (_E153558153567_)))))
          (_E153557153647_))))
    (define gx#core-expand-define-values%
      (lambda (_stx153501_)
        (let* ((_e153502153515_ _stx153501_)
               (_E153504153519_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153502153515_)))
               (_E153503153551_
                (lambda ()
                  (if (gx#stx-pair? _e153502153515_)
                      (let ((_e153505153523_ (gx#syntax-e _e153502153515_)))
                        (let ((_hd153506153526_ (##car _e153505153523_))
                              (_tl153507153528_ (##cdr _e153505153523_)))
                          (if (gx#stx-pair? _tl153507153528_)
                              (let ((_e153508153531_
                                     (gx#syntax-e _tl153507153528_)))
                                (let ((_hd153509153534_
                                       (##car _e153508153531_))
                                      (_tl153510153536_
                                       (##cdr _e153508153531_)))
                                  (let ((_hd153539_ _hd153509153534_))
                                    (if (gx#stx-pair? _tl153510153536_)
                                        (let ((_e153511153541_
                                               (gx#syntax-e _tl153510153536_)))
                                          (let ((_hd153512153544_
                                                 (##car _e153511153541_))
                                                (_tl153513153546_
                                                 (##cdr _e153511153541_)))
                                            (let ((_expr153549_
                                                   _hd153512153544_))
                                              (if (gx#stx-null?
                                                   _tl153513153546_)
                                                  (if (gx#core-bind-values?
                                                       _hd153539_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd153539_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153539_)
                             (cons (gx#core-expand-expression _expr153549_)
                                   '())))
                 (gx#stx-source _stx153501_)))
              (_E153504153519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153504153519_)))))
                                        (_E153504153519_)))))
                              (_E153504153519_))))
                      (_E153504153519_)))))
          (_E153503153551_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx153445_)
        (let* ((_e153446153459_ _stx153445_)
               (_E153448153463_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153446153459_)))
               (_E153447153497_
                (lambda ()
                  (if (gx#stx-pair? _e153446153459_)
                      (let ((_e153449153467_ (gx#syntax-e _e153446153459_)))
                        (let ((_hd153450153470_ (##car _e153449153467_))
                              (_tl153451153472_ (##cdr _e153449153467_)))
                          (if (gx#stx-pair? _tl153451153472_)
                              (let ((_e153452153475_
                                     (gx#syntax-e _tl153451153472_)))
                                (let ((_hd153453153478_
                                       (##car _e153452153475_))
                                      (_tl153454153480_
                                       (##cdr _e153452153475_)))
                                  (let ((_id153483_ _hd153453153478_))
                                    (if (gx#stx-pair? _tl153454153480_)
                                        (let ((_e153455153485_
                                               (gx#syntax-e _tl153454153480_)))
                                          (let ((_hd153456153488_
                                                 (##car _e153455153485_))
                                                (_tl153457153490_
                                                 (##cdr _e153455153485_)))
                                            (let ((_binding-id153493_
                                                   _hd153456153488_))
                                              (if (gx#stx-null?
                                                   _tl153457153490_)
                                                  (if (and (gx#identifier?
                                                            _id153483_)
                                                           (gx#identifier?
                                                            _binding-id153493_))
                                                      (let ((_eid153495_
                                                             (gx#stx-e
                                                              _binding-id153493_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id153483_
                                                         _eid153495_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153483_)
                             (cons _eid153495_ '())))))
              (_E153448153463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153448153463_)))))
                                        (_E153448153463_)))))
                              (_E153448153463_))))
                      (_E153448153463_)))))
          (_E153447153497_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx153388_)
        (let* ((_e153389153402_ _stx153388_)
               (_E153391153406_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153389153402_)))
               (_E153390153441_
                (lambda ()
                  (if (gx#stx-pair? _e153389153402_)
                      (let ((_e153392153410_ (gx#syntax-e _e153389153402_)))
                        (let ((_hd153393153413_ (##car _e153392153410_))
                              (_tl153394153415_ (##cdr _e153392153410_)))
                          (if (gx#stx-pair? _tl153394153415_)
                              (let ((_e153395153418_
                                     (gx#syntax-e _tl153394153415_)))
                                (let ((_hd153396153421_
                                       (##car _e153395153418_))
                                      (_tl153397153423_
                                       (##cdr _e153395153418_)))
                                  (let ((_id153426_ _hd153396153421_))
                                    (if (gx#stx-pair? _tl153397153423_)
                                        (let ((_e153398153428_
                                               (gx#syntax-e _tl153397153423_)))
                                          (let ((_hd153399153431_
                                                 (##car _e153398153428_))
                                                (_tl153400153433_
                                                 (##cdr _e153398153428_)))
                                            (let ((_expr153436_
                                                   _hd153399153431_))
                                              (if (gx#stx-null?
                                                   _tl153400153433_)
                                                  (if (gx#identifier?
                                                       _id153426_)
                                                      (let ((_g158915_
                                                             (gx#core-expand-expression+1
                                                              _expr153436_)))
                                                        (begin
                                                          (let ((_g158916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g158915_)
                             (##vector-length _g158915_)
                             1)))
                    (if (not (##fx= _g158916_ 2))
                        (error "Context expects 2 values" _g158916_)))
                  (let ((_e-stx153438_ (##vector-ref _g158915_ 0))
                        (_e153439_ (##vector-ref _g158915_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id153426_ _e153439_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id153426_)
                                   (cons _e-stx153438_ '())))
                       (gx#stx-source _stx153388_))))))
              (_E153391153406_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153391153406_)))))
                                        (_E153391153406_)))))
                              (_E153391153406_))))
                      (_E153391153406_)))))
          (_E153390153441_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx153332_)
        (let* ((_e153333153346_ _stx153332_)
               (_E153335153350_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153333153346_)))
               (_E153334153384_
                (lambda ()
                  (if (gx#stx-pair? _e153333153346_)
                      (let ((_e153336153354_ (gx#syntax-e _e153333153346_)))
                        (let ((_hd153337153357_ (##car _e153336153354_))
                              (_tl153338153359_ (##cdr _e153336153354_)))
                          (if (gx#stx-pair? _tl153338153359_)
                              (let ((_e153339153362_
                                     (gx#syntax-e _tl153338153359_)))
                                (let ((_hd153340153365_
                                       (##car _e153339153362_))
                                      (_tl153341153367_
                                       (##cdr _e153339153362_)))
                                  (let ((_id153370_ _hd153340153365_))
                                    (if (gx#stx-pair? _tl153341153367_)
                                        (let ((_e153342153372_
                                               (gx#syntax-e _tl153341153367_)))
                                          (let ((_hd153343153375_
                                                 (##car _e153342153372_))
                                                (_tl153344153377_
                                                 (##cdr _e153342153372_)))
                                            (let ((_alias-id153380_
                                                   _hd153343153375_))
                                              (if (gx#stx-null?
                                                   _tl153344153377_)
                                                  (if (and (gx#identifier?
                                                            _id153370_)
                                                           (gx#identifier?
                                                            _alias-id153380_))
                                                      (let ((_alias-id153382_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id153380_)))
                                                        (gx#core-bind-alias!__0
                                                         _id153370_
                                                         _alias-id153382_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153370_)
                             (cons _alias-id153382_ '())))))
              (_E153335153350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153335153350_)))))
                                        (_E153335153350_)))))
                              (_E153335153350_))))
                      (_E153335153350_)))))
          (_E153334153384_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx153275_ _wrap?153276_)
        (let* ((_e153277153287_ _stx153275_)
               (_E153279153291_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153277153287_)))
               (_E153278153318_
                (lambda ()
                  (if (gx#stx-pair? _e153277153287_)
                      (let ((_e153280153295_ (gx#syntax-e _e153277153287_)))
                        (let ((_hd153281153298_ (##car _e153280153295_))
                              (_tl153282153300_ (##cdr _e153280153295_)))
                          (if (gx#stx-pair? _tl153282153300_)
                              (let ((_e153283153303_
                                     (gx#syntax-e _tl153282153300_)))
                                (let ((_hd153284153306_
                                       (##car _e153283153303_))
                                      (_tl153285153308_
                                       (##cdr _e153283153303_)))
                                  (let* ((_hd153311_ _hd153284153306_)
                                         (_body153313_ _tl153285153308_))
                                    (if (gx#core-bind-values? _hd153311_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd153311_)
                                           (let ((_body153316_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd153311_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx153275_
                                                               _body153313_)
                                                              '()))))
                                             (if _wrap?153276_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body153316_)
                                                  (gx#stx-source _stx153275_))
                                                 _body153316_)))
                                         gx#current-expander-context
                                         (let ((__obj158908
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158908)
                                           __obj158908))
                                        (_E153279153291_)))))
                              (_E153279153291_))))
                      (_E153279153291_)))))
          (_E153278153318_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx153325_)
        (let ((_wrap?153327_ '#t))
          (gx#core-expand-lambda%__% _stx153325_ _wrap?153327_))))
    (define gx#core-expand-lambda%
      (lambda _g158918_
        (let ((_g158917_ (##length _g158918_)))
          (cond ((##fx= _g158917_ 1)
                 (apply (lambda (_stx153325_)
                          (gx#core-expand-lambda%__0 _stx153325_))
                        _g158918_))
                ((##fx= _g158917_ 2)
                 (apply (lambda (_stx153329_ _wrap?153330_)
                          (gx#core-expand-lambda%__%
                           _stx153329_
                           _wrap?153330_))
                        _g158918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g158918_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx153239_)
        (let* ((_e153240153247_ _stx153239_)
               (_E153242153251_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153240153247_)))
               (_E153241153270_
                (lambda ()
                  (if (gx#stx-pair? _e153240153247_)
                      (let ((_e153243153255_ (gx#syntax-e _e153240153247_)))
                        (let ((_hd153244153258_ (##car _e153243153255_))
                              (_tl153245153260_ (##cdr _e153243153255_)))
                          (let ((_clauses153263_ _tl153245153260_))
                            (if (gx#stx-list? _clauses153263_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause153265_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause153265_)
                                       (let ((_$e153267_
                                              (gx#stx-source _clause153265_)))
                                         (if _$e153267_
                                             _$e153267_
                                             (gx#stx-source _stx153239_))))
                                      '#f))
                                   _clauses153263_))
                                 (gx#stx-source _stx153239_))
                                (_E153242153251_)))))
                      (_E153242153251_)))))
          (_E153241153270_))))
    (define gx#core-expand-let-values%
      (lambda (_stx153193_)
        (let* ((_e153194153204_ _stx153193_)
               (_E153196153208_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153194153204_)))
               (_E153195153235_
                (lambda ()
                  (if (gx#stx-pair? _e153194153204_)
                      (let ((_e153197153212_ (gx#syntax-e _e153194153204_)))
                        (let ((_hd153198153215_ (##car _e153197153212_))
                              (_tl153199153217_ (##cdr _e153197153212_)))
                          (if (gx#stx-pair? _tl153199153217_)
                              (let ((_e153200153220_
                                     (gx#syntax-e _tl153199153217_)))
                                (let ((_hd153201153223_
                                       (##car _e153200153220_))
                                      (_tl153202153225_
                                       (##cdr _e153200153220_)))
                                  (let* ((_hd153228_ _hd153201153223_)
                                         (_body153230_ _tl153202153225_))
                                    (if (gx#core-expand-let-bind? _hd153228_)
                                        (let ((_expressions153232_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd153228_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd153228_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd153228_
                                                           _expressions153232_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx153193_
                         _body153230_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx153193_)))
                                           gx#current-expander-context
                                           (let ((__obj158909
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj158909)
                                             __obj158909)))
                                        (_E153196153208_)))))
                              (_E153196153208_))))
                      (_E153196153208_)))))
          (_E153195153235_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx153138_ _form153139_)
        (let* ((_e153140153150_ _stx153138_)
               (_E153142153154_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153140153150_)))
               (_E153141153179_
                (lambda ()
                  (if (gx#stx-pair? _e153140153150_)
                      (let ((_e153143153158_ (gx#syntax-e _e153140153150_)))
                        (let ((_hd153144153161_ (##car _e153143153158_))
                              (_tl153145153163_ (##cdr _e153143153158_)))
                          (if (gx#stx-pair? _tl153145153163_)
                              (let ((_e153146153166_
                                     (gx#syntax-e _tl153145153163_)))
                                (let ((_hd153147153169_
                                       (##car _e153146153166_))
                                      (_tl153148153171_
                                       (##cdr _e153146153166_)))
                                  (let* ((_hd153174_ _hd153147153169_)
                                         (_body153176_ _tl153148153171_))
                                    (if (gx#core-expand-let-bind? _hd153174_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd153174_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form153139_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd153174_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd153174_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx153138_
                                                               _body153176_)
                                                              '())))
                                            (gx#stx-source _stx153138_)))
                                         gx#current-expander-context
                                         (let ((__obj158910
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158910)
                                           __obj158910))
                                        (_E153142153154_)))))
                              (_E153142153154_))))
                      (_E153142153154_)))))
          (_E153141153179_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx153186_)
        (let ((_form153188_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx153186_ _form153188_))))
    (define gx#core-expand-letrec-values%
      (lambda _g158920_
        (let ((_g158919_ (##length _g158920_)))
          (cond ((##fx= _g158919_ 1)
                 (apply (lambda (_stx153186_)
                          (gx#core-expand-letrec-values%__0 _stx153186_))
                        _g158920_))
                ((##fx= _g158919_ 2)
                 (apply (lambda (_stx153190_ _form153191_)
                          (gx#core-expand-letrec-values%__%
                           _stx153190_
                           _form153191_))
                        _g158920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g158920_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx153135_)
        (gx#core-expand-letrec-values%__% _stx153135_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx153092_)
        (if (gx#stx-list? _stx153092_)
            (gx#stx-andmap
             (lambda (_bind153094_)
               (let* ((_e153095153105_ _bind153094_)
                      (_E153097153109_ (lambda () '#f))
                      (_E153096153131_
                       (lambda ()
                         (if (gx#stx-pair? _e153095153105_)
                             (let ((_e153098153113_
                                    (gx#syntax-e _e153095153105_)))
                               (let ((_hd153099153116_ (##car _e153098153113_))
                                     (_tl153100153118_
                                      (##cdr _e153098153113_)))
                                 (let ((_hd153121_ _hd153099153116_))
                                   (if (gx#stx-pair? _tl153100153118_)
                                       (let ((_e153101153123_
                                              (gx#syntax-e _tl153100153118_)))
                                         (let ((_hd153102153126_
                                                (##car _e153101153123_))
                                               (_tl153103153128_
                                                (##cdr _e153101153123_)))
                                           (if (gx#stx-null? _tl153103153128_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd153121_)
                                                   (_E153097153109_))
                                               (_E153097153109_))))
                                       (_E153097153109_)))))
                             (_E153097153109_)))))
                 (_E153096153131_)))
             _stx153092_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind153051_)
        (let* ((_e153052153062_ _bind153051_)
               (_E153054153066_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153052153062_)))
               (_E153053153088_
                (lambda ()
                  (if (gx#stx-pair? _e153052153062_)
                      (let ((_e153055153070_ (gx#syntax-e _e153052153062_)))
                        (let ((_hd153056153073_ (##car _e153055153070_))
                              (_tl153057153075_ (##cdr _e153055153070_)))
                          (if (gx#stx-pair? _tl153057153075_)
                              (let ((_e153058153078_
                                     (gx#syntax-e _tl153057153075_)))
                                (let ((_hd153059153081_
                                       (##car _e153058153078_))
                                      (_tl153060153083_
                                       (##cdr _e153058153078_)))
                                  (let ((_expr153086_ _hd153059153081_))
                                    (if (gx#stx-null? _tl153060153083_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr153086_)
                                            (_E153054153066_))
                                        (_E153054153066_)))))
                              (_E153054153066_))))
                      (_E153054153066_)))))
          (_E153053153088_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind153010_)
        (let* ((_e153011153021_ _bind153010_)
               (_E153013153025_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153011153021_)))
               (_E153012153047_
                (lambda ()
                  (if (gx#stx-pair? _e153011153021_)
                      (let ((_e153014153029_ (gx#syntax-e _e153011153021_)))
                        (let ((_hd153015153032_ (##car _e153014153029_))
                              (_tl153016153034_ (##cdr _e153014153029_)))
                          (let ((_hd153037_ _hd153015153032_))
                            (if (gx#stx-pair? _tl153016153034_)
                                (let ((_e153017153039_
                                       (gx#syntax-e _tl153016153034_)))
                                  (let ((_hd153018153042_
                                         (##car _e153017153039_))
                                        (_tl153019153044_
                                         (##cdr _e153017153039_)))
                                    (if (gx#stx-null? _tl153019153044_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd153037_)
                                            (_E153013153025_))
                                        (_E153013153025_))))
                                (_E153013153025_)))))
                      (_E153013153025_)))))
          (_E153012153047_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind152968_ _expr152969_)
        (let* ((_e152970152980_ _bind152968_)
               (_E152972152984_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152970152980_)))
               (_E152971153006_
                (lambda ()
                  (if (gx#stx-pair? _e152970152980_)
                      (let ((_e152973152988_ (gx#syntax-e _e152970152980_)))
                        (let ((_hd152974152991_ (##car _e152973152988_))
                              (_tl152975152993_ (##cdr _e152973152988_)))
                          (let ((_hd152996_ _hd152974152991_))
                            (if (gx#stx-pair? _tl152975152993_)
                                (let ((_e152976152998_
                                       (gx#syntax-e _tl152975152993_)))
                                  (let ((_hd152977153001_
                                         (##car _e152976152998_))
                                        (_tl152978153003_
                                         (##cdr _e152976152998_)))
                                    (if (gx#stx-null? _tl152978153003_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd152996_)
                                                  (cons _expr152969_ '()))
                                            (_E152972152984_))
                                        (_E152972152984_))))
                                (_E152972152984_)))))
                      (_E152972152984_)))))
          (_E152971153006_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx152922_)
        (let* ((_e152923152933_ _stx152922_)
               (_E152925152937_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152923152933_)))
               (_E152924152964_
                (lambda ()
                  (if (gx#stx-pair? _e152923152933_)
                      (let ((_e152926152941_ (gx#syntax-e _e152923152933_)))
                        (let ((_hd152927152944_ (##car _e152926152941_))
                              (_tl152928152946_ (##cdr _e152926152941_)))
                          (if (gx#stx-pair? _tl152928152946_)
                              (let ((_e152929152949_
                                     (gx#syntax-e _tl152928152946_)))
                                (let ((_hd152930152952_
                                       (##car _e152929152949_))
                                      (_tl152931152954_
                                       (##cdr _e152929152949_)))
                                  (let* ((_hd152957_ _hd152930152952_)
                                         (_body152959_ _tl152931152954_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152957_)
                                        (let ((_expanders152961_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd152957_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd152957_
                                              _expanders152961_)
                                             (gx#core-expand-local-block
                                              _stx152922_
                                              _body152959_))
                                           gx#current-expander-context
                                           (let ((__obj158911
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj158911)
                                             __obj158911)))
                                        (_E152925152937_)))))
                              (_E152925152937_))))
                      (_E152925152937_)))))
          (_E152924152964_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx152871_)
        (let* ((_e152872152882_ _stx152871_)
               (_E152874152886_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152872152882_)))
               (_E152873152918_
                (lambda ()
                  (if (gx#stx-pair? _e152872152882_)
                      (let ((_e152875152890_ (gx#syntax-e _e152872152882_)))
                        (let ((_hd152876152893_ (##car _e152875152890_))
                              (_tl152877152895_ (##cdr _e152875152890_)))
                          (if (gx#stx-pair? _tl152877152895_)
                              (let ((_e152878152898_
                                     (gx#syntax-e _tl152877152895_)))
                                (let ((_hd152879152901_
                                       (##car _e152878152898_))
                                      (_tl152880152903_
                                       (##cdr _e152878152898_)))
                                  (let* ((_hd152906_ _hd152879152901_)
                                         (_body152908_ _tl152880152903_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152906_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd152906_
                                            (make-list
                                             (gx#stx-length _hd152906_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g152910152913_
                                                     _g152911152915_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g152910152913_
                                               _g152911152915_
                                               '#t))
                                            _hd152906_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd152906_))
                                           (gx#core-expand-local-block
                                            _stx152871_
                                            _body152908_))
                                         gx#current-expander-context
                                         (let ((__obj158912
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158912)
                                           __obj158912))
                                        (_E152874152886_)))))
                              (_E152874152886_))))
                      (_E152874152886_)))))
          (_E152873152918_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx152828_)
        (if (gx#stx-list? _stx152828_)
            (gx#stx-andmap
             (lambda (_bind152830_)
               (let* ((_e152831152841_ _bind152830_)
                      (_E152833152845_ (lambda () '#f))
                      (_E152832152867_
                       (lambda ()
                         (if (gx#stx-pair? _e152831152841_)
                             (let ((_e152834152849_
                                    (gx#syntax-e _e152831152841_)))
                               (let ((_hd152835152852_ (##car _e152834152849_))
                                     (_tl152836152854_
                                      (##cdr _e152834152849_)))
                                 (let ((_hd152857_ _hd152835152852_))
                                   (if (gx#stx-pair? _tl152836152854_)
                                       (let ((_e152837152859_
                                              (gx#syntax-e _tl152836152854_)))
                                         (let ((_hd152838152862_
                                                (##car _e152837152859_))
                                               (_tl152839152864_
                                                (##cdr _e152837152859_)))
                                           (if (gx#stx-null? _tl152839152864_)
                                               (if '#t
                                                   (gx#identifier? _hd152857_)
                                                   (_E152833152845_))
                                               (_E152833152845_))))
                                       (_E152833152845_)))))
                             (_E152833152845_)))))
                 (_E152832152867_)))
             _stx152828_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind152785_)
        (let* ((_e152786152796_ _bind152785_)
               (_E152788152800_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152786152796_)))
               (_E152787152824_
                (lambda ()
                  (if (gx#stx-pair? _e152786152796_)
                      (let ((_e152789152804_ (gx#syntax-e _e152786152796_)))
                        (let ((_hd152790152807_ (##car _e152789152804_))
                              (_tl152791152809_ (##cdr _e152789152804_)))
                          (if (gx#stx-pair? _tl152791152809_)
                              (let ((_e152792152812_
                                     (gx#syntax-e _tl152791152809_)))
                                (let ((_hd152793152815_
                                       (##car _e152792152812_))
                                      (_tl152794152817_
                                       (##cdr _e152792152812_)))
                                  (let ((_expr152820_ _hd152793152815_))
                                    (if (gx#stx-null? _tl152794152817_)
                                        (if '#t
                                            (let ((_g158921_
                                                   (gx#core-expand-expression+1
                                                    _expr152820_)))
                                              (begin
                                                (let ((_g158922_
                                                       (if (##values?
                                                            _g158921_)
                                                           (##vector-length
                                                            _g158921_)
                                                           1)))
                                                  (if (not (##fx= _g158922_ 2))
                                                      (error "Context expects 2 values"
                                                             _g158922_)))
                                                (let ((_e152822_
                                                       (##vector-ref
                                                        _g158921_
                                                        1)))
                                                  _e152822_)))
                                            (_E152788152800_))
                                        (_E152788152800_)))))
                              (_E152788152800_))))
                      (_E152788152800_)))))
          (_E152787152824_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind152730_ _e152731_ _rebind?152732_)
        (let* ((_e152733152743_ _bind152730_)
               (_E152735152747_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152733152743_)))
               (_E152734152769_
                (lambda ()
                  (if (gx#stx-pair? _e152733152743_)
                      (let ((_e152736152751_ (gx#syntax-e _e152733152743_)))
                        (let ((_hd152737152754_ (##car _e152736152751_))
                              (_tl152738152756_ (##cdr _e152736152751_)))
                          (let ((_id152759_ _hd152737152754_))
                            (if (gx#stx-pair? _tl152738152756_)
                                (let ((_e152739152761_
                                       (gx#syntax-e _tl152738152756_)))
                                  (let ((_hd152740152764_
                                         (##car _e152739152761_))
                                        (_tl152741152766_
                                         (##cdr _e152739152761_)))
                                    (if (gx#stx-null? _tl152741152766_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id152759_
                                             _e152731_
                                             _rebind?152732_)
                                            (_E152735152747_))
                                        (_E152735152747_))))
                                (_E152735152747_)))))
                      (_E152735152747_)))))
          (_E152734152769_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind152776_ _e152777_)
        (let ((_rebind?152779_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind152776_
           _e152777_
           _rebind?152779_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g158924_
        (let ((_g158923_ (##length _g158924_)))
          (cond ((##fx= _g158923_ 2)
                 (apply (lambda (_bind152776_ _e152777_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind152776_
                           _e152777_))
                        _g158924_))
                ((##fx= _g158923_ 3)
                 (apply (lambda (_bind152781_ _e152782_ _rebind?152783_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind152781_
                           _e152782_
                           _rebind?152783_))
                        _g158924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g158924_))))))
    (define gx#core-expand-expression%
      (lambda (_stx152688_)
        (let* ((_e152689152699_ _stx152688_)
               (_E152691152703_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152689152699_)))
               (_E152690152725_
                (lambda ()
                  (if (gx#stx-pair? _e152689152699_)
                      (let ((_e152692152707_ (gx#syntax-e _e152689152699_)))
                        (let ((_hd152693152710_ (##car _e152692152707_))
                              (_tl152694152712_ (##cdr _e152692152707_)))
                          (if (gx#stx-pair? _tl152694152712_)
                              (let ((_e152695152715_
                                     (gx#syntax-e _tl152694152712_)))
                                (let ((_hd152696152718_
                                       (##car _e152695152715_))
                                      (_tl152697152720_
                                       (##cdr _e152695152715_)))
                                  (let ((_expr152723_ _hd152696152718_))
                                    (if (gx#stx-null? _tl152697152720_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr152723_)
                                            (_E152691152703_))
                                        (_E152691152703_)))))
                              (_E152691152703_))))
                      (_E152691152703_)))))
          (_E152690152725_))))
    (define gx#core-expand-quote%
      (lambda (_stx152647_)
        (let* ((_e152648152658_ _stx152647_)
               (_E152650152662_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152648152658_)))
               (_E152649152684_
                (lambda ()
                  (if (gx#stx-pair? _e152648152658_)
                      (let ((_e152651152666_ (gx#syntax-e _e152648152658_)))
                        (let ((_hd152652152669_ (##car _e152651152666_))
                              (_tl152653152671_ (##cdr _e152651152666_)))
                          (if (gx#stx-pair? _tl152653152671_)
                              (let ((_e152654152674_
                                     (gx#syntax-e _tl152653152671_)))
                                (let ((_hd152655152677_
                                       (##car _e152654152674_))
                                      (_tl152656152679_
                                       (##cdr _e152654152674_)))
                                  (let ((_e152682_ _hd152655152677_))
                                    (if (gx#stx-null? _tl152656152679_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e152682_)
                                                         '()))
                                             (gx#stx-source _stx152647_))
                                            (_E152650152662_))
                                        (_E152650152662_)))))
                              (_E152650152662_))))
                      (_E152650152662_)))))
          (_E152649152684_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx152606_)
        (let* ((_e152607152617_ _stx152606_)
               (_E152609152621_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152607152617_)))
               (_E152608152643_
                (lambda ()
                  (if (gx#stx-pair? _e152607152617_)
                      (let ((_e152610152625_ (gx#syntax-e _e152607152617_)))
                        (let ((_hd152611152628_ (##car _e152610152625_))
                              (_tl152612152630_ (##cdr _e152610152625_)))
                          (if (gx#stx-pair? _tl152612152630_)
                              (let ((_e152613152633_
                                     (gx#syntax-e _tl152612152630_)))
                                (let ((_hd152614152636_
                                       (##car _e152613152633_))
                                      (_tl152615152638_
                                       (##cdr _e152613152633_)))
                                  (let ((_e152641_ _hd152614152636_))
                                    (if (gx#stx-null? _tl152615152638_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e152641_)
                                                         '()))
                                             (gx#stx-source _stx152606_))
                                            (_E152609152621_))
                                        (_E152609152621_)))))
                              (_E152609152621_))))
                      (_E152609152621_)))))
          (_E152608152643_))))
    (define gx#core-expand-call%
      (lambda (_stx152563_)
        (let* ((_e152564152574_ _stx152563_)
               (_E152566152578_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152564152574_)))
               (_E152565152602_
                (lambda ()
                  (if (gx#stx-pair? _e152564152574_)
                      (let ((_e152567152582_ (gx#syntax-e _e152564152574_)))
                        (let ((_hd152568152585_ (##car _e152567152582_))
                              (_tl152569152587_ (##cdr _e152567152582_)))
                          (if (gx#stx-pair? _tl152569152587_)
                              (let ((_e152570152590_
                                     (gx#syntax-e _tl152569152587_)))
                                (let ((_hd152571152593_
                                       (##car _e152570152590_))
                                      (_tl152572152595_
                                       (##cdr _e152570152590_)))
                                  (let* ((_rator152598_ _hd152571152593_)
                                         (_args152600_ _tl152572152595_))
                                    (if (gx#stx-list? _args152600_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator152598_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args152600_))
                                         (gx#stx-source _stx152563_))
                                        (_E152566152578_)))))
                              (_E152566152578_))))
                      (_E152566152578_)))))
          (_E152565152602_))))
    (define gx#core-expand-if%
      (lambda (_stx152496_)
        (let* ((_e152497152513_ _stx152496_)
               (_E152499152517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152497152513_)))
               (_E152498152559_
                (lambda ()
                  (if (gx#stx-pair? _e152497152513_)
                      (let ((_e152500152521_ (gx#syntax-e _e152497152513_)))
                        (let ((_hd152501152524_ (##car _e152500152521_))
                              (_tl152502152526_ (##cdr _e152500152521_)))
                          (if (gx#stx-pair? _tl152502152526_)
                              (let ((_e152503152529_
                                     (gx#syntax-e _tl152502152526_)))
                                (let ((_hd152504152532_
                                       (##car _e152503152529_))
                                      (_tl152505152534_
                                       (##cdr _e152503152529_)))
                                  (let ((_test152537_ _hd152504152532_))
                                    (if (gx#stx-pair? _tl152505152534_)
                                        (let ((_e152506152539_
                                               (gx#syntax-e _tl152505152534_)))
                                          (let ((_hd152507152542_
                                                 (##car _e152506152539_))
                                                (_tl152508152544_
                                                 (##cdr _e152506152539_)))
                                            (let ((_K152547_ _hd152507152542_))
                                              (if (gx#stx-pair?
                                                   _tl152508152544_)
                                                  (let ((_e152509152549_
                                                         (gx#syntax-e
                                                          _tl152508152544_)))
                                                    (let ((_hd152510152552_
                                                           (##car _e152509152549_))
                                                          (_tl152511152554_
                                                           (##cdr _e152509152549_)))
                                                      (let ((_E152557_
                                                             _hd152510152552_))
                                                        (if (gx#stx-null?
                                                             _tl152511152554_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test152537_)
                                     (cons (gx#core-expand-expression
                                            _K152547_)
                                           (cons (gx#core-expand-expression
                                                  _E152557_)
                                                 '()))))
                         (gx#stx-source _stx152496_))
                        (_E152499152517_))
                    (_E152499152517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152499152517_)))))
                                        (_E152499152517_)))))
                              (_E152499152517_))))
                      (_E152499152517_)))))
          (_E152498152559_))))
    (define gx#core-expand-ref%
      (lambda (_stx152455_)
        (let* ((_e152456152466_ _stx152455_)
               (_E152458152470_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152456152466_)))
               (_E152457152492_
                (lambda ()
                  (if (gx#stx-pair? _e152456152466_)
                      (let ((_e152459152474_ (gx#syntax-e _e152456152466_)))
                        (let ((_hd152460152477_ (##car _e152459152474_))
                              (_tl152461152479_ (##cdr _e152459152474_)))
                          (if (gx#stx-pair? _tl152461152479_)
                              (let ((_e152462152482_
                                     (gx#syntax-e _tl152461152479_)))
                                (let ((_hd152463152485_
                                       (##car _e152462152482_))
                                      (_tl152464152487_
                                       (##cdr _e152462152482_)))
                                  (let ((_id152490_ _hd152463152485_))
                                    (if (gx#stx-null? _tl152464152487_)
                                        (if (gx#identifier? _id152490_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id152490_
                                                          _stx152455_)
                                                         '()))
                                             (gx#stx-source _stx152455_))
                                            (_E152458152470_))
                                        (_E152458152470_)))))
                              (_E152458152470_))))
                      (_E152458152470_)))))
          (_E152457152492_))))
    (define gx#core-expand-setq%
      (lambda (_stx152401_)
        (let* ((_e152402152415_ _stx152401_)
               (_E152404152419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152402152415_)))
               (_E152403152451_
                (lambda ()
                  (if (gx#stx-pair? _e152402152415_)
                      (let ((_e152405152423_ (gx#syntax-e _e152402152415_)))
                        (let ((_hd152406152426_ (##car _e152405152423_))
                              (_tl152407152428_ (##cdr _e152405152423_)))
                          (if (gx#stx-pair? _tl152407152428_)
                              (let ((_e152408152431_
                                     (gx#syntax-e _tl152407152428_)))
                                (let ((_hd152409152434_
                                       (##car _e152408152431_))
                                      (_tl152410152436_
                                       (##cdr _e152408152431_)))
                                  (let ((_id152439_ _hd152409152434_))
                                    (if (gx#stx-pair? _tl152410152436_)
                                        (let ((_e152411152441_
                                               (gx#syntax-e _tl152410152436_)))
                                          (let ((_hd152412152444_
                                                 (##car _e152411152441_))
                                                (_tl152413152446_
                                                 (##cdr _e152411152441_)))
                                            (let ((_expr152449_
                                                   _hd152412152444_))
                                              (if (gx#stx-null?
                                                   _tl152413152446_)
                                                  (if (gx#identifier?
                                                       _id152439_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id152439_
                            _stx152401_)
                           (cons (gx#core-expand-expression _expr152449_)
                                 '())))
               (gx#stx-source _stx152401_))
              (_E152404152419_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152404152419_)))))
                                        (_E152404152419_)))))
                              (_E152404152419_))))
                      (_E152404152419_)))))
          (_E152403152451_))))
    (define gx#macro-expand-extern
      (lambda (_stx152249_)
        (letrec ((_generate152251_
                  (lambda (_body152281_)
                    (let _lp152283_ ((_rest152285_ _body152281_)
                                     (_ns152286_
                                      (gx#core-context-namespace__0))
                                     (_r152287_ '()))
                      (let* ((_e152288152303_ _rest152285_)
                             (_E152301152307_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e152288152303_)))
                             (_E152297152311_
                              (lambda ()
                                (if (gx#stx-null? _e152288152303_)
                                    (if '#t
                                        (reverse _r152287_)
                                        (_E152301152307_))
                                    (_E152301152307_))))
                             (_E152290152368_
                              (lambda ()
                                (if (gx#stx-pair? _e152288152303_)
                                    (let ((_e152298152315_
                                           (gx#syntax-e _e152288152303_)))
                                      (let ((_hd152299152318_
                                             (##car _e152298152315_))
                                            (_tl152300152320_
                                             (##cdr _e152298152315_)))
                                        (let* ((_hd152323_ _hd152299152318_)
                                               (_rest152325_ _tl152300152320_))
                                          (if '#t
                                              (if (gx#identifier? _hd152323_)
                                                  (_lp152283_
                                                   _rest152325_
                                                   _ns152286_
                                                   (cons (cons _hd152323_
                                                               (cons (if _ns152286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd152323_
                                  _ns152286_
                                  '"#"
                                  _hd152323_)
                                 _hd152323_)
                             '()))
                 _r152287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e152326152336_
                                                          _hd152323_)
                                                         (_E152328152340_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e152326152336_)))
                                                         (_E152327152364_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e152326152336_)
                        (let ((_e152329152344_ (gx#syntax-e _e152326152336_)))
                          (let ((_hd152330152347_ (##car _e152329152344_))
                                (_tl152331152349_ (##cdr _e152329152344_)))
                            (let ((_id152352_ _hd152330152347_))
                              (if (gx#stx-pair? _tl152331152349_)
                                  (let ((_e152332152354_
                                         (gx#syntax-e _tl152331152349_)))
                                    (let ((_hd152333152357_
                                           (##car _e152332152354_))
                                          (_tl152334152359_
                                           (##cdr _e152332152354_)))
                                      (let ((_eid152362_ _hd152333152357_))
                                        (if (gx#stx-null? _tl152334152359_)
                                            (if (and (gx#identifier?
                                                      _id152352_)
                                                     (gx#identifier?
                                                      _eid152362_))
                                                (_lp152283_
                                                 _rest152325_
                                                 _ns152286_
                                                 (cons (cons _id152352_
                                                             (cons _eid152362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r152287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152328152340_))
                                            (_E152328152340_)))))
                                  (_E152328152340_)))))
                        (_E152328152340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152327152364_)))
                                              (_E152297152311_)))))
                                    (_E152297152311_))))
                             (_E152289152397_
                              (lambda ()
                                (if (gx#stx-pair? _e152288152303_)
                                    (let ((_e152291152372_
                                           (gx#syntax-e _e152288152303_)))
                                      (let ((_hd152292152375_
                                             (##car _e152291152372_))
                                            (_tl152293152377_
                                             (##cdr _e152291152372_)))
                                        (if (eq? (gx#stx-e _hd152292152375_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl152293152377_)
                                                (let ((_e152294152380_
                                                       (gx#syntax-e
                                                        _tl152293152377_)))
                                                  (let ((_hd152295152383_
                                                         (##car _e152294152380_))
                                                        (_tl152296152385_
                                                         (##cdr _e152294152380_)))
                                                    (let* ((_ns152388_
                                                            _hd152295152383_)
                                                           (_rest152390_
                                                            _tl152296152385_))
                                                      (if '#t
                                                          (let ((_ns152395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns152388_)
                             (symbol->string (gx#stx-e _ns152388_))
                             (if (or (gx#stx-string? _ns152388_)
                                     (gx#stx-false? _ns152388_))
                                 (gx#stx-e _ns152388_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx152249_
                                  _ns152388_)))))
                    (_lp152283_ _rest152390_ _ns152395_ _r152287_))
                  (_E152290152368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152290152368_))
                                            (_E152290152368_))))
                                    (_E152290152368_)))))
                        (_E152289152397_))))))
          (let* ((_e152252152259_ _stx152249_)
                 (_E152254152263_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152252152259_)))
                 (_E152253152277_
                  (lambda ()
                    (if (gx#stx-pair? _e152252152259_)
                        (let ((_e152255152267_ (gx#syntax-e _e152252152259_)))
                          (let ((_hd152256152270_ (##car _e152255152267_))
                                (_tl152257152272_ (##cdr _e152255152267_)))
                            (let ((_body152275_ _tl152257152272_))
                              (if (gx#stx-list? _body152275_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate152251_ _body152275_))
                                  (_E152254152263_)))))
                        (_E152254152263_)))))
            (_E152253152277_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx152195_)
        (let* ((_e152196152209_ _stx152195_)
               (_E152198152213_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152196152209_)))
               (_E152197152245_
                (lambda ()
                  (if (gx#stx-pair? _e152196152209_)
                      (let ((_e152199152217_ (gx#syntax-e _e152196152209_)))
                        (let ((_hd152200152220_ (##car _e152199152217_))
                              (_tl152201152222_ (##cdr _e152199152217_)))
                          (if (gx#stx-pair? _tl152201152222_)
                              (let ((_e152202152225_
                                     (gx#syntax-e _tl152201152222_)))
                                (let ((_hd152203152228_
                                       (##car _e152202152225_))
                                      (_tl152204152230_
                                       (##cdr _e152202152225_)))
                                  (let ((_hd152233_ _hd152203152228_))
                                    (if (gx#stx-pair? _tl152204152230_)
                                        (let ((_e152205152235_
                                               (gx#syntax-e _tl152204152230_)))
                                          (let ((_hd152206152238_
                                                 (##car _e152205152235_))
                                                (_tl152207152240_
                                                 (##cdr _e152205152235_)))
                                            (let ((_expr152243_
                                                   _hd152206152238_))
                                              (if (gx#stx-null?
                                                   _tl152207152240_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd152233_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd152233_)
                          (cons _expr152243_ '())))
              (_E152198152213_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152198152213_)))))
                                        (_E152198152213_)))))
                              (_E152198152213_))))
                      (_E152198152213_)))))
          (_E152197152245_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx152141_)
        (let* ((_e152142152155_ _stx152141_)
               (_E152144152159_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152142152155_)))
               (_E152143152191_
                (lambda ()
                  (if (gx#stx-pair? _e152142152155_)
                      (let ((_e152145152163_ (gx#syntax-e _e152142152155_)))
                        (let ((_hd152146152166_ (##car _e152145152163_))
                              (_tl152147152168_ (##cdr _e152145152163_)))
                          (if (gx#stx-pair? _tl152147152168_)
                              (let ((_e152148152171_
                                     (gx#syntax-e _tl152147152168_)))
                                (let ((_hd152149152174_
                                       (##car _e152148152171_))
                                      (_tl152150152176_
                                       (##cdr _e152148152171_)))
                                  (let ((_hd152179_ _hd152149152174_))
                                    (if (gx#stx-pair? _tl152150152176_)
                                        (let ((_e152151152181_
                                               (gx#syntax-e _tl152150152176_)))
                                          (let ((_hd152152152184_
                                                 (##car _e152151152181_))
                                                (_tl152153152186_
                                                 (##cdr _e152151152181_)))
                                            (let ((_expr152189_
                                                   _hd152152152184_))
                                              (if (gx#stx-null?
                                                   _tl152153152186_)
                                                  (if (gx#identifier?
                                                       _hd152179_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd152179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr152189_ '())))
              (_E152144152159_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152144152159_)))))
                                        (_E152144152159_)))))
                              (_E152144152159_))))
                      (_E152144152159_)))))
          (_E152143152191_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx152087_)
        (let* ((_e152088152101_ _stx152087_)
               (_E152090152105_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152088152101_)))
               (_E152089152137_
                (lambda ()
                  (if (gx#stx-pair? _e152088152101_)
                      (let ((_e152091152109_ (gx#syntax-e _e152088152101_)))
                        (let ((_hd152092152112_ (##car _e152091152109_))
                              (_tl152093152114_ (##cdr _e152091152109_)))
                          (if (gx#stx-pair? _tl152093152114_)
                              (let ((_e152094152117_
                                     (gx#syntax-e _tl152093152114_)))
                                (let ((_hd152095152120_
                                       (##car _e152094152117_))
                                      (_tl152096152122_
                                       (##cdr _e152094152117_)))
                                  (let ((_id152125_ _hd152095152120_))
                                    (if (gx#stx-pair? _tl152096152122_)
                                        (let ((_e152097152127_
                                               (gx#syntax-e _tl152096152122_)))
                                          (let ((_hd152098152130_
                                                 (##car _e152097152127_))
                                                (_tl152099152132_
                                                 (##cdr _e152097152127_)))
                                            (let ((_alias-id152135_
                                                   _hd152098152130_))
                                              (if (gx#stx-null?
                                                   _tl152099152132_)
                                                  (if (and (gx#identifier?
                                                            _id152125_)
                                                           (gx#identifier?
                                                            _alias-id152135_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id152125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id152135_ '())))
              (_E152090152105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152090152105_)))))
                                        (_E152090152105_)))))
                              (_E152090152105_))))
                      (_E152090152105_)))))
          (_E152089152137_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx152044_)
        (let* ((_e152045152055_ _stx152044_)
               (_E152047152059_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152045152055_)))
               (_E152046152083_
                (lambda ()
                  (if (gx#stx-pair? _e152045152055_)
                      (let ((_e152048152063_ (gx#syntax-e _e152045152055_)))
                        (let ((_hd152049152066_ (##car _e152048152063_))
                              (_tl152050152068_ (##cdr _e152048152063_)))
                          (if (gx#stx-pair? _tl152050152068_)
                              (let ((_e152051152071_
                                     (gx#syntax-e _tl152050152068_)))
                                (let ((_hd152052152074_
                                       (##car _e152051152071_))
                                      (_tl152053152076_
                                       (##cdr _e152051152071_)))
                                  (let* ((_hd152079_ _hd152052152074_)
                                         (_body152081_ _tl152053152076_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd152079_)
                                             (gx#stx-list? _body152081_)
                                             (not (gx#stx-null? _body152081_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd152079_)
                                         _body152081_)
                                        (_E152047152059_)))))
                              (_E152047152059_))))
                      (_E152047152059_)))))
          (_E152046152083_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx151980_)
        (letrec ((_generate151982_
                  (lambda (_clause152012_)
                    (let* ((_e152013152020_ _clause152012_)
                           (_E152015152024_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx151980_
                               _clause152012_)))
                           (_E152014152040_
                            (lambda ()
                              (if (gx#stx-pair? _e152013152020_)
                                  (let ((_e152016152028_
                                         (gx#syntax-e _e152013152020_)))
                                    (let ((_hd152017152031_
                                           (##car _e152016152028_))
                                          (_tl152018152033_
                                           (##cdr _e152016152028_)))
                                      (let* ((_hd152036_ _hd152017152031_)
                                             (_body152038_ _tl152018152033_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd152036_)
                                                 (gx#stx-list? _body152038_)
                                                 (not (gx#stx-null?
                                                       _body152038_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd152036_)
                                                   _body152038_)
                                             (gx#stx-source _clause152012_))
                                            (_E152015152024_)))))
                                  (_E152015152024_)))))
                      (_E152014152040_)))))
          (let* ((_e151983151990_ _stx151980_)
                 (_E151985151994_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151983151990_)))
                 (_E151984152008_
                  (lambda ()
                    (if (gx#stx-pair? _e151983151990_)
                        (let ((_e151986151998_ (gx#syntax-e _e151983151990_)))
                          (let ((_hd151987152001_ (##car _e151986151998_))
                                (_tl151988152003_ (##cdr _e151986151998_)))
                            (let ((_clauses152006_ _tl151988152003_))
                              (if (gx#stx-list? _clauses152006_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate151982_
                                    _clauses152006_))
                                  (_E151985151994_)))))
                        (_E151985151994_)))))
            (_E151984152008_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx151881_ _form151882_)
        (letrec ((_generate151884_
                  (lambda (_bind151927_)
                    (let* ((_e151928151938_ _bind151927_)
                           (_E151930151942_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx151881_
                               _bind151927_)))
                           (_E151929151966_
                            (lambda ()
                              (if (gx#stx-pair? _e151928151938_)
                                  (let ((_e151931151946_
                                         (gx#syntax-e _e151928151938_)))
                                    (let ((_hd151932151949_
                                           (##car _e151931151946_))
                                          (_tl151933151951_
                                           (##cdr _e151931151946_)))
                                      (let ((_ids151954_ _hd151932151949_))
                                        (if (gx#stx-pair? _tl151933151951_)
                                            (let ((_e151934151956_
                                                   (gx#syntax-e
                                                    _tl151933151951_)))
                                              (let ((_hd151935151959_
                                                     (##car _e151934151956_))
                                                    (_tl151936151961_
                                                     (##cdr _e151934151956_)))
                                                (let ((_expr151964_
                                                       _hd151935151959_))
                                                  (if (gx#stx-null?
                                                       _tl151936151961_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids151954_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids151954_)
                        (cons _expr151964_ '()))
                  (_E151930151942_))
              (_E151930151942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E151930151942_)))))
                                  (_E151930151942_)))))
                      (_E151929151966_)))))
          (let* ((_e151885151895_ _stx151881_)
                 (_E151887151899_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151885151895_)))
                 (_E151886151923_
                  (lambda ()
                    (if (gx#stx-pair? _e151885151895_)
                        (let ((_e151888151903_ (gx#syntax-e _e151885151895_)))
                          (let ((_hd151889151906_ (##car _e151888151903_))
                                (_tl151890151908_ (##cdr _e151888151903_)))
                            (if (gx#stx-pair? _tl151890151908_)
                                (let ((_e151891151911_
                                       (gx#syntax-e _tl151890151908_)))
                                  (let ((_hd151892151914_
                                         (##car _e151891151911_))
                                        (_tl151893151916_
                                         (##cdr _e151891151911_)))
                                    (let* ((_hd151919_ _hd151892151914_)
                                           (_body151921_ _tl151893151916_))
                                      (if (and (gx#stx-list? _hd151919_)
                                               (gx#stx-list? _body151921_)
                                               (not (gx#stx-null?
                                                     _body151921_)))
                                          (gx#core-cons*
                                           _form151882_
                                           (gx#stx-map1
                                            _generate151884_
                                            _hd151919_)
                                           _body151921_)
                                          (_E151887151899_)))))
                                (_E151887151899_))))
                        (_E151887151899_)))))
            (_E151886151923_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx151973_)
        (let ((_form151975_ '%#let-values))
          (gx#macro-expand-let-values__% _stx151973_ _form151975_))))
    (define gx#macro-expand-let-values
      (lambda _g158926_
        (let ((_g158925_ (##length _g158926_)))
          (cond ((##fx= _g158925_ 1)
                 (apply (lambda (_stx151973_)
                          (gx#macro-expand-let-values__0 _stx151973_))
                        _g158926_))
                ((##fx= _g158925_ 2)
                 (apply (lambda (_stx151977_ _form151978_)
                          (gx#macro-expand-let-values__%
                           _stx151977_
                           _form151978_))
                        _g158926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g158926_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx151878_)
        (gx#macro-expand-let-values__% _stx151878_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx151876_)
        (gx#macro-expand-let-values__% _stx151876_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx151767_)
        (let* ((_e151768151794_ _stx151767_)
               (_E151780151798_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151768151794_)))
               (_E151770151840_
                (lambda ()
                  (if (gx#stx-pair? _e151768151794_)
                      (let ((_e151781151802_ (gx#syntax-e _e151768151794_)))
                        (let ((_hd151782151805_ (##car _e151781151802_))
                              (_tl151783151807_ (##cdr _e151781151802_)))
                          (if (gx#stx-pair? _tl151783151807_)
                              (let ((_e151784151810_
                                     (gx#syntax-e _tl151783151807_)))
                                (let ((_hd151785151813_
                                       (##car _e151784151810_))
                                      (_tl151786151815_
                                       (##cdr _e151784151810_)))
                                  (let ((_test151818_ _hd151785151813_))
                                    (if (gx#stx-pair? _tl151786151815_)
                                        (let ((_e151787151820_
                                               (gx#syntax-e _tl151786151815_)))
                                          (let ((_hd151788151823_
                                                 (##car _e151787151820_))
                                                (_tl151789151825_
                                                 (##cdr _e151787151820_)))
                                            (let ((_K151828_ _hd151788151823_))
                                              (if (gx#stx-pair?
                                                   _tl151789151825_)
                                                  (let ((_e151790151830_
                                                         (gx#syntax-e
                                                          _tl151789151825_)))
                                                    (let ((_hd151791151833_
                                                           (##car _e151790151830_))
                                                          (_tl151792151835_
                                                           (##cdr _e151790151830_)))
                                                      (let ((_E151838_
                                                             _hd151791151833_))
                                                        (if (gx#stx-null?
                                                             _tl151792151835_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test151818_
                         _K151828_
                         _E151838_)
                        (_E151780151798_))
                    (_E151780151798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151780151798_)))))
                                        (_E151780151798_)))))
                              (_E151780151798_))))
                      (_E151780151798_))))
               (_E151769151872_
                (lambda ()
                  (if (gx#stx-pair? _e151768151794_)
                      (let ((_e151771151844_ (gx#syntax-e _e151768151794_)))
                        (let ((_hd151772151847_ (##car _e151771151844_))
                              (_tl151773151849_ (##cdr _e151771151844_)))
                          (if (gx#stx-pair? _tl151773151849_)
                              (let ((_e151774151852_
                                     (gx#syntax-e _tl151773151849_)))
                                (let ((_hd151775151855_
                                       (##car _e151774151852_))
                                      (_tl151776151857_
                                       (##cdr _e151774151852_)))
                                  (let ((_test151860_ _hd151775151855_))
                                    (if (gx#stx-pair? _tl151776151857_)
                                        (let ((_e151777151862_
                                               (gx#syntax-e _tl151776151857_)))
                                          (let ((_hd151778151865_
                                                 (##car _e151777151862_))
                                                (_tl151779151867_
                                                 (##cdr _e151777151862_)))
                                            (let ((_K151870_ _hd151778151865_))
                                              (if (gx#stx-null?
                                                   _tl151779151867_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test151860_
                                                       _K151870_
                                                       '#!void)
                                                      (_E151770151840_))
                                                  (_E151770151840_)))))
                                        (_E151770151840_)))))
                              (_E151770151840_))))
                      (_E151770151840_)))))
          (_E151769151872_))))
    (define gx#free-identifier=?
      (lambda (_xid151755_ _yid151756_)
        (let ((_xe151758_ (gx#resolve-identifier__0 _xid151755_))
              (_ye151759_ (gx#resolve-identifier__0 _yid151756_)))
          (if (and _xe151758_ _ye151759_)
              (let ((_$e151761_ (eq? _xe151758_ _ye151759_)))
                (if _$e151761_
                    _$e151761_
                    (if (##structure-instance-of? _xe151758_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye151759_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe151758_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye151759_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe151758_ _ye151759_)
                  '#f
                  (gx#stx-eq? _xid151755_ _yid151756_))))))
    (define gx#bound-identifier=?
      (lambda (_xid151739_ _yid151740_)
        (letrec ((_context151742_
                  (lambda (_e151753_)
                    (if (##structure-direct-instance-of?
                         _e151753_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e151753_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks151743_
                  (lambda (_e151751_)
                    (if (symbol? _e151751_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e151751_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e151751_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e151751_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap151744_
                  (lambda (_e151749_)
                    (if (symbol? _e151749_)
                        _e151749_
                        (gx#syntax-local-unwrap _e151749_)))))
          (let ((_x151746_ (_unwrap151744_ _xid151739_))
                (_y151747_ (_unwrap151744_ _yid151740_)))
            (if (gx#stx-eq? _x151746_ _y151747_)
                (if (eq? (_context151742_ _x151746_)
                         (_context151742_ _y151747_))
                    (equal? (_marks151743_ _x151746_)
                            (_marks151743_ _y151747_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx151737_)
        (if (gx#identifier? _stx151737_)
            (gx#core-identifier=? _stx151737_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx151735_)
        (if (gx#identifier? _stx151735_)
            (gx#core-identifier=? _stx151735_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x151733_)
        (if (gx#identifier? _x151733_)
            (if (not (gx#underscore? _x151733_)) _x151733_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx151679_ _where151680_)
        (let _lp151682_ ((_rest151684_ (gx#syntax->list _stx151679_)))
          (let* ((_rest151685151693_ _rest151684_)
                 (_else151687151701_ (lambda () '#t))
                 (_K151689151711_
                  (lambda (_rest151704_ _hd151705_)
                    (if (not (gx#identifier? _hd151705_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where151680_
                         _hd151705_)
                        (if (find (lambda (_g151706151708_)
                                    (gx#bound-identifier=?
                                     _g151706151708_
                                     _hd151705_))
                                  _rest151704_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where151680_
                             _hd151705_)
                            (_lp151682_ _rest151704_))))))
            (if (##pair? _rest151685151693_)
                (let ((_hd151690151714_ (##car _rest151685151693_))
                      (_tl151691151716_ (##cdr _rest151685151693_)))
                  (let* ((_hd151719_ _hd151690151714_)
                         (_rest151721_ _tl151691151716_))
                    (_K151689151711_ _rest151721_ _hd151719_)))
                (_else151687151701_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx151726_)
        (let ((_where151728_ _stx151726_))
          (gx#check-duplicate-identifiers__% _stx151726_ _where151728_))))
    (define gx#check-duplicate-identifiers
      (lambda _g158928_
        (let ((_g158927_ (##length _g158928_)))
          (cond ((##fx= _g158927_ 1)
                 (apply (lambda (_stx151726_)
                          (gx#check-duplicate-identifiers__0 _stx151726_))
                        _g158928_))
                ((##fx= _g158927_ 2)
                 (apply (lambda (_stx151730_ _where151731_)
                          (gx#check-duplicate-identifiers__%
                           _stx151730_
                           _where151731_))
                        _g158928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g158928_))))))
    (define gx#core-bind-values?
      (lambda (_stx151671_)
        (gx#stx-andmap
         (lambda (_x151673_)
           (let ((_$e151675_ (gx#identifier? _x151673_)))
             (if _$e151675_ _$e151675_ (gx#stx-false? _x151673_))))
         _stx151671_)))
    (define gx#core-bind-values!__%
      (lambda (_stx151635_ _rebind?151636_ _phi151637_ _ctx151638_)
        (gx#stx-for-each1
         (lambda (_id151640_)
           (if (gx#identifier? _id151640_)
               (gx#core-bind-runtime!__%
                _id151640_
                _rebind?151636_
                _phi151637_
                _ctx151638_)
               '#!void))
         _stx151635_)))
    (define gx#core-bind-values!__0
      (lambda (_stx151645_)
        (let* ((_rebind?151647_ '#f)
               (_phi151649_ (gx#current-expander-phi))
               (_ctx151651_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151645_
           _rebind?151647_
           _phi151649_
           _ctx151651_))))
    (define gx#core-bind-values!__1
      (lambda (_stx151653_ _rebind?151654_)
        (let* ((_phi151656_ (gx#current-expander-phi))
               (_ctx151658_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151653_
           _rebind?151654_
           _phi151656_
           _ctx151658_))))
    (define gx#core-bind-values!__2
      (lambda (_stx151660_ _rebind?151661_ _phi151662_)
        (let ((_ctx151664_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151660_
           _rebind?151661_
           _phi151662_
           _ctx151664_))))
    (define gx#core-bind-values!
      (lambda _g158930_
        (let ((_g158929_ (##length _g158930_)))
          (cond ((##fx= _g158929_ 1)
                 (apply (lambda (_stx151645_)
                          (gx#core-bind-values!__0 _stx151645_))
                        _g158930_))
                ((##fx= _g158929_ 2)
                 (apply (lambda (_stx151653_ _rebind?151654_)
                          (gx#core-bind-values!__1
                           _stx151653_
                           _rebind?151654_))
                        _g158930_))
                ((##fx= _g158929_ 3)
                 (apply (lambda (_stx151660_ _rebind?151661_ _phi151662_)
                          (gx#core-bind-values!__2
                           _stx151660_
                           _rebind?151661_
                           _phi151662_))
                        _g158930_))
                ((##fx= _g158929_ 4)
                 (apply (lambda (_stx151666_
                                 _rebind?151667_
                                 _phi151668_
                                 _ctx151669_)
                          (gx#core-bind-values!__%
                           _stx151666_
                           _rebind?151667_
                           _phi151668_
                           _ctx151669_))
                        _g158930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g158930_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx151630_)
        (gx#stx-map1
         (lambda (_x151632_)
           (if (gx#identifier? _x151632_)
               (gx#core-quote-syntax__0 _x151632_)
               '#f))
         _stx151630_)))
    (define gx#core-runtime-ref?
      (lambda (_stx151623_)
        (if (gx#identifier? _stx151623_)
            (let* ((_bind151625_ (gx#resolve-identifier__0 _stx151623_))
                   (_$e151627_ (not _bind151625_)))
              (if _$e151627_
                  _$e151627_
                  (##structure-instance-of?
                   _bind151625_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id151615_ _form151616_)
        (let ((_bind151618_ (gx#resolve-identifier__0 _id151615_)))
          (if (##structure-instance-of? _bind151618_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id151615_)
              (if (not _bind151618_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id151615_)))
                      (gx#core-quote-syntax__0 _id151615_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form151616_
                       _id151615_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form151616_
                   _id151615_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id151574_ _rebind?151575_ _phi151576_ _ctx151577_)
        (let* ((_key151579_ (gx#core-identifier-key _id151574_))
               (_eid151581_
                (gx#make-binding-id__%
                 _key151579_
                 '#f
                 _phi151576_
                 _ctx151577_))
               (_bind151583_
                (if (##structure-instance-of?
                     _ctx151577_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151581_
                     _key151579_
                     _phi151576_
                     _ctx151577_)
                    (if (##structure-instance-of?
                         _ctx151577_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151581_
                         _key151579_
                         _phi151576_)
                        (if (##structure-instance-of?
                             _ctx151577_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid151581_
                             _key151579_
                             _phi151576_)
                            (##structure
                             gx#runtime-binding::t
                             _eid151581_
                             _key151579_
                             _phi151576_))))))
          (gx#bind-identifier!__%
           _id151574_
           _bind151583_
           _rebind?151575_
           _phi151576_
           _ctx151577_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id151589_)
        (let* ((_rebind?151591_ '#f)
               (_phi151593_ (gx#current-expander-phi))
               (_ctx151595_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151589_
           _rebind?151591_
           _phi151593_
           _ctx151595_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id151597_ _rebind?151598_)
        (let* ((_phi151600_ (gx#current-expander-phi))
               (_ctx151602_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151597_
           _rebind?151598_
           _phi151600_
           _ctx151602_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id151604_ _rebind?151605_ _phi151606_)
        (let ((_ctx151608_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151604_
           _rebind?151605_
           _phi151606_
           _ctx151608_))))
    (define gx#core-bind-runtime!
      (lambda _g158932_
        (let ((_g158931_ (##length _g158932_)))
          (cond ((##fx= _g158931_ 1)
                 (apply (lambda (_id151589_)
                          (gx#core-bind-runtime!__0 _id151589_))
                        _g158932_))
                ((##fx= _g158931_ 2)
                 (apply (lambda (_id151597_ _rebind?151598_)
                          (gx#core-bind-runtime!__1
                           _id151597_
                           _rebind?151598_))
                        _g158932_))
                ((##fx= _g158931_ 3)
                 (apply (lambda (_id151604_ _rebind?151605_ _phi151606_)
                          (gx#core-bind-runtime!__2
                           _id151604_
                           _rebind?151605_
                           _phi151606_))
                        _g158932_))
                ((##fx= _g158931_ 4)
                 (apply (lambda (_id151610_
                                 _rebind?151611_
                                 _phi151612_
                                 _ctx151613_)
                          (gx#core-bind-runtime!__%
                           _id151610_
                           _rebind?151611_
                           _phi151612_
                           _ctx151613_))
                        _g158932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g158932_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id151529_ _eid151530_ _rebind?151531_ _phi151532_ _ctx151533_)
        (let* ((_key151535_ (gx#core-identifier-key _id151529_))
               (_bind151537_
                (if (##structure-instance-of?
                     _ctx151533_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151530_
                     _key151535_
                     _phi151532_
                     _ctx151533_)
                    (if (##structure-instance-of?
                         _ctx151533_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151530_
                         _key151535_
                         _phi151532_)
                        (##structure
                         gx#runtime-binding::t
                         _eid151530_
                         _key151535_
                         _phi151532_)))))
          (gx#bind-identifier!__%
           _id151529_
           _bind151537_
           _rebind?151531_
           _phi151532_
           _ctx151533_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id151543_ _eid151544_)
        (let* ((_rebind?151546_ '#f)
               (_phi151548_ (gx#current-expander-phi))
               (_ctx151550_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151543_
           _eid151544_
           _rebind?151546_
           _phi151548_
           _ctx151550_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id151552_ _eid151553_ _rebind?151554_)
        (let* ((_phi151556_ (gx#current-expander-phi))
               (_ctx151558_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151552_
           _eid151553_
           _rebind?151554_
           _phi151556_
           _ctx151558_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id151560_ _eid151561_ _rebind?151562_ _phi151563_)
        (let ((_ctx151565_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151560_
           _eid151561_
           _rebind?151562_
           _phi151563_
           _ctx151565_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g158934_
        (let ((_g158933_ (##length _g158934_)))
          (cond ((##fx= _g158933_ 2)
                 (apply (lambda (_id151543_ _eid151544_)
                          (gx#core-bind-runtime-reference!__0
                           _id151543_
                           _eid151544_))
                        _g158934_))
                ((##fx= _g158933_ 3)
                 (apply (lambda (_id151552_ _eid151553_ _rebind?151554_)
                          (gx#core-bind-runtime-reference!__1
                           _id151552_
                           _eid151553_
                           _rebind?151554_))
                        _g158934_))
                ((##fx= _g158933_ 4)
                 (apply (lambda (_id151560_
                                 _eid151561_
                                 _rebind?151562_
                                 _phi151563_)
                          (gx#core-bind-runtime-reference!__2
                           _id151560_
                           _eid151561_
                           _rebind?151562_
                           _phi151563_))
                        _g158934_))
                ((##fx= _g158933_ 5)
                 (apply (lambda (_id151567_
                                 _eid151568_
                                 _rebind?151569_
                                 _phi151570_
                                 _ctx151571_)
                          (gx#core-bind-runtime-reference!__%
                           _id151567_
                           _eid151568_
                           _rebind?151569_
                           _phi151570_
                           _ctx151571_))
                        _g158934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g158934_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id151489_ _eid151490_ _rebind?151491_ _phi151492_ _ctx151493_)
        (gx#bind-identifier!__%
         _id151489_
         (##structure
          gx#extern-binding::t
          _eid151490_
          (gx#core-identifier-key _id151489_)
          _phi151492_)
         _rebind?151491_
         _phi151492_
         _ctx151493_)))
    (define gx#core-bind-extern!__0
      (lambda (_id151498_ _eid151499_)
        (let* ((_rebind?151501_ '#f)
               (_phi151503_ (gx#current-expander-phi))
               (_ctx151505_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151498_
           _eid151499_
           _rebind?151501_
           _phi151503_
           _ctx151505_))))
    (define gx#core-bind-extern!__1
      (lambda (_id151507_ _eid151508_ _rebind?151509_)
        (let* ((_phi151511_ (gx#current-expander-phi))
               (_ctx151513_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151507_
           _eid151508_
           _rebind?151509_
           _phi151511_
           _ctx151513_))))
    (define gx#core-bind-extern!__2
      (lambda (_id151515_ _eid151516_ _rebind?151517_ _phi151518_)
        (let ((_ctx151520_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151515_
           _eid151516_
           _rebind?151517_
           _phi151518_
           _ctx151520_))))
    (define gx#core-bind-extern!
      (lambda _g158936_
        (let ((_g158935_ (##length _g158936_)))
          (cond ((##fx= _g158935_ 2)
                 (apply (lambda (_id151498_ _eid151499_)
                          (gx#core-bind-extern!__0 _id151498_ _eid151499_))
                        _g158936_))
                ((##fx= _g158935_ 3)
                 (apply (lambda (_id151507_ _eid151508_ _rebind?151509_)
                          (gx#core-bind-extern!__1
                           _id151507_
                           _eid151508_
                           _rebind?151509_))
                        _g158936_))
                ((##fx= _g158935_ 4)
                 (apply (lambda (_id151515_
                                 _eid151516_
                                 _rebind?151517_
                                 _phi151518_)
                          (gx#core-bind-extern!__2
                           _id151515_
                           _eid151516_
                           _rebind?151517_
                           _phi151518_))
                        _g158936_))
                ((##fx= _g158935_ 5)
                 (apply (lambda (_id151522_
                                 _eid151523_
                                 _rebind?151524_
                                 _phi151525_
                                 _ctx151526_)
                          (gx#core-bind-extern!__%
                           _id151522_
                           _eid151523_
                           _rebind?151524_
                           _phi151525_
                           _ctx151526_))
                        _g158936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g158936_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id151443_ _e151444_ _rebind?151445_ _phi151446_ _ctx151447_)
        (gx#bind-identifier!__%
         _id151443_
         (let ((_key151452_ (gx#core-identifier-key _id151443_))
               (_e151453_
                (if (or (##structure-instance-of? _e151444_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e151444_
                         'gx#expander-context::t))
                    _e151444_
                    (##structure
                     gx#user-expander::t
                     _e151444_
                     _ctx151447_
                     _phi151446_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key151452_ '#t _phi151446_ _ctx151447_)
            _key151452_
            _phi151446_
            _e151453_))
         _rebind?151445_
         _phi151446_
         _ctx151447_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id151458_ _e151459_)
        (let* ((_rebind?151461_ '#f)
               (_phi151463_ (gx#current-expander-phi))
               (_ctx151465_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151458_
           _e151459_
           _rebind?151461_
           _phi151463_
           _ctx151465_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id151467_ _e151468_ _rebind?151469_)
        (let* ((_phi151471_ (gx#current-expander-phi))
               (_ctx151473_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151467_
           _e151468_
           _rebind?151469_
           _phi151471_
           _ctx151473_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id151475_ _e151476_ _rebind?151477_ _phi151478_)
        (let ((_ctx151480_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151475_
           _e151476_
           _rebind?151477_
           _phi151478_
           _ctx151480_))))
    (define gx#core-bind-syntax!
      (lambda _g158938_
        (let ((_g158937_ (##length _g158938_)))
          (cond ((##fx= _g158937_ 2)
                 (apply (lambda (_id151458_ _e151459_)
                          (gx#core-bind-syntax!__0 _id151458_ _e151459_))
                        _g158938_))
                ((##fx= _g158937_ 3)
                 (apply (lambda (_id151467_ _e151468_ _rebind?151469_)
                          (gx#core-bind-syntax!__1
                           _id151467_
                           _e151468_
                           _rebind?151469_))
                        _g158938_))
                ((##fx= _g158937_ 4)
                 (apply (lambda (_id151475_
                                 _e151476_
                                 _rebind?151477_
                                 _phi151478_)
                          (gx#core-bind-syntax!__2
                           _id151475_
                           _e151476_
                           _rebind?151477_
                           _phi151478_))
                        _g158938_))
                ((##fx= _g158937_ 5)
                 (apply (lambda (_id151482_
                                 _e151483_
                                 _rebind?151484_
                                 _phi151485_
                                 _ctx151486_)
                          (gx#core-bind-syntax!__%
                           _id151482_
                           _e151483_
                           _rebind?151484_
                           _phi151485_
                           _ctx151486_))
                        _g158938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g158938_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id151426_ _e151427_ _rebind?151428_)
        (gx#core-bind-syntax!__%
         _id151426_
         _e151427_
         _rebind?151428_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id151433_ _e151434_)
        (let ((_rebind?151436_ '#f))
          (gx#core-bind-root-syntax!__%
           _id151433_
           _e151434_
           _rebind?151436_))))
    (define gx#core-bind-root-syntax!
      (lambda _g158940_
        (let ((_g158939_ (##length _g158940_)))
          (cond ((##fx= _g158939_ 2)
                 (apply (lambda (_id151433_ _e151434_)
                          (gx#core-bind-root-syntax!__0 _id151433_ _e151434_))
                        _g158940_))
                ((##fx= _g158939_ 3)
                 (apply (lambda (_id151438_ _e151439_ _rebind?151440_)
                          (gx#core-bind-root-syntax!__%
                           _id151438_
                           _e151439_
                           _rebind?151440_))
                        _g158940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g158940_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id151384_
               _alias-id151385_
               _rebind?151386_
               _phi151387_
               _ctx151388_)
        (gx#bind-identifier!__%
         _id151384_
         (let ((_key151390_ (gx#core-identifier-key _id151384_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key151390_ '#t _phi151387_ _ctx151388_)
            _key151390_
            _phi151387_
            _alias-id151385_))
         _rebind?151386_
         _phi151387_
         _ctx151388_)))
    (define gx#core-bind-alias!__0
      (lambda (_id151395_ _alias-id151396_)
        (let* ((_rebind?151398_ '#f)
               (_phi151400_ (gx#current-expander-phi))
               (_ctx151402_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151395_
           _alias-id151396_
           _rebind?151398_
           _phi151400_
           _ctx151402_))))
    (define gx#core-bind-alias!__1
      (lambda (_id151404_ _alias-id151405_ _rebind?151406_)
        (let* ((_phi151408_ (gx#current-expander-phi))
               (_ctx151410_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151404_
           _alias-id151405_
           _rebind?151406_
           _phi151408_
           _ctx151410_))))
    (define gx#core-bind-alias!__2
      (lambda (_id151412_ _alias-id151413_ _rebind?151414_ _phi151415_)
        (let ((_ctx151417_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151412_
           _alias-id151413_
           _rebind?151414_
           _phi151415_
           _ctx151417_))))
    (define gx#core-bind-alias!
      (lambda _g158942_
        (let ((_g158941_ (##length _g158942_)))
          (cond ((##fx= _g158941_ 2)
                 (apply (lambda (_id151395_ _alias-id151396_)
                          (gx#core-bind-alias!__0 _id151395_ _alias-id151396_))
                        _g158942_))
                ((##fx= _g158941_ 3)
                 (apply (lambda (_id151404_ _alias-id151405_ _rebind?151406_)
                          (gx#core-bind-alias!__1
                           _id151404_
                           _alias-id151405_
                           _rebind?151406_))
                        _g158942_))
                ((##fx= _g158941_ 4)
                 (apply (lambda (_id151412_
                                 _alias-id151413_
                                 _rebind?151414_
                                 _phi151415_)
                          (gx#core-bind-alias!__2
                           _id151412_
                           _alias-id151413_
                           _rebind?151414_
                           _phi151415_))
                        _g158942_))
                ((##fx= _g158941_ 5)
                 (apply (lambda (_id151419_
                                 _alias-id151420_
                                 _rebind?151421_
                                 _phi151422_
                                 _ctx151423_)
                          (gx#core-bind-alias!__%
                           _id151419_
                           _alias-id151420_
                           _rebind?151421_
                           _phi151422_
                           _ctx151423_))
                        _g158942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g158942_))))))
    (define gx#make-binding-id__%
      (lambda (_key151341_ _syntax?151342_ _phi151343_ _ctx151344_)
        (if (uninterned-symbol? _key151341_)
            (gensym 'L)
            (if (pair? _key151341_)
                (gensym (car _key151341_))
                (if (##structure-instance-of? _ctx151344_ 'gx#top-context::t)
                    (let ((_ns151346_
                           (gx#core-context-namespace__% _ctx151344_)))
                      (if (and (fxzero? _phi151343_) (not _syntax?151342_))
                          (if _ns151346_
                              (make-symbol__1 _ns151346_ '"#" _key151341_)
                              _key151341_)
                          (if _syntax?151342_
                              (make-symbol__1
                               (let ((_$e151348_ _ns151346_))
                                 (if _$e151348_ _$e151348_ '""))
                               '"[:"
                               (number->string _phi151343_)
                               '":]#"
                               _key151341_)
                              (make-symbol__1
                               (let ((_$e151351_ _ns151346_))
                                 (if _$e151351_ _$e151351_ '""))
                               '"["
                               (number->string _phi151343_)
                               '"]#"
                               _key151341_))))
                    (gensym _key151341_))))))
    (define gx#make-binding-id__0
      (lambda (_key151357_)
        (let* ((_syntax?151359_ '#f)
               (_phi151361_ (gx#current-expander-phi))
               (_ctx151363_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151357_
           _syntax?151359_
           _phi151361_
           _ctx151363_))))
    (define gx#make-binding-id__1
      (lambda (_key151365_ _syntax?151366_)
        (let* ((_phi151368_ (gx#current-expander-phi))
               (_ctx151370_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151365_
           _syntax?151366_
           _phi151368_
           _ctx151370_))))
    (define gx#make-binding-id__2
      (lambda (_key151372_ _syntax?151373_ _phi151374_)
        (let ((_ctx151376_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151372_
           _syntax?151373_
           _phi151374_
           _ctx151376_))))
    (define gx#make-binding-id
      (lambda _g158944_
        (let ((_g158943_ (##length _g158944_)))
          (cond ((##fx= _g158943_ 1)
                 (apply (lambda (_key151357_)
                          (gx#make-binding-id__0 _key151357_))
                        _g158944_))
                ((##fx= _g158943_ 2)
                 (apply (lambda (_key151365_ _syntax?151366_)
                          (gx#make-binding-id__1 _key151365_ _syntax?151366_))
                        _g158944_))
                ((##fx= _g158943_ 3)
                 (apply (lambda (_key151372_ _syntax?151373_ _phi151374_)
                          (gx#make-binding-id__2
                           _key151372_
                           _syntax?151373_
                           _phi151374_))
                        _g158944_))
                ((##fx= _g158943_ 4)
                 (apply (lambda (_key151378_
                                 _syntax?151379_
                                 _phi151380_
                                 _ctx151381_)
                          (gx#make-binding-id__%
                           _key151378_
                           _syntax?151379_
                           _phi151380_
                           _ctx151381_))
                        _g158944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g158944_))))))))
