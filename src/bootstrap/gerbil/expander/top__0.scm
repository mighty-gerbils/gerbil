(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707742540)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx154330_)
        (letrec ((_expand-special154332_
                  (lambda (_hd154334_ _K154335_ _rest154336_ _r154337_)
                    (_K154335_
                     _rest154336_
                     (cons (gx#core-expand-top _hd154334_) _r154337_)))))
          (gx#core-expand-block__0 _stx154330_ _expand-special154332_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx154083_)
        (letrec ((_expand-special154085_
                  (lambda (_hd154205_ _K154206_ _rest154207_ _r154208_)
                    (let* ((_K154212_
                            (lambda (_e154210_)
                              (_K154206_
                               _rest154207_
                               (cons _e154210_ _r154208_))))
                           (_e154213154242_ _hd154205_)
                           (_E154237154246_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154213154242_)))
                           (_E154233154258_
                            (lambda ()
                              (if (gx#stx-pair? _e154213154242_)
                                  (let ((_e154238154250_
                                         (gx#syntax-e _e154213154242_)))
                                    (let ((_hd154239154253_
                                           (##car _e154238154250_))
                                          (_tl154240154255_
                                           (##cdr _e154238154250_)))
                                      (if (and (gx#identifier?
                                                _hd154239154253_)
                                               (gx#core-identifier=?
                                                _hd154239154253_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K154212_
                                               (gx#core-expand-define-runtime%
                                                _hd154205_))
                                              (_E154237154246_))
                                          (_E154237154246_))))
                                  (_E154237154246_))))
                           (_E154229154270_
                            (lambda ()
                              (if (gx#stx-pair? _e154213154242_)
                                  (let ((_e154234154262_
                                         (gx#syntax-e _e154213154242_)))
                                    (let ((_hd154235154265_
                                           (##car _e154234154262_))
                                          (_tl154236154267_
                                           (##cdr _e154234154262_)))
                                      (if (and (gx#identifier?
                                                _hd154235154265_)
                                               (gx#core-identifier=?
                                                _hd154235154265_
                                                '%#define-alias))
                                          (if '#t
                                              (_K154212_
                                               (gx#core-expand-define-alias%
                                                _hd154205_))
                                              (_E154233154258_))
                                          (_E154233154258_))))
                                  (_E154233154258_))))
                           (_E154219154282_
                            (lambda ()
                              (if (gx#stx-pair? _e154213154242_)
                                  (let ((_e154230154274_
                                         (gx#syntax-e _e154213154242_)))
                                    (let ((_hd154231154277_
                                           (##car _e154230154274_))
                                          (_tl154232154279_
                                           (##cdr _e154230154274_)))
                                      (if (and (gx#identifier?
                                                _hd154231154277_)
                                               (gx#core-identifier=?
                                                _hd154231154277_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K154212_
                                               (gx#core-expand-define-syntax%
                                                _hd154205_))
                                              (_E154229154270_))
                                          (_E154229154270_))))
                                  (_E154229154270_))))
                           (_E154215154314_
                            (lambda ()
                              (if (gx#stx-pair? _e154213154242_)
                                  (let ((_e154220154286_
                                         (gx#syntax-e _e154213154242_)))
                                    (let ((_hd154221154289_
                                           (##car _e154220154286_))
                                          (_tl154222154291_
                                           (##cdr _e154220154286_)))
                                      (if (and (gx#identifier?
                                                _hd154221154289_)
                                               (gx#core-identifier=?
                                                _hd154221154289_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154222154291_)
                                              (let ((_e154223154294_
                                                     (gx#syntax-e
                                                      _tl154222154291_)))
                                                (let ((_hd154224154297_
                                                       (##car _e154223154294_))
                                                      (_tl154225154299_
                                                       (##cdr _e154223154294_)))
                                                  (let ((_hd-bind154302_
                                                         _hd154224154297_))
                                                    (if (gx#stx-pair?
                                                         _tl154225154299_)
                                                        (let ((_e154226154304_
                                                               (gx#syntax-e
                                                                _tl154225154299_)))
                                                          (let ((_hd154227154307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154226154304_))
                        (_tl154228154309_ (##cdr _e154226154304_)))
                    (let ((_expr154312_ _hd154227154307_))
                      (if (gx#stx-null? _tl154228154309_)
                          (if (gx#core-bind-values? _hd-bind154302_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154302_)
                                (_K154212_ _hd154205_))
                              (_E154219154282_))
                          (_E154219154282_)))))
                (_E154219154282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154219154282_))
                                          (_E154219154282_))))
                                  (_E154219154282_))))
                           (_E154214154326_
                            (lambda ()
                              (if (gx#stx-pair? _e154213154242_)
                                  (let ((_e154216154318_
                                         (gx#syntax-e _e154213154242_)))
                                    (let ((_hd154217154321_
                                           (##car _e154216154318_))
                                          (_tl154218154323_
                                           (##cdr _e154216154318_)))
                                      (if (and (gx#identifier?
                                                _hd154217154321_)
                                               (gx#core-identifier=?
                                                _hd154217154321_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K154212_
                                               (gx#core-expand-begin-syntax%
                                                _hd154205_))
                                              (_E154215154314_))
                                          (_E154215154314_))))
                                  (_E154215154314_)))))
                      (_E154214154326_))))
                 (_eval-body154086_
                  (lambda (_rbody154094_)
                    (let _lp154096_ ((_rest154098_ _rbody154094_)
                                     (_body154099_ '())
                                     (_ebody154100_ '()))
                      (let* ((_rest154101154109_ _rest154098_)
                             (_else154103154117_
                              (lambda ()
                                (values _body154099_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody154100_)
                                          (gx#stx-source _stx154083_))))))
                             (_K154105154193_
                              (lambda (_rest154120_ _hd154121_)
                                (let* ((_e154122154139_ _hd154121_)
                                       (_E154134154143_
                                        (lambda ()
                                          (_lp154096_
                                           _rest154120_
                                           (cons _hd154121_ _body154099_)
                                           (cons _hd154121_ _ebody154100_))))
                                       (_E154124154155_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154122154139_)
                                              (let ((_e154135154147_
                                                     (gx#syntax-e
                                                      _e154122154139_)))
                                                (let ((_hd154136154150_
                                                       (##car _e154135154147_))
                                                      (_tl154137154152_
                                                       (##cdr _e154135154147_)))
                                                  (if (and (gx#identifier?
                                                            _hd154136154150_)
                                                           (gx#core-identifier=?
                                                            _hd154136154150_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp154096_
                                                           _rest154120_
                                                           (cons _hd154121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body154099_)
                   _ebody154100_)
                  (_E154134154143_))
              (_E154134154143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154134154143_))))
                                       (_E154123154189_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154122154139_)
                                              (let ((_e154125154159_
                                                     (gx#syntax-e
                                                      _e154122154139_)))
                                                (let ((_hd154126154162_
                                                       (##car _e154125154159_))
                                                      (_tl154127154164_
                                                       (##cdr _e154125154159_)))
                                                  (if (and (gx#identifier?
                                                            _hd154126154162_)
                                                           (gx#core-identifier=?
                                                            _hd154126154162_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl154127154164_)
                                                          (let ((_e154128154167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl154127154164_)))
                    (let ((_hd154129154170_ (##car _e154128154167_))
                          (_tl154130154172_ (##cdr _e154128154167_)))
                      (let ((_hd-bind154175_ _hd154129154170_))
                        (if (gx#stx-pair? _tl154130154172_)
                            (let ((_e154131154177_
                                   (gx#syntax-e _tl154130154172_)))
                              (let ((_hd154132154180_ (##car _e154131154177_))
                                    (_tl154133154182_ (##cdr _e154131154177_)))
                                (let ((_expr154185_ _hd154132154180_))
                                  (if (gx#stx-null? _tl154133154182_)
                                      (if '#t
                                          (let ((_ehd154187_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind154175_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr154185_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd154121_))))
                                            (_lp154096_
                                             _rest154120_
                                             (cons _ehd154187_ _body154099_)
                                             (cons _ehd154187_ _ebody154100_)))
                                          (_E154124154155_))
                                      (_E154124154155_)))))
                            (_E154124154155_)))))
                  (_E154124154155_))
              (_E154124154155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154124154155_)))))
                                  (_E154123154189_)))))
                        (if (##pair? _rest154101154109_)
                            (let ((_hd154106154196_ (##car _rest154101154109_))
                                  (_tl154107154198_
                                   (##cdr _rest154101154109_)))
                              (let* ((_hd154201_ _hd154106154196_)
                                     (_rest154203_ _tl154107154198_))
                                (_K154105154193_ _rest154203_ _hd154201_)))
                            (_else154103154117_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody154089_
                     (gx#core-expand-block__1
                      _stx154083_
                      _expand-special154085_
                      '#f))
                    (_g158921_ (_eval-body154086_ _rbody154089_)))
               (begin
                 (let ((_g158922_
                        (if (##values? _g158921_)
                            (##vector-length _g158921_)
                            1)))
                   (if (not (##fx= _g158922_ 2))
                       (error "Context expects 2 values" _g158922_)))
                 (let ((_expanded-body154091_ (##vector-ref _g158921_ 0))
                       (_value154092_ (##vector-ref _g158921_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body154091_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value154092_ '())))
                    (gx#stx-source _stx154083_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx154053_)
        (let* ((_e154054154061_ _stx154053_)
               (_E154056154065_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154054154061_)))
               (_E154055154079_
                (lambda ()
                  (if (gx#stx-pair? _e154054154061_)
                      (let ((_e154057154069_ (gx#syntax-e _e154054154061_)))
                        (let ((_hd154058154072_ (##car _e154057154069_))
                              (_tl154059154074_ (##cdr _e154057154069_)))
                          (let ((_body154077_ _tl154059154074_))
                            (if (gx#stx-list? _body154077_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body154077_)
                                 (gx#stx-source _stx154053_))
                                (_E154056154065_)))))
                      (_E154056154065_)))))
          (_E154055154079_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx154051_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx154051_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx153997_)
        (let* ((_e153998154011_ _stx153997_)
               (_E154000154015_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153998154011_)))
               (_E153999154047_
                (lambda ()
                  (if (gx#stx-pair? _e153998154011_)
                      (let ((_e154001154019_ (gx#syntax-e _e153998154011_)))
                        (let ((_hd154002154022_ (##car _e154001154019_))
                              (_tl154003154024_ (##cdr _e154001154019_)))
                          (if (gx#stx-pair? _tl154003154024_)
                              (let ((_e154004154027_
                                     (gx#syntax-e _tl154003154024_)))
                                (let ((_hd154005154030_
                                       (##car _e154004154027_))
                                      (_tl154006154032_
                                       (##cdr _e154004154027_)))
                                  (let ((_ann154035_ _hd154005154030_))
                                    (if (gx#stx-pair? _tl154006154032_)
                                        (let ((_e154007154037_
                                               (gx#syntax-e _tl154006154032_)))
                                          (let ((_hd154008154040_
                                                 (##car _e154007154037_))
                                                (_tl154009154042_
                                                 (##cdr _e154007154037_)))
                                            (let ((_expr154045_
                                                   _hd154008154040_))
                                              (if (gx#stx-null?
                                                   _tl154009154042_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann154035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr154045_)
                                 '())))
               (gx#stx-source _stx153997_))
              (_E154000154015_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154000154015_)))))
                                        (_E154000154015_)))))
                              (_E154000154015_))))
                      (_E154000154015_)))))
          (_E153999154047_))))
    (define gx#core-expand-local-block
      (lambda (_stx153721_ _body153722_)
        (letrec ((_expand-special153724_
                  (lambda (_hd153992_ _K153993_ _rest153994_ _r153995_)
                    (_K153993_
                     '()
                     (cons (_expand-internal153725_ _hd153992_ _rest153994_)
                           _r153995_))))
                 (_expand-internal153725_
                  (lambda (_hd153988_ _rest153989_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal153727_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd153988_ _rest153989_))
                          (gx#stx-source _stx153721_))
                         _expand-internal-special153726_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj158915
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj158915)
                       __obj158915))))
                 (_expand-internal-special153726_
                  (lambda (_hd153883_ _K153884_ _rest153885_ _r153886_)
                    (let* ((_e153887153912_ _hd153883_)
                           (_E153907153916_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153887153912_)))
                           (_E153903153928_
                            (lambda ()
                              (if (gx#stx-pair? _e153887153912_)
                                  (let ((_e153908153920_
                                         (gx#syntax-e _e153887153912_)))
                                    (let ((_hd153909153923_
                                           (##car _e153908153920_))
                                          (_tl153910153925_
                                           (##cdr _e153908153920_)))
                                      (if (and (gx#identifier?
                                                _hd153909153923_)
                                               (gx#core-identifier=?
                                                _hd153909153923_
                                                '%#declare))
                                          (if '#t
                                              (_K153884_
                                               _rest153885_
                                               (cons (gx#core-expand-declare%
                                                      _hd153883_)
                                                     _r153886_))
                                              (_E153907153916_))
                                          (_E153907153916_))))
                                  (_E153907153916_))))
                           (_E153899153940_
                            (lambda ()
                              (if (gx#stx-pair? _e153887153912_)
                                  (let ((_e153904153932_
                                         (gx#syntax-e _e153887153912_)))
                                    (let ((_hd153905153935_
                                           (##car _e153904153932_))
                                          (_tl153906153937_
                                           (##cdr _e153904153932_)))
                                      (if (and (gx#identifier?
                                                _hd153905153935_)
                                               (gx#core-identifier=?
                                                _hd153905153935_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd153883_)
                                                (_K153884_
                                                 _rest153885_
                                                 _r153886_))
                                              (_E153903153928_))
                                          (_E153903153928_))))
                                  (_E153903153928_))))
                           (_E153889153952_
                            (lambda ()
                              (if (gx#stx-pair? _e153887153912_)
                                  (let ((_e153900153944_
                                         (gx#syntax-e _e153887153912_)))
                                    (let ((_hd153901153947_
                                           (##car _e153900153944_))
                                          (_tl153902153949_
                                           (##cdr _e153900153944_)))
                                      (if (and (gx#identifier?
                                                _hd153901153947_)
                                               (gx#core-identifier=?
                                                _hd153901153947_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd153883_)
                                                (_K153884_
                                                 _rest153885_
                                                 _r153886_))
                                              (_E153899153940_))
                                          (_E153899153940_))))
                                  (_E153899153940_))))
                           (_E153888153984_
                            (lambda ()
                              (if (gx#stx-pair? _e153887153912_)
                                  (let ((_e153890153956_
                                         (gx#syntax-e _e153887153912_)))
                                    (let ((_hd153891153959_
                                           (##car _e153890153956_))
                                          (_tl153892153961_
                                           (##cdr _e153890153956_)))
                                      (if (and (gx#identifier?
                                                _hd153891153959_)
                                               (gx#core-identifier=?
                                                _hd153891153959_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153892153961_)
                                              (let ((_e153893153964_
                                                     (gx#syntax-e
                                                      _tl153892153961_)))
                                                (let ((_hd153894153967_
                                                       (##car _e153893153964_))
                                                      (_tl153895153969_
                                                       (##cdr _e153893153964_)))
                                                  (let ((_hd-bind153972_
                                                         _hd153894153967_))
                                                    (if (gx#stx-pair?
                                                         _tl153895153969_)
                                                        (let ((_e153896153974_
                                                               (gx#syntax-e
                                                                _tl153895153969_)))
                                                          (let ((_hd153897153977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153896153974_))
                        (_tl153898153979_ (##cdr _e153896153974_)))
                    (let ((_expr153982_ _hd153897153977_))
                      (if (gx#stx-null? _tl153898153979_)
                          (if (gx#core-bind-values? _hd-bind153972_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153972_)
                                (_K153884_
                                 _rest153885_
                                 (cons _hd153883_ _r153886_)))
                              (_E153889153952_))
                          (_E153889153952_)))))
                (_E153889153952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153889153952_))
                                          (_E153889153952_))))
                                  (_E153889153952_)))))
                      (_E153888153984_))))
                 (_wrap-internal153727_
                  (lambda (_rbody153729_)
                    (let _lp153731_ ((_rest153733_ _rbody153729_)
                                     (_decls153734_ '())
                                     (_bind153735_ '())
                                     (_body153736_ '()))
                      (let* ((_e153737153744_ _rest153733_)
                             (_E153739153793_
                              (lambda ()
                                (let* ((_body153788_
                                        (let* ((_body153747153757_
                                                _body153736_)
                                               (_else153750153765_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153736_)
                                                   (gx#stx-source
                                                    _stx153721_)))))
                                          (let ((_K153755153785_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx153721_)))
                                                (_K153752153771_
                                                 (lambda (_expr153769_)
                                                   _expr153769_)))
                                            (let ((_try-match153749153781_
                                                   (lambda ()
                                                     (if (##pair? _body153747153757_)
                                                         (let ((_tl153754153776_
                                                                (##cdr _body153747153757_))
                                                               (_hd153753153774_
                                                                (##car _body153747153757_)))
                                                           (if (##null? _tl153754153776_)
                                                               (let ((_expr153779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153753153774_))
                         (_K153752153771_ _expr153779_))
                       (_else153750153765_)))
                 (_else153750153765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body153747153757_)
                                                  (_K153755153785_)
                                                  (_try-match153749153781_))))))
                                       (_body153790_
                                        (if (null? _bind153735_)
                                            _body153788_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind153735_
                                                         (cons _body153788_
                                                               '())))
                                             (gx#stx-source _stx153721_)))))
                                  (if (null? _decls153734_)
                                      _body153790_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls153734_
                                                   (cons _body153790_ '())))
                                       (gx#stx-source _stx153721_))))))
                             (_E153738153879_
                              (lambda ()
                                (if (gx#stx-pair? _e153737153744_)
                                    (let ((_e153740153797_
                                           (gx#syntax-e _e153737153744_)))
                                      (let ((_hd153741153800_
                                             (##car _e153740153797_))
                                            (_tl153742153802_
                                             (##cdr _e153740153797_)))
                                        (let* ((_hd153805_ _hd153741153800_)
                                               (_rest153807_ _tl153742153802_))
                                          (if '#t
                                              (let* ((_e153808153825_
                                                      _hd153805_)
                                                     (_E153820153829_
                                                      (lambda ()
                                                        (if (null? _bind153735_)
                                                            (_lp153731_
                                                             _rest153807_
                                                             _decls153734_
                                                             _bind153735_
                                                             (cons _hd153805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body153736_))
                    (_lp153731_
                     _rest153807_
                     _decls153734_
                     (cons (cons '#f (cons _hd153805_ '())) _bind153735_)
                     _body153736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153810153843_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153808153825_)
                                                            (let ((_e153821153833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153808153825_)))
                      (let ((_hd153822153836_ (##car _e153821153833_))
                            (_tl153823153838_ (##cdr _e153821153833_)))
                        (if (and (gx#identifier? _hd153822153836_)
                                 (gx#core-identifier=?
                                  _hd153822153836_
                                  '%#declare))
                            (let ((_xdecls153841_ _tl153823153838_))
                              (if '#t
                                  (_lp153731_
                                   _rest153807_
                                   (gx#stx-foldr
                                    cons
                                    _decls153734_
                                    _xdecls153841_)
                                   _bind153735_
                                   _body153736_)
                                  (_E153820153829_)))
                            (_E153820153829_))))
                    (_E153820153829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153809153875_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153808153825_)
                                                            (let ((_e153811153847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153808153825_)))
                      (let ((_hd153812153850_ (##car _e153811153847_))
                            (_tl153813153852_ (##cdr _e153811153847_)))
                        (if (and (gx#identifier? _hd153812153850_)
                                 (gx#core-identifier=?
                                  _hd153812153850_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl153813153852_)
                                (let ((_e153814153855_
                                       (gx#syntax-e _tl153813153852_)))
                                  (let ((_hd153815153858_
                                         (##car _e153814153855_))
                                        (_tl153816153860_
                                         (##cdr _e153814153855_)))
                                    (let ((_hd-bind153863_ _hd153815153858_))
                                      (if (gx#stx-pair? _tl153816153860_)
                                          (let ((_e153817153865_
                                                 (gx#syntax-e
                                                  _tl153816153860_)))
                                            (let ((_hd153818153868_
                                                   (##car _e153817153865_))
                                                  (_tl153819153870_
                                                   (##cdr _e153817153865_)))
                                              (let ((_expr153873_
                                                     _hd153818153868_))
                                                (if (gx#stx-null?
                                                     _tl153819153870_)
                                                    (if '#t
                                                        (_lp153731_
                                                         _rest153807_
                                                         _decls153734_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind153863_)
                             (cons (gx#core-expand-expression _expr153873_)
                                   '()))
                       _bind153735_)
                 _body153736_)
                (_E153810153843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153810153843_)))))
                                          (_E153810153843_)))))
                                (_E153810153843_))
                            (_E153810153843_))))
                    (_E153810153843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153809153875_))
                                              (_E153739153793_)))))
                                    (_E153739153793_)))))
                        (_E153738153879_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body153722_)
            (gx#stx-source _stx153721_))
           _expand-special153724_))))
    (define gx#core-expand-declare%
      (lambda (_stx153659_)
        (let* ((_e153660153667_ _stx153659_)
               (_E153662153671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153660153667_)))
               (_E153661153717_
                (lambda ()
                  (if (gx#stx-pair? _e153660153667_)
                      (let ((_e153663153675_ (gx#syntax-e _e153660153667_)))
                        (let ((_hd153664153678_ (##car _e153663153675_))
                              (_tl153665153680_ (##cdr _e153663153675_)))
                          (let ((_body153683_ _tl153665153680_))
                            (if (gx#stx-list? _body153683_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl153685_)
                                     (let* ((_e153686153693_ _decl153685_)
                                            (_E153688153697_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e153686153693_)))
                                            (_E153687153713_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e153686153693_)
                                                   (let ((_e153689153701_
                                                          (gx#syntax-e
                                                           _e153686153693_)))
                                                     (let ((_hd153690153704_
                                                            (##car _e153689153701_))
                                                           (_tl153691153706_
                                                            (##cdr _e153689153701_)))
                                                       (let* ((_head153709_
                                                               _hd153690153704_)
                                                              (_args153711_
                                                               _tl153691153706_))
                                                         (if (gx#stx-list?
                                                              _args153711_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl153685_)
                                                             (_E153688153697_)))))
                                                   (_E153688153697_)))))
                                       (_E153687153713_)))
                                   _body153683_))
                                 (gx#stx-source _stx153659_))
                                (_E153662153671_)))))
                      (_E153662153671_)))))
          (_E153661153717_))))
    (define gx#core-expand-extern%
      (lambda (_stx153563_)
        (let* ((_e153564153571_ _stx153563_)
               (_E153566153575_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153564153571_)))
               (_E153565153655_
                (lambda ()
                  (if (gx#stx-pair? _e153564153571_)
                      (let ((_e153567153579_ (gx#syntax-e _e153564153571_)))
                        (let ((_hd153568153582_ (##car _e153567153579_))
                              (_tl153569153584_ (##cdr _e153567153579_)))
                          (let ((_body153587_ _tl153569153584_))
                            (if '#t
                                (let _lp153589_ ((_rest153591_ _body153587_)
                                                 (_r153592_ '()))
                                  (let* ((_e153593153607_ _rest153591_)
                                         (_E153605153611_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx153563_)))
                                         (_E153595153615_
                                          (lambda ()
                                            (if (gx#stx-null? _e153593153607_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r153592_))
                                                     (gx#stx-source
                                                      _stx153563_))
                                                    (_E153605153611_))
                                                (_E153605153611_))))
                                         (_E153594153651_
                                          (lambda ()
                                            (if (gx#stx-pair? _e153593153607_)
                                                (let ((_e153596153619_
                                                       (gx#syntax-e
                                                        _e153593153607_)))
                                                  (let ((_hd153597153622_
                                                         (##car _e153596153619_))
                                                        (_tl153598153624_
                                                         (##cdr _e153596153619_)))
                                                    (if (gx#stx-pair?
                                                         _hd153597153622_)
                                                        (let ((_e153599153627_
                                                               (gx#syntax-e
                                                                _hd153597153622_)))
                                                          (let ((_hd153600153630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153599153627_))
                        (_tl153601153632_ (##cdr _e153599153627_)))
                    (let ((_id153635_ _hd153600153630_))
                      (if (gx#stx-pair? _tl153601153632_)
                          (let ((_e153602153637_
                                 (gx#syntax-e _tl153601153632_)))
                            (let ((_hd153603153640_ (##car _e153602153637_))
                                  (_tl153604153642_ (##cdr _e153602153637_)))
                              (let ((_eid153645_ _hd153603153640_))
                                (if (gx#stx-null? _tl153604153642_)
                                    (let ((_rest153647_ _tl153598153624_))
                                      (if (and (gx#identifier? _id153635_)
                                               (gx#identifier? _eid153645_))
                                          (let ((_eid153649_
                                                 (gx#stx-e _eid153645_)))
                                            (gx#core-bind-extern!__0
                                             _id153635_
                                             _eid153649_)
                                            (_lp153589_
                                             _rest153647_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id153635_)
                                                         (cons _eid153649_
                                                               '()))
                                                   _r153592_)))
                                          (_E153595153615_)))
                                    (_E153595153615_)))))
                          (_E153595153615_)))))
                (_E153595153615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153595153615_)))))
                                    (_E153594153651_)))
                                (_E153566153575_)))))
                      (_E153566153575_)))))
          (_E153565153655_))))
    (define gx#core-expand-define-values%
      (lambda (_stx153509_)
        (let* ((_e153510153523_ _stx153509_)
               (_E153512153527_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153510153523_)))
               (_E153511153559_
                (lambda ()
                  (if (gx#stx-pair? _e153510153523_)
                      (let ((_e153513153531_ (gx#syntax-e _e153510153523_)))
                        (let ((_hd153514153534_ (##car _e153513153531_))
                              (_tl153515153536_ (##cdr _e153513153531_)))
                          (if (gx#stx-pair? _tl153515153536_)
                              (let ((_e153516153539_
                                     (gx#syntax-e _tl153515153536_)))
                                (let ((_hd153517153542_
                                       (##car _e153516153539_))
                                      (_tl153518153544_
                                       (##cdr _e153516153539_)))
                                  (let ((_hd153547_ _hd153517153542_))
                                    (if (gx#stx-pair? _tl153518153544_)
                                        (let ((_e153519153549_
                                               (gx#syntax-e _tl153518153544_)))
                                          (let ((_hd153520153552_
                                                 (##car _e153519153549_))
                                                (_tl153521153554_
                                                 (##cdr _e153519153549_)))
                                            (let ((_expr153557_
                                                   _hd153520153552_))
                                              (if (gx#stx-null?
                                                   _tl153521153554_)
                                                  (if (gx#core-bind-values?
                                                       _hd153547_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd153547_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153547_)
                             (cons (gx#core-expand-expression _expr153557_)
                                   '())))
                 (gx#stx-source _stx153509_)))
              (_E153512153527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153512153527_)))))
                                        (_E153512153527_)))))
                              (_E153512153527_))))
                      (_E153512153527_)))))
          (_E153511153559_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx153453_)
        (let* ((_e153454153467_ _stx153453_)
               (_E153456153471_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153454153467_)))
               (_E153455153505_
                (lambda ()
                  (if (gx#stx-pair? _e153454153467_)
                      (let ((_e153457153475_ (gx#syntax-e _e153454153467_)))
                        (let ((_hd153458153478_ (##car _e153457153475_))
                              (_tl153459153480_ (##cdr _e153457153475_)))
                          (if (gx#stx-pair? _tl153459153480_)
                              (let ((_e153460153483_
                                     (gx#syntax-e _tl153459153480_)))
                                (let ((_hd153461153486_
                                       (##car _e153460153483_))
                                      (_tl153462153488_
                                       (##cdr _e153460153483_)))
                                  (let ((_id153491_ _hd153461153486_))
                                    (if (gx#stx-pair? _tl153462153488_)
                                        (let ((_e153463153493_
                                               (gx#syntax-e _tl153462153488_)))
                                          (let ((_hd153464153496_
                                                 (##car _e153463153493_))
                                                (_tl153465153498_
                                                 (##cdr _e153463153493_)))
                                            (let ((_binding-id153501_
                                                   _hd153464153496_))
                                              (if (gx#stx-null?
                                                   _tl153465153498_)
                                                  (if (and (gx#identifier?
                                                            _id153491_)
                                                           (gx#identifier?
                                                            _binding-id153501_))
                                                      (let ((_eid153503_
                                                             (gx#stx-e
                                                              _binding-id153501_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id153491_
                                                         _eid153503_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153491_)
                             (cons _eid153503_ '())))))
              (_E153456153471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153456153471_)))))
                                        (_E153456153471_)))))
                              (_E153456153471_))))
                      (_E153456153471_)))))
          (_E153455153505_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx153396_)
        (let* ((_e153397153410_ _stx153396_)
               (_E153399153414_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153397153410_)))
               (_E153398153449_
                (lambda ()
                  (if (gx#stx-pair? _e153397153410_)
                      (let ((_e153400153418_ (gx#syntax-e _e153397153410_)))
                        (let ((_hd153401153421_ (##car _e153400153418_))
                              (_tl153402153423_ (##cdr _e153400153418_)))
                          (if (gx#stx-pair? _tl153402153423_)
                              (let ((_e153403153426_
                                     (gx#syntax-e _tl153402153423_)))
                                (let ((_hd153404153429_
                                       (##car _e153403153426_))
                                      (_tl153405153431_
                                       (##cdr _e153403153426_)))
                                  (let ((_id153434_ _hd153404153429_))
                                    (if (gx#stx-pair? _tl153405153431_)
                                        (let ((_e153406153436_
                                               (gx#syntax-e _tl153405153431_)))
                                          (let ((_hd153407153439_
                                                 (##car _e153406153436_))
                                                (_tl153408153441_
                                                 (##cdr _e153406153436_)))
                                            (let ((_expr153444_
                                                   _hd153407153439_))
                                              (if (gx#stx-null?
                                                   _tl153408153441_)
                                                  (if (gx#identifier?
                                                       _id153434_)
                                                      (let ((_g158923_
                                                             (gx#core-expand-expression+1
                                                              _expr153444_)))
                                                        (begin
                                                          (let ((_g158924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g158923_)
                             (##vector-length _g158923_)
                             1)))
                    (if (not (##fx= _g158924_ 2))
                        (error "Context expects 2 values" _g158924_)))
                  (let ((_e-stx153446_ (##vector-ref _g158923_ 0))
                        (_e153447_ (##vector-ref _g158923_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id153434_ _e153447_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id153434_)
                                   (cons _e-stx153446_ '())))
                       (gx#stx-source _stx153396_))))))
              (_E153399153414_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153399153414_)))))
                                        (_E153399153414_)))))
                              (_E153399153414_))))
                      (_E153399153414_)))))
          (_E153398153449_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx153340_)
        (let* ((_e153341153354_ _stx153340_)
               (_E153343153358_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153341153354_)))
               (_E153342153392_
                (lambda ()
                  (if (gx#stx-pair? _e153341153354_)
                      (let ((_e153344153362_ (gx#syntax-e _e153341153354_)))
                        (let ((_hd153345153365_ (##car _e153344153362_))
                              (_tl153346153367_ (##cdr _e153344153362_)))
                          (if (gx#stx-pair? _tl153346153367_)
                              (let ((_e153347153370_
                                     (gx#syntax-e _tl153346153367_)))
                                (let ((_hd153348153373_
                                       (##car _e153347153370_))
                                      (_tl153349153375_
                                       (##cdr _e153347153370_)))
                                  (let ((_id153378_ _hd153348153373_))
                                    (if (gx#stx-pair? _tl153349153375_)
                                        (let ((_e153350153380_
                                               (gx#syntax-e _tl153349153375_)))
                                          (let ((_hd153351153383_
                                                 (##car _e153350153380_))
                                                (_tl153352153385_
                                                 (##cdr _e153350153380_)))
                                            (let ((_alias-id153388_
                                                   _hd153351153383_))
                                              (if (gx#stx-null?
                                                   _tl153352153385_)
                                                  (if (and (gx#identifier?
                                                            _id153378_)
                                                           (gx#identifier?
                                                            _alias-id153388_))
                                                      (let ((_alias-id153390_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id153388_)))
                                                        (gx#core-bind-alias!__0
                                                         _id153378_
                                                         _alias-id153390_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153378_)
                             (cons _alias-id153390_ '())))))
              (_E153343153358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153343153358_)))))
                                        (_E153343153358_)))))
                              (_E153343153358_))))
                      (_E153343153358_)))))
          (_E153342153392_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx153283_ _wrap?153284_)
        (let* ((_e153285153295_ _stx153283_)
               (_E153287153299_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153285153295_)))
               (_E153286153326_
                (lambda ()
                  (if (gx#stx-pair? _e153285153295_)
                      (let ((_e153288153303_ (gx#syntax-e _e153285153295_)))
                        (let ((_hd153289153306_ (##car _e153288153303_))
                              (_tl153290153308_ (##cdr _e153288153303_)))
                          (if (gx#stx-pair? _tl153290153308_)
                              (let ((_e153291153311_
                                     (gx#syntax-e _tl153290153308_)))
                                (let ((_hd153292153314_
                                       (##car _e153291153311_))
                                      (_tl153293153316_
                                       (##cdr _e153291153311_)))
                                  (let* ((_hd153319_ _hd153292153314_)
                                         (_body153321_ _tl153293153316_))
                                    (if (gx#core-bind-values? _hd153319_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd153319_)
                                           (let ((_body153324_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd153319_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx153283_
                                                               _body153321_)
                                                              '()))))
                                             (if _wrap?153284_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body153324_)
                                                  (gx#stx-source _stx153283_))
                                                 _body153324_)))
                                         gx#current-expander-context
                                         (let ((__obj158916
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158916)
                                           __obj158916))
                                        (_E153287153299_)))))
                              (_E153287153299_))))
                      (_E153287153299_)))))
          (_E153286153326_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx153333_)
        (let ((_wrap?153335_ '#t))
          (gx#core-expand-lambda%__% _stx153333_ _wrap?153335_))))
    (define gx#core-expand-lambda%
      (lambda _g158926_
        (let ((_g158925_ (##length _g158926_)))
          (cond ((##fx= _g158925_ 1)
                 (apply (lambda (_stx153333_)
                          (gx#core-expand-lambda%__0 _stx153333_))
                        _g158926_))
                ((##fx= _g158925_ 2)
                 (apply (lambda (_stx153337_ _wrap?153338_)
                          (gx#core-expand-lambda%__%
                           _stx153337_
                           _wrap?153338_))
                        _g158926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g158926_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx153247_)
        (let* ((_e153248153255_ _stx153247_)
               (_E153250153259_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153248153255_)))
               (_E153249153278_
                (lambda ()
                  (if (gx#stx-pair? _e153248153255_)
                      (let ((_e153251153263_ (gx#syntax-e _e153248153255_)))
                        (let ((_hd153252153266_ (##car _e153251153263_))
                              (_tl153253153268_ (##cdr _e153251153263_)))
                          (let ((_clauses153271_ _tl153253153268_))
                            (if (gx#stx-list? _clauses153271_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause153273_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause153273_)
                                       (let ((_$e153275_
                                              (gx#stx-source _clause153273_)))
                                         (if _$e153275_
                                             _$e153275_
                                             (gx#stx-source _stx153247_))))
                                      '#f))
                                   _clauses153271_))
                                 (gx#stx-source _stx153247_))
                                (_E153250153259_)))))
                      (_E153250153259_)))))
          (_E153249153278_))))
    (define gx#core-expand-let-values%
      (lambda (_stx153201_)
        (let* ((_e153202153212_ _stx153201_)
               (_E153204153216_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153202153212_)))
               (_E153203153243_
                (lambda ()
                  (if (gx#stx-pair? _e153202153212_)
                      (let ((_e153205153220_ (gx#syntax-e _e153202153212_)))
                        (let ((_hd153206153223_ (##car _e153205153220_))
                              (_tl153207153225_ (##cdr _e153205153220_)))
                          (if (gx#stx-pair? _tl153207153225_)
                              (let ((_e153208153228_
                                     (gx#syntax-e _tl153207153225_)))
                                (let ((_hd153209153231_
                                       (##car _e153208153228_))
                                      (_tl153210153233_
                                       (##cdr _e153208153228_)))
                                  (let* ((_hd153236_ _hd153209153231_)
                                         (_body153238_ _tl153210153233_))
                                    (if (gx#core-expand-let-bind? _hd153236_)
                                        (let ((_expressions153240_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd153236_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd153236_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd153236_
                                                           _expressions153240_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx153201_
                         _body153238_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx153201_)))
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
                                             __obj158917)))
                                        (_E153204153216_)))))
                              (_E153204153216_))))
                      (_E153204153216_)))))
          (_E153203153243_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx153146_ _form153147_)
        (let* ((_e153148153158_ _stx153146_)
               (_E153150153162_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153148153158_)))
               (_E153149153187_
                (lambda ()
                  (if (gx#stx-pair? _e153148153158_)
                      (let ((_e153151153166_ (gx#syntax-e _e153148153158_)))
                        (let ((_hd153152153169_ (##car _e153151153166_))
                              (_tl153153153171_ (##cdr _e153151153166_)))
                          (if (gx#stx-pair? _tl153153153171_)
                              (let ((_e153154153174_
                                     (gx#syntax-e _tl153153153171_)))
                                (let ((_hd153155153177_
                                       (##car _e153154153174_))
                                      (_tl153156153179_
                                       (##cdr _e153154153174_)))
                                  (let* ((_hd153182_ _hd153155153177_)
                                         (_body153184_ _tl153156153179_))
                                    (if (gx#core-expand-let-bind? _hd153182_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd153182_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form153147_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd153182_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd153182_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx153146_
                                                               _body153184_)
                                                              '())))
                                            (gx#stx-source _stx153146_)))
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
                                        (_E153150153162_)))))
                              (_E153150153162_))))
                      (_E153150153162_)))))
          (_E153149153187_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx153194_)
        (let ((_form153196_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx153194_ _form153196_))))
    (define gx#core-expand-letrec-values%
      (lambda _g158928_
        (let ((_g158927_ (##length _g158928_)))
          (cond ((##fx= _g158927_ 1)
                 (apply (lambda (_stx153194_)
                          (gx#core-expand-letrec-values%__0 _stx153194_))
                        _g158928_))
                ((##fx= _g158927_ 2)
                 (apply (lambda (_stx153198_ _form153199_)
                          (gx#core-expand-letrec-values%__%
                           _stx153198_
                           _form153199_))
                        _g158928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g158928_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx153143_)
        (gx#core-expand-letrec-values%__% _stx153143_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx153100_)
        (if (gx#stx-list? _stx153100_)
            (gx#stx-andmap
             (lambda (_bind153102_)
               (let* ((_e153103153113_ _bind153102_)
                      (_E153105153117_ (lambda () '#f))
                      (_E153104153139_
                       (lambda ()
                         (if (gx#stx-pair? _e153103153113_)
                             (let ((_e153106153121_
                                    (gx#syntax-e _e153103153113_)))
                               (let ((_hd153107153124_ (##car _e153106153121_))
                                     (_tl153108153126_
                                      (##cdr _e153106153121_)))
                                 (let ((_hd153129_ _hd153107153124_))
                                   (if (gx#stx-pair? _tl153108153126_)
                                       (let ((_e153109153131_
                                              (gx#syntax-e _tl153108153126_)))
                                         (let ((_hd153110153134_
                                                (##car _e153109153131_))
                                               (_tl153111153136_
                                                (##cdr _e153109153131_)))
                                           (if (gx#stx-null? _tl153111153136_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd153129_)
                                                   (_E153105153117_))
                                               (_E153105153117_))))
                                       (_E153105153117_)))))
                             (_E153105153117_)))))
                 (_E153104153139_)))
             _stx153100_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind153059_)
        (let* ((_e153060153070_ _bind153059_)
               (_E153062153074_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153060153070_)))
               (_E153061153096_
                (lambda ()
                  (if (gx#stx-pair? _e153060153070_)
                      (let ((_e153063153078_ (gx#syntax-e _e153060153070_)))
                        (let ((_hd153064153081_ (##car _e153063153078_))
                              (_tl153065153083_ (##cdr _e153063153078_)))
                          (if (gx#stx-pair? _tl153065153083_)
                              (let ((_e153066153086_
                                     (gx#syntax-e _tl153065153083_)))
                                (let ((_hd153067153089_
                                       (##car _e153066153086_))
                                      (_tl153068153091_
                                       (##cdr _e153066153086_)))
                                  (let ((_expr153094_ _hd153067153089_))
                                    (if (gx#stx-null? _tl153068153091_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr153094_)
                                            (_E153062153074_))
                                        (_E153062153074_)))))
                              (_E153062153074_))))
                      (_E153062153074_)))))
          (_E153061153096_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind153018_)
        (let* ((_e153019153029_ _bind153018_)
               (_E153021153033_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153019153029_)))
               (_E153020153055_
                (lambda ()
                  (if (gx#stx-pair? _e153019153029_)
                      (let ((_e153022153037_ (gx#syntax-e _e153019153029_)))
                        (let ((_hd153023153040_ (##car _e153022153037_))
                              (_tl153024153042_ (##cdr _e153022153037_)))
                          (let ((_hd153045_ _hd153023153040_))
                            (if (gx#stx-pair? _tl153024153042_)
                                (let ((_e153025153047_
                                       (gx#syntax-e _tl153024153042_)))
                                  (let ((_hd153026153050_
                                         (##car _e153025153047_))
                                        (_tl153027153052_
                                         (##cdr _e153025153047_)))
                                    (if (gx#stx-null? _tl153027153052_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd153045_)
                                            (_E153021153033_))
                                        (_E153021153033_))))
                                (_E153021153033_)))))
                      (_E153021153033_)))))
          (_E153020153055_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind152976_ _expr152977_)
        (let* ((_e152978152988_ _bind152976_)
               (_E152980152992_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152978152988_)))
               (_E152979153014_
                (lambda ()
                  (if (gx#stx-pair? _e152978152988_)
                      (let ((_e152981152996_ (gx#syntax-e _e152978152988_)))
                        (let ((_hd152982152999_ (##car _e152981152996_))
                              (_tl152983153001_ (##cdr _e152981152996_)))
                          (let ((_hd153004_ _hd152982152999_))
                            (if (gx#stx-pair? _tl152983153001_)
                                (let ((_e152984153006_
                                       (gx#syntax-e _tl152983153001_)))
                                  (let ((_hd152985153009_
                                         (##car _e152984153006_))
                                        (_tl152986153011_
                                         (##cdr _e152984153006_)))
                                    (if (gx#stx-null? _tl152986153011_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd153004_)
                                                  (cons _expr152977_ '()))
                                            (_E152980152992_))
                                        (_E152980152992_))))
                                (_E152980152992_)))))
                      (_E152980152992_)))))
          (_E152979153014_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx152930_)
        (let* ((_e152931152941_ _stx152930_)
               (_E152933152945_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152931152941_)))
               (_E152932152972_
                (lambda ()
                  (if (gx#stx-pair? _e152931152941_)
                      (let ((_e152934152949_ (gx#syntax-e _e152931152941_)))
                        (let ((_hd152935152952_ (##car _e152934152949_))
                              (_tl152936152954_ (##cdr _e152934152949_)))
                          (if (gx#stx-pair? _tl152936152954_)
                              (let ((_e152937152957_
                                     (gx#syntax-e _tl152936152954_)))
                                (let ((_hd152938152960_
                                       (##car _e152937152957_))
                                      (_tl152939152962_
                                       (##cdr _e152937152957_)))
                                  (let* ((_hd152965_ _hd152938152960_)
                                         (_body152967_ _tl152939152962_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152965_)
                                        (let ((_expanders152969_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd152965_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd152965_
                                              _expanders152969_)
                                             (gx#core-expand-local-block
                                              _stx152930_
                                              _body152967_))
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
                                        (_E152933152945_)))))
                              (_E152933152945_))))
                      (_E152933152945_)))))
          (_E152932152972_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx152879_)
        (let* ((_e152880152890_ _stx152879_)
               (_E152882152894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152880152890_)))
               (_E152881152926_
                (lambda ()
                  (if (gx#stx-pair? _e152880152890_)
                      (let ((_e152883152898_ (gx#syntax-e _e152880152890_)))
                        (let ((_hd152884152901_ (##car _e152883152898_))
                              (_tl152885152903_ (##cdr _e152883152898_)))
                          (if (gx#stx-pair? _tl152885152903_)
                              (let ((_e152886152906_
                                     (gx#syntax-e _tl152885152903_)))
                                (let ((_hd152887152909_
                                       (##car _e152886152906_))
                                      (_tl152888152911_
                                       (##cdr _e152886152906_)))
                                  (let* ((_hd152914_ _hd152887152909_)
                                         (_body152916_ _tl152888152911_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152914_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd152914_
                                            (make-list
                                             (gx#stx-length _hd152914_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g152918152921_
                                                     _g152919152923_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g152918152921_
                                               _g152919152923_
                                               '#t))
                                            _hd152914_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd152914_))
                                           (gx#core-expand-local-block
                                            _stx152879_
                                            _body152916_))
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
                                        (_E152882152894_)))))
                              (_E152882152894_))))
                      (_E152882152894_)))))
          (_E152881152926_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx152836_)
        (if (gx#stx-list? _stx152836_)
            (gx#stx-andmap
             (lambda (_bind152838_)
               (let* ((_e152839152849_ _bind152838_)
                      (_E152841152853_ (lambda () '#f))
                      (_E152840152875_
                       (lambda ()
                         (if (gx#stx-pair? _e152839152849_)
                             (let ((_e152842152857_
                                    (gx#syntax-e _e152839152849_)))
                               (let ((_hd152843152860_ (##car _e152842152857_))
                                     (_tl152844152862_
                                      (##cdr _e152842152857_)))
                                 (let ((_hd152865_ _hd152843152860_))
                                   (if (gx#stx-pair? _tl152844152862_)
                                       (let ((_e152845152867_
                                              (gx#syntax-e _tl152844152862_)))
                                         (let ((_hd152846152870_
                                                (##car _e152845152867_))
                                               (_tl152847152872_
                                                (##cdr _e152845152867_)))
                                           (if (gx#stx-null? _tl152847152872_)
                                               (if '#t
                                                   (gx#identifier? _hd152865_)
                                                   (_E152841152853_))
                                               (_E152841152853_))))
                                       (_E152841152853_)))))
                             (_E152841152853_)))))
                 (_E152840152875_)))
             _stx152836_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind152793_)
        (let* ((_e152794152804_ _bind152793_)
               (_E152796152808_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152794152804_)))
               (_E152795152832_
                (lambda ()
                  (if (gx#stx-pair? _e152794152804_)
                      (let ((_e152797152812_ (gx#syntax-e _e152794152804_)))
                        (let ((_hd152798152815_ (##car _e152797152812_))
                              (_tl152799152817_ (##cdr _e152797152812_)))
                          (if (gx#stx-pair? _tl152799152817_)
                              (let ((_e152800152820_
                                     (gx#syntax-e _tl152799152817_)))
                                (let ((_hd152801152823_
                                       (##car _e152800152820_))
                                      (_tl152802152825_
                                       (##cdr _e152800152820_)))
                                  (let ((_expr152828_ _hd152801152823_))
                                    (if (gx#stx-null? _tl152802152825_)
                                        (if '#t
                                            (let ((_g158929_
                                                   (gx#core-expand-expression+1
                                                    _expr152828_)))
                                              (begin
                                                (let ((_g158930_
                                                       (if (##values?
                                                            _g158929_)
                                                           (##vector-length
                                                            _g158929_)
                                                           1)))
                                                  (if (not (##fx= _g158930_ 2))
                                                      (error "Context expects 2 values"
                                                             _g158930_)))
                                                (let ((_e152830_
                                                       (##vector-ref
                                                        _g158929_
                                                        1)))
                                                  _e152830_)))
                                            (_E152796152808_))
                                        (_E152796152808_)))))
                              (_E152796152808_))))
                      (_E152796152808_)))))
          (_E152795152832_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind152738_ _e152739_ _rebind?152740_)
        (let* ((_e152741152751_ _bind152738_)
               (_E152743152755_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152741152751_)))
               (_E152742152777_
                (lambda ()
                  (if (gx#stx-pair? _e152741152751_)
                      (let ((_e152744152759_ (gx#syntax-e _e152741152751_)))
                        (let ((_hd152745152762_ (##car _e152744152759_))
                              (_tl152746152764_ (##cdr _e152744152759_)))
                          (let ((_id152767_ _hd152745152762_))
                            (if (gx#stx-pair? _tl152746152764_)
                                (let ((_e152747152769_
                                       (gx#syntax-e _tl152746152764_)))
                                  (let ((_hd152748152772_
                                         (##car _e152747152769_))
                                        (_tl152749152774_
                                         (##cdr _e152747152769_)))
                                    (if (gx#stx-null? _tl152749152774_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id152767_
                                             _e152739_
                                             _rebind?152740_)
                                            (_E152743152755_))
                                        (_E152743152755_))))
                                (_E152743152755_)))))
                      (_E152743152755_)))))
          (_E152742152777_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind152784_ _e152785_)
        (let ((_rebind?152787_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind152784_
           _e152785_
           _rebind?152787_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g158932_
        (let ((_g158931_ (##length _g158932_)))
          (cond ((##fx= _g158931_ 2)
                 (apply (lambda (_bind152784_ _e152785_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind152784_
                           _e152785_))
                        _g158932_))
                ((##fx= _g158931_ 3)
                 (apply (lambda (_bind152789_ _e152790_ _rebind?152791_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind152789_
                           _e152790_
                           _rebind?152791_))
                        _g158932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g158932_))))))
    (define gx#core-expand-expression%
      (lambda (_stx152696_)
        (let* ((_e152697152707_ _stx152696_)
               (_E152699152711_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152697152707_)))
               (_E152698152733_
                (lambda ()
                  (if (gx#stx-pair? _e152697152707_)
                      (let ((_e152700152715_ (gx#syntax-e _e152697152707_)))
                        (let ((_hd152701152718_ (##car _e152700152715_))
                              (_tl152702152720_ (##cdr _e152700152715_)))
                          (if (gx#stx-pair? _tl152702152720_)
                              (let ((_e152703152723_
                                     (gx#syntax-e _tl152702152720_)))
                                (let ((_hd152704152726_
                                       (##car _e152703152723_))
                                      (_tl152705152728_
                                       (##cdr _e152703152723_)))
                                  (let ((_expr152731_ _hd152704152726_))
                                    (if (gx#stx-null? _tl152705152728_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr152731_)
                                            (_E152699152711_))
                                        (_E152699152711_)))))
                              (_E152699152711_))))
                      (_E152699152711_)))))
          (_E152698152733_))))
    (define gx#core-expand-quote%
      (lambda (_stx152655_)
        (let* ((_e152656152666_ _stx152655_)
               (_E152658152670_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152656152666_)))
               (_E152657152692_
                (lambda ()
                  (if (gx#stx-pair? _e152656152666_)
                      (let ((_e152659152674_ (gx#syntax-e _e152656152666_)))
                        (let ((_hd152660152677_ (##car _e152659152674_))
                              (_tl152661152679_ (##cdr _e152659152674_)))
                          (if (gx#stx-pair? _tl152661152679_)
                              (let ((_e152662152682_
                                     (gx#syntax-e _tl152661152679_)))
                                (let ((_hd152663152685_
                                       (##car _e152662152682_))
                                      (_tl152664152687_
                                       (##cdr _e152662152682_)))
                                  (let ((_e152690_ _hd152663152685_))
                                    (if (gx#stx-null? _tl152664152687_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e152690_)
                                                         '()))
                                             (gx#stx-source _stx152655_))
                                            (_E152658152670_))
                                        (_E152658152670_)))))
                              (_E152658152670_))))
                      (_E152658152670_)))))
          (_E152657152692_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx152614_)
        (let* ((_e152615152625_ _stx152614_)
               (_E152617152629_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152615152625_)))
               (_E152616152651_
                (lambda ()
                  (if (gx#stx-pair? _e152615152625_)
                      (let ((_e152618152633_ (gx#syntax-e _e152615152625_)))
                        (let ((_hd152619152636_ (##car _e152618152633_))
                              (_tl152620152638_ (##cdr _e152618152633_)))
                          (if (gx#stx-pair? _tl152620152638_)
                              (let ((_e152621152641_
                                     (gx#syntax-e _tl152620152638_)))
                                (let ((_hd152622152644_
                                       (##car _e152621152641_))
                                      (_tl152623152646_
                                       (##cdr _e152621152641_)))
                                  (let ((_e152649_ _hd152622152644_))
                                    (if (gx#stx-null? _tl152623152646_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e152649_)
                                                         '()))
                                             (gx#stx-source _stx152614_))
                                            (_E152617152629_))
                                        (_E152617152629_)))))
                              (_E152617152629_))))
                      (_E152617152629_)))))
          (_E152616152651_))))
    (define gx#core-expand-call%
      (lambda (_stx152571_)
        (let* ((_e152572152582_ _stx152571_)
               (_E152574152586_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152572152582_)))
               (_E152573152610_
                (lambda ()
                  (if (gx#stx-pair? _e152572152582_)
                      (let ((_e152575152590_ (gx#syntax-e _e152572152582_)))
                        (let ((_hd152576152593_ (##car _e152575152590_))
                              (_tl152577152595_ (##cdr _e152575152590_)))
                          (if (gx#stx-pair? _tl152577152595_)
                              (let ((_e152578152598_
                                     (gx#syntax-e _tl152577152595_)))
                                (let ((_hd152579152601_
                                       (##car _e152578152598_))
                                      (_tl152580152603_
                                       (##cdr _e152578152598_)))
                                  (let* ((_rator152606_ _hd152579152601_)
                                         (_args152608_ _tl152580152603_))
                                    (if (gx#stx-list? _args152608_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator152606_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args152608_))
                                         (gx#stx-source _stx152571_))
                                        (_E152574152586_)))))
                              (_E152574152586_))))
                      (_E152574152586_)))))
          (_E152573152610_))))
    (define gx#core-expand-if%
      (lambda (_stx152504_)
        (let* ((_e152505152521_ _stx152504_)
               (_E152507152525_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152505152521_)))
               (_E152506152567_
                (lambda ()
                  (if (gx#stx-pair? _e152505152521_)
                      (let ((_e152508152529_ (gx#syntax-e _e152505152521_)))
                        (let ((_hd152509152532_ (##car _e152508152529_))
                              (_tl152510152534_ (##cdr _e152508152529_)))
                          (if (gx#stx-pair? _tl152510152534_)
                              (let ((_e152511152537_
                                     (gx#syntax-e _tl152510152534_)))
                                (let ((_hd152512152540_
                                       (##car _e152511152537_))
                                      (_tl152513152542_
                                       (##cdr _e152511152537_)))
                                  (let ((_test152545_ _hd152512152540_))
                                    (if (gx#stx-pair? _tl152513152542_)
                                        (let ((_e152514152547_
                                               (gx#syntax-e _tl152513152542_)))
                                          (let ((_hd152515152550_
                                                 (##car _e152514152547_))
                                                (_tl152516152552_
                                                 (##cdr _e152514152547_)))
                                            (let ((_K152555_ _hd152515152550_))
                                              (if (gx#stx-pair?
                                                   _tl152516152552_)
                                                  (let ((_e152517152557_
                                                         (gx#syntax-e
                                                          _tl152516152552_)))
                                                    (let ((_hd152518152560_
                                                           (##car _e152517152557_))
                                                          (_tl152519152562_
                                                           (##cdr _e152517152557_)))
                                                      (let ((_E152565_
                                                             _hd152518152560_))
                                                        (if (gx#stx-null?
                                                             _tl152519152562_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test152545_)
                                     (cons (gx#core-expand-expression
                                            _K152555_)
                                           (cons (gx#core-expand-expression
                                                  _E152565_)
                                                 '()))))
                         (gx#stx-source _stx152504_))
                        (_E152507152525_))
                    (_E152507152525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152507152525_)))))
                                        (_E152507152525_)))))
                              (_E152507152525_))))
                      (_E152507152525_)))))
          (_E152506152567_))))
    (define gx#core-expand-ref%
      (lambda (_stx152463_)
        (let* ((_e152464152474_ _stx152463_)
               (_E152466152478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152464152474_)))
               (_E152465152500_
                (lambda ()
                  (if (gx#stx-pair? _e152464152474_)
                      (let ((_e152467152482_ (gx#syntax-e _e152464152474_)))
                        (let ((_hd152468152485_ (##car _e152467152482_))
                              (_tl152469152487_ (##cdr _e152467152482_)))
                          (if (gx#stx-pair? _tl152469152487_)
                              (let ((_e152470152490_
                                     (gx#syntax-e _tl152469152487_)))
                                (let ((_hd152471152493_
                                       (##car _e152470152490_))
                                      (_tl152472152495_
                                       (##cdr _e152470152490_)))
                                  (let ((_id152498_ _hd152471152493_))
                                    (if (gx#stx-null? _tl152472152495_)
                                        (if (gx#identifier? _id152498_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id152498_
                                                          _stx152463_)
                                                         '()))
                                             (gx#stx-source _stx152463_))
                                            (_E152466152478_))
                                        (_E152466152478_)))))
                              (_E152466152478_))))
                      (_E152466152478_)))))
          (_E152465152500_))))
    (define gx#core-expand-setq%
      (lambda (_stx152409_)
        (let* ((_e152410152423_ _stx152409_)
               (_E152412152427_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152410152423_)))
               (_E152411152459_
                (lambda ()
                  (if (gx#stx-pair? _e152410152423_)
                      (let ((_e152413152431_ (gx#syntax-e _e152410152423_)))
                        (let ((_hd152414152434_ (##car _e152413152431_))
                              (_tl152415152436_ (##cdr _e152413152431_)))
                          (if (gx#stx-pair? _tl152415152436_)
                              (let ((_e152416152439_
                                     (gx#syntax-e _tl152415152436_)))
                                (let ((_hd152417152442_
                                       (##car _e152416152439_))
                                      (_tl152418152444_
                                       (##cdr _e152416152439_)))
                                  (let ((_id152447_ _hd152417152442_))
                                    (if (gx#stx-pair? _tl152418152444_)
                                        (let ((_e152419152449_
                                               (gx#syntax-e _tl152418152444_)))
                                          (let ((_hd152420152452_
                                                 (##car _e152419152449_))
                                                (_tl152421152454_
                                                 (##cdr _e152419152449_)))
                                            (let ((_expr152457_
                                                   _hd152420152452_))
                                              (if (gx#stx-null?
                                                   _tl152421152454_)
                                                  (if (gx#identifier?
                                                       _id152447_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id152447_
                            _stx152409_)
                           (cons (gx#core-expand-expression _expr152457_)
                                 '())))
               (gx#stx-source _stx152409_))
              (_E152412152427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152412152427_)))))
                                        (_E152412152427_)))))
                              (_E152412152427_))))
                      (_E152412152427_)))))
          (_E152411152459_))))
    (define gx#macro-expand-extern
      (lambda (_stx152257_)
        (letrec ((_generate152259_
                  (lambda (_body152289_)
                    (let _lp152291_ ((_rest152293_ _body152289_)
                                     (_ns152294_
                                      (gx#core-context-namespace__0))
                                     (_r152295_ '()))
                      (let* ((_e152296152311_ _rest152293_)
                             (_E152309152315_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e152296152311_)))
                             (_E152305152319_
                              (lambda ()
                                (if (gx#stx-null? _e152296152311_)
                                    (if '#t
                                        (reverse _r152295_)
                                        (_E152309152315_))
                                    (_E152309152315_))))
                             (_E152298152376_
                              (lambda ()
                                (if (gx#stx-pair? _e152296152311_)
                                    (let ((_e152306152323_
                                           (gx#syntax-e _e152296152311_)))
                                      (let ((_hd152307152326_
                                             (##car _e152306152323_))
                                            (_tl152308152328_
                                             (##cdr _e152306152323_)))
                                        (let* ((_hd152331_ _hd152307152326_)
                                               (_rest152333_ _tl152308152328_))
                                          (if '#t
                                              (if (gx#identifier? _hd152331_)
                                                  (_lp152291_
                                                   _rest152333_
                                                   _ns152294_
                                                   (cons (cons _hd152331_
                                                               (cons (if _ns152294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd152331_
                                  _ns152294_
                                  '"#"
                                  _hd152331_)
                                 _hd152331_)
                             '()))
                 _r152295_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e152334152344_
                                                          _hd152331_)
                                                         (_E152336152348_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e152334152344_)))
                                                         (_E152335152372_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e152334152344_)
                        (let ((_e152337152352_ (gx#syntax-e _e152334152344_)))
                          (let ((_hd152338152355_ (##car _e152337152352_))
                                (_tl152339152357_ (##cdr _e152337152352_)))
                            (let ((_id152360_ _hd152338152355_))
                              (if (gx#stx-pair? _tl152339152357_)
                                  (let ((_e152340152362_
                                         (gx#syntax-e _tl152339152357_)))
                                    (let ((_hd152341152365_
                                           (##car _e152340152362_))
                                          (_tl152342152367_
                                           (##cdr _e152340152362_)))
                                      (let ((_eid152370_ _hd152341152365_))
                                        (if (gx#stx-null? _tl152342152367_)
                                            (if (and (gx#identifier?
                                                      _id152360_)
                                                     (gx#identifier?
                                                      _eid152370_))
                                                (_lp152291_
                                                 _rest152333_
                                                 _ns152294_
                                                 (cons (cons _id152360_
                                                             (cons _eid152370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r152295_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152336152348_))
                                            (_E152336152348_)))))
                                  (_E152336152348_)))))
                        (_E152336152348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152335152372_)))
                                              (_E152305152319_)))))
                                    (_E152305152319_))))
                             (_E152297152405_
                              (lambda ()
                                (if (gx#stx-pair? _e152296152311_)
                                    (let ((_e152299152380_
                                           (gx#syntax-e _e152296152311_)))
                                      (let ((_hd152300152383_
                                             (##car _e152299152380_))
                                            (_tl152301152385_
                                             (##cdr _e152299152380_)))
                                        (if (eq? (gx#stx-e _hd152300152383_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl152301152385_)
                                                (let ((_e152302152388_
                                                       (gx#syntax-e
                                                        _tl152301152385_)))
                                                  (let ((_hd152303152391_
                                                         (##car _e152302152388_))
                                                        (_tl152304152393_
                                                         (##cdr _e152302152388_)))
                                                    (let* ((_ns152396_
                                                            _hd152303152391_)
                                                           (_rest152398_
                                                            _tl152304152393_))
                                                      (if '#t
                                                          (let ((_ns152403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns152396_)
                             (symbol->string (gx#stx-e _ns152396_))
                             (if (or (gx#stx-string? _ns152396_)
                                     (gx#stx-false? _ns152396_))
                                 (gx#stx-e _ns152396_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx152257_
                                  _ns152396_)))))
                    (_lp152291_ _rest152398_ _ns152403_ _r152295_))
                  (_E152298152376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152298152376_))
                                            (_E152298152376_))))
                                    (_E152298152376_)))))
                        (_E152297152405_))))))
          (let* ((_e152260152267_ _stx152257_)
                 (_E152262152271_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152260152267_)))
                 (_E152261152285_
                  (lambda ()
                    (if (gx#stx-pair? _e152260152267_)
                        (let ((_e152263152275_ (gx#syntax-e _e152260152267_)))
                          (let ((_hd152264152278_ (##car _e152263152275_))
                                (_tl152265152280_ (##cdr _e152263152275_)))
                            (let ((_body152283_ _tl152265152280_))
                              (if (gx#stx-list? _body152283_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate152259_ _body152283_))
                                  (_E152262152271_)))))
                        (_E152262152271_)))))
            (_E152261152285_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx152203_)
        (let* ((_e152204152217_ _stx152203_)
               (_E152206152221_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152204152217_)))
               (_E152205152253_
                (lambda ()
                  (if (gx#stx-pair? _e152204152217_)
                      (let ((_e152207152225_ (gx#syntax-e _e152204152217_)))
                        (let ((_hd152208152228_ (##car _e152207152225_))
                              (_tl152209152230_ (##cdr _e152207152225_)))
                          (if (gx#stx-pair? _tl152209152230_)
                              (let ((_e152210152233_
                                     (gx#syntax-e _tl152209152230_)))
                                (let ((_hd152211152236_
                                       (##car _e152210152233_))
                                      (_tl152212152238_
                                       (##cdr _e152210152233_)))
                                  (let ((_hd152241_ _hd152211152236_))
                                    (if (gx#stx-pair? _tl152212152238_)
                                        (let ((_e152213152243_
                                               (gx#syntax-e _tl152212152238_)))
                                          (let ((_hd152214152246_
                                                 (##car _e152213152243_))
                                                (_tl152215152248_
                                                 (##cdr _e152213152243_)))
                                            (let ((_expr152251_
                                                   _hd152214152246_))
                                              (if (gx#stx-null?
                                                   _tl152215152248_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd152241_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd152241_)
                          (cons _expr152251_ '())))
              (_E152206152221_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152206152221_)))))
                                        (_E152206152221_)))))
                              (_E152206152221_))))
                      (_E152206152221_)))))
          (_E152205152253_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx152149_)
        (let* ((_e152150152163_ _stx152149_)
               (_E152152152167_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152150152163_)))
               (_E152151152199_
                (lambda ()
                  (if (gx#stx-pair? _e152150152163_)
                      (let ((_e152153152171_ (gx#syntax-e _e152150152163_)))
                        (let ((_hd152154152174_ (##car _e152153152171_))
                              (_tl152155152176_ (##cdr _e152153152171_)))
                          (if (gx#stx-pair? _tl152155152176_)
                              (let ((_e152156152179_
                                     (gx#syntax-e _tl152155152176_)))
                                (let ((_hd152157152182_
                                       (##car _e152156152179_))
                                      (_tl152158152184_
                                       (##cdr _e152156152179_)))
                                  (let ((_hd152187_ _hd152157152182_))
                                    (if (gx#stx-pair? _tl152158152184_)
                                        (let ((_e152159152189_
                                               (gx#syntax-e _tl152158152184_)))
                                          (let ((_hd152160152192_
                                                 (##car _e152159152189_))
                                                (_tl152161152194_
                                                 (##cdr _e152159152189_)))
                                            (let ((_expr152197_
                                                   _hd152160152192_))
                                              (if (gx#stx-null?
                                                   _tl152161152194_)
                                                  (if (gx#identifier?
                                                       _hd152187_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd152187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr152197_ '())))
              (_E152152152167_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152152152167_)))))
                                        (_E152152152167_)))))
                              (_E152152152167_))))
                      (_E152152152167_)))))
          (_E152151152199_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx152095_)
        (let* ((_e152096152109_ _stx152095_)
               (_E152098152113_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152096152109_)))
               (_E152097152145_
                (lambda ()
                  (if (gx#stx-pair? _e152096152109_)
                      (let ((_e152099152117_ (gx#syntax-e _e152096152109_)))
                        (let ((_hd152100152120_ (##car _e152099152117_))
                              (_tl152101152122_ (##cdr _e152099152117_)))
                          (if (gx#stx-pair? _tl152101152122_)
                              (let ((_e152102152125_
                                     (gx#syntax-e _tl152101152122_)))
                                (let ((_hd152103152128_
                                       (##car _e152102152125_))
                                      (_tl152104152130_
                                       (##cdr _e152102152125_)))
                                  (let ((_id152133_ _hd152103152128_))
                                    (if (gx#stx-pair? _tl152104152130_)
                                        (let ((_e152105152135_
                                               (gx#syntax-e _tl152104152130_)))
                                          (let ((_hd152106152138_
                                                 (##car _e152105152135_))
                                                (_tl152107152140_
                                                 (##cdr _e152105152135_)))
                                            (let ((_alias-id152143_
                                                   _hd152106152138_))
                                              (if (gx#stx-null?
                                                   _tl152107152140_)
                                                  (if (and (gx#identifier?
                                                            _id152133_)
                                                           (gx#identifier?
                                                            _alias-id152143_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id152133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id152143_ '())))
              (_E152098152113_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152098152113_)))))
                                        (_E152098152113_)))))
                              (_E152098152113_))))
                      (_E152098152113_)))))
          (_E152097152145_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx152052_)
        (let* ((_e152053152063_ _stx152052_)
               (_E152055152067_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152053152063_)))
               (_E152054152091_
                (lambda ()
                  (if (gx#stx-pair? _e152053152063_)
                      (let ((_e152056152071_ (gx#syntax-e _e152053152063_)))
                        (let ((_hd152057152074_ (##car _e152056152071_))
                              (_tl152058152076_ (##cdr _e152056152071_)))
                          (if (gx#stx-pair? _tl152058152076_)
                              (let ((_e152059152079_
                                     (gx#syntax-e _tl152058152076_)))
                                (let ((_hd152060152082_
                                       (##car _e152059152079_))
                                      (_tl152061152084_
                                       (##cdr _e152059152079_)))
                                  (let* ((_hd152087_ _hd152060152082_)
                                         (_body152089_ _tl152061152084_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd152087_)
                                             (gx#stx-list? _body152089_)
                                             (not (gx#stx-null? _body152089_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd152087_)
                                         _body152089_)
                                        (_E152055152067_)))))
                              (_E152055152067_))))
                      (_E152055152067_)))))
          (_E152054152091_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx151988_)
        (letrec ((_generate151990_
                  (lambda (_clause152020_)
                    (let* ((_e152021152028_ _clause152020_)
                           (_E152023152032_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx151988_
                               _clause152020_)))
                           (_E152022152048_
                            (lambda ()
                              (if (gx#stx-pair? _e152021152028_)
                                  (let ((_e152024152036_
                                         (gx#syntax-e _e152021152028_)))
                                    (let ((_hd152025152039_
                                           (##car _e152024152036_))
                                          (_tl152026152041_
                                           (##cdr _e152024152036_)))
                                      (let* ((_hd152044_ _hd152025152039_)
                                             (_body152046_ _tl152026152041_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd152044_)
                                                 (gx#stx-list? _body152046_)
                                                 (not (gx#stx-null?
                                                       _body152046_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd152044_)
                                                   _body152046_)
                                             (gx#stx-source _clause152020_))
                                            (_E152023152032_)))))
                                  (_E152023152032_)))))
                      (_E152022152048_)))))
          (let* ((_e151991151998_ _stx151988_)
                 (_E151993152002_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151991151998_)))
                 (_E151992152016_
                  (lambda ()
                    (if (gx#stx-pair? _e151991151998_)
                        (let ((_e151994152006_ (gx#syntax-e _e151991151998_)))
                          (let ((_hd151995152009_ (##car _e151994152006_))
                                (_tl151996152011_ (##cdr _e151994152006_)))
                            (let ((_clauses152014_ _tl151996152011_))
                              (if (gx#stx-list? _clauses152014_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate151990_
                                    _clauses152014_))
                                  (_E151993152002_)))))
                        (_E151993152002_)))))
            (_E151992152016_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx151889_ _form151890_)
        (letrec ((_generate151892_
                  (lambda (_bind151935_)
                    (let* ((_e151936151946_ _bind151935_)
                           (_E151938151950_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx151889_
                               _bind151935_)))
                           (_E151937151974_
                            (lambda ()
                              (if (gx#stx-pair? _e151936151946_)
                                  (let ((_e151939151954_
                                         (gx#syntax-e _e151936151946_)))
                                    (let ((_hd151940151957_
                                           (##car _e151939151954_))
                                          (_tl151941151959_
                                           (##cdr _e151939151954_)))
                                      (let ((_ids151962_ _hd151940151957_))
                                        (if (gx#stx-pair? _tl151941151959_)
                                            (let ((_e151942151964_
                                                   (gx#syntax-e
                                                    _tl151941151959_)))
                                              (let ((_hd151943151967_
                                                     (##car _e151942151964_))
                                                    (_tl151944151969_
                                                     (##cdr _e151942151964_)))
                                                (let ((_expr151972_
                                                       _hd151943151967_))
                                                  (if (gx#stx-null?
                                                       _tl151944151969_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids151962_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids151962_)
                        (cons _expr151972_ '()))
                  (_E151938151950_))
              (_E151938151950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E151938151950_)))))
                                  (_E151938151950_)))))
                      (_E151937151974_)))))
          (let* ((_e151893151903_ _stx151889_)
                 (_E151895151907_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151893151903_)))
                 (_E151894151931_
                  (lambda ()
                    (if (gx#stx-pair? _e151893151903_)
                        (let ((_e151896151911_ (gx#syntax-e _e151893151903_)))
                          (let ((_hd151897151914_ (##car _e151896151911_))
                                (_tl151898151916_ (##cdr _e151896151911_)))
                            (if (gx#stx-pair? _tl151898151916_)
                                (let ((_e151899151919_
                                       (gx#syntax-e _tl151898151916_)))
                                  (let ((_hd151900151922_
                                         (##car _e151899151919_))
                                        (_tl151901151924_
                                         (##cdr _e151899151919_)))
                                    (let* ((_hd151927_ _hd151900151922_)
                                           (_body151929_ _tl151901151924_))
                                      (if (and (gx#stx-list? _hd151927_)
                                               (gx#stx-list? _body151929_)
                                               (not (gx#stx-null?
                                                     _body151929_)))
                                          (gx#core-cons*
                                           _form151890_
                                           (gx#stx-map1
                                            _generate151892_
                                            _hd151927_)
                                           _body151929_)
                                          (_E151895151907_)))))
                                (_E151895151907_))))
                        (_E151895151907_)))))
            (_E151894151931_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx151981_)
        (let ((_form151983_ '%#let-values))
          (gx#macro-expand-let-values__% _stx151981_ _form151983_))))
    (define gx#macro-expand-let-values
      (lambda _g158934_
        (let ((_g158933_ (##length _g158934_)))
          (cond ((##fx= _g158933_ 1)
                 (apply (lambda (_stx151981_)
                          (gx#macro-expand-let-values__0 _stx151981_))
                        _g158934_))
                ((##fx= _g158933_ 2)
                 (apply (lambda (_stx151985_ _form151986_)
                          (gx#macro-expand-let-values__%
                           _stx151985_
                           _form151986_))
                        _g158934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g158934_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx151886_)
        (gx#macro-expand-let-values__% _stx151886_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx151884_)
        (gx#macro-expand-let-values__% _stx151884_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx151775_)
        (let* ((_e151776151802_ _stx151775_)
               (_E151788151806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151776151802_)))
               (_E151778151848_
                (lambda ()
                  (if (gx#stx-pair? _e151776151802_)
                      (let ((_e151789151810_ (gx#syntax-e _e151776151802_)))
                        (let ((_hd151790151813_ (##car _e151789151810_))
                              (_tl151791151815_ (##cdr _e151789151810_)))
                          (if (gx#stx-pair? _tl151791151815_)
                              (let ((_e151792151818_
                                     (gx#syntax-e _tl151791151815_)))
                                (let ((_hd151793151821_
                                       (##car _e151792151818_))
                                      (_tl151794151823_
                                       (##cdr _e151792151818_)))
                                  (let ((_test151826_ _hd151793151821_))
                                    (if (gx#stx-pair? _tl151794151823_)
                                        (let ((_e151795151828_
                                               (gx#syntax-e _tl151794151823_)))
                                          (let ((_hd151796151831_
                                                 (##car _e151795151828_))
                                                (_tl151797151833_
                                                 (##cdr _e151795151828_)))
                                            (let ((_K151836_ _hd151796151831_))
                                              (if (gx#stx-pair?
                                                   _tl151797151833_)
                                                  (let ((_e151798151838_
                                                         (gx#syntax-e
                                                          _tl151797151833_)))
                                                    (let ((_hd151799151841_
                                                           (##car _e151798151838_))
                                                          (_tl151800151843_
                                                           (##cdr _e151798151838_)))
                                                      (let ((_E151846_
                                                             _hd151799151841_))
                                                        (if (gx#stx-null?
                                                             _tl151800151843_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test151826_
                         _K151836_
                         _E151846_)
                        (_E151788151806_))
                    (_E151788151806_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151788151806_)))))
                                        (_E151788151806_)))))
                              (_E151788151806_))))
                      (_E151788151806_))))
               (_E151777151880_
                (lambda ()
                  (if (gx#stx-pair? _e151776151802_)
                      (let ((_e151779151852_ (gx#syntax-e _e151776151802_)))
                        (let ((_hd151780151855_ (##car _e151779151852_))
                              (_tl151781151857_ (##cdr _e151779151852_)))
                          (if (gx#stx-pair? _tl151781151857_)
                              (let ((_e151782151860_
                                     (gx#syntax-e _tl151781151857_)))
                                (let ((_hd151783151863_
                                       (##car _e151782151860_))
                                      (_tl151784151865_
                                       (##cdr _e151782151860_)))
                                  (let ((_test151868_ _hd151783151863_))
                                    (if (gx#stx-pair? _tl151784151865_)
                                        (let ((_e151785151870_
                                               (gx#syntax-e _tl151784151865_)))
                                          (let ((_hd151786151873_
                                                 (##car _e151785151870_))
                                                (_tl151787151875_
                                                 (##cdr _e151785151870_)))
                                            (let ((_K151878_ _hd151786151873_))
                                              (if (gx#stx-null?
                                                   _tl151787151875_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test151868_
                                                       _K151878_
                                                       '#!void)
                                                      (_E151778151848_))
                                                  (_E151778151848_)))))
                                        (_E151778151848_)))))
                              (_E151778151848_))))
                      (_E151778151848_)))))
          (_E151777151880_))))
    (define gx#free-identifier=?
      (lambda (_xid151763_ _yid151764_)
        (let ((_xe151766_ (gx#resolve-identifier__0 _xid151763_))
              (_ye151767_ (gx#resolve-identifier__0 _yid151764_)))
          (if (and _xe151766_ _ye151767_)
              (let ((_$e151769_ (eq? _xe151766_ _ye151767_)))
                (if _$e151769_
                    _$e151769_
                    (if (##structure-instance-of? _xe151766_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye151767_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe151766_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye151767_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe151766_ _ye151767_)
                  '#f
                  (gx#stx-eq? _xid151763_ _yid151764_))))))
    (define gx#bound-identifier=?
      (lambda (_xid151747_ _yid151748_)
        (letrec ((_context151750_
                  (lambda (_e151761_)
                    (if (##structure-direct-instance-of?
                         _e151761_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e151761_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks151751_
                  (lambda (_e151759_)
                    (if (symbol? _e151759_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e151759_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e151759_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e151759_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap151752_
                  (lambda (_e151757_)
                    (if (symbol? _e151757_)
                        _e151757_
                        (gx#syntax-local-unwrap _e151757_)))))
          (let ((_x151754_ (_unwrap151752_ _xid151747_))
                (_y151755_ (_unwrap151752_ _yid151748_)))
            (if (gx#stx-eq? _x151754_ _y151755_)
                (if (eq? (_context151750_ _x151754_)
                         (_context151750_ _y151755_))
                    (equal? (_marks151751_ _x151754_)
                            (_marks151751_ _y151755_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx151745_)
        (if (gx#identifier? _stx151745_)
            (gx#core-identifier=? _stx151745_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx151743_)
        (if (gx#identifier? _stx151743_)
            (gx#core-identifier=? _stx151743_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x151741_)
        (if (gx#identifier? _x151741_)
            (if (not (gx#underscore? _x151741_)) _x151741_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx151687_ _where151688_)
        (let _lp151690_ ((_rest151692_ (gx#syntax->list _stx151687_)))
          (let* ((_rest151693151701_ _rest151692_)
                 (_else151695151709_ (lambda () '#t))
                 (_K151697151719_
                  (lambda (_rest151712_ _hd151713_)
                    (if (not (gx#identifier? _hd151713_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where151688_
                         _hd151713_)
                        (if (find (lambda (_g151714151716_)
                                    (gx#bound-identifier=?
                                     _g151714151716_
                                     _hd151713_))
                                  _rest151712_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where151688_
                             _hd151713_)
                            (_lp151690_ _rest151712_))))))
            (if (##pair? _rest151693151701_)
                (let ((_hd151698151722_ (##car _rest151693151701_))
                      (_tl151699151724_ (##cdr _rest151693151701_)))
                  (let* ((_hd151727_ _hd151698151722_)
                         (_rest151729_ _tl151699151724_))
                    (_K151697151719_ _rest151729_ _hd151727_)))
                (_else151695151709_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx151734_)
        (let ((_where151736_ _stx151734_))
          (gx#check-duplicate-identifiers__% _stx151734_ _where151736_))))
    (define gx#check-duplicate-identifiers
      (lambda _g158936_
        (let ((_g158935_ (##length _g158936_)))
          (cond ((##fx= _g158935_ 1)
                 (apply (lambda (_stx151734_)
                          (gx#check-duplicate-identifiers__0 _stx151734_))
                        _g158936_))
                ((##fx= _g158935_ 2)
                 (apply (lambda (_stx151738_ _where151739_)
                          (gx#check-duplicate-identifiers__%
                           _stx151738_
                           _where151739_))
                        _g158936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g158936_))))))
    (define gx#core-bind-values?
      (lambda (_stx151679_)
        (gx#stx-andmap
         (lambda (_x151681_)
           (let ((_$e151683_ (gx#identifier? _x151681_)))
             (if _$e151683_ _$e151683_ (gx#stx-false? _x151681_))))
         _stx151679_)))
    (define gx#core-bind-values!__%
      (lambda (_stx151643_ _rebind?151644_ _phi151645_ _ctx151646_)
        (gx#stx-for-each1
         (lambda (_id151648_)
           (if (gx#identifier? _id151648_)
               (gx#core-bind-runtime!__%
                _id151648_
                _rebind?151644_
                _phi151645_
                _ctx151646_)
               '#!void))
         _stx151643_)))
    (define gx#core-bind-values!__0
      (lambda (_stx151653_)
        (let* ((_rebind?151655_ '#f)
               (_phi151657_ (gx#current-expander-phi))
               (_ctx151659_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151653_
           _rebind?151655_
           _phi151657_
           _ctx151659_))))
    (define gx#core-bind-values!__1
      (lambda (_stx151661_ _rebind?151662_)
        (let* ((_phi151664_ (gx#current-expander-phi))
               (_ctx151666_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151661_
           _rebind?151662_
           _phi151664_
           _ctx151666_))))
    (define gx#core-bind-values!__2
      (lambda (_stx151668_ _rebind?151669_ _phi151670_)
        (let ((_ctx151672_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151668_
           _rebind?151669_
           _phi151670_
           _ctx151672_))))
    (define gx#core-bind-values!
      (lambda _g158938_
        (let ((_g158937_ (##length _g158938_)))
          (cond ((##fx= _g158937_ 1)
                 (apply (lambda (_stx151653_)
                          (gx#core-bind-values!__0 _stx151653_))
                        _g158938_))
                ((##fx= _g158937_ 2)
                 (apply (lambda (_stx151661_ _rebind?151662_)
                          (gx#core-bind-values!__1
                           _stx151661_
                           _rebind?151662_))
                        _g158938_))
                ((##fx= _g158937_ 3)
                 (apply (lambda (_stx151668_ _rebind?151669_ _phi151670_)
                          (gx#core-bind-values!__2
                           _stx151668_
                           _rebind?151669_
                           _phi151670_))
                        _g158938_))
                ((##fx= _g158937_ 4)
                 (apply (lambda (_stx151674_
                                 _rebind?151675_
                                 _phi151676_
                                 _ctx151677_)
                          (gx#core-bind-values!__%
                           _stx151674_
                           _rebind?151675_
                           _phi151676_
                           _ctx151677_))
                        _g158938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g158938_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx151638_)
        (gx#stx-map1
         (lambda (_x151640_)
           (if (gx#identifier? _x151640_)
               (gx#core-quote-syntax__0 _x151640_)
               '#f))
         _stx151638_)))
    (define gx#core-runtime-ref?
      (lambda (_stx151631_)
        (if (gx#identifier? _stx151631_)
            (let* ((_bind151633_ (gx#resolve-identifier__0 _stx151631_))
                   (_$e151635_ (not _bind151633_)))
              (if _$e151635_
                  _$e151635_
                  (##structure-instance-of?
                   _bind151633_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id151623_ _form151624_)
        (let ((_bind151626_ (gx#resolve-identifier__0 _id151623_)))
          (if (##structure-instance-of? _bind151626_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id151623_)
              (if (not _bind151626_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id151623_)))
                      (gx#core-quote-syntax__0 _id151623_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form151624_
                       _id151623_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form151624_
                   _id151623_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id151582_ _rebind?151583_ _phi151584_ _ctx151585_)
        (let* ((_key151587_ (gx#core-identifier-key _id151582_))
               (_eid151589_
                (gx#make-binding-id__%
                 _key151587_
                 '#f
                 _phi151584_
                 _ctx151585_))
               (_bind151591_
                (if (##structure-instance-of?
                     _ctx151585_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151589_
                     _key151587_
                     _phi151584_
                     _ctx151585_)
                    (if (##structure-instance-of?
                         _ctx151585_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151589_
                         _key151587_
                         _phi151584_)
                        (if (##structure-instance-of?
                             _ctx151585_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid151589_
                             _key151587_
                             _phi151584_)
                            (##structure
                             gx#runtime-binding::t
                             _eid151589_
                             _key151587_
                             _phi151584_))))))
          (gx#bind-identifier!__%
           _id151582_
           _bind151591_
           _rebind?151583_
           _phi151584_
           _ctx151585_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id151597_)
        (let* ((_rebind?151599_ '#f)
               (_phi151601_ (gx#current-expander-phi))
               (_ctx151603_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151597_
           _rebind?151599_
           _phi151601_
           _ctx151603_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id151605_ _rebind?151606_)
        (let* ((_phi151608_ (gx#current-expander-phi))
               (_ctx151610_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151605_
           _rebind?151606_
           _phi151608_
           _ctx151610_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id151612_ _rebind?151613_ _phi151614_)
        (let ((_ctx151616_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151612_
           _rebind?151613_
           _phi151614_
           _ctx151616_))))
    (define gx#core-bind-runtime!
      (lambda _g158940_
        (let ((_g158939_ (##length _g158940_)))
          (cond ((##fx= _g158939_ 1)
                 (apply (lambda (_id151597_)
                          (gx#core-bind-runtime!__0 _id151597_))
                        _g158940_))
                ((##fx= _g158939_ 2)
                 (apply (lambda (_id151605_ _rebind?151606_)
                          (gx#core-bind-runtime!__1
                           _id151605_
                           _rebind?151606_))
                        _g158940_))
                ((##fx= _g158939_ 3)
                 (apply (lambda (_id151612_ _rebind?151613_ _phi151614_)
                          (gx#core-bind-runtime!__2
                           _id151612_
                           _rebind?151613_
                           _phi151614_))
                        _g158940_))
                ((##fx= _g158939_ 4)
                 (apply (lambda (_id151618_
                                 _rebind?151619_
                                 _phi151620_
                                 _ctx151621_)
                          (gx#core-bind-runtime!__%
                           _id151618_
                           _rebind?151619_
                           _phi151620_
                           _ctx151621_))
                        _g158940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g158940_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id151537_ _eid151538_ _rebind?151539_ _phi151540_ _ctx151541_)
        (let* ((_key151543_ (gx#core-identifier-key _id151537_))
               (_bind151545_
                (if (##structure-instance-of?
                     _ctx151541_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151538_
                     _key151543_
                     _phi151540_
                     _ctx151541_)
                    (if (##structure-instance-of?
                         _ctx151541_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151538_
                         _key151543_
                         _phi151540_)
                        (##structure
                         gx#runtime-binding::t
                         _eid151538_
                         _key151543_
                         _phi151540_)))))
          (gx#bind-identifier!__%
           _id151537_
           _bind151545_
           _rebind?151539_
           _phi151540_
           _ctx151541_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id151551_ _eid151552_)
        (let* ((_rebind?151554_ '#f)
               (_phi151556_ (gx#current-expander-phi))
               (_ctx151558_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151551_
           _eid151552_
           _rebind?151554_
           _phi151556_
           _ctx151558_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id151560_ _eid151561_ _rebind?151562_)
        (let* ((_phi151564_ (gx#current-expander-phi))
               (_ctx151566_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151560_
           _eid151561_
           _rebind?151562_
           _phi151564_
           _ctx151566_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id151568_ _eid151569_ _rebind?151570_ _phi151571_)
        (let ((_ctx151573_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151568_
           _eid151569_
           _rebind?151570_
           _phi151571_
           _ctx151573_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g158942_
        (let ((_g158941_ (##length _g158942_)))
          (cond ((##fx= _g158941_ 2)
                 (apply (lambda (_id151551_ _eid151552_)
                          (gx#core-bind-runtime-reference!__0
                           _id151551_
                           _eid151552_))
                        _g158942_))
                ((##fx= _g158941_ 3)
                 (apply (lambda (_id151560_ _eid151561_ _rebind?151562_)
                          (gx#core-bind-runtime-reference!__1
                           _id151560_
                           _eid151561_
                           _rebind?151562_))
                        _g158942_))
                ((##fx= _g158941_ 4)
                 (apply (lambda (_id151568_
                                 _eid151569_
                                 _rebind?151570_
                                 _phi151571_)
                          (gx#core-bind-runtime-reference!__2
                           _id151568_
                           _eid151569_
                           _rebind?151570_
                           _phi151571_))
                        _g158942_))
                ((##fx= _g158941_ 5)
                 (apply (lambda (_id151575_
                                 _eid151576_
                                 _rebind?151577_
                                 _phi151578_
                                 _ctx151579_)
                          (gx#core-bind-runtime-reference!__%
                           _id151575_
                           _eid151576_
                           _rebind?151577_
                           _phi151578_
                           _ctx151579_))
                        _g158942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g158942_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id151497_ _eid151498_ _rebind?151499_ _phi151500_ _ctx151501_)
        (gx#bind-identifier!__%
         _id151497_
         (##structure
          gx#extern-binding::t
          _eid151498_
          (gx#core-identifier-key _id151497_)
          _phi151500_)
         _rebind?151499_
         _phi151500_
         _ctx151501_)))
    (define gx#core-bind-extern!__0
      (lambda (_id151506_ _eid151507_)
        (let* ((_rebind?151509_ '#f)
               (_phi151511_ (gx#current-expander-phi))
               (_ctx151513_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151506_
           _eid151507_
           _rebind?151509_
           _phi151511_
           _ctx151513_))))
    (define gx#core-bind-extern!__1
      (lambda (_id151515_ _eid151516_ _rebind?151517_)
        (let* ((_phi151519_ (gx#current-expander-phi))
               (_ctx151521_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151515_
           _eid151516_
           _rebind?151517_
           _phi151519_
           _ctx151521_))))
    (define gx#core-bind-extern!__2
      (lambda (_id151523_ _eid151524_ _rebind?151525_ _phi151526_)
        (let ((_ctx151528_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151523_
           _eid151524_
           _rebind?151525_
           _phi151526_
           _ctx151528_))))
    (define gx#core-bind-extern!
      (lambda _g158944_
        (let ((_g158943_ (##length _g158944_)))
          (cond ((##fx= _g158943_ 2)
                 (apply (lambda (_id151506_ _eid151507_)
                          (gx#core-bind-extern!__0 _id151506_ _eid151507_))
                        _g158944_))
                ((##fx= _g158943_ 3)
                 (apply (lambda (_id151515_ _eid151516_ _rebind?151517_)
                          (gx#core-bind-extern!__1
                           _id151515_
                           _eid151516_
                           _rebind?151517_))
                        _g158944_))
                ((##fx= _g158943_ 4)
                 (apply (lambda (_id151523_
                                 _eid151524_
                                 _rebind?151525_
                                 _phi151526_)
                          (gx#core-bind-extern!__2
                           _id151523_
                           _eid151524_
                           _rebind?151525_
                           _phi151526_))
                        _g158944_))
                ((##fx= _g158943_ 5)
                 (apply (lambda (_id151530_
                                 _eid151531_
                                 _rebind?151532_
                                 _phi151533_
                                 _ctx151534_)
                          (gx#core-bind-extern!__%
                           _id151530_
                           _eid151531_
                           _rebind?151532_
                           _phi151533_
                           _ctx151534_))
                        _g158944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g158944_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id151451_ _e151452_ _rebind?151453_ _phi151454_ _ctx151455_)
        (gx#bind-identifier!__%
         _id151451_
         (let ((_key151460_ (gx#core-identifier-key _id151451_))
               (_e151461_
                (if (or (##structure-instance-of? _e151452_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e151452_
                         'gx#expander-context::t))
                    _e151452_
                    (##structure
                     gx#user-expander::t
                     _e151452_
                     _ctx151455_
                     _phi151454_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key151460_ '#t _phi151454_ _ctx151455_)
            _key151460_
            _phi151454_
            _e151461_))
         _rebind?151453_
         _phi151454_
         _ctx151455_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id151466_ _e151467_)
        (let* ((_rebind?151469_ '#f)
               (_phi151471_ (gx#current-expander-phi))
               (_ctx151473_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151466_
           _e151467_
           _rebind?151469_
           _phi151471_
           _ctx151473_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id151475_ _e151476_ _rebind?151477_)
        (let* ((_phi151479_ (gx#current-expander-phi))
               (_ctx151481_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151475_
           _e151476_
           _rebind?151477_
           _phi151479_
           _ctx151481_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id151483_ _e151484_ _rebind?151485_ _phi151486_)
        (let ((_ctx151488_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151483_
           _e151484_
           _rebind?151485_
           _phi151486_
           _ctx151488_))))
    (define gx#core-bind-syntax!
      (lambda _g158946_
        (let ((_g158945_ (##length _g158946_)))
          (cond ((##fx= _g158945_ 2)
                 (apply (lambda (_id151466_ _e151467_)
                          (gx#core-bind-syntax!__0 _id151466_ _e151467_))
                        _g158946_))
                ((##fx= _g158945_ 3)
                 (apply (lambda (_id151475_ _e151476_ _rebind?151477_)
                          (gx#core-bind-syntax!__1
                           _id151475_
                           _e151476_
                           _rebind?151477_))
                        _g158946_))
                ((##fx= _g158945_ 4)
                 (apply (lambda (_id151483_
                                 _e151484_
                                 _rebind?151485_
                                 _phi151486_)
                          (gx#core-bind-syntax!__2
                           _id151483_
                           _e151484_
                           _rebind?151485_
                           _phi151486_))
                        _g158946_))
                ((##fx= _g158945_ 5)
                 (apply (lambda (_id151490_
                                 _e151491_
                                 _rebind?151492_
                                 _phi151493_
                                 _ctx151494_)
                          (gx#core-bind-syntax!__%
                           _id151490_
                           _e151491_
                           _rebind?151492_
                           _phi151493_
                           _ctx151494_))
                        _g158946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g158946_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id151434_ _e151435_ _rebind?151436_)
        (gx#core-bind-syntax!__%
         _id151434_
         _e151435_
         _rebind?151436_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id151441_ _e151442_)
        (let ((_rebind?151444_ '#f))
          (gx#core-bind-root-syntax!__%
           _id151441_
           _e151442_
           _rebind?151444_))))
    (define gx#core-bind-root-syntax!
      (lambda _g158948_
        (let ((_g158947_ (##length _g158948_)))
          (cond ((##fx= _g158947_ 2)
                 (apply (lambda (_id151441_ _e151442_)
                          (gx#core-bind-root-syntax!__0 _id151441_ _e151442_))
                        _g158948_))
                ((##fx= _g158947_ 3)
                 (apply (lambda (_id151446_ _e151447_ _rebind?151448_)
                          (gx#core-bind-root-syntax!__%
                           _id151446_
                           _e151447_
                           _rebind?151448_))
                        _g158948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g158948_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id151392_
               _alias-id151393_
               _rebind?151394_
               _phi151395_
               _ctx151396_)
        (gx#bind-identifier!__%
         _id151392_
         (let ((_key151398_ (gx#core-identifier-key _id151392_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key151398_ '#t _phi151395_ _ctx151396_)
            _key151398_
            _phi151395_
            _alias-id151393_))
         _rebind?151394_
         _phi151395_
         _ctx151396_)))
    (define gx#core-bind-alias!__0
      (lambda (_id151403_ _alias-id151404_)
        (let* ((_rebind?151406_ '#f)
               (_phi151408_ (gx#current-expander-phi))
               (_ctx151410_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151403_
           _alias-id151404_
           _rebind?151406_
           _phi151408_
           _ctx151410_))))
    (define gx#core-bind-alias!__1
      (lambda (_id151412_ _alias-id151413_ _rebind?151414_)
        (let* ((_phi151416_ (gx#current-expander-phi))
               (_ctx151418_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151412_
           _alias-id151413_
           _rebind?151414_
           _phi151416_
           _ctx151418_))))
    (define gx#core-bind-alias!__2
      (lambda (_id151420_ _alias-id151421_ _rebind?151422_ _phi151423_)
        (let ((_ctx151425_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151420_
           _alias-id151421_
           _rebind?151422_
           _phi151423_
           _ctx151425_))))
    (define gx#core-bind-alias!
      (lambda _g158950_
        (let ((_g158949_ (##length _g158950_)))
          (cond ((##fx= _g158949_ 2)
                 (apply (lambda (_id151403_ _alias-id151404_)
                          (gx#core-bind-alias!__0 _id151403_ _alias-id151404_))
                        _g158950_))
                ((##fx= _g158949_ 3)
                 (apply (lambda (_id151412_ _alias-id151413_ _rebind?151414_)
                          (gx#core-bind-alias!__1
                           _id151412_
                           _alias-id151413_
                           _rebind?151414_))
                        _g158950_))
                ((##fx= _g158949_ 4)
                 (apply (lambda (_id151420_
                                 _alias-id151421_
                                 _rebind?151422_
                                 _phi151423_)
                          (gx#core-bind-alias!__2
                           _id151420_
                           _alias-id151421_
                           _rebind?151422_
                           _phi151423_))
                        _g158950_))
                ((##fx= _g158949_ 5)
                 (apply (lambda (_id151427_
                                 _alias-id151428_
                                 _rebind?151429_
                                 _phi151430_
                                 _ctx151431_)
                          (gx#core-bind-alias!__%
                           _id151427_
                           _alias-id151428_
                           _rebind?151429_
                           _phi151430_
                           _ctx151431_))
                        _g158950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g158950_))))))
    (define gx#make-binding-id__%
      (lambda (_key151349_ _syntax?151350_ _phi151351_ _ctx151352_)
        (if (uninterned-symbol? _key151349_)
            (gensym 'L)
            (if (pair? _key151349_)
                (gensym (car _key151349_))
                (if (##structure-instance-of? _ctx151352_ 'gx#top-context::t)
                    (let ((_ns151354_
                           (gx#core-context-namespace__% _ctx151352_)))
                      (if (and (fxzero? _phi151351_) (not _syntax?151350_))
                          (if _ns151354_
                              (make-symbol__1 _ns151354_ '"#" _key151349_)
                              _key151349_)
                          (if _syntax?151350_
                              (make-symbol__1
                               (let ((_$e151356_ _ns151354_))
                                 (if _$e151356_ _$e151356_ '""))
                               '"[:"
                               (number->string _phi151351_)
                               '":]#"
                               _key151349_)
                              (make-symbol__1
                               (let ((_$e151359_ _ns151354_))
                                 (if _$e151359_ _$e151359_ '""))
                               '"["
                               (number->string _phi151351_)
                               '"]#"
                               _key151349_))))
                    (gensym _key151349_))))))
    (define gx#make-binding-id__0
      (lambda (_key151365_)
        (let* ((_syntax?151367_ '#f)
               (_phi151369_ (gx#current-expander-phi))
               (_ctx151371_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151365_
           _syntax?151367_
           _phi151369_
           _ctx151371_))))
    (define gx#make-binding-id__1
      (lambda (_key151373_ _syntax?151374_)
        (let* ((_phi151376_ (gx#current-expander-phi))
               (_ctx151378_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151373_
           _syntax?151374_
           _phi151376_
           _ctx151378_))))
    (define gx#make-binding-id__2
      (lambda (_key151380_ _syntax?151381_ _phi151382_)
        (let ((_ctx151384_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151380_
           _syntax?151381_
           _phi151382_
           _ctx151384_))))
    (define gx#make-binding-id
      (lambda _g158952_
        (let ((_g158951_ (##length _g158952_)))
          (cond ((##fx= _g158951_ 1)
                 (apply (lambda (_key151365_)
                          (gx#make-binding-id__0 _key151365_))
                        _g158952_))
                ((##fx= _g158951_ 2)
                 (apply (lambda (_key151373_ _syntax?151374_)
                          (gx#make-binding-id__1 _key151373_ _syntax?151374_))
                        _g158952_))
                ((##fx= _g158951_ 3)
                 (apply (lambda (_key151380_ _syntax?151381_ _phi151382_)
                          (gx#make-binding-id__2
                           _key151380_
                           _syntax?151381_
                           _phi151382_))
                        _g158952_))
                ((##fx= _g158951_ 4)
                 (apply (lambda (_key151386_
                                 _syntax?151387_
                                 _phi151388_
                                 _ctx151389_)
                          (gx#make-binding-id__%
                           _key151386_
                           _syntax?151387_
                           _phi151388_
                           _ctx151389_))
                        _g158952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g158952_))))))))
