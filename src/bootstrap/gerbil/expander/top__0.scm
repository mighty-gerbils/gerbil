(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707610214)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx152982_)
        (letrec ((_expand-special152984_
                  (lambda (_hd152986_ _K152987_ _rest152988_ _r152989_)
                    (_K152987_
                     _rest152988_
                     (cons (gx#core-expand-top _hd152986_) _r152989_)))))
          (gx#core-expand-block__0 _stx152982_ _expand-special152984_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx152735_)
        (letrec ((_expand-special152737_
                  (lambda (_hd152857_ _K152858_ _rest152859_ _r152860_)
                    (let* ((_K152864_
                            (lambda (_e152862_)
                              (_K152858_
                               _rest152859_
                               (cons _e152862_ _r152860_))))
                           (_e152865152894_ _hd152857_)
                           (_E152889152898_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152865152894_)))
                           (_E152885152910_
                            (lambda ()
                              (if (gx#stx-pair? _e152865152894_)
                                  (let ((_e152890152902_
                                         (gx#syntax-e _e152865152894_)))
                                    (let ((_hd152891152905_
                                           (##car _e152890152902_))
                                          (_tl152892152907_
                                           (##cdr _e152890152902_)))
                                      (if (and (gx#identifier?
                                                _hd152891152905_)
                                               (gx#core-identifier=?
                                                _hd152891152905_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K152864_
                                               (gx#core-expand-define-runtime%
                                                _hd152857_))
                                              (_E152889152898_))
                                          (_E152889152898_))))
                                  (_E152889152898_))))
                           (_E152881152922_
                            (lambda ()
                              (if (gx#stx-pair? _e152865152894_)
                                  (let ((_e152886152914_
                                         (gx#syntax-e _e152865152894_)))
                                    (let ((_hd152887152917_
                                           (##car _e152886152914_))
                                          (_tl152888152919_
                                           (##cdr _e152886152914_)))
                                      (if (and (gx#identifier?
                                                _hd152887152917_)
                                               (gx#core-identifier=?
                                                _hd152887152917_
                                                '%#define-alias))
                                          (if '#t
                                              (_K152864_
                                               (gx#core-expand-define-alias%
                                                _hd152857_))
                                              (_E152885152910_))
                                          (_E152885152910_))))
                                  (_E152885152910_))))
                           (_E152871152934_
                            (lambda ()
                              (if (gx#stx-pair? _e152865152894_)
                                  (let ((_e152882152926_
                                         (gx#syntax-e _e152865152894_)))
                                    (let ((_hd152883152929_
                                           (##car _e152882152926_))
                                          (_tl152884152931_
                                           (##cdr _e152882152926_)))
                                      (if (and (gx#identifier?
                                                _hd152883152929_)
                                               (gx#core-identifier=?
                                                _hd152883152929_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K152864_
                                               (gx#core-expand-define-syntax%
                                                _hd152857_))
                                              (_E152881152922_))
                                          (_E152881152922_))))
                                  (_E152881152922_))))
                           (_E152867152966_
                            (lambda ()
                              (if (gx#stx-pair? _e152865152894_)
                                  (let ((_e152872152938_
                                         (gx#syntax-e _e152865152894_)))
                                    (let ((_hd152873152941_
                                           (##car _e152872152938_))
                                          (_tl152874152943_
                                           (##cdr _e152872152938_)))
                                      (if (and (gx#identifier?
                                                _hd152873152941_)
                                               (gx#core-identifier=?
                                                _hd152873152941_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152874152943_)
                                              (let ((_e152875152946_
                                                     (gx#syntax-e
                                                      _tl152874152943_)))
                                                (let ((_hd152876152949_
                                                       (##car _e152875152946_))
                                                      (_tl152877152951_
                                                       (##cdr _e152875152946_)))
                                                  (let ((_hd-bind152954_
                                                         _hd152876152949_))
                                                    (if (gx#stx-pair?
                                                         _tl152877152951_)
                                                        (let ((_e152878152956_
                                                               (gx#syntax-e
                                                                _tl152877152951_)))
                                                          (let ((_hd152879152959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152878152956_))
                        (_tl152880152961_ (##cdr _e152878152956_)))
                    (let ((_expr152964_ _hd152879152959_))
                      (if (gx#stx-null? _tl152880152961_)
                          (if (gx#core-bind-values? _hd-bind152954_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152954_)
                                (_K152864_ _hd152857_))
                              (_E152871152934_))
                          (_E152871152934_)))))
                (_E152871152934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152871152934_))
                                          (_E152871152934_))))
                                  (_E152871152934_))))
                           (_E152866152978_
                            (lambda ()
                              (if (gx#stx-pair? _e152865152894_)
                                  (let ((_e152868152970_
                                         (gx#syntax-e _e152865152894_)))
                                    (let ((_hd152869152973_
                                           (##car _e152868152970_))
                                          (_tl152870152975_
                                           (##cdr _e152868152970_)))
                                      (if (and (gx#identifier?
                                                _hd152869152973_)
                                               (gx#core-identifier=?
                                                _hd152869152973_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K152864_
                                               (gx#core-expand-begin-syntax%
                                                _hd152857_))
                                              (_E152867152966_))
                                          (_E152867152966_))))
                                  (_E152867152966_)))))
                      (_E152866152978_))))
                 (_eval-body152738_
                  (lambda (_rbody152746_)
                    (let _lp152748_ ((_rest152750_ _rbody152746_)
                                     (_body152751_ '())
                                     (_ebody152752_ '()))
                      (let* ((_rest152753152761_ _rest152750_)
                             (_else152755152769_
                              (lambda ()
                                (values _body152751_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody152752_)
                                          (gx#stx-source _stx152735_))))))
                             (_K152757152845_
                              (lambda (_rest152772_ _hd152773_)
                                (let* ((_e152774152791_ _hd152773_)
                                       (_E152786152795_
                                        (lambda ()
                                          (_lp152748_
                                           _rest152772_
                                           (cons _hd152773_ _body152751_)
                                           (cons _hd152773_ _ebody152752_))))
                                       (_E152776152807_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152774152791_)
                                              (let ((_e152787152799_
                                                     (gx#syntax-e
                                                      _e152774152791_)))
                                                (let ((_hd152788152802_
                                                       (##car _e152787152799_))
                                                      (_tl152789152804_
                                                       (##cdr _e152787152799_)))
                                                  (if (and (gx#identifier?
                                                            _hd152788152802_)
                                                           (gx#core-identifier=?
                                                            _hd152788152802_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp152748_
                                                           _rest152772_
                                                           (cons _hd152773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body152751_)
                   _ebody152752_)
                  (_E152786152795_))
              (_E152786152795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152786152795_))))
                                       (_E152775152841_
                                        (lambda ()
                                          (if (gx#stx-pair? _e152774152791_)
                                              (let ((_e152777152811_
                                                     (gx#syntax-e
                                                      _e152774152791_)))
                                                (let ((_hd152778152814_
                                                       (##car _e152777152811_))
                                                      (_tl152779152816_
                                                       (##cdr _e152777152811_)))
                                                  (if (and (gx#identifier?
                                                            _hd152778152814_)
                                                           (gx#core-identifier=?
                                                            _hd152778152814_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl152779152816_)
                                                          (let ((_e152780152819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl152779152816_)))
                    (let ((_hd152781152822_ (##car _e152780152819_))
                          (_tl152782152824_ (##cdr _e152780152819_)))
                      (let ((_hd-bind152827_ _hd152781152822_))
                        (if (gx#stx-pair? _tl152782152824_)
                            (let ((_e152783152829_
                                   (gx#syntax-e _tl152782152824_)))
                              (let ((_hd152784152832_ (##car _e152783152829_))
                                    (_tl152785152834_ (##cdr _e152783152829_)))
                                (let ((_expr152837_ _hd152784152832_))
                                  (if (gx#stx-null? _tl152785152834_)
                                      (if '#t
                                          (let ((_ehd152839_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind152827_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr152837_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd152773_))))
                                            (_lp152748_
                                             _rest152772_
                                             (cons _ehd152839_ _body152751_)
                                             (cons _ehd152839_ _ebody152752_)))
                                          (_E152776152807_))
                                      (_E152776152807_)))))
                            (_E152776152807_)))))
                  (_E152776152807_))
              (_E152776152807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152776152807_)))))
                                  (_E152775152841_)))))
                        (if (##pair? _rest152753152761_)
                            (let ((_hd152758152848_ (##car _rest152753152761_))
                                  (_tl152759152850_
                                   (##cdr _rest152753152761_)))
                              (let* ((_hd152853_ _hd152758152848_)
                                     (_rest152855_ _tl152759152850_))
                                (_K152757152845_ _rest152855_ _hd152853_)))
                            (_else152755152769_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody152741_
                     (gx#core-expand-block__1
                      _stx152735_
                      _expand-special152737_
                      '#f))
                    (_g157473_ (_eval-body152738_ _rbody152741_)))
               (begin
                 (let ((_g157474_
                        (if (##values? _g157473_)
                            (##vector-length _g157473_)
                            1)))
                   (if (not (##fx= _g157474_ 2))
                       (error "Context expects 2 values" _g157474_)))
                 (let ((_expanded-body152743_ (##vector-ref _g157473_ 0))
                       (_value152744_ (##vector-ref _g157473_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body152743_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value152744_ '())))
                    (gx#stx-source _stx152735_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx152705_)
        (let* ((_e152706152713_ _stx152705_)
               (_E152708152717_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152706152713_)))
               (_E152707152731_
                (lambda ()
                  (if (gx#stx-pair? _e152706152713_)
                      (let ((_e152709152721_ (gx#syntax-e _e152706152713_)))
                        (let ((_hd152710152724_ (##car _e152709152721_))
                              (_tl152711152726_ (##cdr _e152709152721_)))
                          (let ((_body152729_ _tl152711152726_))
                            (if (gx#stx-list? _body152729_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body152729_)
                                 (gx#stx-source _stx152705_))
                                (_E152708152717_)))))
                      (_E152708152717_)))))
          (_E152707152731_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx152703_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx152703_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx152649_)
        (let* ((_e152650152663_ _stx152649_)
               (_E152652152667_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152650152663_)))
               (_E152651152699_
                (lambda ()
                  (if (gx#stx-pair? _e152650152663_)
                      (let ((_e152653152671_ (gx#syntax-e _e152650152663_)))
                        (let ((_hd152654152674_ (##car _e152653152671_))
                              (_tl152655152676_ (##cdr _e152653152671_)))
                          (if (gx#stx-pair? _tl152655152676_)
                              (let ((_e152656152679_
                                     (gx#syntax-e _tl152655152676_)))
                                (let ((_hd152657152682_
                                       (##car _e152656152679_))
                                      (_tl152658152684_
                                       (##cdr _e152656152679_)))
                                  (let ((_ann152687_ _hd152657152682_))
                                    (if (gx#stx-pair? _tl152658152684_)
                                        (let ((_e152659152689_
                                               (gx#syntax-e _tl152658152684_)))
                                          (let ((_hd152660152692_
                                                 (##car _e152659152689_))
                                                (_tl152661152694_
                                                 (##cdr _e152659152689_)))
                                            (let ((_expr152697_
                                                   _hd152660152692_))
                                              (if (gx#stx-null?
                                                   _tl152661152694_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann152687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr152697_)
                                 '())))
               (gx#stx-source _stx152649_))
              (_E152652152667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152652152667_)))))
                                        (_E152652152667_)))))
                              (_E152652152667_))))
                      (_E152652152667_)))))
          (_E152651152699_))))
    (define gx#core-expand-local-block
      (lambda (_stx152373_ _body152374_)
        (letrec ((_expand-special152376_
                  (lambda (_hd152644_ _K152645_ _rest152646_ _r152647_)
                    (_K152645_
                     '()
                     (cons (_expand-internal152377_ _hd152644_ _rest152646_)
                           _r152647_))))
                 (_expand-internal152377_
                  (lambda (_hd152640_ _rest152641_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal152379_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd152640_ _rest152641_))
                          (gx#stx-source _stx152373_))
                         _expand-internal-special152378_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj157467
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj157467)
                       __obj157467))))
                 (_expand-internal-special152378_
                  (lambda (_hd152535_ _K152536_ _rest152537_ _r152538_)
                    (let* ((_e152539152564_ _hd152535_)
                           (_E152559152568_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152539152564_)))
                           (_E152555152580_
                            (lambda ()
                              (if (gx#stx-pair? _e152539152564_)
                                  (let ((_e152560152572_
                                         (gx#syntax-e _e152539152564_)))
                                    (let ((_hd152561152575_
                                           (##car _e152560152572_))
                                          (_tl152562152577_
                                           (##cdr _e152560152572_)))
                                      (if (and (gx#identifier?
                                                _hd152561152575_)
                                               (gx#core-identifier=?
                                                _hd152561152575_
                                                '%#declare))
                                          (if '#t
                                              (_K152536_
                                               _rest152537_
                                               (cons (gx#core-expand-declare%
                                                      _hd152535_)
                                                     _r152538_))
                                              (_E152559152568_))
                                          (_E152559152568_))))
                                  (_E152559152568_))))
                           (_E152551152592_
                            (lambda ()
                              (if (gx#stx-pair? _e152539152564_)
                                  (let ((_e152556152584_
                                         (gx#syntax-e _e152539152564_)))
                                    (let ((_hd152557152587_
                                           (##car _e152556152584_))
                                          (_tl152558152589_
                                           (##cdr _e152556152584_)))
                                      (if (and (gx#identifier?
                                                _hd152557152587_)
                                               (gx#core-identifier=?
                                                _hd152557152587_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd152535_)
                                                (_K152536_
                                                 _rest152537_
                                                 _r152538_))
                                              (_E152555152580_))
                                          (_E152555152580_))))
                                  (_E152555152580_))))
                           (_E152541152604_
                            (lambda ()
                              (if (gx#stx-pair? _e152539152564_)
                                  (let ((_e152552152596_
                                         (gx#syntax-e _e152539152564_)))
                                    (let ((_hd152553152599_
                                           (##car _e152552152596_))
                                          (_tl152554152601_
                                           (##cdr _e152552152596_)))
                                      (if (and (gx#identifier?
                                                _hd152553152599_)
                                               (gx#core-identifier=?
                                                _hd152553152599_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd152535_)
                                                (_K152536_
                                                 _rest152537_
                                                 _r152538_))
                                              (_E152551152592_))
                                          (_E152551152592_))))
                                  (_E152551152592_))))
                           (_E152540152636_
                            (lambda ()
                              (if (gx#stx-pair? _e152539152564_)
                                  (let ((_e152542152608_
                                         (gx#syntax-e _e152539152564_)))
                                    (let ((_hd152543152611_
                                           (##car _e152542152608_))
                                          (_tl152544152613_
                                           (##cdr _e152542152608_)))
                                      (if (and (gx#identifier?
                                                _hd152543152611_)
                                               (gx#core-identifier=?
                                                _hd152543152611_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl152544152613_)
                                              (let ((_e152545152616_
                                                     (gx#syntax-e
                                                      _tl152544152613_)))
                                                (let ((_hd152546152619_
                                                       (##car _e152545152616_))
                                                      (_tl152547152621_
                                                       (##cdr _e152545152616_)))
                                                  (let ((_hd-bind152624_
                                                         _hd152546152619_))
                                                    (if (gx#stx-pair?
                                                         _tl152547152621_)
                                                        (let ((_e152548152626_
                                                               (gx#syntax-e
                                                                _tl152547152621_)))
                                                          (let ((_hd152549152629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152548152626_))
                        (_tl152550152631_ (##cdr _e152548152626_)))
                    (let ((_expr152634_ _hd152549152629_))
                      (if (gx#stx-null? _tl152550152631_)
                          (if (gx#core-bind-values? _hd-bind152624_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind152624_)
                                (_K152536_
                                 _rest152537_
                                 (cons _hd152535_ _r152538_)))
                              (_E152541152604_))
                          (_E152541152604_)))))
                (_E152541152604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E152541152604_))
                                          (_E152541152604_))))
                                  (_E152541152604_)))))
                      (_E152540152636_))))
                 (_wrap-internal152379_
                  (lambda (_rbody152381_)
                    (let _lp152383_ ((_rest152385_ _rbody152381_)
                                     (_decls152386_ '())
                                     (_bind152387_ '())
                                     (_body152388_ '()))
                      (let* ((_e152389152396_ _rest152385_)
                             (_E152391152445_
                              (lambda ()
                                (let* ((_body152440_
                                        (let* ((_body152399152409_
                                                _body152388_)
                                               (_else152402152417_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body152388_)
                                                   (gx#stx-source
                                                    _stx152373_)))))
                                          (let ((_K152407152437_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx152373_)))
                                                (_K152404152423_
                                                 (lambda (_expr152421_)
                                                   _expr152421_)))
                                            (let ((_try-match152401152433_
                                                   (lambda ()
                                                     (if (##pair? _body152399152409_)
                                                         (let ((_tl152406152428_
                                                                (##cdr _body152399152409_))
                                                               (_hd152405152426_
                                                                (##car _body152399152409_)))
                                                           (if (##null? _tl152406152428_)
                                                               (let ((_expr152431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152405152426_))
                         (_K152404152423_ _expr152431_))
                       (_else152402152417_)))
                 (_else152402152417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body152399152409_)
                                                  (_K152407152437_)
                                                  (_try-match152401152433_))))))
                                       (_body152442_
                                        (if (null? _bind152387_)
                                            _body152440_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind152387_
                                                         (cons _body152440_
                                                               '())))
                                             (gx#stx-source _stx152373_)))))
                                  (if (null? _decls152386_)
                                      _body152442_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls152386_
                                                   (cons _body152442_ '())))
                                       (gx#stx-source _stx152373_))))))
                             (_E152390152531_
                              (lambda ()
                                (if (gx#stx-pair? _e152389152396_)
                                    (let ((_e152392152449_
                                           (gx#syntax-e _e152389152396_)))
                                      (let ((_hd152393152452_
                                             (##car _e152392152449_))
                                            (_tl152394152454_
                                             (##cdr _e152392152449_)))
                                        (let* ((_hd152457_ _hd152393152452_)
                                               (_rest152459_ _tl152394152454_))
                                          (if '#t
                                              (let* ((_e152460152477_
                                                      _hd152457_)
                                                     (_E152472152481_
                                                      (lambda ()
                                                        (if (null? _bind152387_)
                                                            (_lp152383_
                                                             _rest152459_
                                                             _decls152386_
                                                             _bind152387_
                                                             (cons _hd152457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body152388_))
                    (_lp152383_
                     _rest152459_
                     _decls152386_
                     (cons (cons '#f (cons _hd152457_ '())) _bind152387_)
                     _body152388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152462152495_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152460152477_)
                                                            (let ((_e152473152485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152460152477_)))
                      (let ((_hd152474152488_ (##car _e152473152485_))
                            (_tl152475152490_ (##cdr _e152473152485_)))
                        (if (and (gx#identifier? _hd152474152488_)
                                 (gx#core-identifier=?
                                  _hd152474152488_
                                  '%#declare))
                            (let ((_xdecls152493_ _tl152475152490_))
                              (if '#t
                                  (_lp152383_
                                   _rest152459_
                                   (gx#stx-foldr
                                    cons
                                    _decls152386_
                                    _xdecls152493_)
                                   _bind152387_
                                   _body152388_)
                                  (_E152472152481_)))
                            (_E152472152481_))))
                    (_E152472152481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152461152527_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e152460152477_)
                                                            (let ((_e152463152499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e152460152477_)))
                      (let ((_hd152464152502_ (##car _e152463152499_))
                            (_tl152465152504_ (##cdr _e152463152499_)))
                        (if (and (gx#identifier? _hd152464152502_)
                                 (gx#core-identifier=?
                                  _hd152464152502_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl152465152504_)
                                (let ((_e152466152507_
                                       (gx#syntax-e _tl152465152504_)))
                                  (let ((_hd152467152510_
                                         (##car _e152466152507_))
                                        (_tl152468152512_
                                         (##cdr _e152466152507_)))
                                    (let ((_hd-bind152515_ _hd152467152510_))
                                      (if (gx#stx-pair? _tl152468152512_)
                                          (let ((_e152469152517_
                                                 (gx#syntax-e
                                                  _tl152468152512_)))
                                            (let ((_hd152470152520_
                                                   (##car _e152469152517_))
                                                  (_tl152471152522_
                                                   (##cdr _e152469152517_)))
                                              (let ((_expr152525_
                                                     _hd152470152520_))
                                                (if (gx#stx-null?
                                                     _tl152471152522_)
                                                    (if '#t
                                                        (_lp152383_
                                                         _rest152459_
                                                         _decls152386_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind152515_)
                             (cons (gx#core-expand-expression _expr152525_)
                                   '()))
                       _bind152387_)
                 _body152388_)
                (_E152462152495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152462152495_)))))
                                          (_E152462152495_)))))
                                (_E152462152495_))
                            (_E152462152495_))))
                    (_E152462152495_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152461152527_))
                                              (_E152391152445_)))))
                                    (_E152391152445_)))))
                        (_E152390152531_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body152374_)
            (gx#stx-source _stx152373_))
           _expand-special152376_))))
    (define gx#core-expand-declare%
      (lambda (_stx152311_)
        (let* ((_e152312152319_ _stx152311_)
               (_E152314152323_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152312152319_)))
               (_E152313152369_
                (lambda ()
                  (if (gx#stx-pair? _e152312152319_)
                      (let ((_e152315152327_ (gx#syntax-e _e152312152319_)))
                        (let ((_hd152316152330_ (##car _e152315152327_))
                              (_tl152317152332_ (##cdr _e152315152327_)))
                          (let ((_body152335_ _tl152317152332_))
                            (if (gx#stx-list? _body152335_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl152337_)
                                     (let* ((_e152338152345_ _decl152337_)
                                            (_E152340152349_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e152338152345_)))
                                            (_E152339152365_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e152338152345_)
                                                   (let ((_e152341152353_
                                                          (gx#syntax-e
                                                           _e152338152345_)))
                                                     (let ((_hd152342152356_
                                                            (##car _e152341152353_))
                                                           (_tl152343152358_
                                                            (##cdr _e152341152353_)))
                                                       (let* ((_head152361_
                                                               _hd152342152356_)
                                                              (_args152363_
                                                               _tl152343152358_))
                                                         (if (gx#stx-list?
                                                              _args152363_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl152337_)
                                                             (_E152340152349_)))))
                                                   (_E152340152349_)))))
                                       (_E152339152365_)))
                                   _body152335_))
                                 (gx#stx-source _stx152311_))
                                (_E152314152323_)))))
                      (_E152314152323_)))))
          (_E152313152369_))))
    (define gx#core-expand-extern%
      (lambda (_stx152215_)
        (let* ((_e152216152223_ _stx152215_)
               (_E152218152227_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152216152223_)))
               (_E152217152307_
                (lambda ()
                  (if (gx#stx-pair? _e152216152223_)
                      (let ((_e152219152231_ (gx#syntax-e _e152216152223_)))
                        (let ((_hd152220152234_ (##car _e152219152231_))
                              (_tl152221152236_ (##cdr _e152219152231_)))
                          (let ((_body152239_ _tl152221152236_))
                            (if '#t
                                (let _lp152241_ ((_rest152243_ _body152239_)
                                                 (_r152244_ '()))
                                  (let* ((_e152245152259_ _rest152243_)
                                         (_E152257152263_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx152215_)))
                                         (_E152247152267_
                                          (lambda ()
                                            (if (gx#stx-null? _e152245152259_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r152244_))
                                                     (gx#stx-source
                                                      _stx152215_))
                                                    (_E152257152263_))
                                                (_E152257152263_))))
                                         (_E152246152303_
                                          (lambda ()
                                            (if (gx#stx-pair? _e152245152259_)
                                                (let ((_e152248152271_
                                                       (gx#syntax-e
                                                        _e152245152259_)))
                                                  (let ((_hd152249152274_
                                                         (##car _e152248152271_))
                                                        (_tl152250152276_
                                                         (##cdr _e152248152271_)))
                                                    (if (gx#stx-pair?
                                                         _hd152249152274_)
                                                        (let ((_e152251152279_
                                                               (gx#syntax-e
                                                                _hd152249152274_)))
                                                          (let ((_hd152252152282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e152251152279_))
                        (_tl152253152284_ (##cdr _e152251152279_)))
                    (let ((_id152287_ _hd152252152282_))
                      (if (gx#stx-pair? _tl152253152284_)
                          (let ((_e152254152289_
                                 (gx#syntax-e _tl152253152284_)))
                            (let ((_hd152255152292_ (##car _e152254152289_))
                                  (_tl152256152294_ (##cdr _e152254152289_)))
                              (let ((_eid152297_ _hd152255152292_))
                                (if (gx#stx-null? _tl152256152294_)
                                    (let ((_rest152299_ _tl152250152276_))
                                      (if (and (gx#identifier? _id152287_)
                                               (gx#identifier? _eid152297_))
                                          (let ((_eid152301_
                                                 (gx#stx-e _eid152297_)))
                                            (gx#core-bind-extern!__0
                                             _id152287_
                                             _eid152301_)
                                            (_lp152241_
                                             _rest152299_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id152287_)
                                                         (cons _eid152301_
                                                               '()))
                                                   _r152244_)))
                                          (_E152247152267_)))
                                    (_E152247152267_)))))
                          (_E152247152267_)))))
                (_E152247152267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E152247152267_)))))
                                    (_E152246152303_)))
                                (_E152218152227_)))))
                      (_E152218152227_)))))
          (_E152217152307_))))
    (define gx#core-expand-define-values%
      (lambda (_stx152161_)
        (let* ((_e152162152175_ _stx152161_)
               (_E152164152179_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152162152175_)))
               (_E152163152211_
                (lambda ()
                  (if (gx#stx-pair? _e152162152175_)
                      (let ((_e152165152183_ (gx#syntax-e _e152162152175_)))
                        (let ((_hd152166152186_ (##car _e152165152183_))
                              (_tl152167152188_ (##cdr _e152165152183_)))
                          (if (gx#stx-pair? _tl152167152188_)
                              (let ((_e152168152191_
                                     (gx#syntax-e _tl152167152188_)))
                                (let ((_hd152169152194_
                                       (##car _e152168152191_))
                                      (_tl152170152196_
                                       (##cdr _e152168152191_)))
                                  (let ((_hd152199_ _hd152169152194_))
                                    (if (gx#stx-pair? _tl152170152196_)
                                        (let ((_e152171152201_
                                               (gx#syntax-e _tl152170152196_)))
                                          (let ((_hd152172152204_
                                                 (##car _e152171152201_))
                                                (_tl152173152206_
                                                 (##cdr _e152171152201_)))
                                            (let ((_expr152209_
                                                   _hd152172152204_))
                                              (if (gx#stx-null?
                                                   _tl152173152206_)
                                                  (if (gx#core-bind-values?
                                                       _hd152199_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd152199_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd152199_)
                             (cons (gx#core-expand-expression _expr152209_)
                                   '())))
                 (gx#stx-source _stx152161_)))
              (_E152164152179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152164152179_)))))
                                        (_E152164152179_)))))
                              (_E152164152179_))))
                      (_E152164152179_)))))
          (_E152163152211_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx152105_)
        (let* ((_e152106152119_ _stx152105_)
               (_E152108152123_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152106152119_)))
               (_E152107152157_
                (lambda ()
                  (if (gx#stx-pair? _e152106152119_)
                      (let ((_e152109152127_ (gx#syntax-e _e152106152119_)))
                        (let ((_hd152110152130_ (##car _e152109152127_))
                              (_tl152111152132_ (##cdr _e152109152127_)))
                          (if (gx#stx-pair? _tl152111152132_)
                              (let ((_e152112152135_
                                     (gx#syntax-e _tl152111152132_)))
                                (let ((_hd152113152138_
                                       (##car _e152112152135_))
                                      (_tl152114152140_
                                       (##cdr _e152112152135_)))
                                  (let ((_id152143_ _hd152113152138_))
                                    (if (gx#stx-pair? _tl152114152140_)
                                        (let ((_e152115152145_
                                               (gx#syntax-e _tl152114152140_)))
                                          (let ((_hd152116152148_
                                                 (##car _e152115152145_))
                                                (_tl152117152150_
                                                 (##cdr _e152115152145_)))
                                            (let ((_binding-id152153_
                                                   _hd152116152148_))
                                              (if (gx#stx-null?
                                                   _tl152117152150_)
                                                  (if (and (gx#identifier?
                                                            _id152143_)
                                                           (gx#identifier?
                                                            _binding-id152153_))
                                                      (let ((_eid152155_
                                                             (gx#stx-e
                                                              _binding-id152153_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id152143_
                                                         _eid152155_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152143_)
                             (cons _eid152155_ '())))))
              (_E152108152123_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152108152123_)))))
                                        (_E152108152123_)))))
                              (_E152108152123_))))
                      (_E152108152123_)))))
          (_E152107152157_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx152048_)
        (let* ((_e152049152062_ _stx152048_)
               (_E152051152066_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152049152062_)))
               (_E152050152101_
                (lambda ()
                  (if (gx#stx-pair? _e152049152062_)
                      (let ((_e152052152070_ (gx#syntax-e _e152049152062_)))
                        (let ((_hd152053152073_ (##car _e152052152070_))
                              (_tl152054152075_ (##cdr _e152052152070_)))
                          (if (gx#stx-pair? _tl152054152075_)
                              (let ((_e152055152078_
                                     (gx#syntax-e _tl152054152075_)))
                                (let ((_hd152056152081_
                                       (##car _e152055152078_))
                                      (_tl152057152083_
                                       (##cdr _e152055152078_)))
                                  (let ((_id152086_ _hd152056152081_))
                                    (if (gx#stx-pair? _tl152057152083_)
                                        (let ((_e152058152088_
                                               (gx#syntax-e _tl152057152083_)))
                                          (let ((_hd152059152091_
                                                 (##car _e152058152088_))
                                                (_tl152060152093_
                                                 (##cdr _e152058152088_)))
                                            (let ((_expr152096_
                                                   _hd152059152091_))
                                              (if (gx#stx-null?
                                                   _tl152060152093_)
                                                  (if (gx#identifier?
                                                       _id152086_)
                                                      (let ((_g157475_
                                                             (gx#core-expand-expression+1
                                                              _expr152096_)))
                                                        (begin
                                                          (let ((_g157476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g157475_)
                             (##vector-length _g157475_)
                             1)))
                    (if (not (##fx= _g157476_ 2))
                        (error "Context expects 2 values" _g157476_)))
                  (let ((_e-stx152098_ (##vector-ref _g157475_ 0))
                        (_e152099_ (##vector-ref _g157475_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id152086_ _e152099_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id152086_)
                                   (cons _e-stx152098_ '())))
                       (gx#stx-source _stx152048_))))))
              (_E152051152066_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152051152066_)))))
                                        (_E152051152066_)))))
                              (_E152051152066_))))
                      (_E152051152066_)))))
          (_E152050152101_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx151992_)
        (let* ((_e151993152006_ _stx151992_)
               (_E151995152010_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151993152006_)))
               (_E151994152044_
                (lambda ()
                  (if (gx#stx-pair? _e151993152006_)
                      (let ((_e151996152014_ (gx#syntax-e _e151993152006_)))
                        (let ((_hd151997152017_ (##car _e151996152014_))
                              (_tl151998152019_ (##cdr _e151996152014_)))
                          (if (gx#stx-pair? _tl151998152019_)
                              (let ((_e151999152022_
                                     (gx#syntax-e _tl151998152019_)))
                                (let ((_hd152000152025_
                                       (##car _e151999152022_))
                                      (_tl152001152027_
                                       (##cdr _e151999152022_)))
                                  (let ((_id152030_ _hd152000152025_))
                                    (if (gx#stx-pair? _tl152001152027_)
                                        (let ((_e152002152032_
                                               (gx#syntax-e _tl152001152027_)))
                                          (let ((_hd152003152035_
                                                 (##car _e152002152032_))
                                                (_tl152004152037_
                                                 (##cdr _e152002152032_)))
                                            (let ((_alias-id152040_
                                                   _hd152003152035_))
                                              (if (gx#stx-null?
                                                   _tl152004152037_)
                                                  (if (and (gx#identifier?
                                                            _id152030_)
                                                           (gx#identifier?
                                                            _alias-id152040_))
                                                      (let ((_alias-id152042_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id152040_)))
                                                        (gx#core-bind-alias!__0
                                                         _id152030_
                                                         _alias-id152042_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id152030_)
                             (cons _alias-id152042_ '())))))
              (_E151995152010_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151995152010_)))))
                                        (_E151995152010_)))))
                              (_E151995152010_))))
                      (_E151995152010_)))))
          (_E151994152044_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx151935_ _wrap?151936_)
        (let* ((_e151937151947_ _stx151935_)
               (_E151939151951_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151937151947_)))
               (_E151938151978_
                (lambda ()
                  (if (gx#stx-pair? _e151937151947_)
                      (let ((_e151940151955_ (gx#syntax-e _e151937151947_)))
                        (let ((_hd151941151958_ (##car _e151940151955_))
                              (_tl151942151960_ (##cdr _e151940151955_)))
                          (if (gx#stx-pair? _tl151942151960_)
                              (let ((_e151943151963_
                                     (gx#syntax-e _tl151942151960_)))
                                (let ((_hd151944151966_
                                       (##car _e151943151963_))
                                      (_tl151945151968_
                                       (##cdr _e151943151963_)))
                                  (let* ((_hd151971_ _hd151944151966_)
                                         (_body151973_ _tl151945151968_))
                                    (if (gx#core-bind-values? _hd151971_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd151971_)
                                           (let ((_body151976_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd151971_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx151935_
                                                               _body151973_)
                                                              '()))))
                                             (if _wrap?151936_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body151976_)
                                                  (gx#stx-source _stx151935_))
                                                 _body151976_)))
                                         gx#current-expander-context
                                         (let ((__obj157468
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157468)
                                           __obj157468))
                                        (_E151939151951_)))))
                              (_E151939151951_))))
                      (_E151939151951_)))))
          (_E151938151978_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx151985_)
        (let ((_wrap?151987_ '#t))
          (gx#core-expand-lambda%__% _stx151985_ _wrap?151987_))))
    (define gx#core-expand-lambda%
      (lambda _g157478_
        (let ((_g157477_ (##length _g157478_)))
          (cond ((##fx= _g157477_ 1)
                 (apply (lambda (_stx151985_)
                          (gx#core-expand-lambda%__0 _stx151985_))
                        _g157478_))
                ((##fx= _g157477_ 2)
                 (apply (lambda (_stx151989_ _wrap?151990_)
                          (gx#core-expand-lambda%__%
                           _stx151989_
                           _wrap?151990_))
                        _g157478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g157478_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx151899_)
        (let* ((_e151900151907_ _stx151899_)
               (_E151902151911_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151900151907_)))
               (_E151901151930_
                (lambda ()
                  (if (gx#stx-pair? _e151900151907_)
                      (let ((_e151903151915_ (gx#syntax-e _e151900151907_)))
                        (let ((_hd151904151918_ (##car _e151903151915_))
                              (_tl151905151920_ (##cdr _e151903151915_)))
                          (let ((_clauses151923_ _tl151905151920_))
                            (if (gx#stx-list? _clauses151923_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause151925_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause151925_)
                                       (let ((_$e151927_
                                              (gx#stx-source _clause151925_)))
                                         (if _$e151927_
                                             _$e151927_
                                             (gx#stx-source _stx151899_))))
                                      '#f))
                                   _clauses151923_))
                                 (gx#stx-source _stx151899_))
                                (_E151902151911_)))))
                      (_E151902151911_)))))
          (_E151901151930_))))
    (define gx#core-expand-let-values%
      (lambda (_stx151853_)
        (let* ((_e151854151864_ _stx151853_)
               (_E151856151868_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151854151864_)))
               (_E151855151895_
                (lambda ()
                  (if (gx#stx-pair? _e151854151864_)
                      (let ((_e151857151872_ (gx#syntax-e _e151854151864_)))
                        (let ((_hd151858151875_ (##car _e151857151872_))
                              (_tl151859151877_ (##cdr _e151857151872_)))
                          (if (gx#stx-pair? _tl151859151877_)
                              (let ((_e151860151880_
                                     (gx#syntax-e _tl151859151877_)))
                                (let ((_hd151861151883_
                                       (##car _e151860151880_))
                                      (_tl151862151885_
                                       (##cdr _e151860151880_)))
                                  (let* ((_hd151888_ _hd151861151883_)
                                         (_body151890_ _tl151862151885_))
                                    (if (gx#core-expand-let-bind? _hd151888_)
                                        (let ((_expressions151892_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd151888_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd151888_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd151888_
                                                           _expressions151892_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx151853_
                         _body151890_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx151853_)))
                                           gx#current-expander-context
                                           (let ((__obj157469
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157469)
                                             __obj157469)))
                                        (_E151856151868_)))))
                              (_E151856151868_))))
                      (_E151856151868_)))))
          (_E151855151895_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx151798_ _form151799_)
        (let* ((_e151800151810_ _stx151798_)
               (_E151802151814_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151800151810_)))
               (_E151801151839_
                (lambda ()
                  (if (gx#stx-pair? _e151800151810_)
                      (let ((_e151803151818_ (gx#syntax-e _e151800151810_)))
                        (let ((_hd151804151821_ (##car _e151803151818_))
                              (_tl151805151823_ (##cdr _e151803151818_)))
                          (if (gx#stx-pair? _tl151805151823_)
                              (let ((_e151806151826_
                                     (gx#syntax-e _tl151805151823_)))
                                (let ((_hd151807151829_
                                       (##car _e151806151826_))
                                      (_tl151808151831_
                                       (##cdr _e151806151826_)))
                                  (let* ((_hd151834_ _hd151807151829_)
                                         (_body151836_ _tl151808151831_))
                                    (if (gx#core-expand-let-bind? _hd151834_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd151834_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form151799_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd151834_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd151834_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx151798_
                                                               _body151836_)
                                                              '())))
                                            (gx#stx-source _stx151798_)))
                                         gx#current-expander-context
                                         (let ((__obj157470
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157470)
                                           __obj157470))
                                        (_E151802151814_)))))
                              (_E151802151814_))))
                      (_E151802151814_)))))
          (_E151801151839_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx151846_)
        (let ((_form151848_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx151846_ _form151848_))))
    (define gx#core-expand-letrec-values%
      (lambda _g157480_
        (let ((_g157479_ (##length _g157480_)))
          (cond ((##fx= _g157479_ 1)
                 (apply (lambda (_stx151846_)
                          (gx#core-expand-letrec-values%__0 _stx151846_))
                        _g157480_))
                ((##fx= _g157479_ 2)
                 (apply (lambda (_stx151850_ _form151851_)
                          (gx#core-expand-letrec-values%__%
                           _stx151850_
                           _form151851_))
                        _g157480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g157480_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx151795_)
        (gx#core-expand-letrec-values%__% _stx151795_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx151752_)
        (if (gx#stx-list? _stx151752_)
            (gx#stx-andmap
             (lambda (_bind151754_)
               (let* ((_e151755151765_ _bind151754_)
                      (_E151757151769_ (lambda () '#f))
                      (_E151756151791_
                       (lambda ()
                         (if (gx#stx-pair? _e151755151765_)
                             (let ((_e151758151773_
                                    (gx#syntax-e _e151755151765_)))
                               (let ((_hd151759151776_ (##car _e151758151773_))
                                     (_tl151760151778_
                                      (##cdr _e151758151773_)))
                                 (let ((_hd151781_ _hd151759151776_))
                                   (if (gx#stx-pair? _tl151760151778_)
                                       (let ((_e151761151783_
                                              (gx#syntax-e _tl151760151778_)))
                                         (let ((_hd151762151786_
                                                (##car _e151761151783_))
                                               (_tl151763151788_
                                                (##cdr _e151761151783_)))
                                           (if (gx#stx-null? _tl151763151788_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd151781_)
                                                   (_E151757151769_))
                                               (_E151757151769_))))
                                       (_E151757151769_)))))
                             (_E151757151769_)))))
                 (_E151756151791_)))
             _stx151752_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind151711_)
        (let* ((_e151712151722_ _bind151711_)
               (_E151714151726_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151712151722_)))
               (_E151713151748_
                (lambda ()
                  (if (gx#stx-pair? _e151712151722_)
                      (let ((_e151715151730_ (gx#syntax-e _e151712151722_)))
                        (let ((_hd151716151733_ (##car _e151715151730_))
                              (_tl151717151735_ (##cdr _e151715151730_)))
                          (if (gx#stx-pair? _tl151717151735_)
                              (let ((_e151718151738_
                                     (gx#syntax-e _tl151717151735_)))
                                (let ((_hd151719151741_
                                       (##car _e151718151738_))
                                      (_tl151720151743_
                                       (##cdr _e151718151738_)))
                                  (let ((_expr151746_ _hd151719151741_))
                                    (if (gx#stx-null? _tl151720151743_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151746_)
                                            (_E151714151726_))
                                        (_E151714151726_)))))
                              (_E151714151726_))))
                      (_E151714151726_)))))
          (_E151713151748_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind151670_)
        (let* ((_e151671151681_ _bind151670_)
               (_E151673151685_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151671151681_)))
               (_E151672151707_
                (lambda ()
                  (if (gx#stx-pair? _e151671151681_)
                      (let ((_e151674151689_ (gx#syntax-e _e151671151681_)))
                        (let ((_hd151675151692_ (##car _e151674151689_))
                              (_tl151676151694_ (##cdr _e151674151689_)))
                          (let ((_hd151697_ _hd151675151692_))
                            (if (gx#stx-pair? _tl151676151694_)
                                (let ((_e151677151699_
                                       (gx#syntax-e _tl151676151694_)))
                                  (let ((_hd151678151702_
                                         (##car _e151677151699_))
                                        (_tl151679151704_
                                         (##cdr _e151677151699_)))
                                    (if (gx#stx-null? _tl151679151704_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd151697_)
                                            (_E151673151685_))
                                        (_E151673151685_))))
                                (_E151673151685_)))))
                      (_E151673151685_)))))
          (_E151672151707_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind151628_ _expr151629_)
        (let* ((_e151630151640_ _bind151628_)
               (_E151632151644_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151630151640_)))
               (_E151631151666_
                (lambda ()
                  (if (gx#stx-pair? _e151630151640_)
                      (let ((_e151633151648_ (gx#syntax-e _e151630151640_)))
                        (let ((_hd151634151651_ (##car _e151633151648_))
                              (_tl151635151653_ (##cdr _e151633151648_)))
                          (let ((_hd151656_ _hd151634151651_))
                            (if (gx#stx-pair? _tl151635151653_)
                                (let ((_e151636151658_
                                       (gx#syntax-e _tl151635151653_)))
                                  (let ((_hd151637151661_
                                         (##car _e151636151658_))
                                        (_tl151638151663_
                                         (##cdr _e151636151658_)))
                                    (if (gx#stx-null? _tl151638151663_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd151656_)
                                                  (cons _expr151629_ '()))
                                            (_E151632151644_))
                                        (_E151632151644_))))
                                (_E151632151644_)))))
                      (_E151632151644_)))))
          (_E151631151666_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx151582_)
        (let* ((_e151583151593_ _stx151582_)
               (_E151585151597_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151583151593_)))
               (_E151584151624_
                (lambda ()
                  (if (gx#stx-pair? _e151583151593_)
                      (let ((_e151586151601_ (gx#syntax-e _e151583151593_)))
                        (let ((_hd151587151604_ (##car _e151586151601_))
                              (_tl151588151606_ (##cdr _e151586151601_)))
                          (if (gx#stx-pair? _tl151588151606_)
                              (let ((_e151589151609_
                                     (gx#syntax-e _tl151588151606_)))
                                (let ((_hd151590151612_
                                       (##car _e151589151609_))
                                      (_tl151591151614_
                                       (##cdr _e151589151609_)))
                                  (let* ((_hd151617_ _hd151590151612_)
                                         (_body151619_ _tl151591151614_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151617_)
                                        (let ((_expanders151621_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd151617_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd151617_
                                              _expanders151621_)
                                             (gx#core-expand-local-block
                                              _stx151582_
                                              _body151619_))
                                           gx#current-expander-context
                                           (let ((__obj157471
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj157471)
                                             __obj157471)))
                                        (_E151585151597_)))))
                              (_E151585151597_))))
                      (_E151585151597_)))))
          (_E151584151624_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx151531_)
        (let* ((_e151532151542_ _stx151531_)
               (_E151534151546_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151532151542_)))
               (_E151533151578_
                (lambda ()
                  (if (gx#stx-pair? _e151532151542_)
                      (let ((_e151535151550_ (gx#syntax-e _e151532151542_)))
                        (let ((_hd151536151553_ (##car _e151535151550_))
                              (_tl151537151555_ (##cdr _e151535151550_)))
                          (if (gx#stx-pair? _tl151537151555_)
                              (let ((_e151538151558_
                                     (gx#syntax-e _tl151537151555_)))
                                (let ((_hd151539151561_
                                       (##car _e151538151558_))
                                      (_tl151540151563_
                                       (##cdr _e151538151558_)))
                                  (let* ((_hd151566_ _hd151539151561_)
                                         (_body151568_ _tl151540151563_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd151566_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd151566_
                                            (make-list
                                             (gx#stx-length _hd151566_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g151570151573_
                                                     _g151571151575_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g151570151573_
                                               _g151571151575_
                                               '#t))
                                            _hd151566_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd151566_))
                                           (gx#core-expand-local-block
                                            _stx151531_
                                            _body151568_))
                                         gx#current-expander-context
                                         (let ((__obj157472
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj157472)
                                           __obj157472))
                                        (_E151534151546_)))))
                              (_E151534151546_))))
                      (_E151534151546_)))))
          (_E151533151578_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx151488_)
        (if (gx#stx-list? _stx151488_)
            (gx#stx-andmap
             (lambda (_bind151490_)
               (let* ((_e151491151501_ _bind151490_)
                      (_E151493151505_ (lambda () '#f))
                      (_E151492151527_
                       (lambda ()
                         (if (gx#stx-pair? _e151491151501_)
                             (let ((_e151494151509_
                                    (gx#syntax-e _e151491151501_)))
                               (let ((_hd151495151512_ (##car _e151494151509_))
                                     (_tl151496151514_
                                      (##cdr _e151494151509_)))
                                 (let ((_hd151517_ _hd151495151512_))
                                   (if (gx#stx-pair? _tl151496151514_)
                                       (let ((_e151497151519_
                                              (gx#syntax-e _tl151496151514_)))
                                         (let ((_hd151498151522_
                                                (##car _e151497151519_))
                                               (_tl151499151524_
                                                (##cdr _e151497151519_)))
                                           (if (gx#stx-null? _tl151499151524_)
                                               (if '#t
                                                   (gx#identifier? _hd151517_)
                                                   (_E151493151505_))
                                               (_E151493151505_))))
                                       (_E151493151505_)))))
                             (_E151493151505_)))))
                 (_E151492151527_)))
             _stx151488_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind151445_)
        (let* ((_e151446151456_ _bind151445_)
               (_E151448151460_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151446151456_)))
               (_E151447151484_
                (lambda ()
                  (if (gx#stx-pair? _e151446151456_)
                      (let ((_e151449151464_ (gx#syntax-e _e151446151456_)))
                        (let ((_hd151450151467_ (##car _e151449151464_))
                              (_tl151451151469_ (##cdr _e151449151464_)))
                          (if (gx#stx-pair? _tl151451151469_)
                              (let ((_e151452151472_
                                     (gx#syntax-e _tl151451151469_)))
                                (let ((_hd151453151475_
                                       (##car _e151452151472_))
                                      (_tl151454151477_
                                       (##cdr _e151452151472_)))
                                  (let ((_expr151480_ _hd151453151475_))
                                    (if (gx#stx-null? _tl151454151477_)
                                        (if '#t
                                            (let ((_g157481_
                                                   (gx#core-expand-expression+1
                                                    _expr151480_)))
                                              (begin
                                                (let ((_g157482_
                                                       (if (##values?
                                                            _g157481_)
                                                           (##vector-length
                                                            _g157481_)
                                                           1)))
                                                  (if (not (##fx= _g157482_ 2))
                                                      (error "Context expects 2 values"
                                                             _g157482_)))
                                                (let ((_e151482_
                                                       (##vector-ref
                                                        _g157481_
                                                        1)))
                                                  _e151482_)))
                                            (_E151448151460_))
                                        (_E151448151460_)))))
                              (_E151448151460_))))
                      (_E151448151460_)))))
          (_E151447151484_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind151390_ _e151391_ _rebind?151392_)
        (let* ((_e151393151403_ _bind151390_)
               (_E151395151407_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151393151403_)))
               (_E151394151429_
                (lambda ()
                  (if (gx#stx-pair? _e151393151403_)
                      (let ((_e151396151411_ (gx#syntax-e _e151393151403_)))
                        (let ((_hd151397151414_ (##car _e151396151411_))
                              (_tl151398151416_ (##cdr _e151396151411_)))
                          (let ((_id151419_ _hd151397151414_))
                            (if (gx#stx-pair? _tl151398151416_)
                                (let ((_e151399151421_
                                       (gx#syntax-e _tl151398151416_)))
                                  (let ((_hd151400151424_
                                         (##car _e151399151421_))
                                        (_tl151401151426_
                                         (##cdr _e151399151421_)))
                                    (if (gx#stx-null? _tl151401151426_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id151419_
                                             _e151391_
                                             _rebind?151392_)
                                            (_E151395151407_))
                                        (_E151395151407_))))
                                (_E151395151407_)))))
                      (_E151395151407_)))))
          (_E151394151429_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind151436_ _e151437_)
        (let ((_rebind?151439_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind151436_
           _e151437_
           _rebind?151439_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g157484_
        (let ((_g157483_ (##length _g157484_)))
          (cond ((##fx= _g157483_ 2)
                 (apply (lambda (_bind151436_ _e151437_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind151436_
                           _e151437_))
                        _g157484_))
                ((##fx= _g157483_ 3)
                 (apply (lambda (_bind151441_ _e151442_ _rebind?151443_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind151441_
                           _e151442_
                           _rebind?151443_))
                        _g157484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g157484_))))))
    (define gx#core-expand-expression%
      (lambda (_stx151348_)
        (let* ((_e151349151359_ _stx151348_)
               (_E151351151363_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151349151359_)))
               (_E151350151385_
                (lambda ()
                  (if (gx#stx-pair? _e151349151359_)
                      (let ((_e151352151367_ (gx#syntax-e _e151349151359_)))
                        (let ((_hd151353151370_ (##car _e151352151367_))
                              (_tl151354151372_ (##cdr _e151352151367_)))
                          (if (gx#stx-pair? _tl151354151372_)
                              (let ((_e151355151375_
                                     (gx#syntax-e _tl151354151372_)))
                                (let ((_hd151356151378_
                                       (##car _e151355151375_))
                                      (_tl151357151380_
                                       (##cdr _e151355151375_)))
                                  (let ((_expr151383_ _hd151356151378_))
                                    (if (gx#stx-null? _tl151357151380_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr151383_)
                                            (_E151351151363_))
                                        (_E151351151363_)))))
                              (_E151351151363_))))
                      (_E151351151363_)))))
          (_E151350151385_))))
    (define gx#core-expand-quote%
      (lambda (_stx151307_)
        (let* ((_e151308151318_ _stx151307_)
               (_E151310151322_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151308151318_)))
               (_E151309151344_
                (lambda ()
                  (if (gx#stx-pair? _e151308151318_)
                      (let ((_e151311151326_ (gx#syntax-e _e151308151318_)))
                        (let ((_hd151312151329_ (##car _e151311151326_))
                              (_tl151313151331_ (##cdr _e151311151326_)))
                          (if (gx#stx-pair? _tl151313151331_)
                              (let ((_e151314151334_
                                     (gx#syntax-e _tl151313151331_)))
                                (let ((_hd151315151337_
                                       (##car _e151314151334_))
                                      (_tl151316151339_
                                       (##cdr _e151314151334_)))
                                  (let ((_e151342_ _hd151315151337_))
                                    (if (gx#stx-null? _tl151316151339_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e151342_)
                                                         '()))
                                             (gx#stx-source _stx151307_))
                                            (_E151310151322_))
                                        (_E151310151322_)))))
                              (_E151310151322_))))
                      (_E151310151322_)))))
          (_E151309151344_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx151266_)
        (let* ((_e151267151277_ _stx151266_)
               (_E151269151281_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151267151277_)))
               (_E151268151303_
                (lambda ()
                  (if (gx#stx-pair? _e151267151277_)
                      (let ((_e151270151285_ (gx#syntax-e _e151267151277_)))
                        (let ((_hd151271151288_ (##car _e151270151285_))
                              (_tl151272151290_ (##cdr _e151270151285_)))
                          (if (gx#stx-pair? _tl151272151290_)
                              (let ((_e151273151293_
                                     (gx#syntax-e _tl151272151290_)))
                                (let ((_hd151274151296_
                                       (##car _e151273151293_))
                                      (_tl151275151298_
                                       (##cdr _e151273151293_)))
                                  (let ((_e151301_ _hd151274151296_))
                                    (if (gx#stx-null? _tl151275151298_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e151301_)
                                                         '()))
                                             (gx#stx-source _stx151266_))
                                            (_E151269151281_))
                                        (_E151269151281_)))))
                              (_E151269151281_))))
                      (_E151269151281_)))))
          (_E151268151303_))))
    (define gx#core-expand-call%
      (lambda (_stx151223_)
        (let* ((_e151224151234_ _stx151223_)
               (_E151226151238_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151224151234_)))
               (_E151225151262_
                (lambda ()
                  (if (gx#stx-pair? _e151224151234_)
                      (let ((_e151227151242_ (gx#syntax-e _e151224151234_)))
                        (let ((_hd151228151245_ (##car _e151227151242_))
                              (_tl151229151247_ (##cdr _e151227151242_)))
                          (if (gx#stx-pair? _tl151229151247_)
                              (let ((_e151230151250_
                                     (gx#syntax-e _tl151229151247_)))
                                (let ((_hd151231151253_
                                       (##car _e151230151250_))
                                      (_tl151232151255_
                                       (##cdr _e151230151250_)))
                                  (let* ((_rator151258_ _hd151231151253_)
                                         (_args151260_ _tl151232151255_))
                                    (if (gx#stx-list? _args151260_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator151258_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args151260_))
                                         (gx#stx-source _stx151223_))
                                        (_E151226151238_)))))
                              (_E151226151238_))))
                      (_E151226151238_)))))
          (_E151225151262_))))
    (define gx#core-expand-if%
      (lambda (_stx151156_)
        (let* ((_e151157151173_ _stx151156_)
               (_E151159151177_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151157151173_)))
               (_E151158151219_
                (lambda ()
                  (if (gx#stx-pair? _e151157151173_)
                      (let ((_e151160151181_ (gx#syntax-e _e151157151173_)))
                        (let ((_hd151161151184_ (##car _e151160151181_))
                              (_tl151162151186_ (##cdr _e151160151181_)))
                          (if (gx#stx-pair? _tl151162151186_)
                              (let ((_e151163151189_
                                     (gx#syntax-e _tl151162151186_)))
                                (let ((_hd151164151192_
                                       (##car _e151163151189_))
                                      (_tl151165151194_
                                       (##cdr _e151163151189_)))
                                  (let ((_test151197_ _hd151164151192_))
                                    (if (gx#stx-pair? _tl151165151194_)
                                        (let ((_e151166151199_
                                               (gx#syntax-e _tl151165151194_)))
                                          (let ((_hd151167151202_
                                                 (##car _e151166151199_))
                                                (_tl151168151204_
                                                 (##cdr _e151166151199_)))
                                            (let ((_K151207_ _hd151167151202_))
                                              (if (gx#stx-pair?
                                                   _tl151168151204_)
                                                  (let ((_e151169151209_
                                                         (gx#syntax-e
                                                          _tl151168151204_)))
                                                    (let ((_hd151170151212_
                                                           (##car _e151169151209_))
                                                          (_tl151171151214_
                                                           (##cdr _e151169151209_)))
                                                      (let ((_E151217_
                                                             _hd151170151212_))
                                                        (if (gx#stx-null?
                                                             _tl151171151214_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test151197_)
                                     (cons (gx#core-expand-expression
                                            _K151207_)
                                           (cons (gx#core-expand-expression
                                                  _E151217_)
                                                 '()))))
                         (gx#stx-source _stx151156_))
                        (_E151159151177_))
                    (_E151159151177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151159151177_)))))
                                        (_E151159151177_)))))
                              (_E151159151177_))))
                      (_E151159151177_)))))
          (_E151158151219_))))
    (define gx#core-expand-ref%
      (lambda (_stx151115_)
        (let* ((_e151116151126_ _stx151115_)
               (_E151118151130_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151116151126_)))
               (_E151117151152_
                (lambda ()
                  (if (gx#stx-pair? _e151116151126_)
                      (let ((_e151119151134_ (gx#syntax-e _e151116151126_)))
                        (let ((_hd151120151137_ (##car _e151119151134_))
                              (_tl151121151139_ (##cdr _e151119151134_)))
                          (if (gx#stx-pair? _tl151121151139_)
                              (let ((_e151122151142_
                                     (gx#syntax-e _tl151121151139_)))
                                (let ((_hd151123151145_
                                       (##car _e151122151142_))
                                      (_tl151124151147_
                                       (##cdr _e151122151142_)))
                                  (let ((_id151150_ _hd151123151145_))
                                    (if (gx#stx-null? _tl151124151147_)
                                        (if (gx#identifier? _id151150_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id151150_
                                                          _stx151115_)
                                                         '()))
                                             (gx#stx-source _stx151115_))
                                            (_E151118151130_))
                                        (_E151118151130_)))))
                              (_E151118151130_))))
                      (_E151118151130_)))))
          (_E151117151152_))))
    (define gx#core-expand-setq%
      (lambda (_stx151061_)
        (let* ((_e151062151075_ _stx151061_)
               (_E151064151079_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e151062151075_)))
               (_E151063151111_
                (lambda ()
                  (if (gx#stx-pair? _e151062151075_)
                      (let ((_e151065151083_ (gx#syntax-e _e151062151075_)))
                        (let ((_hd151066151086_ (##car _e151065151083_))
                              (_tl151067151088_ (##cdr _e151065151083_)))
                          (if (gx#stx-pair? _tl151067151088_)
                              (let ((_e151068151091_
                                     (gx#syntax-e _tl151067151088_)))
                                (let ((_hd151069151094_
                                       (##car _e151068151091_))
                                      (_tl151070151096_
                                       (##cdr _e151068151091_)))
                                  (let ((_id151099_ _hd151069151094_))
                                    (if (gx#stx-pair? _tl151070151096_)
                                        (let ((_e151071151101_
                                               (gx#syntax-e _tl151070151096_)))
                                          (let ((_hd151072151104_
                                                 (##car _e151071151101_))
                                                (_tl151073151106_
                                                 (##cdr _e151071151101_)))
                                            (let ((_expr151109_
                                                   _hd151072151104_))
                                              (if (gx#stx-null?
                                                   _tl151073151106_)
                                                  (if (gx#identifier?
                                                       _id151099_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id151099_
                            _stx151061_)
                           (cons (gx#core-expand-expression _expr151109_)
                                 '())))
               (gx#stx-source _stx151061_))
              (_E151064151079_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E151064151079_)))))
                                        (_E151064151079_)))))
                              (_E151064151079_))))
                      (_E151064151079_)))))
          (_E151063151111_))))
    (define gx#macro-expand-extern
      (lambda (_stx150909_)
        (letrec ((_generate150911_
                  (lambda (_body150941_)
                    (let _lp150943_ ((_rest150945_ _body150941_)
                                     (_ns150946_
                                      (gx#core-context-namespace__0))
                                     (_r150947_ '()))
                      (let* ((_e150948150963_ _rest150945_)
                             (_E150961150967_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e150948150963_)))
                             (_E150957150971_
                              (lambda ()
                                (if (gx#stx-null? _e150948150963_)
                                    (if '#t
                                        (reverse _r150947_)
                                        (_E150961150967_))
                                    (_E150961150967_))))
                             (_E150950151028_
                              (lambda ()
                                (if (gx#stx-pair? _e150948150963_)
                                    (let ((_e150958150975_
                                           (gx#syntax-e _e150948150963_)))
                                      (let ((_hd150959150978_
                                             (##car _e150958150975_))
                                            (_tl150960150980_
                                             (##cdr _e150958150975_)))
                                        (let* ((_hd150983_ _hd150959150978_)
                                               (_rest150985_ _tl150960150980_))
                                          (if '#t
                                              (if (gx#identifier? _hd150983_)
                                                  (_lp150943_
                                                   _rest150985_
                                                   _ns150946_
                                                   (cons (cons _hd150983_
                                                               (cons (if _ns150946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd150983_
                                  _ns150946_
                                  '"#"
                                  _hd150983_)
                                 _hd150983_)
                             '()))
                 _r150947_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e150986150996_
                                                          _hd150983_)
                                                         (_E150988151000_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e150986150996_)))
                                                         (_E150987151024_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e150986150996_)
                        (let ((_e150989151004_ (gx#syntax-e _e150986150996_)))
                          (let ((_hd150990151007_ (##car _e150989151004_))
                                (_tl150991151009_ (##cdr _e150989151004_)))
                            (let ((_id151012_ _hd150990151007_))
                              (if (gx#stx-pair? _tl150991151009_)
                                  (let ((_e150992151014_
                                         (gx#syntax-e _tl150991151009_)))
                                    (let ((_hd150993151017_
                                           (##car _e150992151014_))
                                          (_tl150994151019_
                                           (##cdr _e150992151014_)))
                                      (let ((_eid151022_ _hd150993151017_))
                                        (if (gx#stx-null? _tl150994151019_)
                                            (if (and (gx#identifier?
                                                      _id151012_)
                                                     (gx#identifier?
                                                      _eid151022_))
                                                (_lp150943_
                                                 _rest150985_
                                                 _ns150946_
                                                 (cons (cons _id151012_
                                                             (cons _eid151022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r150947_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150988151000_))
                                            (_E150988151000_)))))
                                  (_E150988151000_)))))
                        (_E150988151000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E150987151024_)))
                                              (_E150957150971_)))))
                                    (_E150957150971_))))
                             (_E150949151057_
                              (lambda ()
                                (if (gx#stx-pair? _e150948150963_)
                                    (let ((_e150951151032_
                                           (gx#syntax-e _e150948150963_)))
                                      (let ((_hd150952151035_
                                             (##car _e150951151032_))
                                            (_tl150953151037_
                                             (##cdr _e150951151032_)))
                                        (if (eq? (gx#stx-e _hd150952151035_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl150953151037_)
                                                (let ((_e150954151040_
                                                       (gx#syntax-e
                                                        _tl150953151037_)))
                                                  (let ((_hd150955151043_
                                                         (##car _e150954151040_))
                                                        (_tl150956151045_
                                                         (##cdr _e150954151040_)))
                                                    (let* ((_ns151048_
                                                            _hd150955151043_)
                                                           (_rest151050_
                                                            _tl150956151045_))
                                                      (if '#t
                                                          (let ((_ns151055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns151048_)
                             (symbol->string (gx#stx-e _ns151048_))
                             (if (or (gx#stx-string? _ns151048_)
                                     (gx#stx-false? _ns151048_))
                                 (gx#stx-e _ns151048_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx150909_
                                  _ns151048_)))))
                    (_lp150943_ _rest151050_ _ns151055_ _r150947_))
                  (_E150950151028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E150950151028_))
                                            (_E150950151028_))))
                                    (_E150950151028_)))))
                        (_E150949151057_))))))
          (let* ((_e150912150919_ _stx150909_)
                 (_E150914150923_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150912150919_)))
                 (_E150913150937_
                  (lambda ()
                    (if (gx#stx-pair? _e150912150919_)
                        (let ((_e150915150927_ (gx#syntax-e _e150912150919_)))
                          (let ((_hd150916150930_ (##car _e150915150927_))
                                (_tl150917150932_ (##cdr _e150915150927_)))
                            (let ((_body150935_ _tl150917150932_))
                              (if (gx#stx-list? _body150935_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate150911_ _body150935_))
                                  (_E150914150923_)))))
                        (_E150914150923_)))))
            (_E150913150937_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx150855_)
        (let* ((_e150856150869_ _stx150855_)
               (_E150858150873_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150856150869_)))
               (_E150857150905_
                (lambda ()
                  (if (gx#stx-pair? _e150856150869_)
                      (let ((_e150859150877_ (gx#syntax-e _e150856150869_)))
                        (let ((_hd150860150880_ (##car _e150859150877_))
                              (_tl150861150882_ (##cdr _e150859150877_)))
                          (if (gx#stx-pair? _tl150861150882_)
                              (let ((_e150862150885_
                                     (gx#syntax-e _tl150861150882_)))
                                (let ((_hd150863150888_
                                       (##car _e150862150885_))
                                      (_tl150864150890_
                                       (##cdr _e150862150885_)))
                                  (let ((_hd150893_ _hd150863150888_))
                                    (if (gx#stx-pair? _tl150864150890_)
                                        (let ((_e150865150895_
                                               (gx#syntax-e _tl150864150890_)))
                                          (let ((_hd150866150898_
                                                 (##car _e150865150895_))
                                                (_tl150867150900_
                                                 (##cdr _e150865150895_)))
                                            (let ((_expr150903_
                                                   _hd150866150898_))
                                              (if (gx#stx-null?
                                                   _tl150867150900_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd150893_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd150893_)
                          (cons _expr150903_ '())))
              (_E150858150873_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150858150873_)))))
                                        (_E150858150873_)))))
                              (_E150858150873_))))
                      (_E150858150873_)))))
          (_E150857150905_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx150801_)
        (let* ((_e150802150815_ _stx150801_)
               (_E150804150819_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150802150815_)))
               (_E150803150851_
                (lambda ()
                  (if (gx#stx-pair? _e150802150815_)
                      (let ((_e150805150823_ (gx#syntax-e _e150802150815_)))
                        (let ((_hd150806150826_ (##car _e150805150823_))
                              (_tl150807150828_ (##cdr _e150805150823_)))
                          (if (gx#stx-pair? _tl150807150828_)
                              (let ((_e150808150831_
                                     (gx#syntax-e _tl150807150828_)))
                                (let ((_hd150809150834_
                                       (##car _e150808150831_))
                                      (_tl150810150836_
                                       (##cdr _e150808150831_)))
                                  (let ((_hd150839_ _hd150809150834_))
                                    (if (gx#stx-pair? _tl150810150836_)
                                        (let ((_e150811150841_
                                               (gx#syntax-e _tl150810150836_)))
                                          (let ((_hd150812150844_
                                                 (##car _e150811150841_))
                                                (_tl150813150846_
                                                 (##cdr _e150811150841_)))
                                            (let ((_expr150849_
                                                   _hd150812150844_))
                                              (if (gx#stx-null?
                                                   _tl150813150846_)
                                                  (if (gx#identifier?
                                                       _hd150839_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd150839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr150849_ '())))
              (_E150804150819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150804150819_)))))
                                        (_E150804150819_)))))
                              (_E150804150819_))))
                      (_E150804150819_)))))
          (_E150803150851_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx150747_)
        (let* ((_e150748150761_ _stx150747_)
               (_E150750150765_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150748150761_)))
               (_E150749150797_
                (lambda ()
                  (if (gx#stx-pair? _e150748150761_)
                      (let ((_e150751150769_ (gx#syntax-e _e150748150761_)))
                        (let ((_hd150752150772_ (##car _e150751150769_))
                              (_tl150753150774_ (##cdr _e150751150769_)))
                          (if (gx#stx-pair? _tl150753150774_)
                              (let ((_e150754150777_
                                     (gx#syntax-e _tl150753150774_)))
                                (let ((_hd150755150780_
                                       (##car _e150754150777_))
                                      (_tl150756150782_
                                       (##cdr _e150754150777_)))
                                  (let ((_id150785_ _hd150755150780_))
                                    (if (gx#stx-pair? _tl150756150782_)
                                        (let ((_e150757150787_
                                               (gx#syntax-e _tl150756150782_)))
                                          (let ((_hd150758150790_
                                                 (##car _e150757150787_))
                                                (_tl150759150792_
                                                 (##cdr _e150757150787_)))
                                            (let ((_alias-id150795_
                                                   _hd150758150790_))
                                              (if (gx#stx-null?
                                                   _tl150759150792_)
                                                  (if (and (gx#identifier?
                                                            _id150785_)
                                                           (gx#identifier?
                                                            _alias-id150795_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id150785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id150795_ '())))
              (_E150750150765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150750150765_)))))
                                        (_E150750150765_)))))
                              (_E150750150765_))))
                      (_E150750150765_)))))
          (_E150749150797_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx150704_)
        (let* ((_e150705150715_ _stx150704_)
               (_E150707150719_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150705150715_)))
               (_E150706150743_
                (lambda ()
                  (if (gx#stx-pair? _e150705150715_)
                      (let ((_e150708150723_ (gx#syntax-e _e150705150715_)))
                        (let ((_hd150709150726_ (##car _e150708150723_))
                              (_tl150710150728_ (##cdr _e150708150723_)))
                          (if (gx#stx-pair? _tl150710150728_)
                              (let ((_e150711150731_
                                     (gx#syntax-e _tl150710150728_)))
                                (let ((_hd150712150734_
                                       (##car _e150711150731_))
                                      (_tl150713150736_
                                       (##cdr _e150711150731_)))
                                  (let* ((_hd150739_ _hd150712150734_)
                                         (_body150741_ _tl150713150736_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd150739_)
                                             (gx#stx-list? _body150741_)
                                             (not (gx#stx-null? _body150741_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd150739_)
                                         _body150741_)
                                        (_E150707150719_)))))
                              (_E150707150719_))))
                      (_E150707150719_)))))
          (_E150706150743_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx150640_)
        (letrec ((_generate150642_
                  (lambda (_clause150672_)
                    (let* ((_e150673150680_ _clause150672_)
                           (_E150675150684_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx150640_
                               _clause150672_)))
                           (_E150674150700_
                            (lambda ()
                              (if (gx#stx-pair? _e150673150680_)
                                  (let ((_e150676150688_
                                         (gx#syntax-e _e150673150680_)))
                                    (let ((_hd150677150691_
                                           (##car _e150676150688_))
                                          (_tl150678150693_
                                           (##cdr _e150676150688_)))
                                      (let* ((_hd150696_ _hd150677150691_)
                                             (_body150698_ _tl150678150693_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd150696_)
                                                 (gx#stx-list? _body150698_)
                                                 (not (gx#stx-null?
                                                       _body150698_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd150696_)
                                                   _body150698_)
                                             (gx#stx-source _clause150672_))
                                            (_E150675150684_)))))
                                  (_E150675150684_)))))
                      (_E150674150700_)))))
          (let* ((_e150643150650_ _stx150640_)
                 (_E150645150654_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150643150650_)))
                 (_E150644150668_
                  (lambda ()
                    (if (gx#stx-pair? _e150643150650_)
                        (let ((_e150646150658_ (gx#syntax-e _e150643150650_)))
                          (let ((_hd150647150661_ (##car _e150646150658_))
                                (_tl150648150663_ (##cdr _e150646150658_)))
                            (let ((_clauses150666_ _tl150648150663_))
                              (if (gx#stx-list? _clauses150666_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate150642_
                                    _clauses150666_))
                                  (_E150645150654_)))))
                        (_E150645150654_)))))
            (_E150644150668_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx150541_ _form150542_)
        (letrec ((_generate150544_
                  (lambda (_bind150587_)
                    (let* ((_e150588150598_ _bind150587_)
                           (_E150590150602_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx150541_
                               _bind150587_)))
                           (_E150589150626_
                            (lambda ()
                              (if (gx#stx-pair? _e150588150598_)
                                  (let ((_e150591150606_
                                         (gx#syntax-e _e150588150598_)))
                                    (let ((_hd150592150609_
                                           (##car _e150591150606_))
                                          (_tl150593150611_
                                           (##cdr _e150591150606_)))
                                      (let ((_ids150614_ _hd150592150609_))
                                        (if (gx#stx-pair? _tl150593150611_)
                                            (let ((_e150594150616_
                                                   (gx#syntax-e
                                                    _tl150593150611_)))
                                              (let ((_hd150595150619_
                                                     (##car _e150594150616_))
                                                    (_tl150596150621_
                                                     (##cdr _e150594150616_)))
                                                (let ((_expr150624_
                                                       _hd150595150619_))
                                                  (if (gx#stx-null?
                                                       _tl150596150621_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids150614_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids150614_)
                        (cons _expr150624_ '()))
                  (_E150590150602_))
              (_E150590150602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E150590150602_)))))
                                  (_E150590150602_)))))
                      (_E150589150626_)))))
          (let* ((_e150545150555_ _stx150541_)
                 (_E150547150559_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e150545150555_)))
                 (_E150546150583_
                  (lambda ()
                    (if (gx#stx-pair? _e150545150555_)
                        (let ((_e150548150563_ (gx#syntax-e _e150545150555_)))
                          (let ((_hd150549150566_ (##car _e150548150563_))
                                (_tl150550150568_ (##cdr _e150548150563_)))
                            (if (gx#stx-pair? _tl150550150568_)
                                (let ((_e150551150571_
                                       (gx#syntax-e _tl150550150568_)))
                                  (let ((_hd150552150574_
                                         (##car _e150551150571_))
                                        (_tl150553150576_
                                         (##cdr _e150551150571_)))
                                    (let* ((_hd150579_ _hd150552150574_)
                                           (_body150581_ _tl150553150576_))
                                      (if (and (gx#stx-list? _hd150579_)
                                               (gx#stx-list? _body150581_)
                                               (not (gx#stx-null?
                                                     _body150581_)))
                                          (gx#core-cons*
                                           _form150542_
                                           (gx#stx-map1
                                            _generate150544_
                                            _hd150579_)
                                           _body150581_)
                                          (_E150547150559_)))))
                                (_E150547150559_))))
                        (_E150547150559_)))))
            (_E150546150583_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx150633_)
        (let ((_form150635_ '%#let-values))
          (gx#macro-expand-let-values__% _stx150633_ _form150635_))))
    (define gx#macro-expand-let-values
      (lambda _g157486_
        (let ((_g157485_ (##length _g157486_)))
          (cond ((##fx= _g157485_ 1)
                 (apply (lambda (_stx150633_)
                          (gx#macro-expand-let-values__0 _stx150633_))
                        _g157486_))
                ((##fx= _g157485_ 2)
                 (apply (lambda (_stx150637_ _form150638_)
                          (gx#macro-expand-let-values__%
                           _stx150637_
                           _form150638_))
                        _g157486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g157486_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx150538_)
        (gx#macro-expand-let-values__% _stx150538_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx150536_)
        (gx#macro-expand-let-values__% _stx150536_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx150427_)
        (let* ((_e150428150454_ _stx150427_)
               (_E150440150458_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e150428150454_)))
               (_E150430150500_
                (lambda ()
                  (if (gx#stx-pair? _e150428150454_)
                      (let ((_e150441150462_ (gx#syntax-e _e150428150454_)))
                        (let ((_hd150442150465_ (##car _e150441150462_))
                              (_tl150443150467_ (##cdr _e150441150462_)))
                          (if (gx#stx-pair? _tl150443150467_)
                              (let ((_e150444150470_
                                     (gx#syntax-e _tl150443150467_)))
                                (let ((_hd150445150473_
                                       (##car _e150444150470_))
                                      (_tl150446150475_
                                       (##cdr _e150444150470_)))
                                  (let ((_test150478_ _hd150445150473_))
                                    (if (gx#stx-pair? _tl150446150475_)
                                        (let ((_e150447150480_
                                               (gx#syntax-e _tl150446150475_)))
                                          (let ((_hd150448150483_
                                                 (##car _e150447150480_))
                                                (_tl150449150485_
                                                 (##cdr _e150447150480_)))
                                            (let ((_K150488_ _hd150448150483_))
                                              (if (gx#stx-pair?
                                                   _tl150449150485_)
                                                  (let ((_e150450150490_
                                                         (gx#syntax-e
                                                          _tl150449150485_)))
                                                    (let ((_hd150451150493_
                                                           (##car _e150450150490_))
                                                          (_tl150452150495_
                                                           (##cdr _e150450150490_)))
                                                      (let ((_E150498_
                                                             _hd150451150493_))
                                                        (if (gx#stx-null?
                                                             _tl150452150495_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test150478_
                         _K150488_
                         _E150498_)
                        (_E150440150458_))
                    (_E150440150458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E150440150458_)))))
                                        (_E150440150458_)))))
                              (_E150440150458_))))
                      (_E150440150458_))))
               (_E150429150532_
                (lambda ()
                  (if (gx#stx-pair? _e150428150454_)
                      (let ((_e150431150504_ (gx#syntax-e _e150428150454_)))
                        (let ((_hd150432150507_ (##car _e150431150504_))
                              (_tl150433150509_ (##cdr _e150431150504_)))
                          (if (gx#stx-pair? _tl150433150509_)
                              (let ((_e150434150512_
                                     (gx#syntax-e _tl150433150509_)))
                                (let ((_hd150435150515_
                                       (##car _e150434150512_))
                                      (_tl150436150517_
                                       (##cdr _e150434150512_)))
                                  (let ((_test150520_ _hd150435150515_))
                                    (if (gx#stx-pair? _tl150436150517_)
                                        (let ((_e150437150522_
                                               (gx#syntax-e _tl150436150517_)))
                                          (let ((_hd150438150525_
                                                 (##car _e150437150522_))
                                                (_tl150439150527_
                                                 (##cdr _e150437150522_)))
                                            (let ((_K150530_ _hd150438150525_))
                                              (if (gx#stx-null?
                                                   _tl150439150527_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test150520_
                                                       _K150530_
                                                       '#!void)
                                                      (_E150430150500_))
                                                  (_E150430150500_)))))
                                        (_E150430150500_)))))
                              (_E150430150500_))))
                      (_E150430150500_)))))
          (_E150429150532_))))
    (define gx#free-identifier=?
      (lambda (_xid150415_ _yid150416_)
        (let ((_xe150418_ (gx#resolve-identifier__0 _xid150415_))
              (_ye150419_ (gx#resolve-identifier__0 _yid150416_)))
          (if (and _xe150418_ _ye150419_)
              (let ((_$e150421_ (eq? _xe150418_ _ye150419_)))
                (if _$e150421_
                    _$e150421_
                    (if (##structure-instance-of? _xe150418_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye150419_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe150418_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye150419_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe150418_ _ye150419_)
                  '#f
                  (gx#stx-eq? _xid150415_ _yid150416_))))))
    (define gx#bound-identifier=?
      (lambda (_xid150399_ _yid150400_)
        (letrec ((_context150402_
                  (lambda (_e150413_)
                    (if (##structure-direct-instance-of?
                         _e150413_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e150413_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks150403_
                  (lambda (_e150411_)
                    (if (symbol? _e150411_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e150411_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e150411_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e150411_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap150404_
                  (lambda (_e150409_)
                    (if (symbol? _e150409_)
                        _e150409_
                        (gx#syntax-local-unwrap _e150409_)))))
          (let ((_x150406_ (_unwrap150404_ _xid150399_))
                (_y150407_ (_unwrap150404_ _yid150400_)))
            (if (gx#stx-eq? _x150406_ _y150407_)
                (if (eq? (_context150402_ _x150406_)
                         (_context150402_ _y150407_))
                    (equal? (_marks150403_ _x150406_)
                            (_marks150403_ _y150407_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx150397_)
        (if (gx#identifier? _stx150397_)
            (gx#core-identifier=? _stx150397_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx150395_)
        (if (gx#identifier? _stx150395_)
            (gx#core-identifier=? _stx150395_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x150393_)
        (if (gx#identifier? _x150393_)
            (if (not (gx#underscore? _x150393_)) _x150393_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx150339_ _where150340_)
        (let _lp150342_ ((_rest150344_ (gx#syntax->list _stx150339_)))
          (let* ((_rest150345150353_ _rest150344_)
                 (_else150347150361_ (lambda () '#t))
                 (_K150349150371_
                  (lambda (_rest150364_ _hd150365_)
                    (if (not (gx#identifier? _hd150365_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where150340_
                         _hd150365_)
                        (if (find (lambda (_g150366150368_)
                                    (gx#bound-identifier=?
                                     _g150366150368_
                                     _hd150365_))
                                  _rest150364_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where150340_
                             _hd150365_)
                            (_lp150342_ _rest150364_))))))
            (if (##pair? _rest150345150353_)
                (let ((_hd150350150374_ (##car _rest150345150353_))
                      (_tl150351150376_ (##cdr _rest150345150353_)))
                  (let* ((_hd150379_ _hd150350150374_)
                         (_rest150381_ _tl150351150376_))
                    (_K150349150371_ _rest150381_ _hd150379_)))
                (_else150347150361_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx150386_)
        (let ((_where150388_ _stx150386_))
          (gx#check-duplicate-identifiers__% _stx150386_ _where150388_))))
    (define gx#check-duplicate-identifiers
      (lambda _g157488_
        (let ((_g157487_ (##length _g157488_)))
          (cond ((##fx= _g157487_ 1)
                 (apply (lambda (_stx150386_)
                          (gx#check-duplicate-identifiers__0 _stx150386_))
                        _g157488_))
                ((##fx= _g157487_ 2)
                 (apply (lambda (_stx150390_ _where150391_)
                          (gx#check-duplicate-identifiers__%
                           _stx150390_
                           _where150391_))
                        _g157488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g157488_))))))
    (define gx#core-bind-values?
      (lambda (_stx150331_)
        (gx#stx-andmap
         (lambda (_x150333_)
           (let ((_$e150335_ (gx#identifier? _x150333_)))
             (if _$e150335_ _$e150335_ (gx#stx-false? _x150333_))))
         _stx150331_)))
    (define gx#core-bind-values!__%
      (lambda (_stx150295_ _rebind?150296_ _phi150297_ _ctx150298_)
        (gx#stx-for-each1
         (lambda (_id150300_)
           (if (gx#identifier? _id150300_)
               (gx#core-bind-runtime!__%
                _id150300_
                _rebind?150296_
                _phi150297_
                _ctx150298_)
               '#!void))
         _stx150295_)))
    (define gx#core-bind-values!__0
      (lambda (_stx150305_)
        (let* ((_rebind?150307_ '#f)
               (_phi150309_ (gx#current-expander-phi))
               (_ctx150311_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150305_
           _rebind?150307_
           _phi150309_
           _ctx150311_))))
    (define gx#core-bind-values!__1
      (lambda (_stx150313_ _rebind?150314_)
        (let* ((_phi150316_ (gx#current-expander-phi))
               (_ctx150318_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150313_
           _rebind?150314_
           _phi150316_
           _ctx150318_))))
    (define gx#core-bind-values!__2
      (lambda (_stx150320_ _rebind?150321_ _phi150322_)
        (let ((_ctx150324_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx150320_
           _rebind?150321_
           _phi150322_
           _ctx150324_))))
    (define gx#core-bind-values!
      (lambda _g157490_
        (let ((_g157489_ (##length _g157490_)))
          (cond ((##fx= _g157489_ 1)
                 (apply (lambda (_stx150305_)
                          (gx#core-bind-values!__0 _stx150305_))
                        _g157490_))
                ((##fx= _g157489_ 2)
                 (apply (lambda (_stx150313_ _rebind?150314_)
                          (gx#core-bind-values!__1
                           _stx150313_
                           _rebind?150314_))
                        _g157490_))
                ((##fx= _g157489_ 3)
                 (apply (lambda (_stx150320_ _rebind?150321_ _phi150322_)
                          (gx#core-bind-values!__2
                           _stx150320_
                           _rebind?150321_
                           _phi150322_))
                        _g157490_))
                ((##fx= _g157489_ 4)
                 (apply (lambda (_stx150326_
                                 _rebind?150327_
                                 _phi150328_
                                 _ctx150329_)
                          (gx#core-bind-values!__%
                           _stx150326_
                           _rebind?150327_
                           _phi150328_
                           _ctx150329_))
                        _g157490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g157490_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx150290_)
        (gx#stx-map1
         (lambda (_x150292_)
           (if (gx#identifier? _x150292_)
               (gx#core-quote-syntax__0 _x150292_)
               '#f))
         _stx150290_)))
    (define gx#core-runtime-ref?
      (lambda (_stx150283_)
        (if (gx#identifier? _stx150283_)
            (let* ((_bind150285_ (gx#resolve-identifier__0 _stx150283_))
                   (_$e150287_ (not _bind150285_)))
              (if _$e150287_
                  _$e150287_
                  (##structure-instance-of?
                   _bind150285_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id150275_ _form150276_)
        (let ((_bind150278_ (gx#resolve-identifier__0 _id150275_)))
          (if (##structure-instance-of? _bind150278_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id150275_)
              (if (not _bind150278_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id150275_)))
                      (gx#core-quote-syntax__0 _id150275_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form150276_
                       _id150275_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form150276_
                   _id150275_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id150234_ _rebind?150235_ _phi150236_ _ctx150237_)
        (let* ((_key150239_ (gx#core-identifier-key _id150234_))
               (_eid150241_
                (gx#make-binding-id__%
                 _key150239_
                 '#f
                 _phi150236_
                 _ctx150237_))
               (_bind150243_
                (if (##structure-instance-of?
                     _ctx150237_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150241_
                     _key150239_
                     _phi150236_
                     _ctx150237_)
                    (if (##structure-instance-of?
                         _ctx150237_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150241_
                         _key150239_
                         _phi150236_)
                        (if (##structure-instance-of?
                             _ctx150237_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid150241_
                             _key150239_
                             _phi150236_)
                            (##structure
                             gx#runtime-binding::t
                             _eid150241_
                             _key150239_
                             _phi150236_))))))
          (gx#bind-identifier!__%
           _id150234_
           _bind150243_
           _rebind?150235_
           _phi150236_
           _ctx150237_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id150249_)
        (let* ((_rebind?150251_ '#f)
               (_phi150253_ (gx#current-expander-phi))
               (_ctx150255_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150249_
           _rebind?150251_
           _phi150253_
           _ctx150255_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id150257_ _rebind?150258_)
        (let* ((_phi150260_ (gx#current-expander-phi))
               (_ctx150262_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150257_
           _rebind?150258_
           _phi150260_
           _ctx150262_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id150264_ _rebind?150265_ _phi150266_)
        (let ((_ctx150268_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id150264_
           _rebind?150265_
           _phi150266_
           _ctx150268_))))
    (define gx#core-bind-runtime!
      (lambda _g157492_
        (let ((_g157491_ (##length _g157492_)))
          (cond ((##fx= _g157491_ 1)
                 (apply (lambda (_id150249_)
                          (gx#core-bind-runtime!__0 _id150249_))
                        _g157492_))
                ((##fx= _g157491_ 2)
                 (apply (lambda (_id150257_ _rebind?150258_)
                          (gx#core-bind-runtime!__1
                           _id150257_
                           _rebind?150258_))
                        _g157492_))
                ((##fx= _g157491_ 3)
                 (apply (lambda (_id150264_ _rebind?150265_ _phi150266_)
                          (gx#core-bind-runtime!__2
                           _id150264_
                           _rebind?150265_
                           _phi150266_))
                        _g157492_))
                ((##fx= _g157491_ 4)
                 (apply (lambda (_id150270_
                                 _rebind?150271_
                                 _phi150272_
                                 _ctx150273_)
                          (gx#core-bind-runtime!__%
                           _id150270_
                           _rebind?150271_
                           _phi150272_
                           _ctx150273_))
                        _g157492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g157492_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id150189_ _eid150190_ _rebind?150191_ _phi150192_ _ctx150193_)
        (let* ((_key150195_ (gx#core-identifier-key _id150189_))
               (_bind150197_
                (if (##structure-instance-of?
                     _ctx150193_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid150190_
                     _key150195_
                     _phi150192_
                     _ctx150193_)
                    (if (##structure-instance-of?
                         _ctx150193_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid150190_
                         _key150195_
                         _phi150192_)
                        (##structure
                         gx#runtime-binding::t
                         _eid150190_
                         _key150195_
                         _phi150192_)))))
          (gx#bind-identifier!__%
           _id150189_
           _bind150197_
           _rebind?150191_
           _phi150192_
           _ctx150193_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id150203_ _eid150204_)
        (let* ((_rebind?150206_ '#f)
               (_phi150208_ (gx#current-expander-phi))
               (_ctx150210_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150203_
           _eid150204_
           _rebind?150206_
           _phi150208_
           _ctx150210_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id150212_ _eid150213_ _rebind?150214_)
        (let* ((_phi150216_ (gx#current-expander-phi))
               (_ctx150218_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150212_
           _eid150213_
           _rebind?150214_
           _phi150216_
           _ctx150218_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id150220_ _eid150221_ _rebind?150222_ _phi150223_)
        (let ((_ctx150225_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id150220_
           _eid150221_
           _rebind?150222_
           _phi150223_
           _ctx150225_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g157494_
        (let ((_g157493_ (##length _g157494_)))
          (cond ((##fx= _g157493_ 2)
                 (apply (lambda (_id150203_ _eid150204_)
                          (gx#core-bind-runtime-reference!__0
                           _id150203_
                           _eid150204_))
                        _g157494_))
                ((##fx= _g157493_ 3)
                 (apply (lambda (_id150212_ _eid150213_ _rebind?150214_)
                          (gx#core-bind-runtime-reference!__1
                           _id150212_
                           _eid150213_
                           _rebind?150214_))
                        _g157494_))
                ((##fx= _g157493_ 4)
                 (apply (lambda (_id150220_
                                 _eid150221_
                                 _rebind?150222_
                                 _phi150223_)
                          (gx#core-bind-runtime-reference!__2
                           _id150220_
                           _eid150221_
                           _rebind?150222_
                           _phi150223_))
                        _g157494_))
                ((##fx= _g157493_ 5)
                 (apply (lambda (_id150227_
                                 _eid150228_
                                 _rebind?150229_
                                 _phi150230_
                                 _ctx150231_)
                          (gx#core-bind-runtime-reference!__%
                           _id150227_
                           _eid150228_
                           _rebind?150229_
                           _phi150230_
                           _ctx150231_))
                        _g157494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g157494_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id150149_ _eid150150_ _rebind?150151_ _phi150152_ _ctx150153_)
        (gx#bind-identifier!__%
         _id150149_
         (##structure
          gx#extern-binding::t
          _eid150150_
          (gx#core-identifier-key _id150149_)
          _phi150152_)
         _rebind?150151_
         _phi150152_
         _ctx150153_)))
    (define gx#core-bind-extern!__0
      (lambda (_id150158_ _eid150159_)
        (let* ((_rebind?150161_ '#f)
               (_phi150163_ (gx#current-expander-phi))
               (_ctx150165_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150158_
           _eid150159_
           _rebind?150161_
           _phi150163_
           _ctx150165_))))
    (define gx#core-bind-extern!__1
      (lambda (_id150167_ _eid150168_ _rebind?150169_)
        (let* ((_phi150171_ (gx#current-expander-phi))
               (_ctx150173_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150167_
           _eid150168_
           _rebind?150169_
           _phi150171_
           _ctx150173_))))
    (define gx#core-bind-extern!__2
      (lambda (_id150175_ _eid150176_ _rebind?150177_ _phi150178_)
        (let ((_ctx150180_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id150175_
           _eid150176_
           _rebind?150177_
           _phi150178_
           _ctx150180_))))
    (define gx#core-bind-extern!
      (lambda _g157496_
        (let ((_g157495_ (##length _g157496_)))
          (cond ((##fx= _g157495_ 2)
                 (apply (lambda (_id150158_ _eid150159_)
                          (gx#core-bind-extern!__0 _id150158_ _eid150159_))
                        _g157496_))
                ((##fx= _g157495_ 3)
                 (apply (lambda (_id150167_ _eid150168_ _rebind?150169_)
                          (gx#core-bind-extern!__1
                           _id150167_
                           _eid150168_
                           _rebind?150169_))
                        _g157496_))
                ((##fx= _g157495_ 4)
                 (apply (lambda (_id150175_
                                 _eid150176_
                                 _rebind?150177_
                                 _phi150178_)
                          (gx#core-bind-extern!__2
                           _id150175_
                           _eid150176_
                           _rebind?150177_
                           _phi150178_))
                        _g157496_))
                ((##fx= _g157495_ 5)
                 (apply (lambda (_id150182_
                                 _eid150183_
                                 _rebind?150184_
                                 _phi150185_
                                 _ctx150186_)
                          (gx#core-bind-extern!__%
                           _id150182_
                           _eid150183_
                           _rebind?150184_
                           _phi150185_
                           _ctx150186_))
                        _g157496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g157496_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id150103_ _e150104_ _rebind?150105_ _phi150106_ _ctx150107_)
        (gx#bind-identifier!__%
         _id150103_
         (let ((_key150112_ (gx#core-identifier-key _id150103_))
               (_e150113_
                (if (or (##structure-instance-of? _e150104_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e150104_
                         'gx#expander-context::t))
                    _e150104_
                    (##structure
                     gx#user-expander::t
                     _e150104_
                     _ctx150107_
                     _phi150106_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key150112_ '#t _phi150106_ _ctx150107_)
            _key150112_
            _phi150106_
            _e150113_))
         _rebind?150105_
         _phi150106_
         _ctx150107_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id150118_ _e150119_)
        (let* ((_rebind?150121_ '#f)
               (_phi150123_ (gx#current-expander-phi))
               (_ctx150125_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150118_
           _e150119_
           _rebind?150121_
           _phi150123_
           _ctx150125_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id150127_ _e150128_ _rebind?150129_)
        (let* ((_phi150131_ (gx#current-expander-phi))
               (_ctx150133_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150127_
           _e150128_
           _rebind?150129_
           _phi150131_
           _ctx150133_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id150135_ _e150136_ _rebind?150137_ _phi150138_)
        (let ((_ctx150140_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id150135_
           _e150136_
           _rebind?150137_
           _phi150138_
           _ctx150140_))))
    (define gx#core-bind-syntax!
      (lambda _g157498_
        (let ((_g157497_ (##length _g157498_)))
          (cond ((##fx= _g157497_ 2)
                 (apply (lambda (_id150118_ _e150119_)
                          (gx#core-bind-syntax!__0 _id150118_ _e150119_))
                        _g157498_))
                ((##fx= _g157497_ 3)
                 (apply (lambda (_id150127_ _e150128_ _rebind?150129_)
                          (gx#core-bind-syntax!__1
                           _id150127_
                           _e150128_
                           _rebind?150129_))
                        _g157498_))
                ((##fx= _g157497_ 4)
                 (apply (lambda (_id150135_
                                 _e150136_
                                 _rebind?150137_
                                 _phi150138_)
                          (gx#core-bind-syntax!__2
                           _id150135_
                           _e150136_
                           _rebind?150137_
                           _phi150138_))
                        _g157498_))
                ((##fx= _g157497_ 5)
                 (apply (lambda (_id150142_
                                 _e150143_
                                 _rebind?150144_
                                 _phi150145_
                                 _ctx150146_)
                          (gx#core-bind-syntax!__%
                           _id150142_
                           _e150143_
                           _rebind?150144_
                           _phi150145_
                           _ctx150146_))
                        _g157498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g157498_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id150086_ _e150087_ _rebind?150088_)
        (gx#core-bind-syntax!__%
         _id150086_
         _e150087_
         _rebind?150088_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id150093_ _e150094_)
        (let ((_rebind?150096_ '#f))
          (gx#core-bind-root-syntax!__%
           _id150093_
           _e150094_
           _rebind?150096_))))
    (define gx#core-bind-root-syntax!
      (lambda _g157500_
        (let ((_g157499_ (##length _g157500_)))
          (cond ((##fx= _g157499_ 2)
                 (apply (lambda (_id150093_ _e150094_)
                          (gx#core-bind-root-syntax!__0 _id150093_ _e150094_))
                        _g157500_))
                ((##fx= _g157499_ 3)
                 (apply (lambda (_id150098_ _e150099_ _rebind?150100_)
                          (gx#core-bind-root-syntax!__%
                           _id150098_
                           _e150099_
                           _rebind?150100_))
                        _g157500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g157500_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id150044_
               _alias-id150045_
               _rebind?150046_
               _phi150047_
               _ctx150048_)
        (gx#bind-identifier!__%
         _id150044_
         (let ((_key150050_ (gx#core-identifier-key _id150044_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key150050_ '#t _phi150047_ _ctx150048_)
            _key150050_
            _phi150047_
            _alias-id150045_))
         _rebind?150046_
         _phi150047_
         _ctx150048_)))
    (define gx#core-bind-alias!__0
      (lambda (_id150055_ _alias-id150056_)
        (let* ((_rebind?150058_ '#f)
               (_phi150060_ (gx#current-expander-phi))
               (_ctx150062_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150055_
           _alias-id150056_
           _rebind?150058_
           _phi150060_
           _ctx150062_))))
    (define gx#core-bind-alias!__1
      (lambda (_id150064_ _alias-id150065_ _rebind?150066_)
        (let* ((_phi150068_ (gx#current-expander-phi))
               (_ctx150070_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150064_
           _alias-id150065_
           _rebind?150066_
           _phi150068_
           _ctx150070_))))
    (define gx#core-bind-alias!__2
      (lambda (_id150072_ _alias-id150073_ _rebind?150074_ _phi150075_)
        (let ((_ctx150077_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id150072_
           _alias-id150073_
           _rebind?150074_
           _phi150075_
           _ctx150077_))))
    (define gx#core-bind-alias!
      (lambda _g157502_
        (let ((_g157501_ (##length _g157502_)))
          (cond ((##fx= _g157501_ 2)
                 (apply (lambda (_id150055_ _alias-id150056_)
                          (gx#core-bind-alias!__0 _id150055_ _alias-id150056_))
                        _g157502_))
                ((##fx= _g157501_ 3)
                 (apply (lambda (_id150064_ _alias-id150065_ _rebind?150066_)
                          (gx#core-bind-alias!__1
                           _id150064_
                           _alias-id150065_
                           _rebind?150066_))
                        _g157502_))
                ((##fx= _g157501_ 4)
                 (apply (lambda (_id150072_
                                 _alias-id150073_
                                 _rebind?150074_
                                 _phi150075_)
                          (gx#core-bind-alias!__2
                           _id150072_
                           _alias-id150073_
                           _rebind?150074_
                           _phi150075_))
                        _g157502_))
                ((##fx= _g157501_ 5)
                 (apply (lambda (_id150079_
                                 _alias-id150080_
                                 _rebind?150081_
                                 _phi150082_
                                 _ctx150083_)
                          (gx#core-bind-alias!__%
                           _id150079_
                           _alias-id150080_
                           _rebind?150081_
                           _phi150082_
                           _ctx150083_))
                        _g157502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g157502_))))))
    (define gx#make-binding-id__%
      (lambda (_key150001_ _syntax?150002_ _phi150003_ _ctx150004_)
        (if (uninterned-symbol? _key150001_)
            (gensym 'L)
            (if (pair? _key150001_)
                (gensym (car _key150001_))
                (if (##structure-instance-of? _ctx150004_ 'gx#top-context::t)
                    (let ((_ns150006_
                           (gx#core-context-namespace__% _ctx150004_)))
                      (if (and (fxzero? _phi150003_) (not _syntax?150002_))
                          (if _ns150006_
                              (make-symbol__1 _ns150006_ '"#" _key150001_)
                              _key150001_)
                          (if _syntax?150002_
                              (make-symbol__1
                               (let ((_$e150008_ _ns150006_))
                                 (if _$e150008_ _$e150008_ '""))
                               '"[:"
                               (number->string _phi150003_)
                               '":]#"
                               _key150001_)
                              (make-symbol__1
                               (let ((_$e150011_ _ns150006_))
                                 (if _$e150011_ _$e150011_ '""))
                               '"["
                               (number->string _phi150003_)
                               '"]#"
                               _key150001_))))
                    (gensym _key150001_))))))
    (define gx#make-binding-id__0
      (lambda (_key150017_)
        (let* ((_syntax?150019_ '#f)
               (_phi150021_ (gx#current-expander-phi))
               (_ctx150023_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150017_
           _syntax?150019_
           _phi150021_
           _ctx150023_))))
    (define gx#make-binding-id__1
      (lambda (_key150025_ _syntax?150026_)
        (let* ((_phi150028_ (gx#current-expander-phi))
               (_ctx150030_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150025_
           _syntax?150026_
           _phi150028_
           _ctx150030_))))
    (define gx#make-binding-id__2
      (lambda (_key150032_ _syntax?150033_ _phi150034_)
        (let ((_ctx150036_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key150032_
           _syntax?150033_
           _phi150034_
           _ctx150036_))))
    (define gx#make-binding-id
      (lambda _g157504_
        (let ((_g157503_ (##length _g157504_)))
          (cond ((##fx= _g157503_ 1)
                 (apply (lambda (_key150017_)
                          (gx#make-binding-id__0 _key150017_))
                        _g157504_))
                ((##fx= _g157503_ 2)
                 (apply (lambda (_key150025_ _syntax?150026_)
                          (gx#make-binding-id__1 _key150025_ _syntax?150026_))
                        _g157504_))
                ((##fx= _g157503_ 3)
                 (apply (lambda (_key150032_ _syntax?150033_ _phi150034_)
                          (gx#make-binding-id__2
                           _key150032_
                           _syntax?150033_
                           _phi150034_))
                        _g157504_))
                ((##fx= _g157503_ 4)
                 (apply (lambda (_key150038_
                                 _syntax?150039_
                                 _phi150040_
                                 _ctx150041_)
                          (gx#make-binding-id__%
                           _key150038_
                           _syntax?150039_
                           _phi150040_
                           _ctx150041_))
                        _g157504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g157504_))))))))
