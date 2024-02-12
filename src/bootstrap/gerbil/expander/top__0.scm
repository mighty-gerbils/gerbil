(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707767844)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx154359_)
        (letrec ((_expand-special154361_
                  (lambda (_hd154363_ _K154364_ _rest154365_ _r154366_)
                    (_K154364_
                     _rest154365_
                     (cons (gx#core-expand-top _hd154363_) _r154366_)))))
          (gx#core-expand-block__0 _stx154359_ _expand-special154361_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx154112_)
        (letrec ((_expand-special154114_
                  (lambda (_hd154234_ _K154235_ _rest154236_ _r154237_)
                    (let* ((_K154241_
                            (lambda (_e154239_)
                              (_K154235_
                               _rest154236_
                               (cons _e154239_ _r154237_))))
                           (_e154242154271_ _hd154234_)
                           (_E154266154275_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154242154271_)))
                           (_E154262154287_
                            (lambda ()
                              (if (gx#stx-pair? _e154242154271_)
                                  (let ((_e154267154279_
                                         (gx#syntax-e _e154242154271_)))
                                    (let ((_hd154268154282_
                                           (##car _e154267154279_))
                                          (_tl154269154284_
                                           (##cdr _e154267154279_)))
                                      (if (and (gx#identifier?
                                                _hd154268154282_)
                                               (gx#core-identifier=?
                                                _hd154268154282_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K154241_
                                               (gx#core-expand-define-runtime%
                                                _hd154234_))
                                              (_E154266154275_))
                                          (_E154266154275_))))
                                  (_E154266154275_))))
                           (_E154258154299_
                            (lambda ()
                              (if (gx#stx-pair? _e154242154271_)
                                  (let ((_e154263154291_
                                         (gx#syntax-e _e154242154271_)))
                                    (let ((_hd154264154294_
                                           (##car _e154263154291_))
                                          (_tl154265154296_
                                           (##cdr _e154263154291_)))
                                      (if (and (gx#identifier?
                                                _hd154264154294_)
                                               (gx#core-identifier=?
                                                _hd154264154294_
                                                '%#define-alias))
                                          (if '#t
                                              (_K154241_
                                               (gx#core-expand-define-alias%
                                                _hd154234_))
                                              (_E154262154287_))
                                          (_E154262154287_))))
                                  (_E154262154287_))))
                           (_E154248154311_
                            (lambda ()
                              (if (gx#stx-pair? _e154242154271_)
                                  (let ((_e154259154303_
                                         (gx#syntax-e _e154242154271_)))
                                    (let ((_hd154260154306_
                                           (##car _e154259154303_))
                                          (_tl154261154308_
                                           (##cdr _e154259154303_)))
                                      (if (and (gx#identifier?
                                                _hd154260154306_)
                                               (gx#core-identifier=?
                                                _hd154260154306_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K154241_
                                               (gx#core-expand-define-syntax%
                                                _hd154234_))
                                              (_E154258154299_))
                                          (_E154258154299_))))
                                  (_E154258154299_))))
                           (_E154244154343_
                            (lambda ()
                              (if (gx#stx-pair? _e154242154271_)
                                  (let ((_e154249154315_
                                         (gx#syntax-e _e154242154271_)))
                                    (let ((_hd154250154318_
                                           (##car _e154249154315_))
                                          (_tl154251154320_
                                           (##cdr _e154249154315_)))
                                      (if (and (gx#identifier?
                                                _hd154250154318_)
                                               (gx#core-identifier=?
                                                _hd154250154318_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154251154320_)
                                              (let ((_e154252154323_
                                                     (gx#syntax-e
                                                      _tl154251154320_)))
                                                (let ((_hd154253154326_
                                                       (##car _e154252154323_))
                                                      (_tl154254154328_
                                                       (##cdr _e154252154323_)))
                                                  (let ((_hd-bind154331_
                                                         _hd154253154326_))
                                                    (if (gx#stx-pair?
                                                         _tl154254154328_)
                                                        (let ((_e154255154333_
                                                               (gx#syntax-e
                                                                _tl154254154328_)))
                                                          (let ((_hd154256154336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154255154333_))
                        (_tl154257154338_ (##cdr _e154255154333_)))
                    (let ((_expr154341_ _hd154256154336_))
                      (if (gx#stx-null? _tl154257154338_)
                          (if (gx#core-bind-values? _hd-bind154331_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154331_)
                                (_K154241_ _hd154234_))
                              (_E154248154311_))
                          (_E154248154311_)))))
                (_E154248154311_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154248154311_))
                                          (_E154248154311_))))
                                  (_E154248154311_))))
                           (_E154243154355_
                            (lambda ()
                              (if (gx#stx-pair? _e154242154271_)
                                  (let ((_e154245154347_
                                         (gx#syntax-e _e154242154271_)))
                                    (let ((_hd154246154350_
                                           (##car _e154245154347_))
                                          (_tl154247154352_
                                           (##cdr _e154245154347_)))
                                      (if (and (gx#identifier?
                                                _hd154246154350_)
                                               (gx#core-identifier=?
                                                _hd154246154350_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K154241_
                                               (gx#core-expand-begin-syntax%
                                                _hd154234_))
                                              (_E154244154343_))
                                          (_E154244154343_))))
                                  (_E154244154343_)))))
                      (_E154243154355_))))
                 (_eval-body154115_
                  (lambda (_rbody154123_)
                    (let _lp154125_ ((_rest154127_ _rbody154123_)
                                     (_body154128_ '())
                                     (_ebody154129_ '()))
                      (let* ((_rest154130154138_ _rest154127_)
                             (_else154132154146_
                              (lambda ()
                                (values _body154128_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody154129_)
                                          (gx#stx-source _stx154112_))))))
                             (_K154134154222_
                              (lambda (_rest154149_ _hd154150_)
                                (let* ((_e154151154168_ _hd154150_)
                                       (_E154163154172_
                                        (lambda ()
                                          (_lp154125_
                                           _rest154149_
                                           (cons _hd154150_ _body154128_)
                                           (cons _hd154150_ _ebody154129_))))
                                       (_E154153154184_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154151154168_)
                                              (let ((_e154164154176_
                                                     (gx#syntax-e
                                                      _e154151154168_)))
                                                (let ((_hd154165154179_
                                                       (##car _e154164154176_))
                                                      (_tl154166154181_
                                                       (##cdr _e154164154176_)))
                                                  (if (and (gx#identifier?
                                                            _hd154165154179_)
                                                           (gx#core-identifier=?
                                                            _hd154165154179_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp154125_
                                                           _rest154149_
                                                           (cons _hd154150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body154128_)
                   _ebody154129_)
                  (_E154163154172_))
              (_E154163154172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154163154172_))))
                                       (_E154152154218_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154151154168_)
                                              (let ((_e154154154188_
                                                     (gx#syntax-e
                                                      _e154151154168_)))
                                                (let ((_hd154155154191_
                                                       (##car _e154154154188_))
                                                      (_tl154156154193_
                                                       (##cdr _e154154154188_)))
                                                  (if (and (gx#identifier?
                                                            _hd154155154191_)
                                                           (gx#core-identifier=?
                                                            _hd154155154191_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl154156154193_)
                                                          (let ((_e154157154196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl154156154193_)))
                    (let ((_hd154158154199_ (##car _e154157154196_))
                          (_tl154159154201_ (##cdr _e154157154196_)))
                      (let ((_hd-bind154204_ _hd154158154199_))
                        (if (gx#stx-pair? _tl154159154201_)
                            (let ((_e154160154206_
                                   (gx#syntax-e _tl154159154201_)))
                              (let ((_hd154161154209_ (##car _e154160154206_))
                                    (_tl154162154211_ (##cdr _e154160154206_)))
                                (let ((_expr154214_ _hd154161154209_))
                                  (if (gx#stx-null? _tl154162154211_)
                                      (if '#t
                                          (let ((_ehd154216_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind154204_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr154214_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd154150_))))
                                            (_lp154125_
                                             _rest154149_
                                             (cons _ehd154216_ _body154128_)
                                             (cons _ehd154216_ _ebody154129_)))
                                          (_E154153154184_))
                                      (_E154153154184_)))))
                            (_E154153154184_)))))
                  (_E154153154184_))
              (_E154153154184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154153154184_)))))
                                  (_E154152154218_)))))
                        (if (##pair? _rest154130154138_)
                            (let ((_hd154135154225_ (##car _rest154130154138_))
                                  (_tl154136154227_
                                   (##cdr _rest154130154138_)))
                              (let* ((_hd154230_ _hd154135154225_)
                                     (_rest154232_ _tl154136154227_))
                                (_K154134154222_ _rest154232_ _hd154230_)))
                            (_else154132154146_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody154118_
                     (gx#core-expand-block__1
                      _stx154112_
                      _expand-special154114_
                      '#f))
                    (_g158950_ (_eval-body154115_ _rbody154118_)))
               (begin
                 (let ((_g158951_
                        (if (##values? _g158950_)
                            (##vector-length _g158950_)
                            1)))
                   (if (not (##fx= _g158951_ 2))
                       (error "Context expects 2 values" _g158951_)))
                 (let ((_expanded-body154120_ (##vector-ref _g158950_ 0))
                       (_value154121_ (##vector-ref _g158950_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body154120_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value154121_ '())))
                    (gx#stx-source _stx154112_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx154082_)
        (let* ((_e154083154090_ _stx154082_)
               (_E154085154094_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154083154090_)))
               (_E154084154108_
                (lambda ()
                  (if (gx#stx-pair? _e154083154090_)
                      (let ((_e154086154098_ (gx#syntax-e _e154083154090_)))
                        (let ((_hd154087154101_ (##car _e154086154098_))
                              (_tl154088154103_ (##cdr _e154086154098_)))
                          (let ((_body154106_ _tl154088154103_))
                            (if (gx#stx-list? _body154106_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body154106_)
                                 (gx#stx-source _stx154082_))
                                (_E154085154094_)))))
                      (_E154085154094_)))))
          (_E154084154108_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx154080_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx154080_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx154026_)
        (let* ((_e154027154040_ _stx154026_)
               (_E154029154044_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154027154040_)))
               (_E154028154076_
                (lambda ()
                  (if (gx#stx-pair? _e154027154040_)
                      (let ((_e154030154048_ (gx#syntax-e _e154027154040_)))
                        (let ((_hd154031154051_ (##car _e154030154048_))
                              (_tl154032154053_ (##cdr _e154030154048_)))
                          (if (gx#stx-pair? _tl154032154053_)
                              (let ((_e154033154056_
                                     (gx#syntax-e _tl154032154053_)))
                                (let ((_hd154034154059_
                                       (##car _e154033154056_))
                                      (_tl154035154061_
                                       (##cdr _e154033154056_)))
                                  (let ((_ann154064_ _hd154034154059_))
                                    (if (gx#stx-pair? _tl154035154061_)
                                        (let ((_e154036154066_
                                               (gx#syntax-e _tl154035154061_)))
                                          (let ((_hd154037154069_
                                                 (##car _e154036154066_))
                                                (_tl154038154071_
                                                 (##cdr _e154036154066_)))
                                            (let ((_expr154074_
                                                   _hd154037154069_))
                                              (if (gx#stx-null?
                                                   _tl154038154071_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann154064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr154074_)
                                 '())))
               (gx#stx-source _stx154026_))
              (_E154029154044_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154029154044_)))))
                                        (_E154029154044_)))))
                              (_E154029154044_))))
                      (_E154029154044_)))))
          (_E154028154076_))))
    (define gx#core-expand-local-block
      (lambda (_stx153750_ _body153751_)
        (letrec ((_expand-special153753_
                  (lambda (_hd154021_ _K154022_ _rest154023_ _r154024_)
                    (_K154022_
                     '()
                     (cons (_expand-internal153754_ _hd154021_ _rest154023_)
                           _r154024_))))
                 (_expand-internal153754_
                  (lambda (_hd154017_ _rest154018_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal153756_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd154017_ _rest154018_))
                          (gx#stx-source _stx153750_))
                         _expand-internal-special153755_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj158944
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj158944)
                       __obj158944))))
                 (_expand-internal-special153755_
                  (lambda (_hd153912_ _K153913_ _rest153914_ _r153915_)
                    (let* ((_e153916153941_ _hd153912_)
                           (_E153936153945_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e153916153941_)))
                           (_E153932153957_
                            (lambda ()
                              (if (gx#stx-pair? _e153916153941_)
                                  (let ((_e153937153949_
                                         (gx#syntax-e _e153916153941_)))
                                    (let ((_hd153938153952_
                                           (##car _e153937153949_))
                                          (_tl153939153954_
                                           (##cdr _e153937153949_)))
                                      (if (and (gx#identifier?
                                                _hd153938153952_)
                                               (gx#core-identifier=?
                                                _hd153938153952_
                                                '%#declare))
                                          (if '#t
                                              (_K153913_
                                               _rest153914_
                                               (cons (gx#core-expand-declare%
                                                      _hd153912_)
                                                     _r153915_))
                                              (_E153936153945_))
                                          (_E153936153945_))))
                                  (_E153936153945_))))
                           (_E153928153969_
                            (lambda ()
                              (if (gx#stx-pair? _e153916153941_)
                                  (let ((_e153933153961_
                                         (gx#syntax-e _e153916153941_)))
                                    (let ((_hd153934153964_
                                           (##car _e153933153961_))
                                          (_tl153935153966_
                                           (##cdr _e153933153961_)))
                                      (if (and (gx#identifier?
                                                _hd153934153964_)
                                               (gx#core-identifier=?
                                                _hd153934153964_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd153912_)
                                                (_K153913_
                                                 _rest153914_
                                                 _r153915_))
                                              (_E153932153957_))
                                          (_E153932153957_))))
                                  (_E153932153957_))))
                           (_E153918153981_
                            (lambda ()
                              (if (gx#stx-pair? _e153916153941_)
                                  (let ((_e153929153973_
                                         (gx#syntax-e _e153916153941_)))
                                    (let ((_hd153930153976_
                                           (##car _e153929153973_))
                                          (_tl153931153978_
                                           (##cdr _e153929153973_)))
                                      (if (and (gx#identifier?
                                                _hd153930153976_)
                                               (gx#core-identifier=?
                                                _hd153930153976_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd153912_)
                                                (_K153913_
                                                 _rest153914_
                                                 _r153915_))
                                              (_E153928153969_))
                                          (_E153928153969_))))
                                  (_E153928153969_))))
                           (_E153917154013_
                            (lambda ()
                              (if (gx#stx-pair? _e153916153941_)
                                  (let ((_e153919153985_
                                         (gx#syntax-e _e153916153941_)))
                                    (let ((_hd153920153988_
                                           (##car _e153919153985_))
                                          (_tl153921153990_
                                           (##cdr _e153919153985_)))
                                      (if (and (gx#identifier?
                                                _hd153920153988_)
                                               (gx#core-identifier=?
                                                _hd153920153988_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153921153990_)
                                              (let ((_e153922153993_
                                                     (gx#syntax-e
                                                      _tl153921153990_)))
                                                (let ((_hd153923153996_
                                                       (##car _e153922153993_))
                                                      (_tl153924153998_
                                                       (##cdr _e153922153993_)))
                                                  (let ((_hd-bind154001_
                                                         _hd153923153996_))
                                                    (if (gx#stx-pair?
                                                         _tl153924153998_)
                                                        (let ((_e153925154003_
                                                               (gx#syntax-e
                                                                _tl153924153998_)))
                                                          (let ((_hd153926154006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153925154003_))
                        (_tl153927154008_ (##cdr _e153925154003_)))
                    (let ((_expr154011_ _hd153926154006_))
                      (if (gx#stx-null? _tl153927154008_)
                          (if (gx#core-bind-values? _hd-bind154001_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154001_)
                                (_K153913_
                                 _rest153914_
                                 (cons _hd153912_ _r153915_)))
                              (_E153918153981_))
                          (_E153918153981_)))))
                (_E153918153981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153918153981_))
                                          (_E153918153981_))))
                                  (_E153918153981_)))))
                      (_E153917154013_))))
                 (_wrap-internal153756_
                  (lambda (_rbody153758_)
                    (let _lp153760_ ((_rest153762_ _rbody153758_)
                                     (_decls153763_ '())
                                     (_bind153764_ '())
                                     (_body153765_ '()))
                      (let* ((_e153766153773_ _rest153762_)
                             (_E153768153822_
                              (lambda ()
                                (let* ((_body153817_
                                        (let* ((_body153776153786_
                                                _body153765_)
                                               (_else153779153794_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153765_)
                                                   (gx#stx-source
                                                    _stx153750_)))))
                                          (let ((_K153784153814_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx153750_)))
                                                (_K153781153800_
                                                 (lambda (_expr153798_)
                                                   _expr153798_)))
                                            (let ((_try-match153778153810_
                                                   (lambda ()
                                                     (if (##pair? _body153776153786_)
                                                         (let ((_tl153783153805_
                                                                (##cdr _body153776153786_))
                                                               (_hd153782153803_
                                                                (##car _body153776153786_)))
                                                           (if (##null? _tl153783153805_)
                                                               (let ((_expr153808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153782153803_))
                         (_K153781153800_ _expr153808_))
                       (_else153779153794_)))
                 (_else153779153794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body153776153786_)
                                                  (_K153784153814_)
                                                  (_try-match153778153810_))))))
                                       (_body153819_
                                        (if (null? _bind153764_)
                                            _body153817_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind153764_
                                                         (cons _body153817_
                                                               '())))
                                             (gx#stx-source _stx153750_)))))
                                  (if (null? _decls153763_)
                                      _body153819_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls153763_
                                                   (cons _body153819_ '())))
                                       (gx#stx-source _stx153750_))))))
                             (_E153767153908_
                              (lambda ()
                                (if (gx#stx-pair? _e153766153773_)
                                    (let ((_e153769153826_
                                           (gx#syntax-e _e153766153773_)))
                                      (let ((_hd153770153829_
                                             (##car _e153769153826_))
                                            (_tl153771153831_
                                             (##cdr _e153769153826_)))
                                        (let* ((_hd153834_ _hd153770153829_)
                                               (_rest153836_ _tl153771153831_))
                                          (if '#t
                                              (let* ((_e153837153854_
                                                      _hd153834_)
                                                     (_E153849153858_
                                                      (lambda ()
                                                        (if (null? _bind153764_)
                                                            (_lp153760_
                                                             _rest153836_
                                                             _decls153763_
                                                             _bind153764_
                                                             (cons _hd153834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body153765_))
                    (_lp153760_
                     _rest153836_
                     _decls153763_
                     (cons (cons '#f (cons _hd153834_ '())) _bind153764_)
                     _body153765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153839153872_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153837153854_)
                                                            (let ((_e153850153862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153837153854_)))
                      (let ((_hd153851153865_ (##car _e153850153862_))
                            (_tl153852153867_ (##cdr _e153850153862_)))
                        (if (and (gx#identifier? _hd153851153865_)
                                 (gx#core-identifier=?
                                  _hd153851153865_
                                  '%#declare))
                            (let ((_xdecls153870_ _tl153852153867_))
                              (if '#t
                                  (_lp153760_
                                   _rest153836_
                                   (gx#stx-foldr
                                    cons
                                    _decls153763_
                                    _xdecls153870_)
                                   _bind153764_
                                   _body153765_)
                                  (_E153849153858_)))
                            (_E153849153858_))))
                    (_E153849153858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E153838153904_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e153837153854_)
                                                            (let ((_e153840153876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e153837153854_)))
                      (let ((_hd153841153879_ (##car _e153840153876_))
                            (_tl153842153881_ (##cdr _e153840153876_)))
                        (if (and (gx#identifier? _hd153841153879_)
                                 (gx#core-identifier=?
                                  _hd153841153879_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl153842153881_)
                                (let ((_e153843153884_
                                       (gx#syntax-e _tl153842153881_)))
                                  (let ((_hd153844153887_
                                         (##car _e153843153884_))
                                        (_tl153845153889_
                                         (##cdr _e153843153884_)))
                                    (let ((_hd-bind153892_ _hd153844153887_))
                                      (if (gx#stx-pair? _tl153845153889_)
                                          (let ((_e153846153894_
                                                 (gx#syntax-e
                                                  _tl153845153889_)))
                                            (let ((_hd153847153897_
                                                   (##car _e153846153894_))
                                                  (_tl153848153899_
                                                   (##cdr _e153846153894_)))
                                              (let ((_expr153902_
                                                     _hd153847153897_))
                                                (if (gx#stx-null?
                                                     _tl153848153899_)
                                                    (if '#t
                                                        (_lp153760_
                                                         _rest153836_
                                                         _decls153763_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind153892_)
                             (cons (gx#core-expand-expression _expr153902_)
                                   '()))
                       _bind153764_)
                 _body153765_)
                (_E153839153872_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153839153872_)))))
                                          (_E153839153872_)))))
                                (_E153839153872_))
                            (_E153839153872_))))
                    (_E153839153872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153838153904_))
                                              (_E153768153822_)))))
                                    (_E153768153822_)))))
                        (_E153767153908_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body153751_)
            (gx#stx-source _stx153750_))
           _expand-special153753_))))
    (define gx#core-expand-declare%
      (lambda (_stx153688_)
        (let* ((_e153689153696_ _stx153688_)
               (_E153691153700_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153689153696_)))
               (_E153690153746_
                (lambda ()
                  (if (gx#stx-pair? _e153689153696_)
                      (let ((_e153692153704_ (gx#syntax-e _e153689153696_)))
                        (let ((_hd153693153707_ (##car _e153692153704_))
                              (_tl153694153709_ (##cdr _e153692153704_)))
                          (let ((_body153712_ _tl153694153709_))
                            (if (gx#stx-list? _body153712_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl153714_)
                                     (let* ((_e153715153722_ _decl153714_)
                                            (_E153717153726_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e153715153722_)))
                                            (_E153716153742_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e153715153722_)
                                                   (let ((_e153718153730_
                                                          (gx#syntax-e
                                                           _e153715153722_)))
                                                     (let ((_hd153719153733_
                                                            (##car _e153718153730_))
                                                           (_tl153720153735_
                                                            (##cdr _e153718153730_)))
                                                       (let* ((_head153738_
                                                               _hd153719153733_)
                                                              (_args153740_
                                                               _tl153720153735_))
                                                         (if (gx#stx-list?
                                                              _args153740_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl153714_)
                                                             (_E153717153726_)))))
                                                   (_E153717153726_)))))
                                       (_E153716153742_)))
                                   _body153712_))
                                 (gx#stx-source _stx153688_))
                                (_E153691153700_)))))
                      (_E153691153700_)))))
          (_E153690153746_))))
    (define gx#core-expand-extern%
      (lambda (_stx153592_)
        (let* ((_e153593153600_ _stx153592_)
               (_E153595153604_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153593153600_)))
               (_E153594153684_
                (lambda ()
                  (if (gx#stx-pair? _e153593153600_)
                      (let ((_e153596153608_ (gx#syntax-e _e153593153600_)))
                        (let ((_hd153597153611_ (##car _e153596153608_))
                              (_tl153598153613_ (##cdr _e153596153608_)))
                          (let ((_body153616_ _tl153598153613_))
                            (if '#t
                                (let _lp153618_ ((_rest153620_ _body153616_)
                                                 (_r153621_ '()))
                                  (let* ((_e153622153636_ _rest153620_)
                                         (_E153634153640_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx153592_)))
                                         (_E153624153644_
                                          (lambda ()
                                            (if (gx#stx-null? _e153622153636_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r153621_))
                                                     (gx#stx-source
                                                      _stx153592_))
                                                    (_E153634153640_))
                                                (_E153634153640_))))
                                         (_E153623153680_
                                          (lambda ()
                                            (if (gx#stx-pair? _e153622153636_)
                                                (let ((_e153625153648_
                                                       (gx#syntax-e
                                                        _e153622153636_)))
                                                  (let ((_hd153626153651_
                                                         (##car _e153625153648_))
                                                        (_tl153627153653_
                                                         (##cdr _e153625153648_)))
                                                    (if (gx#stx-pair?
                                                         _hd153626153651_)
                                                        (let ((_e153628153656_
                                                               (gx#syntax-e
                                                                _hd153626153651_)))
                                                          (let ((_hd153629153659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153628153656_))
                        (_tl153630153661_ (##cdr _e153628153656_)))
                    (let ((_id153664_ _hd153629153659_))
                      (if (gx#stx-pair? _tl153630153661_)
                          (let ((_e153631153666_
                                 (gx#syntax-e _tl153630153661_)))
                            (let ((_hd153632153669_ (##car _e153631153666_))
                                  (_tl153633153671_ (##cdr _e153631153666_)))
                              (let ((_eid153674_ _hd153632153669_))
                                (if (gx#stx-null? _tl153633153671_)
                                    (let ((_rest153676_ _tl153627153653_))
                                      (if (and (gx#identifier? _id153664_)
                                               (gx#identifier? _eid153674_))
                                          (let ((_eid153678_
                                                 (gx#stx-e _eid153674_)))
                                            (gx#core-bind-extern!__0
                                             _id153664_
                                             _eid153678_)
                                            (_lp153618_
                                             _rest153676_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id153664_)
                                                         (cons _eid153678_
                                                               '()))
                                                   _r153621_)))
                                          (_E153624153644_)))
                                    (_E153624153644_)))))
                          (_E153624153644_)))))
                (_E153624153644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153624153644_)))))
                                    (_E153623153680_)))
                                (_E153595153604_)))))
                      (_E153595153604_)))))
          (_E153594153684_))))
    (define gx#core-expand-define-values%
      (lambda (_stx153538_)
        (let* ((_e153539153552_ _stx153538_)
               (_E153541153556_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153539153552_)))
               (_E153540153588_
                (lambda ()
                  (if (gx#stx-pair? _e153539153552_)
                      (let ((_e153542153560_ (gx#syntax-e _e153539153552_)))
                        (let ((_hd153543153563_ (##car _e153542153560_))
                              (_tl153544153565_ (##cdr _e153542153560_)))
                          (if (gx#stx-pair? _tl153544153565_)
                              (let ((_e153545153568_
                                     (gx#syntax-e _tl153544153565_)))
                                (let ((_hd153546153571_
                                       (##car _e153545153568_))
                                      (_tl153547153573_
                                       (##cdr _e153545153568_)))
                                  (let ((_hd153576_ _hd153546153571_))
                                    (if (gx#stx-pair? _tl153547153573_)
                                        (let ((_e153548153578_
                                               (gx#syntax-e _tl153547153573_)))
                                          (let ((_hd153549153581_
                                                 (##car _e153548153578_))
                                                (_tl153550153583_
                                                 (##cdr _e153548153578_)))
                                            (let ((_expr153586_
                                                   _hd153549153581_))
                                              (if (gx#stx-null?
                                                   _tl153550153583_)
                                                  (if (gx#core-bind-values?
                                                       _hd153576_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd153576_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd153576_)
                             (cons (gx#core-expand-expression _expr153586_)
                                   '())))
                 (gx#stx-source _stx153538_)))
              (_E153541153556_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153541153556_)))))
                                        (_E153541153556_)))))
                              (_E153541153556_))))
                      (_E153541153556_)))))
          (_E153540153588_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx153482_)
        (let* ((_e153483153496_ _stx153482_)
               (_E153485153500_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153483153496_)))
               (_E153484153534_
                (lambda ()
                  (if (gx#stx-pair? _e153483153496_)
                      (let ((_e153486153504_ (gx#syntax-e _e153483153496_)))
                        (let ((_hd153487153507_ (##car _e153486153504_))
                              (_tl153488153509_ (##cdr _e153486153504_)))
                          (if (gx#stx-pair? _tl153488153509_)
                              (let ((_e153489153512_
                                     (gx#syntax-e _tl153488153509_)))
                                (let ((_hd153490153515_
                                       (##car _e153489153512_))
                                      (_tl153491153517_
                                       (##cdr _e153489153512_)))
                                  (let ((_id153520_ _hd153490153515_))
                                    (if (gx#stx-pair? _tl153491153517_)
                                        (let ((_e153492153522_
                                               (gx#syntax-e _tl153491153517_)))
                                          (let ((_hd153493153525_
                                                 (##car _e153492153522_))
                                                (_tl153494153527_
                                                 (##cdr _e153492153522_)))
                                            (let ((_binding-id153530_
                                                   _hd153493153525_))
                                              (if (gx#stx-null?
                                                   _tl153494153527_)
                                                  (if (and (gx#identifier?
                                                            _id153520_)
                                                           (gx#identifier?
                                                            _binding-id153530_))
                                                      (let ((_eid153532_
                                                             (gx#stx-e
                                                              _binding-id153530_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id153520_
                                                         _eid153532_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153520_)
                             (cons _eid153532_ '())))))
              (_E153485153500_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153485153500_)))))
                                        (_E153485153500_)))))
                              (_E153485153500_))))
                      (_E153485153500_)))))
          (_E153484153534_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx153425_)
        (let* ((_e153426153439_ _stx153425_)
               (_E153428153443_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153426153439_)))
               (_E153427153478_
                (lambda ()
                  (if (gx#stx-pair? _e153426153439_)
                      (let ((_e153429153447_ (gx#syntax-e _e153426153439_)))
                        (let ((_hd153430153450_ (##car _e153429153447_))
                              (_tl153431153452_ (##cdr _e153429153447_)))
                          (if (gx#stx-pair? _tl153431153452_)
                              (let ((_e153432153455_
                                     (gx#syntax-e _tl153431153452_)))
                                (let ((_hd153433153458_
                                       (##car _e153432153455_))
                                      (_tl153434153460_
                                       (##cdr _e153432153455_)))
                                  (let ((_id153463_ _hd153433153458_))
                                    (if (gx#stx-pair? _tl153434153460_)
                                        (let ((_e153435153465_
                                               (gx#syntax-e _tl153434153460_)))
                                          (let ((_hd153436153468_
                                                 (##car _e153435153465_))
                                                (_tl153437153470_
                                                 (##cdr _e153435153465_)))
                                            (let ((_expr153473_
                                                   _hd153436153468_))
                                              (if (gx#stx-null?
                                                   _tl153437153470_)
                                                  (if (gx#identifier?
                                                       _id153463_)
                                                      (let ((_g158952_
                                                             (gx#core-expand-expression+1
                                                              _expr153473_)))
                                                        (begin
                                                          (let ((_g158953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g158952_)
                             (##vector-length _g158952_)
                             1)))
                    (if (not (##fx= _g158953_ 2))
                        (error "Context expects 2 values" _g158953_)))
                  (let ((_e-stx153475_ (##vector-ref _g158952_ 0))
                        (_e153476_ (##vector-ref _g158952_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id153463_ _e153476_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id153463_)
                                   (cons _e-stx153475_ '())))
                       (gx#stx-source _stx153425_))))))
              (_E153428153443_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153428153443_)))))
                                        (_E153428153443_)))))
                              (_E153428153443_))))
                      (_E153428153443_)))))
          (_E153427153478_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx153369_)
        (let* ((_e153370153383_ _stx153369_)
               (_E153372153387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153370153383_)))
               (_E153371153421_
                (lambda ()
                  (if (gx#stx-pair? _e153370153383_)
                      (let ((_e153373153391_ (gx#syntax-e _e153370153383_)))
                        (let ((_hd153374153394_ (##car _e153373153391_))
                              (_tl153375153396_ (##cdr _e153373153391_)))
                          (if (gx#stx-pair? _tl153375153396_)
                              (let ((_e153376153399_
                                     (gx#syntax-e _tl153375153396_)))
                                (let ((_hd153377153402_
                                       (##car _e153376153399_))
                                      (_tl153378153404_
                                       (##cdr _e153376153399_)))
                                  (let ((_id153407_ _hd153377153402_))
                                    (if (gx#stx-pair? _tl153378153404_)
                                        (let ((_e153379153409_
                                               (gx#syntax-e _tl153378153404_)))
                                          (let ((_hd153380153412_
                                                 (##car _e153379153409_))
                                                (_tl153381153414_
                                                 (##cdr _e153379153409_)))
                                            (let ((_alias-id153417_
                                                   _hd153380153412_))
                                              (if (gx#stx-null?
                                                   _tl153381153414_)
                                                  (if (and (gx#identifier?
                                                            _id153407_)
                                                           (gx#identifier?
                                                            _alias-id153417_))
                                                      (let ((_alias-id153419_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id153417_)))
                                                        (gx#core-bind-alias!__0
                                                         _id153407_
                                                         _alias-id153419_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id153407_)
                             (cons _alias-id153419_ '())))))
              (_E153372153387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153372153387_)))))
                                        (_E153372153387_)))))
                              (_E153372153387_))))
                      (_E153372153387_)))))
          (_E153371153421_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx153312_ _wrap?153313_)
        (let* ((_e153314153324_ _stx153312_)
               (_E153316153328_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153314153324_)))
               (_E153315153355_
                (lambda ()
                  (if (gx#stx-pair? _e153314153324_)
                      (let ((_e153317153332_ (gx#syntax-e _e153314153324_)))
                        (let ((_hd153318153335_ (##car _e153317153332_))
                              (_tl153319153337_ (##cdr _e153317153332_)))
                          (if (gx#stx-pair? _tl153319153337_)
                              (let ((_e153320153340_
                                     (gx#syntax-e _tl153319153337_)))
                                (let ((_hd153321153343_
                                       (##car _e153320153340_))
                                      (_tl153322153345_
                                       (##cdr _e153320153340_)))
                                  (let* ((_hd153348_ _hd153321153343_)
                                         (_body153350_ _tl153322153345_))
                                    (if (gx#core-bind-values? _hd153348_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd153348_)
                                           (let ((_body153353_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd153348_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx153312_
                                                               _body153350_)
                                                              '()))))
                                             (if _wrap?153313_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body153353_)
                                                  (gx#stx-source _stx153312_))
                                                 _body153353_)))
                                         gx#current-expander-context
                                         (let ((__obj158945
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158945)
                                           __obj158945))
                                        (_E153316153328_)))))
                              (_E153316153328_))))
                      (_E153316153328_)))))
          (_E153315153355_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx153362_)
        (let ((_wrap?153364_ '#t))
          (gx#core-expand-lambda%__% _stx153362_ _wrap?153364_))))
    (define gx#core-expand-lambda%
      (lambda _g158955_
        (let ((_g158954_ (##length _g158955_)))
          (cond ((##fx= _g158954_ 1)
                 (apply (lambda (_stx153362_)
                          (gx#core-expand-lambda%__0 _stx153362_))
                        _g158955_))
                ((##fx= _g158954_ 2)
                 (apply (lambda (_stx153366_ _wrap?153367_)
                          (gx#core-expand-lambda%__%
                           _stx153366_
                           _wrap?153367_))
                        _g158955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g158955_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx153276_)
        (let* ((_e153277153284_ _stx153276_)
               (_E153279153288_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153277153284_)))
               (_E153278153307_
                (lambda ()
                  (if (gx#stx-pair? _e153277153284_)
                      (let ((_e153280153292_ (gx#syntax-e _e153277153284_)))
                        (let ((_hd153281153295_ (##car _e153280153292_))
                              (_tl153282153297_ (##cdr _e153280153292_)))
                          (let ((_clauses153300_ _tl153282153297_))
                            (if (gx#stx-list? _clauses153300_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause153302_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause153302_)
                                       (let ((_$e153304_
                                              (gx#stx-source _clause153302_)))
                                         (if _$e153304_
                                             _$e153304_
                                             (gx#stx-source _stx153276_))))
                                      '#f))
                                   _clauses153300_))
                                 (gx#stx-source _stx153276_))
                                (_E153279153288_)))))
                      (_E153279153288_)))))
          (_E153278153307_))))
    (define gx#core-expand-let-values%
      (lambda (_stx153230_)
        (let* ((_e153231153241_ _stx153230_)
               (_E153233153245_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153231153241_)))
               (_E153232153272_
                (lambda ()
                  (if (gx#stx-pair? _e153231153241_)
                      (let ((_e153234153249_ (gx#syntax-e _e153231153241_)))
                        (let ((_hd153235153252_ (##car _e153234153249_))
                              (_tl153236153254_ (##cdr _e153234153249_)))
                          (if (gx#stx-pair? _tl153236153254_)
                              (let ((_e153237153257_
                                     (gx#syntax-e _tl153236153254_)))
                                (let ((_hd153238153260_
                                       (##car _e153237153257_))
                                      (_tl153239153262_
                                       (##cdr _e153237153257_)))
                                  (let* ((_hd153265_ _hd153238153260_)
                                         (_body153267_ _tl153239153262_))
                                    (if (gx#core-expand-let-bind? _hd153265_)
                                        (let ((_expressions153269_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd153265_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd153265_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd153265_
                                                           _expressions153269_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx153230_
                         _body153267_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx153230_)))
                                           gx#current-expander-context
                                           (let ((__obj158946
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj158946)
                                             __obj158946)))
                                        (_E153233153245_)))))
                              (_E153233153245_))))
                      (_E153233153245_)))))
          (_E153232153272_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx153175_ _form153176_)
        (let* ((_e153177153187_ _stx153175_)
               (_E153179153191_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153177153187_)))
               (_E153178153216_
                (lambda ()
                  (if (gx#stx-pair? _e153177153187_)
                      (let ((_e153180153195_ (gx#syntax-e _e153177153187_)))
                        (let ((_hd153181153198_ (##car _e153180153195_))
                              (_tl153182153200_ (##cdr _e153180153195_)))
                          (if (gx#stx-pair? _tl153182153200_)
                              (let ((_e153183153203_
                                     (gx#syntax-e _tl153182153200_)))
                                (let ((_hd153184153206_
                                       (##car _e153183153203_))
                                      (_tl153185153208_
                                       (##cdr _e153183153203_)))
                                  (let* ((_hd153211_ _hd153184153206_)
                                         (_body153213_ _tl153185153208_))
                                    (if (gx#core-expand-let-bind? _hd153211_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd153211_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form153176_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd153211_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd153211_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx153175_
                                                               _body153213_)
                                                              '())))
                                            (gx#stx-source _stx153175_)))
                                         gx#current-expander-context
                                         (let ((__obj158947
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158947)
                                           __obj158947))
                                        (_E153179153191_)))))
                              (_E153179153191_))))
                      (_E153179153191_)))))
          (_E153178153216_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx153223_)
        (let ((_form153225_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx153223_ _form153225_))))
    (define gx#core-expand-letrec-values%
      (lambda _g158957_
        (let ((_g158956_ (##length _g158957_)))
          (cond ((##fx= _g158956_ 1)
                 (apply (lambda (_stx153223_)
                          (gx#core-expand-letrec-values%__0 _stx153223_))
                        _g158957_))
                ((##fx= _g158956_ 2)
                 (apply (lambda (_stx153227_ _form153228_)
                          (gx#core-expand-letrec-values%__%
                           _stx153227_
                           _form153228_))
                        _g158957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g158957_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx153172_)
        (gx#core-expand-letrec-values%__% _stx153172_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx153129_)
        (if (gx#stx-list? _stx153129_)
            (gx#stx-andmap
             (lambda (_bind153131_)
               (let* ((_e153132153142_ _bind153131_)
                      (_E153134153146_ (lambda () '#f))
                      (_E153133153168_
                       (lambda ()
                         (if (gx#stx-pair? _e153132153142_)
                             (let ((_e153135153150_
                                    (gx#syntax-e _e153132153142_)))
                               (let ((_hd153136153153_ (##car _e153135153150_))
                                     (_tl153137153155_
                                      (##cdr _e153135153150_)))
                                 (let ((_hd153158_ _hd153136153153_))
                                   (if (gx#stx-pair? _tl153137153155_)
                                       (let ((_e153138153160_
                                              (gx#syntax-e _tl153137153155_)))
                                         (let ((_hd153139153163_
                                                (##car _e153138153160_))
                                               (_tl153140153165_
                                                (##cdr _e153138153160_)))
                                           (if (gx#stx-null? _tl153140153165_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd153158_)
                                                   (_E153134153146_))
                                               (_E153134153146_))))
                                       (_E153134153146_)))))
                             (_E153134153146_)))))
                 (_E153133153168_)))
             _stx153129_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind153088_)
        (let* ((_e153089153099_ _bind153088_)
               (_E153091153103_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153089153099_)))
               (_E153090153125_
                (lambda ()
                  (if (gx#stx-pair? _e153089153099_)
                      (let ((_e153092153107_ (gx#syntax-e _e153089153099_)))
                        (let ((_hd153093153110_ (##car _e153092153107_))
                              (_tl153094153112_ (##cdr _e153092153107_)))
                          (if (gx#stx-pair? _tl153094153112_)
                              (let ((_e153095153115_
                                     (gx#syntax-e _tl153094153112_)))
                                (let ((_hd153096153118_
                                       (##car _e153095153115_))
                                      (_tl153097153120_
                                       (##cdr _e153095153115_)))
                                  (let ((_expr153123_ _hd153096153118_))
                                    (if (gx#stx-null? _tl153097153120_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr153123_)
                                            (_E153091153103_))
                                        (_E153091153103_)))))
                              (_E153091153103_))))
                      (_E153091153103_)))))
          (_E153090153125_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind153047_)
        (let* ((_e153048153058_ _bind153047_)
               (_E153050153062_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153048153058_)))
               (_E153049153084_
                (lambda ()
                  (if (gx#stx-pair? _e153048153058_)
                      (let ((_e153051153066_ (gx#syntax-e _e153048153058_)))
                        (let ((_hd153052153069_ (##car _e153051153066_))
                              (_tl153053153071_ (##cdr _e153051153066_)))
                          (let ((_hd153074_ _hd153052153069_))
                            (if (gx#stx-pair? _tl153053153071_)
                                (let ((_e153054153076_
                                       (gx#syntax-e _tl153053153071_)))
                                  (let ((_hd153055153079_
                                         (##car _e153054153076_))
                                        (_tl153056153081_
                                         (##cdr _e153054153076_)))
                                    (if (gx#stx-null? _tl153056153081_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd153074_)
                                            (_E153050153062_))
                                        (_E153050153062_))))
                                (_E153050153062_)))))
                      (_E153050153062_)))))
          (_E153049153084_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind153005_ _expr153006_)
        (let* ((_e153007153017_ _bind153005_)
               (_E153009153021_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153007153017_)))
               (_E153008153043_
                (lambda ()
                  (if (gx#stx-pair? _e153007153017_)
                      (let ((_e153010153025_ (gx#syntax-e _e153007153017_)))
                        (let ((_hd153011153028_ (##car _e153010153025_))
                              (_tl153012153030_ (##cdr _e153010153025_)))
                          (let ((_hd153033_ _hd153011153028_))
                            (if (gx#stx-pair? _tl153012153030_)
                                (let ((_e153013153035_
                                       (gx#syntax-e _tl153012153030_)))
                                  (let ((_hd153014153038_
                                         (##car _e153013153035_))
                                        (_tl153015153040_
                                         (##cdr _e153013153035_)))
                                    (if (gx#stx-null? _tl153015153040_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd153033_)
                                                  (cons _expr153006_ '()))
                                            (_E153009153021_))
                                        (_E153009153021_))))
                                (_E153009153021_)))))
                      (_E153009153021_)))))
          (_E153008153043_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx152959_)
        (let* ((_e152960152970_ _stx152959_)
               (_E152962152974_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152960152970_)))
               (_E152961153001_
                (lambda ()
                  (if (gx#stx-pair? _e152960152970_)
                      (let ((_e152963152978_ (gx#syntax-e _e152960152970_)))
                        (let ((_hd152964152981_ (##car _e152963152978_))
                              (_tl152965152983_ (##cdr _e152963152978_)))
                          (if (gx#stx-pair? _tl152965152983_)
                              (let ((_e152966152986_
                                     (gx#syntax-e _tl152965152983_)))
                                (let ((_hd152967152989_
                                       (##car _e152966152986_))
                                      (_tl152968152991_
                                       (##cdr _e152966152986_)))
                                  (let* ((_hd152994_ _hd152967152989_)
                                         (_body152996_ _tl152968152991_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152994_)
                                        (let ((_expanders152998_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd152994_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd152994_
                                              _expanders152998_)
                                             (gx#core-expand-local-block
                                              _stx152959_
                                              _body152996_))
                                           gx#current-expander-context
                                           (let ((__obj158948
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj158948)
                                             __obj158948)))
                                        (_E152962152974_)))))
                              (_E152962152974_))))
                      (_E152962152974_)))))
          (_E152961153001_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx152908_)
        (let* ((_e152909152919_ _stx152908_)
               (_E152911152923_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152909152919_)))
               (_E152910152955_
                (lambda ()
                  (if (gx#stx-pair? _e152909152919_)
                      (let ((_e152912152927_ (gx#syntax-e _e152909152919_)))
                        (let ((_hd152913152930_ (##car _e152912152927_))
                              (_tl152914152932_ (##cdr _e152912152927_)))
                          (if (gx#stx-pair? _tl152914152932_)
                              (let ((_e152915152935_
                                     (gx#syntax-e _tl152914152932_)))
                                (let ((_hd152916152938_
                                       (##car _e152915152935_))
                                      (_tl152917152940_
                                       (##cdr _e152915152935_)))
                                  (let* ((_hd152943_ _hd152916152938_)
                                         (_body152945_ _tl152917152940_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd152943_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd152943_
                                            (make-list
                                             (gx#stx-length _hd152943_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g152947152950_
                                                     _g152948152952_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g152947152950_
                                               _g152948152952_
                                               '#t))
                                            _hd152943_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd152943_))
                                           (gx#core-expand-local-block
                                            _stx152908_
                                            _body152945_))
                                         gx#current-expander-context
                                         (let ((__obj158949
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj158949)
                                           __obj158949))
                                        (_E152911152923_)))))
                              (_E152911152923_))))
                      (_E152911152923_)))))
          (_E152910152955_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx152865_)
        (if (gx#stx-list? _stx152865_)
            (gx#stx-andmap
             (lambda (_bind152867_)
               (let* ((_e152868152878_ _bind152867_)
                      (_E152870152882_ (lambda () '#f))
                      (_E152869152904_
                       (lambda ()
                         (if (gx#stx-pair? _e152868152878_)
                             (let ((_e152871152886_
                                    (gx#syntax-e _e152868152878_)))
                               (let ((_hd152872152889_ (##car _e152871152886_))
                                     (_tl152873152891_
                                      (##cdr _e152871152886_)))
                                 (let ((_hd152894_ _hd152872152889_))
                                   (if (gx#stx-pair? _tl152873152891_)
                                       (let ((_e152874152896_
                                              (gx#syntax-e _tl152873152891_)))
                                         (let ((_hd152875152899_
                                                (##car _e152874152896_))
                                               (_tl152876152901_
                                                (##cdr _e152874152896_)))
                                           (if (gx#stx-null? _tl152876152901_)
                                               (if '#t
                                                   (gx#identifier? _hd152894_)
                                                   (_E152870152882_))
                                               (_E152870152882_))))
                                       (_E152870152882_)))))
                             (_E152870152882_)))))
                 (_E152869152904_)))
             _stx152865_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind152822_)
        (let* ((_e152823152833_ _bind152822_)
               (_E152825152837_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152823152833_)))
               (_E152824152861_
                (lambda ()
                  (if (gx#stx-pair? _e152823152833_)
                      (let ((_e152826152841_ (gx#syntax-e _e152823152833_)))
                        (let ((_hd152827152844_ (##car _e152826152841_))
                              (_tl152828152846_ (##cdr _e152826152841_)))
                          (if (gx#stx-pair? _tl152828152846_)
                              (let ((_e152829152849_
                                     (gx#syntax-e _tl152828152846_)))
                                (let ((_hd152830152852_
                                       (##car _e152829152849_))
                                      (_tl152831152854_
                                       (##cdr _e152829152849_)))
                                  (let ((_expr152857_ _hd152830152852_))
                                    (if (gx#stx-null? _tl152831152854_)
                                        (if '#t
                                            (let ((_g158958_
                                                   (gx#core-expand-expression+1
                                                    _expr152857_)))
                                              (begin
                                                (let ((_g158959_
                                                       (if (##values?
                                                            _g158958_)
                                                           (##vector-length
                                                            _g158958_)
                                                           1)))
                                                  (if (not (##fx= _g158959_ 2))
                                                      (error "Context expects 2 values"
                                                             _g158959_)))
                                                (let ((_e152859_
                                                       (##vector-ref
                                                        _g158958_
                                                        1)))
                                                  _e152859_)))
                                            (_E152825152837_))
                                        (_E152825152837_)))))
                              (_E152825152837_))))
                      (_E152825152837_)))))
          (_E152824152861_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind152767_ _e152768_ _rebind?152769_)
        (let* ((_e152770152780_ _bind152767_)
               (_E152772152784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152770152780_)))
               (_E152771152806_
                (lambda ()
                  (if (gx#stx-pair? _e152770152780_)
                      (let ((_e152773152788_ (gx#syntax-e _e152770152780_)))
                        (let ((_hd152774152791_ (##car _e152773152788_))
                              (_tl152775152793_ (##cdr _e152773152788_)))
                          (let ((_id152796_ _hd152774152791_))
                            (if (gx#stx-pair? _tl152775152793_)
                                (let ((_e152776152798_
                                       (gx#syntax-e _tl152775152793_)))
                                  (let ((_hd152777152801_
                                         (##car _e152776152798_))
                                        (_tl152778152803_
                                         (##cdr _e152776152798_)))
                                    (if (gx#stx-null? _tl152778152803_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id152796_
                                             _e152768_
                                             _rebind?152769_)
                                            (_E152772152784_))
                                        (_E152772152784_))))
                                (_E152772152784_)))))
                      (_E152772152784_)))))
          (_E152771152806_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind152813_ _e152814_)
        (let ((_rebind?152816_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind152813_
           _e152814_
           _rebind?152816_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g158961_
        (let ((_g158960_ (##length _g158961_)))
          (cond ((##fx= _g158960_ 2)
                 (apply (lambda (_bind152813_ _e152814_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind152813_
                           _e152814_))
                        _g158961_))
                ((##fx= _g158960_ 3)
                 (apply (lambda (_bind152818_ _e152819_ _rebind?152820_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind152818_
                           _e152819_
                           _rebind?152820_))
                        _g158961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g158961_))))))
    (define gx#core-expand-expression%
      (lambda (_stx152725_)
        (let* ((_e152726152736_ _stx152725_)
               (_E152728152740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152726152736_)))
               (_E152727152762_
                (lambda ()
                  (if (gx#stx-pair? _e152726152736_)
                      (let ((_e152729152744_ (gx#syntax-e _e152726152736_)))
                        (let ((_hd152730152747_ (##car _e152729152744_))
                              (_tl152731152749_ (##cdr _e152729152744_)))
                          (if (gx#stx-pair? _tl152731152749_)
                              (let ((_e152732152752_
                                     (gx#syntax-e _tl152731152749_)))
                                (let ((_hd152733152755_
                                       (##car _e152732152752_))
                                      (_tl152734152757_
                                       (##cdr _e152732152752_)))
                                  (let ((_expr152760_ _hd152733152755_))
                                    (if (gx#stx-null? _tl152734152757_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr152760_)
                                            (_E152728152740_))
                                        (_E152728152740_)))))
                              (_E152728152740_))))
                      (_E152728152740_)))))
          (_E152727152762_))))
    (define gx#core-expand-quote%
      (lambda (_stx152684_)
        (let* ((_e152685152695_ _stx152684_)
               (_E152687152699_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152685152695_)))
               (_E152686152721_
                (lambda ()
                  (if (gx#stx-pair? _e152685152695_)
                      (let ((_e152688152703_ (gx#syntax-e _e152685152695_)))
                        (let ((_hd152689152706_ (##car _e152688152703_))
                              (_tl152690152708_ (##cdr _e152688152703_)))
                          (if (gx#stx-pair? _tl152690152708_)
                              (let ((_e152691152711_
                                     (gx#syntax-e _tl152690152708_)))
                                (let ((_hd152692152714_
                                       (##car _e152691152711_))
                                      (_tl152693152716_
                                       (##cdr _e152691152711_)))
                                  (let ((_e152719_ _hd152692152714_))
                                    (if (gx#stx-null? _tl152693152716_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e152719_)
                                                         '()))
                                             (gx#stx-source _stx152684_))
                                            (_E152687152699_))
                                        (_E152687152699_)))))
                              (_E152687152699_))))
                      (_E152687152699_)))))
          (_E152686152721_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx152643_)
        (let* ((_e152644152654_ _stx152643_)
               (_E152646152658_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152644152654_)))
               (_E152645152680_
                (lambda ()
                  (if (gx#stx-pair? _e152644152654_)
                      (let ((_e152647152662_ (gx#syntax-e _e152644152654_)))
                        (let ((_hd152648152665_ (##car _e152647152662_))
                              (_tl152649152667_ (##cdr _e152647152662_)))
                          (if (gx#stx-pair? _tl152649152667_)
                              (let ((_e152650152670_
                                     (gx#syntax-e _tl152649152667_)))
                                (let ((_hd152651152673_
                                       (##car _e152650152670_))
                                      (_tl152652152675_
                                       (##cdr _e152650152670_)))
                                  (let ((_e152678_ _hd152651152673_))
                                    (if (gx#stx-null? _tl152652152675_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e152678_)
                                                         '()))
                                             (gx#stx-source _stx152643_))
                                            (_E152646152658_))
                                        (_E152646152658_)))))
                              (_E152646152658_))))
                      (_E152646152658_)))))
          (_E152645152680_))))
    (define gx#core-expand-call%
      (lambda (_stx152600_)
        (let* ((_e152601152611_ _stx152600_)
               (_E152603152615_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152601152611_)))
               (_E152602152639_
                (lambda ()
                  (if (gx#stx-pair? _e152601152611_)
                      (let ((_e152604152619_ (gx#syntax-e _e152601152611_)))
                        (let ((_hd152605152622_ (##car _e152604152619_))
                              (_tl152606152624_ (##cdr _e152604152619_)))
                          (if (gx#stx-pair? _tl152606152624_)
                              (let ((_e152607152627_
                                     (gx#syntax-e _tl152606152624_)))
                                (let ((_hd152608152630_
                                       (##car _e152607152627_))
                                      (_tl152609152632_
                                       (##cdr _e152607152627_)))
                                  (let* ((_rator152635_ _hd152608152630_)
                                         (_args152637_ _tl152609152632_))
                                    (if (gx#stx-list? _args152637_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator152635_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args152637_))
                                         (gx#stx-source _stx152600_))
                                        (_E152603152615_)))))
                              (_E152603152615_))))
                      (_E152603152615_)))))
          (_E152602152639_))))
    (define gx#core-expand-if%
      (lambda (_stx152533_)
        (let* ((_e152534152550_ _stx152533_)
               (_E152536152554_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152534152550_)))
               (_E152535152596_
                (lambda ()
                  (if (gx#stx-pair? _e152534152550_)
                      (let ((_e152537152558_ (gx#syntax-e _e152534152550_)))
                        (let ((_hd152538152561_ (##car _e152537152558_))
                              (_tl152539152563_ (##cdr _e152537152558_)))
                          (if (gx#stx-pair? _tl152539152563_)
                              (let ((_e152540152566_
                                     (gx#syntax-e _tl152539152563_)))
                                (let ((_hd152541152569_
                                       (##car _e152540152566_))
                                      (_tl152542152571_
                                       (##cdr _e152540152566_)))
                                  (let ((_test152574_ _hd152541152569_))
                                    (if (gx#stx-pair? _tl152542152571_)
                                        (let ((_e152543152576_
                                               (gx#syntax-e _tl152542152571_)))
                                          (let ((_hd152544152579_
                                                 (##car _e152543152576_))
                                                (_tl152545152581_
                                                 (##cdr _e152543152576_)))
                                            (let ((_K152584_ _hd152544152579_))
                                              (if (gx#stx-pair?
                                                   _tl152545152581_)
                                                  (let ((_e152546152586_
                                                         (gx#syntax-e
                                                          _tl152545152581_)))
                                                    (let ((_hd152547152589_
                                                           (##car _e152546152586_))
                                                          (_tl152548152591_
                                                           (##cdr _e152546152586_)))
                                                      (let ((_E152594_
                                                             _hd152547152589_))
                                                        (if (gx#stx-null?
                                                             _tl152548152591_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test152574_)
                                     (cons (gx#core-expand-expression
                                            _K152584_)
                                           (cons (gx#core-expand-expression
                                                  _E152594_)
                                                 '()))))
                         (gx#stx-source _stx152533_))
                        (_E152536152554_))
                    (_E152536152554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152536152554_)))))
                                        (_E152536152554_)))))
                              (_E152536152554_))))
                      (_E152536152554_)))))
          (_E152535152596_))))
    (define gx#core-expand-ref%
      (lambda (_stx152492_)
        (let* ((_e152493152503_ _stx152492_)
               (_E152495152507_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152493152503_)))
               (_E152494152529_
                (lambda ()
                  (if (gx#stx-pair? _e152493152503_)
                      (let ((_e152496152511_ (gx#syntax-e _e152493152503_)))
                        (let ((_hd152497152514_ (##car _e152496152511_))
                              (_tl152498152516_ (##cdr _e152496152511_)))
                          (if (gx#stx-pair? _tl152498152516_)
                              (let ((_e152499152519_
                                     (gx#syntax-e _tl152498152516_)))
                                (let ((_hd152500152522_
                                       (##car _e152499152519_))
                                      (_tl152501152524_
                                       (##cdr _e152499152519_)))
                                  (let ((_id152527_ _hd152500152522_))
                                    (if (gx#stx-null? _tl152501152524_)
                                        (if (gx#identifier? _id152527_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id152527_
                                                          _stx152492_)
                                                         '()))
                                             (gx#stx-source _stx152492_))
                                            (_E152495152507_))
                                        (_E152495152507_)))))
                              (_E152495152507_))))
                      (_E152495152507_)))))
          (_E152494152529_))))
    (define gx#core-expand-setq%
      (lambda (_stx152438_)
        (let* ((_e152439152452_ _stx152438_)
               (_E152441152456_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152439152452_)))
               (_E152440152488_
                (lambda ()
                  (if (gx#stx-pair? _e152439152452_)
                      (let ((_e152442152460_ (gx#syntax-e _e152439152452_)))
                        (let ((_hd152443152463_ (##car _e152442152460_))
                              (_tl152444152465_ (##cdr _e152442152460_)))
                          (if (gx#stx-pair? _tl152444152465_)
                              (let ((_e152445152468_
                                     (gx#syntax-e _tl152444152465_)))
                                (let ((_hd152446152471_
                                       (##car _e152445152468_))
                                      (_tl152447152473_
                                       (##cdr _e152445152468_)))
                                  (let ((_id152476_ _hd152446152471_))
                                    (if (gx#stx-pair? _tl152447152473_)
                                        (let ((_e152448152478_
                                               (gx#syntax-e _tl152447152473_)))
                                          (let ((_hd152449152481_
                                                 (##car _e152448152478_))
                                                (_tl152450152483_
                                                 (##cdr _e152448152478_)))
                                            (let ((_expr152486_
                                                   _hd152449152481_))
                                              (if (gx#stx-null?
                                                   _tl152450152483_)
                                                  (if (gx#identifier?
                                                       _id152476_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id152476_
                            _stx152438_)
                           (cons (gx#core-expand-expression _expr152486_)
                                 '())))
               (gx#stx-source _stx152438_))
              (_E152441152456_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152441152456_)))))
                                        (_E152441152456_)))))
                              (_E152441152456_))))
                      (_E152441152456_)))))
          (_E152440152488_))))
    (define gx#macro-expand-extern
      (lambda (_stx152286_)
        (letrec ((_generate152288_
                  (lambda (_body152318_)
                    (let _lp152320_ ((_rest152322_ _body152318_)
                                     (_ns152323_
                                      (gx#core-context-namespace__0))
                                     (_r152324_ '()))
                      (let* ((_e152325152340_ _rest152322_)
                             (_E152338152344_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e152325152340_)))
                             (_E152334152348_
                              (lambda ()
                                (if (gx#stx-null? _e152325152340_)
                                    (if '#t
                                        (reverse _r152324_)
                                        (_E152338152344_))
                                    (_E152338152344_))))
                             (_E152327152405_
                              (lambda ()
                                (if (gx#stx-pair? _e152325152340_)
                                    (let ((_e152335152352_
                                           (gx#syntax-e _e152325152340_)))
                                      (let ((_hd152336152355_
                                             (##car _e152335152352_))
                                            (_tl152337152357_
                                             (##cdr _e152335152352_)))
                                        (let* ((_hd152360_ _hd152336152355_)
                                               (_rest152362_ _tl152337152357_))
                                          (if '#t
                                              (if (gx#identifier? _hd152360_)
                                                  (_lp152320_
                                                   _rest152362_
                                                   _ns152323_
                                                   (cons (cons _hd152360_
                                                               (cons (if _ns152323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd152360_
                                  _ns152323_
                                  '"#"
                                  _hd152360_)
                                 _hd152360_)
                             '()))
                 _r152324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e152363152373_
                                                          _hd152360_)
                                                         (_E152365152377_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e152363152373_)))
                                                         (_E152364152401_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e152363152373_)
                        (let ((_e152366152381_ (gx#syntax-e _e152363152373_)))
                          (let ((_hd152367152384_ (##car _e152366152381_))
                                (_tl152368152386_ (##cdr _e152366152381_)))
                            (let ((_id152389_ _hd152367152384_))
                              (if (gx#stx-pair? _tl152368152386_)
                                  (let ((_e152369152391_
                                         (gx#syntax-e _tl152368152386_)))
                                    (let ((_hd152370152394_
                                           (##car _e152369152391_))
                                          (_tl152371152396_
                                           (##cdr _e152369152391_)))
                                      (let ((_eid152399_ _hd152370152394_))
                                        (if (gx#stx-null? _tl152371152396_)
                                            (if (and (gx#identifier?
                                                      _id152389_)
                                                     (gx#identifier?
                                                      _eid152399_))
                                                (_lp152320_
                                                 _rest152362_
                                                 _ns152323_
                                                 (cons (cons _id152389_
                                                             (cons _eid152399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r152324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152365152377_))
                                            (_E152365152377_)))))
                                  (_E152365152377_)))))
                        (_E152365152377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152364152401_)))
                                              (_E152334152348_)))))
                                    (_E152334152348_))))
                             (_E152326152434_
                              (lambda ()
                                (if (gx#stx-pair? _e152325152340_)
                                    (let ((_e152328152409_
                                           (gx#syntax-e _e152325152340_)))
                                      (let ((_hd152329152412_
                                             (##car _e152328152409_))
                                            (_tl152330152414_
                                             (##cdr _e152328152409_)))
                                        (if (eq? (gx#stx-e _hd152329152412_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl152330152414_)
                                                (let ((_e152331152417_
                                                       (gx#syntax-e
                                                        _tl152330152414_)))
                                                  (let ((_hd152332152420_
                                                         (##car _e152331152417_))
                                                        (_tl152333152422_
                                                         (##cdr _e152331152417_)))
                                                    (let* ((_ns152425_
                                                            _hd152332152420_)
                                                           (_rest152427_
                                                            _tl152333152422_))
                                                      (if '#t
                                                          (let ((_ns152432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns152425_)
                             (symbol->string (gx#stx-e _ns152425_))
                             (if (or (gx#stx-string? _ns152425_)
                                     (gx#stx-false? _ns152425_))
                                 (gx#stx-e _ns152425_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx152286_
                                  _ns152425_)))))
                    (_lp152320_ _rest152427_ _ns152432_ _r152324_))
                  (_E152327152405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152327152405_))
                                            (_E152327152405_))))
                                    (_E152327152405_)))))
                        (_E152326152434_))))))
          (let* ((_e152289152296_ _stx152286_)
                 (_E152291152300_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152289152296_)))
                 (_E152290152314_
                  (lambda ()
                    (if (gx#stx-pair? _e152289152296_)
                        (let ((_e152292152304_ (gx#syntax-e _e152289152296_)))
                          (let ((_hd152293152307_ (##car _e152292152304_))
                                (_tl152294152309_ (##cdr _e152292152304_)))
                            (let ((_body152312_ _tl152294152309_))
                              (if (gx#stx-list? _body152312_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate152288_ _body152312_))
                                  (_E152291152300_)))))
                        (_E152291152300_)))))
            (_E152290152314_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx152232_)
        (let* ((_e152233152246_ _stx152232_)
               (_E152235152250_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152233152246_)))
               (_E152234152282_
                (lambda ()
                  (if (gx#stx-pair? _e152233152246_)
                      (let ((_e152236152254_ (gx#syntax-e _e152233152246_)))
                        (let ((_hd152237152257_ (##car _e152236152254_))
                              (_tl152238152259_ (##cdr _e152236152254_)))
                          (if (gx#stx-pair? _tl152238152259_)
                              (let ((_e152239152262_
                                     (gx#syntax-e _tl152238152259_)))
                                (let ((_hd152240152265_
                                       (##car _e152239152262_))
                                      (_tl152241152267_
                                       (##cdr _e152239152262_)))
                                  (let ((_hd152270_ _hd152240152265_))
                                    (if (gx#stx-pair? _tl152241152267_)
                                        (let ((_e152242152272_
                                               (gx#syntax-e _tl152241152267_)))
                                          (let ((_hd152243152275_
                                                 (##car _e152242152272_))
                                                (_tl152244152277_
                                                 (##cdr _e152242152272_)))
                                            (let ((_expr152280_
                                                   _hd152243152275_))
                                              (if (gx#stx-null?
                                                   _tl152244152277_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd152270_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd152270_)
                          (cons _expr152280_ '())))
              (_E152235152250_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152235152250_)))))
                                        (_E152235152250_)))))
                              (_E152235152250_))))
                      (_E152235152250_)))))
          (_E152234152282_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx152178_)
        (let* ((_e152179152192_ _stx152178_)
               (_E152181152196_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152179152192_)))
               (_E152180152228_
                (lambda ()
                  (if (gx#stx-pair? _e152179152192_)
                      (let ((_e152182152200_ (gx#syntax-e _e152179152192_)))
                        (let ((_hd152183152203_ (##car _e152182152200_))
                              (_tl152184152205_ (##cdr _e152182152200_)))
                          (if (gx#stx-pair? _tl152184152205_)
                              (let ((_e152185152208_
                                     (gx#syntax-e _tl152184152205_)))
                                (let ((_hd152186152211_
                                       (##car _e152185152208_))
                                      (_tl152187152213_
                                       (##cdr _e152185152208_)))
                                  (let ((_hd152216_ _hd152186152211_))
                                    (if (gx#stx-pair? _tl152187152213_)
                                        (let ((_e152188152218_
                                               (gx#syntax-e _tl152187152213_)))
                                          (let ((_hd152189152221_
                                                 (##car _e152188152218_))
                                                (_tl152190152223_
                                                 (##cdr _e152188152218_)))
                                            (let ((_expr152226_
                                                   _hd152189152221_))
                                              (if (gx#stx-null?
                                                   _tl152190152223_)
                                                  (if (gx#identifier?
                                                       _hd152216_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd152216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr152226_ '())))
              (_E152181152196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152181152196_)))))
                                        (_E152181152196_)))))
                              (_E152181152196_))))
                      (_E152181152196_)))))
          (_E152180152228_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx152124_)
        (let* ((_e152125152138_ _stx152124_)
               (_E152127152142_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152125152138_)))
               (_E152126152174_
                (lambda ()
                  (if (gx#stx-pair? _e152125152138_)
                      (let ((_e152128152146_ (gx#syntax-e _e152125152138_)))
                        (let ((_hd152129152149_ (##car _e152128152146_))
                              (_tl152130152151_ (##cdr _e152128152146_)))
                          (if (gx#stx-pair? _tl152130152151_)
                              (let ((_e152131152154_
                                     (gx#syntax-e _tl152130152151_)))
                                (let ((_hd152132152157_
                                       (##car _e152131152154_))
                                      (_tl152133152159_
                                       (##cdr _e152131152154_)))
                                  (let ((_id152162_ _hd152132152157_))
                                    (if (gx#stx-pair? _tl152133152159_)
                                        (let ((_e152134152164_
                                               (gx#syntax-e _tl152133152159_)))
                                          (let ((_hd152135152167_
                                                 (##car _e152134152164_))
                                                (_tl152136152169_
                                                 (##cdr _e152134152164_)))
                                            (let ((_alias-id152172_
                                                   _hd152135152167_))
                                              (if (gx#stx-null?
                                                   _tl152136152169_)
                                                  (if (and (gx#identifier?
                                                            _id152162_)
                                                           (gx#identifier?
                                                            _alias-id152172_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id152162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id152172_ '())))
              (_E152127152142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152127152142_)))))
                                        (_E152127152142_)))))
                              (_E152127152142_))))
                      (_E152127152142_)))))
          (_E152126152174_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx152081_)
        (let* ((_e152082152092_ _stx152081_)
               (_E152084152096_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152082152092_)))
               (_E152083152120_
                (lambda ()
                  (if (gx#stx-pair? _e152082152092_)
                      (let ((_e152085152100_ (gx#syntax-e _e152082152092_)))
                        (let ((_hd152086152103_ (##car _e152085152100_))
                              (_tl152087152105_ (##cdr _e152085152100_)))
                          (if (gx#stx-pair? _tl152087152105_)
                              (let ((_e152088152108_
                                     (gx#syntax-e _tl152087152105_)))
                                (let ((_hd152089152111_
                                       (##car _e152088152108_))
                                      (_tl152090152113_
                                       (##cdr _e152088152108_)))
                                  (let* ((_hd152116_ _hd152089152111_)
                                         (_body152118_ _tl152090152113_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd152116_)
                                             (gx#stx-list? _body152118_)
                                             (not (gx#stx-null? _body152118_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd152116_)
                                         _body152118_)
                                        (_E152084152096_)))))
                              (_E152084152096_))))
                      (_E152084152096_)))))
          (_E152083152120_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx152017_)
        (letrec ((_generate152019_
                  (lambda (_clause152049_)
                    (let* ((_e152050152057_ _clause152049_)
                           (_E152052152061_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx152017_
                               _clause152049_)))
                           (_E152051152077_
                            (lambda ()
                              (if (gx#stx-pair? _e152050152057_)
                                  (let ((_e152053152065_
                                         (gx#syntax-e _e152050152057_)))
                                    (let ((_hd152054152068_
                                           (##car _e152053152065_))
                                          (_tl152055152070_
                                           (##cdr _e152053152065_)))
                                      (let* ((_hd152073_ _hd152054152068_)
                                             (_body152075_ _tl152055152070_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd152073_)
                                                 (gx#stx-list? _body152075_)
                                                 (not (gx#stx-null?
                                                       _body152075_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd152073_)
                                                   _body152075_)
                                             (gx#stx-source _clause152049_))
                                            (_E152052152061_)))))
                                  (_E152052152061_)))))
                      (_E152051152077_)))))
          (let* ((_e152020152027_ _stx152017_)
                 (_E152022152031_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152020152027_)))
                 (_E152021152045_
                  (lambda ()
                    (if (gx#stx-pair? _e152020152027_)
                        (let ((_e152023152035_ (gx#syntax-e _e152020152027_)))
                          (let ((_hd152024152038_ (##car _e152023152035_))
                                (_tl152025152040_ (##cdr _e152023152035_)))
                            (let ((_clauses152043_ _tl152025152040_))
                              (if (gx#stx-list? _clauses152043_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate152019_
                                    _clauses152043_))
                                  (_E152022152031_)))))
                        (_E152022152031_)))))
            (_E152021152045_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx151918_ _form151919_)
        (letrec ((_generate151921_
                  (lambda (_bind151964_)
                    (let* ((_e151965151975_ _bind151964_)
                           (_E151967151979_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx151918_
                               _bind151964_)))
                           (_E151966152003_
                            (lambda ()
                              (if (gx#stx-pair? _e151965151975_)
                                  (let ((_e151968151983_
                                         (gx#syntax-e _e151965151975_)))
                                    (let ((_hd151969151986_
                                           (##car _e151968151983_))
                                          (_tl151970151988_
                                           (##cdr _e151968151983_)))
                                      (let ((_ids151991_ _hd151969151986_))
                                        (if (gx#stx-pair? _tl151970151988_)
                                            (let ((_e151971151993_
                                                   (gx#syntax-e
                                                    _tl151970151988_)))
                                              (let ((_hd151972151996_
                                                     (##car _e151971151993_))
                                                    (_tl151973151998_
                                                     (##cdr _e151971151993_)))
                                                (let ((_expr152001_
                                                       _hd151972151996_))
                                                  (if (gx#stx-null?
                                                       _tl151973151998_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids151991_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids151991_)
                        (cons _expr152001_ '()))
                  (_E151967151979_))
              (_E151967151979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E151967151979_)))))
                                  (_E151967151979_)))))
                      (_E151966152003_)))))
          (let* ((_e151922151932_ _stx151918_)
                 (_E151924151936_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e151922151932_)))
                 (_E151923151960_
                  (lambda ()
                    (if (gx#stx-pair? _e151922151932_)
                        (let ((_e151925151940_ (gx#syntax-e _e151922151932_)))
                          (let ((_hd151926151943_ (##car _e151925151940_))
                                (_tl151927151945_ (##cdr _e151925151940_)))
                            (if (gx#stx-pair? _tl151927151945_)
                                (let ((_e151928151948_
                                       (gx#syntax-e _tl151927151945_)))
                                  (let ((_hd151929151951_
                                         (##car _e151928151948_))
                                        (_tl151930151953_
                                         (##cdr _e151928151948_)))
                                    (let* ((_hd151956_ _hd151929151951_)
                                           (_body151958_ _tl151930151953_))
                                      (if (and (gx#stx-list? _hd151956_)
                                               (gx#stx-list? _body151958_)
                                               (not (gx#stx-null?
                                                     _body151958_)))
                                          (gx#core-cons*
                                           _form151919_
                                           (gx#stx-map1
                                            _generate151921_
                                            _hd151956_)
                                           _body151958_)
                                          (_E151924151936_)))))
                                (_E151924151936_))))
                        (_E151924151936_)))))
            (_E151923151960_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx152010_)
        (let ((_form152012_ '%#let-values))
          (gx#macro-expand-let-values__% _stx152010_ _form152012_))))
    (define gx#macro-expand-let-values
      (lambda _g158963_
        (let ((_g158962_ (##length _g158963_)))
          (cond ((##fx= _g158962_ 1)
                 (apply (lambda (_stx152010_)
                          (gx#macro-expand-let-values__0 _stx152010_))
                        _g158963_))
                ((##fx= _g158962_ 2)
                 (apply (lambda (_stx152014_ _form152015_)
                          (gx#macro-expand-let-values__%
                           _stx152014_
                           _form152015_))
                        _g158963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g158963_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx151915_)
        (gx#macro-expand-let-values__% _stx151915_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx151913_)
        (gx#macro-expand-let-values__% _stx151913_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx151804_)
        (let* ((_e151805151831_ _stx151804_)
               (_E151817151835_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151805151831_)))
               (_E151807151877_
                (lambda ()
                  (if (gx#stx-pair? _e151805151831_)
                      (let ((_e151818151839_ (gx#syntax-e _e151805151831_)))
                        (let ((_hd151819151842_ (##car _e151818151839_))
                              (_tl151820151844_ (##cdr _e151818151839_)))
                          (if (gx#stx-pair? _tl151820151844_)
                              (let ((_e151821151847_
                                     (gx#syntax-e _tl151820151844_)))
                                (let ((_hd151822151850_
                                       (##car _e151821151847_))
                                      (_tl151823151852_
                                       (##cdr _e151821151847_)))
                                  (let ((_test151855_ _hd151822151850_))
                                    (if (gx#stx-pair? _tl151823151852_)
                                        (let ((_e151824151857_
                                               (gx#syntax-e _tl151823151852_)))
                                          (let ((_hd151825151860_
                                                 (##car _e151824151857_))
                                                (_tl151826151862_
                                                 (##cdr _e151824151857_)))
                                            (let ((_K151865_ _hd151825151860_))
                                              (if (gx#stx-pair?
                                                   _tl151826151862_)
                                                  (let ((_e151827151867_
                                                         (gx#syntax-e
                                                          _tl151826151862_)))
                                                    (let ((_hd151828151870_
                                                           (##car _e151827151867_))
                                                          (_tl151829151872_
                                                           (##cdr _e151827151867_)))
                                                      (let ((_E151875_
                                                             _hd151828151870_))
                                                        (if (gx#stx-null?
                                                             _tl151829151872_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test151855_
                         _K151865_
                         _E151875_)
                        (_E151817151835_))
                    (_E151817151835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151817151835_)))))
                                        (_E151817151835_)))))
                              (_E151817151835_))))
                      (_E151817151835_))))
               (_E151806151909_
                (lambda ()
                  (if (gx#stx-pair? _e151805151831_)
                      (let ((_e151808151881_ (gx#syntax-e _e151805151831_)))
                        (let ((_hd151809151884_ (##car _e151808151881_))
                              (_tl151810151886_ (##cdr _e151808151881_)))
                          (if (gx#stx-pair? _tl151810151886_)
                              (let ((_e151811151889_
                                     (gx#syntax-e _tl151810151886_)))
                                (let ((_hd151812151892_
                                       (##car _e151811151889_))
                                      (_tl151813151894_
                                       (##cdr _e151811151889_)))
                                  (let ((_test151897_ _hd151812151892_))
                                    (if (gx#stx-pair? _tl151813151894_)
                                        (let ((_e151814151899_
                                               (gx#syntax-e _tl151813151894_)))
                                          (let ((_hd151815151902_
                                                 (##car _e151814151899_))
                                                (_tl151816151904_
                                                 (##cdr _e151814151899_)))
                                            (let ((_K151907_ _hd151815151902_))
                                              (if (gx#stx-null?
                                                   _tl151816151904_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test151897_
                                                       _K151907_
                                                       '#!void)
                                                      (_E151807151877_))
                                                  (_E151807151877_)))))
                                        (_E151807151877_)))))
                              (_E151807151877_))))
                      (_E151807151877_)))))
          (_E151806151909_))))
    (define gx#free-identifier=?
      (lambda (_xid151792_ _yid151793_)
        (let ((_xe151795_ (gx#resolve-identifier__0 _xid151792_))
              (_ye151796_ (gx#resolve-identifier__0 _yid151793_)))
          (if (and _xe151795_ _ye151796_)
              (let ((_$e151798_ (eq? _xe151795_ _ye151796_)))
                (if _$e151798_
                    _$e151798_
                    (if (##structure-instance-of? _xe151795_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye151796_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe151795_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye151796_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe151795_ _ye151796_)
                  '#f
                  (gx#stx-eq? _xid151792_ _yid151793_))))))
    (define gx#bound-identifier=?
      (lambda (_xid151776_ _yid151777_)
        (letrec ((_context151779_
                  (lambda (_e151790_)
                    (if (##structure-direct-instance-of?
                         _e151790_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e151790_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks151780_
                  (lambda (_e151788_)
                    (if (symbol? _e151788_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e151788_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e151788_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e151788_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap151781_
                  (lambda (_e151786_)
                    (if (symbol? _e151786_)
                        _e151786_
                        (gx#syntax-local-unwrap _e151786_)))))
          (let ((_x151783_ (_unwrap151781_ _xid151776_))
                (_y151784_ (_unwrap151781_ _yid151777_)))
            (if (gx#stx-eq? _x151783_ _y151784_)
                (if (eq? (_context151779_ _x151783_)
                         (_context151779_ _y151784_))
                    (equal? (_marks151780_ _x151783_)
                            (_marks151780_ _y151784_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx151774_)
        (if (gx#identifier? _stx151774_)
            (gx#core-identifier=? _stx151774_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx151772_)
        (if (gx#identifier? _stx151772_)
            (gx#core-identifier=? _stx151772_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x151770_)
        (if (gx#identifier? _x151770_)
            (if (not (gx#underscore? _x151770_)) _x151770_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx151716_ _where151717_)
        (let _lp151719_ ((_rest151721_ (gx#syntax->list _stx151716_)))
          (let* ((_rest151722151730_ _rest151721_)
                 (_else151724151738_ (lambda () '#t))
                 (_K151726151748_
                  (lambda (_rest151741_ _hd151742_)
                    (if (not (gx#identifier? _hd151742_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where151717_
                         _hd151742_)
                        (if (find (lambda (_g151743151745_)
                                    (gx#bound-identifier=?
                                     _g151743151745_
                                     _hd151742_))
                                  _rest151741_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where151717_
                             _hd151742_)
                            (_lp151719_ _rest151741_))))))
            (if (##pair? _rest151722151730_)
                (let ((_hd151727151751_ (##car _rest151722151730_))
                      (_tl151728151753_ (##cdr _rest151722151730_)))
                  (let* ((_hd151756_ _hd151727151751_)
                         (_rest151758_ _tl151728151753_))
                    (_K151726151748_ _rest151758_ _hd151756_)))
                (_else151724151738_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx151763_)
        (let ((_where151765_ _stx151763_))
          (gx#check-duplicate-identifiers__% _stx151763_ _where151765_))))
    (define gx#check-duplicate-identifiers
      (lambda _g158965_
        (let ((_g158964_ (##length _g158965_)))
          (cond ((##fx= _g158964_ 1)
                 (apply (lambda (_stx151763_)
                          (gx#check-duplicate-identifiers__0 _stx151763_))
                        _g158965_))
                ((##fx= _g158964_ 2)
                 (apply (lambda (_stx151767_ _where151768_)
                          (gx#check-duplicate-identifiers__%
                           _stx151767_
                           _where151768_))
                        _g158965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g158965_))))))
    (define gx#core-bind-values?
      (lambda (_stx151708_)
        (gx#stx-andmap
         (lambda (_x151710_)
           (let ((_$e151712_ (gx#identifier? _x151710_)))
             (if _$e151712_ _$e151712_ (gx#stx-false? _x151710_))))
         _stx151708_)))
    (define gx#core-bind-values!__%
      (lambda (_stx151672_ _rebind?151673_ _phi151674_ _ctx151675_)
        (gx#stx-for-each1
         (lambda (_id151677_)
           (if (gx#identifier? _id151677_)
               (gx#core-bind-runtime!__%
                _id151677_
                _rebind?151673_
                _phi151674_
                _ctx151675_)
               '#!void))
         _stx151672_)))
    (define gx#core-bind-values!__0
      (lambda (_stx151682_)
        (let* ((_rebind?151684_ '#f)
               (_phi151686_ (gx#current-expander-phi))
               (_ctx151688_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151682_
           _rebind?151684_
           _phi151686_
           _ctx151688_))))
    (define gx#core-bind-values!__1
      (lambda (_stx151690_ _rebind?151691_)
        (let* ((_phi151693_ (gx#current-expander-phi))
               (_ctx151695_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151690_
           _rebind?151691_
           _phi151693_
           _ctx151695_))))
    (define gx#core-bind-values!__2
      (lambda (_stx151697_ _rebind?151698_ _phi151699_)
        (let ((_ctx151701_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx151697_
           _rebind?151698_
           _phi151699_
           _ctx151701_))))
    (define gx#core-bind-values!
      (lambda _g158967_
        (let ((_g158966_ (##length _g158967_)))
          (cond ((##fx= _g158966_ 1)
                 (apply (lambda (_stx151682_)
                          (gx#core-bind-values!__0 _stx151682_))
                        _g158967_))
                ((##fx= _g158966_ 2)
                 (apply (lambda (_stx151690_ _rebind?151691_)
                          (gx#core-bind-values!__1
                           _stx151690_
                           _rebind?151691_))
                        _g158967_))
                ((##fx= _g158966_ 3)
                 (apply (lambda (_stx151697_ _rebind?151698_ _phi151699_)
                          (gx#core-bind-values!__2
                           _stx151697_
                           _rebind?151698_
                           _phi151699_))
                        _g158967_))
                ((##fx= _g158966_ 4)
                 (apply (lambda (_stx151703_
                                 _rebind?151704_
                                 _phi151705_
                                 _ctx151706_)
                          (gx#core-bind-values!__%
                           _stx151703_
                           _rebind?151704_
                           _phi151705_
                           _ctx151706_))
                        _g158967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g158967_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx151667_)
        (gx#stx-map1
         (lambda (_x151669_)
           (if (gx#identifier? _x151669_)
               (gx#core-quote-syntax__0 _x151669_)
               '#f))
         _stx151667_)))
    (define gx#core-runtime-ref?
      (lambda (_stx151660_)
        (if (gx#identifier? _stx151660_)
            (let* ((_bind151662_ (gx#resolve-identifier__0 _stx151660_))
                   (_$e151664_ (not _bind151662_)))
              (if _$e151664_
                  _$e151664_
                  (##structure-instance-of?
                   _bind151662_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id151652_ _form151653_)
        (let ((_bind151655_ (gx#resolve-identifier__0 _id151652_)))
          (if (##structure-instance-of? _bind151655_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id151652_)
              (if (not _bind151655_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id151652_)))
                      (gx#core-quote-syntax__0 _id151652_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form151653_
                       _id151652_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form151653_
                   _id151652_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id151611_ _rebind?151612_ _phi151613_ _ctx151614_)
        (let* ((_key151616_ (gx#core-identifier-key _id151611_))
               (_eid151618_
                (gx#make-binding-id__%
                 _key151616_
                 '#f
                 _phi151613_
                 _ctx151614_))
               (_bind151620_
                (if (##structure-instance-of?
                     _ctx151614_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151618_
                     _key151616_
                     _phi151613_
                     _ctx151614_)
                    (if (##structure-instance-of?
                         _ctx151614_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151618_
                         _key151616_
                         _phi151613_)
                        (if (##structure-instance-of?
                             _ctx151614_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid151618_
                             _key151616_
                             _phi151613_)
                            (##structure
                             gx#runtime-binding::t
                             _eid151618_
                             _key151616_
                             _phi151613_))))))
          (gx#bind-identifier!__%
           _id151611_
           _bind151620_
           _rebind?151612_
           _phi151613_
           _ctx151614_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id151626_)
        (let* ((_rebind?151628_ '#f)
               (_phi151630_ (gx#current-expander-phi))
               (_ctx151632_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151626_
           _rebind?151628_
           _phi151630_
           _ctx151632_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id151634_ _rebind?151635_)
        (let* ((_phi151637_ (gx#current-expander-phi))
               (_ctx151639_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151634_
           _rebind?151635_
           _phi151637_
           _ctx151639_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id151641_ _rebind?151642_ _phi151643_)
        (let ((_ctx151645_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id151641_
           _rebind?151642_
           _phi151643_
           _ctx151645_))))
    (define gx#core-bind-runtime!
      (lambda _g158969_
        (let ((_g158968_ (##length _g158969_)))
          (cond ((##fx= _g158968_ 1)
                 (apply (lambda (_id151626_)
                          (gx#core-bind-runtime!__0 _id151626_))
                        _g158969_))
                ((##fx= _g158968_ 2)
                 (apply (lambda (_id151634_ _rebind?151635_)
                          (gx#core-bind-runtime!__1
                           _id151634_
                           _rebind?151635_))
                        _g158969_))
                ((##fx= _g158968_ 3)
                 (apply (lambda (_id151641_ _rebind?151642_ _phi151643_)
                          (gx#core-bind-runtime!__2
                           _id151641_
                           _rebind?151642_
                           _phi151643_))
                        _g158969_))
                ((##fx= _g158968_ 4)
                 (apply (lambda (_id151647_
                                 _rebind?151648_
                                 _phi151649_
                                 _ctx151650_)
                          (gx#core-bind-runtime!__%
                           _id151647_
                           _rebind?151648_
                           _phi151649_
                           _ctx151650_))
                        _g158969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g158969_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id151566_ _eid151567_ _rebind?151568_ _phi151569_ _ctx151570_)
        (let* ((_key151572_ (gx#core-identifier-key _id151566_))
               (_bind151574_
                (if (##structure-instance-of?
                     _ctx151570_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid151567_
                     _key151572_
                     _phi151569_
                     _ctx151570_)
                    (if (##structure-instance-of?
                         _ctx151570_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid151567_
                         _key151572_
                         _phi151569_)
                        (##structure
                         gx#runtime-binding::t
                         _eid151567_
                         _key151572_
                         _phi151569_)))))
          (gx#bind-identifier!__%
           _id151566_
           _bind151574_
           _rebind?151568_
           _phi151569_
           _ctx151570_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id151580_ _eid151581_)
        (let* ((_rebind?151583_ '#f)
               (_phi151585_ (gx#current-expander-phi))
               (_ctx151587_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151580_
           _eid151581_
           _rebind?151583_
           _phi151585_
           _ctx151587_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id151589_ _eid151590_ _rebind?151591_)
        (let* ((_phi151593_ (gx#current-expander-phi))
               (_ctx151595_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151589_
           _eid151590_
           _rebind?151591_
           _phi151593_
           _ctx151595_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id151597_ _eid151598_ _rebind?151599_ _phi151600_)
        (let ((_ctx151602_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id151597_
           _eid151598_
           _rebind?151599_
           _phi151600_
           _ctx151602_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g158971_
        (let ((_g158970_ (##length _g158971_)))
          (cond ((##fx= _g158970_ 2)
                 (apply (lambda (_id151580_ _eid151581_)
                          (gx#core-bind-runtime-reference!__0
                           _id151580_
                           _eid151581_))
                        _g158971_))
                ((##fx= _g158970_ 3)
                 (apply (lambda (_id151589_ _eid151590_ _rebind?151591_)
                          (gx#core-bind-runtime-reference!__1
                           _id151589_
                           _eid151590_
                           _rebind?151591_))
                        _g158971_))
                ((##fx= _g158970_ 4)
                 (apply (lambda (_id151597_
                                 _eid151598_
                                 _rebind?151599_
                                 _phi151600_)
                          (gx#core-bind-runtime-reference!__2
                           _id151597_
                           _eid151598_
                           _rebind?151599_
                           _phi151600_))
                        _g158971_))
                ((##fx= _g158970_ 5)
                 (apply (lambda (_id151604_
                                 _eid151605_
                                 _rebind?151606_
                                 _phi151607_
                                 _ctx151608_)
                          (gx#core-bind-runtime-reference!__%
                           _id151604_
                           _eid151605_
                           _rebind?151606_
                           _phi151607_
                           _ctx151608_))
                        _g158971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g158971_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id151526_ _eid151527_ _rebind?151528_ _phi151529_ _ctx151530_)
        (gx#bind-identifier!__%
         _id151526_
         (##structure
          gx#extern-binding::t
          _eid151527_
          (gx#core-identifier-key _id151526_)
          _phi151529_)
         _rebind?151528_
         _phi151529_
         _ctx151530_)))
    (define gx#core-bind-extern!__0
      (lambda (_id151535_ _eid151536_)
        (let* ((_rebind?151538_ '#f)
               (_phi151540_ (gx#current-expander-phi))
               (_ctx151542_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151535_
           _eid151536_
           _rebind?151538_
           _phi151540_
           _ctx151542_))))
    (define gx#core-bind-extern!__1
      (lambda (_id151544_ _eid151545_ _rebind?151546_)
        (let* ((_phi151548_ (gx#current-expander-phi))
               (_ctx151550_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151544_
           _eid151545_
           _rebind?151546_
           _phi151548_
           _ctx151550_))))
    (define gx#core-bind-extern!__2
      (lambda (_id151552_ _eid151553_ _rebind?151554_ _phi151555_)
        (let ((_ctx151557_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id151552_
           _eid151553_
           _rebind?151554_
           _phi151555_
           _ctx151557_))))
    (define gx#core-bind-extern!
      (lambda _g158973_
        (let ((_g158972_ (##length _g158973_)))
          (cond ((##fx= _g158972_ 2)
                 (apply (lambda (_id151535_ _eid151536_)
                          (gx#core-bind-extern!__0 _id151535_ _eid151536_))
                        _g158973_))
                ((##fx= _g158972_ 3)
                 (apply (lambda (_id151544_ _eid151545_ _rebind?151546_)
                          (gx#core-bind-extern!__1
                           _id151544_
                           _eid151545_
                           _rebind?151546_))
                        _g158973_))
                ((##fx= _g158972_ 4)
                 (apply (lambda (_id151552_
                                 _eid151553_
                                 _rebind?151554_
                                 _phi151555_)
                          (gx#core-bind-extern!__2
                           _id151552_
                           _eid151553_
                           _rebind?151554_
                           _phi151555_))
                        _g158973_))
                ((##fx= _g158972_ 5)
                 (apply (lambda (_id151559_
                                 _eid151560_
                                 _rebind?151561_
                                 _phi151562_
                                 _ctx151563_)
                          (gx#core-bind-extern!__%
                           _id151559_
                           _eid151560_
                           _rebind?151561_
                           _phi151562_
                           _ctx151563_))
                        _g158973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g158973_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id151480_ _e151481_ _rebind?151482_ _phi151483_ _ctx151484_)
        (gx#bind-identifier!__%
         _id151480_
         (let ((_key151489_ (gx#core-identifier-key _id151480_))
               (_e151490_
                (if (or (##structure-instance-of? _e151481_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e151481_
                         'gx#expander-context::t))
                    _e151481_
                    (##structure
                     gx#user-expander::t
                     _e151481_
                     _ctx151484_
                     _phi151483_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key151489_ '#t _phi151483_ _ctx151484_)
            _key151489_
            _phi151483_
            _e151490_))
         _rebind?151482_
         _phi151483_
         _ctx151484_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id151495_ _e151496_)
        (let* ((_rebind?151498_ '#f)
               (_phi151500_ (gx#current-expander-phi))
               (_ctx151502_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151495_
           _e151496_
           _rebind?151498_
           _phi151500_
           _ctx151502_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id151504_ _e151505_ _rebind?151506_)
        (let* ((_phi151508_ (gx#current-expander-phi))
               (_ctx151510_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151504_
           _e151505_
           _rebind?151506_
           _phi151508_
           _ctx151510_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id151512_ _e151513_ _rebind?151514_ _phi151515_)
        (let ((_ctx151517_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id151512_
           _e151513_
           _rebind?151514_
           _phi151515_
           _ctx151517_))))
    (define gx#core-bind-syntax!
      (lambda _g158975_
        (let ((_g158974_ (##length _g158975_)))
          (cond ((##fx= _g158974_ 2)
                 (apply (lambda (_id151495_ _e151496_)
                          (gx#core-bind-syntax!__0 _id151495_ _e151496_))
                        _g158975_))
                ((##fx= _g158974_ 3)
                 (apply (lambda (_id151504_ _e151505_ _rebind?151506_)
                          (gx#core-bind-syntax!__1
                           _id151504_
                           _e151505_
                           _rebind?151506_))
                        _g158975_))
                ((##fx= _g158974_ 4)
                 (apply (lambda (_id151512_
                                 _e151513_
                                 _rebind?151514_
                                 _phi151515_)
                          (gx#core-bind-syntax!__2
                           _id151512_
                           _e151513_
                           _rebind?151514_
                           _phi151515_))
                        _g158975_))
                ((##fx= _g158974_ 5)
                 (apply (lambda (_id151519_
                                 _e151520_
                                 _rebind?151521_
                                 _phi151522_
                                 _ctx151523_)
                          (gx#core-bind-syntax!__%
                           _id151519_
                           _e151520_
                           _rebind?151521_
                           _phi151522_
                           _ctx151523_))
                        _g158975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g158975_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id151463_ _e151464_ _rebind?151465_)
        (gx#core-bind-syntax!__%
         _id151463_
         _e151464_
         _rebind?151465_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id151470_ _e151471_)
        (let ((_rebind?151473_ '#f))
          (gx#core-bind-root-syntax!__%
           _id151470_
           _e151471_
           _rebind?151473_))))
    (define gx#core-bind-root-syntax!
      (lambda _g158977_
        (let ((_g158976_ (##length _g158977_)))
          (cond ((##fx= _g158976_ 2)
                 (apply (lambda (_id151470_ _e151471_)
                          (gx#core-bind-root-syntax!__0 _id151470_ _e151471_))
                        _g158977_))
                ((##fx= _g158976_ 3)
                 (apply (lambda (_id151475_ _e151476_ _rebind?151477_)
                          (gx#core-bind-root-syntax!__%
                           _id151475_
                           _e151476_
                           _rebind?151477_))
                        _g158977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g158977_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id151421_
               _alias-id151422_
               _rebind?151423_
               _phi151424_
               _ctx151425_)
        (gx#bind-identifier!__%
         _id151421_
         (let ((_key151427_ (gx#core-identifier-key _id151421_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key151427_ '#t _phi151424_ _ctx151425_)
            _key151427_
            _phi151424_
            _alias-id151422_))
         _rebind?151423_
         _phi151424_
         _ctx151425_)))
    (define gx#core-bind-alias!__0
      (lambda (_id151432_ _alias-id151433_)
        (let* ((_rebind?151435_ '#f)
               (_phi151437_ (gx#current-expander-phi))
               (_ctx151439_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151432_
           _alias-id151433_
           _rebind?151435_
           _phi151437_
           _ctx151439_))))
    (define gx#core-bind-alias!__1
      (lambda (_id151441_ _alias-id151442_ _rebind?151443_)
        (let* ((_phi151445_ (gx#current-expander-phi))
               (_ctx151447_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151441_
           _alias-id151442_
           _rebind?151443_
           _phi151445_
           _ctx151447_))))
    (define gx#core-bind-alias!__2
      (lambda (_id151449_ _alias-id151450_ _rebind?151451_ _phi151452_)
        (let ((_ctx151454_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id151449_
           _alias-id151450_
           _rebind?151451_
           _phi151452_
           _ctx151454_))))
    (define gx#core-bind-alias!
      (lambda _g158979_
        (let ((_g158978_ (##length _g158979_)))
          (cond ((##fx= _g158978_ 2)
                 (apply (lambda (_id151432_ _alias-id151433_)
                          (gx#core-bind-alias!__0 _id151432_ _alias-id151433_))
                        _g158979_))
                ((##fx= _g158978_ 3)
                 (apply (lambda (_id151441_ _alias-id151442_ _rebind?151443_)
                          (gx#core-bind-alias!__1
                           _id151441_
                           _alias-id151442_
                           _rebind?151443_))
                        _g158979_))
                ((##fx= _g158978_ 4)
                 (apply (lambda (_id151449_
                                 _alias-id151450_
                                 _rebind?151451_
                                 _phi151452_)
                          (gx#core-bind-alias!__2
                           _id151449_
                           _alias-id151450_
                           _rebind?151451_
                           _phi151452_))
                        _g158979_))
                ((##fx= _g158978_ 5)
                 (apply (lambda (_id151456_
                                 _alias-id151457_
                                 _rebind?151458_
                                 _phi151459_
                                 _ctx151460_)
                          (gx#core-bind-alias!__%
                           _id151456_
                           _alias-id151457_
                           _rebind?151458_
                           _phi151459_
                           _ctx151460_))
                        _g158979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g158979_))))))
    (define gx#make-binding-id__%
      (lambda (_key151378_ _syntax?151379_ _phi151380_ _ctx151381_)
        (if (uninterned-symbol? _key151378_)
            (gensym 'L)
            (if (pair? _key151378_)
                (gensym (car _key151378_))
                (if (##structure-instance-of? _ctx151381_ 'gx#top-context::t)
                    (let ((_ns151383_
                           (gx#core-context-namespace__% _ctx151381_)))
                      (if (and (fxzero? _phi151380_) (not _syntax?151379_))
                          (if _ns151383_
                              (make-symbol__1 _ns151383_ '"#" _key151378_)
                              _key151378_)
                          (if _syntax?151379_
                              (make-symbol__1
                               (let ((_$e151385_ _ns151383_))
                                 (if _$e151385_ _$e151385_ '""))
                               '"[:"
                               (number->string _phi151380_)
                               '":]#"
                               _key151378_)
                              (make-symbol__1
                               (let ((_$e151388_ _ns151383_))
                                 (if _$e151388_ _$e151388_ '""))
                               '"["
                               (number->string _phi151380_)
                               '"]#"
                               _key151378_))))
                    (gensym _key151378_))))))
    (define gx#make-binding-id__0
      (lambda (_key151394_)
        (let* ((_syntax?151396_ '#f)
               (_phi151398_ (gx#current-expander-phi))
               (_ctx151400_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151394_
           _syntax?151396_
           _phi151398_
           _ctx151400_))))
    (define gx#make-binding-id__1
      (lambda (_key151402_ _syntax?151403_)
        (let* ((_phi151405_ (gx#current-expander-phi))
               (_ctx151407_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151402_
           _syntax?151403_
           _phi151405_
           _ctx151407_))))
    (define gx#make-binding-id__2
      (lambda (_key151409_ _syntax?151410_ _phi151411_)
        (let ((_ctx151413_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key151409_
           _syntax?151410_
           _phi151411_
           _ctx151413_))))
    (define gx#make-binding-id
      (lambda _g158981_
        (let ((_g158980_ (##length _g158981_)))
          (cond ((##fx= _g158980_ 1)
                 (apply (lambda (_key151394_)
                          (gx#make-binding-id__0 _key151394_))
                        _g158981_))
                ((##fx= _g158980_ 2)
                 (apply (lambda (_key151402_ _syntax?151403_)
                          (gx#make-binding-id__1 _key151402_ _syntax?151403_))
                        _g158981_))
                ((##fx= _g158980_ 3)
                 (apply (lambda (_key151409_ _syntax?151410_ _phi151411_)
                          (gx#make-binding-id__2
                           _key151409_
                           _syntax?151410_
                           _phi151411_))
                        _g158981_))
                ((##fx= _g158980_ 4)
                 (apply (lambda (_key151415_
                                 _syntax?151416_
                                 _phi151417_
                                 _ctx151418_)
                          (gx#make-binding-id__%
                           _key151415_
                           _syntax?151416_
                           _phi151417_
                           _ctx151418_))
                        _g158981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g158981_))))))))
