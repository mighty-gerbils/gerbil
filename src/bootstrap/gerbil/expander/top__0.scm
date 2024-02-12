(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707740667)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx154332_)
        (letrec ((_expand-special154334_
                  (lambda (_hd154336_ _K154337_ _rest154338_ _r154339_)
                    (_K154337_
                     _rest154338_
                     (cons (gx#core-expand-top _hd154336_) _r154339_)))))
          (gx#core-expand-block__0 _stx154332_ _expand-special154334_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx154085_)
        (letrec ((_expand-special154087_
                  (lambda (_hd154207_ _K154208_ _rest154209_ _r154210_)
                    (let* ((_K154214_
                            (lambda (_e154212_)
                              (_K154208_
                               _rest154209_
                               (cons _e154212_ _r154210_))))
                           (_e154215154244_ _hd154207_)
                           (_E154239154248_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154215154244_)))
                           (_E154235154260_
                            (lambda ()
                              (if (gx#stx-pair? _e154215154244_)
                                  (let ((_e154240154252_
                                         (gx#syntax-e _e154215154244_)))
                                    (let ((_hd154241154255_
                                           (##car _e154240154252_))
                                          (_tl154242154257_
                                           (##cdr _e154240154252_)))
                                      (if (and (gx#identifier?
                                                _hd154241154255_)
                                               (gx#core-identifier=?
                                                _hd154241154255_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K154214_
                                               (gx#core-expand-define-runtime%
                                                _hd154207_))
                                              (_E154239154248_))
                                          (_E154239154248_))))
                                  (_E154239154248_))))
                           (_E154231154272_
                            (lambda ()
                              (if (gx#stx-pair? _e154215154244_)
                                  (let ((_e154236154264_
                                         (gx#syntax-e _e154215154244_)))
                                    (let ((_hd154237154267_
                                           (##car _e154236154264_))
                                          (_tl154238154269_
                                           (##cdr _e154236154264_)))
                                      (if (and (gx#identifier?
                                                _hd154237154267_)
                                               (gx#core-identifier=?
                                                _hd154237154267_
                                                '%#define-alias))
                                          (if '#t
                                              (_K154214_
                                               (gx#core-expand-define-alias%
                                                _hd154207_))
                                              (_E154235154260_))
                                          (_E154235154260_))))
                                  (_E154235154260_))))
                           (_E154221154284_
                            (lambda ()
                              (if (gx#stx-pair? _e154215154244_)
                                  (let ((_e154232154276_
                                         (gx#syntax-e _e154215154244_)))
                                    (let ((_hd154233154279_
                                           (##car _e154232154276_))
                                          (_tl154234154281_
                                           (##cdr _e154232154276_)))
                                      (if (and (gx#identifier?
                                                _hd154233154279_)
                                               (gx#core-identifier=?
                                                _hd154233154279_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K154214_
                                               (gx#core-expand-define-syntax%
                                                _hd154207_))
                                              (_E154231154272_))
                                          (_E154231154272_))))
                                  (_E154231154272_))))
                           (_E154217154316_
                            (lambda ()
                              (if (gx#stx-pair? _e154215154244_)
                                  (let ((_e154222154288_
                                         (gx#syntax-e _e154215154244_)))
                                    (let ((_hd154223154291_
                                           (##car _e154222154288_))
                                          (_tl154224154293_
                                           (##cdr _e154222154288_)))
                                      (if (and (gx#identifier?
                                                _hd154223154291_)
                                               (gx#core-identifier=?
                                                _hd154223154291_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154224154293_)
                                              (let ((_e154225154296_
                                                     (gx#syntax-e
                                                      _tl154224154293_)))
                                                (let ((_hd154226154299_
                                                       (##car _e154225154296_))
                                                      (_tl154227154301_
                                                       (##cdr _e154225154296_)))
                                                  (let ((_hd-bind154304_
                                                         _hd154226154299_))
                                                    (if (gx#stx-pair?
                                                         _tl154227154301_)
                                                        (let ((_e154228154306_
                                                               (gx#syntax-e
                                                                _tl154227154301_)))
                                                          (let ((_hd154229154309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154228154306_))
                        (_tl154230154311_ (##cdr _e154228154306_)))
                    (let ((_expr154314_ _hd154229154309_))
                      (if (gx#stx-null? _tl154230154311_)
                          (if (gx#core-bind-values? _hd-bind154304_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154304_)
                                (_K154214_ _hd154207_))
                              (_E154221154284_))
                          (_E154221154284_)))))
                (_E154221154284_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154221154284_))
                                          (_E154221154284_))))
                                  (_E154221154284_))))
                           (_E154216154328_
                            (lambda ()
                              (if (gx#stx-pair? _e154215154244_)
                                  (let ((_e154218154320_
                                         (gx#syntax-e _e154215154244_)))
                                    (let ((_hd154219154323_
                                           (##car _e154218154320_))
                                          (_tl154220154325_
                                           (##cdr _e154218154320_)))
                                      (if (and (gx#identifier?
                                                _hd154219154323_)
                                               (gx#core-identifier=?
                                                _hd154219154323_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K154214_
                                               (gx#core-expand-begin-syntax%
                                                _hd154207_))
                                              (_E154217154316_))
                                          (_E154217154316_))))
                                  (_E154217154316_)))))
                      (_E154216154328_))))
                 (_eval-body154088_
                  (lambda (_rbody154096_)
                    (let _lp154098_ ((_rest154100_ _rbody154096_)
                                     (_body154101_ '())
                                     (_ebody154102_ '()))
                      (let* ((_rest154103154111_ _rest154100_)
                             (_else154105154119_
                              (lambda ()
                                (values _body154101_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody154102_)
                                          (gx#stx-source _stx154085_))))))
                             (_K154107154195_
                              (lambda (_rest154122_ _hd154123_)
                                (let* ((_e154124154141_ _hd154123_)
                                       (_E154136154145_
                                        (lambda ()
                                          (_lp154098_
                                           _rest154122_
                                           (cons _hd154123_ _body154101_)
                                           (cons _hd154123_ _ebody154102_))))
                                       (_E154126154157_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154124154141_)
                                              (let ((_e154137154149_
                                                     (gx#syntax-e
                                                      _e154124154141_)))
                                                (let ((_hd154138154152_
                                                       (##car _e154137154149_))
                                                      (_tl154139154154_
                                                       (##cdr _e154137154149_)))
                                                  (if (and (gx#identifier?
                                                            _hd154138154152_)
                                                           (gx#core-identifier=?
                                                            _hd154138154152_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp154098_
                                                           _rest154122_
                                                           (cons _hd154123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body154101_)
                   _ebody154102_)
                  (_E154136154145_))
              (_E154136154145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154136154145_))))
                                       (_E154125154191_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154124154141_)
                                              (let ((_e154127154161_
                                                     (gx#syntax-e
                                                      _e154124154141_)))
                                                (let ((_hd154128154164_
                                                       (##car _e154127154161_))
                                                      (_tl154129154166_
                                                       (##cdr _e154127154161_)))
                                                  (if (and (gx#identifier?
                                                            _hd154128154164_)
                                                           (gx#core-identifier=?
                                                            _hd154128154164_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl154129154166_)
                                                          (let ((_e154130154169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl154129154166_)))
                    (let ((_hd154131154172_ (##car _e154130154169_))
                          (_tl154132154174_ (##cdr _e154130154169_)))
                      (let ((_hd-bind154177_ _hd154131154172_))
                        (if (gx#stx-pair? _tl154132154174_)
                            (let ((_e154133154179_
                                   (gx#syntax-e _tl154132154174_)))
                              (let ((_hd154134154182_ (##car _e154133154179_))
                                    (_tl154135154184_ (##cdr _e154133154179_)))
                                (let ((_expr154187_ _hd154134154182_))
                                  (if (gx#stx-null? _tl154135154184_)
                                      (if '#t
                                          (let ((_ehd154189_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind154177_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr154187_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd154123_))))
                                            (_lp154098_
                                             _rest154122_
                                             (cons _ehd154189_ _body154101_)
                                             (cons _ehd154189_ _ebody154102_)))
                                          (_E154126154157_))
                                      (_E154126154157_)))))
                            (_E154126154157_)))))
                  (_E154126154157_))
              (_E154126154157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154126154157_)))))
                                  (_E154125154191_)))))
                        (if (##pair? _rest154103154111_)
                            (let ((_hd154108154198_ (##car _rest154103154111_))
                                  (_tl154109154200_
                                   (##cdr _rest154103154111_)))
                              (let* ((_hd154203_ _hd154108154198_)
                                     (_rest154205_ _tl154109154200_))
                                (_K154107154195_ _rest154205_ _hd154203_)))
                            (_else154105154119_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody154091_
                     (gx#core-expand-block__1
                      _stx154085_
                      _expand-special154087_
                      '#f))
                    (_g158923_ (_eval-body154088_ _rbody154091_)))
               (begin
                 (let ((_g158924_
                        (if (##values? _g158923_)
                            (##vector-length _g158923_)
                            1)))
                   (if (not (##fx= _g158924_ 2))
                       (error "Context expects 2 values" _g158924_)))
                 (let ((_expanded-body154093_ (##vector-ref _g158923_ 0))
                       (_value154094_ (##vector-ref _g158923_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body154093_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value154094_ '())))
                    (gx#stx-source _stx154085_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx154055_)
        (let* ((_e154056154063_ _stx154055_)
               (_E154058154067_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154056154063_)))
               (_E154057154081_
                (lambda ()
                  (if (gx#stx-pair? _e154056154063_)
                      (let ((_e154059154071_ (gx#syntax-e _e154056154063_)))
                        (let ((_hd154060154074_ (##car _e154059154071_))
                              (_tl154061154076_ (##cdr _e154059154071_)))
                          (let ((_body154079_ _tl154061154076_))
                            (if (gx#stx-list? _body154079_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body154079_)
                                 (gx#stx-source _stx154055_))
                                (_E154058154067_)))))
                      (_E154058154067_)))))
          (_E154057154081_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx154053_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx154053_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx153999_)
        (let* ((_e154000154013_ _stx153999_)
               (_E154002154017_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154000154013_)))
               (_E154001154049_
                (lambda ()
                  (if (gx#stx-pair? _e154000154013_)
                      (let ((_e154003154021_ (gx#syntax-e _e154000154013_)))
                        (let ((_hd154004154024_ (##car _e154003154021_))
                              (_tl154005154026_ (##cdr _e154003154021_)))
                          (if (gx#stx-pair? _tl154005154026_)
                              (let ((_e154006154029_
                                     (gx#syntax-e _tl154005154026_)))
                                (let ((_hd154007154032_
                                       (##car _e154006154029_))
                                      (_tl154008154034_
                                       (##cdr _e154006154029_)))
                                  (let ((_ann154037_ _hd154007154032_))
                                    (if (gx#stx-pair? _tl154008154034_)
                                        (let ((_e154009154039_
                                               (gx#syntax-e _tl154008154034_)))
                                          (let ((_hd154010154042_
                                                 (##car _e154009154039_))
                                                (_tl154011154044_
                                                 (##cdr _e154009154039_)))
                                            (let ((_expr154047_
                                                   _hd154010154042_))
                                              (if (gx#stx-null?
                                                   _tl154011154044_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann154037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr154047_)
                                 '())))
               (gx#stx-source _stx153999_))
              (_E154002154017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154002154017_)))))
                                        (_E154002154017_)))))
                              (_E154002154017_))))
                      (_E154002154017_)))))
          (_E154001154049_))))
    (define gx#core-expand-local-block
      (lambda (_stx153723_ _body153724_)
        (letrec ((_expand-special153726_
                  (lambda (_hd153994_ _K153995_ _rest153996_ _r153997_)
                    (_K153995_
                     '()
                     (cons (_expand-internal153727_ _hd153994_ _rest153996_)
                           _r153997_))))
                 (_expand-internal153727_
                  (lambda (_hd153990_ _rest153991_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal153729_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd153990_ _rest153991_))
                          (gx#stx-source _stx153723_))
                         _expand-internal-special153728_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj158917
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj158917)
                       __obj158917))))
                 (_expand-internal-special153728_
                  (lambda (_hd153885_ _K153886_ _rest153887_ _r153888_)
                    (let* ((_e153889153914_ _hd153885_)
                           (_E153909153918_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153889153914_)))
                           (_E153905153930_
                            (lambda ()
                              (if (gx#stx-pair? _e153889153914_)
                                  (let ((_e153910153922_
                                         (gx#syntax-e _e153889153914_)))
                                    (let ((_hd153911153925_
                                           (##car _e153910153922_))
                                          (_tl153912153927_
                                           (##cdr _e153910153922_)))
                                      (if (and (gx#identifier?
                                                _hd153911153925_)
                                               (gx#core-identifier=?
                                                _hd153911153925_
                                                '%#declare))
                                          (if '#t
                                              (_K153886_
                                               _rest153887_
                                               (cons (gx#core-expand-declare%
                                                      _hd153885_)
                                                     _r153888_))
                                              (_E153909153918_))
                                          (_E153909153918_))))
                                  (_E153909153918_))))
                           (_E153901153942_
                            (lambda ()
                              (if (gx#stx-pair? _e153889153914_)
                                  (let ((_e153906153934_
                                         (gx#syntax-e _e153889153914_)))
                                    (let ((_hd153907153937_
                                           (##car _e153906153934_))
                                          (_tl153908153939_
                                           (##cdr _e153906153934_)))
                                      (if (and (gx#identifier?
                                                _hd153907153937_)
                                               (gx#core-identifier=?
                                                _hd153907153937_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd153885_)
                                                (_K153886_
                                                 _rest153887_
                                                 _r153888_))
                                              (_E153905153930_))
                                          (_E153905153930_))))
                                  (_E153905153930_))))
                           (_E153891153954_
                            (lambda ()
                              (if (gx#stx-pair? _e153889153914_)
                                  (let ((_e153902153946_
                                         (gx#syntax-e _e153889153914_)))
                                    (let ((_hd153903153949_
                                           (##car _e153902153946_))
                                          (_tl153904153951_
                                           (##cdr _e153902153946_)))
                                      (if (and (gx#identifier?
                                                _hd153903153949_)
                                               (gx#core-identifier=?
                                                _hd153903153949_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd153885_)
                                                (_K153886_
                                                 _rest153887_
                                                 _r153888_))
                                              (_E153901153942_))
                                          (_E153901153942_))))
                                  (_E153901153942_))))
                           (_E153890153986_
                            (lambda ()
                              (if (gx#stx-pair? _e153889153914_)
                                  (let ((_e153892153958_
                                         (gx#syntax-e _e153889153914_)))
                                    (let ((_hd153893153961_
                                           (##car _e153892153958_))
                                          (_tl153894153963_
                                           (##cdr _e153892153958_)))
                                      (if (and (gx#identifier?
                                                _hd153893153961_)
                                               (gx#core-identifier=?
                                                _hd153893153961_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153894153963_)
                                              (let ((_e153895153966_
                                                     (gx#syntax-e
                                                      _tl153894153963_)))
                                                (let ((_hd153896153969_
                                                       (##car _e153895153966_))
                                                      (_tl153897153971_
                                                       (##cdr _e153895153966_)))
                                                  (let ((_hd-bind153974_
                                                         _hd153896153969_))
                                                    (if (gx#stx-pair?
                                                         _tl153897153971_)
                                                        (let ((_e153898153976_
                                                               (gx#syntax-e
                                                                _tl153897153971_)))
                                                          (let ((_hd153899153979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153898153976_))
                        (_tl153900153981_ (##cdr _e153898153976_)))
                    (let ((_expr153984_ _hd153899153979_))
                      (if (gx#stx-null? _tl153900153981_)
                          (if (gx#core-bind-values? _hd-bind153974_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153974_)
                                (_K153886_
                                 _rest153887_
                                 (cons _hd153885_ _r153888_)))
                              (_E153891153954_))
                          (_E153891153954_)))))
                (_E153891153954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153891153954_))
                                          (_E153891153954_))))
                                  (_E153891153954_)))))
                      (_E153890153986_))))
                 (_wrap-internal153729_
                  (lambda (_rbody153731_)
                    (let _lp153733_ ((_rest153735_ _rbody153731_)
                                     (_decls153736_ '())
                                     (_bind153737_ '())
                                     (_body153738_ '()))
                      (let* ((_e153739153746_ _rest153735_)
                             (_E153741153795_
                              (lambda ()
                                (let* ((_body153790_
                                        (let* ((_body153749153759_
                                                _body153738_)
                                               (_else153752153767_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153738_)
                                                   (gx#stx-source
                                                    _stx153723_)))))
                                          (let ((_K153757153787_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx153723_)))
                                                (_K153754153773_
                                                 (lambda (_expr153771_)
                                                   _expr153771_)))
                                            (let ((_try-match153751153783_
                                                   (lambda ()
                                                     (if (##pair? _body153749153759_)
                                                         (let ((_tl153756153778_
                                                                (##cdr _body153749153759_))
                                                               (_hd153755153776_
                                                                (##car _body153749153759_)))
                                                           (if (##null? _tl153756153778_)
                                                               (let ((_expr153781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153755153776_))
                         (_K153754153773_ _expr153781_))
                       (_else153752153767_)))
                 (_else153752153767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body153749153759_)
                                                  (_K153757153787_)
                                                  (_try-match153751153783_))))))
                                       (_body153792_
                                        (if (null? _bind153737_)
                                            _body153790_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind153737_
                                                         (cons _body153790_
                                                               '())))
                                             (gx#stx-source _stx153723_)))))
                                  (if (null? _decls153736_)
                                      _body153792_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls153736_
                                                   (cons _body153792_ '())))
                                       (gx#stx-source _stx153723_))))))
                             (_E153740153881_
                              (lambda ()
                                (if (gx#stx-pair? _e153739153746_)
                                    (let ((_e153742153799_
                                           (gx#syntax-e _e153739153746_)))
                                      (let ((_hd153743153802_
                                             (##car _e153742153799_))
                                            (_tl153744153804_
                                             (##cdr _e153742153799_)))
                                        (let* ((_hd153807_ _hd153743153802_)
                                               (_rest153809_ _tl153744153804_))
                                          (if '#t
                                              (let* ((_e153810153827_
                                                      _hd153807_)
                                                     (_E153822153831_
                                                      (lambda ()
                                                        (if (null? _bind153737_)
                                                            (_lp153733_
                                                             _rest153809_
                                                             _decls153736_
                                                             _bind153737_
                                                             (cons _hd153807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body153738_))
                    (_lp153733_
                     _rest153809_
                     _decls153736_
                     (cons (cons '#f (cons _hd153807_ '())) _bind153737_)
                     _body153738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153812153845_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153810153827_)
                                                            (let ((_e153823153835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153810153827_)))
                      (let ((_hd153824153838_ (##car _e153823153835_))
                            (_tl153825153840_ (##cdr _e153823153835_)))
                        (if (and (gx#identifier? _hd153824153838_)
                                 (gx#core-identifier=?
                                  _hd153824153838_
                                  '%#declare))
                            (let ((_xdecls153843_ _tl153825153840_))
                              (if '#t
                                  (_lp153733_
                                   _rest153809_
                                   (gx#stx-foldr
                                    cons
                                    _decls153736_
                                    _xdecls153843_)
                                   _bind153737_
                                   _body153738_)
                                  (_E153822153831_)))
                            (_E153822153831_))))
                    (_E153822153831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153811153877_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153810153827_)
                                                            (let ((_e153813153849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153810153827_)))
                      (let ((_hd153814153852_ (##car _e153813153849_))
                            (_tl153815153854_ (##cdr _e153813153849_)))
                        (if (and (gx#identifier? _hd153814153852_)
                                 (gx#core-identifier=?
                                  _hd153814153852_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl153815153854_)
                                (let ((_e153816153857_
                                       (gx#syntax-e _tl153815153854_)))
                                  (let ((_hd153817153860_
                                         (##car _e153816153857_))
                                        (_tl153818153862_
                                         (##cdr _e153816153857_)))
                                    (let ((_hd-bind153865_ _hd153817153860_))
                                      (if (gx#stx-pair? _tl153818153862_)
                                          (let ((_e153819153867_
                                                 (gx#syntax-e
                                                  _tl153818153862_)))
                                            (let ((_hd153820153870_
                                                   (##car _e153819153867_))
                                                  (_tl153821153872_
                                                   (##cdr _e153819153867_)))
                                              (let ((_expr153875_
                                                     _hd153820153870_))
                                                (if (gx#stx-null?
                                                     _tl153821153872_)
                                                    (if '#t
                                                        (_lp153733_
                                                         _rest153809_
                                                         _decls153736_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind153865_)
                             (cons (gx#core-expand-expression _expr153875_)
                                   '()))
                       _bind153737_)
                 _body153738_)
                (_E153812153845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153812153845_)))))
                                          (_E153812153845_)))))
                                (_E153812153845_))
                            (_E153812153845_))))
                    (_E153812153845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153811153877_))
                                              (_E153741153795_)))))
                                    (_E153741153795_)))))
                        (_E153740153881_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body153724_)
            (gx#stx-source _stx153723_))
           _expand-special153726_))))
    (define gx#core-expand-declare%
      (lambda (_stx153661_)
        (let* ((_e153662153669_ _stx153661_)
               (_E153664153673_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153662153669_)))
               (_E153663153719_
                (lambda ()
                  (if (gx#stx-pair? _e153662153669_)
                      (let ((_e153665153677_ (gx#syntax-e _e153662153669_)))
                        (let ((_hd153666153680_ (##car _e153665153677_))
                              (_tl153667153682_ (##cdr _e153665153677_)))
                          (let ((_body153685_ _tl153667153682_))
                            (if (gx#stx-list? _body153685_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl153687_)
                                     (let* ((_e153688153695_ _decl153687_)
                                            (_E153690153699_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e153688153695_)))
                                            (_E153689153715_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e153688153695_)
                                                   (let ((_e153691153703_
                                                          (gx#syntax-e
                                                           _e153688153695_)))
                                                     (let ((_hd153692153706_
                                                            (##car _e153691153703_))
                                                           (_tl153693153708_
                                                            (##cdr _e153691153703_)))
                                                       (let* ((_head153711_
                                                               _hd153692153706_)
                                                              (_args153713_
                                                               _tl153693153708_))
                                                         (if (gx#stx-list?
                                                              _args153713_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl153687_)
                                                             (_E153690153699_)))))
                                                   (_E153690153699_)))))
                                       (_E153689153715_)))
                                   _body153685_))
                                 (gx#stx-source _stx153661_))
                                (_E153664153673_)))))
                      (_E153664153673_)))))
          (_E153663153719_))))
    (define gx#core-expand-extern%
      (lambda (_stx153565_)
        (let* ((_e153566153573_ _stx153565_)
               (_E153568153577_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153566153573_)))
               (_E153567153657_
                (lambda ()
                  (if (gx#stx-pair? _e153566153573_)
                      (let ((_e153569153581_ (gx#syntax-e _e153566153573_)))
                        (let ((_hd153570153584_ (##car _e153569153581_))
                              (_tl153571153586_ (##cdr _e153569153581_)))
                          (let ((_body153589_ _tl153571153586_))
                            (if '#t
                                (let _lp153591_ ((_rest153593_ _body153589_)
                                                 (_r153594_ '()))
                                  (let* ((_e153595153609_ _rest153593_)
                                         (_E153607153613_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx153565_)))
                                         (_E153597153617_
                                          (lambda ()
                                            (if (gx#stx-null? _e153595153609_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r153594_))
                                                     (gx#stx-source
                                                      _stx153565_))
                                                    (_E153607153613_))
                                                (_E153607153613_))))
                                         (_E153596153653_
                                          (lambda ()
                                            (if (gx#stx-pair? _e153595153609_)
                                                (let ((_e153598153621_
                                                       (gx#syntax-e
                                                        _e153595153609_)))
                                                  (let ((_hd153599153624_
                                                         (##car _e153598153621_))
                                                        (_tl153600153626_
                                                         (##cdr _e153598153621_)))
                                                    (if (gx#stx-pair?
                                                         _hd153599153624_)
                                                        (let ((_e153601153629_
                                                               (gx#syntax-e
                                                                _hd153599153624_)))
                                                          (let ((_hd153602153632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153601153629_))
                        (_tl153603153634_ (##cdr _e153601153629_)))
                    (let ((_id153637_ _hd153602153632_))
                      (if (gx#stx-pair? _tl153603153634_)
                          (let ((_e153604153639_
                                 (gx#syntax-e _tl153603153634_)))
                            (let ((_hd153605153642_ (##car _e153604153639_))
                                  (_tl153606153644_ (##cdr _e153604153639_)))
                              (let ((_eid153647_ _hd153605153642_))
                                (if (gx#stx-null? _tl153606153644_)
                                    (let ((_rest153649_ _tl153600153626_))
                                      (if (and (gx#identifier? _id153637_)
                                               (gx#identifier? _eid153647_))
                                          (let ((_eid153651_
                                                 (gx#stx-e _eid153647_)))
                                            (gx#core-bind-extern!__0
                                             _id153637_
                                             _eid153651_)
                                            (_lp153591_
                                             _rest153649_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id153637_)
                                                         (cons _eid153651_
                                                               '()))
                                                   _r153594_)))
                                          (_E153597153617_)))
                                    (_E153597153617_)))))
                          (_E153597153617_)))))
                (_E153597153617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153597153617_)))))
                                    (_E153596153653_)))
                                (_E153568153577_)))))
                      (_E153568153577_)))))
          (_E153567153657_))))
    (define gx#core-expand-define-values%
      (lambda (_stx153511_)
        (let* ((_e153512153525_ _stx153511_)
               (_E153514153529_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153512153525_)))
               (_E153513153561_
                (lambda ()
                  (if (gx#stx-pair? _e153512153525_)
                      (let ((_e153515153533_ (gx#syntax-e _e153512153525_)))
                        (let ((_hd153516153536_ (##car _e153515153533_))
                              (_tl153517153538_ (##cdr _e153515153533_)))
                          (if (gx#stx-pair? _tl153517153538_)
                              (let ((_e153518153541_
                                     (gx#syntax-e _tl153517153538_)))
                                (let ((_hd153519153544_
                                       (##car _e153518153541_))
                                      (_tl153520153546_
                                       (##cdr _e153518153541_)))
                                  (let ((_hd153549_ _hd153519153544_))
                                    (if (gx#stx-pair? _tl153520153546_)
                                        (let ((_e153521153551_
                                               (gx#syntax-e _tl153520153546_)))
                                          (let ((_hd153522153554_
                                                 (##car _e153521153551_))
                                                (_tl153523153556_
                                                 (##cdr _e153521153551_)))
                                            (let ((_expr153559_
                                                   _hd153522153554_))
                                              (if (gx#stx-null?
                                                   _tl153523153556_)
                                                  (if (gx#core-bind-values?
                                                       _hd153549_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd153549_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153549_)
                             (cons (gx#core-expand-expression _expr153559_)
                                   '())))
                 (gx#stx-source _stx153511_)))
              (_E153514153529_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153514153529_)))))
                                        (_E153514153529_)))))
                              (_E153514153529_))))
                      (_E153514153529_)))))
          (_E153513153561_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx153455_)
        (let* ((_e153456153469_ _stx153455_)
               (_E153458153473_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153456153469_)))
               (_E153457153507_
                (lambda ()
                  (if (gx#stx-pair? _e153456153469_)
                      (let ((_e153459153477_ (gx#syntax-e _e153456153469_)))
                        (let ((_hd153460153480_ (##car _e153459153477_))
                              (_tl153461153482_ (##cdr _e153459153477_)))
                          (if (gx#stx-pair? _tl153461153482_)
                              (let ((_e153462153485_
                                     (gx#syntax-e _tl153461153482_)))
                                (let ((_hd153463153488_
                                       (##car _e153462153485_))
                                      (_tl153464153490_
                                       (##cdr _e153462153485_)))
                                  (let ((_id153493_ _hd153463153488_))
                                    (if (gx#stx-pair? _tl153464153490_)
                                        (let ((_e153465153495_
                                               (gx#syntax-e _tl153464153490_)))
                                          (let ((_hd153466153498_
                                                 (##car _e153465153495_))
                                                (_tl153467153500_
                                                 (##cdr _e153465153495_)))
                                            (let ((_binding-id153503_
                                                   _hd153466153498_))
                                              (if (gx#stx-null?
                                                   _tl153467153500_)
                                                  (if (and (gx#identifier?
                                                            _id153493_)
                                                           (gx#identifier?
                                                            _binding-id153503_))
                                                      (let ((_eid153505_
                                                             (gx#stx-e
                                                              _binding-id153503_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id153493_
                                                         _eid153505_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153493_)
                             (cons _eid153505_ '())))))
              (_E153458153473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153458153473_)))))
                                        (_E153458153473_)))))
                              (_E153458153473_))))
                      (_E153458153473_)))))
          (_E153457153507_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx153398_)
        (let* ((_e153399153412_ _stx153398_)
               (_E153401153416_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153399153412_)))
               (_E153400153451_
                (lambda ()
                  (if (gx#stx-pair? _e153399153412_)
                      (let ((_e153402153420_ (gx#syntax-e _e153399153412_)))
                        (let ((_hd153403153423_ (##car _e153402153420_))
                              (_tl153404153425_ (##cdr _e153402153420_)))
                          (if (gx#stx-pair? _tl153404153425_)
                              (let ((_e153405153428_
                                     (gx#syntax-e _tl153404153425_)))
                                (let ((_hd153406153431_
                                       (##car _e153405153428_))
                                      (_tl153407153433_
                                       (##cdr _e153405153428_)))
                                  (let ((_id153436_ _hd153406153431_))
                                    (if (gx#stx-pair? _tl153407153433_)
                                        (let ((_e153408153438_
                                               (gx#syntax-e _tl153407153433_)))
                                          (let ((_hd153409153441_
                                                 (##car _e153408153438_))
                                                (_tl153410153443_
                                                 (##cdr _e153408153438_)))
                                            (let ((_expr153446_
                                                   _hd153409153441_))
                                              (if (gx#stx-null?
                                                   _tl153410153443_)
                                                  (if (gx#identifier?
                                                       _id153436_)
                                                      (let ((_g158925_
                                                             (gx#core-expand-expression+1
                                                              _expr153446_)))
                                                        (begin
                                                          (let ((_g158926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g158925_)
                             (##vector-length _g158925_)
                             1)))
                    (if (not (##fx= _g158926_ 2))
                        (error "Context expects 2 values" _g158926_)))
                  (let ((_e-stx153448_ (##vector-ref _g158925_ 0))
                        (_e153449_ (##vector-ref _g158925_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id153436_ _e153449_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id153436_)
                                   (cons _e-stx153448_ '())))
                       (gx#stx-source _stx153398_))))))
              (_E153401153416_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153401153416_)))))
                                        (_E153401153416_)))))
                              (_E153401153416_))))
                      (_E153401153416_)))))
          (_E153400153451_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx153342_)
        (let* ((_e153343153356_ _stx153342_)
               (_E153345153360_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153343153356_)))
               (_E153344153394_
                (lambda ()
                  (if (gx#stx-pair? _e153343153356_)
                      (let ((_e153346153364_ (gx#syntax-e _e153343153356_)))
                        (let ((_hd153347153367_ (##car _e153346153364_))
                              (_tl153348153369_ (##cdr _e153346153364_)))
                          (if (gx#stx-pair? _tl153348153369_)
                              (let ((_e153349153372_
                                     (gx#syntax-e _tl153348153369_)))
                                (let ((_hd153350153375_
                                       (##car _e153349153372_))
                                      (_tl153351153377_
                                       (##cdr _e153349153372_)))
                                  (let ((_id153380_ _hd153350153375_))
                                    (if (gx#stx-pair? _tl153351153377_)
                                        (let ((_e153352153382_
                                               (gx#syntax-e _tl153351153377_)))
                                          (let ((_hd153353153385_
                                                 (##car _e153352153382_))
                                                (_tl153354153387_
                                                 (##cdr _e153352153382_)))
                                            (let ((_alias-id153390_
                                                   _hd153353153385_))
                                              (if (gx#stx-null?
                                                   _tl153354153387_)
                                                  (if (and (gx#identifier?
                                                            _id153380_)
                                                           (gx#identifier?
                                                            _alias-id153390_))
                                                      (let ((_alias-id153392_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id153390_)))
                                                        (gx#core-bind-alias!__0
                                                         _id153380_
                                                         _alias-id153392_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153380_)
                             (cons _alias-id153392_ '())))))
              (_E153345153360_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153345153360_)))))
                                        (_E153345153360_)))))
                              (_E153345153360_))))
                      (_E153345153360_)))))
          (_E153344153394_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx153285_ _wrap?153286_)
        (let* ((_e153287153297_ _stx153285_)
               (_E153289153301_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153287153297_)))
               (_E153288153328_
                (lambda ()
                  (if (gx#stx-pair? _e153287153297_)
                      (let ((_e153290153305_ (gx#syntax-e _e153287153297_)))
                        (let ((_hd153291153308_ (##car _e153290153305_))
                              (_tl153292153310_ (##cdr _e153290153305_)))
                          (if (gx#stx-pair? _tl153292153310_)
                              (let ((_e153293153313_
                                     (gx#syntax-e _tl153292153310_)))
                                (let ((_hd153294153316_
                                       (##car _e153293153313_))
                                      (_tl153295153318_
                                       (##cdr _e153293153313_)))
                                  (let* ((_hd153321_ _hd153294153316_)
                                         (_body153323_ _tl153295153318_))
                                    (if (gx#core-bind-values? _hd153321_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd153321_)
                                           (let ((_body153326_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd153321_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx153285_
                                                               _body153323_)
                                                              '()))))
                                             (if _wrap?153286_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body153326_)
                                                  (gx#stx-source _stx153285_))
                                                 _body153326_)))
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
                                           __obj158918))
                                        (_E153289153301_)))))
                              (_E153289153301_))))
                      (_E153289153301_)))))
          (_E153288153328_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx153335_)
        (let ((_wrap?153337_ '#t))
          (gx#core-expand-lambda%__% _stx153335_ _wrap?153337_))))
    (define gx#core-expand-lambda%
      (lambda _g158928_
        (let ((_g158927_ (##length _g158928_)))
          (cond ((##fx= _g158927_ 1)
                 (apply (lambda (_stx153335_)
                          (gx#core-expand-lambda%__0 _stx153335_))
                        _g158928_))
                ((##fx= _g158927_ 2)
                 (apply (lambda (_stx153339_ _wrap?153340_)
                          (gx#core-expand-lambda%__%
                           _stx153339_
                           _wrap?153340_))
                        _g158928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g158928_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx153249_)
        (let* ((_e153250153257_ _stx153249_)
               (_E153252153261_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153250153257_)))
               (_E153251153280_
                (lambda ()
                  (if (gx#stx-pair? _e153250153257_)
                      (let ((_e153253153265_ (gx#syntax-e _e153250153257_)))
                        (let ((_hd153254153268_ (##car _e153253153265_))
                              (_tl153255153270_ (##cdr _e153253153265_)))
                          (let ((_clauses153273_ _tl153255153270_))
                            (if (gx#stx-list? _clauses153273_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause153275_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause153275_)
                                       (let ((_$e153277_
                                              (gx#stx-source _clause153275_)))
                                         (if _$e153277_
                                             _$e153277_
                                             (gx#stx-source _stx153249_))))
                                      '#f))
                                   _clauses153273_))
                                 (gx#stx-source _stx153249_))
                                (_E153252153261_)))))
                      (_E153252153261_)))))
          (_E153251153280_))))
    (define gx#core-expand-let-values%
      (lambda (_stx153203_)
        (let* ((_e153204153214_ _stx153203_)
               (_E153206153218_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153204153214_)))
               (_E153205153245_
                (lambda ()
                  (if (gx#stx-pair? _e153204153214_)
                      (let ((_e153207153222_ (gx#syntax-e _e153204153214_)))
                        (let ((_hd153208153225_ (##car _e153207153222_))
                              (_tl153209153227_ (##cdr _e153207153222_)))
                          (if (gx#stx-pair? _tl153209153227_)
                              (let ((_e153210153230_
                                     (gx#syntax-e _tl153209153227_)))
                                (let ((_hd153211153233_
                                       (##car _e153210153230_))
                                      (_tl153212153235_
                                       (##cdr _e153210153230_)))
                                  (let* ((_hd153238_ _hd153211153233_)
                                         (_body153240_ _tl153212153235_))
                                    (if (gx#core-expand-let-bind? _hd153238_)
                                        (let ((_expressions153242_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd153238_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd153238_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd153238_
                                                           _expressions153242_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx153203_
                         _body153240_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx153203_)))
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
                                             __obj158919)))
                                        (_E153206153218_)))))
                              (_E153206153218_))))
                      (_E153206153218_)))))
          (_E153205153245_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx153148_ _form153149_)
        (let* ((_e153150153160_ _stx153148_)
               (_E153152153164_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153150153160_)))
               (_E153151153189_
                (lambda ()
                  (if (gx#stx-pair? _e153150153160_)
                      (let ((_e153153153168_ (gx#syntax-e _e153150153160_)))
                        (let ((_hd153154153171_ (##car _e153153153168_))
                              (_tl153155153173_ (##cdr _e153153153168_)))
                          (if (gx#stx-pair? _tl153155153173_)
                              (let ((_e153156153176_
                                     (gx#syntax-e _tl153155153173_)))
                                (let ((_hd153157153179_
                                       (##car _e153156153176_))
                                      (_tl153158153181_
                                       (##cdr _e153156153176_)))
                                  (let* ((_hd153184_ _hd153157153179_)
                                         (_body153186_ _tl153158153181_))
                                    (if (gx#core-expand-let-bind? _hd153184_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd153184_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form153149_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd153184_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd153184_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx153148_
                                                               _body153186_)
                                                              '())))
                                            (gx#stx-source _stx153148_)))
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
                                           __obj158920))
                                        (_E153152153164_)))))
                              (_E153152153164_))))
                      (_E153152153164_)))))
          (_E153151153189_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx153196_)
        (let ((_form153198_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx153196_ _form153198_))))
    (define gx#core-expand-letrec-values%
      (lambda _g158930_
        (let ((_g158929_ (##length _g158930_)))
          (cond ((##fx= _g158929_ 1)
                 (apply (lambda (_stx153196_)
                          (gx#core-expand-letrec-values%__0 _stx153196_))
                        _g158930_))
                ((##fx= _g158929_ 2)
                 (apply (lambda (_stx153200_ _form153201_)
                          (gx#core-expand-letrec-values%__%
                           _stx153200_
                           _form153201_))
                        _g158930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g158930_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx153145_)
        (gx#core-expand-letrec-values%__% _stx153145_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx153102_)
        (if (gx#stx-list? _stx153102_)
            (gx#stx-andmap
             (lambda (_bind153104_)
               (let* ((_e153105153115_ _bind153104_)
                      (_E153107153119_ (lambda () '#f))
                      (_E153106153141_
                       (lambda ()
                         (if (gx#stx-pair? _e153105153115_)
                             (let ((_e153108153123_
                                    (gx#syntax-e _e153105153115_)))
                               (let ((_hd153109153126_ (##car _e153108153123_))
                                     (_tl153110153128_
                                      (##cdr _e153108153123_)))
                                 (let ((_hd153131_ _hd153109153126_))
                                   (if (gx#stx-pair? _tl153110153128_)
                                       (let ((_e153111153133_
                                              (gx#syntax-e _tl153110153128_)))
                                         (let ((_hd153112153136_
                                                (##car _e153111153133_))
                                               (_tl153113153138_
                                                (##cdr _e153111153133_)))
                                           (if (gx#stx-null? _tl153113153138_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd153131_)
                                                   (_E153107153119_))
                                               (_E153107153119_))))
                                       (_E153107153119_)))))
                             (_E153107153119_)))))
                 (_E153106153141_)))
             _stx153102_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind153061_)
        (let* ((_e153062153072_ _bind153061_)
               (_E153064153076_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153062153072_)))
               (_E153063153098_
                (lambda ()
                  (if (gx#stx-pair? _e153062153072_)
                      (let ((_e153065153080_ (gx#syntax-e _e153062153072_)))
                        (let ((_hd153066153083_ (##car _e153065153080_))
                              (_tl153067153085_ (##cdr _e153065153080_)))
                          (if (gx#stx-pair? _tl153067153085_)
                              (let ((_e153068153088_
                                     (gx#syntax-e _tl153067153085_)))
                                (let ((_hd153069153091_
                                       (##car _e153068153088_))
                                      (_tl153070153093_
                                       (##cdr _e153068153088_)))
                                  (let ((_expr153096_ _hd153069153091_))
                                    (if (gx#stx-null? _tl153070153093_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr153096_)
                                            (_E153064153076_))
                                        (_E153064153076_)))))
                              (_E153064153076_))))
                      (_E153064153076_)))))
          (_E153063153098_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind153020_)
        (let* ((_e153021153031_ _bind153020_)
               (_E153023153035_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153021153031_)))
               (_E153022153057_
                (lambda ()
                  (if (gx#stx-pair? _e153021153031_)
                      (let ((_e153024153039_ (gx#syntax-e _e153021153031_)))
                        (let ((_hd153025153042_ (##car _e153024153039_))
                              (_tl153026153044_ (##cdr _e153024153039_)))
                          (let ((_hd153047_ _hd153025153042_))
                            (if (gx#stx-pair? _tl153026153044_)
                                (let ((_e153027153049_
                                       (gx#syntax-e _tl153026153044_)))
                                  (let ((_hd153028153052_
                                         (##car _e153027153049_))
                                        (_tl153029153054_
                                         (##cdr _e153027153049_)))
                                    (if (gx#stx-null? _tl153029153054_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd153047_)
                                            (_E153023153035_))
                                        (_E153023153035_))))
                                (_E153023153035_)))))
                      (_E153023153035_)))))
          (_E153022153057_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind152978_ _expr152979_)
        (let* ((_e152980152990_ _bind152978_)
               (_E152982152994_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152980152990_)))
               (_E152981153016_
                (lambda ()
                  (if (gx#stx-pair? _e152980152990_)
                      (let ((_e152983152998_ (gx#syntax-e _e152980152990_)))
                        (let ((_hd152984153001_ (##car _e152983152998_))
                              (_tl152985153003_ (##cdr _e152983152998_)))
                          (let ((_hd153006_ _hd152984153001_))
                            (if (gx#stx-pair? _tl152985153003_)
                                (let ((_e152986153008_
                                       (gx#syntax-e _tl152985153003_)))
                                  (let ((_hd152987153011_
                                         (##car _e152986153008_))
                                        (_tl152988153013_
                                         (##cdr _e152986153008_)))
                                    (if (gx#stx-null? _tl152988153013_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd153006_)
                                                  (cons _expr152979_ '()))
                                            (_E152982152994_))
                                        (_E152982152994_))))
                                (_E152982152994_)))))
                      (_E152982152994_)))))
          (_E152981153016_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx152932_)
        (let* ((_e152933152943_ _stx152932_)
               (_E152935152947_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152933152943_)))
               (_E152934152974_
                (lambda ()
                  (if (gx#stx-pair? _e152933152943_)
                      (let ((_e152936152951_ (gx#syntax-e _e152933152943_)))
                        (let ((_hd152937152954_ (##car _e152936152951_))
                              (_tl152938152956_ (##cdr _e152936152951_)))
                          (if (gx#stx-pair? _tl152938152956_)
                              (let ((_e152939152959_
                                     (gx#syntax-e _tl152938152956_)))
                                (let ((_hd152940152962_
                                       (##car _e152939152959_))
                                      (_tl152941152964_
                                       (##cdr _e152939152959_)))
                                  (let* ((_hd152967_ _hd152940152962_)
                                         (_body152969_ _tl152941152964_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152967_)
                                        (let ((_expanders152971_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd152967_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd152967_
                                              _expanders152971_)
                                             (gx#core-expand-local-block
                                              _stx152932_
                                              _body152969_))
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
                                             __obj158921)))
                                        (_E152935152947_)))))
                              (_E152935152947_))))
                      (_E152935152947_)))))
          (_E152934152974_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx152881_)
        (let* ((_e152882152892_ _stx152881_)
               (_E152884152896_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152882152892_)))
               (_E152883152928_
                (lambda ()
                  (if (gx#stx-pair? _e152882152892_)
                      (let ((_e152885152900_ (gx#syntax-e _e152882152892_)))
                        (let ((_hd152886152903_ (##car _e152885152900_))
                              (_tl152887152905_ (##cdr _e152885152900_)))
                          (if (gx#stx-pair? _tl152887152905_)
                              (let ((_e152888152908_
                                     (gx#syntax-e _tl152887152905_)))
                                (let ((_hd152889152911_
                                       (##car _e152888152908_))
                                      (_tl152890152913_
                                       (##cdr _e152888152908_)))
                                  (let* ((_hd152916_ _hd152889152911_)
                                         (_body152918_ _tl152890152913_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152916_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd152916_
                                            (make-list
                                             (gx#stx-length _hd152916_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g152920152923_
                                                     _g152921152925_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g152920152923_
                                               _g152921152925_
                                               '#t))
                                            _hd152916_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd152916_))
                                           (gx#core-expand-local-block
                                            _stx152881_
                                            _body152918_))
                                         gx#current-expander-context
                                         (let ((__obj158922
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158922)
                                           __obj158922))
                                        (_E152884152896_)))))
                              (_E152884152896_))))
                      (_E152884152896_)))))
          (_E152883152928_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx152838_)
        (if (gx#stx-list? _stx152838_)
            (gx#stx-andmap
             (lambda (_bind152840_)
               (let* ((_e152841152851_ _bind152840_)
                      (_E152843152855_ (lambda () '#f))
                      (_E152842152877_
                       (lambda ()
                         (if (gx#stx-pair? _e152841152851_)
                             (let ((_e152844152859_
                                    (gx#syntax-e _e152841152851_)))
                               (let ((_hd152845152862_ (##car _e152844152859_))
                                     (_tl152846152864_
                                      (##cdr _e152844152859_)))
                                 (let ((_hd152867_ _hd152845152862_))
                                   (if (gx#stx-pair? _tl152846152864_)
                                       (let ((_e152847152869_
                                              (gx#syntax-e _tl152846152864_)))
                                         (let ((_hd152848152872_
                                                (##car _e152847152869_))
                                               (_tl152849152874_
                                                (##cdr _e152847152869_)))
                                           (if (gx#stx-null? _tl152849152874_)
                                               (if '#t
                                                   (gx#identifier? _hd152867_)
                                                   (_E152843152855_))
                                               (_E152843152855_))))
                                       (_E152843152855_)))))
                             (_E152843152855_)))))
                 (_E152842152877_)))
             _stx152838_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind152795_)
        (let* ((_e152796152806_ _bind152795_)
               (_E152798152810_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152796152806_)))
               (_E152797152834_
                (lambda ()
                  (if (gx#stx-pair? _e152796152806_)
                      (let ((_e152799152814_ (gx#syntax-e _e152796152806_)))
                        (let ((_hd152800152817_ (##car _e152799152814_))
                              (_tl152801152819_ (##cdr _e152799152814_)))
                          (if (gx#stx-pair? _tl152801152819_)
                              (let ((_e152802152822_
                                     (gx#syntax-e _tl152801152819_)))
                                (let ((_hd152803152825_
                                       (##car _e152802152822_))
                                      (_tl152804152827_
                                       (##cdr _e152802152822_)))
                                  (let ((_expr152830_ _hd152803152825_))
                                    (if (gx#stx-null? _tl152804152827_)
                                        (if '#t
                                            (let ((_g158931_
                                                   (gx#core-expand-expression+1
                                                    _expr152830_)))
                                              (begin
                                                (let ((_g158932_
                                                       (if (##values?
                                                            _g158931_)
                                                           (##vector-length
                                                            _g158931_)
                                                           1)))
                                                  (if (not (##fx= _g158932_ 2))
                                                      (error "Context expects 2 values"
                                                             _g158932_)))
                                                (let ((_e152832_
                                                       (##vector-ref
                                                        _g158931_
                                                        1)))
                                                  _e152832_)))
                                            (_E152798152810_))
                                        (_E152798152810_)))))
                              (_E152798152810_))))
                      (_E152798152810_)))))
          (_E152797152834_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind152740_ _e152741_ _rebind?152742_)
        (let* ((_e152743152753_ _bind152740_)
               (_E152745152757_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152743152753_)))
               (_E152744152779_
                (lambda ()
                  (if (gx#stx-pair? _e152743152753_)
                      (let ((_e152746152761_ (gx#syntax-e _e152743152753_)))
                        (let ((_hd152747152764_ (##car _e152746152761_))
                              (_tl152748152766_ (##cdr _e152746152761_)))
                          (let ((_id152769_ _hd152747152764_))
                            (if (gx#stx-pair? _tl152748152766_)
                                (let ((_e152749152771_
                                       (gx#syntax-e _tl152748152766_)))
                                  (let ((_hd152750152774_
                                         (##car _e152749152771_))
                                        (_tl152751152776_
                                         (##cdr _e152749152771_)))
                                    (if (gx#stx-null? _tl152751152776_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id152769_
                                             _e152741_
                                             _rebind?152742_)
                                            (_E152745152757_))
                                        (_E152745152757_))))
                                (_E152745152757_)))))
                      (_E152745152757_)))))
          (_E152744152779_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind152786_ _e152787_)
        (let ((_rebind?152789_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind152786_
           _e152787_
           _rebind?152789_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g158934_
        (let ((_g158933_ (##length _g158934_)))
          (cond ((##fx= _g158933_ 2)
                 (apply (lambda (_bind152786_ _e152787_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind152786_
                           _e152787_))
                        _g158934_))
                ((##fx= _g158933_ 3)
                 (apply (lambda (_bind152791_ _e152792_ _rebind?152793_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind152791_
                           _e152792_
                           _rebind?152793_))
                        _g158934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g158934_))))))
    (define gx#core-expand-expression%
      (lambda (_stx152698_)
        (let* ((_e152699152709_ _stx152698_)
               (_E152701152713_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152699152709_)))
               (_E152700152735_
                (lambda ()
                  (if (gx#stx-pair? _e152699152709_)
                      (let ((_e152702152717_ (gx#syntax-e _e152699152709_)))
                        (let ((_hd152703152720_ (##car _e152702152717_))
                              (_tl152704152722_ (##cdr _e152702152717_)))
                          (if (gx#stx-pair? _tl152704152722_)
                              (let ((_e152705152725_
                                     (gx#syntax-e _tl152704152722_)))
                                (let ((_hd152706152728_
                                       (##car _e152705152725_))
                                      (_tl152707152730_
                                       (##cdr _e152705152725_)))
                                  (let ((_expr152733_ _hd152706152728_))
                                    (if (gx#stx-null? _tl152707152730_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr152733_)
                                            (_E152701152713_))
                                        (_E152701152713_)))))
                              (_E152701152713_))))
                      (_E152701152713_)))))
          (_E152700152735_))))
    (define gx#core-expand-quote%
      (lambda (_stx152657_)
        (let* ((_e152658152668_ _stx152657_)
               (_E152660152672_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152658152668_)))
               (_E152659152694_
                (lambda ()
                  (if (gx#stx-pair? _e152658152668_)
                      (let ((_e152661152676_ (gx#syntax-e _e152658152668_)))
                        (let ((_hd152662152679_ (##car _e152661152676_))
                              (_tl152663152681_ (##cdr _e152661152676_)))
                          (if (gx#stx-pair? _tl152663152681_)
                              (let ((_e152664152684_
                                     (gx#syntax-e _tl152663152681_)))
                                (let ((_hd152665152687_
                                       (##car _e152664152684_))
                                      (_tl152666152689_
                                       (##cdr _e152664152684_)))
                                  (let ((_e152692_ _hd152665152687_))
                                    (if (gx#stx-null? _tl152666152689_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e152692_)
                                                         '()))
                                             (gx#stx-source _stx152657_))
                                            (_E152660152672_))
                                        (_E152660152672_)))))
                              (_E152660152672_))))
                      (_E152660152672_)))))
          (_E152659152694_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx152616_)
        (let* ((_e152617152627_ _stx152616_)
               (_E152619152631_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152617152627_)))
               (_E152618152653_
                (lambda ()
                  (if (gx#stx-pair? _e152617152627_)
                      (let ((_e152620152635_ (gx#syntax-e _e152617152627_)))
                        (let ((_hd152621152638_ (##car _e152620152635_))
                              (_tl152622152640_ (##cdr _e152620152635_)))
                          (if (gx#stx-pair? _tl152622152640_)
                              (let ((_e152623152643_
                                     (gx#syntax-e _tl152622152640_)))
                                (let ((_hd152624152646_
                                       (##car _e152623152643_))
                                      (_tl152625152648_
                                       (##cdr _e152623152643_)))
                                  (let ((_e152651_ _hd152624152646_))
                                    (if (gx#stx-null? _tl152625152648_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e152651_)
                                                         '()))
                                             (gx#stx-source _stx152616_))
                                            (_E152619152631_))
                                        (_E152619152631_)))))
                              (_E152619152631_))))
                      (_E152619152631_)))))
          (_E152618152653_))))
    (define gx#core-expand-call%
      (lambda (_stx152573_)
        (let* ((_e152574152584_ _stx152573_)
               (_E152576152588_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152574152584_)))
               (_E152575152612_
                (lambda ()
                  (if (gx#stx-pair? _e152574152584_)
                      (let ((_e152577152592_ (gx#syntax-e _e152574152584_)))
                        (let ((_hd152578152595_ (##car _e152577152592_))
                              (_tl152579152597_ (##cdr _e152577152592_)))
                          (if (gx#stx-pair? _tl152579152597_)
                              (let ((_e152580152600_
                                     (gx#syntax-e _tl152579152597_)))
                                (let ((_hd152581152603_
                                       (##car _e152580152600_))
                                      (_tl152582152605_
                                       (##cdr _e152580152600_)))
                                  (let* ((_rator152608_ _hd152581152603_)
                                         (_args152610_ _tl152582152605_))
                                    (if (gx#stx-list? _args152610_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator152608_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args152610_))
                                         (gx#stx-source _stx152573_))
                                        (_E152576152588_)))))
                              (_E152576152588_))))
                      (_E152576152588_)))))
          (_E152575152612_))))
    (define gx#core-expand-if%
      (lambda (_stx152506_)
        (let* ((_e152507152523_ _stx152506_)
               (_E152509152527_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152507152523_)))
               (_E152508152569_
                (lambda ()
                  (if (gx#stx-pair? _e152507152523_)
                      (let ((_e152510152531_ (gx#syntax-e _e152507152523_)))
                        (let ((_hd152511152534_ (##car _e152510152531_))
                              (_tl152512152536_ (##cdr _e152510152531_)))
                          (if (gx#stx-pair? _tl152512152536_)
                              (let ((_e152513152539_
                                     (gx#syntax-e _tl152512152536_)))
                                (let ((_hd152514152542_
                                       (##car _e152513152539_))
                                      (_tl152515152544_
                                       (##cdr _e152513152539_)))
                                  (let ((_test152547_ _hd152514152542_))
                                    (if (gx#stx-pair? _tl152515152544_)
                                        (let ((_e152516152549_
                                               (gx#syntax-e _tl152515152544_)))
                                          (let ((_hd152517152552_
                                                 (##car _e152516152549_))
                                                (_tl152518152554_
                                                 (##cdr _e152516152549_)))
                                            (let ((_K152557_ _hd152517152552_))
                                              (if (gx#stx-pair?
                                                   _tl152518152554_)
                                                  (let ((_e152519152559_
                                                         (gx#syntax-e
                                                          _tl152518152554_)))
                                                    (let ((_hd152520152562_
                                                           (##car _e152519152559_))
                                                          (_tl152521152564_
                                                           (##cdr _e152519152559_)))
                                                      (let ((_E152567_
                                                             _hd152520152562_))
                                                        (if (gx#stx-null?
                                                             _tl152521152564_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test152547_)
                                     (cons (gx#core-expand-expression
                                            _K152557_)
                                           (cons (gx#core-expand-expression
                                                  _E152567_)
                                                 '()))))
                         (gx#stx-source _stx152506_))
                        (_E152509152527_))
                    (_E152509152527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152509152527_)))))
                                        (_E152509152527_)))))
                              (_E152509152527_))))
                      (_E152509152527_)))))
          (_E152508152569_))))
    (define gx#core-expand-ref%
      (lambda (_stx152465_)
        (let* ((_e152466152476_ _stx152465_)
               (_E152468152480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152466152476_)))
               (_E152467152502_
                (lambda ()
                  (if (gx#stx-pair? _e152466152476_)
                      (let ((_e152469152484_ (gx#syntax-e _e152466152476_)))
                        (let ((_hd152470152487_ (##car _e152469152484_))
                              (_tl152471152489_ (##cdr _e152469152484_)))
                          (if (gx#stx-pair? _tl152471152489_)
                              (let ((_e152472152492_
                                     (gx#syntax-e _tl152471152489_)))
                                (let ((_hd152473152495_
                                       (##car _e152472152492_))
                                      (_tl152474152497_
                                       (##cdr _e152472152492_)))
                                  (let ((_id152500_ _hd152473152495_))
                                    (if (gx#stx-null? _tl152474152497_)
                                        (if (gx#identifier? _id152500_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id152500_
                                                          _stx152465_)
                                                         '()))
                                             (gx#stx-source _stx152465_))
                                            (_E152468152480_))
                                        (_E152468152480_)))))
                              (_E152468152480_))))
                      (_E152468152480_)))))
          (_E152467152502_))))
    (define gx#core-expand-setq%
      (lambda (_stx152411_)
        (let* ((_e152412152425_ _stx152411_)
               (_E152414152429_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152412152425_)))
               (_E152413152461_
                (lambda ()
                  (if (gx#stx-pair? _e152412152425_)
                      (let ((_e152415152433_ (gx#syntax-e _e152412152425_)))
                        (let ((_hd152416152436_ (##car _e152415152433_))
                              (_tl152417152438_ (##cdr _e152415152433_)))
                          (if (gx#stx-pair? _tl152417152438_)
                              (let ((_e152418152441_
                                     (gx#syntax-e _tl152417152438_)))
                                (let ((_hd152419152444_
                                       (##car _e152418152441_))
                                      (_tl152420152446_
                                       (##cdr _e152418152441_)))
                                  (let ((_id152449_ _hd152419152444_))
                                    (if (gx#stx-pair? _tl152420152446_)
                                        (let ((_e152421152451_
                                               (gx#syntax-e _tl152420152446_)))
                                          (let ((_hd152422152454_
                                                 (##car _e152421152451_))
                                                (_tl152423152456_
                                                 (##cdr _e152421152451_)))
                                            (let ((_expr152459_
                                                   _hd152422152454_))
                                              (if (gx#stx-null?
                                                   _tl152423152456_)
                                                  (if (gx#identifier?
                                                       _id152449_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id152449_
                            _stx152411_)
                           (cons (gx#core-expand-expression _expr152459_)
                                 '())))
               (gx#stx-source _stx152411_))
              (_E152414152429_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152414152429_)))))
                                        (_E152414152429_)))))
                              (_E152414152429_))))
                      (_E152414152429_)))))
          (_E152413152461_))))
    (define gx#macro-expand-extern
      (lambda (_stx152259_)
        (letrec ((_generate152261_
                  (lambda (_body152291_)
                    (let _lp152293_ ((_rest152295_ _body152291_)
                                     (_ns152296_
                                      (gx#core-context-namespace__0))
                                     (_r152297_ '()))
                      (let* ((_e152298152313_ _rest152295_)
                             (_E152311152317_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e152298152313_)))
                             (_E152307152321_
                              (lambda ()
                                (if (gx#stx-null? _e152298152313_)
                                    (if '#t
                                        (reverse _r152297_)
                                        (_E152311152317_))
                                    (_E152311152317_))))
                             (_E152300152378_
                              (lambda ()
                                (if (gx#stx-pair? _e152298152313_)
                                    (let ((_e152308152325_
                                           (gx#syntax-e _e152298152313_)))
                                      (let ((_hd152309152328_
                                             (##car _e152308152325_))
                                            (_tl152310152330_
                                             (##cdr _e152308152325_)))
                                        (let* ((_hd152333_ _hd152309152328_)
                                               (_rest152335_ _tl152310152330_))
                                          (if '#t
                                              (if (gx#identifier? _hd152333_)
                                                  (_lp152293_
                                                   _rest152335_
                                                   _ns152296_
                                                   (cons (cons _hd152333_
                                                               (cons (if _ns152296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd152333_
                                  _ns152296_
                                  '"#"
                                  _hd152333_)
                                 _hd152333_)
                             '()))
                 _r152297_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e152336152346_
                                                          _hd152333_)
                                                         (_E152338152350_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e152336152346_)))
                                                         (_E152337152374_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e152336152346_)
                        (let ((_e152339152354_ (gx#syntax-e _e152336152346_)))
                          (let ((_hd152340152357_ (##car _e152339152354_))
                                (_tl152341152359_ (##cdr _e152339152354_)))
                            (let ((_id152362_ _hd152340152357_))
                              (if (gx#stx-pair? _tl152341152359_)
                                  (let ((_e152342152364_
                                         (gx#syntax-e _tl152341152359_)))
                                    (let ((_hd152343152367_
                                           (##car _e152342152364_))
                                          (_tl152344152369_
                                           (##cdr _e152342152364_)))
                                      (let ((_eid152372_ _hd152343152367_))
                                        (if (gx#stx-null? _tl152344152369_)
                                            (if (and (gx#identifier?
                                                      _id152362_)
                                                     (gx#identifier?
                                                      _eid152372_))
                                                (_lp152293_
                                                 _rest152335_
                                                 _ns152296_
                                                 (cons (cons _id152362_
                                                             (cons _eid152372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r152297_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152338152350_))
                                            (_E152338152350_)))))
                                  (_E152338152350_)))))
                        (_E152338152350_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152337152374_)))
                                              (_E152307152321_)))))
                                    (_E152307152321_))))
                             (_E152299152407_
                              (lambda ()
                                (if (gx#stx-pair? _e152298152313_)
                                    (let ((_e152301152382_
                                           (gx#syntax-e _e152298152313_)))
                                      (let ((_hd152302152385_
                                             (##car _e152301152382_))
                                            (_tl152303152387_
                                             (##cdr _e152301152382_)))
                                        (if (eq? (gx#stx-e _hd152302152385_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl152303152387_)
                                                (let ((_e152304152390_
                                                       (gx#syntax-e
                                                        _tl152303152387_)))
                                                  (let ((_hd152305152393_
                                                         (##car _e152304152390_))
                                                        (_tl152306152395_
                                                         (##cdr _e152304152390_)))
                                                    (let* ((_ns152398_
                                                            _hd152305152393_)
                                                           (_rest152400_
                                                            _tl152306152395_))
                                                      (if '#t
                                                          (let ((_ns152405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns152398_)
                             (symbol->string (gx#stx-e _ns152398_))
                             (if (or (gx#stx-string? _ns152398_)
                                     (gx#stx-false? _ns152398_))
                                 (gx#stx-e _ns152398_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx152259_
                                  _ns152398_)))))
                    (_lp152293_ _rest152400_ _ns152405_ _r152297_))
                  (_E152300152378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152300152378_))
                                            (_E152300152378_))))
                                    (_E152300152378_)))))
                        (_E152299152407_))))))
          (let* ((_e152262152269_ _stx152259_)
                 (_E152264152273_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152262152269_)))
                 (_E152263152287_
                  (lambda ()
                    (if (gx#stx-pair? _e152262152269_)
                        (let ((_e152265152277_ (gx#syntax-e _e152262152269_)))
                          (let ((_hd152266152280_ (##car _e152265152277_))
                                (_tl152267152282_ (##cdr _e152265152277_)))
                            (let ((_body152285_ _tl152267152282_))
                              (if (gx#stx-list? _body152285_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate152261_ _body152285_))
                                  (_E152264152273_)))))
                        (_E152264152273_)))))
            (_E152263152287_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx152205_)
        (let* ((_e152206152219_ _stx152205_)
               (_E152208152223_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152206152219_)))
               (_E152207152255_
                (lambda ()
                  (if (gx#stx-pair? _e152206152219_)
                      (let ((_e152209152227_ (gx#syntax-e _e152206152219_)))
                        (let ((_hd152210152230_ (##car _e152209152227_))
                              (_tl152211152232_ (##cdr _e152209152227_)))
                          (if (gx#stx-pair? _tl152211152232_)
                              (let ((_e152212152235_
                                     (gx#syntax-e _tl152211152232_)))
                                (let ((_hd152213152238_
                                       (##car _e152212152235_))
                                      (_tl152214152240_
                                       (##cdr _e152212152235_)))
                                  (let ((_hd152243_ _hd152213152238_))
                                    (if (gx#stx-pair? _tl152214152240_)
                                        (let ((_e152215152245_
                                               (gx#syntax-e _tl152214152240_)))
                                          (let ((_hd152216152248_
                                                 (##car _e152215152245_))
                                                (_tl152217152250_
                                                 (##cdr _e152215152245_)))
                                            (let ((_expr152253_
                                                   _hd152216152248_))
                                              (if (gx#stx-null?
                                                   _tl152217152250_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd152243_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd152243_)
                          (cons _expr152253_ '())))
              (_E152208152223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152208152223_)))))
                                        (_E152208152223_)))))
                              (_E152208152223_))))
                      (_E152208152223_)))))
          (_E152207152255_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx152151_)
        (let* ((_e152152152165_ _stx152151_)
               (_E152154152169_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152152152165_)))
               (_E152153152201_
                (lambda ()
                  (if (gx#stx-pair? _e152152152165_)
                      (let ((_e152155152173_ (gx#syntax-e _e152152152165_)))
                        (let ((_hd152156152176_ (##car _e152155152173_))
                              (_tl152157152178_ (##cdr _e152155152173_)))
                          (if (gx#stx-pair? _tl152157152178_)
                              (let ((_e152158152181_
                                     (gx#syntax-e _tl152157152178_)))
                                (let ((_hd152159152184_
                                       (##car _e152158152181_))
                                      (_tl152160152186_
                                       (##cdr _e152158152181_)))
                                  (let ((_hd152189_ _hd152159152184_))
                                    (if (gx#stx-pair? _tl152160152186_)
                                        (let ((_e152161152191_
                                               (gx#syntax-e _tl152160152186_)))
                                          (let ((_hd152162152194_
                                                 (##car _e152161152191_))
                                                (_tl152163152196_
                                                 (##cdr _e152161152191_)))
                                            (let ((_expr152199_
                                                   _hd152162152194_))
                                              (if (gx#stx-null?
                                                   _tl152163152196_)
                                                  (if (gx#identifier?
                                                       _hd152189_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd152189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr152199_ '())))
              (_E152154152169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152154152169_)))))
                                        (_E152154152169_)))))
                              (_E152154152169_))))
                      (_E152154152169_)))))
          (_E152153152201_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx152097_)
        (let* ((_e152098152111_ _stx152097_)
               (_E152100152115_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152098152111_)))
               (_E152099152147_
                (lambda ()
                  (if (gx#stx-pair? _e152098152111_)
                      (let ((_e152101152119_ (gx#syntax-e _e152098152111_)))
                        (let ((_hd152102152122_ (##car _e152101152119_))
                              (_tl152103152124_ (##cdr _e152101152119_)))
                          (if (gx#stx-pair? _tl152103152124_)
                              (let ((_e152104152127_
                                     (gx#syntax-e _tl152103152124_)))
                                (let ((_hd152105152130_
                                       (##car _e152104152127_))
                                      (_tl152106152132_
                                       (##cdr _e152104152127_)))
                                  (let ((_id152135_ _hd152105152130_))
                                    (if (gx#stx-pair? _tl152106152132_)
                                        (let ((_e152107152137_
                                               (gx#syntax-e _tl152106152132_)))
                                          (let ((_hd152108152140_
                                                 (##car _e152107152137_))
                                                (_tl152109152142_
                                                 (##cdr _e152107152137_)))
                                            (let ((_alias-id152145_
                                                   _hd152108152140_))
                                              (if (gx#stx-null?
                                                   _tl152109152142_)
                                                  (if (and (gx#identifier?
                                                            _id152135_)
                                                           (gx#identifier?
                                                            _alias-id152145_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id152135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id152145_ '())))
              (_E152100152115_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152100152115_)))))
                                        (_E152100152115_)))))
                              (_E152100152115_))))
                      (_E152100152115_)))))
          (_E152099152147_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx152054_)
        (let* ((_e152055152065_ _stx152054_)
               (_E152057152069_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152055152065_)))
               (_E152056152093_
                (lambda ()
                  (if (gx#stx-pair? _e152055152065_)
                      (let ((_e152058152073_ (gx#syntax-e _e152055152065_)))
                        (let ((_hd152059152076_ (##car _e152058152073_))
                              (_tl152060152078_ (##cdr _e152058152073_)))
                          (if (gx#stx-pair? _tl152060152078_)
                              (let ((_e152061152081_
                                     (gx#syntax-e _tl152060152078_)))
                                (let ((_hd152062152084_
                                       (##car _e152061152081_))
                                      (_tl152063152086_
                                       (##cdr _e152061152081_)))
                                  (let* ((_hd152089_ _hd152062152084_)
                                         (_body152091_ _tl152063152086_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd152089_)
                                             (gx#stx-list? _body152091_)
                                             (not (gx#stx-null? _body152091_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd152089_)
                                         _body152091_)
                                        (_E152057152069_)))))
                              (_E152057152069_))))
                      (_E152057152069_)))))
          (_E152056152093_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx151990_)
        (letrec ((_generate151992_
                  (lambda (_clause152022_)
                    (let* ((_e152023152030_ _clause152022_)
                           (_E152025152034_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx151990_
                               _clause152022_)))
                           (_E152024152050_
                            (lambda ()
                              (if (gx#stx-pair? _e152023152030_)
                                  (let ((_e152026152038_
                                         (gx#syntax-e _e152023152030_)))
                                    (let ((_hd152027152041_
                                           (##car _e152026152038_))
                                          (_tl152028152043_
                                           (##cdr _e152026152038_)))
                                      (let* ((_hd152046_ _hd152027152041_)
                                             (_body152048_ _tl152028152043_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd152046_)
                                                 (gx#stx-list? _body152048_)
                                                 (not (gx#stx-null?
                                                       _body152048_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd152046_)
                                                   _body152048_)
                                             (gx#stx-source _clause152022_))
                                            (_E152025152034_)))))
                                  (_E152025152034_)))))
                      (_E152024152050_)))))
          (let* ((_e151993152000_ _stx151990_)
                 (_E151995152004_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151993152000_)))
                 (_E151994152018_
                  (lambda ()
                    (if (gx#stx-pair? _e151993152000_)
                        (let ((_e151996152008_ (gx#syntax-e _e151993152000_)))
                          (let ((_hd151997152011_ (##car _e151996152008_))
                                (_tl151998152013_ (##cdr _e151996152008_)))
                            (let ((_clauses152016_ _tl151998152013_))
                              (if (gx#stx-list? _clauses152016_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate151992_
                                    _clauses152016_))
                                  (_E151995152004_)))))
                        (_E151995152004_)))))
            (_E151994152018_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx151891_ _form151892_)
        (letrec ((_generate151894_
                  (lambda (_bind151937_)
                    (let* ((_e151938151948_ _bind151937_)
                           (_E151940151952_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx151891_
                               _bind151937_)))
                           (_E151939151976_
                            (lambda ()
                              (if (gx#stx-pair? _e151938151948_)
                                  (let ((_e151941151956_
                                         (gx#syntax-e _e151938151948_)))
                                    (let ((_hd151942151959_
                                           (##car _e151941151956_))
                                          (_tl151943151961_
                                           (##cdr _e151941151956_)))
                                      (let ((_ids151964_ _hd151942151959_))
                                        (if (gx#stx-pair? _tl151943151961_)
                                            (let ((_e151944151966_
                                                   (gx#syntax-e
                                                    _tl151943151961_)))
                                              (let ((_hd151945151969_
                                                     (##car _e151944151966_))
                                                    (_tl151946151971_
                                                     (##cdr _e151944151966_)))
                                                (let ((_expr151974_
                                                       _hd151945151969_))
                                                  (if (gx#stx-null?
                                                       _tl151946151971_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids151964_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids151964_)
                        (cons _expr151974_ '()))
                  (_E151940151952_))
              (_E151940151952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E151940151952_)))))
                                  (_E151940151952_)))))
                      (_E151939151976_)))))
          (let* ((_e151895151905_ _stx151891_)
                 (_E151897151909_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151895151905_)))
                 (_E151896151933_
                  (lambda ()
                    (if (gx#stx-pair? _e151895151905_)
                        (let ((_e151898151913_ (gx#syntax-e _e151895151905_)))
                          (let ((_hd151899151916_ (##car _e151898151913_))
                                (_tl151900151918_ (##cdr _e151898151913_)))
                            (if (gx#stx-pair? _tl151900151918_)
                                (let ((_e151901151921_
                                       (gx#syntax-e _tl151900151918_)))
                                  (let ((_hd151902151924_
                                         (##car _e151901151921_))
                                        (_tl151903151926_
                                         (##cdr _e151901151921_)))
                                    (let* ((_hd151929_ _hd151902151924_)
                                           (_body151931_ _tl151903151926_))
                                      (if (and (gx#stx-list? _hd151929_)
                                               (gx#stx-list? _body151931_)
                                               (not (gx#stx-null?
                                                     _body151931_)))
                                          (gx#core-cons*
                                           _form151892_
                                           (gx#stx-map1
                                            _generate151894_
                                            _hd151929_)
                                           _body151931_)
                                          (_E151897151909_)))))
                                (_E151897151909_))))
                        (_E151897151909_)))))
            (_E151896151933_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx151983_)
        (let ((_form151985_ '%#let-values))
          (gx#macro-expand-let-values__% _stx151983_ _form151985_))))
    (define gx#macro-expand-let-values
      (lambda _g158936_
        (let ((_g158935_ (##length _g158936_)))
          (cond ((##fx= _g158935_ 1)
                 (apply (lambda (_stx151983_)
                          (gx#macro-expand-let-values__0 _stx151983_))
                        _g158936_))
                ((##fx= _g158935_ 2)
                 (apply (lambda (_stx151987_ _form151988_)
                          (gx#macro-expand-let-values__%
                           _stx151987_
                           _form151988_))
                        _g158936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g158936_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx151888_)
        (gx#macro-expand-let-values__% _stx151888_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx151886_)
        (gx#macro-expand-let-values__% _stx151886_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx151777_)
        (let* ((_e151778151804_ _stx151777_)
               (_E151790151808_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151778151804_)))
               (_E151780151850_
                (lambda ()
                  (if (gx#stx-pair? _e151778151804_)
                      (let ((_e151791151812_ (gx#syntax-e _e151778151804_)))
                        (let ((_hd151792151815_ (##car _e151791151812_))
                              (_tl151793151817_ (##cdr _e151791151812_)))
                          (if (gx#stx-pair? _tl151793151817_)
                              (let ((_e151794151820_
                                     (gx#syntax-e _tl151793151817_)))
                                (let ((_hd151795151823_
                                       (##car _e151794151820_))
                                      (_tl151796151825_
                                       (##cdr _e151794151820_)))
                                  (let ((_test151828_ _hd151795151823_))
                                    (if (gx#stx-pair? _tl151796151825_)
                                        (let ((_e151797151830_
                                               (gx#syntax-e _tl151796151825_)))
                                          (let ((_hd151798151833_
                                                 (##car _e151797151830_))
                                                (_tl151799151835_
                                                 (##cdr _e151797151830_)))
                                            (let ((_K151838_ _hd151798151833_))
                                              (if (gx#stx-pair?
                                                   _tl151799151835_)
                                                  (let ((_e151800151840_
                                                         (gx#syntax-e
                                                          _tl151799151835_)))
                                                    (let ((_hd151801151843_
                                                           (##car _e151800151840_))
                                                          (_tl151802151845_
                                                           (##cdr _e151800151840_)))
                                                      (let ((_E151848_
                                                             _hd151801151843_))
                                                        (if (gx#stx-null?
                                                             _tl151802151845_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test151828_
                         _K151838_
                         _E151848_)
                        (_E151790151808_))
                    (_E151790151808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151790151808_)))))
                                        (_E151790151808_)))))
                              (_E151790151808_))))
                      (_E151790151808_))))
               (_E151779151882_
                (lambda ()
                  (if (gx#stx-pair? _e151778151804_)
                      (let ((_e151781151854_ (gx#syntax-e _e151778151804_)))
                        (let ((_hd151782151857_ (##car _e151781151854_))
                              (_tl151783151859_ (##cdr _e151781151854_)))
                          (if (gx#stx-pair? _tl151783151859_)
                              (let ((_e151784151862_
                                     (gx#syntax-e _tl151783151859_)))
                                (let ((_hd151785151865_
                                       (##car _e151784151862_))
                                      (_tl151786151867_
                                       (##cdr _e151784151862_)))
                                  (let ((_test151870_ _hd151785151865_))
                                    (if (gx#stx-pair? _tl151786151867_)
                                        (let ((_e151787151872_
                                               (gx#syntax-e _tl151786151867_)))
                                          (let ((_hd151788151875_
                                                 (##car _e151787151872_))
                                                (_tl151789151877_
                                                 (##cdr _e151787151872_)))
                                            (let ((_K151880_ _hd151788151875_))
                                              (if (gx#stx-null?
                                                   _tl151789151877_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test151870_
                                                       _K151880_
                                                       '#!void)
                                                      (_E151780151850_))
                                                  (_E151780151850_)))))
                                        (_E151780151850_)))))
                              (_E151780151850_))))
                      (_E151780151850_)))))
          (_E151779151882_))))
    (define gx#free-identifier=?
      (lambda (_xid151765_ _yid151766_)
        (let ((_xe151768_ (gx#resolve-identifier__0 _xid151765_))
              (_ye151769_ (gx#resolve-identifier__0 _yid151766_)))
          (if (and _xe151768_ _ye151769_)
              (let ((_$e151771_ (eq? _xe151768_ _ye151769_)))
                (if _$e151771_
                    _$e151771_
                    (if (##structure-instance-of? _xe151768_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye151769_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe151768_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye151769_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe151768_ _ye151769_)
                  '#f
                  (gx#stx-eq? _xid151765_ _yid151766_))))))
    (define gx#bound-identifier=?
      (lambda (_xid151749_ _yid151750_)
        (letrec ((_context151752_
                  (lambda (_e151763_)
                    (if (##structure-direct-instance-of?
                         _e151763_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e151763_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks151753_
                  (lambda (_e151761_)
                    (if (symbol? _e151761_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e151761_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e151761_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e151761_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap151754_
                  (lambda (_e151759_)
                    (if (symbol? _e151759_)
                        _e151759_
                        (gx#syntax-local-unwrap _e151759_)))))
          (let ((_x151756_ (_unwrap151754_ _xid151749_))
                (_y151757_ (_unwrap151754_ _yid151750_)))
            (if (gx#stx-eq? _x151756_ _y151757_)
                (if (eq? (_context151752_ _x151756_)
                         (_context151752_ _y151757_))
                    (equal? (_marks151753_ _x151756_)
                            (_marks151753_ _y151757_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx151747_)
        (if (gx#identifier? _stx151747_)
            (gx#core-identifier=? _stx151747_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx151745_)
        (if (gx#identifier? _stx151745_)
            (gx#core-identifier=? _stx151745_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x151743_)
        (if (gx#identifier? _x151743_)
            (if (not (gx#underscore? _x151743_)) _x151743_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx151689_ _where151690_)
        (let _lp151692_ ((_rest151694_ (gx#syntax->list _stx151689_)))
          (let* ((_rest151695151703_ _rest151694_)
                 (_else151697151711_ (lambda () '#t))
                 (_K151699151721_
                  (lambda (_rest151714_ _hd151715_)
                    (if (not (gx#identifier? _hd151715_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where151690_
                         _hd151715_)
                        (if (find (lambda (_g151716151718_)
                                    (gx#bound-identifier=?
                                     _g151716151718_
                                     _hd151715_))
                                  _rest151714_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where151690_
                             _hd151715_)
                            (_lp151692_ _rest151714_))))))
            (if (##pair? _rest151695151703_)
                (let ((_hd151700151724_ (##car _rest151695151703_))
                      (_tl151701151726_ (##cdr _rest151695151703_)))
                  (let* ((_hd151729_ _hd151700151724_)
                         (_rest151731_ _tl151701151726_))
                    (_K151699151721_ _rest151731_ _hd151729_)))
                (_else151697151711_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx151736_)
        (let ((_where151738_ _stx151736_))
          (gx#check-duplicate-identifiers__% _stx151736_ _where151738_))))
    (define gx#check-duplicate-identifiers
      (lambda _g158938_
        (let ((_g158937_ (##length _g158938_)))
          (cond ((##fx= _g158937_ 1)
                 (apply (lambda (_stx151736_)
                          (gx#check-duplicate-identifiers__0 _stx151736_))
                        _g158938_))
                ((##fx= _g158937_ 2)
                 (apply (lambda (_stx151740_ _where151741_)
                          (gx#check-duplicate-identifiers__%
                           _stx151740_
                           _where151741_))
                        _g158938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g158938_))))))
    (define gx#core-bind-values?
      (lambda (_stx151681_)
        (gx#stx-andmap
         (lambda (_x151683_)
           (let ((_$e151685_ (gx#identifier? _x151683_)))
             (if _$e151685_ _$e151685_ (gx#stx-false? _x151683_))))
         _stx151681_)))
    (define gx#core-bind-values!__%
      (lambda (_stx151645_ _rebind?151646_ _phi151647_ _ctx151648_)
        (gx#stx-for-each1
         (lambda (_id151650_)
           (if (gx#identifier? _id151650_)
               (gx#core-bind-runtime!__%
                _id151650_
                _rebind?151646_
                _phi151647_
                _ctx151648_)
               '#!void))
         _stx151645_)))
    (define gx#core-bind-values!__0
      (lambda (_stx151655_)
        (let* ((_rebind?151657_ '#f)
               (_phi151659_ (gx#current-expander-phi))
               (_ctx151661_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151655_
           _rebind?151657_
           _phi151659_
           _ctx151661_))))
    (define gx#core-bind-values!__1
      (lambda (_stx151663_ _rebind?151664_)
        (let* ((_phi151666_ (gx#current-expander-phi))
               (_ctx151668_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151663_
           _rebind?151664_
           _phi151666_
           _ctx151668_))))
    (define gx#core-bind-values!__2
      (lambda (_stx151670_ _rebind?151671_ _phi151672_)
        (let ((_ctx151674_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151670_
           _rebind?151671_
           _phi151672_
           _ctx151674_))))
    (define gx#core-bind-values!
      (lambda _g158940_
        (let ((_g158939_ (##length _g158940_)))
          (cond ((##fx= _g158939_ 1)
                 (apply (lambda (_stx151655_)
                          (gx#core-bind-values!__0 _stx151655_))
                        _g158940_))
                ((##fx= _g158939_ 2)
                 (apply (lambda (_stx151663_ _rebind?151664_)
                          (gx#core-bind-values!__1
                           _stx151663_
                           _rebind?151664_))
                        _g158940_))
                ((##fx= _g158939_ 3)
                 (apply (lambda (_stx151670_ _rebind?151671_ _phi151672_)
                          (gx#core-bind-values!__2
                           _stx151670_
                           _rebind?151671_
                           _phi151672_))
                        _g158940_))
                ((##fx= _g158939_ 4)
                 (apply (lambda (_stx151676_
                                 _rebind?151677_
                                 _phi151678_
                                 _ctx151679_)
                          (gx#core-bind-values!__%
                           _stx151676_
                           _rebind?151677_
                           _phi151678_
                           _ctx151679_))
                        _g158940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g158940_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx151640_)
        (gx#stx-map1
         (lambda (_x151642_)
           (if (gx#identifier? _x151642_)
               (gx#core-quote-syntax__0 _x151642_)
               '#f))
         _stx151640_)))
    (define gx#core-runtime-ref?
      (lambda (_stx151633_)
        (if (gx#identifier? _stx151633_)
            (let* ((_bind151635_ (gx#resolve-identifier__0 _stx151633_))
                   (_$e151637_ (not _bind151635_)))
              (if _$e151637_
                  _$e151637_
                  (##structure-instance-of?
                   _bind151635_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id151625_ _form151626_)
        (let ((_bind151628_ (gx#resolve-identifier__0 _id151625_)))
          (if (##structure-instance-of? _bind151628_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id151625_)
              (if (not _bind151628_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id151625_)))
                      (gx#core-quote-syntax__0 _id151625_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form151626_
                       _id151625_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form151626_
                   _id151625_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id151584_ _rebind?151585_ _phi151586_ _ctx151587_)
        (let* ((_key151589_ (gx#core-identifier-key _id151584_))
               (_eid151591_
                (gx#make-binding-id__%
                 _key151589_
                 '#f
                 _phi151586_
                 _ctx151587_))
               (_bind151593_
                (if (##structure-instance-of?
                     _ctx151587_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151591_
                     _key151589_
                     _phi151586_
                     _ctx151587_)
                    (if (##structure-instance-of?
                         _ctx151587_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151591_
                         _key151589_
                         _phi151586_)
                        (if (##structure-instance-of?
                             _ctx151587_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid151591_
                             _key151589_
                             _phi151586_)
                            (##structure
                             gx#runtime-binding::t
                             _eid151591_
                             _key151589_
                             _phi151586_))))))
          (gx#bind-identifier!__%
           _id151584_
           _bind151593_
           _rebind?151585_
           _phi151586_
           _ctx151587_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id151599_)
        (let* ((_rebind?151601_ '#f)
               (_phi151603_ (gx#current-expander-phi))
               (_ctx151605_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151599_
           _rebind?151601_
           _phi151603_
           _ctx151605_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id151607_ _rebind?151608_)
        (let* ((_phi151610_ (gx#current-expander-phi))
               (_ctx151612_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151607_
           _rebind?151608_
           _phi151610_
           _ctx151612_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id151614_ _rebind?151615_ _phi151616_)
        (let ((_ctx151618_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151614_
           _rebind?151615_
           _phi151616_
           _ctx151618_))))
    (define gx#core-bind-runtime!
      (lambda _g158942_
        (let ((_g158941_ (##length _g158942_)))
          (cond ((##fx= _g158941_ 1)
                 (apply (lambda (_id151599_)
                          (gx#core-bind-runtime!__0 _id151599_))
                        _g158942_))
                ((##fx= _g158941_ 2)
                 (apply (lambda (_id151607_ _rebind?151608_)
                          (gx#core-bind-runtime!__1
                           _id151607_
                           _rebind?151608_))
                        _g158942_))
                ((##fx= _g158941_ 3)
                 (apply (lambda (_id151614_ _rebind?151615_ _phi151616_)
                          (gx#core-bind-runtime!__2
                           _id151614_
                           _rebind?151615_
                           _phi151616_))
                        _g158942_))
                ((##fx= _g158941_ 4)
                 (apply (lambda (_id151620_
                                 _rebind?151621_
                                 _phi151622_
                                 _ctx151623_)
                          (gx#core-bind-runtime!__%
                           _id151620_
                           _rebind?151621_
                           _phi151622_
                           _ctx151623_))
                        _g158942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g158942_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id151539_ _eid151540_ _rebind?151541_ _phi151542_ _ctx151543_)
        (let* ((_key151545_ (gx#core-identifier-key _id151539_))
               (_bind151547_
                (if (##structure-instance-of?
                     _ctx151543_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151540_
                     _key151545_
                     _phi151542_
                     _ctx151543_)
                    (if (##structure-instance-of?
                         _ctx151543_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151540_
                         _key151545_
                         _phi151542_)
                        (##structure
                         gx#runtime-binding::t
                         _eid151540_
                         _key151545_
                         _phi151542_)))))
          (gx#bind-identifier!__%
           _id151539_
           _bind151547_
           _rebind?151541_
           _phi151542_
           _ctx151543_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id151553_ _eid151554_)
        (let* ((_rebind?151556_ '#f)
               (_phi151558_ (gx#current-expander-phi))
               (_ctx151560_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151553_
           _eid151554_
           _rebind?151556_
           _phi151558_
           _ctx151560_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id151562_ _eid151563_ _rebind?151564_)
        (let* ((_phi151566_ (gx#current-expander-phi))
               (_ctx151568_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151562_
           _eid151563_
           _rebind?151564_
           _phi151566_
           _ctx151568_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id151570_ _eid151571_ _rebind?151572_ _phi151573_)
        (let ((_ctx151575_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151570_
           _eid151571_
           _rebind?151572_
           _phi151573_
           _ctx151575_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g158944_
        (let ((_g158943_ (##length _g158944_)))
          (cond ((##fx= _g158943_ 2)
                 (apply (lambda (_id151553_ _eid151554_)
                          (gx#core-bind-runtime-reference!__0
                           _id151553_
                           _eid151554_))
                        _g158944_))
                ((##fx= _g158943_ 3)
                 (apply (lambda (_id151562_ _eid151563_ _rebind?151564_)
                          (gx#core-bind-runtime-reference!__1
                           _id151562_
                           _eid151563_
                           _rebind?151564_))
                        _g158944_))
                ((##fx= _g158943_ 4)
                 (apply (lambda (_id151570_
                                 _eid151571_
                                 _rebind?151572_
                                 _phi151573_)
                          (gx#core-bind-runtime-reference!__2
                           _id151570_
                           _eid151571_
                           _rebind?151572_
                           _phi151573_))
                        _g158944_))
                ((##fx= _g158943_ 5)
                 (apply (lambda (_id151577_
                                 _eid151578_
                                 _rebind?151579_
                                 _phi151580_
                                 _ctx151581_)
                          (gx#core-bind-runtime-reference!__%
                           _id151577_
                           _eid151578_
                           _rebind?151579_
                           _phi151580_
                           _ctx151581_))
                        _g158944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g158944_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id151499_ _eid151500_ _rebind?151501_ _phi151502_ _ctx151503_)
        (gx#bind-identifier!__%
         _id151499_
         (##structure
          gx#extern-binding::t
          _eid151500_
          (gx#core-identifier-key _id151499_)
          _phi151502_)
         _rebind?151501_
         _phi151502_
         _ctx151503_)))
    (define gx#core-bind-extern!__0
      (lambda (_id151508_ _eid151509_)
        (let* ((_rebind?151511_ '#f)
               (_phi151513_ (gx#current-expander-phi))
               (_ctx151515_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151508_
           _eid151509_
           _rebind?151511_
           _phi151513_
           _ctx151515_))))
    (define gx#core-bind-extern!__1
      (lambda (_id151517_ _eid151518_ _rebind?151519_)
        (let* ((_phi151521_ (gx#current-expander-phi))
               (_ctx151523_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151517_
           _eid151518_
           _rebind?151519_
           _phi151521_
           _ctx151523_))))
    (define gx#core-bind-extern!__2
      (lambda (_id151525_ _eid151526_ _rebind?151527_ _phi151528_)
        (let ((_ctx151530_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151525_
           _eid151526_
           _rebind?151527_
           _phi151528_
           _ctx151530_))))
    (define gx#core-bind-extern!
      (lambda _g158946_
        (let ((_g158945_ (##length _g158946_)))
          (cond ((##fx= _g158945_ 2)
                 (apply (lambda (_id151508_ _eid151509_)
                          (gx#core-bind-extern!__0 _id151508_ _eid151509_))
                        _g158946_))
                ((##fx= _g158945_ 3)
                 (apply (lambda (_id151517_ _eid151518_ _rebind?151519_)
                          (gx#core-bind-extern!__1
                           _id151517_
                           _eid151518_
                           _rebind?151519_))
                        _g158946_))
                ((##fx= _g158945_ 4)
                 (apply (lambda (_id151525_
                                 _eid151526_
                                 _rebind?151527_
                                 _phi151528_)
                          (gx#core-bind-extern!__2
                           _id151525_
                           _eid151526_
                           _rebind?151527_
                           _phi151528_))
                        _g158946_))
                ((##fx= _g158945_ 5)
                 (apply (lambda (_id151532_
                                 _eid151533_
                                 _rebind?151534_
                                 _phi151535_
                                 _ctx151536_)
                          (gx#core-bind-extern!__%
                           _id151532_
                           _eid151533_
                           _rebind?151534_
                           _phi151535_
                           _ctx151536_))
                        _g158946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g158946_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id151453_ _e151454_ _rebind?151455_ _phi151456_ _ctx151457_)
        (gx#bind-identifier!__%
         _id151453_
         (let ((_key151462_ (gx#core-identifier-key _id151453_))
               (_e151463_
                (if (or (##structure-instance-of? _e151454_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e151454_
                         'gx#expander-context::t))
                    _e151454_
                    (##structure
                     gx#user-expander::t
                     _e151454_
                     _ctx151457_
                     _phi151456_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key151462_ '#t _phi151456_ _ctx151457_)
            _key151462_
            _phi151456_
            _e151463_))
         _rebind?151455_
         _phi151456_
         _ctx151457_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id151468_ _e151469_)
        (let* ((_rebind?151471_ '#f)
               (_phi151473_ (gx#current-expander-phi))
               (_ctx151475_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151468_
           _e151469_
           _rebind?151471_
           _phi151473_
           _ctx151475_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id151477_ _e151478_ _rebind?151479_)
        (let* ((_phi151481_ (gx#current-expander-phi))
               (_ctx151483_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151477_
           _e151478_
           _rebind?151479_
           _phi151481_
           _ctx151483_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id151485_ _e151486_ _rebind?151487_ _phi151488_)
        (let ((_ctx151490_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151485_
           _e151486_
           _rebind?151487_
           _phi151488_
           _ctx151490_))))
    (define gx#core-bind-syntax!
      (lambda _g158948_
        (let ((_g158947_ (##length _g158948_)))
          (cond ((##fx= _g158947_ 2)
                 (apply (lambda (_id151468_ _e151469_)
                          (gx#core-bind-syntax!__0 _id151468_ _e151469_))
                        _g158948_))
                ((##fx= _g158947_ 3)
                 (apply (lambda (_id151477_ _e151478_ _rebind?151479_)
                          (gx#core-bind-syntax!__1
                           _id151477_
                           _e151478_
                           _rebind?151479_))
                        _g158948_))
                ((##fx= _g158947_ 4)
                 (apply (lambda (_id151485_
                                 _e151486_
                                 _rebind?151487_
                                 _phi151488_)
                          (gx#core-bind-syntax!__2
                           _id151485_
                           _e151486_
                           _rebind?151487_
                           _phi151488_))
                        _g158948_))
                ((##fx= _g158947_ 5)
                 (apply (lambda (_id151492_
                                 _e151493_
                                 _rebind?151494_
                                 _phi151495_
                                 _ctx151496_)
                          (gx#core-bind-syntax!__%
                           _id151492_
                           _e151493_
                           _rebind?151494_
                           _phi151495_
                           _ctx151496_))
                        _g158948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g158948_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id151436_ _e151437_ _rebind?151438_)
        (gx#core-bind-syntax!__%
         _id151436_
         _e151437_
         _rebind?151438_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id151443_ _e151444_)
        (let ((_rebind?151446_ '#f))
          (gx#core-bind-root-syntax!__%
           _id151443_
           _e151444_
           _rebind?151446_))))
    (define gx#core-bind-root-syntax!
      (lambda _g158950_
        (let ((_g158949_ (##length _g158950_)))
          (cond ((##fx= _g158949_ 2)
                 (apply (lambda (_id151443_ _e151444_)
                          (gx#core-bind-root-syntax!__0 _id151443_ _e151444_))
                        _g158950_))
                ((##fx= _g158949_ 3)
                 (apply (lambda (_id151448_ _e151449_ _rebind?151450_)
                          (gx#core-bind-root-syntax!__%
                           _id151448_
                           _e151449_
                           _rebind?151450_))
                        _g158950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g158950_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id151394_
               _alias-id151395_
               _rebind?151396_
               _phi151397_
               _ctx151398_)
        (gx#bind-identifier!__%
         _id151394_
         (let ((_key151400_ (gx#core-identifier-key _id151394_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key151400_ '#t _phi151397_ _ctx151398_)
            _key151400_
            _phi151397_
            _alias-id151395_))
         _rebind?151396_
         _phi151397_
         _ctx151398_)))
    (define gx#core-bind-alias!__0
      (lambda (_id151405_ _alias-id151406_)
        (let* ((_rebind?151408_ '#f)
               (_phi151410_ (gx#current-expander-phi))
               (_ctx151412_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151405_
           _alias-id151406_
           _rebind?151408_
           _phi151410_
           _ctx151412_))))
    (define gx#core-bind-alias!__1
      (lambda (_id151414_ _alias-id151415_ _rebind?151416_)
        (let* ((_phi151418_ (gx#current-expander-phi))
               (_ctx151420_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151414_
           _alias-id151415_
           _rebind?151416_
           _phi151418_
           _ctx151420_))))
    (define gx#core-bind-alias!__2
      (lambda (_id151422_ _alias-id151423_ _rebind?151424_ _phi151425_)
        (let ((_ctx151427_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151422_
           _alias-id151423_
           _rebind?151424_
           _phi151425_
           _ctx151427_))))
    (define gx#core-bind-alias!
      (lambda _g158952_
        (let ((_g158951_ (##length _g158952_)))
          (cond ((##fx= _g158951_ 2)
                 (apply (lambda (_id151405_ _alias-id151406_)
                          (gx#core-bind-alias!__0 _id151405_ _alias-id151406_))
                        _g158952_))
                ((##fx= _g158951_ 3)
                 (apply (lambda (_id151414_ _alias-id151415_ _rebind?151416_)
                          (gx#core-bind-alias!__1
                           _id151414_
                           _alias-id151415_
                           _rebind?151416_))
                        _g158952_))
                ((##fx= _g158951_ 4)
                 (apply (lambda (_id151422_
                                 _alias-id151423_
                                 _rebind?151424_
                                 _phi151425_)
                          (gx#core-bind-alias!__2
                           _id151422_
                           _alias-id151423_
                           _rebind?151424_
                           _phi151425_))
                        _g158952_))
                ((##fx= _g158951_ 5)
                 (apply (lambda (_id151429_
                                 _alias-id151430_
                                 _rebind?151431_
                                 _phi151432_
                                 _ctx151433_)
                          (gx#core-bind-alias!__%
                           _id151429_
                           _alias-id151430_
                           _rebind?151431_
                           _phi151432_
                           _ctx151433_))
                        _g158952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g158952_))))))
    (define gx#make-binding-id__%
      (lambda (_key151351_ _syntax?151352_ _phi151353_ _ctx151354_)
        (if (uninterned-symbol? _key151351_)
            (gensym 'L)
            (if (pair? _key151351_)
                (gensym (car _key151351_))
                (if (##structure-instance-of? _ctx151354_ 'gx#top-context::t)
                    (let ((_ns151356_
                           (gx#core-context-namespace__% _ctx151354_)))
                      (if (and (fxzero? _phi151353_) (not _syntax?151352_))
                          (if _ns151356_
                              (make-symbol__1 _ns151356_ '"#" _key151351_)
                              _key151351_)
                          (if _syntax?151352_
                              (make-symbol__1
                               (let ((_$e151358_ _ns151356_))
                                 (if _$e151358_ _$e151358_ '""))
                               '"[:"
                               (number->string _phi151353_)
                               '":]#"
                               _key151351_)
                              (make-symbol__1
                               (let ((_$e151361_ _ns151356_))
                                 (if _$e151361_ _$e151361_ '""))
                               '"["
                               (number->string _phi151353_)
                               '"]#"
                               _key151351_))))
                    (gensym _key151351_))))))
    (define gx#make-binding-id__0
      (lambda (_key151367_)
        (let* ((_syntax?151369_ '#f)
               (_phi151371_ (gx#current-expander-phi))
               (_ctx151373_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151367_
           _syntax?151369_
           _phi151371_
           _ctx151373_))))
    (define gx#make-binding-id__1
      (lambda (_key151375_ _syntax?151376_)
        (let* ((_phi151378_ (gx#current-expander-phi))
               (_ctx151380_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151375_
           _syntax?151376_
           _phi151378_
           _ctx151380_))))
    (define gx#make-binding-id__2
      (lambda (_key151382_ _syntax?151383_ _phi151384_)
        (let ((_ctx151386_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151382_
           _syntax?151383_
           _phi151384_
           _ctx151386_))))
    (define gx#make-binding-id
      (lambda _g158954_
        (let ((_g158953_ (##length _g158954_)))
          (cond ((##fx= _g158953_ 1)
                 (apply (lambda (_key151367_)
                          (gx#make-binding-id__0 _key151367_))
                        _g158954_))
                ((##fx= _g158953_ 2)
                 (apply (lambda (_key151375_ _syntax?151376_)
                          (gx#make-binding-id__1 _key151375_ _syntax?151376_))
                        _g158954_))
                ((##fx= _g158953_ 3)
                 (apply (lambda (_key151382_ _syntax?151383_ _phi151384_)
                          (gx#make-binding-id__2
                           _key151382_
                           _syntax?151383_
                           _phi151384_))
                        _g158954_))
                ((##fx= _g158953_ 4)
                 (apply (lambda (_key151388_
                                 _syntax?151389_
                                 _phi151390_
                                 _ctx151391_)
                          (gx#make-binding-id__%
                           _key151388_
                           _syntax?151389_
                           _phi151390_
                           _ctx151391_))
                        _g158954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g158954_))))))))
