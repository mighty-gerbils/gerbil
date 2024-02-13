(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707831898)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx155064_)
        (letrec ((_expand-special155066_
                  (lambda (_hd155068_ _K155069_ _rest155070_ _r155071_)
                    (_K155069_
                     _rest155070_
                     (cons (gx#core-expand-top _hd155068_) _r155071_)))))
          (gx#core-expand-block__0 _stx155064_ _expand-special155066_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx154817_)
        (letrec ((_expand-special154819_
                  (lambda (_hd154939_ _K154940_ _rest154941_ _r154942_)
                    (let* ((_K154946_
                            (lambda (_e154944_)
                              (_K154940_
                               _rest154941_
                               (cons _e154944_ _r154942_))))
                           (_e154947154976_ _hd154939_)
                           (_E154971154980_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154947154976_)))
                           (_E154967154992_
                            (lambda ()
                              (if (gx#stx-pair? _e154947154976_)
                                  (let ((_e154972154984_
                                         (gx#syntax-e _e154947154976_)))
                                    (let ((_hd154973154987_
                                           (##car _e154972154984_))
                                          (_tl154974154989_
                                           (##cdr _e154972154984_)))
                                      (if (and (gx#identifier?
                                                _hd154973154987_)
                                               (gx#core-identifier=?
                                                _hd154973154987_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K154946_
                                               (gx#core-expand-define-runtime%
                                                _hd154939_))
                                              (_E154971154980_))
                                          (_E154971154980_))))
                                  (_E154971154980_))))
                           (_E154963155004_
                            (lambda ()
                              (if (gx#stx-pair? _e154947154976_)
                                  (let ((_e154968154996_
                                         (gx#syntax-e _e154947154976_)))
                                    (let ((_hd154969154999_
                                           (##car _e154968154996_))
                                          (_tl154970155001_
                                           (##cdr _e154968154996_)))
                                      (if (and (gx#identifier?
                                                _hd154969154999_)
                                               (gx#core-identifier=?
                                                _hd154969154999_
                                                '%#define-alias))
                                          (if '#t
                                              (_K154946_
                                               (gx#core-expand-define-alias%
                                                _hd154939_))
                                              (_E154967154992_))
                                          (_E154967154992_))))
                                  (_E154967154992_))))
                           (_E154953155016_
                            (lambda ()
                              (if (gx#stx-pair? _e154947154976_)
                                  (let ((_e154964155008_
                                         (gx#syntax-e _e154947154976_)))
                                    (let ((_hd154965155011_
                                           (##car _e154964155008_))
                                          (_tl154966155013_
                                           (##cdr _e154964155008_)))
                                      (if (and (gx#identifier?
                                                _hd154965155011_)
                                               (gx#core-identifier=?
                                                _hd154965155011_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K154946_
                                               (gx#core-expand-define-syntax%
                                                _hd154939_))
                                              (_E154963155004_))
                                          (_E154963155004_))))
                                  (_E154963155004_))))
                           (_E154949155048_
                            (lambda ()
                              (if (gx#stx-pair? _e154947154976_)
                                  (let ((_e154954155020_
                                         (gx#syntax-e _e154947154976_)))
                                    (let ((_hd154955155023_
                                           (##car _e154954155020_))
                                          (_tl154956155025_
                                           (##cdr _e154954155020_)))
                                      (if (and (gx#identifier?
                                                _hd154955155023_)
                                               (gx#core-identifier=?
                                                _hd154955155023_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154956155025_)
                                              (let ((_e154957155028_
                                                     (gx#syntax-e
                                                      _tl154956155025_)))
                                                (let ((_hd154958155031_
                                                       (##car _e154957155028_))
                                                      (_tl154959155033_
                                                       (##cdr _e154957155028_)))
                                                  (let ((_hd-bind155036_
                                                         _hd154958155031_))
                                                    (if (gx#stx-pair?
                                                         _tl154959155033_)
                                                        (let ((_e154960155038_
                                                               (gx#syntax-e
                                                                _tl154959155033_)))
                                                          (let ((_hd154961155041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154960155038_))
                        (_tl154962155043_ (##cdr _e154960155038_)))
                    (let ((_expr155046_ _hd154961155041_))
                      (if (gx#stx-null? _tl154962155043_)
                          (if (gx#core-bind-values? _hd-bind155036_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind155036_)
                                (_K154946_ _hd154939_))
                              (_E154953155016_))
                          (_E154953155016_)))))
                (_E154953155016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154953155016_))
                                          (_E154953155016_))))
                                  (_E154953155016_))))
                           (_E154948155060_
                            (lambda ()
                              (if (gx#stx-pair? _e154947154976_)
                                  (let ((_e154950155052_
                                         (gx#syntax-e _e154947154976_)))
                                    (let ((_hd154951155055_
                                           (##car _e154950155052_))
                                          (_tl154952155057_
                                           (##cdr _e154950155052_)))
                                      (if (and (gx#identifier?
                                                _hd154951155055_)
                                               (gx#core-identifier=?
                                                _hd154951155055_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K154946_
                                               (gx#core-expand-begin-syntax%
                                                _hd154939_))
                                              (_E154949155048_))
                                          (_E154949155048_))))
                                  (_E154949155048_)))))
                      (_E154948155060_))))
                 (_eval-body154820_
                  (lambda (_rbody154828_)
                    (let _lp154830_ ((_rest154832_ _rbody154828_)
                                     (_body154833_ '())
                                     (_ebody154834_ '()))
                      (let* ((_rest154835154843_ _rest154832_)
                             (_else154837154851_
                              (lambda ()
                                (values _body154833_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody154834_)
                                          (gx#stx-source _stx154817_))))))
                             (_K154839154927_
                              (lambda (_rest154854_ _hd154855_)
                                (let* ((_e154856154873_ _hd154855_)
                                       (_E154868154877_
                                        (lambda ()
                                          (_lp154830_
                                           _rest154854_
                                           (cons _hd154855_ _body154833_)
                                           (cons _hd154855_ _ebody154834_))))
                                       (_E154858154889_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154856154873_)
                                              (let ((_e154869154881_
                                                     (gx#syntax-e
                                                      _e154856154873_)))
                                                (let ((_hd154870154884_
                                                       (##car _e154869154881_))
                                                      (_tl154871154886_
                                                       (##cdr _e154869154881_)))
                                                  (if (and (gx#identifier?
                                                            _hd154870154884_)
                                                           (gx#core-identifier=?
                                                            _hd154870154884_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp154830_
                                                           _rest154854_
                                                           (cons _hd154855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body154833_)
                   _ebody154834_)
                  (_E154868154877_))
              (_E154868154877_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154868154877_))))
                                       (_E154857154923_
                                        (lambda ()
                                          (if (gx#stx-pair? _e154856154873_)
                                              (let ((_e154859154893_
                                                     (gx#syntax-e
                                                      _e154856154873_)))
                                                (let ((_hd154860154896_
                                                       (##car _e154859154893_))
                                                      (_tl154861154898_
                                                       (##cdr _e154859154893_)))
                                                  (if (and (gx#identifier?
                                                            _hd154860154896_)
                                                           (gx#core-identifier=?
                                                            _hd154860154896_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl154861154898_)
                                                          (let ((_e154862154901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl154861154898_)))
                    (let ((_hd154863154904_ (##car _e154862154901_))
                          (_tl154864154906_ (##cdr _e154862154901_)))
                      (let ((_hd-bind154909_ _hd154863154904_))
                        (if (gx#stx-pair? _tl154864154906_)
                            (let ((_e154865154911_
                                   (gx#syntax-e _tl154864154906_)))
                              (let ((_hd154866154914_ (##car _e154865154911_))
                                    (_tl154867154916_ (##cdr _e154865154911_)))
                                (let ((_expr154919_ _hd154866154914_))
                                  (if (gx#stx-null? _tl154867154916_)
                                      (if '#t
                                          (let ((_ehd154921_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind154909_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr154919_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd154855_))))
                                            (_lp154830_
                                             _rest154854_
                                             (cons _ehd154921_ _body154833_)
                                             (cons _ehd154921_ _ebody154834_)))
                                          (_E154858154889_))
                                      (_E154858154889_)))))
                            (_E154858154889_)))))
                  (_E154858154889_))
              (_E154858154889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154858154889_)))))
                                  (_E154857154923_)))))
                        (if (##pair? _rest154835154843_)
                            (let ((_hd154840154930_ (##car _rest154835154843_))
                                  (_tl154841154932_
                                   (##cdr _rest154835154843_)))
                              (let* ((_hd154935_ _hd154840154930_)
                                     (_rest154937_ _tl154841154932_))
                                (_K154839154927_ _rest154937_ _hd154935_)))
                            (_else154837154851_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody154823_
                     (gx#core-expand-block__1
                      _stx154817_
                      _expand-special154819_
                      '#f))
                    (_g159655_ (_eval-body154820_ _rbody154823_)))
               (begin
                 (let ((_g159656_
                        (if (##values? _g159655_)
                            (##vector-length _g159655_)
                            1)))
                   (if (not (##fx= _g159656_ 2))
                       (error "Context expects 2 values" _g159656_)))
                 (let ((_expanded-body154825_ (##vector-ref _g159655_ 0))
                       (_value154826_ (##vector-ref _g159655_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body154825_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value154826_ '())))
                    (gx#stx-source _stx154817_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx154787_)
        (let* ((_e154788154795_ _stx154787_)
               (_E154790154799_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154788154795_)))
               (_E154789154813_
                (lambda ()
                  (if (gx#stx-pair? _e154788154795_)
                      (let ((_e154791154803_ (gx#syntax-e _e154788154795_)))
                        (let ((_hd154792154806_ (##car _e154791154803_))
                              (_tl154793154808_ (##cdr _e154791154803_)))
                          (let ((_body154811_ _tl154793154808_))
                            (if (gx#stx-list? _body154811_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body154811_)
                                 (gx#stx-source _stx154787_))
                                (_E154790154799_)))))
                      (_E154790154799_)))))
          (_E154789154813_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx154785_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx154785_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx154731_)
        (let* ((_e154732154745_ _stx154731_)
               (_E154734154749_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154732154745_)))
               (_E154733154781_
                (lambda ()
                  (if (gx#stx-pair? _e154732154745_)
                      (let ((_e154735154753_ (gx#syntax-e _e154732154745_)))
                        (let ((_hd154736154756_ (##car _e154735154753_))
                              (_tl154737154758_ (##cdr _e154735154753_)))
                          (if (gx#stx-pair? _tl154737154758_)
                              (let ((_e154738154761_
                                     (gx#syntax-e _tl154737154758_)))
                                (let ((_hd154739154764_
                                       (##car _e154738154761_))
                                      (_tl154740154766_
                                       (##cdr _e154738154761_)))
                                  (let ((_ann154769_ _hd154739154764_))
                                    (if (gx#stx-pair? _tl154740154766_)
                                        (let ((_e154741154771_
                                               (gx#syntax-e _tl154740154766_)))
                                          (let ((_hd154742154774_
                                                 (##car _e154741154771_))
                                                (_tl154743154776_
                                                 (##cdr _e154741154771_)))
                                            (let ((_expr154779_
                                                   _hd154742154774_))
                                              (if (gx#stx-null?
                                                   _tl154743154776_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann154769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr154779_)
                                 '())))
               (gx#stx-source _stx154731_))
              (_E154734154749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154734154749_)))))
                                        (_E154734154749_)))))
                              (_E154734154749_))))
                      (_E154734154749_)))))
          (_E154733154781_))))
    (define gx#core-expand-local-block
      (lambda (_stx154455_ _body154456_)
        (letrec ((_expand-special154458_
                  (lambda (_hd154726_ _K154727_ _rest154728_ _r154729_)
                    (_K154727_
                     '()
                     (cons (_expand-internal154459_ _hd154726_ _rest154728_)
                           _r154729_))))
                 (_expand-internal154459_
                  (lambda (_hd154722_ _rest154723_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal154461_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd154722_ _rest154723_))
                          (gx#stx-source _stx154455_))
                         _expand-internal-special154460_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj159649
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj159649)
                       __obj159649))))
                 (_expand-internal-special154460_
                  (lambda (_hd154617_ _K154618_ _rest154619_ _r154620_)
                    (let* ((_e154621154646_ _hd154617_)
                           (_E154641154650_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e154621154646_)))
                           (_E154637154662_
                            (lambda ()
                              (if (gx#stx-pair? _e154621154646_)
                                  (let ((_e154642154654_
                                         (gx#syntax-e _e154621154646_)))
                                    (let ((_hd154643154657_
                                           (##car _e154642154654_))
                                          (_tl154644154659_
                                           (##cdr _e154642154654_)))
                                      (if (and (gx#identifier?
                                                _hd154643154657_)
                                               (gx#core-identifier=?
                                                _hd154643154657_
                                                '%#declare))
                                          (if '#t
                                              (_K154618_
                                               _rest154619_
                                               (cons (gx#core-expand-declare%
                                                      _hd154617_)
                                                     _r154620_))
                                              (_E154641154650_))
                                          (_E154641154650_))))
                                  (_E154641154650_))))
                           (_E154633154674_
                            (lambda ()
                              (if (gx#stx-pair? _e154621154646_)
                                  (let ((_e154638154666_
                                         (gx#syntax-e _e154621154646_)))
                                    (let ((_hd154639154669_
                                           (##car _e154638154666_))
                                          (_tl154640154671_
                                           (##cdr _e154638154666_)))
                                      (if (and (gx#identifier?
                                                _hd154639154669_)
                                               (gx#core-identifier=?
                                                _hd154639154669_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd154617_)
                                                (_K154618_
                                                 _rest154619_
                                                 _r154620_))
                                              (_E154637154662_))
                                          (_E154637154662_))))
                                  (_E154637154662_))))
                           (_E154623154686_
                            (lambda ()
                              (if (gx#stx-pair? _e154621154646_)
                                  (let ((_e154634154678_
                                         (gx#syntax-e _e154621154646_)))
                                    (let ((_hd154635154681_
                                           (##car _e154634154678_))
                                          (_tl154636154683_
                                           (##cdr _e154634154678_)))
                                      (if (and (gx#identifier?
                                                _hd154635154681_)
                                               (gx#core-identifier=?
                                                _hd154635154681_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd154617_)
                                                (_K154618_
                                                 _rest154619_
                                                 _r154620_))
                                              (_E154633154674_))
                                          (_E154633154674_))))
                                  (_E154633154674_))))
                           (_E154622154718_
                            (lambda ()
                              (if (gx#stx-pair? _e154621154646_)
                                  (let ((_e154624154690_
                                         (gx#syntax-e _e154621154646_)))
                                    (let ((_hd154625154693_
                                           (##car _e154624154690_))
                                          (_tl154626154695_
                                           (##cdr _e154624154690_)))
                                      (if (and (gx#identifier?
                                                _hd154625154693_)
                                               (gx#core-identifier=?
                                                _hd154625154693_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl154626154695_)
                                              (let ((_e154627154698_
                                                     (gx#syntax-e
                                                      _tl154626154695_)))
                                                (let ((_hd154628154701_
                                                       (##car _e154627154698_))
                                                      (_tl154629154703_
                                                       (##cdr _e154627154698_)))
                                                  (let ((_hd-bind154706_
                                                         _hd154628154701_))
                                                    (if (gx#stx-pair?
                                                         _tl154629154703_)
                                                        (let ((_e154630154708_
                                                               (gx#syntax-e
                                                                _tl154629154703_)))
                                                          (let ((_hd154631154711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154630154708_))
                        (_tl154632154713_ (##cdr _e154630154708_)))
                    (let ((_expr154716_ _hd154631154711_))
                      (if (gx#stx-null? _tl154632154713_)
                          (if (gx#core-bind-values? _hd-bind154706_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind154706_)
                                (_K154618_
                                 _rest154619_
                                 (cons _hd154617_ _r154620_)))
                              (_E154623154686_))
                          (_E154623154686_)))))
                (_E154623154686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E154623154686_))
                                          (_E154623154686_))))
                                  (_E154623154686_)))))
                      (_E154622154718_))))
                 (_wrap-internal154461_
                  (lambda (_rbody154463_)
                    (let _lp154465_ ((_rest154467_ _rbody154463_)
                                     (_decls154468_ '())
                                     (_bind154469_ '())
                                     (_body154470_ '()))
                      (let* ((_e154471154478_ _rest154467_)
                             (_E154473154527_
                              (lambda ()
                                (let* ((_body154522_
                                        (let* ((_body154481154491_
                                                _body154470_)
                                               (_else154484154499_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body154470_)
                                                   (gx#stx-source
                                                    _stx154455_)))))
                                          (let ((_K154489154519_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx154455_)))
                                                (_K154486154505_
                                                 (lambda (_expr154503_)
                                                   _expr154503_)))
                                            (let ((_try-match154483154515_
                                                   (lambda ()
                                                     (if (##pair? _body154481154491_)
                                                         (let ((_tl154488154510_
                                                                (##cdr _body154481154491_))
                                                               (_hd154487154508_
                                                                (##car _body154481154491_)))
                                                           (if (##null? _tl154488154510_)
                                                               (let ((_expr154513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd154487154508_))
                         (_K154486154505_ _expr154513_))
                       (_else154484154499_)))
                 (_else154484154499_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body154481154491_)
                                                  (_K154489154519_)
                                                  (_try-match154483154515_))))))
                                       (_body154524_
                                        (if (null? _bind154469_)
                                            _body154522_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind154469_
                                                         (cons _body154522_
                                                               '())))
                                             (gx#stx-source _stx154455_)))))
                                  (if (null? _decls154468_)
                                      _body154524_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls154468_
                                                   (cons _body154524_ '())))
                                       (gx#stx-source _stx154455_))))))
                             (_E154472154613_
                              (lambda ()
                                (if (gx#stx-pair? _e154471154478_)
                                    (let ((_e154474154531_
                                           (gx#syntax-e _e154471154478_)))
                                      (let ((_hd154475154534_
                                             (##car _e154474154531_))
                                            (_tl154476154536_
                                             (##cdr _e154474154531_)))
                                        (let* ((_hd154539_ _hd154475154534_)
                                               (_rest154541_ _tl154476154536_))
                                          (if '#t
                                              (let* ((_e154542154559_
                                                      _hd154539_)
                                                     (_E154554154563_
                                                      (lambda ()
                                                        (if (null? _bind154469_)
                                                            (_lp154465_
                                                             _rest154541_
                                                             _decls154468_
                                                             _bind154469_
                                                             (cons _hd154539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body154470_))
                    (_lp154465_
                     _rest154541_
                     _decls154468_
                     (cons (cons '#f (cons _hd154539_ '())) _bind154469_)
                     _body154470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E154544154577_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e154542154559_)
                                                            (let ((_e154555154567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e154542154559_)))
                      (let ((_hd154556154570_ (##car _e154555154567_))
                            (_tl154557154572_ (##cdr _e154555154567_)))
                        (if (and (gx#identifier? _hd154556154570_)
                                 (gx#core-identifier=?
                                  _hd154556154570_
                                  '%#declare))
                            (let ((_xdecls154575_ _tl154557154572_))
                              (if '#t
                                  (_lp154465_
                                   _rest154541_
                                   (gx#stx-foldr
                                    cons
                                    _decls154468_
                                    _xdecls154575_)
                                   _bind154469_
                                   _body154470_)
                                  (_E154554154563_)))
                            (_E154554154563_))))
                    (_E154554154563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E154543154609_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e154542154559_)
                                                            (let ((_e154545154581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e154542154559_)))
                      (let ((_hd154546154584_ (##car _e154545154581_))
                            (_tl154547154586_ (##cdr _e154545154581_)))
                        (if (and (gx#identifier? _hd154546154584_)
                                 (gx#core-identifier=?
                                  _hd154546154584_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl154547154586_)
                                (let ((_e154548154589_
                                       (gx#syntax-e _tl154547154586_)))
                                  (let ((_hd154549154592_
                                         (##car _e154548154589_))
                                        (_tl154550154594_
                                         (##cdr _e154548154589_)))
                                    (let ((_hd-bind154597_ _hd154549154592_))
                                      (if (gx#stx-pair? _tl154550154594_)
                                          (let ((_e154551154599_
                                                 (gx#syntax-e
                                                  _tl154550154594_)))
                                            (let ((_hd154552154602_
                                                   (##car _e154551154599_))
                                                  (_tl154553154604_
                                                   (##cdr _e154551154599_)))
                                              (let ((_expr154607_
                                                     _hd154552154602_))
                                                (if (gx#stx-null?
                                                     _tl154553154604_)
                                                    (if '#t
                                                        (_lp154465_
                                                         _rest154541_
                                                         _decls154468_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind154597_)
                             (cons (gx#core-expand-expression _expr154607_)
                                   '()))
                       _bind154469_)
                 _body154470_)
                (_E154544154577_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E154544154577_)))))
                                          (_E154544154577_)))))
                                (_E154544154577_))
                            (_E154544154577_))))
                    (_E154544154577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E154543154609_))
                                              (_E154473154527_)))))
                                    (_E154473154527_)))))
                        (_E154472154613_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body154456_)
            (gx#stx-source _stx154455_))
           _expand-special154458_))))
    (define gx#core-expand-declare%
      (lambda (_stx154393_)
        (let* ((_e154394154401_ _stx154393_)
               (_E154396154405_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154394154401_)))
               (_E154395154451_
                (lambda ()
                  (if (gx#stx-pair? _e154394154401_)
                      (let ((_e154397154409_ (gx#syntax-e _e154394154401_)))
                        (let ((_hd154398154412_ (##car _e154397154409_))
                              (_tl154399154414_ (##cdr _e154397154409_)))
                          (let ((_body154417_ _tl154399154414_))
                            (if (gx#stx-list? _body154417_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl154419_)
                                     (let* ((_e154420154427_ _decl154419_)
                                            (_E154422154431_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e154420154427_)))
                                            (_E154421154447_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e154420154427_)
                                                   (let ((_e154423154435_
                                                          (gx#syntax-e
                                                           _e154420154427_)))
                                                     (let ((_hd154424154438_
                                                            (##car _e154423154435_))
                                                           (_tl154425154440_
                                                            (##cdr _e154423154435_)))
                                                       (let* ((_head154443_
                                                               _hd154424154438_)
                                                              (_args154445_
                                                               _tl154425154440_))
                                                         (if (gx#stx-list?
                                                              _args154445_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl154419_)
                                                             (_E154422154431_)))))
                                                   (_E154422154431_)))))
                                       (_E154421154447_)))
                                   _body154417_))
                                 (gx#stx-source _stx154393_))
                                (_E154396154405_)))))
                      (_E154396154405_)))))
          (_E154395154451_))))
    (define gx#core-expand-extern%
      (lambda (_stx154297_)
        (let* ((_e154298154305_ _stx154297_)
               (_E154300154309_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154298154305_)))
               (_E154299154389_
                (lambda ()
                  (if (gx#stx-pair? _e154298154305_)
                      (let ((_e154301154313_ (gx#syntax-e _e154298154305_)))
                        (let ((_hd154302154316_ (##car _e154301154313_))
                              (_tl154303154318_ (##cdr _e154301154313_)))
                          (let ((_body154321_ _tl154303154318_))
                            (if '#t
                                (let _lp154323_ ((_rest154325_ _body154321_)
                                                 (_r154326_ '()))
                                  (let* ((_e154327154341_ _rest154325_)
                                         (_E154339154345_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx154297_)))
                                         (_E154329154349_
                                          (lambda ()
                                            (if (gx#stx-null? _e154327154341_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r154326_))
                                                     (gx#stx-source
                                                      _stx154297_))
                                                    (_E154339154345_))
                                                (_E154339154345_))))
                                         (_E154328154385_
                                          (lambda ()
                                            (if (gx#stx-pair? _e154327154341_)
                                                (let ((_e154330154353_
                                                       (gx#syntax-e
                                                        _e154327154341_)))
                                                  (let ((_hd154331154356_
                                                         (##car _e154330154353_))
                                                        (_tl154332154358_
                                                         (##cdr _e154330154353_)))
                                                    (if (gx#stx-pair?
                                                         _hd154331154356_)
                                                        (let ((_e154333154361_
                                                               (gx#syntax-e
                                                                _hd154331154356_)))
                                                          (let ((_hd154334154364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e154333154361_))
                        (_tl154335154366_ (##cdr _e154333154361_)))
                    (let ((_id154369_ _hd154334154364_))
                      (if (gx#stx-pair? _tl154335154366_)
                          (let ((_e154336154371_
                                 (gx#syntax-e _tl154335154366_)))
                            (let ((_hd154337154374_ (##car _e154336154371_))
                                  (_tl154338154376_ (##cdr _e154336154371_)))
                              (let ((_eid154379_ _hd154337154374_))
                                (if (gx#stx-null? _tl154338154376_)
                                    (let ((_rest154381_ _tl154332154358_))
                                      (if (and (gx#identifier? _id154369_)
                                               (gx#identifier? _eid154379_))
                                          (let ((_eid154383_
                                                 (gx#stx-e _eid154379_)))
                                            (gx#core-bind-extern!__0
                                             _id154369_
                                             _eid154383_)
                                            (_lp154323_
                                             _rest154381_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id154369_)
                                                         (cons _eid154383_
                                                               '()))
                                                   _r154326_)))
                                          (_E154329154349_)))
                                    (_E154329154349_)))))
                          (_E154329154349_)))))
                (_E154329154349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E154329154349_)))))
                                    (_E154328154385_)))
                                (_E154300154309_)))))
                      (_E154300154309_)))))
          (_E154299154389_))))
    (define gx#core-expand-define-values%
      (lambda (_stx154243_)
        (let* ((_e154244154257_ _stx154243_)
               (_E154246154261_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154244154257_)))
               (_E154245154293_
                (lambda ()
                  (if (gx#stx-pair? _e154244154257_)
                      (let ((_e154247154265_ (gx#syntax-e _e154244154257_)))
                        (let ((_hd154248154268_ (##car _e154247154265_))
                              (_tl154249154270_ (##cdr _e154247154265_)))
                          (if (gx#stx-pair? _tl154249154270_)
                              (let ((_e154250154273_
                                     (gx#syntax-e _tl154249154270_)))
                                (let ((_hd154251154276_
                                       (##car _e154250154273_))
                                      (_tl154252154278_
                                       (##cdr _e154250154273_)))
                                  (let ((_hd154281_ _hd154251154276_))
                                    (if (gx#stx-pair? _tl154252154278_)
                                        (let ((_e154253154283_
                                               (gx#syntax-e _tl154252154278_)))
                                          (let ((_hd154254154286_
                                                 (##car _e154253154283_))
                                                (_tl154255154288_
                                                 (##cdr _e154253154283_)))
                                            (let ((_expr154291_
                                                   _hd154254154286_))
                                              (if (gx#stx-null?
                                                   _tl154255154288_)
                                                  (if (gx#core-bind-values?
                                                       _hd154281_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd154281_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd154281_)
                             (cons (gx#core-expand-expression _expr154291_)
                                   '())))
                 (gx#stx-source _stx154243_)))
              (_E154246154261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154246154261_)))))
                                        (_E154246154261_)))))
                              (_E154246154261_))))
                      (_E154246154261_)))))
          (_E154245154293_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx154187_)
        (let* ((_e154188154201_ _stx154187_)
               (_E154190154205_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154188154201_)))
               (_E154189154239_
                (lambda ()
                  (if (gx#stx-pair? _e154188154201_)
                      (let ((_e154191154209_ (gx#syntax-e _e154188154201_)))
                        (let ((_hd154192154212_ (##car _e154191154209_))
                              (_tl154193154214_ (##cdr _e154191154209_)))
                          (if (gx#stx-pair? _tl154193154214_)
                              (let ((_e154194154217_
                                     (gx#syntax-e _tl154193154214_)))
                                (let ((_hd154195154220_
                                       (##car _e154194154217_))
                                      (_tl154196154222_
                                       (##cdr _e154194154217_)))
                                  (let ((_id154225_ _hd154195154220_))
                                    (if (gx#stx-pair? _tl154196154222_)
                                        (let ((_e154197154227_
                                               (gx#syntax-e _tl154196154222_)))
                                          (let ((_hd154198154230_
                                                 (##car _e154197154227_))
                                                (_tl154199154232_
                                                 (##cdr _e154197154227_)))
                                            (let ((_binding-id154235_
                                                   _hd154198154230_))
                                              (if (gx#stx-null?
                                                   _tl154199154232_)
                                                  (if (and (gx#identifier?
                                                            _id154225_)
                                                           (gx#identifier?
                                                            _binding-id154235_))
                                                      (let ((_eid154237_
                                                             (gx#stx-e
                                                              _binding-id154235_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id154225_
                                                         _eid154237_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154225_)
                             (cons _eid154237_ '())))))
              (_E154190154205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154190154205_)))))
                                        (_E154190154205_)))))
                              (_E154190154205_))))
                      (_E154190154205_)))))
          (_E154189154239_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx154130_)
        (let* ((_e154131154144_ _stx154130_)
               (_E154133154148_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154131154144_)))
               (_E154132154183_
                (lambda ()
                  (if (gx#stx-pair? _e154131154144_)
                      (let ((_e154134154152_ (gx#syntax-e _e154131154144_)))
                        (let ((_hd154135154155_ (##car _e154134154152_))
                              (_tl154136154157_ (##cdr _e154134154152_)))
                          (if (gx#stx-pair? _tl154136154157_)
                              (let ((_e154137154160_
                                     (gx#syntax-e _tl154136154157_)))
                                (let ((_hd154138154163_
                                       (##car _e154137154160_))
                                      (_tl154139154165_
                                       (##cdr _e154137154160_)))
                                  (let ((_id154168_ _hd154138154163_))
                                    (if (gx#stx-pair? _tl154139154165_)
                                        (let ((_e154140154170_
                                               (gx#syntax-e _tl154139154165_)))
                                          (let ((_hd154141154173_
                                                 (##car _e154140154170_))
                                                (_tl154142154175_
                                                 (##cdr _e154140154170_)))
                                            (let ((_expr154178_
                                                   _hd154141154173_))
                                              (if (gx#stx-null?
                                                   _tl154142154175_)
                                                  (if (gx#identifier?
                                                       _id154168_)
                                                      (let ((_g159657_
                                                             (gx#core-expand-expression+1
                                                              _expr154178_)))
                                                        (begin
                                                          (let ((_g159658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g159657_)
                             (##vector-length _g159657_)
                             1)))
                    (if (not (##fx= _g159658_ 2))
                        (error "Context expects 2 values" _g159658_)))
                  (let ((_e-stx154180_ (##vector-ref _g159657_ 0))
                        (_e154181_ (##vector-ref _g159657_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id154168_ _e154181_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id154168_)
                                   (cons _e-stx154180_ '())))
                       (gx#stx-source _stx154130_))))))
              (_E154133154148_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154133154148_)))))
                                        (_E154133154148_)))))
                              (_E154133154148_))))
                      (_E154133154148_)))))
          (_E154132154183_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx154074_)
        (let* ((_e154075154088_ _stx154074_)
               (_E154077154092_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154075154088_)))
               (_E154076154126_
                (lambda ()
                  (if (gx#stx-pair? _e154075154088_)
                      (let ((_e154078154096_ (gx#syntax-e _e154075154088_)))
                        (let ((_hd154079154099_ (##car _e154078154096_))
                              (_tl154080154101_ (##cdr _e154078154096_)))
                          (if (gx#stx-pair? _tl154080154101_)
                              (let ((_e154081154104_
                                     (gx#syntax-e _tl154080154101_)))
                                (let ((_hd154082154107_
                                       (##car _e154081154104_))
                                      (_tl154083154109_
                                       (##cdr _e154081154104_)))
                                  (let ((_id154112_ _hd154082154107_))
                                    (if (gx#stx-pair? _tl154083154109_)
                                        (let ((_e154084154114_
                                               (gx#syntax-e _tl154083154109_)))
                                          (let ((_hd154085154117_
                                                 (##car _e154084154114_))
                                                (_tl154086154119_
                                                 (##cdr _e154084154114_)))
                                            (let ((_alias-id154122_
                                                   _hd154085154117_))
                                              (if (gx#stx-null?
                                                   _tl154086154119_)
                                                  (if (and (gx#identifier?
                                                            _id154112_)
                                                           (gx#identifier?
                                                            _alias-id154122_))
                                                      (let ((_alias-id154124_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id154122_)))
                                                        (gx#core-bind-alias!__0
                                                         _id154112_
                                                         _alias-id154124_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id154112_)
                             (cons _alias-id154124_ '())))))
              (_E154077154092_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E154077154092_)))))
                                        (_E154077154092_)))))
                              (_E154077154092_))))
                      (_E154077154092_)))))
          (_E154076154126_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx154017_ _wrap?154018_)
        (let* ((_e154019154029_ _stx154017_)
               (_E154021154033_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e154019154029_)))
               (_E154020154060_
                (lambda ()
                  (if (gx#stx-pair? _e154019154029_)
                      (let ((_e154022154037_ (gx#syntax-e _e154019154029_)))
                        (let ((_hd154023154040_ (##car _e154022154037_))
                              (_tl154024154042_ (##cdr _e154022154037_)))
                          (if (gx#stx-pair? _tl154024154042_)
                              (let ((_e154025154045_
                                     (gx#syntax-e _tl154024154042_)))
                                (let ((_hd154026154048_
                                       (##car _e154025154045_))
                                      (_tl154027154050_
                                       (##cdr _e154025154045_)))
                                  (let* ((_hd154053_ _hd154026154048_)
                                         (_body154055_ _tl154027154050_))
                                    (if (gx#core-bind-values? _hd154053_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd154053_)
                                           (let ((_body154058_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd154053_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx154017_
                                                               _body154055_)
                                                              '()))))
                                             (if _wrap?154018_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body154058_)
                                                  (gx#stx-source _stx154017_))
                                                 _body154058_)))
                                         gx#current-expander-context
                                         (let ((__obj159650
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj159650)
                                           __obj159650))
                                        (_E154021154033_)))))
                              (_E154021154033_))))
                      (_E154021154033_)))))
          (_E154020154060_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx154067_)
        (let ((_wrap?154069_ '#t))
          (gx#core-expand-lambda%__% _stx154067_ _wrap?154069_))))
    (define gx#core-expand-lambda%
      (lambda _g159660_
        (let ((_g159659_ (##length _g159660_)))
          (cond ((##fx= _g159659_ 1)
                 (apply (lambda (_stx154067_)
                          (gx#core-expand-lambda%__0 _stx154067_))
                        _g159660_))
                ((##fx= _g159659_ 2)
                 (apply (lambda (_stx154071_ _wrap?154072_)
                          (gx#core-expand-lambda%__%
                           _stx154071_
                           _wrap?154072_))
                        _g159660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g159660_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx153981_)
        (let* ((_e153982153989_ _stx153981_)
               (_E153984153993_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153982153989_)))
               (_E153983154012_
                (lambda ()
                  (if (gx#stx-pair? _e153982153989_)
                      (let ((_e153985153997_ (gx#syntax-e _e153982153989_)))
                        (let ((_hd153986154000_ (##car _e153985153997_))
                              (_tl153987154002_ (##cdr _e153985153997_)))
                          (let ((_clauses154005_ _tl153987154002_))
                            (if (gx#stx-list? _clauses154005_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause154007_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause154007_)
                                       (let ((_$e154009_
                                              (gx#stx-source _clause154007_)))
                                         (if _$e154009_
                                             _$e154009_
                                             (gx#stx-source _stx153981_))))
                                      '#f))
                                   _clauses154005_))
                                 (gx#stx-source _stx153981_))
                                (_E153984153993_)))))
                      (_E153984153993_)))))
          (_E153983154012_))))
    (define gx#core-expand-let-values%
      (lambda (_stx153935_)
        (let* ((_e153936153946_ _stx153935_)
               (_E153938153950_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153936153946_)))
               (_E153937153977_
                (lambda ()
                  (if (gx#stx-pair? _e153936153946_)
                      (let ((_e153939153954_ (gx#syntax-e _e153936153946_)))
                        (let ((_hd153940153957_ (##car _e153939153954_))
                              (_tl153941153959_ (##cdr _e153939153954_)))
                          (if (gx#stx-pair? _tl153941153959_)
                              (let ((_e153942153962_
                                     (gx#syntax-e _tl153941153959_)))
                                (let ((_hd153943153965_
                                       (##car _e153942153962_))
                                      (_tl153944153967_
                                       (##cdr _e153942153962_)))
                                  (let* ((_hd153970_ _hd153943153965_)
                                         (_body153972_ _tl153944153967_))
                                    (if (gx#core-expand-let-bind? _hd153970_)
                                        (let ((_expressions153974_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd153970_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd153970_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd153970_
                                                           _expressions153974_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx153935_
                         _body153972_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx153935_)))
                                           gx#current-expander-context
                                           (let ((__obj159651
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj159651)
                                             __obj159651)))
                                        (_E153938153950_)))))
                              (_E153938153950_))))
                      (_E153938153950_)))))
          (_E153937153977_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx153880_ _form153881_)
        (let* ((_e153882153892_ _stx153880_)
               (_E153884153896_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153882153892_)))
               (_E153883153921_
                (lambda ()
                  (if (gx#stx-pair? _e153882153892_)
                      (let ((_e153885153900_ (gx#syntax-e _e153882153892_)))
                        (let ((_hd153886153903_ (##car _e153885153900_))
                              (_tl153887153905_ (##cdr _e153885153900_)))
                          (if (gx#stx-pair? _tl153887153905_)
                              (let ((_e153888153908_
                                     (gx#syntax-e _tl153887153905_)))
                                (let ((_hd153889153911_
                                       (##car _e153888153908_))
                                      (_tl153890153913_
                                       (##cdr _e153888153908_)))
                                  (let* ((_hd153916_ _hd153889153911_)
                                         (_body153918_ _tl153890153913_))
                                    (if (gx#core-expand-let-bind? _hd153916_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd153916_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form153881_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd153916_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd153916_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx153880_
                                                               _body153918_)
                                                              '())))
                                            (gx#stx-source _stx153880_)))
                                         gx#current-expander-context
                                         (let ((__obj159652
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj159652)
                                           __obj159652))
                                        (_E153884153896_)))))
                              (_E153884153896_))))
                      (_E153884153896_)))))
          (_E153883153921_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx153928_)
        (let ((_form153930_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx153928_ _form153930_))))
    (define gx#core-expand-letrec-values%
      (lambda _g159662_
        (let ((_g159661_ (##length _g159662_)))
          (cond ((##fx= _g159661_ 1)
                 (apply (lambda (_stx153928_)
                          (gx#core-expand-letrec-values%__0 _stx153928_))
                        _g159662_))
                ((##fx= _g159661_ 2)
                 (apply (lambda (_stx153932_ _form153933_)
                          (gx#core-expand-letrec-values%__%
                           _stx153932_
                           _form153933_))
                        _g159662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g159662_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx153877_)
        (gx#core-expand-letrec-values%__% _stx153877_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx153834_)
        (if (gx#stx-list? _stx153834_)
            (gx#stx-andmap
             (lambda (_bind153836_)
               (let* ((_e153837153847_ _bind153836_)
                      (_E153839153851_ (lambda () '#f))
                      (_E153838153873_
                       (lambda ()
                         (if (gx#stx-pair? _e153837153847_)
                             (let ((_e153840153855_
                                    (gx#syntax-e _e153837153847_)))
                               (let ((_hd153841153858_ (##car _e153840153855_))
                                     (_tl153842153860_
                                      (##cdr _e153840153855_)))
                                 (let ((_hd153863_ _hd153841153858_))
                                   (if (gx#stx-pair? _tl153842153860_)
                                       (let ((_e153843153865_
                                              (gx#syntax-e _tl153842153860_)))
                                         (let ((_hd153844153868_
                                                (##car _e153843153865_))
                                               (_tl153845153870_
                                                (##cdr _e153843153865_)))
                                           (if (gx#stx-null? _tl153845153870_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd153863_)
                                                   (_E153839153851_))
                                               (_E153839153851_))))
                                       (_E153839153851_)))))
                             (_E153839153851_)))))
                 (_E153838153873_)))
             _stx153834_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind153793_)
        (let* ((_e153794153804_ _bind153793_)
               (_E153796153808_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153794153804_)))
               (_E153795153830_
                (lambda ()
                  (if (gx#stx-pair? _e153794153804_)
                      (let ((_e153797153812_ (gx#syntax-e _e153794153804_)))
                        (let ((_hd153798153815_ (##car _e153797153812_))
                              (_tl153799153817_ (##cdr _e153797153812_)))
                          (if (gx#stx-pair? _tl153799153817_)
                              (let ((_e153800153820_
                                     (gx#syntax-e _tl153799153817_)))
                                (let ((_hd153801153823_
                                       (##car _e153800153820_))
                                      (_tl153802153825_
                                       (##cdr _e153800153820_)))
                                  (let ((_expr153828_ _hd153801153823_))
                                    (if (gx#stx-null? _tl153802153825_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr153828_)
                                            (_E153796153808_))
                                        (_E153796153808_)))))
                              (_E153796153808_))))
                      (_E153796153808_)))))
          (_E153795153830_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind153752_)
        (let* ((_e153753153763_ _bind153752_)
               (_E153755153767_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153753153763_)))
               (_E153754153789_
                (lambda ()
                  (if (gx#stx-pair? _e153753153763_)
                      (let ((_e153756153771_ (gx#syntax-e _e153753153763_)))
                        (let ((_hd153757153774_ (##car _e153756153771_))
                              (_tl153758153776_ (##cdr _e153756153771_)))
                          (let ((_hd153779_ _hd153757153774_))
                            (if (gx#stx-pair? _tl153758153776_)
                                (let ((_e153759153781_
                                       (gx#syntax-e _tl153758153776_)))
                                  (let ((_hd153760153784_
                                         (##car _e153759153781_))
                                        (_tl153761153786_
                                         (##cdr _e153759153781_)))
                                    (if (gx#stx-null? _tl153761153786_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd153779_)
                                            (_E153755153767_))
                                        (_E153755153767_))))
                                (_E153755153767_)))))
                      (_E153755153767_)))))
          (_E153754153789_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind153710_ _expr153711_)
        (let* ((_e153712153722_ _bind153710_)
               (_E153714153726_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153712153722_)))
               (_E153713153748_
                (lambda ()
                  (if (gx#stx-pair? _e153712153722_)
                      (let ((_e153715153730_ (gx#syntax-e _e153712153722_)))
                        (let ((_hd153716153733_ (##car _e153715153730_))
                              (_tl153717153735_ (##cdr _e153715153730_)))
                          (let ((_hd153738_ _hd153716153733_))
                            (if (gx#stx-pair? _tl153717153735_)
                                (let ((_e153718153740_
                                       (gx#syntax-e _tl153717153735_)))
                                  (let ((_hd153719153743_
                                         (##car _e153718153740_))
                                        (_tl153720153745_
                                         (##cdr _e153718153740_)))
                                    (if (gx#stx-null? _tl153720153745_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd153738_)
                                                  (cons _expr153711_ '()))
                                            (_E153714153726_))
                                        (_E153714153726_))))
                                (_E153714153726_)))))
                      (_E153714153726_)))))
          (_E153713153748_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx153664_)
        (let* ((_e153665153675_ _stx153664_)
               (_E153667153679_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153665153675_)))
               (_E153666153706_
                (lambda ()
                  (if (gx#stx-pair? _e153665153675_)
                      (let ((_e153668153683_ (gx#syntax-e _e153665153675_)))
                        (let ((_hd153669153686_ (##car _e153668153683_))
                              (_tl153670153688_ (##cdr _e153668153683_)))
                          (if (gx#stx-pair? _tl153670153688_)
                              (let ((_e153671153691_
                                     (gx#syntax-e _tl153670153688_)))
                                (let ((_hd153672153694_
                                       (##car _e153671153691_))
                                      (_tl153673153696_
                                       (##cdr _e153671153691_)))
                                  (let* ((_hd153699_ _hd153672153694_)
                                         (_body153701_ _tl153673153696_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd153699_)
                                        (let ((_expanders153703_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd153699_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd153699_
                                              _expanders153703_)
                                             (gx#core-expand-local-block
                                              _stx153664_
                                              _body153701_))
                                           gx#current-expander-context
                                           (let ((__obj159653
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj159653)
                                             __obj159653)))
                                        (_E153667153679_)))))
                              (_E153667153679_))))
                      (_E153667153679_)))))
          (_E153666153706_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx153613_)
        (let* ((_e153614153624_ _stx153613_)
               (_E153616153628_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153614153624_)))
               (_E153615153660_
                (lambda ()
                  (if (gx#stx-pair? _e153614153624_)
                      (let ((_e153617153632_ (gx#syntax-e _e153614153624_)))
                        (let ((_hd153618153635_ (##car _e153617153632_))
                              (_tl153619153637_ (##cdr _e153617153632_)))
                          (if (gx#stx-pair? _tl153619153637_)
                              (let ((_e153620153640_
                                     (gx#syntax-e _tl153619153637_)))
                                (let ((_hd153621153643_
                                       (##car _e153620153640_))
                                      (_tl153622153645_
                                       (##cdr _e153620153640_)))
                                  (let* ((_hd153648_ _hd153621153643_)
                                         (_body153650_ _tl153622153645_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd153648_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd153648_
                                            (make-list
                                             (gx#stx-length _hd153648_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g153652153655_
                                                     _g153653153657_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g153652153655_
                                               _g153653153657_
                                               '#t))
                                            _hd153648_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd153648_))
                                           (gx#core-expand-local-block
                                            _stx153613_
                                            _body153650_))
                                         gx#current-expander-context
                                         (let ((__obj159654
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj159654)
                                           __obj159654))
                                        (_E153616153628_)))))
                              (_E153616153628_))))
                      (_E153616153628_)))))
          (_E153615153660_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx153570_)
        (if (gx#stx-list? _stx153570_)
            (gx#stx-andmap
             (lambda (_bind153572_)
               (let* ((_e153573153583_ _bind153572_)
                      (_E153575153587_ (lambda () '#f))
                      (_E153574153609_
                       (lambda ()
                         (if (gx#stx-pair? _e153573153583_)
                             (let ((_e153576153591_
                                    (gx#syntax-e _e153573153583_)))
                               (let ((_hd153577153594_ (##car _e153576153591_))
                                     (_tl153578153596_
                                      (##cdr _e153576153591_)))
                                 (let ((_hd153599_ _hd153577153594_))
                                   (if (gx#stx-pair? _tl153578153596_)
                                       (let ((_e153579153601_
                                              (gx#syntax-e _tl153578153596_)))
                                         (let ((_hd153580153604_
                                                (##car _e153579153601_))
                                               (_tl153581153606_
                                                (##cdr _e153579153601_)))
                                           (if (gx#stx-null? _tl153581153606_)
                                               (if '#t
                                                   (gx#identifier? _hd153599_)
                                                   (_E153575153587_))
                                               (_E153575153587_))))
                                       (_E153575153587_)))))
                             (_E153575153587_)))))
                 (_E153574153609_)))
             _stx153570_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind153527_)
        (let* ((_e153528153538_ _bind153527_)
               (_E153530153542_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153528153538_)))
               (_E153529153566_
                (lambda ()
                  (if (gx#stx-pair? _e153528153538_)
                      (let ((_e153531153546_ (gx#syntax-e _e153528153538_)))
                        (let ((_hd153532153549_ (##car _e153531153546_))
                              (_tl153533153551_ (##cdr _e153531153546_)))
                          (if (gx#stx-pair? _tl153533153551_)
                              (let ((_e153534153554_
                                     (gx#syntax-e _tl153533153551_)))
                                (let ((_hd153535153557_
                                       (##car _e153534153554_))
                                      (_tl153536153559_
                                       (##cdr _e153534153554_)))
                                  (let ((_expr153562_ _hd153535153557_))
                                    (if (gx#stx-null? _tl153536153559_)
                                        (if '#t
                                            (let ((_g159663_
                                                   (gx#core-expand-expression+1
                                                    _expr153562_)))
                                              (begin
                                                (let ((_g159664_
                                                       (if (##values?
                                                            _g159663_)
                                                           (##vector-length
                                                            _g159663_)
                                                           1)))
                                                  (if (not (##fx= _g159664_ 2))
                                                      (error "Context expects 2 values"
                                                             _g159664_)))
                                                (let ((_e153564_
                                                       (##vector-ref
                                                        _g159663_
                                                        1)))
                                                  _e153564_)))
                                            (_E153530153542_))
                                        (_E153530153542_)))))
                              (_E153530153542_))))
                      (_E153530153542_)))))
          (_E153529153566_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind153472_ _e153473_ _rebind?153474_)
        (let* ((_e153475153485_ _bind153472_)
               (_E153477153489_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153475153485_)))
               (_E153476153511_
                (lambda ()
                  (if (gx#stx-pair? _e153475153485_)
                      (let ((_e153478153493_ (gx#syntax-e _e153475153485_)))
                        (let ((_hd153479153496_ (##car _e153478153493_))
                              (_tl153480153498_ (##cdr _e153478153493_)))
                          (let ((_id153501_ _hd153479153496_))
                            (if (gx#stx-pair? _tl153480153498_)
                                (let ((_e153481153503_
                                       (gx#syntax-e _tl153480153498_)))
                                  (let ((_hd153482153506_
                                         (##car _e153481153503_))
                                        (_tl153483153508_
                                         (##cdr _e153481153503_)))
                                    (if (gx#stx-null? _tl153483153508_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id153501_
                                             _e153473_
                                             _rebind?153474_)
                                            (_E153477153489_))
                                        (_E153477153489_))))
                                (_E153477153489_)))))
                      (_E153477153489_)))))
          (_E153476153511_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind153518_ _e153519_)
        (let ((_rebind?153521_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind153518_
           _e153519_
           _rebind?153521_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g159666_
        (let ((_g159665_ (##length _g159666_)))
          (cond ((##fx= _g159665_ 2)
                 (apply (lambda (_bind153518_ _e153519_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind153518_
                           _e153519_))
                        _g159666_))
                ((##fx= _g159665_ 3)
                 (apply (lambda (_bind153523_ _e153524_ _rebind?153525_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind153523_
                           _e153524_
                           _rebind?153525_))
                        _g159666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g159666_))))))
    (define gx#core-expand-expression%
      (lambda (_stx153430_)
        (let* ((_e153431153441_ _stx153430_)
               (_E153433153445_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153431153441_)))
               (_E153432153467_
                (lambda ()
                  (if (gx#stx-pair? _e153431153441_)
                      (let ((_e153434153449_ (gx#syntax-e _e153431153441_)))
                        (let ((_hd153435153452_ (##car _e153434153449_))
                              (_tl153436153454_ (##cdr _e153434153449_)))
                          (if (gx#stx-pair? _tl153436153454_)
                              (let ((_e153437153457_
                                     (gx#syntax-e _tl153436153454_)))
                                (let ((_hd153438153460_
                                       (##car _e153437153457_))
                                      (_tl153439153462_
                                       (##cdr _e153437153457_)))
                                  (let ((_expr153465_ _hd153438153460_))
                                    (if (gx#stx-null? _tl153439153462_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr153465_)
                                            (_E153433153445_))
                                        (_E153433153445_)))))
                              (_E153433153445_))))
                      (_E153433153445_)))))
          (_E153432153467_))))
    (define gx#core-expand-quote%
      (lambda (_stx153389_)
        (let* ((_e153390153400_ _stx153389_)
               (_E153392153404_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153390153400_)))
               (_E153391153426_
                (lambda ()
                  (if (gx#stx-pair? _e153390153400_)
                      (let ((_e153393153408_ (gx#syntax-e _e153390153400_)))
                        (let ((_hd153394153411_ (##car _e153393153408_))
                              (_tl153395153413_ (##cdr _e153393153408_)))
                          (if (gx#stx-pair? _tl153395153413_)
                              (let ((_e153396153416_
                                     (gx#syntax-e _tl153395153413_)))
                                (let ((_hd153397153419_
                                       (##car _e153396153416_))
                                      (_tl153398153421_
                                       (##cdr _e153396153416_)))
                                  (let ((_e153424_ _hd153397153419_))
                                    (if (gx#stx-null? _tl153398153421_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e153424_)
                                                         '()))
                                             (gx#stx-source _stx153389_))
                                            (_E153392153404_))
                                        (_E153392153404_)))))
                              (_E153392153404_))))
                      (_E153392153404_)))))
          (_E153391153426_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx153348_)
        (let* ((_e153349153359_ _stx153348_)
               (_E153351153363_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153349153359_)))
               (_E153350153385_
                (lambda ()
                  (if (gx#stx-pair? _e153349153359_)
                      (let ((_e153352153367_ (gx#syntax-e _e153349153359_)))
                        (let ((_hd153353153370_ (##car _e153352153367_))
                              (_tl153354153372_ (##cdr _e153352153367_)))
                          (if (gx#stx-pair? _tl153354153372_)
                              (let ((_e153355153375_
                                     (gx#syntax-e _tl153354153372_)))
                                (let ((_hd153356153378_
                                       (##car _e153355153375_))
                                      (_tl153357153380_
                                       (##cdr _e153355153375_)))
                                  (let ((_e153383_ _hd153356153378_))
                                    (if (gx#stx-null? _tl153357153380_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e153383_)
                                                         '()))
                                             (gx#stx-source _stx153348_))
                                            (_E153351153363_))
                                        (_E153351153363_)))))
                              (_E153351153363_))))
                      (_E153351153363_)))))
          (_E153350153385_))))
    (define gx#core-expand-call%
      (lambda (_stx153305_)
        (let* ((_e153306153316_ _stx153305_)
               (_E153308153320_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153306153316_)))
               (_E153307153344_
                (lambda ()
                  (if (gx#stx-pair? _e153306153316_)
                      (let ((_e153309153324_ (gx#syntax-e _e153306153316_)))
                        (let ((_hd153310153327_ (##car _e153309153324_))
                              (_tl153311153329_ (##cdr _e153309153324_)))
                          (if (gx#stx-pair? _tl153311153329_)
                              (let ((_e153312153332_
                                     (gx#syntax-e _tl153311153329_)))
                                (let ((_hd153313153335_
                                       (##car _e153312153332_))
                                      (_tl153314153337_
                                       (##cdr _e153312153332_)))
                                  (let* ((_rator153340_ _hd153313153335_)
                                         (_args153342_ _tl153314153337_))
                                    (if (gx#stx-list? _args153342_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator153340_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args153342_))
                                         (gx#stx-source _stx153305_))
                                        (_E153308153320_)))))
                              (_E153308153320_))))
                      (_E153308153320_)))))
          (_E153307153344_))))
    (define gx#core-expand-if%
      (lambda (_stx153238_)
        (let* ((_e153239153255_ _stx153238_)
               (_E153241153259_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153239153255_)))
               (_E153240153301_
                (lambda ()
                  (if (gx#stx-pair? _e153239153255_)
                      (let ((_e153242153263_ (gx#syntax-e _e153239153255_)))
                        (let ((_hd153243153266_ (##car _e153242153263_))
                              (_tl153244153268_ (##cdr _e153242153263_)))
                          (if (gx#stx-pair? _tl153244153268_)
                              (let ((_e153245153271_
                                     (gx#syntax-e _tl153244153268_)))
                                (let ((_hd153246153274_
                                       (##car _e153245153271_))
                                      (_tl153247153276_
                                       (##cdr _e153245153271_)))
                                  (let ((_test153279_ _hd153246153274_))
                                    (if (gx#stx-pair? _tl153247153276_)
                                        (let ((_e153248153281_
                                               (gx#syntax-e _tl153247153276_)))
                                          (let ((_hd153249153284_
                                                 (##car _e153248153281_))
                                                (_tl153250153286_
                                                 (##cdr _e153248153281_)))
                                            (let ((_K153289_ _hd153249153284_))
                                              (if (gx#stx-pair?
                                                   _tl153250153286_)
                                                  (let ((_e153251153291_
                                                         (gx#syntax-e
                                                          _tl153250153286_)))
                                                    (let ((_hd153252153294_
                                                           (##car _e153251153291_))
                                                          (_tl153253153296_
                                                           (##cdr _e153251153291_)))
                                                      (let ((_E153299_
                                                             _hd153252153294_))
                                                        (if (gx#stx-null?
                                                             _tl153253153296_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test153279_)
                                     (cons (gx#core-expand-expression
                                            _K153289_)
                                           (cons (gx#core-expand-expression
                                                  _E153299_)
                                                 '()))))
                         (gx#stx-source _stx153238_))
                        (_E153241153259_))
                    (_E153241153259_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153241153259_)))))
                                        (_E153241153259_)))))
                              (_E153241153259_))))
                      (_E153241153259_)))))
          (_E153240153301_))))
    (define gx#core-expand-ref%
      (lambda (_stx153197_)
        (let* ((_e153198153208_ _stx153197_)
               (_E153200153212_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153198153208_)))
               (_E153199153234_
                (lambda ()
                  (if (gx#stx-pair? _e153198153208_)
                      (let ((_e153201153216_ (gx#syntax-e _e153198153208_)))
                        (let ((_hd153202153219_ (##car _e153201153216_))
                              (_tl153203153221_ (##cdr _e153201153216_)))
                          (if (gx#stx-pair? _tl153203153221_)
                              (let ((_e153204153224_
                                     (gx#syntax-e _tl153203153221_)))
                                (let ((_hd153205153227_
                                       (##car _e153204153224_))
                                      (_tl153206153229_
                                       (##cdr _e153204153224_)))
                                  (let ((_id153232_ _hd153205153227_))
                                    (if (gx#stx-null? _tl153206153229_)
                                        (if (gx#identifier? _id153232_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id153232_
                                                          _stx153197_)
                                                         '()))
                                             (gx#stx-source _stx153197_))
                                            (_E153200153212_))
                                        (_E153200153212_)))))
                              (_E153200153212_))))
                      (_E153200153212_)))))
          (_E153199153234_))))
    (define gx#core-expand-setq%
      (lambda (_stx153143_)
        (let* ((_e153144153157_ _stx153143_)
               (_E153146153161_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e153144153157_)))
               (_E153145153193_
                (lambda ()
                  (if (gx#stx-pair? _e153144153157_)
                      (let ((_e153147153165_ (gx#syntax-e _e153144153157_)))
                        (let ((_hd153148153168_ (##car _e153147153165_))
                              (_tl153149153170_ (##cdr _e153147153165_)))
                          (if (gx#stx-pair? _tl153149153170_)
                              (let ((_e153150153173_
                                     (gx#syntax-e _tl153149153170_)))
                                (let ((_hd153151153176_
                                       (##car _e153150153173_))
                                      (_tl153152153178_
                                       (##cdr _e153150153173_)))
                                  (let ((_id153181_ _hd153151153176_))
                                    (if (gx#stx-pair? _tl153152153178_)
                                        (let ((_e153153153183_
                                               (gx#syntax-e _tl153152153178_)))
                                          (let ((_hd153154153186_
                                                 (##car _e153153153183_))
                                                (_tl153155153188_
                                                 (##cdr _e153153153183_)))
                                            (let ((_expr153191_
                                                   _hd153154153186_))
                                              (if (gx#stx-null?
                                                   _tl153155153188_)
                                                  (if (gx#identifier?
                                                       _id153181_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id153181_
                            _stx153143_)
                           (cons (gx#core-expand-expression _expr153191_)
                                 '())))
               (gx#stx-source _stx153143_))
              (_E153146153161_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E153146153161_)))))
                                        (_E153146153161_)))))
                              (_E153146153161_))))
                      (_E153146153161_)))))
          (_E153145153193_))))
    (define gx#macro-expand-extern
      (lambda (_stx152991_)
        (letrec ((_generate152993_
                  (lambda (_body153023_)
                    (let _lp153025_ ((_rest153027_ _body153023_)
                                     (_ns153028_
                                      (gx#core-context-namespace__0))
                                     (_r153029_ '()))
                      (let* ((_e153030153045_ _rest153027_)
                             (_E153043153049_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e153030153045_)))
                             (_E153039153053_
                              (lambda ()
                                (if (gx#stx-null? _e153030153045_)
                                    (if '#t
                                        (reverse _r153029_)
                                        (_E153043153049_))
                                    (_E153043153049_))))
                             (_E153032153110_
                              (lambda ()
                                (if (gx#stx-pair? _e153030153045_)
                                    (let ((_e153040153057_
                                           (gx#syntax-e _e153030153045_)))
                                      (let ((_hd153041153060_
                                             (##car _e153040153057_))
                                            (_tl153042153062_
                                             (##cdr _e153040153057_)))
                                        (let* ((_hd153065_ _hd153041153060_)
                                               (_rest153067_ _tl153042153062_))
                                          (if '#t
                                              (if (gx#identifier? _hd153065_)
                                                  (_lp153025_
                                                   _rest153067_
                                                   _ns153028_
                                                   (cons (cons _hd153065_
                                                               (cons (if _ns153028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd153065_
                                  _ns153028_
                                  '"#"
                                  _hd153065_)
                                 _hd153065_)
                             '()))
                 _r153029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e153068153078_
                                                          _hd153065_)
                                                         (_E153070153082_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e153068153078_)))
                                                         (_E153069153106_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e153068153078_)
                        (let ((_e153071153086_ (gx#syntax-e _e153068153078_)))
                          (let ((_hd153072153089_ (##car _e153071153086_))
                                (_tl153073153091_ (##cdr _e153071153086_)))
                            (let ((_id153094_ _hd153072153089_))
                              (if (gx#stx-pair? _tl153073153091_)
                                  (let ((_e153074153096_
                                         (gx#syntax-e _tl153073153091_)))
                                    (let ((_hd153075153099_
                                           (##car _e153074153096_))
                                          (_tl153076153101_
                                           (##cdr _e153074153096_)))
                                      (let ((_eid153104_ _hd153075153099_))
                                        (if (gx#stx-null? _tl153076153101_)
                                            (if (and (gx#identifier?
                                                      _id153094_)
                                                     (gx#identifier?
                                                      _eid153104_))
                                                (_lp153025_
                                                 _rest153067_
                                                 _ns153028_
                                                 (cons (cons _id153094_
                                                             (cons _eid153104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r153029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153070153082_))
                                            (_E153070153082_)))))
                                  (_E153070153082_)))))
                        (_E153070153082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E153069153106_)))
                                              (_E153039153053_)))))
                                    (_E153039153053_))))
                             (_E153031153139_
                              (lambda ()
                                (if (gx#stx-pair? _e153030153045_)
                                    (let ((_e153033153114_
                                           (gx#syntax-e _e153030153045_)))
                                      (let ((_hd153034153117_
                                             (##car _e153033153114_))
                                            (_tl153035153119_
                                             (##cdr _e153033153114_)))
                                        (if (eq? (gx#stx-e _hd153034153117_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl153035153119_)
                                                (let ((_e153036153122_
                                                       (gx#syntax-e
                                                        _tl153035153119_)))
                                                  (let ((_hd153037153125_
                                                         (##car _e153036153122_))
                                                        (_tl153038153127_
                                                         (##cdr _e153036153122_)))
                                                    (let* ((_ns153130_
                                                            _hd153037153125_)
                                                           (_rest153132_
                                                            _tl153038153127_))
                                                      (if '#t
                                                          (let ((_ns153137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns153130_)
                             (symbol->string (gx#stx-e _ns153130_))
                             (if (or (gx#stx-string? _ns153130_)
                                     (gx#stx-false? _ns153130_))
                                 (gx#stx-e _ns153130_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx152991_
                                  _ns153130_)))))
                    (_lp153025_ _rest153132_ _ns153137_ _r153029_))
                  (_E153032153110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E153032153110_))
                                            (_E153032153110_))))
                                    (_E153032153110_)))))
                        (_E153031153139_))))))
          (let* ((_e152994153001_ _stx152991_)
                 (_E152996153005_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152994153001_)))
                 (_E152995153019_
                  (lambda ()
                    (if (gx#stx-pair? _e152994153001_)
                        (let ((_e152997153009_ (gx#syntax-e _e152994153001_)))
                          (let ((_hd152998153012_ (##car _e152997153009_))
                                (_tl152999153014_ (##cdr _e152997153009_)))
                            (let ((_body153017_ _tl152999153014_))
                              (if (gx#stx-list? _body153017_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate152993_ _body153017_))
                                  (_E152996153005_)))))
                        (_E152996153005_)))))
            (_E152995153019_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx152937_)
        (let* ((_e152938152951_ _stx152937_)
               (_E152940152955_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152938152951_)))
               (_E152939152987_
                (lambda ()
                  (if (gx#stx-pair? _e152938152951_)
                      (let ((_e152941152959_ (gx#syntax-e _e152938152951_)))
                        (let ((_hd152942152962_ (##car _e152941152959_))
                              (_tl152943152964_ (##cdr _e152941152959_)))
                          (if (gx#stx-pair? _tl152943152964_)
                              (let ((_e152944152967_
                                     (gx#syntax-e _tl152943152964_)))
                                (let ((_hd152945152970_
                                       (##car _e152944152967_))
                                      (_tl152946152972_
                                       (##cdr _e152944152967_)))
                                  (let ((_hd152975_ _hd152945152970_))
                                    (if (gx#stx-pair? _tl152946152972_)
                                        (let ((_e152947152977_
                                               (gx#syntax-e _tl152946152972_)))
                                          (let ((_hd152948152980_
                                                 (##car _e152947152977_))
                                                (_tl152949152982_
                                                 (##cdr _e152947152977_)))
                                            (let ((_expr152985_
                                                   _hd152948152980_))
                                              (if (gx#stx-null?
                                                   _tl152949152982_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd152975_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd152975_)
                          (cons _expr152985_ '())))
              (_E152940152955_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152940152955_)))))
                                        (_E152940152955_)))))
                              (_E152940152955_))))
                      (_E152940152955_)))))
          (_E152939152987_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx152883_)
        (let* ((_e152884152897_ _stx152883_)
               (_E152886152901_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152884152897_)))
               (_E152885152933_
                (lambda ()
                  (if (gx#stx-pair? _e152884152897_)
                      (let ((_e152887152905_ (gx#syntax-e _e152884152897_)))
                        (let ((_hd152888152908_ (##car _e152887152905_))
                              (_tl152889152910_ (##cdr _e152887152905_)))
                          (if (gx#stx-pair? _tl152889152910_)
                              (let ((_e152890152913_
                                     (gx#syntax-e _tl152889152910_)))
                                (let ((_hd152891152916_
                                       (##car _e152890152913_))
                                      (_tl152892152918_
                                       (##cdr _e152890152913_)))
                                  (let ((_hd152921_ _hd152891152916_))
                                    (if (gx#stx-pair? _tl152892152918_)
                                        (let ((_e152893152923_
                                               (gx#syntax-e _tl152892152918_)))
                                          (let ((_hd152894152926_
                                                 (##car _e152893152923_))
                                                (_tl152895152928_
                                                 (##cdr _e152893152923_)))
                                            (let ((_expr152931_
                                                   _hd152894152926_))
                                              (if (gx#stx-null?
                                                   _tl152895152928_)
                                                  (if (gx#identifier?
                                                       _hd152921_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd152921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr152931_ '())))
              (_E152886152901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152886152901_)))))
                                        (_E152886152901_)))))
                              (_E152886152901_))))
                      (_E152886152901_)))))
          (_E152885152933_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx152829_)
        (let* ((_e152830152843_ _stx152829_)
               (_E152832152847_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152830152843_)))
               (_E152831152879_
                (lambda ()
                  (if (gx#stx-pair? _e152830152843_)
                      (let ((_e152833152851_ (gx#syntax-e _e152830152843_)))
                        (let ((_hd152834152854_ (##car _e152833152851_))
                              (_tl152835152856_ (##cdr _e152833152851_)))
                          (if (gx#stx-pair? _tl152835152856_)
                              (let ((_e152836152859_
                                     (gx#syntax-e _tl152835152856_)))
                                (let ((_hd152837152862_
                                       (##car _e152836152859_))
                                      (_tl152838152864_
                                       (##cdr _e152836152859_)))
                                  (let ((_id152867_ _hd152837152862_))
                                    (if (gx#stx-pair? _tl152838152864_)
                                        (let ((_e152839152869_
                                               (gx#syntax-e _tl152838152864_)))
                                          (let ((_hd152840152872_
                                                 (##car _e152839152869_))
                                                (_tl152841152874_
                                                 (##cdr _e152839152869_)))
                                            (let ((_alias-id152877_
                                                   _hd152840152872_))
                                              (if (gx#stx-null?
                                                   _tl152841152874_)
                                                  (if (and (gx#identifier?
                                                            _id152867_)
                                                           (gx#identifier?
                                                            _alias-id152877_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id152867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id152877_ '())))
              (_E152832152847_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152832152847_)))))
                                        (_E152832152847_)))))
                              (_E152832152847_))))
                      (_E152832152847_)))))
          (_E152831152879_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx152786_)
        (let* ((_e152787152797_ _stx152786_)
               (_E152789152801_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152787152797_)))
               (_E152788152825_
                (lambda ()
                  (if (gx#stx-pair? _e152787152797_)
                      (let ((_e152790152805_ (gx#syntax-e _e152787152797_)))
                        (let ((_hd152791152808_ (##car _e152790152805_))
                              (_tl152792152810_ (##cdr _e152790152805_)))
                          (if (gx#stx-pair? _tl152792152810_)
                              (let ((_e152793152813_
                                     (gx#syntax-e _tl152792152810_)))
                                (let ((_hd152794152816_
                                       (##car _e152793152813_))
                                      (_tl152795152818_
                                       (##cdr _e152793152813_)))
                                  (let* ((_hd152821_ _hd152794152816_)
                                         (_body152823_ _tl152795152818_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd152821_)
                                             (gx#stx-list? _body152823_)
                                             (not (gx#stx-null? _body152823_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd152821_)
                                         _body152823_)
                                        (_E152789152801_)))))
                              (_E152789152801_))))
                      (_E152789152801_)))))
          (_E152788152825_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx152722_)
        (letrec ((_generate152724_
                  (lambda (_clause152754_)
                    (let* ((_e152755152762_ _clause152754_)
                           (_E152757152766_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx152722_
                               _clause152754_)))
                           (_E152756152782_
                            (lambda ()
                              (if (gx#stx-pair? _e152755152762_)
                                  (let ((_e152758152770_
                                         (gx#syntax-e _e152755152762_)))
                                    (let ((_hd152759152773_
                                           (##car _e152758152770_))
                                          (_tl152760152775_
                                           (##cdr _e152758152770_)))
                                      (let* ((_hd152778_ _hd152759152773_)
                                             (_body152780_ _tl152760152775_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd152778_)
                                                 (gx#stx-list? _body152780_)
                                                 (not (gx#stx-null?
                                                       _body152780_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd152778_)
                                                   _body152780_)
                                             (gx#stx-source _clause152754_))
                                            (_E152757152766_)))))
                                  (_E152757152766_)))))
                      (_E152756152782_)))))
          (let* ((_e152725152732_ _stx152722_)
                 (_E152727152736_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152725152732_)))
                 (_E152726152750_
                  (lambda ()
                    (if (gx#stx-pair? _e152725152732_)
                        (let ((_e152728152740_ (gx#syntax-e _e152725152732_)))
                          (let ((_hd152729152743_ (##car _e152728152740_))
                                (_tl152730152745_ (##cdr _e152728152740_)))
                            (let ((_clauses152748_ _tl152730152745_))
                              (if (gx#stx-list? _clauses152748_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate152724_
                                    _clauses152748_))
                                  (_E152727152736_)))))
                        (_E152727152736_)))))
            (_E152726152750_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx152623_ _form152624_)
        (letrec ((_generate152626_
                  (lambda (_bind152669_)
                    (let* ((_e152670152680_ _bind152669_)
                           (_E152672152684_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx152623_
                               _bind152669_)))
                           (_E152671152708_
                            (lambda ()
                              (if (gx#stx-pair? _e152670152680_)
                                  (let ((_e152673152688_
                                         (gx#syntax-e _e152670152680_)))
                                    (let ((_hd152674152691_
                                           (##car _e152673152688_))
                                          (_tl152675152693_
                                           (##cdr _e152673152688_)))
                                      (let ((_ids152696_ _hd152674152691_))
                                        (if (gx#stx-pair? _tl152675152693_)
                                            (let ((_e152676152698_
                                                   (gx#syntax-e
                                                    _tl152675152693_)))
                                              (let ((_hd152677152701_
                                                     (##car _e152676152698_))
                                                    (_tl152678152703_
                                                     (##cdr _e152676152698_)))
                                                (let ((_expr152706_
                                                       _hd152677152701_))
                                                  (if (gx#stx-null?
                                                       _tl152678152703_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids152696_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids152696_)
                        (cons _expr152706_ '()))
                  (_E152672152684_))
              (_E152672152684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E152672152684_)))))
                                  (_E152672152684_)))))
                      (_E152671152708_)))))
          (let* ((_e152627152637_ _stx152623_)
                 (_E152629152641_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e152627152637_)))
                 (_E152628152665_
                  (lambda ()
                    (if (gx#stx-pair? _e152627152637_)
                        (let ((_e152630152645_ (gx#syntax-e _e152627152637_)))
                          (let ((_hd152631152648_ (##car _e152630152645_))
                                (_tl152632152650_ (##cdr _e152630152645_)))
                            (if (gx#stx-pair? _tl152632152650_)
                                (let ((_e152633152653_
                                       (gx#syntax-e _tl152632152650_)))
                                  (let ((_hd152634152656_
                                         (##car _e152633152653_))
                                        (_tl152635152658_
                                         (##cdr _e152633152653_)))
                                    (let* ((_hd152661_ _hd152634152656_)
                                           (_body152663_ _tl152635152658_))
                                      (if (and (gx#stx-list? _hd152661_)
                                               (gx#stx-list? _body152663_)
                                               (not (gx#stx-null?
                                                     _body152663_)))
                                          (gx#core-cons*
                                           _form152624_
                                           (gx#stx-map1
                                            _generate152626_
                                            _hd152661_)
                                           _body152663_)
                                          (_E152629152641_)))))
                                (_E152629152641_))))
                        (_E152629152641_)))))
            (_E152628152665_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx152715_)
        (let ((_form152717_ '%#let-values))
          (gx#macro-expand-let-values__% _stx152715_ _form152717_))))
    (define gx#macro-expand-let-values
      (lambda _g159668_
        (let ((_g159667_ (##length _g159668_)))
          (cond ((##fx= _g159667_ 1)
                 (apply (lambda (_stx152715_)
                          (gx#macro-expand-let-values__0 _stx152715_))
                        _g159668_))
                ((##fx= _g159667_ 2)
                 (apply (lambda (_stx152719_ _form152720_)
                          (gx#macro-expand-let-values__%
                           _stx152719_
                           _form152720_))
                        _g159668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g159668_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx152620_)
        (gx#macro-expand-let-values__% _stx152620_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx152618_)
        (gx#macro-expand-let-values__% _stx152618_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx152509_)
        (let* ((_e152510152536_ _stx152509_)
               (_E152522152540_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152510152536_)))
               (_E152512152582_
                (lambda ()
                  (if (gx#stx-pair? _e152510152536_)
                      (let ((_e152523152544_ (gx#syntax-e _e152510152536_)))
                        (let ((_hd152524152547_ (##car _e152523152544_))
                              (_tl152525152549_ (##cdr _e152523152544_)))
                          (if (gx#stx-pair? _tl152525152549_)
                              (let ((_e152526152552_
                                     (gx#syntax-e _tl152525152549_)))
                                (let ((_hd152527152555_
                                       (##car _e152526152552_))
                                      (_tl152528152557_
                                       (##cdr _e152526152552_)))
                                  (let ((_test152560_ _hd152527152555_))
                                    (if (gx#stx-pair? _tl152528152557_)
                                        (let ((_e152529152562_
                                               (gx#syntax-e _tl152528152557_)))
                                          (let ((_hd152530152565_
                                                 (##car _e152529152562_))
                                                (_tl152531152567_
                                                 (##cdr _e152529152562_)))
                                            (let ((_K152570_ _hd152530152565_))
                                              (if (gx#stx-pair?
                                                   _tl152531152567_)
                                                  (let ((_e152532152572_
                                                         (gx#syntax-e
                                                          _tl152531152567_)))
                                                    (let ((_hd152533152575_
                                                           (##car _e152532152572_))
                                                          (_tl152534152577_
                                                           (##cdr _e152532152572_)))
                                                      (let ((_E152580_
                                                             _hd152533152575_))
                                                        (if (gx#stx-null?
                                                             _tl152534152577_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test152560_
                         _K152570_
                         _E152580_)
                        (_E152522152540_))
                    (_E152522152540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152522152540_)))))
                                        (_E152522152540_)))))
                              (_E152522152540_))))
                      (_E152522152540_))))
               (_E152511152614_
                (lambda ()
                  (if (gx#stx-pair? _e152510152536_)
                      (let ((_e152513152586_ (gx#syntax-e _e152510152536_)))
                        (let ((_hd152514152589_ (##car _e152513152586_))
                              (_tl152515152591_ (##cdr _e152513152586_)))
                          (if (gx#stx-pair? _tl152515152591_)
                              (let ((_e152516152594_
                                     (gx#syntax-e _tl152515152591_)))
                                (let ((_hd152517152597_
                                       (##car _e152516152594_))
                                      (_tl152518152599_
                                       (##cdr _e152516152594_)))
                                  (let ((_test152602_ _hd152517152597_))
                                    (if (gx#stx-pair? _tl152518152599_)
                                        (let ((_e152519152604_
                                               (gx#syntax-e _tl152518152599_)))
                                          (let ((_hd152520152607_
                                                 (##car _e152519152604_))
                                                (_tl152521152609_
                                                 (##cdr _e152519152604_)))
                                            (let ((_K152612_ _hd152520152607_))
                                              (if (gx#stx-null?
                                                   _tl152521152609_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test152602_
                                                       _K152612_
                                                       '#!void)
                                                      (_E152512152582_))
                                                  (_E152512152582_)))))
                                        (_E152512152582_)))))
                              (_E152512152582_))))
                      (_E152512152582_)))))
          (_E152511152614_))))
    (define gx#free-identifier=?
      (lambda (_xid152497_ _yid152498_)
        (let ((_xe152500_ (gx#resolve-identifier__0 _xid152497_))
              (_ye152501_ (gx#resolve-identifier__0 _yid152498_)))
          (if (and _xe152500_ _ye152501_)
              (let ((_$e152503_ (eq? _xe152500_ _ye152501_)))
                (if _$e152503_
                    _$e152503_
                    (if (##structure-instance-of? _xe152500_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye152501_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe152500_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye152501_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe152500_ _ye152501_)
                  '#f
                  (gx#stx-eq? _xid152497_ _yid152498_))))))
    (define gx#bound-identifier=?
      (lambda (_xid152481_ _yid152482_)
        (letrec ((_context152484_
                  (lambda (_e152495_)
                    (if (##structure-direct-instance-of?
                         _e152495_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e152495_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks152485_
                  (lambda (_e152493_)
                    (if (symbol? _e152493_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e152493_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e152493_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e152493_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap152486_
                  (lambda (_e152491_)
                    (if (symbol? _e152491_)
                        _e152491_
                        (gx#syntax-local-unwrap _e152491_)))))
          (let ((_x152488_ (_unwrap152486_ _xid152481_))
                (_y152489_ (_unwrap152486_ _yid152482_)))
            (if (gx#stx-eq? _x152488_ _y152489_)
                (if (eq? (_context152484_ _x152488_)
                         (_context152484_ _y152489_))
                    (equal? (_marks152485_ _x152488_)
                            (_marks152485_ _y152489_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx152479_)
        (if (gx#identifier? _stx152479_)
            (gx#core-identifier=? _stx152479_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx152477_)
        (if (gx#identifier? _stx152477_)
            (gx#core-identifier=? _stx152477_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x152475_)
        (if (gx#identifier? _x152475_)
            (if (not (gx#underscore? _x152475_)) _x152475_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx152421_ _where152422_)
        (let _lp152424_ ((_rest152426_ (gx#syntax->list _stx152421_)))
          (let* ((_rest152427152435_ _rest152426_)
                 (_else152429152443_ (lambda () '#t))
                 (_K152431152453_
                  (lambda (_rest152446_ _hd152447_)
                    (if (not (gx#identifier? _hd152447_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where152422_
                         _hd152447_)
                        (if (find (lambda (_g152448152450_)
                                    (gx#bound-identifier=?
                                     _g152448152450_
                                     _hd152447_))
                                  _rest152446_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where152422_
                             _hd152447_)
                            (_lp152424_ _rest152446_))))))
            (if (##pair? _rest152427152435_)
                (let ((_hd152432152456_ (##car _rest152427152435_))
                      (_tl152433152458_ (##cdr _rest152427152435_)))
                  (let* ((_hd152461_ _hd152432152456_)
                         (_rest152463_ _tl152433152458_))
                    (_K152431152453_ _rest152463_ _hd152461_)))
                (_else152429152443_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx152468_)
        (let ((_where152470_ _stx152468_))
          (gx#check-duplicate-identifiers__% _stx152468_ _where152470_))))
    (define gx#check-duplicate-identifiers
      (lambda _g159670_
        (let ((_g159669_ (##length _g159670_)))
          (cond ((##fx= _g159669_ 1)
                 (apply (lambda (_stx152468_)
                          (gx#check-duplicate-identifiers__0 _stx152468_))
                        _g159670_))
                ((##fx= _g159669_ 2)
                 (apply (lambda (_stx152472_ _where152473_)
                          (gx#check-duplicate-identifiers__%
                           _stx152472_
                           _where152473_))
                        _g159670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g159670_))))))
    (define gx#core-bind-values?
      (lambda (_stx152413_)
        (gx#stx-andmap
         (lambda (_x152415_)
           (let ((_$e152417_ (gx#identifier? _x152415_)))
             (if _$e152417_ _$e152417_ (gx#stx-false? _x152415_))))
         _stx152413_)))
    (define gx#core-bind-values!__%
      (lambda (_stx152377_ _rebind?152378_ _phi152379_ _ctx152380_)
        (gx#stx-for-each1
         (lambda (_id152382_)
           (if (gx#identifier? _id152382_)
               (gx#core-bind-runtime!__%
                _id152382_
                _rebind?152378_
                _phi152379_
                _ctx152380_)
               '#!void))
         _stx152377_)))
    (define gx#core-bind-values!__0
      (lambda (_stx152387_)
        (let* ((_rebind?152389_ '#f)
               (_phi152391_ (gx#current-expander-phi))
               (_ctx152393_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx152387_
           _rebind?152389_
           _phi152391_
           _ctx152393_))))
    (define gx#core-bind-values!__1
      (lambda (_stx152395_ _rebind?152396_)
        (let* ((_phi152398_ (gx#current-expander-phi))
               (_ctx152400_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx152395_
           _rebind?152396_
           _phi152398_
           _ctx152400_))))
    (define gx#core-bind-values!__2
      (lambda (_stx152402_ _rebind?152403_ _phi152404_)
        (let ((_ctx152406_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx152402_
           _rebind?152403_
           _phi152404_
           _ctx152406_))))
    (define gx#core-bind-values!
      (lambda _g159672_
        (let ((_g159671_ (##length _g159672_)))
          (cond ((##fx= _g159671_ 1)
                 (apply (lambda (_stx152387_)
                          (gx#core-bind-values!__0 _stx152387_))
                        _g159672_))
                ((##fx= _g159671_ 2)
                 (apply (lambda (_stx152395_ _rebind?152396_)
                          (gx#core-bind-values!__1
                           _stx152395_
                           _rebind?152396_))
                        _g159672_))
                ((##fx= _g159671_ 3)
                 (apply (lambda (_stx152402_ _rebind?152403_ _phi152404_)
                          (gx#core-bind-values!__2
                           _stx152402_
                           _rebind?152403_
                           _phi152404_))
                        _g159672_))
                ((##fx= _g159671_ 4)
                 (apply (lambda (_stx152408_
                                 _rebind?152409_
                                 _phi152410_
                                 _ctx152411_)
                          (gx#core-bind-values!__%
                           _stx152408_
                           _rebind?152409_
                           _phi152410_
                           _ctx152411_))
                        _g159672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g159672_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx152372_)
        (gx#stx-map1
         (lambda (_x152374_)
           (if (gx#identifier? _x152374_)
               (gx#core-quote-syntax__0 _x152374_)
               '#f))
         _stx152372_)))
    (define gx#core-runtime-ref?
      (lambda (_stx152365_)
        (if (gx#identifier? _stx152365_)
            (let* ((_bind152367_ (gx#resolve-identifier__0 _stx152365_))
                   (_$e152369_ (not _bind152367_)))
              (if _$e152369_
                  _$e152369_
                  (##structure-instance-of?
                   _bind152367_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id152357_ _form152358_)
        (let ((_bind152360_ (gx#resolve-identifier__0 _id152357_)))
          (if (##structure-instance-of? _bind152360_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id152357_)
              (if (not _bind152360_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id152357_)))
                      (gx#core-quote-syntax__0 _id152357_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form152358_
                       _id152357_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form152358_
                   _id152357_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id152316_ _rebind?152317_ _phi152318_ _ctx152319_)
        (let* ((_key152321_ (gx#core-identifier-key _id152316_))
               (_eid152323_
                (gx#make-binding-id__%
                 _key152321_
                 '#f
                 _phi152318_
                 _ctx152319_))
               (_bind152325_
                (if (##structure-instance-of?
                     _ctx152319_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid152323_
                     _key152321_
                     _phi152318_
                     _ctx152319_)
                    (if (##structure-instance-of?
                         _ctx152319_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid152323_
                         _key152321_
                         _phi152318_)
                        (if (##structure-instance-of?
                             _ctx152319_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid152323_
                             _key152321_
                             _phi152318_)
                            (##structure
                             gx#runtime-binding::t
                             _eid152323_
                             _key152321_
                             _phi152318_))))))
          (gx#bind-identifier!__%
           _id152316_
           _bind152325_
           _rebind?152317_
           _phi152318_
           _ctx152319_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id152331_)
        (let* ((_rebind?152333_ '#f)
               (_phi152335_ (gx#current-expander-phi))
               (_ctx152337_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152331_
           _rebind?152333_
           _phi152335_
           _ctx152337_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id152339_ _rebind?152340_)
        (let* ((_phi152342_ (gx#current-expander-phi))
               (_ctx152344_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152339_
           _rebind?152340_
           _phi152342_
           _ctx152344_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id152346_ _rebind?152347_ _phi152348_)
        (let ((_ctx152350_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id152346_
           _rebind?152347_
           _phi152348_
           _ctx152350_))))
    (define gx#core-bind-runtime!
      (lambda _g159674_
        (let ((_g159673_ (##length _g159674_)))
          (cond ((##fx= _g159673_ 1)
                 (apply (lambda (_id152331_)
                          (gx#core-bind-runtime!__0 _id152331_))
                        _g159674_))
                ((##fx= _g159673_ 2)
                 (apply (lambda (_id152339_ _rebind?152340_)
                          (gx#core-bind-runtime!__1
                           _id152339_
                           _rebind?152340_))
                        _g159674_))
                ((##fx= _g159673_ 3)
                 (apply (lambda (_id152346_ _rebind?152347_ _phi152348_)
                          (gx#core-bind-runtime!__2
                           _id152346_
                           _rebind?152347_
                           _phi152348_))
                        _g159674_))
                ((##fx= _g159673_ 4)
                 (apply (lambda (_id152352_
                                 _rebind?152353_
                                 _phi152354_
                                 _ctx152355_)
                          (gx#core-bind-runtime!__%
                           _id152352_
                           _rebind?152353_
                           _phi152354_
                           _ctx152355_))
                        _g159674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g159674_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id152271_ _eid152272_ _rebind?152273_ _phi152274_ _ctx152275_)
        (let* ((_key152277_ (gx#core-identifier-key _id152271_))
               (_bind152279_
                (if (##structure-instance-of?
                     _ctx152275_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid152272_
                     _key152277_
                     _phi152274_
                     _ctx152275_)
                    (if (##structure-instance-of?
                         _ctx152275_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid152272_
                         _key152277_
                         _phi152274_)
                        (##structure
                         gx#runtime-binding::t
                         _eid152272_
                         _key152277_
                         _phi152274_)))))
          (gx#bind-identifier!__%
           _id152271_
           _bind152279_
           _rebind?152273_
           _phi152274_
           _ctx152275_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id152285_ _eid152286_)
        (let* ((_rebind?152288_ '#f)
               (_phi152290_ (gx#current-expander-phi))
               (_ctx152292_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152285_
           _eid152286_
           _rebind?152288_
           _phi152290_
           _ctx152292_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id152294_ _eid152295_ _rebind?152296_)
        (let* ((_phi152298_ (gx#current-expander-phi))
               (_ctx152300_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152294_
           _eid152295_
           _rebind?152296_
           _phi152298_
           _ctx152300_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id152302_ _eid152303_ _rebind?152304_ _phi152305_)
        (let ((_ctx152307_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id152302_
           _eid152303_
           _rebind?152304_
           _phi152305_
           _ctx152307_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g159676_
        (let ((_g159675_ (##length _g159676_)))
          (cond ((##fx= _g159675_ 2)
                 (apply (lambda (_id152285_ _eid152286_)
                          (gx#core-bind-runtime-reference!__0
                           _id152285_
                           _eid152286_))
                        _g159676_))
                ((##fx= _g159675_ 3)
                 (apply (lambda (_id152294_ _eid152295_ _rebind?152296_)
                          (gx#core-bind-runtime-reference!__1
                           _id152294_
                           _eid152295_
                           _rebind?152296_))
                        _g159676_))
                ((##fx= _g159675_ 4)
                 (apply (lambda (_id152302_
                                 _eid152303_
                                 _rebind?152304_
                                 _phi152305_)
                          (gx#core-bind-runtime-reference!__2
                           _id152302_
                           _eid152303_
                           _rebind?152304_
                           _phi152305_))
                        _g159676_))
                ((##fx= _g159675_ 5)
                 (apply (lambda (_id152309_
                                 _eid152310_
                                 _rebind?152311_
                                 _phi152312_
                                 _ctx152313_)
                          (gx#core-bind-runtime-reference!__%
                           _id152309_
                           _eid152310_
                           _rebind?152311_
                           _phi152312_
                           _ctx152313_))
                        _g159676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g159676_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id152231_ _eid152232_ _rebind?152233_ _phi152234_ _ctx152235_)
        (gx#bind-identifier!__%
         _id152231_
         (##structure
          gx#extern-binding::t
          _eid152232_
          (gx#core-identifier-key _id152231_)
          _phi152234_)
         _rebind?152233_
         _phi152234_
         _ctx152235_)))
    (define gx#core-bind-extern!__0
      (lambda (_id152240_ _eid152241_)
        (let* ((_rebind?152243_ '#f)
               (_phi152245_ (gx#current-expander-phi))
               (_ctx152247_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152240_
           _eid152241_
           _rebind?152243_
           _phi152245_
           _ctx152247_))))
    (define gx#core-bind-extern!__1
      (lambda (_id152249_ _eid152250_ _rebind?152251_)
        (let* ((_phi152253_ (gx#current-expander-phi))
               (_ctx152255_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152249_
           _eid152250_
           _rebind?152251_
           _phi152253_
           _ctx152255_))))
    (define gx#core-bind-extern!__2
      (lambda (_id152257_ _eid152258_ _rebind?152259_ _phi152260_)
        (let ((_ctx152262_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id152257_
           _eid152258_
           _rebind?152259_
           _phi152260_
           _ctx152262_))))
    (define gx#core-bind-extern!
      (lambda _g159678_
        (let ((_g159677_ (##length _g159678_)))
          (cond ((##fx= _g159677_ 2)
                 (apply (lambda (_id152240_ _eid152241_)
                          (gx#core-bind-extern!__0 _id152240_ _eid152241_))
                        _g159678_))
                ((##fx= _g159677_ 3)
                 (apply (lambda (_id152249_ _eid152250_ _rebind?152251_)
                          (gx#core-bind-extern!__1
                           _id152249_
                           _eid152250_
                           _rebind?152251_))
                        _g159678_))
                ((##fx= _g159677_ 4)
                 (apply (lambda (_id152257_
                                 _eid152258_
                                 _rebind?152259_
                                 _phi152260_)
                          (gx#core-bind-extern!__2
                           _id152257_
                           _eid152258_
                           _rebind?152259_
                           _phi152260_))
                        _g159678_))
                ((##fx= _g159677_ 5)
                 (apply (lambda (_id152264_
                                 _eid152265_
                                 _rebind?152266_
                                 _phi152267_
                                 _ctx152268_)
                          (gx#core-bind-extern!__%
                           _id152264_
                           _eid152265_
                           _rebind?152266_
                           _phi152267_
                           _ctx152268_))
                        _g159678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g159678_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id152185_ _e152186_ _rebind?152187_ _phi152188_ _ctx152189_)
        (gx#bind-identifier!__%
         _id152185_
         (let ((_key152194_ (gx#core-identifier-key _id152185_))
               (_e152195_
                (if (or (##structure-instance-of? _e152186_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e152186_
                         'gx#expander-context::t))
                    _e152186_
                    (##structure
                     gx#user-expander::t
                     _e152186_
                     _ctx152189_
                     _phi152188_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key152194_ '#t _phi152188_ _ctx152189_)
            _key152194_
            _phi152188_
            _e152195_))
         _rebind?152187_
         _phi152188_
         _ctx152189_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id152200_ _e152201_)
        (let* ((_rebind?152203_ '#f)
               (_phi152205_ (gx#current-expander-phi))
               (_ctx152207_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152200_
           _e152201_
           _rebind?152203_
           _phi152205_
           _ctx152207_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id152209_ _e152210_ _rebind?152211_)
        (let* ((_phi152213_ (gx#current-expander-phi))
               (_ctx152215_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152209_
           _e152210_
           _rebind?152211_
           _phi152213_
           _ctx152215_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id152217_ _e152218_ _rebind?152219_ _phi152220_)
        (let ((_ctx152222_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id152217_
           _e152218_
           _rebind?152219_
           _phi152220_
           _ctx152222_))))
    (define gx#core-bind-syntax!
      (lambda _g159680_
        (let ((_g159679_ (##length _g159680_)))
          (cond ((##fx= _g159679_ 2)
                 (apply (lambda (_id152200_ _e152201_)
                          (gx#core-bind-syntax!__0 _id152200_ _e152201_))
                        _g159680_))
                ((##fx= _g159679_ 3)
                 (apply (lambda (_id152209_ _e152210_ _rebind?152211_)
                          (gx#core-bind-syntax!__1
                           _id152209_
                           _e152210_
                           _rebind?152211_))
                        _g159680_))
                ((##fx= _g159679_ 4)
                 (apply (lambda (_id152217_
                                 _e152218_
                                 _rebind?152219_
                                 _phi152220_)
                          (gx#core-bind-syntax!__2
                           _id152217_
                           _e152218_
                           _rebind?152219_
                           _phi152220_))
                        _g159680_))
                ((##fx= _g159679_ 5)
                 (apply (lambda (_id152224_
                                 _e152225_
                                 _rebind?152226_
                                 _phi152227_
                                 _ctx152228_)
                          (gx#core-bind-syntax!__%
                           _id152224_
                           _e152225_
                           _rebind?152226_
                           _phi152227_
                           _ctx152228_))
                        _g159680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g159680_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id152168_ _e152169_ _rebind?152170_)
        (gx#core-bind-syntax!__%
         _id152168_
         _e152169_
         _rebind?152170_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id152175_ _e152176_)
        (let ((_rebind?152178_ '#f))
          (gx#core-bind-root-syntax!__%
           _id152175_
           _e152176_
           _rebind?152178_))))
    (define gx#core-bind-root-syntax!
      (lambda _g159682_
        (let ((_g159681_ (##length _g159682_)))
          (cond ((##fx= _g159681_ 2)
                 (apply (lambda (_id152175_ _e152176_)
                          (gx#core-bind-root-syntax!__0 _id152175_ _e152176_))
                        _g159682_))
                ((##fx= _g159681_ 3)
                 (apply (lambda (_id152180_ _e152181_ _rebind?152182_)
                          (gx#core-bind-root-syntax!__%
                           _id152180_
                           _e152181_
                           _rebind?152182_))
                        _g159682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g159682_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id152126_
               _alias-id152127_
               _rebind?152128_
               _phi152129_
               _ctx152130_)
        (gx#bind-identifier!__%
         _id152126_
         (let ((_key152132_ (gx#core-identifier-key _id152126_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key152132_ '#t _phi152129_ _ctx152130_)
            _key152132_
            _phi152129_
            _alias-id152127_))
         _rebind?152128_
         _phi152129_
         _ctx152130_)))
    (define gx#core-bind-alias!__0
      (lambda (_id152137_ _alias-id152138_)
        (let* ((_rebind?152140_ '#f)
               (_phi152142_ (gx#current-expander-phi))
               (_ctx152144_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152137_
           _alias-id152138_
           _rebind?152140_
           _phi152142_
           _ctx152144_))))
    (define gx#core-bind-alias!__1
      (lambda (_id152146_ _alias-id152147_ _rebind?152148_)
        (let* ((_phi152150_ (gx#current-expander-phi))
               (_ctx152152_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152146_
           _alias-id152147_
           _rebind?152148_
           _phi152150_
           _ctx152152_))))
    (define gx#core-bind-alias!__2
      (lambda (_id152154_ _alias-id152155_ _rebind?152156_ _phi152157_)
        (let ((_ctx152159_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id152154_
           _alias-id152155_
           _rebind?152156_
           _phi152157_
           _ctx152159_))))
    (define gx#core-bind-alias!
      (lambda _g159684_
        (let ((_g159683_ (##length _g159684_)))
          (cond ((##fx= _g159683_ 2)
                 (apply (lambda (_id152137_ _alias-id152138_)
                          (gx#core-bind-alias!__0 _id152137_ _alias-id152138_))
                        _g159684_))
                ((##fx= _g159683_ 3)
                 (apply (lambda (_id152146_ _alias-id152147_ _rebind?152148_)
                          (gx#core-bind-alias!__1
                           _id152146_
                           _alias-id152147_
                           _rebind?152148_))
                        _g159684_))
                ((##fx= _g159683_ 4)
                 (apply (lambda (_id152154_
                                 _alias-id152155_
                                 _rebind?152156_
                                 _phi152157_)
                          (gx#core-bind-alias!__2
                           _id152154_
                           _alias-id152155_
                           _rebind?152156_
                           _phi152157_))
                        _g159684_))
                ((##fx= _g159683_ 5)
                 (apply (lambda (_id152161_
                                 _alias-id152162_
                                 _rebind?152163_
                                 _phi152164_
                                 _ctx152165_)
                          (gx#core-bind-alias!__%
                           _id152161_
                           _alias-id152162_
                           _rebind?152163_
                           _phi152164_
                           _ctx152165_))
                        _g159684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g159684_))))))
    (define gx#make-binding-id__%
      (lambda (_key152083_ _syntax?152084_ _phi152085_ _ctx152086_)
        (if (uninterned-symbol? _key152083_)
            (gensym 'L)
            (if (pair? _key152083_)
                (gensym (car _key152083_))
                (if (##structure-instance-of? _ctx152086_ 'gx#top-context::t)
                    (let ((_ns152088_
                           (gx#core-context-namespace__% _ctx152086_)))
                      (if (and (fxzero? _phi152085_) (not _syntax?152084_))
                          (if _ns152088_
                              (make-symbol__1 _ns152088_ '"#" _key152083_)
                              _key152083_)
                          (if _syntax?152084_
                              (make-symbol__1
                               (let ((_$e152090_ _ns152088_))
                                 (if _$e152090_ _$e152090_ '""))
                               '"[:"
                               (number->string _phi152085_)
                               '":]#"
                               _key152083_)
                              (make-symbol__1
                               (let ((_$e152093_ _ns152088_))
                                 (if _$e152093_ _$e152093_ '""))
                               '"["
                               (number->string _phi152085_)
                               '"]#"
                               _key152083_))))
                    (gensym _key152083_))))))
    (define gx#make-binding-id__0
      (lambda (_key152099_)
        (let* ((_syntax?152101_ '#f)
               (_phi152103_ (gx#current-expander-phi))
               (_ctx152105_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152099_
           _syntax?152101_
           _phi152103_
           _ctx152105_))))
    (define gx#make-binding-id__1
      (lambda (_key152107_ _syntax?152108_)
        (let* ((_phi152110_ (gx#current-expander-phi))
               (_ctx152112_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152107_
           _syntax?152108_
           _phi152110_
           _ctx152112_))))
    (define gx#make-binding-id__2
      (lambda (_key152114_ _syntax?152115_ _phi152116_)
        (let ((_ctx152118_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key152114_
           _syntax?152115_
           _phi152116_
           _ctx152118_))))
    (define gx#make-binding-id
      (lambda _g159686_
        (let ((_g159685_ (##length _g159686_)))
          (cond ((##fx= _g159685_ 1)
                 (apply (lambda (_key152099_)
                          (gx#make-binding-id__0 _key152099_))
                        _g159686_))
                ((##fx= _g159685_ 2)
                 (apply (lambda (_key152107_ _syntax?152108_)
                          (gx#make-binding-id__1 _key152107_ _syntax?152108_))
                        _g159686_))
                ((##fx= _g159685_ 3)
                 (apply (lambda (_key152114_ _syntax?152115_ _phi152116_)
                          (gx#make-binding-id__2
                           _key152114_
                           _syntax?152115_
                           _phi152116_))
                        _g159686_))
                ((##fx= _g159685_ 4)
                 (apply (lambda (_key152120_
                                 _syntax?152121_
                                 _phi152122_
                                 _ctx152123_)
                          (gx#make-binding-id__%
                           _key152120_
                           _syntax?152121_
                           _phi152122_
                           _ctx152123_))
                        _g159686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g159686_))))))))
