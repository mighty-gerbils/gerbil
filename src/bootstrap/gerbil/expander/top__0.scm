(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710238838)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89227_)
        (letrec ((_expand-special89229_
                  (lambda (_hd89231_ _K89232_ _rest89233_ _r89234_)
                    (_K89232_
                     _rest89233_
                     (cons (gx#core-expand-top _hd89231_) _r89234_)))))
          (gx#core-expand-block__0 _stx89227_ _expand-special89229_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx88980_)
        (letrec ((_expand-special88982_
                  (lambda (_hd89102_ _K89103_ _rest89104_ _r89105_)
                    (let* ((_K89109_
                            (lambda (_e89107_)
                              (_K89103_ _rest89104_ (cons _e89107_ _r89105_))))
                           (_e8911089139_ _hd89102_)
                           (_E8913489143_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8911089139_)))
                           (_E8913089155_
                            (lambda ()
                              (if (gx#stx-pair? _e8911089139_)
                                  (let ((_e8913589147_
                                         (gx#syntax-e _e8911089139_)))
                                    (let ((_hd8913689150_
                                           (##car _e8913589147_))
                                          (_tl8913789152_
                                           (##cdr _e8913589147_)))
                                      (if (and (gx#identifier? _hd8913689150_)
                                               (gx#core-identifier=?
                                                _hd8913689150_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89109_
                                               (gx#core-expand-define-runtime%
                                                _hd89102_))
                                              (_E8913489143_))
                                          (_E8913489143_))))
                                  (_E8913489143_))))
                           (_E8912689167_
                            (lambda ()
                              (if (gx#stx-pair? _e8911089139_)
                                  (let ((_e8913189159_
                                         (gx#syntax-e _e8911089139_)))
                                    (let ((_hd8913289162_
                                           (##car _e8913189159_))
                                          (_tl8913389164_
                                           (##cdr _e8913189159_)))
                                      (if (and (gx#identifier? _hd8913289162_)
                                               (gx#core-identifier=?
                                                _hd8913289162_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89109_
                                               (gx#core-expand-define-alias%
                                                _hd89102_))
                                              (_E8913089155_))
                                          (_E8913089155_))))
                                  (_E8913089155_))))
                           (_E8911689179_
                            (lambda ()
                              (if (gx#stx-pair? _e8911089139_)
                                  (let ((_e8912789171_
                                         (gx#syntax-e _e8911089139_)))
                                    (let ((_hd8912889174_
                                           (##car _e8912789171_))
                                          (_tl8912989176_
                                           (##cdr _e8912789171_)))
                                      (if (and (gx#identifier? _hd8912889174_)
                                               (gx#core-identifier=?
                                                _hd8912889174_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89109_
                                               (gx#core-expand-define-syntax%
                                                _hd89102_))
                                              (_E8912689167_))
                                          (_E8912689167_))))
                                  (_E8912689167_))))
                           (_E8911289211_
                            (lambda ()
                              (if (gx#stx-pair? _e8911089139_)
                                  (let ((_e8911789183_
                                         (gx#syntax-e _e8911089139_)))
                                    (let ((_hd8911889186_
                                           (##car _e8911789183_))
                                          (_tl8911989188_
                                           (##cdr _e8911789183_)))
                                      (if (and (gx#identifier? _hd8911889186_)
                                               (gx#core-identifier=?
                                                _hd8911889186_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8911989188_)
                                              (let ((_e8912089191_
                                                     (gx#syntax-e
                                                      _tl8911989188_)))
                                                (let ((_hd8912189194_
                                                       (##car _e8912089191_))
                                                      (_tl8912289196_
                                                       (##cdr _e8912089191_)))
                                                  (let ((_hd-bind89199_
                                                         _hd8912189194_))
                                                    (if (gx#stx-pair?
                                                         _tl8912289196_)
                                                        (let ((_e8912389201_
                                                               (gx#syntax-e
                                                                _tl8912289196_)))
                                                          (let ((_hd8912489204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8912389201_))
                        (_tl8912589206_ (##cdr _e8912389201_)))
                    (let ((_expr89209_ _hd8912489204_))
                      (if (gx#stx-null? _tl8912589206_)
                          (if (gx#core-bind-values? _hd-bind89199_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89199_)
                                (_K89109_ _hd89102_))
                              (_E8911689179_))
                          (_E8911689179_)))))
                (_E8911689179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8911689179_))
                                          (_E8911689179_))))
                                  (_E8911689179_))))
                           (_E8911189223_
                            (lambda ()
                              (if (gx#stx-pair? _e8911089139_)
                                  (let ((_e8911389215_
                                         (gx#syntax-e _e8911089139_)))
                                    (let ((_hd8911489218_
                                           (##car _e8911389215_))
                                          (_tl8911589220_
                                           (##cdr _e8911389215_)))
                                      (if (and (gx#identifier? _hd8911489218_)
                                               (gx#core-identifier=?
                                                _hd8911489218_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89109_
                                               (gx#core-expand-begin-syntax%
                                                _hd89102_))
                                              (_E8911289211_))
                                          (_E8911289211_))))
                                  (_E8911289211_)))))
                      (_E8911189223_))))
                 (_eval-body88983_
                  (lambda (_rbody88991_)
                    (let _lp88993_ ((_rest88995_ _rbody88991_)
                                    (_body88996_ '())
                                    (_ebody88997_ '()))
                      (let* ((_rest8899889006_ _rest88995_)
                             (_else8900089014_
                              (lambda ()
                                (values _body88996_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody88997_)
                                          (gx#stx-source _stx88980_))))))
                             (_K8900289090_
                              (lambda (_rest89017_ _hd89018_)
                                (let* ((_e8901989036_ _hd89018_)
                                       (_E8903189040_
                                        (lambda ()
                                          (_lp88993_
                                           _rest89017_
                                           (cons _hd89018_ _body88996_)
                                           (cons _hd89018_ _ebody88997_))))
                                       (_E8902189052_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8901989036_)
                                              (let ((_e8903289044_
                                                     (gx#syntax-e
                                                      _e8901989036_)))
                                                (let ((_hd8903389047_
                                                       (##car _e8903289044_))
                                                      (_tl8903489049_
                                                       (##cdr _e8903289044_)))
                                                  (if (and (gx#identifier?
                                                            _hd8903389047_)
                                                           (gx#core-identifier=?
                                                            _hd8903389047_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp88993_
                                                           _rest89017_
                                                           (cons _hd89018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body88996_)
                   _ebody88997_)
                  (_E8903189040_))
              (_E8903189040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8903189040_))))
                                       (_E8902089086_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8901989036_)
                                              (let ((_e8902289056_
                                                     (gx#syntax-e
                                                      _e8901989036_)))
                                                (let ((_hd8902389059_
                                                       (##car _e8902289056_))
                                                      (_tl8902489061_
                                                       (##cdr _e8902289056_)))
                                                  (if (and (gx#identifier?
                                                            _hd8902389059_)
                                                           (gx#core-identifier=?
                                                            _hd8902389059_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8902489061_)
                                                          (let ((_e8902589064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8902489061_)))
                    (let ((_hd8902689067_ (##car _e8902589064_))
                          (_tl8902789069_ (##cdr _e8902589064_)))
                      (let ((_hd-bind89072_ _hd8902689067_))
                        (if (gx#stx-pair? _tl8902789069_)
                            (let ((_e8902889074_ (gx#syntax-e _tl8902789069_)))
                              (let ((_hd8902989077_ (##car _e8902889074_))
                                    (_tl8903089079_ (##cdr _e8902889074_)))
                                (let ((_expr89082_ _hd8902989077_))
                                  (if (gx#stx-null? _tl8903089079_)
                                      (if '#t
                                          (let ((_ehd89084_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89072_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89082_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89018_))))
                                            (_lp88993_
                                             _rest89017_
                                             (cons _ehd89084_ _body88996_)
                                             (cons _ehd89084_ _ebody88997_)))
                                          (_E8902189052_))
                                      (_E8902189052_)))))
                            (_E8902189052_)))))
                  (_E8902189052_))
              (_E8902189052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8902189052_)))))
                                  (_E8902089086_)))))
                        (if (##pair? _rest8899889006_)
                            (let ((_hd8900389093_ (##car _rest8899889006_))
                                  (_tl8900489095_ (##cdr _rest8899889006_)))
                              (let* ((_hd89098_ _hd8900389093_)
                                     (_rest89100_ _tl8900489095_))
                                (_K8900289090_ _rest89100_ _hd89098_)))
                            (_else8900089014_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody88986_
                     (gx#core-expand-block__1
                      _stx88980_
                      _expand-special88982_
                      '#f))
                    (_g89250_ (_eval-body88983_ _rbody88986_)))
               (begin
                 (let ((_g89251_
                        (if (##values? _g89250_)
                            (##vector-length _g89250_)
                            1)))
                   (if (not (##fx= _g89251_ 2))
                       (error "Context expects 2 values" _g89251_)))
                 (let ((_expanded-body88988_ (##vector-ref _g89250_ 0))
                       (_value88989_ (##vector-ref _g89250_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body88988_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value88989_ '())))
                    (gx#stx-source _stx88980_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx88950_)
        (let* ((_e8895188958_ _stx88950_)
               (_E8895388962_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8895188958_)))
               (_E8895288976_
                (lambda ()
                  (if (gx#stx-pair? _e8895188958_)
                      (let ((_e8895488966_ (gx#syntax-e _e8895188958_)))
                        (let ((_hd8895588969_ (##car _e8895488966_))
                              (_tl8895688971_ (##cdr _e8895488966_)))
                          (let ((_body88974_ _tl8895688971_))
                            (if (gx#stx-list? _body88974_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body88974_)
                                 (gx#stx-source _stx88950_))
                                (_E8895388962_)))))
                      (_E8895388962_)))))
          (_E8895288976_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx88948_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx88948_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx88894_)
        (let* ((_e8889588908_ _stx88894_)
               (_E8889788912_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8889588908_)))
               (_E8889688944_
                (lambda ()
                  (if (gx#stx-pair? _e8889588908_)
                      (let ((_e8889888916_ (gx#syntax-e _e8889588908_)))
                        (let ((_hd8889988919_ (##car _e8889888916_))
                              (_tl8890088921_ (##cdr _e8889888916_)))
                          (if (gx#stx-pair? _tl8890088921_)
                              (let ((_e8890188924_
                                     (gx#syntax-e _tl8890088921_)))
                                (let ((_hd8890288927_ (##car _e8890188924_))
                                      (_tl8890388929_ (##cdr _e8890188924_)))
                                  (let ((_ann88932_ _hd8890288927_))
                                    (if (gx#stx-pair? _tl8890388929_)
                                        (let ((_e8890488934_
                                               (gx#syntax-e _tl8890388929_)))
                                          (let ((_hd8890588937_
                                                 (##car _e8890488934_))
                                                (_tl8890688939_
                                                 (##cdr _e8890488934_)))
                                            (let ((_expr88942_ _hd8890588937_))
                                              (if (gx#stx-null? _tl8890688939_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann88932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr88942_) '())))
               (gx#stx-source _stx88894_))
              (_E8889788912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8889788912_)))))
                                        (_E8889788912_)))))
                              (_E8889788912_))))
                      (_E8889788912_)))))
          (_E8889688944_))))
    (define gx#core-expand-local-block
      (lambda (_stx88618_ _body88619_)
        (letrec ((_expand-special88621_
                  (lambda (_hd88889_ _K88890_ _rest88891_ _r88892_)
                    (_K88890_
                     '()
                     (cons (_expand-internal88622_ _hd88889_ _rest88891_)
                           _r88892_))))
                 (_expand-internal88622_
                  (lambda (_hd88885_ _rest88886_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal88624_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd88885_ _rest88886_))
                          (gx#stx-source _stx88618_))
                         _expand-internal-special88623_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89244
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89244)
                       __obj89244))))
                 (_expand-internal-special88623_
                  (lambda (_hd88780_ _K88781_ _rest88782_ _r88783_)
                    (let* ((_e8878488809_ _hd88780_)
                           (_E8880488813_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8878488809_)))
                           (_E8880088825_
                            (lambda ()
                              (if (gx#stx-pair? _e8878488809_)
                                  (let ((_e8880588817_
                                         (gx#syntax-e _e8878488809_)))
                                    (let ((_hd8880688820_
                                           (##car _e8880588817_))
                                          (_tl8880788822_
                                           (##cdr _e8880588817_)))
                                      (if (and (gx#identifier? _hd8880688820_)
                                               (gx#core-identifier=?
                                                _hd8880688820_
                                                '%#declare))
                                          (if '#t
                                              (_K88781_
                                               _rest88782_
                                               (cons (gx#core-expand-declare%
                                                      _hd88780_)
                                                     _r88783_))
                                              (_E8880488813_))
                                          (_E8880488813_))))
                                  (_E8880488813_))))
                           (_E8879688837_
                            (lambda ()
                              (if (gx#stx-pair? _e8878488809_)
                                  (let ((_e8880188829_
                                         (gx#syntax-e _e8878488809_)))
                                    (let ((_hd8880288832_
                                           (##car _e8880188829_))
                                          (_tl8880388834_
                                           (##cdr _e8880188829_)))
                                      (if (and (gx#identifier? _hd8880288832_)
                                               (gx#core-identifier=?
                                                _hd8880288832_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd88780_)
                                                (_K88781_
                                                 _rest88782_
                                                 _r88783_))
                                              (_E8880088825_))
                                          (_E8880088825_))))
                                  (_E8880088825_))))
                           (_E8878688849_
                            (lambda ()
                              (if (gx#stx-pair? _e8878488809_)
                                  (let ((_e8879788841_
                                         (gx#syntax-e _e8878488809_)))
                                    (let ((_hd8879888844_
                                           (##car _e8879788841_))
                                          (_tl8879988846_
                                           (##cdr _e8879788841_)))
                                      (if (and (gx#identifier? _hd8879888844_)
                                               (gx#core-identifier=?
                                                _hd8879888844_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd88780_)
                                                (_K88781_
                                                 _rest88782_
                                                 _r88783_))
                                              (_E8879688837_))
                                          (_E8879688837_))))
                                  (_E8879688837_))))
                           (_E8878588881_
                            (lambda ()
                              (if (gx#stx-pair? _e8878488809_)
                                  (let ((_e8878788853_
                                         (gx#syntax-e _e8878488809_)))
                                    (let ((_hd8878888856_
                                           (##car _e8878788853_))
                                          (_tl8878988858_
                                           (##cdr _e8878788853_)))
                                      (if (and (gx#identifier? _hd8878888856_)
                                               (gx#core-identifier=?
                                                _hd8878888856_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8878988858_)
                                              (let ((_e8879088861_
                                                     (gx#syntax-e
                                                      _tl8878988858_)))
                                                (let ((_hd8879188864_
                                                       (##car _e8879088861_))
                                                      (_tl8879288866_
                                                       (##cdr _e8879088861_)))
                                                  (let ((_hd-bind88869_
                                                         _hd8879188864_))
                                                    (if (gx#stx-pair?
                                                         _tl8879288866_)
                                                        (let ((_e8879388871_
                                                               (gx#syntax-e
                                                                _tl8879288866_)))
                                                          (let ((_hd8879488874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8879388871_))
                        (_tl8879588876_ (##cdr _e8879388871_)))
                    (let ((_expr88879_ _hd8879488874_))
                      (if (gx#stx-null? _tl8879588876_)
                          (if (gx#core-bind-values? _hd-bind88869_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88869_)
                                (_K88781_
                                 _rest88782_
                                 (cons _hd88780_ _r88783_)))
                              (_E8878688849_))
                          (_E8878688849_)))))
                (_E8878688849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8878688849_))
                                          (_E8878688849_))))
                                  (_E8878688849_)))))
                      (_E8878588881_))))
                 (_wrap-internal88624_
                  (lambda (_rbody88626_)
                    (let _lp88628_ ((_rest88630_ _rbody88626_)
                                    (_decls88631_ '())
                                    (_bind88632_ '())
                                    (_body88633_ '()))
                      (let* ((_e8863488641_ _rest88630_)
                             (_E8863688690_
                              (lambda ()
                                (let* ((_body88685_
                                        (let* ((_body8864488654_ _body88633_)
                                               (_else8864788662_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88633_)
                                                   (gx#stx-source
                                                    _stx88618_)))))
                                          (let ((_K8865288682_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx88618_)))
                                                (_K8864988668_
                                                 (lambda (_expr88666_)
                                                   _expr88666_)))
                                            (let ((_try-match8864688678_
                                                   (lambda ()
                                                     (if (##pair? _body8864488654_)
                                                         (let ((_tl8865188673_
                                                                (##cdr _body8864488654_))
                                                               (_hd8865088671_
                                                                (##car _body8864488654_)))
                                                           (if (##null? _tl8865188673_)
                                                               (let ((_expr88676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8865088671_))
                         (_K8864988668_ _expr88676_))
                       (_else8864788662_)))
                 (_else8864788662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8864488654_)
                                                  (_K8865288682_)
                                                  (_try-match8864688678_))))))
                                       (_body88687_
                                        (if (null? _bind88632_)
                                            _body88685_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind88632_
                                                         (cons _body88685_
                                                               '())))
                                             (gx#stx-source _stx88618_)))))
                                  (if (null? _decls88631_)
                                      _body88687_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls88631_
                                                   (cons _body88687_ '())))
                                       (gx#stx-source _stx88618_))))))
                             (_E8863588776_
                              (lambda ()
                                (if (gx#stx-pair? _e8863488641_)
                                    (let ((_e8863788694_
                                           (gx#syntax-e _e8863488641_)))
                                      (let ((_hd8863888697_
                                             (##car _e8863788694_))
                                            (_tl8863988699_
                                             (##cdr _e8863788694_)))
                                        (let* ((_hd88702_ _hd8863888697_)
                                               (_rest88704_ _tl8863988699_))
                                          (if '#t
                                              (let* ((_e8870588722_ _hd88702_)
                                                     (_E8871788726_
                                                      (lambda ()
                                                        (if (null? _bind88632_)
                                                            (_lp88628_
                                                             _rest88704_
                                                             _decls88631_
                                                             _bind88632_
                                                             (cons _hd88702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body88633_))
                    (_lp88628_
                     _rest88704_
                     _decls88631_
                     (cons (cons '#f (cons _hd88702_ '())) _bind88632_)
                     _body88633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8870788740_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8870588722_)
                                                            (let ((_e8871888730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8870588722_)))
                      (let ((_hd8871988733_ (##car _e8871888730_))
                            (_tl8872088735_ (##cdr _e8871888730_)))
                        (if (and (gx#identifier? _hd8871988733_)
                                 (gx#core-identifier=?
                                  _hd8871988733_
                                  '%#declare))
                            (let ((_xdecls88738_ _tl8872088735_))
                              (if '#t
                                  (_lp88628_
                                   _rest88704_
                                   (gx#stx-foldr
                                    cons
                                    _decls88631_
                                    _xdecls88738_)
                                   _bind88632_
                                   _body88633_)
                                  (_E8871788726_)))
                            (_E8871788726_))))
                    (_E8871788726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8870688772_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8870588722_)
                                                            (let ((_e8870888744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8870588722_)))
                      (let ((_hd8870988747_ (##car _e8870888744_))
                            (_tl8871088749_ (##cdr _e8870888744_)))
                        (if (and (gx#identifier? _hd8870988747_)
                                 (gx#core-identifier=?
                                  _hd8870988747_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8871088749_)
                                (let ((_e8871188752_
                                       (gx#syntax-e _tl8871088749_)))
                                  (let ((_hd8871288755_ (##car _e8871188752_))
                                        (_tl8871388757_ (##cdr _e8871188752_)))
                                    (let ((_hd-bind88760_ _hd8871288755_))
                                      (if (gx#stx-pair? _tl8871388757_)
                                          (let ((_e8871488762_
                                                 (gx#syntax-e _tl8871388757_)))
                                            (let ((_hd8871588765_
                                                   (##car _e8871488762_))
                                                  (_tl8871688767_
                                                   (##cdr _e8871488762_)))
                                              (let ((_expr88770_
                                                     _hd8871588765_))
                                                (if (gx#stx-null?
                                                     _tl8871688767_)
                                                    (if '#t
                                                        (_lp88628_
                                                         _rest88704_
                                                         _decls88631_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind88760_)
                             (cons (gx#core-expand-expression _expr88770_)
                                   '()))
                       _bind88632_)
                 _body88633_)
                (_E8870788740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8870788740_)))))
                                          (_E8870788740_)))))
                                (_E8870788740_))
                            (_E8870788740_))))
                    (_E8870788740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8870688772_))
                                              (_E8863688690_)))))
                                    (_E8863688690_)))))
                        (_E8863588776_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body88619_)
            (gx#stx-source _stx88618_))
           _expand-special88621_))))
    (define gx#core-expand-declare%
      (lambda (_stx88556_)
        (let* ((_e8855788564_ _stx88556_)
               (_E8855988568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8855788564_)))
               (_E8855888614_
                (lambda ()
                  (if (gx#stx-pair? _e8855788564_)
                      (let ((_e8856088572_ (gx#syntax-e _e8855788564_)))
                        (let ((_hd8856188575_ (##car _e8856088572_))
                              (_tl8856288577_ (##cdr _e8856088572_)))
                          (let ((_body88580_ _tl8856288577_))
                            (if (gx#stx-list? _body88580_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl88582_)
                                     (let* ((_e8858388590_ _decl88582_)
                                            (_E8858588594_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8858388590_)))
                                            (_E8858488610_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8858388590_)
                                                   (let ((_e8858688598_
                                                          (gx#syntax-e
                                                           _e8858388590_)))
                                                     (let ((_hd8858788601_
                                                            (##car _e8858688598_))
                                                           (_tl8858888603_
                                                            (##cdr _e8858688598_)))
                                                       (let* ((_head88606_
                                                               _hd8858788601_)
                                                              (_args88608_
                                                               _tl8858888603_))
                                                         (if (gx#stx-list?
                                                              _args88608_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl88582_)
                                                             (_E8858588594_)))))
                                                   (_E8858588594_)))))
                                       (_E8858488610_)))
                                   _body88580_))
                                 (gx#stx-source _stx88556_))
                                (_E8855988568_)))))
                      (_E8855988568_)))))
          (_E8855888614_))))
    (define gx#core-expand-extern%
      (lambda (_stx88460_)
        (let* ((_e8846188468_ _stx88460_)
               (_E8846388472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8846188468_)))
               (_E8846288552_
                (lambda ()
                  (if (gx#stx-pair? _e8846188468_)
                      (let ((_e8846488476_ (gx#syntax-e _e8846188468_)))
                        (let ((_hd8846588479_ (##car _e8846488476_))
                              (_tl8846688481_ (##cdr _e8846488476_)))
                          (let ((_body88484_ _tl8846688481_))
                            (if '#t
                                (let _lp88486_ ((_rest88488_ _body88484_)
                                                (_r88489_ '()))
                                  (let* ((_e8849088504_ _rest88488_)
                                         (_E8850288508_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88460_)))
                                         (_E8849288512_
                                          (lambda ()
                                            (if (gx#stx-null? _e8849088504_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88489_))
                                                     (gx#stx-source
                                                      _stx88460_))
                                                    (_E8850288508_))
                                                (_E8850288508_))))
                                         (_E8849188548_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8849088504_)
                                                (let ((_e8849388516_
                                                       (gx#syntax-e
                                                        _e8849088504_)))
                                                  (let ((_hd8849488519_
                                                         (##car _e8849388516_))
                                                        (_tl8849588521_
                                                         (##cdr _e8849388516_)))
                                                    (if (gx#stx-pair?
                                                         _hd8849488519_)
                                                        (let ((_e8849688524_
                                                               (gx#syntax-e
                                                                _hd8849488519_)))
                                                          (let ((_hd8849788527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8849688524_))
                        (_tl8849888529_ (##cdr _e8849688524_)))
                    (let ((_id88532_ _hd8849788527_))
                      (if (gx#stx-pair? _tl8849888529_)
                          (let ((_e8849988534_ (gx#syntax-e _tl8849888529_)))
                            (let ((_hd8850088537_ (##car _e8849988534_))
                                  (_tl8850188539_ (##cdr _e8849988534_)))
                              (let ((_eid88542_ _hd8850088537_))
                                (if (gx#stx-null? _tl8850188539_)
                                    (let ((_rest88544_ _tl8849588521_))
                                      (if (and (gx#identifier? _id88532_)
                                               (gx#identifier? _eid88542_))
                                          (let ((_eid88546_
                                                 (gx#stx-e _eid88542_)))
                                            (gx#core-bind-extern!__0
                                             _id88532_
                                             _eid88546_)
                                            (_lp88486_
                                             _rest88544_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id88532_)
                                                         (cons _eid88546_ '()))
                                                   _r88489_)))
                                          (_E8849288512_)))
                                    (_E8849288512_)))))
                          (_E8849288512_)))))
                (_E8849288512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8849288512_)))))
                                    (_E8849188548_)))
                                (_E8846388472_)))))
                      (_E8846388472_)))))
          (_E8846288552_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88406_)
        (let* ((_e8840788420_ _stx88406_)
               (_E8840988424_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8840788420_)))
               (_E8840888456_
                (lambda ()
                  (if (gx#stx-pair? _e8840788420_)
                      (let ((_e8841088428_ (gx#syntax-e _e8840788420_)))
                        (let ((_hd8841188431_ (##car _e8841088428_))
                              (_tl8841288433_ (##cdr _e8841088428_)))
                          (if (gx#stx-pair? _tl8841288433_)
                              (let ((_e8841388436_
                                     (gx#syntax-e _tl8841288433_)))
                                (let ((_hd8841488439_ (##car _e8841388436_))
                                      (_tl8841588441_ (##cdr _e8841388436_)))
                                  (let ((_hd88444_ _hd8841488439_))
                                    (if (gx#stx-pair? _tl8841588441_)
                                        (let ((_e8841688446_
                                               (gx#syntax-e _tl8841588441_)))
                                          (let ((_hd8841788449_
                                                 (##car _e8841688446_))
                                                (_tl8841888451_
                                                 (##cdr _e8841688446_)))
                                            (let ((_expr88454_ _hd8841788449_))
                                              (if (gx#stx-null? _tl8841888451_)
                                                  (if (gx#core-bind-values?
                                                       _hd88444_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88444_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88444_)
                             (cons (gx#core-expand-expression _expr88454_)
                                   '())))
                 (gx#stx-source _stx88406_)))
              (_E8840988424_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8840988424_)))))
                                        (_E8840988424_)))))
                              (_E8840988424_))))
                      (_E8840988424_)))))
          (_E8840888456_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88350_)
        (let* ((_e8835188364_ _stx88350_)
               (_E8835388368_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8835188364_)))
               (_E8835288402_
                (lambda ()
                  (if (gx#stx-pair? _e8835188364_)
                      (let ((_e8835488372_ (gx#syntax-e _e8835188364_)))
                        (let ((_hd8835588375_ (##car _e8835488372_))
                              (_tl8835688377_ (##cdr _e8835488372_)))
                          (if (gx#stx-pair? _tl8835688377_)
                              (let ((_e8835788380_
                                     (gx#syntax-e _tl8835688377_)))
                                (let ((_hd8835888383_ (##car _e8835788380_))
                                      (_tl8835988385_ (##cdr _e8835788380_)))
                                  (let ((_id88388_ _hd8835888383_))
                                    (if (gx#stx-pair? _tl8835988385_)
                                        (let ((_e8836088390_
                                               (gx#syntax-e _tl8835988385_)))
                                          (let ((_hd8836188393_
                                                 (##car _e8836088390_))
                                                (_tl8836288395_
                                                 (##cdr _e8836088390_)))
                                            (let ((_binding-id88398_
                                                   _hd8836188393_))
                                              (if (gx#stx-null? _tl8836288395_)
                                                  (if (and (gx#identifier?
                                                            _id88388_)
                                                           (gx#identifier?
                                                            _binding-id88398_))
                                                      (let ((_eid88400_
                                                             (gx#stx-e
                                                              _binding-id88398_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88388_
                                                         _eid88400_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88388_)
                             (cons _eid88400_ '())))))
              (_E8835388368_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8835388368_)))))
                                        (_E8835388368_)))))
                              (_E8835388368_))))
                      (_E8835388368_)))))
          (_E8835288402_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88293_)
        (let* ((_e8829488307_ _stx88293_)
               (_E8829688311_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8829488307_)))
               (_E8829588346_
                (lambda ()
                  (if (gx#stx-pair? _e8829488307_)
                      (let ((_e8829788315_ (gx#syntax-e _e8829488307_)))
                        (let ((_hd8829888318_ (##car _e8829788315_))
                              (_tl8829988320_ (##cdr _e8829788315_)))
                          (if (gx#stx-pair? _tl8829988320_)
                              (let ((_e8830088323_
                                     (gx#syntax-e _tl8829988320_)))
                                (let ((_hd8830188326_ (##car _e8830088323_))
                                      (_tl8830288328_ (##cdr _e8830088323_)))
                                  (let ((_id88331_ _hd8830188326_))
                                    (if (gx#stx-pair? _tl8830288328_)
                                        (let ((_e8830388333_
                                               (gx#syntax-e _tl8830288328_)))
                                          (let ((_hd8830488336_
                                                 (##car _e8830388333_))
                                                (_tl8830588338_
                                                 (##cdr _e8830388333_)))
                                            (let ((_expr88341_ _hd8830488336_))
                                              (if (gx#stx-null? _tl8830588338_)
                                                  (if (gx#identifier?
                                                       _id88331_)
                                                      (let ((_g89252_
                                                             (gx#core-expand-expression+1
                                                              _expr88341_)))
                                                        (begin
                                                          (let ((_g89253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89252_)
                             (##vector-length _g89252_)
                             1)))
                    (if (not (##fx= _g89253_ 2))
                        (error "Context expects 2 values" _g89253_)))
                  (let ((_e-stx88343_ (##vector-ref _g89252_ 0))
                        (_e88344_ (##vector-ref _g89252_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88331_ _e88344_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88331_)
                                   (cons _e-stx88343_ '())))
                       (gx#stx-source _stx88293_))))))
              (_E8829688311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8829688311_)))))
                                        (_E8829688311_)))))
                              (_E8829688311_))))
                      (_E8829688311_)))))
          (_E8829588346_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88237_)
        (let* ((_e8823888251_ _stx88237_)
               (_E8824088255_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8823888251_)))
               (_E8823988289_
                (lambda ()
                  (if (gx#stx-pair? _e8823888251_)
                      (let ((_e8824188259_ (gx#syntax-e _e8823888251_)))
                        (let ((_hd8824288262_ (##car _e8824188259_))
                              (_tl8824388264_ (##cdr _e8824188259_)))
                          (if (gx#stx-pair? _tl8824388264_)
                              (let ((_e8824488267_
                                     (gx#syntax-e _tl8824388264_)))
                                (let ((_hd8824588270_ (##car _e8824488267_))
                                      (_tl8824688272_ (##cdr _e8824488267_)))
                                  (let ((_id88275_ _hd8824588270_))
                                    (if (gx#stx-pair? _tl8824688272_)
                                        (let ((_e8824788277_
                                               (gx#syntax-e _tl8824688272_)))
                                          (let ((_hd8824888280_
                                                 (##car _e8824788277_))
                                                (_tl8824988282_
                                                 (##cdr _e8824788277_)))
                                            (let ((_alias-id88285_
                                                   _hd8824888280_))
                                              (if (gx#stx-null? _tl8824988282_)
                                                  (if (and (gx#identifier?
                                                            _id88275_)
                                                           (gx#identifier?
                                                            _alias-id88285_))
                                                      (let ((_alias-id88287_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88285_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88275_
                                                         _alias-id88287_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88275_)
                             (cons _alias-id88287_ '())))))
              (_E8824088255_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8824088255_)))))
                                        (_E8824088255_)))))
                              (_E8824088255_))))
                      (_E8824088255_)))))
          (_E8823988289_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88180_ _wrap?88181_)
        (let* ((_e8818288192_ _stx88180_)
               (_E8818488196_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8818288192_)))
               (_E8818388223_
                (lambda ()
                  (if (gx#stx-pair? _e8818288192_)
                      (let ((_e8818588200_ (gx#syntax-e _e8818288192_)))
                        (let ((_hd8818688203_ (##car _e8818588200_))
                              (_tl8818788205_ (##cdr _e8818588200_)))
                          (if (gx#stx-pair? _tl8818788205_)
                              (let ((_e8818888208_
                                     (gx#syntax-e _tl8818788205_)))
                                (let ((_hd8818988211_ (##car _e8818888208_))
                                      (_tl8819088213_ (##cdr _e8818888208_)))
                                  (let* ((_hd88216_ _hd8818988211_)
                                         (_body88218_ _tl8819088213_))
                                    (if (gx#core-bind-values? _hd88216_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88216_)
                                           (let ((_body88221_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88216_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88180_
                                                               _body88218_)
                                                              '()))))
                                             (if _wrap?88181_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88221_)
                                                  (gx#stx-source _stx88180_))
                                                 _body88221_)))
                                         gx#current-expander-context
                                         (let ((__obj89245
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89245)
                                           __obj89245))
                                        (_E8818488196_)))))
                              (_E8818488196_))))
                      (_E8818488196_)))))
          (_E8818388223_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88230_)
        (let ((_wrap?88232_ '#t))
          (gx#core-expand-lambda%__% _stx88230_ _wrap?88232_))))
    (define gx#core-expand-lambda%
      (lambda _g89255_
        (let ((_g89254_ (##length _g89255_)))
          (cond ((##fx= _g89254_ 1)
                 (apply (lambda (_stx88230_)
                          (gx#core-expand-lambda%__0 _stx88230_))
                        _g89255_))
                ((##fx= _g89254_ 2)
                 (apply (lambda (_stx88234_ _wrap?88235_)
                          (gx#core-expand-lambda%__% _stx88234_ _wrap?88235_))
                        _g89255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89255_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88144_)
        (let* ((_e8814588152_ _stx88144_)
               (_E8814788156_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8814588152_)))
               (_E8814688175_
                (lambda ()
                  (if (gx#stx-pair? _e8814588152_)
                      (let ((_e8814888160_ (gx#syntax-e _e8814588152_)))
                        (let ((_hd8814988163_ (##car _e8814888160_))
                              (_tl8815088165_ (##cdr _e8814888160_)))
                          (let ((_clauses88168_ _tl8815088165_))
                            (if (gx#stx-list? _clauses88168_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88170_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88170_)
                                       (let ((_$e88172_
                                              (gx#stx-source _clause88170_)))
                                         (if _$e88172_
                                             _$e88172_
                                             (gx#stx-source _stx88144_))))
                                      '#f))
                                   _clauses88168_))
                                 (gx#stx-source _stx88144_))
                                (_E8814788156_)))))
                      (_E8814788156_)))))
          (_E8814688175_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88098_)
        (let* ((_e8809988109_ _stx88098_)
               (_E8810188113_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8809988109_)))
               (_E8810088140_
                (lambda ()
                  (if (gx#stx-pair? _e8809988109_)
                      (let ((_e8810288117_ (gx#syntax-e _e8809988109_)))
                        (let ((_hd8810388120_ (##car _e8810288117_))
                              (_tl8810488122_ (##cdr _e8810288117_)))
                          (if (gx#stx-pair? _tl8810488122_)
                              (let ((_e8810588125_
                                     (gx#syntax-e _tl8810488122_)))
                                (let ((_hd8810688128_ (##car _e8810588125_))
                                      (_tl8810788130_ (##cdr _e8810588125_)))
                                  (let* ((_hd88133_ _hd8810688128_)
                                         (_body88135_ _tl8810788130_))
                                    (if (gx#core-expand-let-bind? _hd88133_)
                                        (let ((_expressions88137_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88133_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88133_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88133_
                                                           _expressions88137_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88098_
                         _body88135_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88098_)))
                                           gx#current-expander-context
                                           (let ((__obj89246
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89246)
                                             __obj89246)))
                                        (_E8810188113_)))))
                              (_E8810188113_))))
                      (_E8810188113_)))))
          (_E8810088140_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88043_ _form88044_)
        (let* ((_e8804588055_ _stx88043_)
               (_E8804788059_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8804588055_)))
               (_E8804688084_
                (lambda ()
                  (if (gx#stx-pair? _e8804588055_)
                      (let ((_e8804888063_ (gx#syntax-e _e8804588055_)))
                        (let ((_hd8804988066_ (##car _e8804888063_))
                              (_tl8805088068_ (##cdr _e8804888063_)))
                          (if (gx#stx-pair? _tl8805088068_)
                              (let ((_e8805188071_
                                     (gx#syntax-e _tl8805088068_)))
                                (let ((_hd8805288074_ (##car _e8805188071_))
                                      (_tl8805388076_ (##cdr _e8805188071_)))
                                  (let* ((_hd88079_ _hd8805288074_)
                                         (_body88081_ _tl8805388076_))
                                    (if (gx#core-expand-let-bind? _hd88079_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88079_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88044_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88079_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88079_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88043_
                                                               _body88081_)
                                                              '())))
                                            (gx#stx-source _stx88043_)))
                                         gx#current-expander-context
                                         (let ((__obj89247
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89247)
                                           __obj89247))
                                        (_E8804788059_)))))
                              (_E8804788059_))))
                      (_E8804788059_)))))
          (_E8804688084_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88091_)
        (let ((_form88093_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88091_ _form88093_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89257_
        (let ((_g89256_ (##length _g89257_)))
          (cond ((##fx= _g89256_ 1)
                 (apply (lambda (_stx88091_)
                          (gx#core-expand-letrec-values%__0 _stx88091_))
                        _g89257_))
                ((##fx= _g89256_ 2)
                 (apply (lambda (_stx88095_ _form88096_)
                          (gx#core-expand-letrec-values%__%
                           _stx88095_
                           _form88096_))
                        _g89257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89257_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88040_)
        (gx#core-expand-letrec-values%__% _stx88040_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx87997_)
        (if (gx#stx-list? _stx87997_)
            (gx#stx-andmap
             (lambda (_bind87999_)
               (let* ((_e8800088010_ _bind87999_)
                      (_E8800288014_ (lambda () '#f))
                      (_E8800188036_
                       (lambda ()
                         (if (gx#stx-pair? _e8800088010_)
                             (let ((_e8800388018_ (gx#syntax-e _e8800088010_)))
                               (let ((_hd8800488021_ (##car _e8800388018_))
                                     (_tl8800588023_ (##cdr _e8800388018_)))
                                 (let ((_hd88026_ _hd8800488021_))
                                   (if (gx#stx-pair? _tl8800588023_)
                                       (let ((_e8800688028_
                                              (gx#syntax-e _tl8800588023_)))
                                         (let ((_hd8800788031_
                                                (##car _e8800688028_))
                                               (_tl8800888033_
                                                (##cdr _e8800688028_)))
                                           (if (gx#stx-null? _tl8800888033_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88026_)
                                                   (_E8800288014_))
                                               (_E8800288014_))))
                                       (_E8800288014_)))))
                             (_E8800288014_)))))
                 (_E8800188036_)))
             _stx87997_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind87956_)
        (let* ((_e8795787967_ _bind87956_)
               (_E8795987971_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8795787967_)))
               (_E8795887993_
                (lambda ()
                  (if (gx#stx-pair? _e8795787967_)
                      (let ((_e8796087975_ (gx#syntax-e _e8795787967_)))
                        (let ((_hd8796187978_ (##car _e8796087975_))
                              (_tl8796287980_ (##cdr _e8796087975_)))
                          (if (gx#stx-pair? _tl8796287980_)
                              (let ((_e8796387983_
                                     (gx#syntax-e _tl8796287980_)))
                                (let ((_hd8796487986_ (##car _e8796387983_))
                                      (_tl8796587988_ (##cdr _e8796387983_)))
                                  (let ((_expr87991_ _hd8796487986_))
                                    (if (gx#stx-null? _tl8796587988_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87991_)
                                            (_E8795987971_))
                                        (_E8795987971_)))))
                              (_E8795987971_))))
                      (_E8795987971_)))))
          (_E8795887993_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind87915_)
        (let* ((_e8791687926_ _bind87915_)
               (_E8791887930_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8791687926_)))
               (_E8791787952_
                (lambda ()
                  (if (gx#stx-pair? _e8791687926_)
                      (let ((_e8791987934_ (gx#syntax-e _e8791687926_)))
                        (let ((_hd8792087937_ (##car _e8791987934_))
                              (_tl8792187939_ (##cdr _e8791987934_)))
                          (let ((_hd87942_ _hd8792087937_))
                            (if (gx#stx-pair? _tl8792187939_)
                                (let ((_e8792287944_
                                       (gx#syntax-e _tl8792187939_)))
                                  (let ((_hd8792387947_ (##car _e8792287944_))
                                        (_tl8792487949_ (##cdr _e8792287944_)))
                                    (if (gx#stx-null? _tl8792487949_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd87942_)
                                            (_E8791887930_))
                                        (_E8791887930_))))
                                (_E8791887930_)))))
                      (_E8791887930_)))))
          (_E8791787952_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind87873_ _expr87874_)
        (let* ((_e8787587885_ _bind87873_)
               (_E8787787889_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8787587885_)))
               (_E8787687911_
                (lambda ()
                  (if (gx#stx-pair? _e8787587885_)
                      (let ((_e8787887893_ (gx#syntax-e _e8787587885_)))
                        (let ((_hd8787987896_ (##car _e8787887893_))
                              (_tl8788087898_ (##cdr _e8787887893_)))
                          (let ((_hd87901_ _hd8787987896_))
                            (if (gx#stx-pair? _tl8788087898_)
                                (let ((_e8788187903_
                                       (gx#syntax-e _tl8788087898_)))
                                  (let ((_hd8788287906_ (##car _e8788187903_))
                                        (_tl8788387908_ (##cdr _e8788187903_)))
                                    (if (gx#stx-null? _tl8788387908_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd87901_)
                                                  (cons _expr87874_ '()))
                                            (_E8787787889_))
                                        (_E8787787889_))))
                                (_E8787787889_)))))
                      (_E8787787889_)))))
          (_E8787687911_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx87827_)
        (let* ((_e8782887838_ _stx87827_)
               (_E8783087842_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8782887838_)))
               (_E8782987869_
                (lambda ()
                  (if (gx#stx-pair? _e8782887838_)
                      (let ((_e8783187846_ (gx#syntax-e _e8782887838_)))
                        (let ((_hd8783287849_ (##car _e8783187846_))
                              (_tl8783387851_ (##cdr _e8783187846_)))
                          (if (gx#stx-pair? _tl8783387851_)
                              (let ((_e8783487854_
                                     (gx#syntax-e _tl8783387851_)))
                                (let ((_hd8783587857_ (##car _e8783487854_))
                                      (_tl8783687859_ (##cdr _e8783487854_)))
                                  (let* ((_hd87862_ _hd8783587857_)
                                         (_body87864_ _tl8783687859_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87862_)
                                        (let ((_expanders87866_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd87862_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd87862_
                                              _expanders87866_)
                                             (gx#core-expand-local-block
                                              _stx87827_
                                              _body87864_))
                                           gx#current-expander-context
                                           (let ((__obj89248
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89248)
                                             __obj89248)))
                                        (_E8783087842_)))))
                              (_E8783087842_))))
                      (_E8783087842_)))))
          (_E8782987869_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx87776_)
        (let* ((_e8777787787_ _stx87776_)
               (_E8777987791_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8777787787_)))
               (_E8777887823_
                (lambda ()
                  (if (gx#stx-pair? _e8777787787_)
                      (let ((_e8778087795_ (gx#syntax-e _e8777787787_)))
                        (let ((_hd8778187798_ (##car _e8778087795_))
                              (_tl8778287800_ (##cdr _e8778087795_)))
                          (if (gx#stx-pair? _tl8778287800_)
                              (let ((_e8778387803_
                                     (gx#syntax-e _tl8778287800_)))
                                (let ((_hd8778487806_ (##car _e8778387803_))
                                      (_tl8778587808_ (##cdr _e8778387803_)))
                                  (let* ((_hd87811_ _hd8778487806_)
                                         (_body87813_ _tl8778587808_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87811_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd87811_
                                            (make-list
                                             (gx#stx-length _hd87811_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8781587818_
                                                     _g8781687820_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8781587818_
                                               _g8781687820_
                                               '#t))
                                            _hd87811_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd87811_))
                                           (gx#core-expand-local-block
                                            _stx87776_
                                            _body87813_))
                                         gx#current-expander-context
                                         (let ((__obj89249
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89249)
                                           __obj89249))
                                        (_E8777987791_)))))
                              (_E8777987791_))))
                      (_E8777987791_)))))
          (_E8777887823_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx87733_)
        (if (gx#stx-list? _stx87733_)
            (gx#stx-andmap
             (lambda (_bind87735_)
               (let* ((_e8773687746_ _bind87735_)
                      (_E8773887750_ (lambda () '#f))
                      (_E8773787772_
                       (lambda ()
                         (if (gx#stx-pair? _e8773687746_)
                             (let ((_e8773987754_ (gx#syntax-e _e8773687746_)))
                               (let ((_hd8774087757_ (##car _e8773987754_))
                                     (_tl8774187759_ (##cdr _e8773987754_)))
                                 (let ((_hd87762_ _hd8774087757_))
                                   (if (gx#stx-pair? _tl8774187759_)
                                       (let ((_e8774287764_
                                              (gx#syntax-e _tl8774187759_)))
                                         (let ((_hd8774387767_
                                                (##car _e8774287764_))
                                               (_tl8774487769_
                                                (##cdr _e8774287764_)))
                                           (if (gx#stx-null? _tl8774487769_)
                                               (if '#t
                                                   (gx#identifier? _hd87762_)
                                                   (_E8773887750_))
                                               (_E8773887750_))))
                                       (_E8773887750_)))))
                             (_E8773887750_)))))
                 (_E8773787772_)))
             _stx87733_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind87690_)
        (let* ((_e8769187701_ _bind87690_)
               (_E8769387705_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8769187701_)))
               (_E8769287729_
                (lambda ()
                  (if (gx#stx-pair? _e8769187701_)
                      (let ((_e8769487709_ (gx#syntax-e _e8769187701_)))
                        (let ((_hd8769587712_ (##car _e8769487709_))
                              (_tl8769687714_ (##cdr _e8769487709_)))
                          (if (gx#stx-pair? _tl8769687714_)
                              (let ((_e8769787717_
                                     (gx#syntax-e _tl8769687714_)))
                                (let ((_hd8769887720_ (##car _e8769787717_))
                                      (_tl8769987722_ (##cdr _e8769787717_)))
                                  (let ((_expr87725_ _hd8769887720_))
                                    (if (gx#stx-null? _tl8769987722_)
                                        (if '#t
                                            (let ((_g89258_
                                                   (gx#core-expand-expression+1
                                                    _expr87725_)))
                                              (begin
                                                (let ((_g89259_
                                                       (if (##values? _g89258_)
                                                           (##vector-length
                                                            _g89258_)
                                                           1)))
                                                  (if (not (##fx= _g89259_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89259_)))
                                                (let ((_e87727_
                                                       (##vector-ref
                                                        _g89258_
                                                        1)))
                                                  _e87727_)))
                                            (_E8769387705_))
                                        (_E8769387705_)))))
                              (_E8769387705_))))
                      (_E8769387705_)))))
          (_E8769287729_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind87635_ _e87636_ _rebind?87637_)
        (let* ((_e8763887648_ _bind87635_)
               (_E8764087652_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8763887648_)))
               (_E8763987674_
                (lambda ()
                  (if (gx#stx-pair? _e8763887648_)
                      (let ((_e8764187656_ (gx#syntax-e _e8763887648_)))
                        (let ((_hd8764287659_ (##car _e8764187656_))
                              (_tl8764387661_ (##cdr _e8764187656_)))
                          (let ((_id87664_ _hd8764287659_))
                            (if (gx#stx-pair? _tl8764387661_)
                                (let ((_e8764487666_
                                       (gx#syntax-e _tl8764387661_)))
                                  (let ((_hd8764587669_ (##car _e8764487666_))
                                        (_tl8764687671_ (##cdr _e8764487666_)))
                                    (if (gx#stx-null? _tl8764687671_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id87664_
                                             _e87636_
                                             _rebind?87637_)
                                            (_E8764087652_))
                                        (_E8764087652_))))
                                (_E8764087652_)))))
                      (_E8764087652_)))))
          (_E8763987674_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind87681_ _e87682_)
        (let ((_rebind?87684_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind87681_
           _e87682_
           _rebind?87684_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89261_
        (let ((_g89260_ (##length _g89261_)))
          (cond ((##fx= _g89260_ 2)
                 (apply (lambda (_bind87681_ _e87682_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind87681_
                           _e87682_))
                        _g89261_))
                ((##fx= _g89260_ 3)
                 (apply (lambda (_bind87686_ _e87687_ _rebind?87688_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind87686_
                           _e87687_
                           _rebind?87688_))
                        _g89261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89261_))))))
    (define gx#core-expand-expression%
      (lambda (_stx87593_)
        (let* ((_e8759487604_ _stx87593_)
               (_E8759687608_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8759487604_)))
               (_E8759587630_
                (lambda ()
                  (if (gx#stx-pair? _e8759487604_)
                      (let ((_e8759787612_ (gx#syntax-e _e8759487604_)))
                        (let ((_hd8759887615_ (##car _e8759787612_))
                              (_tl8759987617_ (##cdr _e8759787612_)))
                          (if (gx#stx-pair? _tl8759987617_)
                              (let ((_e8760087620_
                                     (gx#syntax-e _tl8759987617_)))
                                (let ((_hd8760187623_ (##car _e8760087620_))
                                      (_tl8760287625_ (##cdr _e8760087620_)))
                                  (let ((_expr87628_ _hd8760187623_))
                                    (if (gx#stx-null? _tl8760287625_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87628_)
                                            (_E8759687608_))
                                        (_E8759687608_)))))
                              (_E8759687608_))))
                      (_E8759687608_)))))
          (_E8759587630_))))
    (define gx#core-expand-quote%
      (lambda (_stx87552_)
        (let* ((_e8755387563_ _stx87552_)
               (_E8755587567_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8755387563_)))
               (_E8755487589_
                (lambda ()
                  (if (gx#stx-pair? _e8755387563_)
                      (let ((_e8755687571_ (gx#syntax-e _e8755387563_)))
                        (let ((_hd8755787574_ (##car _e8755687571_))
                              (_tl8755887576_ (##cdr _e8755687571_)))
                          (if (gx#stx-pair? _tl8755887576_)
                              (let ((_e8755987579_
                                     (gx#syntax-e _tl8755887576_)))
                                (let ((_hd8756087582_ (##car _e8755987579_))
                                      (_tl8756187584_ (##cdr _e8755987579_)))
                                  (let ((_e87587_ _hd8756087582_))
                                    (if (gx#stx-null? _tl8756187584_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e87587_)
                                                         '()))
                                             (gx#stx-source _stx87552_))
                                            (_E8755587567_))
                                        (_E8755587567_)))))
                              (_E8755587567_))))
                      (_E8755587567_)))))
          (_E8755487589_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87511_)
        (let* ((_e8751287522_ _stx87511_)
               (_E8751487526_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8751287522_)))
               (_E8751387548_
                (lambda ()
                  (if (gx#stx-pair? _e8751287522_)
                      (let ((_e8751587530_ (gx#syntax-e _e8751287522_)))
                        (let ((_hd8751687533_ (##car _e8751587530_))
                              (_tl8751787535_ (##cdr _e8751587530_)))
                          (if (gx#stx-pair? _tl8751787535_)
                              (let ((_e8751887538_
                                     (gx#syntax-e _tl8751787535_)))
                                (let ((_hd8751987541_ (##car _e8751887538_))
                                      (_tl8752087543_ (##cdr _e8751887538_)))
                                  (let ((_e87546_ _hd8751987541_))
                                    (if (gx#stx-null? _tl8752087543_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e87546_)
                                                         '()))
                                             (gx#stx-source _stx87511_))
                                            (_E8751487526_))
                                        (_E8751487526_)))))
                              (_E8751487526_))))
                      (_E8751487526_)))))
          (_E8751387548_))))
    (define gx#core-expand-call%
      (lambda (_stx87468_)
        (let* ((_e8746987479_ _stx87468_)
               (_E8747187483_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8746987479_)))
               (_E8747087507_
                (lambda ()
                  (if (gx#stx-pair? _e8746987479_)
                      (let ((_e8747287487_ (gx#syntax-e _e8746987479_)))
                        (let ((_hd8747387490_ (##car _e8747287487_))
                              (_tl8747487492_ (##cdr _e8747287487_)))
                          (if (gx#stx-pair? _tl8747487492_)
                              (let ((_e8747587495_
                                     (gx#syntax-e _tl8747487492_)))
                                (let ((_hd8747687498_ (##car _e8747587495_))
                                      (_tl8747787500_ (##cdr _e8747587495_)))
                                  (let* ((_rator87503_ _hd8747687498_)
                                         (_args87505_ _tl8747787500_))
                                    (if (gx#stx-list? _args87505_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87503_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87505_))
                                         (gx#stx-source _stx87468_))
                                        (_E8747187483_)))))
                              (_E8747187483_))))
                      (_E8747187483_)))))
          (_E8747087507_))))
    (define gx#core-expand-if%
      (lambda (_stx87401_)
        (let* ((_e8740287418_ _stx87401_)
               (_E8740487422_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8740287418_)))
               (_E8740387464_
                (lambda ()
                  (if (gx#stx-pair? _e8740287418_)
                      (let ((_e8740587426_ (gx#syntax-e _e8740287418_)))
                        (let ((_hd8740687429_ (##car _e8740587426_))
                              (_tl8740787431_ (##cdr _e8740587426_)))
                          (if (gx#stx-pair? _tl8740787431_)
                              (let ((_e8740887434_
                                     (gx#syntax-e _tl8740787431_)))
                                (let ((_hd8740987437_ (##car _e8740887434_))
                                      (_tl8741087439_ (##cdr _e8740887434_)))
                                  (let ((_test87442_ _hd8740987437_))
                                    (if (gx#stx-pair? _tl8741087439_)
                                        (let ((_e8741187444_
                                               (gx#syntax-e _tl8741087439_)))
                                          (let ((_hd8741287447_
                                                 (##car _e8741187444_))
                                                (_tl8741387449_
                                                 (##cdr _e8741187444_)))
                                            (let ((_K87452_ _hd8741287447_))
                                              (if (gx#stx-pair? _tl8741387449_)
                                                  (let ((_e8741487454_
                                                         (gx#syntax-e
                                                          _tl8741387449_)))
                                                    (let ((_hd8741587457_
                                                           (##car _e8741487454_))
                                                          (_tl8741687459_
                                                           (##cdr _e8741487454_)))
                                                      (let ((_E87462_
                                                             _hd8741587457_))
                                                        (if (gx#stx-null?
                                                             _tl8741687459_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87442_)
                                     (cons (gx#core-expand-expression _K87452_)
                                           (cons (gx#core-expand-expression
                                                  _E87462_)
                                                 '()))))
                         (gx#stx-source _stx87401_))
                        (_E8740487422_))
                    (_E8740487422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8740487422_)))))
                                        (_E8740487422_)))))
                              (_E8740487422_))))
                      (_E8740487422_)))))
          (_E8740387464_))))
    (define gx#core-expand-ref%
      (lambda (_stx87360_)
        (let* ((_e8736187371_ _stx87360_)
               (_E8736387375_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8736187371_)))
               (_E8736287397_
                (lambda ()
                  (if (gx#stx-pair? _e8736187371_)
                      (let ((_e8736487379_ (gx#syntax-e _e8736187371_)))
                        (let ((_hd8736587382_ (##car _e8736487379_))
                              (_tl8736687384_ (##cdr _e8736487379_)))
                          (if (gx#stx-pair? _tl8736687384_)
                              (let ((_e8736787387_
                                     (gx#syntax-e _tl8736687384_)))
                                (let ((_hd8736887390_ (##car _e8736787387_))
                                      (_tl8736987392_ (##cdr _e8736787387_)))
                                  (let ((_id87395_ _hd8736887390_))
                                    (if (gx#stx-null? _tl8736987392_)
                                        (if (gx#identifier? _id87395_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87395_
                                                          _stx87360_)
                                                         '()))
                                             (gx#stx-source _stx87360_))
                                            (_E8736387375_))
                                        (_E8736387375_)))))
                              (_E8736387375_))))
                      (_E8736387375_)))))
          (_E8736287397_))))
    (define gx#core-expand-setq%
      (lambda (_stx87306_)
        (let* ((_e8730787320_ _stx87306_)
               (_E8730987324_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8730787320_)))
               (_E8730887356_
                (lambda ()
                  (if (gx#stx-pair? _e8730787320_)
                      (let ((_e8731087328_ (gx#syntax-e _e8730787320_)))
                        (let ((_hd8731187331_ (##car _e8731087328_))
                              (_tl8731287333_ (##cdr _e8731087328_)))
                          (if (gx#stx-pair? _tl8731287333_)
                              (let ((_e8731387336_
                                     (gx#syntax-e _tl8731287333_)))
                                (let ((_hd8731487339_ (##car _e8731387336_))
                                      (_tl8731587341_ (##cdr _e8731387336_)))
                                  (let ((_id87344_ _hd8731487339_))
                                    (if (gx#stx-pair? _tl8731587341_)
                                        (let ((_e8731687346_
                                               (gx#syntax-e _tl8731587341_)))
                                          (let ((_hd8731787349_
                                                 (##car _e8731687346_))
                                                (_tl8731887351_
                                                 (##cdr _e8731687346_)))
                                            (let ((_expr87354_ _hd8731787349_))
                                              (if (gx#stx-null? _tl8731887351_)
                                                  (if (gx#identifier?
                                                       _id87344_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87344_
                            _stx87306_)
                           (cons (gx#core-expand-expression _expr87354_) '())))
               (gx#stx-source _stx87306_))
              (_E8730987324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8730987324_)))))
                                        (_E8730987324_)))))
                              (_E8730987324_))))
                      (_E8730987324_)))))
          (_E8730887356_))))
    (define gx#macro-expand-extern
      (lambda (_stx87154_)
        (letrec ((_generate87156_
                  (lambda (_body87186_)
                    (let _lp87188_ ((_rest87190_ _body87186_)
                                    (_ns87191_ (gx#core-context-namespace__0))
                                    (_r87192_ '()))
                      (let* ((_e8719387208_ _rest87190_)
                             (_E8720687212_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8719387208_)))
                             (_E8720287216_
                              (lambda ()
                                (if (gx#stx-null? _e8719387208_)
                                    (if '#t (reverse _r87192_) (_E8720687212_))
                                    (_E8720687212_))))
                             (_E8719587273_
                              (lambda ()
                                (if (gx#stx-pair? _e8719387208_)
                                    (let ((_e8720387220_
                                           (gx#syntax-e _e8719387208_)))
                                      (let ((_hd8720487223_
                                             (##car _e8720387220_))
                                            (_tl8720587225_
                                             (##cdr _e8720387220_)))
                                        (let* ((_hd87228_ _hd8720487223_)
                                               (_rest87230_ _tl8720587225_))
                                          (if '#t
                                              (if (gx#identifier? _hd87228_)
                                                  (_lp87188_
                                                   _rest87230_
                                                   _ns87191_
                                                   (cons (cons _hd87228_
                                                               (cons (if _ns87191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87228_
                                  _ns87191_
                                  '"#"
                                  _hd87228_)
                                 _hd87228_)
                             '()))
                 _r87192_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8723187241_
                                                          _hd87228_)
                                                         (_E8723387245_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8723187241_)))
                                                         (_E8723287269_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8723187241_)
                        (let ((_e8723487249_ (gx#syntax-e _e8723187241_)))
                          (let ((_hd8723587252_ (##car _e8723487249_))
                                (_tl8723687254_ (##cdr _e8723487249_)))
                            (let ((_id87257_ _hd8723587252_))
                              (if (gx#stx-pair? _tl8723687254_)
                                  (let ((_e8723787259_
                                         (gx#syntax-e _tl8723687254_)))
                                    (let ((_hd8723887262_
                                           (##car _e8723787259_))
                                          (_tl8723987264_
                                           (##cdr _e8723787259_)))
                                      (let ((_eid87267_ _hd8723887262_))
                                        (if (gx#stx-null? _tl8723987264_)
                                            (if (and (gx#identifier? _id87257_)
                                                     (gx#identifier?
                                                      _eid87267_))
                                                (_lp87188_
                                                 _rest87230_
                                                 _ns87191_
                                                 (cons (cons _id87257_
                                                             (cons _eid87267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87192_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8723387245_))
                                            (_E8723387245_)))))
                                  (_E8723387245_)))))
                        (_E8723387245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8723287269_)))
                                              (_E8720287216_)))))
                                    (_E8720287216_))))
                             (_E8719487302_
                              (lambda ()
                                (if (gx#stx-pair? _e8719387208_)
                                    (let ((_e8719687277_
                                           (gx#syntax-e _e8719387208_)))
                                      (let ((_hd8719787280_
                                             (##car _e8719687277_))
                                            (_tl8719887282_
                                             (##cdr _e8719687277_)))
                                        (if (eq? (gx#stx-e _hd8719787280_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8719887282_)
                                                (let ((_e8719987285_
                                                       (gx#syntax-e
                                                        _tl8719887282_)))
                                                  (let ((_hd8720087288_
                                                         (##car _e8719987285_))
                                                        (_tl8720187290_
                                                         (##cdr _e8719987285_)))
                                                    (let* ((_ns87293_
                                                            _hd8720087288_)
                                                           (_rest87295_
                                                            _tl8720187290_))
                                                      (if '#t
                                                          (let ((_ns87300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87293_)
                             (symbol->string (gx#stx-e _ns87293_))
                             (if (or (gx#stx-string? _ns87293_)
                                     (gx#stx-false? _ns87293_))
                                 (gx#stx-e _ns87293_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87154_
                                  _ns87293_)))))
                    (_lp87188_ _rest87295_ _ns87300_ _r87192_))
                  (_E8719587273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8719587273_))
                                            (_E8719587273_))))
                                    (_E8719587273_)))))
                        (_E8719487302_))))))
          (let* ((_e8715787164_ _stx87154_)
                 (_E8715987168_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8715787164_)))
                 (_E8715887182_
                  (lambda ()
                    (if (gx#stx-pair? _e8715787164_)
                        (let ((_e8716087172_ (gx#syntax-e _e8715787164_)))
                          (let ((_hd8716187175_ (##car _e8716087172_))
                                (_tl8716287177_ (##cdr _e8716087172_)))
                            (let ((_body87180_ _tl8716287177_))
                              (if (gx#stx-list? _body87180_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87156_ _body87180_))
                                  (_E8715987168_)))))
                        (_E8715987168_)))))
            (_E8715887182_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87100_)
        (let* ((_e8710187114_ _stx87100_)
               (_E8710387118_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8710187114_)))
               (_E8710287150_
                (lambda ()
                  (if (gx#stx-pair? _e8710187114_)
                      (let ((_e8710487122_ (gx#syntax-e _e8710187114_)))
                        (let ((_hd8710587125_ (##car _e8710487122_))
                              (_tl8710687127_ (##cdr _e8710487122_)))
                          (if (gx#stx-pair? _tl8710687127_)
                              (let ((_e8710787130_
                                     (gx#syntax-e _tl8710687127_)))
                                (let ((_hd8710887133_ (##car _e8710787130_))
                                      (_tl8710987135_ (##cdr _e8710787130_)))
                                  (let ((_hd87138_ _hd8710887133_))
                                    (if (gx#stx-pair? _tl8710987135_)
                                        (let ((_e8711087140_
                                               (gx#syntax-e _tl8710987135_)))
                                          (let ((_hd8711187143_
                                                 (##car _e8711087140_))
                                                (_tl8711287145_
                                                 (##cdr _e8711087140_)))
                                            (let ((_expr87148_ _hd8711187143_))
                                              (if (gx#stx-null? _tl8711287145_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87138_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87138_)
                          (cons _expr87148_ '())))
              (_E8710387118_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8710387118_)))))
                                        (_E8710387118_)))))
                              (_E8710387118_))))
                      (_E8710387118_)))))
          (_E8710287150_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87046_)
        (let* ((_e8704787060_ _stx87046_)
               (_E8704987064_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8704787060_)))
               (_E8704887096_
                (lambda ()
                  (if (gx#stx-pair? _e8704787060_)
                      (let ((_e8705087068_ (gx#syntax-e _e8704787060_)))
                        (let ((_hd8705187071_ (##car _e8705087068_))
                              (_tl8705287073_ (##cdr _e8705087068_)))
                          (if (gx#stx-pair? _tl8705287073_)
                              (let ((_e8705387076_
                                     (gx#syntax-e _tl8705287073_)))
                                (let ((_hd8705487079_ (##car _e8705387076_))
                                      (_tl8705587081_ (##cdr _e8705387076_)))
                                  (let ((_hd87084_ _hd8705487079_))
                                    (if (gx#stx-pair? _tl8705587081_)
                                        (let ((_e8705687086_
                                               (gx#syntax-e _tl8705587081_)))
                                          (let ((_hd8705787089_
                                                 (##car _e8705687086_))
                                                (_tl8705887091_
                                                 (##cdr _e8705687086_)))
                                            (let ((_expr87094_ _hd8705787089_))
                                              (if (gx#stx-null? _tl8705887091_)
                                                  (if (gx#identifier?
                                                       _hd87084_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87094_ '())))
              (_E8704987064_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8704987064_)))))
                                        (_E8704987064_)))))
                              (_E8704987064_))))
                      (_E8704987064_)))))
          (_E8704887096_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx86992_)
        (let* ((_e8699387006_ _stx86992_)
               (_E8699587010_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8699387006_)))
               (_E8699487042_
                (lambda ()
                  (if (gx#stx-pair? _e8699387006_)
                      (let ((_e8699687014_ (gx#syntax-e _e8699387006_)))
                        (let ((_hd8699787017_ (##car _e8699687014_))
                              (_tl8699887019_ (##cdr _e8699687014_)))
                          (if (gx#stx-pair? _tl8699887019_)
                              (let ((_e8699987022_
                                     (gx#syntax-e _tl8699887019_)))
                                (let ((_hd8700087025_ (##car _e8699987022_))
                                      (_tl8700187027_ (##cdr _e8699987022_)))
                                  (let ((_id87030_ _hd8700087025_))
                                    (if (gx#stx-pair? _tl8700187027_)
                                        (let ((_e8700287032_
                                               (gx#syntax-e _tl8700187027_)))
                                          (let ((_hd8700387035_
                                                 (##car _e8700287032_))
                                                (_tl8700487037_
                                                 (##cdr _e8700287032_)))
                                            (let ((_alias-id87040_
                                                   _hd8700387035_))
                                              (if (gx#stx-null? _tl8700487037_)
                                                  (if (and (gx#identifier?
                                                            _id87030_)
                                                           (gx#identifier?
                                                            _alias-id87040_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87040_ '())))
              (_E8699587010_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8699587010_)))))
                                        (_E8699587010_)))))
                              (_E8699587010_))))
                      (_E8699587010_)))))
          (_E8699487042_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx86949_)
        (let* ((_e8695086960_ _stx86949_)
               (_E8695286964_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8695086960_)))
               (_E8695186988_
                (lambda ()
                  (if (gx#stx-pair? _e8695086960_)
                      (let ((_e8695386968_ (gx#syntax-e _e8695086960_)))
                        (let ((_hd8695486971_ (##car _e8695386968_))
                              (_tl8695586973_ (##cdr _e8695386968_)))
                          (if (gx#stx-pair? _tl8695586973_)
                              (let ((_e8695686976_
                                     (gx#syntax-e _tl8695586973_)))
                                (let ((_hd8695786979_ (##car _e8695686976_))
                                      (_tl8695886981_ (##cdr _e8695686976_)))
                                  (let* ((_hd86984_ _hd8695786979_)
                                         (_body86986_ _tl8695886981_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd86984_)
                                             (gx#stx-list? _body86986_)
                                             (not (gx#stx-null? _body86986_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd86984_)
                                         _body86986_)
                                        (_E8695286964_)))))
                              (_E8695286964_))))
                      (_E8695286964_)))))
          (_E8695186988_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx86885_)
        (letrec ((_generate86887_
                  (lambda (_clause86917_)
                    (let* ((_e8691886925_ _clause86917_)
                           (_E8692086929_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx86885_
                               _clause86917_)))
                           (_E8691986945_
                            (lambda ()
                              (if (gx#stx-pair? _e8691886925_)
                                  (let ((_e8692186933_
                                         (gx#syntax-e _e8691886925_)))
                                    (let ((_hd8692286936_
                                           (##car _e8692186933_))
                                          (_tl8692386938_
                                           (##cdr _e8692186933_)))
                                      (let* ((_hd86941_ _hd8692286936_)
                                             (_body86943_ _tl8692386938_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd86941_)
                                                 (gx#stx-list? _body86943_)
                                                 (not (gx#stx-null?
                                                       _body86943_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd86941_)
                                                   _body86943_)
                                             (gx#stx-source _clause86917_))
                                            (_E8692086929_)))))
                                  (_E8692086929_)))))
                      (_E8691986945_)))))
          (let* ((_e8688886895_ _stx86885_)
                 (_E8689086899_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8688886895_)))
                 (_E8688986913_
                  (lambda ()
                    (if (gx#stx-pair? _e8688886895_)
                        (let ((_e8689186903_ (gx#syntax-e _e8688886895_)))
                          (let ((_hd8689286906_ (##car _e8689186903_))
                                (_tl8689386908_ (##cdr _e8689186903_)))
                            (let ((_clauses86911_ _tl8689386908_))
                              (if (gx#stx-list? _clauses86911_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate86887_
                                    _clauses86911_))
                                  (_E8689086899_)))))
                        (_E8689086899_)))))
            (_E8688986913_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx86786_ _form86787_)
        (letrec ((_generate86789_
                  (lambda (_bind86832_)
                    (let* ((_e8683386843_ _bind86832_)
                           (_E8683586847_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx86786_
                               _bind86832_)))
                           (_E8683486871_
                            (lambda ()
                              (if (gx#stx-pair? _e8683386843_)
                                  (let ((_e8683686851_
                                         (gx#syntax-e _e8683386843_)))
                                    (let ((_hd8683786854_
                                           (##car _e8683686851_))
                                          (_tl8683886856_
                                           (##cdr _e8683686851_)))
                                      (let ((_ids86859_ _hd8683786854_))
                                        (if (gx#stx-pair? _tl8683886856_)
                                            (let ((_e8683986861_
                                                   (gx#syntax-e
                                                    _tl8683886856_)))
                                              (let ((_hd8684086864_
                                                     (##car _e8683986861_))
                                                    (_tl8684186866_
                                                     (##cdr _e8683986861_)))
                                                (let ((_expr86869_
                                                       _hd8684086864_))
                                                  (if (gx#stx-null?
                                                       _tl8684186866_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids86859_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids86859_)
                        (cons _expr86869_ '()))
                  (_E8683586847_))
              (_E8683586847_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8683586847_)))))
                                  (_E8683586847_)))))
                      (_E8683486871_)))))
          (let* ((_e8679086800_ _stx86786_)
                 (_E8679286804_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8679086800_)))
                 (_E8679186828_
                  (lambda ()
                    (if (gx#stx-pair? _e8679086800_)
                        (let ((_e8679386808_ (gx#syntax-e _e8679086800_)))
                          (let ((_hd8679486811_ (##car _e8679386808_))
                                (_tl8679586813_ (##cdr _e8679386808_)))
                            (if (gx#stx-pair? _tl8679586813_)
                                (let ((_e8679686816_
                                       (gx#syntax-e _tl8679586813_)))
                                  (let ((_hd8679786819_ (##car _e8679686816_))
                                        (_tl8679886821_ (##cdr _e8679686816_)))
                                    (let* ((_hd86824_ _hd8679786819_)
                                           (_body86826_ _tl8679886821_))
                                      (if (and (gx#stx-list? _hd86824_)
                                               (gx#stx-list? _body86826_)
                                               (not (gx#stx-null?
                                                     _body86826_)))
                                          (gx#core-cons*
                                           _form86787_
                                           (gx#stx-map1
                                            _generate86789_
                                            _hd86824_)
                                           _body86826_)
                                          (_E8679286804_)))))
                                (_E8679286804_))))
                        (_E8679286804_)))))
            (_E8679186828_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx86878_)
        (let ((_form86880_ '%#let-values))
          (gx#macro-expand-let-values__% _stx86878_ _form86880_))))
    (define gx#macro-expand-let-values
      (lambda _g89263_
        (let ((_g89262_ (##length _g89263_)))
          (cond ((##fx= _g89262_ 1)
                 (apply (lambda (_stx86878_)
                          (gx#macro-expand-let-values__0 _stx86878_))
                        _g89263_))
                ((##fx= _g89262_ 2)
                 (apply (lambda (_stx86882_ _form86883_)
                          (gx#macro-expand-let-values__%
                           _stx86882_
                           _form86883_))
                        _g89263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89263_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx86783_)
        (gx#macro-expand-let-values__% _stx86783_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx86781_)
        (gx#macro-expand-let-values__% _stx86781_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx86672_)
        (let* ((_e8667386699_ _stx86672_)
               (_E8668586703_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8667386699_)))
               (_E8667586745_
                (lambda ()
                  (if (gx#stx-pair? _e8667386699_)
                      (let ((_e8668686707_ (gx#syntax-e _e8667386699_)))
                        (let ((_hd8668786710_ (##car _e8668686707_))
                              (_tl8668886712_ (##cdr _e8668686707_)))
                          (if (gx#stx-pair? _tl8668886712_)
                              (let ((_e8668986715_
                                     (gx#syntax-e _tl8668886712_)))
                                (let ((_hd8669086718_ (##car _e8668986715_))
                                      (_tl8669186720_ (##cdr _e8668986715_)))
                                  (let ((_test86723_ _hd8669086718_))
                                    (if (gx#stx-pair? _tl8669186720_)
                                        (let ((_e8669286725_
                                               (gx#syntax-e _tl8669186720_)))
                                          (let ((_hd8669386728_
                                                 (##car _e8669286725_))
                                                (_tl8669486730_
                                                 (##cdr _e8669286725_)))
                                            (let ((_K86733_ _hd8669386728_))
                                              (if (gx#stx-pair? _tl8669486730_)
                                                  (let ((_e8669586735_
                                                         (gx#syntax-e
                                                          _tl8669486730_)))
                                                    (let ((_hd8669686738_
                                                           (##car _e8669586735_))
                                                          (_tl8669786740_
                                                           (##cdr _e8669586735_)))
                                                      (let ((_E86743_
                                                             _hd8669686738_))
                                                        (if (gx#stx-null?
                                                             _tl8669786740_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test86723_
                         _K86733_
                         _E86743_)
                        (_E8668586703_))
                    (_E8668586703_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8668586703_)))))
                                        (_E8668586703_)))))
                              (_E8668586703_))))
                      (_E8668586703_))))
               (_E8667486777_
                (lambda ()
                  (if (gx#stx-pair? _e8667386699_)
                      (let ((_e8667686749_ (gx#syntax-e _e8667386699_)))
                        (let ((_hd8667786752_ (##car _e8667686749_))
                              (_tl8667886754_ (##cdr _e8667686749_)))
                          (if (gx#stx-pair? _tl8667886754_)
                              (let ((_e8667986757_
                                     (gx#syntax-e _tl8667886754_)))
                                (let ((_hd8668086760_ (##car _e8667986757_))
                                      (_tl8668186762_ (##cdr _e8667986757_)))
                                  (let ((_test86765_ _hd8668086760_))
                                    (if (gx#stx-pair? _tl8668186762_)
                                        (let ((_e8668286767_
                                               (gx#syntax-e _tl8668186762_)))
                                          (let ((_hd8668386770_
                                                 (##car _e8668286767_))
                                                (_tl8668486772_
                                                 (##cdr _e8668286767_)))
                                            (let ((_K86775_ _hd8668386770_))
                                              (if (gx#stx-null? _tl8668486772_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test86765_
                                                       _K86775_
                                                       '#!void)
                                                      (_E8667586745_))
                                                  (_E8667586745_)))))
                                        (_E8667586745_)))))
                              (_E8667586745_))))
                      (_E8667586745_)))))
          (_E8667486777_))))
    (define gx#free-identifier=?
      (lambda (_xid86660_ _yid86661_)
        (let ((_xe86663_ (gx#resolve-identifier__0 _xid86660_))
              (_ye86664_ (gx#resolve-identifier__0 _yid86661_)))
          (if (and _xe86663_ _ye86664_)
              (let ((_$e86666_ (eq? _xe86663_ _ye86664_)))
                (if _$e86666_
                    _$e86666_
                    (if (##structure-instance-of? _xe86663_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye86664_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe86663_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye86664_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe86663_ _ye86664_)
                  '#f
                  (gx#stx-eq? _xid86660_ _yid86661_))))))
    (define gx#bound-identifier=?
      (lambda (_xid86644_ _yid86645_)
        (letrec ((_context86647_
                  (lambda (_e86658_)
                    (if (##structure-direct-instance-of?
                         _e86658_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e86658_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks86648_
                  (lambda (_e86656_)
                    (if (symbol? _e86656_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e86656_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e86656_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e86656_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap86649_
                  (lambda (_e86654_)
                    (if (symbol? _e86654_)
                        _e86654_
                        (gx#syntax-local-unwrap _e86654_)))))
          (let ((_x86651_ (_unwrap86649_ _xid86644_))
                (_y86652_ (_unwrap86649_ _yid86645_)))
            (if (gx#stx-eq? _x86651_ _y86652_)
                (if (eq? (_context86647_ _x86651_) (_context86647_ _y86652_))
                    (equal? (_marks86648_ _x86651_) (_marks86648_ _y86652_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx86642_)
        (if (gx#identifier? _stx86642_)
            (gx#core-identifier=? _stx86642_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx86640_)
        (if (gx#identifier? _stx86640_)
            (gx#core-identifier=? _stx86640_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x86638_)
        (if (gx#identifier? _x86638_)
            (if (not (gx#underscore? _x86638_)) _x86638_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx86584_ _where86585_)
        (let _lp86587_ ((_rest86589_ (gx#syntax->list _stx86584_)))
          (let* ((_rest8659086598_ _rest86589_)
                 (_else8659286606_ (lambda () '#t))
                 (_K8659486616_
                  (lambda (_rest86609_ _hd86610_)
                    (if (not (gx#identifier? _hd86610_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where86585_
                         _hd86610_)
                        (if (find (lambda (_g8661186613_)
                                    (gx#bound-identifier=?
                                     _g8661186613_
                                     _hd86610_))
                                  _rest86609_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where86585_
                             _hd86610_)
                            (_lp86587_ _rest86609_))))))
            (if (##pair? _rest8659086598_)
                (let ((_hd8659586619_ (##car _rest8659086598_))
                      (_tl8659686621_ (##cdr _rest8659086598_)))
                  (let* ((_hd86624_ _hd8659586619_)
                         (_rest86626_ _tl8659686621_))
                    (_K8659486616_ _rest86626_ _hd86624_)))
                (_else8659286606_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx86631_)
        (let ((_where86633_ _stx86631_))
          (gx#check-duplicate-identifiers__% _stx86631_ _where86633_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89265_
        (let ((_g89264_ (##length _g89265_)))
          (cond ((##fx= _g89264_ 1)
                 (apply (lambda (_stx86631_)
                          (gx#check-duplicate-identifiers__0 _stx86631_))
                        _g89265_))
                ((##fx= _g89264_ 2)
                 (apply (lambda (_stx86635_ _where86636_)
                          (gx#check-duplicate-identifiers__%
                           _stx86635_
                           _where86636_))
                        _g89265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89265_))))))
    (define gx#core-bind-values?
      (lambda (_stx86576_)
        (gx#stx-andmap
         (lambda (_x86578_)
           (let ((_$e86580_ (gx#identifier? _x86578_)))
             (if _$e86580_ _$e86580_ (gx#stx-false? _x86578_))))
         _stx86576_)))
    (define gx#core-bind-values!__%
      (lambda (_stx86540_ _rebind?86541_ _phi86542_ _ctx86543_)
        (gx#stx-for-each1
         (lambda (_id86545_)
           (if (gx#identifier? _id86545_)
               (gx#core-bind-runtime!__%
                _id86545_
                _rebind?86541_
                _phi86542_
                _ctx86543_)
               '#!void))
         _stx86540_)))
    (define gx#core-bind-values!__0
      (lambda (_stx86550_)
        (let* ((_rebind?86552_ '#f)
               (_phi86554_ (gx#current-expander-phi))
               (_ctx86556_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86550_
           _rebind?86552_
           _phi86554_
           _ctx86556_))))
    (define gx#core-bind-values!__1
      (lambda (_stx86558_ _rebind?86559_)
        (let* ((_phi86561_ (gx#current-expander-phi))
               (_ctx86563_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86558_
           _rebind?86559_
           _phi86561_
           _ctx86563_))))
    (define gx#core-bind-values!__2
      (lambda (_stx86565_ _rebind?86566_ _phi86567_)
        (let ((_ctx86569_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86565_
           _rebind?86566_
           _phi86567_
           _ctx86569_))))
    (define gx#core-bind-values!
      (lambda _g89267_
        (let ((_g89266_ (##length _g89267_)))
          (cond ((##fx= _g89266_ 1)
                 (apply (lambda (_stx86550_)
                          (gx#core-bind-values!__0 _stx86550_))
                        _g89267_))
                ((##fx= _g89266_ 2)
                 (apply (lambda (_stx86558_ _rebind?86559_)
                          (gx#core-bind-values!__1 _stx86558_ _rebind?86559_))
                        _g89267_))
                ((##fx= _g89266_ 3)
                 (apply (lambda (_stx86565_ _rebind?86566_ _phi86567_)
                          (gx#core-bind-values!__2
                           _stx86565_
                           _rebind?86566_
                           _phi86567_))
                        _g89267_))
                ((##fx= _g89266_ 4)
                 (apply (lambda (_stx86571_
                                 _rebind?86572_
                                 _phi86573_
                                 _ctx86574_)
                          (gx#core-bind-values!__%
                           _stx86571_
                           _rebind?86572_
                           _phi86573_
                           _ctx86574_))
                        _g89267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89267_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx86535_)
        (gx#stx-map1
         (lambda (_x86537_)
           (if (gx#identifier? _x86537_)
               (gx#core-quote-syntax__0 _x86537_)
               '#f))
         _stx86535_)))
    (define gx#core-runtime-ref?
      (lambda (_stx86528_)
        (if (gx#identifier? _stx86528_)
            (let* ((_bind86530_ (gx#resolve-identifier__0 _stx86528_))
                   (_$e86532_ (not _bind86530_)))
              (if _$e86532_
                  _$e86532_
                  (##structure-instance-of?
                   _bind86530_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86520_ _form86521_)
        (let ((_bind86523_ (gx#resolve-identifier__0 _id86520_)))
          (if (##structure-instance-of? _bind86523_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86520_)
              (if (not _bind86523_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86520_)))
                      (gx#core-quote-syntax__0 _id86520_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86521_
                       _id86520_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86521_
                   _id86520_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86479_ _rebind?86480_ _phi86481_ _ctx86482_)
        (let* ((_key86484_ (gx#core-identifier-key _id86479_))
               (_eid86486_
                (gx#make-binding-id__% _key86484_ '#f _phi86481_ _ctx86482_))
               (_bind86488_
                (if (##structure-instance-of? _ctx86482_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86486_
                     _key86484_
                     _phi86481_
                     _ctx86482_)
                    (if (##structure-instance-of?
                         _ctx86482_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86486_
                         _key86484_
                         _phi86481_)
                        (if (##structure-instance-of?
                             _ctx86482_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86486_
                             _key86484_
                             _phi86481_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86486_
                             _key86484_
                             _phi86481_))))))
          (gx#bind-identifier!__%
           _id86479_
           _bind86488_
           _rebind?86480_
           _phi86481_
           _ctx86482_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86494_)
        (let* ((_rebind?86496_ '#f)
               (_phi86498_ (gx#current-expander-phi))
               (_ctx86500_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86494_
           _rebind?86496_
           _phi86498_
           _ctx86500_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86502_ _rebind?86503_)
        (let* ((_phi86505_ (gx#current-expander-phi))
               (_ctx86507_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86502_
           _rebind?86503_
           _phi86505_
           _ctx86507_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86509_ _rebind?86510_ _phi86511_)
        (let ((_ctx86513_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86509_
           _rebind?86510_
           _phi86511_
           _ctx86513_))))
    (define gx#core-bind-runtime!
      (lambda _g89269_
        (let ((_g89268_ (##length _g89269_)))
          (cond ((##fx= _g89268_ 1)
                 (apply (lambda (_id86494_)
                          (gx#core-bind-runtime!__0 _id86494_))
                        _g89269_))
                ((##fx= _g89268_ 2)
                 (apply (lambda (_id86502_ _rebind?86503_)
                          (gx#core-bind-runtime!__1 _id86502_ _rebind?86503_))
                        _g89269_))
                ((##fx= _g89268_ 3)
                 (apply (lambda (_id86509_ _rebind?86510_ _phi86511_)
                          (gx#core-bind-runtime!__2
                           _id86509_
                           _rebind?86510_
                           _phi86511_))
                        _g89269_))
                ((##fx= _g89268_ 4)
                 (apply (lambda (_id86515_
                                 _rebind?86516_
                                 _phi86517_
                                 _ctx86518_)
                          (gx#core-bind-runtime!__%
                           _id86515_
                           _rebind?86516_
                           _phi86517_
                           _ctx86518_))
                        _g89269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89269_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86434_ _eid86435_ _rebind?86436_ _phi86437_ _ctx86438_)
        (let* ((_key86440_ (gx#core-identifier-key _id86434_))
               (_bind86442_
                (if (##structure-instance-of? _ctx86438_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86435_
                     _key86440_
                     _phi86437_
                     _ctx86438_)
                    (if (##structure-instance-of?
                         _ctx86438_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86435_
                         _key86440_
                         _phi86437_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86435_
                         _key86440_
                         _phi86437_)))))
          (gx#bind-identifier!__%
           _id86434_
           _bind86442_
           _rebind?86436_
           _phi86437_
           _ctx86438_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86448_ _eid86449_)
        (let* ((_rebind?86451_ '#f)
               (_phi86453_ (gx#current-expander-phi))
               (_ctx86455_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86448_
           _eid86449_
           _rebind?86451_
           _phi86453_
           _ctx86455_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86457_ _eid86458_ _rebind?86459_)
        (let* ((_phi86461_ (gx#current-expander-phi))
               (_ctx86463_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86457_
           _eid86458_
           _rebind?86459_
           _phi86461_
           _ctx86463_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86465_ _eid86466_ _rebind?86467_ _phi86468_)
        (let ((_ctx86470_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86465_
           _eid86466_
           _rebind?86467_
           _phi86468_
           _ctx86470_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89271_
        (let ((_g89270_ (##length _g89271_)))
          (cond ((##fx= _g89270_ 2)
                 (apply (lambda (_id86448_ _eid86449_)
                          (gx#core-bind-runtime-reference!__0
                           _id86448_
                           _eid86449_))
                        _g89271_))
                ((##fx= _g89270_ 3)
                 (apply (lambda (_id86457_ _eid86458_ _rebind?86459_)
                          (gx#core-bind-runtime-reference!__1
                           _id86457_
                           _eid86458_
                           _rebind?86459_))
                        _g89271_))
                ((##fx= _g89270_ 4)
                 (apply (lambda (_id86465_
                                 _eid86466_
                                 _rebind?86467_
                                 _phi86468_)
                          (gx#core-bind-runtime-reference!__2
                           _id86465_
                           _eid86466_
                           _rebind?86467_
                           _phi86468_))
                        _g89271_))
                ((##fx= _g89270_ 5)
                 (apply (lambda (_id86472_
                                 _eid86473_
                                 _rebind?86474_
                                 _phi86475_
                                 _ctx86476_)
                          (gx#core-bind-runtime-reference!__%
                           _id86472_
                           _eid86473_
                           _rebind?86474_
                           _phi86475_
                           _ctx86476_))
                        _g89271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89271_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86394_ _eid86395_ _rebind?86396_ _phi86397_ _ctx86398_)
        (gx#bind-identifier!__%
         _id86394_
         (##structure
          gx#extern-binding::t
          _eid86395_
          (gx#core-identifier-key _id86394_)
          _phi86397_)
         _rebind?86396_
         _phi86397_
         _ctx86398_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86403_ _eid86404_)
        (let* ((_rebind?86406_ '#f)
               (_phi86408_ (gx#current-expander-phi))
               (_ctx86410_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86403_
           _eid86404_
           _rebind?86406_
           _phi86408_
           _ctx86410_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86412_ _eid86413_ _rebind?86414_)
        (let* ((_phi86416_ (gx#current-expander-phi))
               (_ctx86418_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86412_
           _eid86413_
           _rebind?86414_
           _phi86416_
           _ctx86418_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86420_ _eid86421_ _rebind?86422_ _phi86423_)
        (let ((_ctx86425_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86420_
           _eid86421_
           _rebind?86422_
           _phi86423_
           _ctx86425_))))
    (define gx#core-bind-extern!
      (lambda _g89273_
        (let ((_g89272_ (##length _g89273_)))
          (cond ((##fx= _g89272_ 2)
                 (apply (lambda (_id86403_ _eid86404_)
                          (gx#core-bind-extern!__0 _id86403_ _eid86404_))
                        _g89273_))
                ((##fx= _g89272_ 3)
                 (apply (lambda (_id86412_ _eid86413_ _rebind?86414_)
                          (gx#core-bind-extern!__1
                           _id86412_
                           _eid86413_
                           _rebind?86414_))
                        _g89273_))
                ((##fx= _g89272_ 4)
                 (apply (lambda (_id86420_
                                 _eid86421_
                                 _rebind?86422_
                                 _phi86423_)
                          (gx#core-bind-extern!__2
                           _id86420_
                           _eid86421_
                           _rebind?86422_
                           _phi86423_))
                        _g89273_))
                ((##fx= _g89272_ 5)
                 (apply (lambda (_id86427_
                                 _eid86428_
                                 _rebind?86429_
                                 _phi86430_
                                 _ctx86431_)
                          (gx#core-bind-extern!__%
                           _id86427_
                           _eid86428_
                           _rebind?86429_
                           _phi86430_
                           _ctx86431_))
                        _g89273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89273_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86348_ _e86349_ _rebind?86350_ _phi86351_ _ctx86352_)
        (gx#bind-identifier!__%
         _id86348_
         (let ((_key86357_ (gx#core-identifier-key _id86348_))
               (_e86358_
                (if (or (##structure-instance-of? _e86349_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86349_
                         'gx#expander-context::t))
                    _e86349_
                    (##structure
                     gx#user-expander::t
                     _e86349_
                     _ctx86352_
                     _phi86351_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86357_ '#t _phi86351_ _ctx86352_)
            _key86357_
            _phi86351_
            _e86358_))
         _rebind?86350_
         _phi86351_
         _ctx86352_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86363_ _e86364_)
        (let* ((_rebind?86366_ '#f)
               (_phi86368_ (gx#current-expander-phi))
               (_ctx86370_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86363_
           _e86364_
           _rebind?86366_
           _phi86368_
           _ctx86370_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86372_ _e86373_ _rebind?86374_)
        (let* ((_phi86376_ (gx#current-expander-phi))
               (_ctx86378_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86372_
           _e86373_
           _rebind?86374_
           _phi86376_
           _ctx86378_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86380_ _e86381_ _rebind?86382_ _phi86383_)
        (let ((_ctx86385_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86380_
           _e86381_
           _rebind?86382_
           _phi86383_
           _ctx86385_))))
    (define gx#core-bind-syntax!
      (lambda _g89275_
        (let ((_g89274_ (##length _g89275_)))
          (cond ((##fx= _g89274_ 2)
                 (apply (lambda (_id86363_ _e86364_)
                          (gx#core-bind-syntax!__0 _id86363_ _e86364_))
                        _g89275_))
                ((##fx= _g89274_ 3)
                 (apply (lambda (_id86372_ _e86373_ _rebind?86374_)
                          (gx#core-bind-syntax!__1
                           _id86372_
                           _e86373_
                           _rebind?86374_))
                        _g89275_))
                ((##fx= _g89274_ 4)
                 (apply (lambda (_id86380_ _e86381_ _rebind?86382_ _phi86383_)
                          (gx#core-bind-syntax!__2
                           _id86380_
                           _e86381_
                           _rebind?86382_
                           _phi86383_))
                        _g89275_))
                ((##fx= _g89274_ 5)
                 (apply (lambda (_id86387_
                                 _e86388_
                                 _rebind?86389_
                                 _phi86390_
                                 _ctx86391_)
                          (gx#core-bind-syntax!__%
                           _id86387_
                           _e86388_
                           _rebind?86389_
                           _phi86390_
                           _ctx86391_))
                        _g89275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89275_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86331_ _e86332_ _rebind?86333_)
        (gx#core-bind-syntax!__%
         _id86331_
         _e86332_
         _rebind?86333_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86338_ _e86339_)
        (let ((_rebind?86341_ '#f))
          (gx#core-bind-root-syntax!__% _id86338_ _e86339_ _rebind?86341_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89277_
        (let ((_g89276_ (##length _g89277_)))
          (cond ((##fx= _g89276_ 2)
                 (apply (lambda (_id86338_ _e86339_)
                          (gx#core-bind-root-syntax!__0 _id86338_ _e86339_))
                        _g89277_))
                ((##fx= _g89276_ 3)
                 (apply (lambda (_id86343_ _e86344_ _rebind?86345_)
                          (gx#core-bind-root-syntax!__%
                           _id86343_
                           _e86344_
                           _rebind?86345_))
                        _g89277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89277_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86289_ _alias-id86290_ _rebind?86291_ _phi86292_ _ctx86293_)
        (gx#bind-identifier!__%
         _id86289_
         (let ((_key86295_ (gx#core-identifier-key _id86289_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86295_ '#t _phi86292_ _ctx86293_)
            _key86295_
            _phi86292_
            _alias-id86290_))
         _rebind?86291_
         _phi86292_
         _ctx86293_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86300_ _alias-id86301_)
        (let* ((_rebind?86303_ '#f)
               (_phi86305_ (gx#current-expander-phi))
               (_ctx86307_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86300_
           _alias-id86301_
           _rebind?86303_
           _phi86305_
           _ctx86307_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86309_ _alias-id86310_ _rebind?86311_)
        (let* ((_phi86313_ (gx#current-expander-phi))
               (_ctx86315_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86309_
           _alias-id86310_
           _rebind?86311_
           _phi86313_
           _ctx86315_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86317_ _alias-id86318_ _rebind?86319_ _phi86320_)
        (let ((_ctx86322_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86317_
           _alias-id86318_
           _rebind?86319_
           _phi86320_
           _ctx86322_))))
    (define gx#core-bind-alias!
      (lambda _g89279_
        (let ((_g89278_ (##length _g89279_)))
          (cond ((##fx= _g89278_ 2)
                 (apply (lambda (_id86300_ _alias-id86301_)
                          (gx#core-bind-alias!__0 _id86300_ _alias-id86301_))
                        _g89279_))
                ((##fx= _g89278_ 3)
                 (apply (lambda (_id86309_ _alias-id86310_ _rebind?86311_)
                          (gx#core-bind-alias!__1
                           _id86309_
                           _alias-id86310_
                           _rebind?86311_))
                        _g89279_))
                ((##fx= _g89278_ 4)
                 (apply (lambda (_id86317_
                                 _alias-id86318_
                                 _rebind?86319_
                                 _phi86320_)
                          (gx#core-bind-alias!__2
                           _id86317_
                           _alias-id86318_
                           _rebind?86319_
                           _phi86320_))
                        _g89279_))
                ((##fx= _g89278_ 5)
                 (apply (lambda (_id86324_
                                 _alias-id86325_
                                 _rebind?86326_
                                 _phi86327_
                                 _ctx86328_)
                          (gx#core-bind-alias!__%
                           _id86324_
                           _alias-id86325_
                           _rebind?86326_
                           _phi86327_
                           _ctx86328_))
                        _g89279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89279_))))))
    (define gx#make-binding-id__%
      (lambda (_key86246_ _syntax?86247_ _phi86248_ _ctx86249_)
        (if (uninterned-symbol? _key86246_)
            (gensym 'L)
            (if (pair? _key86246_)
                (gensym (car _key86246_))
                (if (##structure-instance-of? _ctx86249_ 'gx#top-context::t)
                    (let ((_ns86251_
                           (gx#core-context-namespace__% _ctx86249_)))
                      (if (and (fxzero? _phi86248_) (not _syntax?86247_))
                          (if _ns86251_
                              (make-symbol__1 _ns86251_ '"#" _key86246_)
                              _key86246_)
                          (if _syntax?86247_
                              (make-symbol__1
                               (let ((_$e86253_ _ns86251_))
                                 (if _$e86253_ _$e86253_ '""))
                               '"[:"
                               (number->string _phi86248_)
                               '":]#"
                               _key86246_)
                              (make-symbol__1
                               (let ((_$e86256_ _ns86251_))
                                 (if _$e86256_ _$e86256_ '""))
                               '"["
                               (number->string _phi86248_)
                               '"]#"
                               _key86246_))))
                    (gensym _key86246_))))))
    (define gx#make-binding-id__0
      (lambda (_key86262_)
        (let* ((_syntax?86264_ '#f)
               (_phi86266_ (gx#current-expander-phi))
               (_ctx86268_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86262_
           _syntax?86264_
           _phi86266_
           _ctx86268_))))
    (define gx#make-binding-id__1
      (lambda (_key86270_ _syntax?86271_)
        (let* ((_phi86273_ (gx#current-expander-phi))
               (_ctx86275_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86270_
           _syntax?86271_
           _phi86273_
           _ctx86275_))))
    (define gx#make-binding-id__2
      (lambda (_key86277_ _syntax?86278_ _phi86279_)
        (let ((_ctx86281_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86277_
           _syntax?86278_
           _phi86279_
           _ctx86281_))))
    (define gx#make-binding-id
      (lambda _g89281_
        (let ((_g89280_ (##length _g89281_)))
          (cond ((##fx= _g89280_ 1)
                 (apply (lambda (_key86262_)
                          (gx#make-binding-id__0 _key86262_))
                        _g89281_))
                ((##fx= _g89280_ 2)
                 (apply (lambda (_key86270_ _syntax?86271_)
                          (gx#make-binding-id__1 _key86270_ _syntax?86271_))
                        _g89281_))
                ((##fx= _g89280_ 3)
                 (apply (lambda (_key86277_ _syntax?86278_ _phi86279_)
                          (gx#make-binding-id__2
                           _key86277_
                           _syntax?86278_
                           _phi86279_))
                        _g89281_))
                ((##fx= _g89280_ 4)
                 (apply (lambda (_key86283_
                                 _syntax?86284_
                                 _phi86285_
                                 _ctx86286_)
                          (gx#make-binding-id__%
                           _key86283_
                           _syntax?86284_
                           _phi86285_
                           _ctx86286_))
                        _g89281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89281_))))))))
