(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g35045_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35046_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35047_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35050_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35051_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35052_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35053_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35054_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35055_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35056_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35057_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35058_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35059_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35060_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35061_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35062_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35071_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35076_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35077_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35078_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35095_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35096_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35097_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35098_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g35101_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args28649_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args28649_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx28646_)
        (if (gx#identifier? _stx28646_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx28646_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2696228632_
             (lambda (_stx26964_ _match-stx26966_)
               (letrec ((_parse126968_
                         (lambda (_hd27315_)
                           (let* ((_g2734127483_
                                   (lambda (_g2734227479_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2734227479_)))
                                  (_g2734027494_
                                   (lambda (_g2734227487_)
                                     ((lambda ()
                                        (_parse-error26975_ _hd27315_)))))
                                  (_g2733927512_
                                   (lambda (_g2734227498_)
                                     ((lambda (_L27501_)
                                        (if (gx#stx-datum? _L27501_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L27501_)
                                                        '()))
                                            (_g2734027494_ _g2734227498_)))
                                      _g2734227498_)))
                                  (_g2733827528_
                                   (lambda (_g2734227516_)
                                     ((lambda (_L27519_)
                                        (if (if (gx#identifier? _L27519_)
                                                (not (gx#ellipsis? _L27519_))
                                                '#f)
                                            (cons 'var: (cons _L27519_ '()))
                                            (_g2733927512_ _g2734227516_)))
                                      _g2734227516_)))
                                  (_g2733727544_
                                   (lambda (_g2734227532_)
                                     ((lambda (_L27535_)
                                        (if (gx#underscore? _L27535_)
                                            (cons 'any: '())
                                            (_g2733827528_ _g2734227532_)))
                                      _g2734227532_)))
                                  (_g2733627576_
                                   (lambda (_g2734227548_)
                                     (if (gx#stx-pair? _g2734227548_)
                                         (let ((_e2747227551_
                                                (gx#syntax-e _g2734227548_)))
                                           (let ((_hd2747327555_
                                                  (##car _e2747227551_))
                                                 (_tl2747427558_
                                                  (##cdr _e2747227551_)))
                                             ((lambda (_L27561_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L27561_)
                                                    (_parse126968_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L27561_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd27315_)
                                                       (let ((_$e27572_
                                                              (gx#stx-source
                                                               _hd27315_)))
                                                         (if _$e27572_
                                                             _$e27572_
                                                             (gx#stx-source
                                                              _stx26964_))))))
                                                    (_g2733727544_
                                                     _g2734227548_)))
                                              _hd2747327555_)))
                                         (_g2733727544_ _g2734227548_))))
                                  (_g2733527630_
                                   (lambda (_g2734227580_)
                                     (if (gx#stx-pair? _g2734227580_)
                                         (let ((_e2746227583_
                                                (gx#syntax-e _g2734227580_)))
                                           (let ((_hd2746327587_
                                                  (##car _e2746227583_))
                                                 (_tl2746427590_
                                                  (##cdr _e2746227583_)))
                                             (if (gx#identifier?
                                                  _hd2746327587_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35045_|
                                                      _hd2746327587_)
                                                     (if (gx#stx-pair?
                                                          _tl2746427590_)
                                                         (let ((_e2746527593_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2746427590_)))
                   (let ((_hd2746627597_ (##car _e2746527593_))
                         (_tl2746727600_ (##cdr _e2746527593_)))
                     (if (gx#stx-pair? _tl2746727600_)
                         (let ((_e2746827603_ (gx#syntax-e _tl2746727600_)))
                           (let ((_hd2746927607_ (##car _e2746827603_))
                                 (_tl2747027610_ (##cdr _e2746827603_)))
                             (if (gx#stx-null? _tl2747027610_)
                                 ((lambda (_L27613_ _L27615_)
                                    (cons 'apply:
                                          (cons _L27615_
                                                (cons (_parse126968_ _L27613_)
                                                      '()))))
                                  _hd2746927607_
                                  _hd2746627597_)
                                 (_g2733627576_ _g2734227580_))))
                         (_g2733627576_ _g2734227580_))))
                 (_g2733627576_ _g2734227580_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2733627576_
                                                      _g2734227580_))
                                                 (_g2733627576_
                                                  _g2734227580_))))
                                         (_g2733627576_ _g2734227580_))))
                                  (_g2733427670_
                                   (lambda (_g2734227634_)
                                     (if (gx#stx-pair? _g2734227634_)
                                         (let ((_e2745427637_
                                                (gx#syntax-e _g2734227634_)))
                                           (let ((_hd2745527641_
                                                  (##car _e2745427637_))
                                                 (_tl2745627644_
                                                  (##cdr _e2745427637_)))
                                             (if (gx#identifier?
                                                  _hd2745527641_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35046_|
                                                      _hd2745527641_)
                                                     (if (gx#stx-pair?
                                                          _tl2745627644_)
                                                         (let ((_e2745727647_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2745627644_)))
                   (let ((_hd2745827651_ (##car _e2745727647_))
                         (_tl2745927654_ (##cdr _e2745727647_)))
                     (if (gx#stx-null? _tl2745927654_)
                         ((lambda (_L27657_) (_parse-qq26974_ _L27657_))
                          _hd2745827651_)
                         (_g2733527630_ _g2734227634_))))
                 (_g2733527630_ _g2734227634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2733527630_
                                                      _g2734227634_))
                                                 (_g2733527630_
                                                  _g2734227634_))))
                                         (_g2733527630_ _g2734227634_))))
                                  (_g2733327710_
                                   (lambda (_g2734227674_)
                                     (if (gx#stx-pair? _g2734227674_)
                                         (let ((_e2744727677_
                                                (gx#syntax-e _g2734227674_)))
                                           (let ((_hd2744827681_
                                                  (##car _e2744727677_))
                                                 (_tl2744927684_
                                                  (##cdr _e2744727677_)))
                                             (if (gx#identifier?
                                                  _hd2744827681_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35047_|
                                                      _hd2744827681_)
                                                     (if (gx#stx-pair?
                                                          _tl2744927684_)
                                                         (let ((_e2745027687_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2744927684_)))
                   (let ((_hd2745127691_ (##car _e2745027687_))
                         (_tl2745227694_ (##cdr _e2745027687_)))
                     (if (gx#stx-null? _tl2745227694_)
                         ((lambda (_L27697_)
                            (cons 'datum: (cons (gx#stx-e _L27697_) '())))
                          _hd2745127691_)
                         (_g2733427670_ _g2734227674_))))
                 (_g2733427670_ _g2734227674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2733427670_
                                                      _g2734227674_))
                                                 (_g2733427670_
                                                  _g2734227674_))))
                                         (_g2733427670_ _g2734227674_))))
                                  (_g2733227760_
                                   (lambda (_g2734227714_)
                                     (if (gx#stx-pair? _g2734227714_)
                                         (let ((_e2744027717_
                                                (gx#syntax-e _g2734227714_)))
                                           (let ((_hd2744127721_
                                                  (##car _e2744027717_))
                                                 (_tl2744227724_
                                                  (##cdr _e2744027717_)))
                                             (if (gx#stx-pair? _tl2744227724_)
                                                 (let ((_e2744327727_
                                                        (gx#syntax-e
                                                         _tl2744227724_)))
                                                   (let ((_hd2744427731_
                                                          (##car _e2744327727_))
                                                         (_tl2744527734_
                                                          (##cdr _e2744327727_)))
                                                     (if (gx#stx-null?
                                                          _tl2744527734_)
                                                         ((lambda (_L27737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L27739_)
                    (if (if (gx#identifier? _L27739_)
                            (let ((_$e27752_
                                   (gx#free-identifier=?
                                    _L27739_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e27752_
                                  _$e27752_
                                  (let ((_$e27756_
                                         (gx#free-identifier=?
                                          _L27739_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e27756_
                                        _$e27756_
                                        (gx#free-identifier=?
                                         _L27739_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L27739_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L27737_ '()))))
                                    '()))
                        (_g2733327710_ _g2734227714_)))
                  _hd2744427731_
                  _hd2744127721_)
                 (_g2733327710_ _g2734227714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2733327710_
                                                  _g2734227714_))))
                                         (_g2733327710_ _g2734227714_))))
                                  (_g2733127790_
                                   (lambda (_g2734227764_)
                                     (if (gx#stx-pair? _g2734227764_)
                                         (let ((_e2743527767_
                                                (gx#syntax-e _g2734227764_)))
                                           (let ((_hd2743627771_
                                                  (##car _e2743527767_))
                                                 (_tl2743727774_
                                                  (##cdr _e2743527767_)))
                                             ((lambda (_L27777_ _L27779_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L27779_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27779_)
                        (cons (_parse-class-body26973_ _L27777_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2733227760_
                                                     _g2734227764_)))
                                              _tl2743727774_
                                              _hd2743627771_)))
                                         (_g2733227760_ _g2734227764_))))
                                  (_g2733027820_
                                   (lambda (_g2734227794_)
                                     (if (gx#stx-pair? _g2734227794_)
                                         (let ((_e2743027797_
                                                (gx#syntax-e _g2734227794_)))
                                           (let ((_hd2743127801_
                                                  (##car _e2743027797_))
                                                 (_tl2743227804_
                                                  (##cdr _e2743027797_)))
                                             ((lambda (_L27807_ _L27809_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L27809_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27809_)
                        (cons (_parse-vector26971_ _L27807_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2733127790_
                                                     _g2734227794_)))
                                              _tl2743227804_
                                              _hd2743127801_)))
                                         (_g2733127790_ _g2734227794_))))
                                  (_g2732927883_
                                   (lambda (_g2734227824_)
                                     (if (gx#stx-vector? _g2734227824_)
                                         (let ((_e2741827827_
                                                (vector->list
                                                 (gx#syntax-e _g2734227824_))))
                                           (if (gx#stx-pair/null?
                                                _e2741827827_)
                                               (if (fx>= (gx#stx-length
                                                          _e2741827827_)
                                                         '0)
                                                   (let ((_g35048_
                                                          (gx#syntax-split-splice
                                                           _e2741827827_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35049_
                                                              (values-count
                                                               _g35048_)))
                                                         (if (not (fx= _g35049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g35049_)))
               (let ((_target2741927831_ (values-ref _g35048_ 0))
                     (_tl2742127834_ (values-ref _g35048_ 1)))
                 (if (gx#stx-null? _tl2742127834_)
                     (letrec ((_loop2742227837_
                               (lambda (_hd2742027841_ _body2742627844_)
                                 (if (gx#stx-pair? _hd2742027841_)
                                     (let ((_e2742327847_
                                            (gx#syntax-e _hd2742027841_)))
                                       (let ((_lp-hd2742427851_
                                              (##car _e2742327847_))
                                             (_lp-tl2742527854_
                                              (##cdr _e2742327847_)))
                                         (_loop2742227837_
                                          _lp-tl2742527854_
                                          (cons _lp-hd2742427851_
                                                _body2742627844_))))
                                     (let ((_body2742727857_
                                            (reverse _body2742627844_)))
                                       ((lambda (_L27861_)
                                          (cons 'vector:
                                                (cons (_parse-vector26971_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2787427877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2787527880_)
                          (cons _g2787427877_ _g2787527880_))
                        '()
                        _L27861_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2742727857_))))))
                       (_loop2742227837_ _target2741927831_ '()))
                     (_g2733027820_ _g2734227824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2733027820_
                                                    _g2734227824_))
                                               (_g2733027820_ _g2734227824_)))
                                         (_g2733027820_ _g2734227824_))))
                                  (_g2732827911_
                                   (lambda (_g2734227887_)
                                     (if (gx#stx-pair? _g2734227887_)
                                         (let ((_e2741427890_
                                                (gx#syntax-e _g2734227887_)))
                                           (let ((_hd2741527894_
                                                  (##car _e2741427890_))
                                                 (_tl2741627897_
                                                  (##cdr _e2741427890_)))
                                             (if (gx#identifier?
                                                  _hd2741527894_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35050_|
                                                      _hd2741527894_)
                                                     ((lambda (_L27900_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector26971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27900_)
                            '())))
              _tl2741627897_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2732927883_
                                                      _g2734227887_))
                                                 (_g2732927883_
                                                  _g2734227887_))))
                                         (_g2732927883_ _g2734227887_))))
                                  (_g2732727939_
                                   (lambda (_g2734227915_)
                                     (if (gx#stx-pair? _g2734227915_)
                                         (let ((_e2741027918_
                                                (gx#syntax-e _g2734227915_)))
                                           (let ((_hd2741127922_
                                                  (##car _e2741027918_))
                                                 (_tl2741227925_
                                                  (##cdr _e2741027918_)))
                                             (if (gx#identifier?
                                                  _hd2741127922_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35051_|
                                                      _hd2741127922_)
                                                     ((lambda (_L27928_)
                                                        (cons 'values:
                                                              (cons (_parse-vector26971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27928_)
                            '())))
              _tl2741227925_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2732827911_
                                                      _g2734227915_))
                                                 (_g2732827911_
                                                  _g2734227915_))))
                                         (_g2732827911_ _g2734227915_))))
                                  (_g2732627979_
                                   (lambda (_g2734227943_)
                                     (if (gx#stx-pair? _g2734227943_)
                                         (let ((_e2740327946_
                                                (gx#syntax-e _g2734227943_)))
                                           (let ((_hd2740427950_
                                                  (##car _e2740327946_))
                                                 (_tl2740527953_
                                                  (##cdr _e2740327946_)))
                                             (if (gx#identifier?
                                                  _hd2740427950_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35052_|
                                                      _hd2740427950_)
                                                     (if (gx#stx-pair?
                                                          _tl2740527953_)
                                                         (let ((_e2740627956_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2740527953_)))
                   (let ((_hd2740727960_ (##car _e2740627956_))
                         (_tl2740827963_ (##cdr _e2740627956_)))
                     (if (gx#stx-null? _tl2740827963_)
                         ((lambda (_L27966_) (_parse126968_ _L27966_))
                          _hd2740727960_)
                         (_g2732727939_ _g2734227943_))))
                 (_g2732727939_ _g2734227943_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2732727939_
                                                      _g2734227943_))
                                                 (_g2732727939_
                                                  _g2734227943_))))
                                         (_g2732727939_ _g2734227943_))))
                                  (_g2732528000_
                                   (lambda (_g2734227983_)
                                     (if (gx#stx-box? _g2734227983_)
                                         (let ((_e2740127986_
                                                (unbox (gx#syntax-e
                                                        _g2734227983_))))
                                           ((lambda (_L27990_)
                                              (cons 'box:
                                                    (cons (_parse126968_
                                                           _L27990_)
                                                          '())))
                                            _e2740127986_))
                                         (_g2732627979_ _g2734227983_))))
                                  (_g2732428040_
                                   (lambda (_g2734228004_)
                                     (if (gx#stx-pair? _g2734228004_)
                                         (let ((_e2739428007_
                                                (gx#syntax-e _g2734228004_)))
                                           (let ((_hd2739528011_
                                                  (##car _e2739428007_))
                                                 (_tl2739628014_
                                                  (##cdr _e2739428007_)))
                                             (if (gx#identifier?
                                                  _hd2739528011_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35053_|
                                                      _hd2739528011_)
                                                     (if (gx#stx-pair?
                                                          _tl2739628014_)
                                                         (let ((_e2739728017_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2739628014_)))
                   (let ((_hd2739828021_ (##car _e2739728017_))
                         (_tl2739928024_ (##cdr _e2739728017_)))
                     (if (gx#stx-null? _tl2739928024_)
                         ((lambda (_L28027_)
                            (cons 'box: (cons (_parse126968_ _L28027_) '())))
                          _hd2739828021_)
                         (_g2732528000_ _g2734228004_))))
                 (_g2732528000_ _g2734228004_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2732528000_
                                                      _g2734228004_))
                                                 (_g2732528000_
                                                  _g2734228004_))))
                                         (_g2732528000_ _g2734228004_))))
                                  (_g2732328068_
                                   (lambda (_g2734228044_)
                                     (if (gx#stx-pair? _g2734228044_)
                                         (let ((_e2739028047_
                                                (gx#syntax-e _g2734228044_)))
                                           (let ((_hd2739128051_
                                                  (##car _e2739028047_))
                                                 (_tl2739228054_
                                                  (##cdr _e2739028047_)))
                                             (if (gx#identifier?
                                                  _hd2739128051_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35054_|
                                                      _hd2739128051_)
                                                     ((lambda (_L28057_)
                                                        (_parse-list26970_
                                                         _L28057_))
                                                      _tl2739228054_)
                                                     (_g2732428040_
                                                      _g2734228044_))
                                                 (_g2732428040_
                                                  _g2734228044_))))
                                         (_g2732428040_ _g2734228044_))))
                                  (_g2732228124_
                                   (lambda (_g2734228072_)
                                     (if (gx#stx-pair? _g2734228072_)
                                         (let ((_e2738028075_
                                                (gx#syntax-e _g2734228072_)))
                                           (let ((_hd2738128079_
                                                  (##car _e2738028075_))
                                                 (_tl2738228082_
                                                  (##cdr _e2738028075_)))
                                             (if (gx#identifier?
                                                  _hd2738128079_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35055_|
                                                      _hd2738128079_)
                                                     (if (gx#stx-pair?
                                                          _tl2738228082_)
                                                         (let ((_e2738328085_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2738228082_)))
                   (let ((_hd2738428089_ (##car _e2738328085_))
                         (_tl2738528092_ (##cdr _e2738328085_)))
                     (if (gx#stx-pair? _tl2738528092_)
                         (let ((_e2738628095_ (gx#syntax-e _tl2738528092_)))
                           (let ((_hd2738728099_ (##car _e2738628095_))
                                 (_tl2738828102_ (##cdr _e2738628095_)))
                             ((lambda (_L28105_ _L28107_ _L28108_)
                                (if (gx#stx-null? _L28105_)
                                    (cons 'cons:
                                          (cons (_parse126968_ _L28108_)
                                                (cons (_parse126968_ _L28107_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse126968_ _L28108_)
                                                (cons (_parse126968_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L28107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L28105_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2738828102_
                              _hd2738728099_
                              _hd2738428089_)))
                         (_g2732328068_ _g2734228072_))))
                 (_g2732328068_ _g2734228072_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2732328068_
                                                      _g2734228072_))
                                                 (_g2732328068_
                                                  _g2734228072_))))
                                         (_g2732328068_ _g2734228072_))))
                                  (_g2732128178_
                                   (lambda (_g2734228128_)
                                     (if (gx#stx-pair? _g2734228128_)
                                         (let ((_e2736828131_
                                                (gx#syntax-e _g2734228128_)))
                                           (let ((_hd2736928135_
                                                  (##car _e2736828131_))
                                                 (_tl2737028138_
                                                  (##cdr _e2736828131_)))
                                             (if (gx#identifier?
                                                  _hd2736928135_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35056_|
                                                      _hd2736928135_)
                                                     (if (gx#stx-pair?
                                                          _tl2737028138_)
                                                         (let ((_e2737128141_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2737028138_)))
                   (let ((_hd2737228145_ (##car _e2737128141_))
                         (_tl2737328148_ (##cdr _e2737128141_)))
                     (if (gx#stx-pair? _tl2737328148_)
                         (let ((_e2737428151_ (gx#syntax-e _tl2737328148_)))
                           (let ((_hd2737528155_ (##car _e2737428151_))
                                 (_tl2737628158_ (##cdr _e2737428151_)))
                             (if (gx#stx-null? _tl2737628158_)
                                 ((lambda (_L28161_ _L28163_)
                                    (cons 'cons:
                                          (cons (_parse126968_ _L28163_)
                                                (cons (_parse126968_ _L28161_)
                                                      '()))))
                                  _hd2737528155_
                                  _hd2737228145_)
                                 (_g2732228124_ _g2734228128_))))
                         (_g2732228124_ _g2734228128_))))
                 (_g2732228124_ _g2734228128_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2732228124_
                                                      _g2734228128_))
                                                 (_g2732228124_
                                                  _g2734228128_))))
                                         (_g2732228124_ _g2734228128_))))
                                  (_g2732028218_
                                   (lambda (_g2734228182_)
                                     (if (gx#stx-pair? _g2734228182_)
                                         (let ((_e2736028185_
                                                (gx#syntax-e _g2734228182_)))
                                           (let ((_hd2736128189_
                                                  (##car _e2736028185_))
                                                 (_tl2736228192_
                                                  (##cdr _e2736028185_)))
                                             (if (gx#identifier?
                                                  _hd2736128189_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35057_|
                                                      _hd2736128189_)
                                                     (if (gx#stx-pair?
                                                          _tl2736228192_)
                                                         (let ((_e2736328195_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2736228192_)))
                   (let ((_hd2736428199_ (##car _e2736328195_))
                         (_tl2736528202_ (##cdr _e2736328195_)))
                     (if (gx#stx-null? _tl2736528202_)
                         ((lambda (_L28205_)
                            (cons 'not: (cons (_parse126968_ _L28205_) '())))
                          _hd2736428199_)
                         (_g2732128178_ _g2734228182_))))
                 (_g2732128178_ _g2734228182_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2732128178_
                                                      _g2734228182_))
                                                 (_g2732128178_
                                                  _g2734228182_))))
                                         (_g2732128178_ _g2734228182_))))
                                  (_g2731928303_
                                   (lambda (_g2734228222_)
                                     (if (gx#stx-pair? _g2734228222_)
                                         (let ((_e2735628225_
                                                (gx#syntax-e _g2734228222_)))
                                           (let ((_hd2735728229_
                                                  (##car _e2735628225_))
                                                 (_tl2735828232_
                                                  (##cdr _e2735628225_)))
                                             (if (gx#identifier?
                                                  _hd2735728229_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35058_|
                                                      _hd2735728229_)
                                                     ((lambda (_L28235_)
                                                        (if (gx#stx-list?
                                                             _L28235_)
                                                            (let* ((_g2824728258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2824828254_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2824828254_)))
                           (_g2824628269_
                            (lambda (_g2824828262_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse126968_ _L28235_))))))
                           (_g2824528299_
                            (lambda (_g2824828273_)
                              (if (gx#stx-pair? _g2824828273_)
                                  (let ((_e2825028276_
                                         (gx#syntax-e _g2824828273_)))
                                    (let ((_hd2825128280_
                                           (##car _e2825028276_))
                                          (_tl2825228283_
                                           (##cdr _e2825028276_)))
                                      (if (gx#stx-null? _tl2825228283_)
                                          ((lambda (_L28286_)
                                             (_parse126968_ _L28286_))
                                           _hd2825128280_)
                                          (_g2824628269_ _g2824828273_))))
                                  (_g2824628269_ _g2824828273_)))))
                      (_g2824528299_ _L28235_))
                    (_g2732028218_ _g2734228222_)))
              _tl2735828232_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2732028218_
                                                      _g2734228222_))
                                                 (_g2732028218_
                                                  _g2734228222_))))
                                         (_g2732028218_ _g2734228222_))))
                                  (_g2731828388_
                                   (lambda (_g2734228307_)
                                     (if (gx#stx-pair? _g2734228307_)
                                         (let ((_e2735228310_
                                                (gx#syntax-e _g2734228307_)))
                                           (let ((_hd2735328314_
                                                  (##car _e2735228310_))
                                                 (_tl2735428317_
                                                  (##cdr _e2735228310_)))
                                             (if (gx#identifier?
                                                  _hd2735328314_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35059_|
                                                      _hd2735328314_)
                                                     ((lambda (_L28320_)
                                                        (if (gx#stx-list?
                                                             _L28320_)
                                                            (let* ((_g2833228343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2833328339_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2833328339_)))
                           (_g2833128354_
                            (lambda (_g2833328347_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse126968_ _L28320_))))))
                           (_g2833028384_
                            (lambda (_g2833328358_)
                              (if (gx#stx-pair? _g2833328358_)
                                  (let ((_e2833528361_
                                         (gx#syntax-e _g2833328358_)))
                                    (let ((_hd2833628365_
                                           (##car _e2833528361_))
                                          (_tl2833728368_
                                           (##cdr _e2833528361_)))
                                      (if (gx#stx-null? _tl2833728368_)
                                          ((lambda (_L28371_)
                                             (_parse126968_ _L28371_))
                                           _hd2833628365_)
                                          (_g2833128354_ _g2833328358_))))
                                  (_g2833128354_ _g2833328358_)))))
                      (_g2833028384_ _L28320_))
                    (_g2731928303_ _g2734228307_)))
              _tl2735428317_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2731928303_
                                                      _g2734228307_))
                                                 (_g2731928303_
                                                  _g2734228307_))))
                                         (_g2731928303_ _g2734228307_))))
                                  (_g2731728628_
                                   (lambda (_g2734228392_)
                                     (if (gx#stx-pair? _g2734228392_)
                                         (let ((_e2734528395_
                                                (gx#syntax-e _g2734228392_)))
                                           (let ((_hd2734628399_
                                                  (##car _e2734528395_))
                                                 (_tl2734728402_
                                                  (##cdr _e2734528395_)))
                                             (if (gx#identifier?
                                                  _hd2734628399_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g35060_|
                                                      _hd2734628399_)
                                                     (if (gx#stx-pair?
                                                          _tl2734728402_)
                                                         (let ((_e2734828405_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2734728402_)))
                   (let ((_hd2734928409_ (##car _e2734828405_))
                         (_tl2735028412_ (##cdr _e2734828405_)))
                     ((lambda (_L28415_ _L28417_)
                        (let* ((_g2843428466_
                                (lambda (_g2843528462_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2843528462_)))
                               (_g2843328477_
                                (lambda (_g2843528470_)
                                  ((lambda ()
                                     (_parse-error26975_ _hd27315_)))))
                               (_g2843228545_
                                (lambda (_g2843528481_)
                                  (if (gx#stx-pair? _g2843528481_)
                                      (let ((_e2844928484_
                                             (gx#syntax-e _g2843528481_)))
                                        (let ((_hd2845028488_
                                               (##car _e2844928484_))
                                              (_tl2845128491_
                                               (##cdr _e2844928484_)))
                                          (if (gx#stx-datum? _hd2845028488_)
                                              (if (equal? (gx#stx-e
                                                           _hd2845028488_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2845128491_)
                                                      (let ((_e2845228494_
                                                             (gx#syntax-e
                                                              _tl2845128491_)))
                                                        (let ((_hd2845328498_
                                                               (##car _e2845228494_))
                                                              (_tl2845428501_
                                                               (##cdr _e2845228494_)))
                                                          (if (gx#stx-pair?
                                                               _tl2845428501_)
                                                              (let ((_e2845528504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2845428501_)))
                        (let ((_hd2845628508_ (##car _e2845528504_))
                              (_tl2845728511_ (##cdr _e2845528504_)))
                          (if (gx#identifier? _hd2845628508_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35061_|
                                   _hd2845628508_)
                                  (if (gx#stx-pair? _tl2845728511_)
                                      (let ((_e2845828514_
                                             (gx#syntax-e _tl2845728511_)))
                                        (let ((_hd2845928518_
                                               (##car _e2845828514_))
                                              (_tl2846028521_
                                               (##cdr _e2845828514_)))
                                          (if (gx#stx-null? _tl2846028521_)
                                              ((lambda (_L28524_ _L28526_)
                                                 (cons '?:
                                                       (cons _L28417_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L28526_
                                 (cons '=>:
                                       (cons (_parse126968_ _L28524_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2845928518_
                                               _hd2845328498_)
                                              (_g2843328477_ _g2843528481_))))
                                      (_g2843328477_ _g2843528481_))
                                  (_g2843328477_ _g2843528481_))
                              (_g2843328477_ _g2843528481_))))
                      (_g2843328477_ _g2843528481_))))
              (_g2843328477_ _g2843528481_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2843328477_
                                                   _g2843528481_))
                                              (_g2843328477_ _g2843528481_))))
                                      (_g2843328477_ _g2843528481_))))
                               (_g2843128585_
                                (lambda (_g2843528549_)
                                  (if (gx#stx-pair? _g2843528549_)
                                      (let ((_e2844128552_
                                             (gx#syntax-e _g2843528549_)))
                                        (let ((_hd2844228556_
                                               (##car _e2844128552_))
                                              (_tl2844328559_
                                               (##cdr _e2844128552_)))
                                          (if (gx#identifier? _hd2844228556_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35062_|
                                                   _hd2844228556_)
                                                  (if (gx#stx-pair?
                                                       _tl2844328559_)
                                                      (let ((_e2844428562_
                                                             (gx#syntax-e
                                                              _tl2844328559_)))
                                                        (let ((_hd2844528566_
                                                               (##car _e2844428562_))
                                                              (_tl2844628569_
                                                               (##cdr _e2844428562_)))
                                                          (if (gx#stx-null?
                                                               _tl2844628569_)
                                                              ((lambda (_L28572_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L28417_
                                     (cons '=>:
                                           (cons (_parse126968_ _L28572_)
                                                 '())))))
                       _hd2844528566_)
                      (_g2843228545_ _g2843528549_))))
              (_g2843228545_ _g2843528549_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2843228545_
                                                   _g2843528549_))
                                              (_g2843228545_ _g2843528549_))))
                                      (_g2843228545_ _g2843528549_))))
                               (_g2843028613_
                                (lambda (_g2843528589_)
                                  (if (gx#stx-pair? _g2843528589_)
                                      (let ((_e2843728592_
                                             (gx#syntax-e _g2843528589_)))
                                        (let ((_hd2843828596_
                                               (##car _e2843728592_))
                                              (_tl2843928599_
                                               (##cdr _e2843728592_)))
                                          (if (gx#stx-null? _tl2843928599_)
                                              ((lambda (_L28602_)
                                                 (cons '?:
                                                       (cons _L28417_
                                                             (cons (_parse126968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L28602_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2843828596_)
                                              (_g2843128585_ _g2843528589_))))
                                      (_g2843128585_ _g2843528589_))))
                               (_g2842928624_
                                (lambda (_g2843528617_)
                                  (if (gx#stx-null? _g2843528617_)
                                      ((lambda ()
                                         (cons '?: (cons _L28417_ '()))))
                                      (_g2843028613_ _g2843528617_)))))
                          (_g2842928624_ _L28415_)))
                      _tl2735028412_
                      _hd2734928409_)))
                 (_g2731828388_ _g2734228392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2731828388_
                                                      _g2734228392_))
                                                 (_g2731828388_
                                                  _g2734228392_))))
                                         (_g2731828388_ _g2734228392_)))))
                             (_g2731728628_ _hd27315_))))
                        (_parse-list26970_
                         (lambda (_body27150_)
                           (let* ((_g2715627184_
                                   (lambda (_g2715727180_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2715727180_)))
                                  (_g2715527195_
                                   (lambda (_g2715727188_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body27150_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body27150_))
                                                (_parse126968_ _body27150_)
                                                (_parse-error26975_
                                                 _body27150_)))))))
                                  (_g2715427227_
                                   (lambda (_g2715727199_)
                                     (if (gx#stx-pair? _g2715727199_)
                                         (let ((_e2717627202_
                                                (gx#syntax-e _g2715727199_)))
                                           (let ((_hd2717727206_
                                                  (##car _e2717627202_))
                                                 (_tl2717827209_
                                                  (##cdr _e2717627202_)))
                                             ((lambda (_L27212_ _L27214_)
                                                (if (not (gx#ellipsis?
                                                          _L27214_))
                                                    (cons 'cons:
                                                          (cons (_parse126968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27214_)
                        (cons (_parse-list26970_ _L27212_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2715527195_
                                                     _g2715727199_)))
                                              _tl2717827209_
                                              _hd2717727206_)))
                                         (_g2715527195_ _g2715727199_))))
                                  (_g2715327271_
                                   (lambda (_g2715727231_)
                                     (if (gx#stx-pair? _g2715727231_)
                                         (let ((_e2716827234_
                                                (gx#syntax-e _g2715727231_)))
                                           (let ((_hd2716927238_
                                                  (##car _e2716827234_))
                                                 (_tl2717027241_
                                                  (##cdr _e2716827234_)))
                                             (if (gx#stx-pair? _tl2717027241_)
                                                 (let ((_e2717127244_
                                                        (gx#syntax-e
                                                         _tl2717027241_)))
                                                   (let ((_hd2717227248_
                                                          (##car _e2717127244_))
                                                         (_tl2717327251_
                                                          (##cdr _e2717127244_)))
                                                     ((lambda (_L27254_
                                                               _L27256_
                                                               _L27257_)
                                                        (if (gx#ellipsis?
                                                             _L27256_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse126968_ _L27257_)
                                (cons (_parse-list26970_ _L27254_) '())))
                    (_g2715427227_ _g2715727231_)))
              _tl2717327251_
              _hd2717227248_
              _hd2716927238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2715427227_
                                                  _g2715727231_))))
                                         (_g2715427227_ _g2715727231_))))
                                  (_g2715227311_
                                   (lambda (_g2715727275_)
                                     (if (gx#stx-pair? _g2715727275_)
                                         (let ((_e2715927278_
                                                (gx#syntax-e _g2715727275_)))
                                           (let ((_hd2716027282_
                                                  (##car _e2715927278_))
                                                 (_tl2716127285_
                                                  (##cdr _e2715927278_)))
                                             (if (gx#stx-datum? _hd2716027282_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2716027282_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2716127285_)
                                                         (let ((_e2716227288_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2716127285_)))
                   (let ((_hd2716327292_ (##car _e2716227288_))
                         (_tl2716427295_ (##cdr _e2716227288_)))
                     (if (gx#stx-null? _tl2716427295_)
                         ((lambda (_L27298_) (_parse126968_ _L27298_))
                          _hd2716327292_)
                         (_g2715327271_ _g2715727275_))))
                 (_g2715327271_ _g2715727275_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2715327271_
                                                      _g2715727275_))
                                                 (_g2715327271_
                                                  _g2715727275_))))
                                         (_g2715327271_ _g2715727275_)))))
                             (_g2715227311_ _body27150_))))
                        (_parse-vector26971_
                         (lambda (_body27147_)
                           (if (_simple-vector?26972_ _body27147_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse126968_
                                            _body27147_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list26970_ _body27147_)
                                           '())))))
                        (_simple-vector?26972_
                         (lambda (_body27084_)
                           (let* ((_g2708827100_
                                   (lambda (_g2708927096_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2708927096_)))
                                  (_g2708727111_
                                   (lambda (_g2708927104_)
                                     ((lambda () (gx#stx-null? _body27084_)))))
                                  (_g2708627143_
                                   (lambda (_g2708927115_)
                                     (if (gx#stx-pair? _g2708927115_)
                                         (let ((_e2709227118_
                                                (gx#syntax-e _g2708927115_)))
                                           (let ((_hd2709327122_
                                                  (##car _e2709227118_))
                                                 (_tl2709427125_
                                                  (##cdr _e2709227118_)))
                                             ((lambda (_L27128_ _L27130_)
                                                (if (not (gx#ellipsis?
                                                          _L27130_))
                                                    (_simple-vector?26972_
                                                     _L27128_)
                                                    '#f))
                                              _tl2709427125_
                                              _hd2709327122_)))
                                         (_g2708727111_ _g2708927115_)))))
                             (_g2708627143_ _body27084_))))
                        (_parse-class-body26973_
                         (lambda (_body26993_)
                           (let _recur26996_ ((_rest26999_ _body26993_))
                             (let* ((_g2700327019_
                                     (lambda (_g2700427015_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2700427015_)))
                                    (_g2700227030_
                                     (lambda (_g2700427023_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest26999_)
                                              '()
                                              (_parse-error26975_
                                               _rest26999_))))))
                                    (_g2700127080_
                                     (lambda (_g2700427034_)
                                       (if (gx#stx-pair? _g2700427034_)
                                           (let ((_e2700827037_
                                                  (gx#syntax-e _g2700427034_)))
                                             (let ((_hd2700927041_
                                                    (##car _e2700827037_))
                                                   (_tl2701027044_
                                                    (##cdr _e2700827037_)))
                                               (if (gx#stx-pair?
                                                    _tl2701027044_)
                                                   (let ((_e2701127047_
                                                          (gx#syntax-e
                                                           _tl2701027044_)))
                                                     (let ((_hd2701227051_
                                                            (##car _e2701127047_))
                                                           (_tl2701327054_
                                                            (##cdr _e2701127047_)))
                                                       ((lambda (_L27057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L27059_
                         _L27060_)
                  (if (gx#stx-keyword? _L27060_)
                      (cons* _L27060_
                             (_parse126968_ _L27059_)
                             (_recur26996_ _L27057_))
                      (_g2700227030_ _g2700427034_)))
                _tl2701327054_
                _hd2701227051_
                _hd2700927041_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2700227030_
                                                    _g2700427034_))))
                                           (_g2700227030_ _g2700427034_)))))
                               (_g2700127080_ _rest26999_)))))
                        (_parse-qq26974_
                         (lambda (_hd26980_)
                           (let ((_g2698226989_
                                  (lambda (_g2698326985_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2698326985_))))
                             (_g2698226989_ _hd26980_))))
                        (_parse-error26975_
                         (lambda (_hd26977_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx26966_
                                      (cons _match-stx26966_
                                            (cons _stx26964_
                                                  (cons _hd26977_ '())))
                                      (cons _stx26964_
                                            (cons _hd26977_ '())))))))
                 (_parse126968_ _stx26964_)))))
        (lambda _g35064_
          (let ((_g35063_ (length _g35064_)))
            (cond ((fx= _g35063_ 1)
                   (apply (lambda (_stx28636_)
                            (let ((_match-stx28639_ '#f))
                              (_opt-lambda2696228632_
                               _stx28636_
                               _match-stx28639_)))
                          _g35064_))
                  ((fx= _g35063_ 2) (apply _opt-lambda2696228632_ _g35064_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g35064_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx26948_)
        (call-with-escape
         (lambda (_E26952_)
           (with-exception-handler
            (let ((_E!26955_ (current-exception-handler)))
              (lambda (_e26958_)
                (if (gx#syntax-error? _e26958_)
                    (_E26952_ '#f)
                    (_E!26955_ _e26958_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx26948_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree25737_)
        (letrec ((_loop25740_
                  (lambda (_ptree26015_ _vars26017_ _K26018_)
                    (let* ((_g2603126132_
                            (lambda (_g2603226128_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2603226128_)))
                           (_g2603026143_
                            (lambda (_g2603226136_)
                              ((lambda () (_K26018_ _vars26017_)))))
                           (_g2602926190_
                            (lambda (_g2603226147_)
                              (if (gx#stx-pair? _g2603226147_)
                                  (let ((_e2612126150_
                                         (gx#syntax-e _g2603226147_)))
                                    (let ((_hd2612226154_
                                           (##car _e2612126150_))
                                          (_tl2612326157_
                                           (##cdr _e2612126150_)))
                                      (if (gx#stx-datum? _hd2612226154_)
                                          (if (equal? (gx#stx-e _hd2612226154_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2612326157_)
                                                  (let ((_e2612426160_
                                                         (gx#syntax-e
                                                          _tl2612326157_)))
                                                    (let ((_hd2612526164_
                                                           (##car _e2612426160_))
                                                          (_tl2612626167_
                                                           (##cdr _e2612426160_)))
                                                      (if (gx#stx-null?
                                                           _tl2612626167_)
                                                          ((lambda (_L26170_)
                                                             (if (find (lambda (_g2618426186_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2618426186_
                                  _L26170_))
                               _vars26017_)
                         (_K26018_ _vars26017_)
                         (_K26018_ (cons _L26170_ _vars26017_))))
                   _hd2612526164_)
                  (_g2603026143_ _g2603226147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2603026143_
                                                   _g2603226147_))
                                              (_g2603026143_ _g2603226147_))
                                          (_g2603026143_ _g2603226147_))))
                                  (_g2603026143_ _g2603226147_))))
                           (_g2602826244_
                            (lambda (_g2603226194_)
                              (if (gx#stx-pair? _g2603226194_)
                                  (let ((_e2611126197_
                                         (gx#syntax-e _g2603226194_)))
                                    (let ((_hd2611226201_
                                           (##car _e2611126197_))
                                          (_tl2611326204_
                                           (##cdr _e2611126197_)))
                                      (if (gx#stx-datum? _hd2611226201_)
                                          (if (equal? (gx#stx-e _hd2611226201_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2611326204_)
                                                  (let ((_e2611426207_
                                                         (gx#syntax-e
                                                          _tl2611326204_)))
                                                    (let ((_hd2611526211_
                                                           (##car _e2611426207_))
                                                          (_tl2611626214_
                                                           (##cdr _e2611426207_)))
                                                      (if (gx#stx-pair?
                                                           _tl2611626214_)
                                                          (let ((_e2611726217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2611626214_)))
                    (let ((_hd2611826221_ (##car _e2611726217_))
                          (_tl2611926224_ (##cdr _e2611726217_)))
                      (if (gx#stx-null? _tl2611926224_)
                          ((lambda (_L26227_ _L26229_)
                             (_loop25740_ _L26227_ _vars26017_ _K26018_))
                           _hd2611826221_
                           _hd2611526211_)
                          (_g2602926190_ _g2603226194_))))
                  (_g2602926190_ _g2603226194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2602926190_
                                                   _g2603226194_))
                                              (_g2602926190_ _g2603226194_))
                                          (_g2602926190_ _g2603226194_))))
                                  (_g2602926190_ _g2603226194_))))
                           (_g2602726296_
                            (lambda (_g2603226248_)
                              (if (gx#stx-pair? _g2603226248_)
                                  (let ((_e2610026251_
                                         (gx#syntax-e _g2603226248_)))
                                    (let ((_hd2610126255_
                                           (##car _e2610026251_))
                                          (_tl2610226258_
                                           (##cdr _e2610026251_)))
                                      (if (gx#stx-datum? _hd2610126255_)
                                          (if (equal? (gx#stx-e _hd2610126255_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2610226258_)
                                                  (let ((_e2610326261_
                                                         (gx#syntax-e
                                                          _tl2610226258_)))
                                                    (let ((_hd2610426265_
                                                           (##car _e2610326261_))
                                                          (_tl2610526268_
                                                           (##cdr _e2610326261_)))
                                                      (if (gx#stx-pair?
                                                           _tl2610526268_)
                                                          (let ((_e2610626271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2610526268_)))
                    (let ((_hd2610726275_ (##car _e2610626271_))
                          (_tl2610826278_ (##cdr _e2610626271_)))
                      (if (gx#stx-null? _tl2610826278_)
                          ((lambda (_L26281_)
                             (_loop-class-list25744_
                              _L26281_
                              _vars26017_
                              _K26018_))
                           _hd2610726275_)
                          (_g2602826244_ _g2603226248_))))
                  (_g2602826244_ _g2603226248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2602826244_
                                                   _g2603226248_))
                                              (_g2602826244_ _g2603226248_))
                                          (_g2602826244_ _g2603226248_))))
                                  (_g2602826244_ _g2603226248_))))
                           (_g2602626348_
                            (lambda (_g2603226300_)
                              (if (gx#stx-pair? _g2603226300_)
                                  (let ((_e2609026303_
                                         (gx#syntax-e _g2603226300_)))
                                    (let ((_hd2609126307_
                                           (##car _e2609026303_))
                                          (_tl2609226310_
                                           (##cdr _e2609026303_)))
                                      (if (gx#stx-datum? _hd2609126307_)
                                          (if (equal? (gx#stx-e _hd2609126307_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2609226310_)
                                                  (let ((_e2609326313_
                                                         (gx#syntax-e
                                                          _tl2609226310_)))
                                                    (let ((_hd2609426317_
                                                           (##car _e2609326313_))
                                                          (_tl2609526320_
                                                           (##cdr _e2609326313_)))
                                                      (if (gx#stx-pair?
                                                           _tl2609526320_)
                                                          (let ((_e2609626323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2609526320_)))
                    (let ((_hd2609726327_ (##car _e2609626323_))
                          (_tl2609826330_ (##cdr _e2609626323_)))
                      (if (gx#stx-null? _tl2609826330_)
                          ((lambda (_L26333_)
                             (_loop-vector25742_
                              _L26333_
                              _vars26017_
                              _K26018_))
                           _hd2609726327_)
                          (_g2602726296_ _g2603226300_))))
                  (_g2602726296_ _g2603226300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2602726296_
                                                   _g2603226300_))
                                              (_g2602726296_ _g2603226300_))
                                          (_g2602726296_ _g2603226300_))))
                                  (_g2602726296_ _g2603226300_))))
                           (_g2602526394_
                            (lambda (_g2603226352_)
                              (if (gx#stx-pair? _g2603226352_)
                                  (let ((_e2608326355_
                                         (gx#syntax-e _g2603226352_)))
                                    (let ((_hd2608426359_
                                           (##car _e2608326355_))
                                          (_tl2608526362_
                                           (##cdr _e2608326355_)))
                                      (if (gx#stx-pair? _tl2608526362_)
                                          (let ((_e2608626365_
                                                 (gx#syntax-e _tl2608526362_)))
                                            (let ((_hd2608726369_
                                                   (##car _e2608626365_))
                                                  (_tl2608826372_
                                                   (##cdr _e2608626365_)))
                                              (if (gx#stx-null? _tl2608826372_)
                                                  ((lambda (_L26375_ _L26377_)
                                                     (if (let ((_$e26390_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L26377_)))
                   (if _$e26390_ _$e26390_ (gx#stx-eq? 'vector: _L26377_)))
                 (_loop-vector25742_ _L26375_ _vars26017_ _K26018_)
                 (_g2602626348_ _g2603226352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2608726369_
                                                   _hd2608426359_)
                                                  (_g2602626348_
                                                   _g2603226352_))))
                                          (_g2602626348_ _g2603226352_))))
                                  (_g2602626348_ _g2603226352_))))
                           (_g2602426434_
                            (lambda (_g2603226398_)
                              (if (gx#stx-pair? _g2603226398_)
                                  (let ((_e2607526401_
                                         (gx#syntax-e _g2603226398_)))
                                    (let ((_hd2607626405_
                                           (##car _e2607526401_))
                                          (_tl2607726408_
                                           (##cdr _e2607526401_)))
                                      (if (gx#stx-datum? _hd2607626405_)
                                          (if (equal? (gx#stx-e _hd2607626405_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2607726408_)
                                                  (let ((_e2607826411_
                                                         (gx#syntax-e
                                                          _tl2607726408_)))
                                                    (let ((_hd2607926415_
                                                           (##car _e2607826411_))
                                                          (_tl2608026418_
                                                           (##cdr _e2607826411_)))
                                                      (if (gx#stx-null?
                                                           _tl2608026418_)
                                                          ((lambda (_L26421_)
                                                             (_loop25740_
                                                              _L26421_
                                                              _vars26017_
                                                              _K26018_))
                                                           _hd2607926415_)
                                                          (_g2602526394_
                                                           _g2603226398_))))
                                                  (_g2602526394_
                                                   _g2603226398_))
                                              (_g2602526394_ _g2603226398_))
                                          (_g2602526394_ _g2603226398_))))
                                  (_g2602526394_ _g2603226398_))))
                           (_g2602326493_
                            (lambda (_g2603226438_)
                              (if (gx#stx-pair? _g2603226438_)
                                  (let ((_e2606526441_
                                         (gx#syntax-e _g2603226438_)))
                                    (let ((_hd2606626445_
                                           (##car _e2606526441_))
                                          (_tl2606726448_
                                           (##cdr _e2606526441_)))
                                      (if (gx#stx-datum? _hd2606626445_)
                                          (if (equal? (gx#stx-e _hd2606626445_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2606726448_)
                                                  (let ((_e2606826451_
                                                         (gx#syntax-e
                                                          _tl2606726448_)))
                                                    (let ((_hd2606926455_
                                                           (##car _e2606826451_))
                                                          (_tl2607026458_
                                                           (##cdr _e2606826451_)))
                                                      (if (gx#stx-pair?
                                                           _tl2607026458_)
                                                          (let ((_e2607126461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2607026458_)))
                    (let ((_hd2607226465_ (##car _e2607126461_))
                          (_tl2607326468_ (##cdr _e2607126461_)))
                      (if (gx#stx-null? _tl2607326468_)
                          ((lambda (_L26471_ _L26473_)
                             (_loop25740_
                              _L26473_
                              _vars26017_
                              (lambda (_g2648726489_)
                                (_loop25740_
                                 _L26471_
                                 _g2648726489_
                                 _K26018_))))
                           _hd2607226465_
                           _hd2606926455_)
                          (_g2602426434_ _g2603226438_))))
                  (_g2602426434_ _g2603226438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2602426434_
                                                   _g2603226438_))
                                              (_g2602426434_ _g2603226438_))
                                          (_g2602426434_ _g2603226438_))))
                                  (_g2602426434_ _g2603226438_))))
                           (_g2602226552_
                            (lambda (_g2603226497_)
                              (if (gx#stx-pair? _g2603226497_)
                                  (let ((_e2605426500_
                                         (gx#syntax-e _g2603226497_)))
                                    (let ((_hd2605526504_
                                           (##car _e2605426500_))
                                          (_tl2605626507_
                                           (##cdr _e2605426500_)))
                                      (if (gx#stx-datum? _hd2605526504_)
                                          (if (equal? (gx#stx-e _hd2605526504_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2605626507_)
                                                  (let ((_e2605726510_
                                                         (gx#syntax-e
                                                          _tl2605626507_)))
                                                    (let ((_hd2605826514_
                                                           (##car _e2605726510_))
                                                          (_tl2605926517_
                                                           (##cdr _e2605726510_)))
                                                      (if (gx#stx-pair?
                                                           _tl2605926517_)
                                                          (let ((_e2606026520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2605926517_)))
                    (let ((_hd2606126524_ (##car _e2606026520_))
                          (_tl2606226527_ (##cdr _e2606026520_)))
                      (if (gx#stx-null? _tl2606226527_)
                          ((lambda (_L26530_ _L26532_)
                             (_loop25740_
                              _L26532_
                              _vars26017_
                              (lambda (_g2654626548_)
                                (_loop25740_
                                 _L26530_
                                 _g2654626548_
                                 _K26018_))))
                           _hd2606126524_
                           _hd2605826514_)
                          (_g2602326493_ _g2603226497_))))
                  (_g2602326493_ _g2603226497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2602326493_
                                                   _g2603226497_))
                                              (_g2602326493_ _g2603226497_))
                                          (_g2602326493_ _g2603226497_))))
                                  (_g2602326493_ _g2603226497_))))
                           (_g2602126592_
                            (lambda (_g2603226556_)
                              (if (gx#stx-pair? _g2603226556_)
                                  (let ((_e2604626559_
                                         (gx#syntax-e _g2603226556_)))
                                    (let ((_hd2604726563_
                                           (##car _e2604626559_))
                                          (_tl2604826566_
                                           (##cdr _e2604626559_)))
                                      (if (gx#stx-datum? _hd2604726563_)
                                          (if (equal? (gx#stx-e _hd2604726563_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2604826566_)
                                                  (let ((_e2604926569_
                                                         (gx#syntax-e
                                                          _tl2604826566_)))
                                                    (let ((_hd2605026573_
                                                           (##car _e2604926569_))
                                                          (_tl2605126576_
                                                           (##cdr _e2604926569_)))
                                                      (if (gx#stx-null?
                                                           _tl2605126576_)
                                                          ((lambda (_L26579_)
                                                             (_loop25740_
                                                              _L26579_
                                                              _vars26017_
                                                              _K26018_))
                                                           _hd2605026573_)
                                                          (_g2602226552_
                                                           _g2603226556_))))
                                                  (_g2602226552_
                                                   _g2603226556_))
                                              (_g2602226552_ _g2603226556_))
                                          (_g2602226552_ _g2603226556_))))
                                  (_g2602226552_ _g2603226556_))))
                           (_g2602026691_
                            (lambda (_g2603226596_)
                              (if (gx#stx-pair? _g2603226596_)
                                  (let ((_e2604226599_
                                         (gx#syntax-e _g2603226596_)))
                                    (let ((_hd2604326603_
                                           (##car _e2604226599_))
                                          (_tl2604426606_
                                           (##cdr _e2604226599_)))
                                      ((lambda (_L26609_ _L26611_)
                                         (if (let ((_$e26622_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L26611_)))
                                               (if _$e26622_
                                                   _$e26622_
                                                   (gx#stx-eq? 'or: _L26611_)))
                                             (let* ((_g2662726639_
                                                     (lambda (_g2662826635_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2662826635_)))
                                                    (_g2662626650_
                                                     (lambda (_g2662826643_)
                                                       ((lambda ()
                                                          (_K26018_
                                                           _vars26017_)))))
                                                    (_g2662526687_
                                                     (lambda (_g2662826654_)
                                                       (if (gx#stx-pair?
                                                            _g2662826654_)
                                                           (let ((_e2663126657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2662826654_)))
                     (let ((_hd2663226661_ (##car _e2663126657_))
                           (_tl2663326664_ (##cdr _e2663126657_)))
                       ((lambda (_L26667_ _L26669_)
                          (_loop25740_
                           _L26669_
                           _vars26017_
                           (lambda (_g2668126683_)
                             (_loop25740_
                              (cons _L26611_ _L26667_)
                              _g2668126683_
                              _K26018_))))
                        _tl2663326664_
                        _hd2663226661_)))
                   (_g2662626650_ _g2662826654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2662526687_ _L26609_))
                                             (_g2602126592_ _g2603226596_)))
                                       _tl2604426606_
                                       _hd2604326603_)))
                                  (_g2602126592_ _g2603226596_))))
                           (_g2601926944_
                            (lambda (_g2603226695_)
                              (if (gx#stx-pair? _g2603226695_)
                                  (let ((_e2603426698_
                                         (gx#syntax-e _g2603226695_)))
                                    (let ((_hd2603526702_
                                           (##car _e2603426698_))
                                          (_tl2603626705_
                                           (##cdr _e2603426698_)))
                                      (if (gx#stx-datum? _hd2603526702_)
                                          (if (equal? (gx#stx-e _hd2603526702_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2603626705_)
                                                  (let ((_e2603726708_
                                                         (gx#syntax-e
                                                          _tl2603626705_)))
                                                    (let ((_hd2603826712_
                                                           (##car _e2603726708_))
                                                          (_tl2603926715_
                                                           (##cdr _e2603726708_)))
                                                      ((lambda (_L26718_)
                                                         (let* ((_g2673426771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2673526767_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2673526767_)))
                        (_g2673326782_
                         (lambda (_g2673526775_)
                           ((lambda () (_K26018_ _vars26017_)))))
                        (_g2673226860_
                         (lambda (_g2673526786_)
                           (if (gx#stx-pair? _g2673526786_)
                               (let ((_e2675126789_
                                      (gx#syntax-e _g2673526786_)))
                                 (let ((_hd2675226793_ (##car _e2675126789_))
                                       (_tl2675326796_ (##cdr _e2675126789_)))
                                   (if (gx#stx-pair? _tl2675326796_)
                                       (let ((_e2675426799_
                                              (gx#syntax-e _tl2675326796_)))
                                         (let ((_hd2675526803_
                                                (##car _e2675426799_))
                                               (_tl2675626806_
                                                (##cdr _e2675426799_)))
                                           (if (gx#stx-datum? _hd2675526803_)
                                               (if (equal? (gx#stx-e
                                                            _hd2675526803_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2675626806_)
                                                       (let ((_e2675726809_
                                                              (gx#syntax-e
                                                               _tl2675626806_)))
                                                         (let ((_hd2675826813_
                                                                (##car _e2675726809_))
                                                               (_tl2675926816_
                                                                (##cdr _e2675726809_)))
                                                           (if (gx#stx-pair?
                                                                _tl2675926816_)
                                                               (let ((_e2676026819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2675926816_)))
                         (let ((_hd2676126823_ (##car _e2676026819_))
                               (_tl2676226826_ (##cdr _e2676026819_)))
                           (if (gx#stx-datum? _hd2676126823_)
                               (if (equal? (gx#stx-e _hd2676126823_) '=>:)
                                   (if (gx#stx-pair? _tl2676226826_)
                                       (let ((_e2676326829_
                                              (gx#syntax-e _tl2676226826_)))
                                         (let ((_hd2676426833_
                                                (##car _e2676326829_))
                                               (_tl2676526836_
                                                (##cdr _e2676326829_)))
                                           (if (gx#stx-null? _tl2676526836_)
                                               ((lambda (_L26839_)
                                                  (_loop25740_
                                                   _L26839_
                                                   _vars26017_
                                                   _K26018_))
                                                _hd2676426833_)
                                               (_g2673326782_ _g2673526786_))))
                                       (_g2673326782_ _g2673526786_))
                                   (_g2673326782_ _g2673526786_))
                               (_g2673326782_ _g2673526786_))))
                       (_g2673326782_ _g2673526786_))))
               (_g2673326782_ _g2673526786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2673326782_
                                                    _g2673526786_))
                                               (_g2673326782_ _g2673526786_))))
                                       (_g2673326782_ _g2673526786_))))
                               (_g2673326782_ _g2673526786_))))
                        (_g2673126912_
                         (lambda (_g2673526864_)
                           (if (gx#stx-pair? _g2673526864_)
                               (let ((_e2674126867_
                                      (gx#syntax-e _g2673526864_)))
                                 (let ((_hd2674226871_ (##car _e2674126867_))
                                       (_tl2674326874_ (##cdr _e2674126867_)))
                                   (if (gx#stx-pair? _tl2674326874_)
                                       (let ((_e2674426877_
                                              (gx#syntax-e _tl2674326874_)))
                                         (let ((_hd2674526881_
                                                (##car _e2674426877_))
                                               (_tl2674626884_
                                                (##cdr _e2674426877_)))
                                           (if (gx#stx-datum? _hd2674526881_)
                                               (if (equal? (gx#stx-e
                                                            _hd2674526881_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2674626884_)
                                                       (let ((_e2674726887_
                                                              (gx#syntax-e
                                                               _tl2674626884_)))
                                                         (let ((_hd2674826891_
                                                                (##car _e2674726887_))
                                                               (_tl2674926894_
                                                                (##cdr _e2674726887_)))
                                                           (if (gx#stx-null?
                                                                _tl2674926894_)
                                                               ((lambda (_L26897_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop25740_ _L26897_ _vars26017_ _K26018_))
                        _hd2674826891_)
                       (_g2673226860_ _g2673526864_))))
               (_g2673226860_ _g2673526864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2673226860_
                                                    _g2673526864_))
                                               (_g2673226860_ _g2673526864_))))
                                       (_g2673226860_ _g2673526864_))))
                               (_g2673226860_ _g2673526864_))))
                        (_g2673026940_
                         (lambda (_g2673526916_)
                           (if (gx#stx-pair? _g2673526916_)
                               (let ((_e2673726919_
                                      (gx#syntax-e _g2673526916_)))
                                 (let ((_hd2673826923_ (##car _e2673726919_))
                                       (_tl2673926926_ (##cdr _e2673726919_)))
                                   (if (gx#stx-null? _tl2673926926_)
                                       ((lambda (_L26929_)
                                          (_loop25740_
                                           _L26929_
                                           _vars26017_
                                           _K26018_))
                                        _hd2673826923_)
                                       (_g2673126912_ _g2673526916_))))
                               (_g2673126912_ _g2673526916_)))))
                   (_g2673026940_ _L26718_)))
               _tl2603926715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2602026691_
                                                   _g2603226695_))
                                              (_g2602026691_ _g2603226695_))
                                          (_g2602026691_ _g2603226695_))))
                                  (_g2602026691_ _g2603226695_)))))
                      (_g2601926944_ _ptree26015_))))
                 (_loop-vector25742_
                  (lambda (_body25903_ _vars25905_ _K25906_)
                    (let* ((_g2590925930_
                            (lambda (_g2591025926_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2591025926_)))
                           (_g2590825971_
                            (lambda (_g2591025934_)
                              (if (gx#stx-pair? _g2591025934_)
                                  (let ((_e2591925937_
                                         (gx#syntax-e _g2591025934_)))
                                    (let ((_hd2592025941_
                                           (##car _e2591925937_))
                                          (_tl2592125944_
                                           (##cdr _e2591925937_)))
                                      (if (gx#stx-datum? _hd2592025941_)
                                          (if (equal? (gx#stx-e _hd2592025941_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2592125944_)
                                                  (let ((_e2592225947_
                                                         (gx#syntax-e
                                                          _tl2592125944_)))
                                                    (let ((_hd2592325951_
                                                           (##car _e2592225947_))
                                                          (_tl2592425954_
                                                           (##cdr _e2592225947_)))
                                                      (if (gx#stx-null?
                                                           _tl2592425954_)
                                                          ((lambda (_L25957_)
                                                             (_loop25740_
                                                              _L25957_
                                                              _vars25905_
                                                              _K25906_))
                                                           _hd2592325951_)
                                                          (_g2590925930_
                                                           _g2591025934_))))
                                                  (_g2590925930_
                                                   _g2591025934_))
                                              (_g2590925930_ _g2591025934_))
                                          (_g2590925930_ _g2591025934_))))
                                  (_g2590925930_ _g2591025934_))))
                           (_g2590726011_
                            (lambda (_g2591025975_)
                              (if (gx#stx-pair? _g2591025975_)
                                  (let ((_e2591225978_
                                         (gx#syntax-e _g2591025975_)))
                                    (let ((_hd2591325982_
                                           (##car _e2591225978_))
                                          (_tl2591425985_
                                           (##cdr _e2591225978_)))
                                      (if (gx#stx-datum? _hd2591325982_)
                                          (if (equal? (gx#stx-e _hd2591325982_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2591425985_)
                                                  (let ((_e2591525988_
                                                         (gx#syntax-e
                                                          _tl2591425985_)))
                                                    (let ((_hd2591625992_
                                                           (##car _e2591525988_))
                                                          (_tl2591725995_
                                                           (##cdr _e2591525988_)))
                                                      (if (gx#stx-null?
                                                           _tl2591725995_)
                                                          ((lambda (_L25998_)
                                                             (_loop-list25743_
                                                              _L25998_
                                                              _vars25905_
                                                              _K25906_))
                                                           _hd2591625992_)
                                                          (_g2590825971_
                                                           _g2591025975_))))
                                                  (_g2590825971_
                                                   _g2591025975_))
                                              (_g2590825971_ _g2591025975_))
                                          (_g2590825971_ _g2591025975_))))
                                  (_g2590825971_ _g2591025975_)))))
                      (_g2590726011_ _body25903_))))
                 (_loop-list25743_
                  (lambda (_rest25833_ _vars25835_ _K25836_)
                    (let* ((_g2583925851_
                            (lambda (_g2584025847_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2584025847_)))
                           (_g2583825862_
                            (lambda (_g2584025855_)
                              ((lambda () (_K25836_ _vars25835_)))))
                           (_g2583725899_
                            (lambda (_g2584025866_)
                              (if (gx#stx-pair? _g2584025866_)
                                  (let ((_e2584325869_
                                         (gx#syntax-e _g2584025866_)))
                                    (let ((_hd2584425873_
                                           (##car _e2584325869_))
                                          (_tl2584525876_
                                           (##cdr _e2584325869_)))
                                      ((lambda (_L25879_ _L25881_)
                                         (_loop25740_
                                          _L25881_
                                          _vars25835_
                                          (lambda (_g2589325895_)
                                            (_loop-list25743_
                                             _L25879_
                                             _g2589325895_
                                             _K25836_))))
                                       _tl2584525876_
                                       _hd2584425873_)))
                                  (_g2583825862_ _g2584025866_)))))
                      (_g2583725899_ _rest25833_))))
                 (_loop-class-list25744_
                  (lambda (_rest25746_ _vars25748_ _K25749_)
                    (let* ((_g2575225767_
                            (lambda (_g2575325763_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2575325763_)))
                           (_g2575125778_
                            (lambda (_g2575325771_)
                              ((lambda () (_K25749_ _vars25748_)))))
                           (_g2575025829_
                            (lambda (_g2575325782_)
                              (if (gx#stx-pair? _g2575325782_)
                                  (let ((_e2575625785_
                                         (gx#syntax-e _g2575325782_)))
                                    (let ((_hd2575725789_
                                           (##car _e2575625785_))
                                          (_tl2575825792_
                                           (##cdr _e2575625785_)))
                                      (if (gx#stx-pair? _tl2575825792_)
                                          (let ((_e2575925795_
                                                 (gx#syntax-e _tl2575825792_)))
                                            (let ((_hd2576025799_
                                                   (##car _e2575925795_))
                                                  (_tl2576125802_
                                                   (##cdr _e2575925795_)))
                                              ((lambda (_L25805_ _L25807_)
                                                 (_loop25740_
                                                  _L25807_
                                                  _vars25748_
                                                  (lambda (_g2582325825_)
                                                    (_loop-class-list25744_
                                                     _L25805_
                                                     _g2582325825_
                                                     _K25749_))))
                                               _tl2576125802_
                                               _hd2576025799_)))
                                          (_g2575125778_ _g2575325782_))))
                                  (_g2575125778_ _g2575325782_)))))
                      (_g2575025829_ _rest25746_)))))
          (_loop25740_ _ptree25737_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx22553_ _tgt22555_ _ptree22556_ _K22557_ _E22558_)
        (letrec ((_generate122560_
                  (lambda (_tgt24090_ _ptree24092_ _K24093_ _E24094_)
                    (let* ((_g2409624104_
                            (lambda (_g2409724100_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2409724100_)))
                           (_g2409525733_
                            (lambda (_g2409724108_)
                              ((lambda (_L24111_)
                                 (let ()
                                   (let* ((_g2413824264_
                                           (lambda (_g2413924260_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2413924260_)))
                                          (_g2413724285_
                                           (lambda (_g2413924268_)
                                             (if (gx#stx-pair? _g2413924268_)
                                                 (let ((_e2425624271_
                                                        (gx#syntax-e
                                                         _g2413924268_)))
                                                   (let ((_hd2425724275_
                                                          (##car _e2425624271_))
                                                         (_tl2425824278_
                                                          (##cdr _e2425624271_)))
                                                     (if (gx#stx-datum?
                                                          _hd2425724275_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2425724275_)
                             'any:)
                     (if (gx#stx-null? _tl2425824278_)
                         ((lambda () _K24093_))
                         (_g2413824264_ _g2413924268_))
                     (_g2413824264_ _g2413924268_))
                 (_g2413824264_ _g2413924268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413824264_
                                                  _g2413924268_))))
                                          (_g2413624328_
                                           (lambda (_g2413924289_)
                                             (if (gx#stx-pair? _g2413924289_)
                                                 (let ((_e2425024292_
                                                        (gx#syntax-e
                                                         _g2413924289_)))
                                                   (let ((_hd2425124296_
                                                          (##car _e2425024292_))
                                                         (_tl2425224299_
                                                          (##cdr _e2425024292_)))
                                                     (if (gx#stx-datum?
                                                          _hd2425124296_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2425124296_)
                             'var:)
                     (if (gx#stx-pair? _tl2425224299_)
                         (let ((_e2425324302_ (gx#syntax-e _tl2425224299_)))
                           (let ((_hd2425424306_ (##car _e2425324302_))
                                 (_tl2425524309_ (##cdr _e2425324302_)))
                             (if (gx#stx-null? _tl2425524309_)
                                 ((lambda (_L24312_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L24312_
                                                            (cons _L24111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K24093_ '()))))
                                  _hd2425424306_)
                                 (_g2413724285_ _g2413924289_))))
                         (_g2413724285_ _g2413924289_))
                     (_g2413724285_ _g2413924289_))
                 (_g2413724285_ _g2413924289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413724285_
                                                  _g2413924289_))))
                                          (_g2413524413_
                                           (lambda (_g2413924332_)
                                             (if (gx#stx-pair? _g2413924332_)
                                                 (let ((_e2424024335_
                                                        (gx#syntax-e
                                                         _g2413924332_)))
                                                   (let ((_hd2424124339_
                                                          (##car _e2424024335_))
                                                         (_tl2424224342_
                                                          (##cdr _e2424024335_)))
                                                     (if (gx#stx-datum?
                                                          _hd2424124339_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2424124339_)
                             'apply:)
                     (if (gx#stx-pair? _tl2424224342_)
                         (let ((_e2424324345_ (gx#syntax-e _tl2424224342_)))
                           (let ((_hd2424424349_ (##car _e2424324345_))
                                 (_tl2424524352_ (##cdr _e2424324345_)))
                             (if (gx#stx-pair? _tl2424524352_)
                                 (let ((_e2424624355_
                                        (gx#syntax-e _tl2424524352_)))
                                   (let ((_hd2424724359_ (##car _e2424624355_))
                                         (_tl2424824362_
                                          (##cdr _e2424624355_)))
                                     (if (gx#stx-null? _tl2424824362_)
                                         ((lambda (_L24365_ _L24367_)
                                            (let* ((_g2438224390_
                                                    (lambda (_g2438324386_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2438324386_)))
                                                   (_g2438124409_
                                                    (lambda (_g2438324394_)
                                                      ((lambda (_L24397_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L24397_
                                           (cons (cons _L24367_
                                                       (cons _L24111_ '()))
                                                 '()))
                                     '())
                               (cons (_generate122560_
                                      _L24397_
                                      _L24365_
                                      _K24093_
                                      _E24094_)
                                     '())))))
               _g2438324394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2438124409_
                                               (gx#genident 'e))))
                                          _hd2424724359_
                                          _hd2424424349_)
                                         (_g2413624328_ _g2413924332_))))
                                 (_g2413624328_ _g2413924332_))))
                         (_g2413624328_ _g2413924332_))
                     (_g2413624328_ _g2413924332_))
                 (_g2413624328_ _g2413924332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413624328_
                                                  _g2413924332_))))
                                          (_g2413424495_
                                           (lambda (_g2413924417_)
                                             (if (gx#stx-pair? _g2413924417_)
                                                 (let ((_e2423224420_
                                                        (gx#syntax-e
                                                         _g2413924417_)))
                                                   (let ((_hd2423324424_
                                                          (##car _e2423224420_))
                                                         (_tl2423424427_
                                                          (##cdr _e2423224420_)))
                                                     (if (gx#stx-datum?
                                                          _hd2423324424_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2423324424_)
                             'datum:)
                     (if (gx#stx-pair? _tl2423424427_)
                         (let ((_e2423524430_ (gx#syntax-e _tl2423424427_)))
                           (let ((_hd2423624434_ (##car _e2423524430_))
                                 (_tl2423724437_ (##cdr _e2423524430_)))
                             (if (gx#stx-null? _tl2423724437_)
                                 ((lambda (_L24440_)
                                    (let* ((_g2445324461_
                                            (lambda (_g2445424457_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2445424457_)))
                                           (_g2445224480_
                                            (lambda (_g2445424465_)
                                              ((lambda (_L24468_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L24468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L24111_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L24440_ '()))
                                         '())))
                       (cons _K24093_ (cons _E24094_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2445424465_))))
                                      (_g2445224480_
                                       (let ((_e24484_ (gx#stx-e _L24440_)))
                                         (if (let ((_$e24487_
                                                    (symbol? _e24484_)))
                                               (if _$e24487_
                                                   _$e24487_
                                                   (let ((_$e24491_
                                                          (keyword? _e24484_)))
                                                     (if _$e24491_
                                                         _$e24491_
                                                         (immediate?
                                                          _e24484_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e24484_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2423624434_)
                                 (_g2413524413_ _g2413924417_))))
                         (_g2413524413_ _g2413924417_))
                     (_g2413524413_ _g2413924417_))
                 (_g2413524413_ _g2413924417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413524413_
                                                  _g2413924417_))))
                                          (_g2413324549_
                                           (lambda (_g2413924499_)
                                             (if (gx#stx-pair? _g2413924499_)
                                                 (let ((_e2422224502_
                                                        (gx#syntax-e
                                                         _g2413924499_)))
                                                   (let ((_hd2422324506_
                                                          (##car _e2422224502_))
                                                         (_tl2422424509_
                                                          (##cdr _e2422224502_)))
                                                     (if (gx#stx-datum?
                                                          _hd2422324506_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2422324506_)
                             'class:)
                     (if (gx#stx-pair? _tl2422424509_)
                         (let ((_e2422524512_ (gx#syntax-e _tl2422424509_)))
                           (let ((_hd2422624516_ (##car _e2422524512_))
                                 (_tl2422724519_ (##cdr _e2422524512_)))
                             (if (gx#stx-pair? _tl2422724519_)
                                 (let ((_e2422824522_
                                        (gx#syntax-e _tl2422724519_)))
                                   (let ((_hd2422924526_ (##car _e2422824522_))
                                         (_tl2423024529_
                                          (##cdr _e2422824522_)))
                                     (if (gx#stx-null? _tl2423024529_)
                                         ((lambda (_L24532_ _L24534_)
                                            (_generate-class22566_
                                             (gx#stx-e _L24534_)
                                             _tgt24090_
                                             _L24532_
                                             _K24093_
                                             _E24094_))
                                          _hd2422924526_
                                          _hd2422624516_)
                                         (_g2413424495_ _g2413924499_))))
                                 (_g2413424495_ _g2413924499_))))
                         (_g2413424495_ _g2413924499_))
                     (_g2413424495_ _g2413924499_))
                 (_g2413424495_ _g2413924499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413424495_
                                                  _g2413924499_))))
                                          (_g2413224603_
                                           (lambda (_g2413924553_)
                                             (if (gx#stx-pair? _g2413924553_)
                                                 (let ((_e2421124556_
                                                        (gx#syntax-e
                                                         _g2413924553_)))
                                                   (let ((_hd2421224560_
                                                          (##car _e2421124556_))
                                                         (_tl2421324563_
                                                          (##cdr _e2421124556_)))
                                                     (if (gx#stx-datum?
                                                          _hd2421224560_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2421224560_)
                             'struct:)
                     (if (gx#stx-pair? _tl2421324563_)
                         (let ((_e2421424566_ (gx#syntax-e _tl2421324563_)))
                           (let ((_hd2421524570_ (##car _e2421424566_))
                                 (_tl2421624573_ (##cdr _e2421424566_)))
                             (if (gx#stx-pair? _tl2421624573_)
                                 (let ((_e2421724576_
                                        (gx#syntax-e _tl2421624573_)))
                                   (let ((_hd2421824580_ (##car _e2421724576_))
                                         (_tl2421924583_
                                          (##cdr _e2421724576_)))
                                     (if (gx#stx-null? _tl2421924583_)
                                         ((lambda (_L24586_ _L24588_)
                                            (_generate-struct22565_
                                             (gx#stx-e _L24588_)
                                             _tgt24090_
                                             _L24586_
                                             _K24093_
                                             _E24094_))
                                          _hd2421824580_
                                          _hd2421524570_)
                                         (_g2413324549_ _g2413924553_))))
                                 (_g2413324549_ _g2413924553_))))
                         (_g2413324549_ _g2413924553_))
                     (_g2413324549_ _g2413924553_))
                 (_g2413324549_ _g2413924553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413324549_
                                                  _g2413924553_))))
                                          (_g2413124781_
                                           (lambda (_g2413924607_)
                                             (if (gx#stx-pair? _g2413924607_)
                                                 (let ((_e2420324610_
                                                        (gx#syntax-e
                                                         _g2413924607_)))
                                                   (let ((_hd2420424614_
                                                          (##car _e2420324610_))
                                                         (_tl2420524617_
                                                          (##cdr _e2420324610_)))
                                                     (if (gx#stx-datum?
                                                          _hd2420424614_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2420424614_)
                             'vector:)
                     (if (gx#stx-pair? _tl2420524617_)
                         (let ((_e2420624620_ (gx#syntax-e _tl2420524617_)))
                           (let ((_hd2420724624_ (##car _e2420624620_))
                                 (_tl2420824627_ (##cdr _e2420624620_)))
                             (if (gx#stx-null? _tl2420824627_)
                                 ((lambda (_L24630_)
                                    (let* ((_g2464424665_
                                            (lambda (_g2464524661_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2464524661_)))
                                           (_g2464324706_
                                            (lambda (_g2464524669_)
                                              (if (gx#stx-pair? _g2464524669_)
                                                  (let ((_e2465424672_
                                                         (gx#syntax-e
                                                          _g2464524669_)))
                                                    (let ((_hd2465524676_
                                                           (##car _e2465424672_))
                                                          (_tl2465624679_
                                                           (##cdr _e2465424672_)))
                                                      (if (gx#stx-datum?
                                                           _hd2465524676_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2465524676_)
                              'list:)
                      (if (gx#stx-pair? _tl2465624679_)
                          (let ((_e2465724682_ (gx#syntax-e _tl2465624679_)))
                            (let ((_hd2465824686_ (##car _e2465724682_))
                                  (_tl2465924689_ (##cdr _e2465724682_)))
                              (if (gx#stx-null? _tl2465924689_)
                                  ((lambda (_L24692_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L24111_ '()))
                                                 (cons (_generate-list-vector22564_
                                                        _tgt24090_
                                                        _L24692_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K24093_
                                                        _E24094_)
                                                       (cons _E24094_ '())))))
                                   _hd2465824686_)
                                  (_g2464424665_ _g2464524669_))))
                          (_g2464424665_ _g2464524669_))
                      (_g2464424665_ _g2464524669_))
                  (_g2464424665_ _g2464524669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2464424665_
                                                   _g2464524669_))))
                                           (_g2464224777_
                                            (lambda (_g2464524710_)
                                              (if (gx#stx-pair? _g2464524710_)
                                                  (let ((_e2464724713_
                                                         (gx#syntax-e
                                                          _g2464524710_)))
                                                    (let ((_hd2464824717_
                                                           (##car _e2464724713_))
                                                          (_tl2464924720_
                                                           (##cdr _e2464724713_)))
                                                      (if (gx#stx-datum?
                                                           _hd2464824717_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2464824717_)
                              'simple:)
                      (if (gx#stx-pair? _tl2464924720_)
                          (let ((_e2465024723_ (gx#syntax-e _tl2464924720_)))
                            (let ((_hd2465124727_ (##car _e2465024723_))
                                  (_tl2465224730_ (##cdr _e2465024723_)))
                              (if (gx#stx-null? _tl2465224730_)
                                  ((lambda (_L24733_)
                                     (let* ((_g2474624754_
                                             (lambda (_g2474724750_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2474724750_)))
                                            (_g2474524773_
                                             (lambda (_g2474724758_)
                                               ((lambda (_L24761_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L24111_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L24111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L24761_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector22563_
                               _tgt24090_
                               _L24733_
                               '0
                               _K24093_
                               _E24094_)
                              (cons _E24094_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2474724758_))))
                                       (_g2474524773_
                                        (gx#stx-length _L24733_))))
                                   _hd2465124727_)
                                  (_g2464324706_ _g2464524710_))))
                          (_g2464324706_ _g2464524710_))
                      (_g2464324706_ _g2464524710_))
                  (_g2464324706_ _g2464524710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2464324706_
                                                   _g2464524710_)))))
                                      (_g2464224777_ _L24630_)))
                                  _hd2420724624_)
                                 (_g2413224603_ _g2413924607_))))
                         (_g2413224603_ _g2413924607_))
                     (_g2413224603_ _g2413924607_))
                 (_g2413224603_ _g2413924607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413224603_
                                                  _g2413924607_))))
                                          (_g2413024959_
                                           (lambda (_g2413924785_)
                                             (if (gx#stx-pair? _g2413924785_)
                                                 (let ((_e2419624788_
                                                        (gx#syntax-e
                                                         _g2413924785_)))
                                                   (let ((_hd2419724792_
                                                          (##car _e2419624788_))
                                                         (_tl2419824795_
                                                          (##cdr _e2419624788_)))
                                                     (if (gx#stx-datum?
                                                          _hd2419724792_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2419724792_)
                             'values:)
                     (if (gx#stx-pair? _tl2419824795_)
                         (let ((_e2419924798_ (gx#syntax-e _tl2419824795_)))
                           (let ((_hd2420024802_ (##car _e2419924798_))
                                 (_tl2420124805_ (##cdr _e2419924798_)))
                             (if (gx#stx-null? _tl2420124805_)
                                 ((lambda (_L24808_)
                                    (let* ((_g2482224843_
                                            (lambda (_g2482324839_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2482324839_)))
                                           (_g2482124884_
                                            (lambda (_g2482324847_)
                                              (if (gx#stx-pair? _g2482324847_)
                                                  (let ((_e2483224850_
                                                         (gx#syntax-e
                                                          _g2482324847_)))
                                                    (let ((_hd2483324854_
                                                           (##car _e2483224850_))
                                                          (_tl2483424857_
                                                           (##cdr _e2483224850_)))
                                                      (if (gx#stx-datum?
                                                           _hd2483324854_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2483324854_)
                              'list:)
                      (if (gx#stx-pair? _tl2483424857_)
                          (let ((_e2483524860_ (gx#syntax-e _tl2483424857_)))
                            (let ((_hd2483624864_ (##car _e2483524860_))
                                  (_tl2483724867_ (##cdr _e2483524860_)))
                              (if (gx#stx-null? _tl2483724867_)
                                  ((lambda (_L24870_)
                                     (_generate-list-vector22564_
                                      _tgt24090_
                                      _L24870_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K24093_
                                      _E24094_))
                                   _hd2483624864_)
                                  (_g2482224843_ _g2482324847_))))
                          (_g2482224843_ _g2482324847_))
                      (_g2482224843_ _g2482324847_))
                  (_g2482224843_ _g2482324847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2482224843_
                                                   _g2482324847_))))
                                           (_g2482024955_
                                            (lambda (_g2482324888_)
                                              (if (gx#stx-pair? _g2482324888_)
                                                  (let ((_e2482524891_
                                                         (gx#syntax-e
                                                          _g2482324888_)))
                                                    (let ((_hd2482624895_
                                                           (##car _e2482524891_))
                                                          (_tl2482724898_
                                                           (##cdr _e2482524891_)))
                                                      (if (gx#stx-datum?
                                                           _hd2482624895_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2482624895_)
                              'simple:)
                      (if (gx#stx-pair? _tl2482724898_)
                          (let ((_e2482824901_ (gx#syntax-e _tl2482724898_)))
                            (let ((_hd2482924905_ (##car _e2482824901_))
                                  (_tl2483024908_ (##cdr _e2482824901_)))
                              (if (gx#stx-null? _tl2483024908_)
                                  ((lambda (_L24911_)
                                     (let* ((_g2492424932_
                                             (lambda (_g2492524928_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2492524928_)))
                                            (_g2492324951_
                                             (lambda (_g2492524936_)
                                               ((lambda (_L24939_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L24111_ '()))
                                    (cons _L24939_ '())))
                        (cons (_generate-simple-vector22563_
                               _tgt24090_
                               _L24911_
                               '0
                               _K24093_
                               _E24094_)
                              (cons _E24094_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2492524936_))))
                                       (_g2492324951_
                                        (gx#stx-length _L24911_))))
                                   _hd2482924905_)
                                  (_g2482124884_ _g2482324888_))))
                          (_g2482124884_ _g2482324888_))
                      (_g2482124884_ _g2482324888_))
                  (_g2482124884_ _g2482324888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2482124884_
                                                   _g2482324888_)))))
                                      (_g2482024955_ _L24808_)))
                                  _hd2420024802_)
                                 (_g2413124781_ _g2413924785_))))
                         (_g2413124781_ _g2413924785_))
                     (_g2413124781_ _g2413924785_))
                 (_g2413124781_ _g2413924785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413124781_
                                                  _g2413924785_))))
                                          (_g2412925030_
                                           (lambda (_g2413924963_)
                                             (if (gx#stx-pair? _g2413924963_)
                                                 (let ((_e2418924966_
                                                        (gx#syntax-e
                                                         _g2413924963_)))
                                                   (let ((_hd2419024970_
                                                          (##car _e2418924966_))
                                                         (_tl2419124973_
                                                          (##cdr _e2418924966_)))
                                                     (if (gx#stx-datum?
                                                          _hd2419024970_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2419024970_)
                             'box:)
                     (if (gx#stx-pair? _tl2419124973_)
                         (let ((_e2419224976_ (gx#syntax-e _tl2419124973_)))
                           (let ((_hd2419324980_ (##car _e2419224976_))
                                 (_tl2419424983_ (##cdr _e2419224976_)))
                             (if (gx#stx-null? _tl2419424983_)
                                 ((lambda (_L24986_)
                                    (let* ((_g2499925007_
                                            (lambda (_g2500025003_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2500025003_)))
                                           (_g2499825026_
                                            (lambda (_g2500025011_)
                                              ((lambda (_L25014_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L24111_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L25014_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L24111_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate122560_
                                                _L25014_
                                                _L24986_
                                                _K24093_
                                                _E24094_)
                                               '())))
                             (cons _E24094_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2500025011_))))
                                      (_g2499825026_ (gx#genident 'e))))
                                  _hd2419324980_)
                                 (_g2413024959_ _g2413924963_))))
                         (_g2413024959_ _g2413924963_))
                     (_g2413024959_ _g2413924963_))
                 (_g2413024959_ _g2413924963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2413024959_
                                                  _g2413924963_))))
                                          (_g2412825084_
                                           (lambda (_g2413925034_)
                                             (if (gx#stx-pair? _g2413925034_)
                                                 (let ((_e2417925037_
                                                        (gx#syntax-e
                                                         _g2413925034_)))
                                                   (let ((_hd2418025041_
                                                          (##car _e2417925037_))
                                                         (_tl2418125044_
                                                          (##cdr _e2417925037_)))
                                                     (if (gx#stx-datum?
                                                          _hd2418025041_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2418025041_)
                             'splice:)
                     (if (gx#stx-pair? _tl2418125044_)
                         (let ((_e2418225047_ (gx#syntax-e _tl2418125044_)))
                           (let ((_hd2418325051_ (##car _e2418225047_))
                                 (_tl2418425054_ (##cdr _e2418225047_)))
                             (if (gx#stx-pair? _tl2418425054_)
                                 (let ((_e2418525057_
                                        (gx#syntax-e _tl2418425054_)))
                                   (let ((_hd2418625061_ (##car _e2418525057_))
                                         (_tl2418725064_
                                          (##cdr _e2418525057_)))
                                     (if (gx#stx-null? _tl2418725064_)
                                         ((lambda (_L25067_ _L25069_)
                                            (_generate-splice22562_
                                             _tgt24090_
                                             _L25069_
                                             _L25067_
                                             _K24093_
                                             _E24094_))
                                          _hd2418625061_
                                          _hd2418325051_)
                                         (_g2412925030_ _g2413925034_))))
                                 (_g2412925030_ _g2413925034_))))
                         (_g2412925030_ _g2413925034_))
                     (_g2412925030_ _g2413925034_))
                 (_g2412925030_ _g2413925034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2412925030_
                                                  _g2413925034_))))
                                          (_g2412725105_
                                           (lambda (_g2413925088_)
                                             (if (gx#stx-pair? _g2413925088_)
                                                 (let ((_e2417425091_
                                                        (gx#syntax-e
                                                         _g2413925088_)))
                                                   (let ((_hd2417525095_
                                                          (##car _e2417425091_))
                                                         (_tl2417625098_
                                                          (##cdr _e2417425091_)))
                                                     (if (gx#stx-datum?
                                                          _hd2417525095_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2417525095_)
                             'null:)
                     (if (gx#stx-null? _tl2417625098_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L24111_ '()))
                                        (cons _K24093_ (cons _E24094_ '()))))))
                         (_g2412825084_ _g2413925088_))
                     (_g2412825084_ _g2413925088_))
                 (_g2412825084_ _g2413925088_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2412825084_
                                                  _g2413925088_))))
                                          (_g2412625224_
                                           (lambda (_g2413925109_)
                                             (if (gx#stx-pair? _g2413925109_)
                                                 (let ((_e2416525112_
                                                        (gx#syntax-e
                                                         _g2413925109_)))
                                                   (let ((_hd2416625116_
                                                          (##car _e2416525112_))
                                                         (_tl2416725119_
                                                          (##cdr _e2416525112_)))
                                                     (if (gx#stx-datum?
                                                          _hd2416625116_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2416625116_)
                             'cons:)
                     (if (gx#stx-pair? _tl2416725119_)
                         (let ((_e2416825122_ (gx#syntax-e _tl2416725119_)))
                           (let ((_hd2416925126_ (##car _e2416825122_))
                                 (_tl2417025129_ (##cdr _e2416825122_)))
                             (if (gx#stx-pair? _tl2417025129_)
                                 (let ((_e2417125132_
                                        (gx#syntax-e _tl2417025129_)))
                                   (let ((_hd2417225136_ (##car _e2417125132_))
                                         (_tl2417325139_
                                          (##cdr _e2417125132_)))
                                     (if (gx#stx-null? _tl2417325139_)
                                         ((lambda (_L25142_ _L25144_)
                                            (let* ((_g2516025175_
                                                    (lambda (_g2516125171_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2516125171_)))
                                                   (_g2515925220_
                                                    (lambda (_g2516125179_)
                                                      (if (gx#stx-pair?
                                                           _g2516125179_)
                                                          (let ((_e2516425182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2516125179_)))
                    (let ((_hd2516525186_ (##car _e2516425182_))
                          (_tl2516625189_ (##cdr _e2516425182_)))
                      (if (gx#stx-pair? _tl2516625189_)
                          (let ((_e2516725192_ (gx#syntax-e _tl2516625189_)))
                            (let ((_hd2516825196_ (##car _e2516725192_))
                                  (_tl2516925199_ (##cdr _e2516725192_)))
                              (if (gx#stx-null? _tl2516925199_)
                                  ((lambda (_L25202_ _L25204_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L24111_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L25204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L24111_ '()))
                                               '()))
                                   (cons (cons _L25202_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L24111_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate122560_
                                    _L25204_
                                    _L25144_
                                    (_generate122560_
                                     _L25202_
                                     _L25142_
                                     _K24093_
                                     _E24094_)
                                    _E24094_)
                                   '())))
                 (cons _E24094_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2516825196_
                                   _hd2516525186_)
                                  (_g2516025175_ _g2516125179_))))
                          (_g2516025175_ _g2516125179_))))
                  (_g2516025175_ _g2516125179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2515925220_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2417225136_
                                          _hd2416925126_)
                                         (_g2412725105_ _g2413925109_))))
                                 (_g2412725105_ _g2413925109_))))
                         (_g2412725105_ _g2413925109_))
                     (_g2412725105_ _g2413925109_))
                 (_g2412725105_ _g2413925109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2412725105_
                                                  _g2413925109_))))
                                          (_g2412525264_
                                           (lambda (_g2413925228_)
                                             (if (gx#stx-pair? _g2413925228_)
                                                 (let ((_e2415725231_
                                                        (gx#syntax-e
                                                         _g2413925228_)))
                                                   (let ((_hd2415825235_
                                                          (##car _e2415725231_))
                                                         (_tl2415925238_
                                                          (##cdr _e2415725231_)))
                                                     (if (gx#stx-datum?
                                                          _hd2415825235_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2415825235_)
                             'not:)
                     (if (gx#stx-pair? _tl2415925238_)
                         (let ((_e2416025241_ (gx#syntax-e _tl2415925238_)))
                           (let ((_hd2416125245_ (##car _e2416025241_))
                                 (_tl2416225248_ (##cdr _e2416025241_)))
                             (if (gx#stx-null? _tl2416225248_)
                                 ((lambda (_L25251_)
                                    (_generate122560_
                                     _tgt24090_
                                     _L25251_
                                     _E24094_
                                     _K24093_))
                                  _hd2416125245_)
                                 (_g2412625224_ _g2413925228_))))
                         (_g2412625224_ _g2413925228_))
                     (_g2412625224_ _g2413925228_))
                 (_g2412625224_ _g2413925228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2412625224_
                                                  _g2413925228_))))
                                          (_g2412425352_
                                           (lambda (_g2413925268_)
                                             (if (gx#stx-pair? _g2413925268_)
                                                 (let ((_e2415325271_
                                                        (gx#syntax-e
                                                         _g2413925268_)))
                                                   (let ((_hd2415425275_
                                                          (##car _e2415325271_))
                                                         (_tl2415525278_
                                                          (##cdr _e2415325271_)))
                                                     (if (gx#stx-datum?
                                                          _hd2415425275_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2415425275_)
                             'or:)
                     ((lambda (_L25281_)
                        (let* ((_g2529325305_
                                (lambda (_g2529425301_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2529425301_)))
                               (_g2529225316_
                                (lambda (_g2529425309_)
                                  ((lambda () _E24094_))))
                               (_g2529125348_
                                (lambda (_g2529425320_)
                                  (if (gx#stx-pair? _g2529425320_)
                                      (let ((_e2529725323_
                                             (gx#syntax-e _g2529425320_)))
                                        (let ((_hd2529825327_
                                               (##car _e2529725323_))
                                              (_tl2529925330_
                                               (##cdr _e2529725323_)))
                                          ((lambda (_L25333_ _L25335_)
                                             (_generate122560_
                                              _tgt24090_
                                              _L25335_
                                              _K24093_
                                              (_generate122560_
                                               _tgt24090_
                                               (cons 'or: _L25333_)
                                               _K24093_
                                               _E24094_)))
                                           _tl2529925330_
                                           _hd2529825327_)))
                                      (_g2529225316_ _g2529425320_)))))
                          (_g2529125348_ _L25281_)))
                      _tl2415525278_)
                     (_g2412525264_ _g2413925268_))
                 (_g2412525264_ _g2413925268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2412525264_
                                                  _g2413925268_))))
                                          (_g2412325440_
                                           (lambda (_g2413925356_)
                                             (if (gx#stx-pair? _g2413925356_)
                                                 (let ((_e2414925359_
                                                        (gx#syntax-e
                                                         _g2413925356_)))
                                                   (let ((_hd2415025363_
                                                          (##car _e2414925359_))
                                                         (_tl2415125366_
                                                          (##cdr _e2414925359_)))
                                                     (if (gx#stx-datum?
                                                          _hd2415025363_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2415025363_)
                             'and:)
                     ((lambda (_L25369_)
                        (let* ((_g2538125393_
                                (lambda (_g2538225389_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2538225389_)))
                               (_g2538025404_
                                (lambda (_g2538225397_)
                                  ((lambda () _K24093_))))
                               (_g2537925436_
                                (lambda (_g2538225408_)
                                  (if (gx#stx-pair? _g2538225408_)
                                      (let ((_e2538525411_
                                             (gx#syntax-e _g2538225408_)))
                                        (let ((_hd2538625415_
                                               (##car _e2538525411_))
                                              (_tl2538725418_
                                               (##cdr _e2538525411_)))
                                          ((lambda (_L25421_ _L25423_)
                                             (_generate122560_
                                              _tgt24090_
                                              _L25423_
                                              (_generate122560_
                                               _tgt24090_
                                               (cons 'and: _L25421_)
                                               _K24093_
                                               _E24094_)
                                              _E24094_))
                                           _tl2538725418_
                                           _hd2538625415_)))
                                      (_g2538025404_ _g2538225408_)))))
                          (_g2537925436_ _L25369_)))
                      _tl2415125366_)
                     (_g2412425352_ _g2413925356_))
                 (_g2412425352_ _g2413925356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2412425352_
                                                  _g2413925356_))))
                                          (_g2412225729_
                                           (lambda (_g2413925444_)
                                             (if (gx#stx-pair? _g2413925444_)
                                                 (let ((_e2414225447_
                                                        (gx#syntax-e
                                                         _g2413925444_)))
                                                   (let ((_hd2414325451_
                                                          (##car _e2414225447_))
                                                         (_tl2414425454_
                                                          (##cdr _e2414225447_)))
                                                     (if (gx#stx-datum?
                                                          _hd2414325451_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2414325451_)
                             '?:)
                     (if (gx#stx-pair? _tl2414425454_)
                         (let ((_e2414525457_ (gx#syntax-e _tl2414425454_)))
                           (let ((_hd2414625461_ (##car _e2414525457_))
                                 (_tl2414725464_ (##cdr _e2414525457_)))
                             ((lambda (_L25467_ _L25469_)
                                (let* ((_g2548525517_
                                        (lambda (_g2548625513_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2548625513_)))
                                       (_g2548425615_
                                        (lambda (_g2548625521_)
                                          (if (gx#stx-pair? _g2548625521_)
                                              (let ((_e2550025524_
                                                     (gx#syntax-e
                                                      _g2548625521_)))
                                                (let ((_hd2550125528_
                                                       (##car _e2550025524_))
                                                      (_tl2550225531_
                                                       (##cdr _e2550025524_)))
                                                  (if (gx#stx-datum?
                                                       _hd2550125528_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2550125528_)
                          '::)
                  (if (gx#stx-pair? _tl2550225531_)
                      (let ((_e2550325534_ (gx#syntax-e _tl2550225531_)))
                        (let ((_hd2550425538_ (##car _e2550325534_))
                              (_tl2550525541_ (##cdr _e2550325534_)))
                          (if (gx#stx-pair? _tl2550525541_)
                              (let ((_e2550625544_
                                     (gx#syntax-e _tl2550525541_)))
                                (let ((_hd2550725548_ (##car _e2550625544_))
                                      (_tl2550825551_ (##cdr _e2550625544_)))
                                  (if (gx#stx-datum? _hd2550725548_)
                                      (if (equal? (gx#stx-e _hd2550725548_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2550825551_)
                                              (let ((_e2550925554_
                                                     (gx#syntax-e
                                                      _tl2550825551_)))
                                                (let ((_hd2551025558_
                                                       (##car _e2550925554_))
                                                      (_tl2551125561_
                                                       (##cdr _e2550925554_)))
                                                  (if (gx#stx-null?
                                                       _tl2551125561_)
                                                      ((lambda (_L25564_
                                                                _L25566_)
                                                         (let* ((_g2558425592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2558525588_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2558525588_)))
                        (_g2558325611_
                         (lambda (_g2558525596_)
                           ((lambda (_L25599_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L25469_
                                                        (cons _L24111_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L25599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L25566_ (cons _L24111_ '()))
                                        '()))
                            '())
                      (cons (_generate122560_
                             _L25599_
                             _L25564_
                             _K24093_
                             _E24094_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E24094_ '()))))))
                            _g2558525596_))))
                   (_g2558325611_ (gx#genident 'e))))
               _hd2551025558_
               _hd2550425538_)
              (_g2548525517_ _g2548625521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2548525517_ _g2548625521_))
                                          (_g2548525517_ _g2548625521_))
                                      (_g2548525517_ _g2548625521_))))
                              (_g2548525517_ _g2548625521_))))
                      (_g2548525517_ _g2548625521_))
                  (_g2548525517_ _g2548625521_))
              (_g2548525517_ _g2548625521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2548525517_ _g2548625521_))))
                                       (_g2548325686_
                                        (lambda (_g2548625619_)
                                          (if (gx#stx-pair? _g2548625619_)
                                              (let ((_e2549225622_
                                                     (gx#syntax-e
                                                      _g2548625619_)))
                                                (let ((_hd2549325626_
                                                       (##car _e2549225622_))
                                                      (_tl2549425629_
                                                       (##cdr _e2549225622_)))
                                                  (if (gx#stx-datum?
                                                       _hd2549325626_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2549325626_)
                          '=>:)
                  (if (gx#stx-pair? _tl2549425629_)
                      (let ((_e2549525632_ (gx#syntax-e _tl2549425629_)))
                        (let ((_hd2549625636_ (##car _e2549525632_))
                              (_tl2549725639_ (##cdr _e2549525632_)))
                          (if (gx#stx-null? _tl2549725639_)
                              ((lambda (_L25642_)
                                 (let* ((_g2565525663_
                                         (lambda (_g2565625659_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2565625659_)))
                                        (_g2565425682_
                                         (lambda (_g2565625667_)
                                           ((lambda (_L25670_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L25670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L25469_ (cons _L24111_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L25670_
                                      (cons (_generate122560_
                                             _L25670_
                                             _L25642_
                                             _K24093_
                                             _E24094_)
                                            (cons _E24094_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2565625667_))))
                                   (_g2565425682_ (gx#genident 'e))))
                               _hd2549625636_)
                              (_g2548425615_ _g2548625619_))))
                      (_g2548425615_ _g2548625619_))
                  (_g2548425615_ _g2548625619_))
              (_g2548425615_ _g2548625619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2548425615_ _g2548625619_))))
                                       (_g2548225714_
                                        (lambda (_g2548625690_)
                                          (if (gx#stx-pair? _g2548625690_)
                                              (let ((_e2548825693_
                                                     (gx#syntax-e
                                                      _g2548625690_)))
                                                (let ((_hd2548925697_
                                                       (##car _e2548825693_))
                                                      (_tl2549025700_
                                                       (##cdr _e2548825693_)))
                                                  (if (gx#stx-null?
                                                       _tl2549025700_)
                                                      ((lambda (_L25703_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L25469_ (cons _L24111_ '())))
                             (cons (_generate122560_
                                    _tgt24090_
                                    _L25703_
                                    _K24093_
                                    _E24094_)
                                   (cons _E24094_ '())))))
               _hd2548925697_)
              (_g2548325686_ _g2548625690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2548325686_ _g2548625690_))))
                                       (_g2548125725_
                                        (lambda (_g2548625718_)
                                          (if (gx#stx-null? _g2548625718_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L25469_ (cons _L24111_ '())))
                     (cons _K24093_ (cons _E24094_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2548225714_ _g2548625718_)))))
                                  (_g2548125725_ _L25467_)))
                              _tl2414725464_
                              _hd2414625461_)))
                         (_g2412325440_ _g2413925444_))
                     (_g2412325440_ _g2413925444_))
                 (_g2412325440_ _g2413925444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2412325440_
                                                  _g2413925444_)))))
                                     (_g2412225729_ _ptree24092_))))
                               _g2409724108_))))
                      (_g2409525733_ _tgt24090_))))
                 (_generate-splice22562_
                  (lambda (_tgt23462_ _hd23464_ _rest23465_ _K23466_ _E23467_)
                    (let* ((_g2346923486_
                            (lambda (_g2347023482_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2347023482_)))
                           (_g2346824086_
                            (lambda (_g2347023490_)
                              (if (gx#stx-pair/null? _g2347023490_)
                                  (if (fx>= (gx#stx-length _g2347023490_) '0)
                                      (let ((_g35065_
                                             (gx#syntax-split-splice
                                              _g2347023490_
                                              '0)))
                                        (begin
                                          (let ((_g35066_
                                                 (values-count _g35065_)))
                                            (if (not (fx= _g35066_ 2))
                                                (error "Context expects 2 values"
                                                       _g35066_)))
                                          (let ((_target2347223493_
                                                 (values-ref _g35065_ 0))
                                                (_tl2347423496_
                                                 (values-ref _g35065_ 1)))
                                            (if (gx#stx-null? _tl2347423496_)
                                                (letrec ((_loop2347523499_
                                                          (lambda (_hd2347323503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2347923506_)
                    (if (gx#stx-pair? _hd2347323503_)
                        (let ((_e2347623509_ (gx#syntax-e _hd2347323503_)))
                          (let ((_lp-hd2347723513_ (##car _e2347623509_))
                                (_lp-tl2347823516_ (##cdr _e2347623509_)))
                            (_loop2347523499_
                             _lp-tl2347823516_
                             (cons _lp-hd2347723513_ _var2347923506_))))
                        (let ((_var2348023519_ (reverse _var2347923506_)))
                          ((lambda (_L23523_)
                             (let ()
                               (let* ((_g2353923556_
                                       (lambda (_g2354023552_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2354023552_)))
                                      (_g2353824074_
                                       (lambda (_g2354023560_)
                                         (if (gx#stx-pair/null? _g2354023560_)
                                             (if (fx>= (gx#stx-length
                                                        _g2354023560_)
                                                       '0)
                                                 (let ((_g35067_
                                                        (gx#syntax-split-splice
                                                         _g2354023560_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35068_
                                                            (values-count
                                                             _g35067_)))
                                                       (if (not (fx= _g35068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g35068_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2354223563_
                                                            (values-ref
                                                             _g35067_
                                                             0))
                                                           (_tl2354423566_
                                                            (values-ref
                                                             _g35067_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2354423566_)
                                                           (letrec ((_loop2354523569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2354323573_ _var-r2354923576_)
                               (if (gx#stx-pair? _hd2354323573_)
                                   (let ((_e2354623579_
                                          (gx#syntax-e _hd2354323573_)))
                                     (let ((_lp-hd2354723583_
                                            (##car _e2354623579_))
                                           (_lp-tl2354823586_
                                            (##cdr _e2354623579_)))
                                       (_loop2354523569_
                                        _lp-tl2354823586_
                                        (cons _lp-hd2354723583_
                                              _var-r2354923576_))))
                                   (let ((_var-r2355023589_
                                          (reverse _var-r2354923576_)))
                                     ((lambda (_L23593_)
                                        (let ()
                                          (let* ((_g2361023627_
                                                  (lambda (_g2361123623_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2361123623_)))
                                                 (_g2360924062_
                                                  (lambda (_g2361123631_)
                                                    (if (gx#stx-pair/null?
                                                         _g2361123631_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2361123631_)
                          '0)
                    (let ((_g35069_ (gx#syntax-split-splice _g2361123631_ '0)))
                      (begin
                        (let ((_g35070_ (values-count _g35069_)))
                          (if (not (fx= _g35070_ 2))
                              (error "Context expects 2 values" _g35070_)))
                        (let ((_target2361323634_ (values-ref _g35069_ 0))
                              (_tl2361523637_ (values-ref _g35069_ 1)))
                          (if (gx#stx-null? _tl2361523637_)
                              (letrec ((_loop2361623640_
                                        (lambda (_hd2361423644_
                                                 _init2362023647_)
                                          (if (gx#stx-pair? _hd2361423644_)
                                              (let ((_e2361723650_
                                                     (gx#syntax-e
                                                      _hd2361423644_)))
                                                (let ((_lp-hd2361823654_
                                                       (##car _e2361723650_))
                                                      (_lp-tl2361923657_
                                                       (##cdr _e2361723650_)))
                                                  (_loop2361623640_
                                                   _lp-tl2361923657_
                                                   (cons _lp-hd2361823654_
                                                         _init2362023647_))))
                                              (let ((_init2362123660_
                                                     (reverse _init2362023647_)))
                                                ((lambda (_L23664_)
                                                   (let ()
                                                     (let* ((_g2368123689_
                                                             (lambda (_g2368223685_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2368223685_)))
                                                            (_g2368024058_
                                                             (lambda (_g2368223693_)
                                                               ((lambda (_L23696_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2370923717_
                                    (lambda (_g2371023713_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2371023713_)))
                                   (_g2370824054_
                                    (lambda (_g2371023721_)
                                      ((lambda (_L23724_)
                                         (let ()
                                           (let* ((_g2373723745_
                                                   (lambda (_g2373823741_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2373823741_)))
                                                  (_g2373624050_
                                                   (lambda (_g2373823749_)
                                                     ((lambda (_L23752_)
                                                        (let ()
                                                          (let* ((_g2376523773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2376623769_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2376623769_)))
                         (_g2376424046_
                          (lambda (_g2376623777_)
                            ((lambda (_L23780_)
                               (let ()
                                 (let* ((_g2379323801_
                                         (lambda (_g2379423797_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2379423797_)))
                                        (_g2379224042_
                                         (lambda (_g2379423805_)
                                           ((lambda (_L23808_)
                                              (let ()
                                                (let* ((_g2382123829_
                                                        (lambda (_g2382223825_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2382223825_)))
                                                       (_g2382024038_
                                                        (lambda (_g2382223833_)
                                                          ((lambda (_L23836_)
                                                             (let ()
                                                               (let* ((_g2384923857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2385023853_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2385023853_)))
                              (_g2384824034_
                               (lambda (_g2385023861_)
                                 ((lambda (_L23864_)
                                    (let ()
                                      (let* ((_g2387723885_
                                              (lambda (_g2387823881_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2387823881_)))
                                             (_g2387624019_
                                              (lambda (_g2387823889_)
                                                ((lambda (_L23892_)
                                                   (let ()
                                                     (let* ((_g2390523913_
                                                             (lambda (_g2390623909_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2390623909_)))
                                                            (_g2390424007_
                                                             (lambda (_g2390623917_)
                                                               ((lambda (_L23920_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2393323941_
                                    (lambda (_g2393423937_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2393423937_)))
                                   (_g2393224003_
                                    (lambda (_g2393423945_)
                                      ((lambda (_L23948_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L23724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L23836_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2396223973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2396323976_)
                        (cons _g2396223973_ _g2396323976_))
                      '()
                      _L23523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L23864_ '())))
                                   '()))
                       (cons (cons _L23780_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L23808_
                                                           (cons _L23836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2396423979_ _g2396523982_)
                                    (cons _g2396423979_ _g2396523982_))
                                  '()
                                  _L23593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L23948_ '())))
                                         '()))
                             (cons (cons _L23752_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L23836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2396623985_ _g2396723988_)
                                    (cons _g2396623985_ _g2396723988_))
                                  '()
                                  _L23593_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L23836_ '()))
                                     (cons (cons _L23780_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L23836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L23836_
                     (begin
                       '#!void
                       (foldr (lambda (_g2396823991_ _g2396923994_)
                                (cons _g2396823991_ _g2396923994_))
                              '()
                              _L23593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L23920_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L23752_
                             (cons _L23696_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2397023997_
                                                     _g2397124000_)
                                              (cons _g2397023997_
                                                    _g2397124000_))
                                            '()
                                            _L23664_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2393423945_))))
                              (_g2393224003_
                               (_generate122560_
                                _L23808_
                                _hd23464_
                                _L23892_
                                _L23920_)))))
                        _g2390623917_))))
               (_g2390424007_
                (cons _L23724_
                      (cons _L23836_
                            (begin
                              '#!void
                              (foldr (lambda (_g2401024013_ _g2401124016_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2401024013_ '()))
                                             _g2401124016_))
                                     '()
                                     _L23593_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2387823889_))))
                                        (_g2387624019_
                                         (cons _L23752_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L23836_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L23593_
                                                        _L23523_)
                                                       (foldr (lambda (_g2402224026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2402324029_
                               _g2402424031_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2402324029_
                                          (cons _g2402224026_ '())))
                              _g2402424031_))
                      '()
                      _L23593_
                      _L23523_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2385023861_))))
                         (_g2384824034_
                          (_generate122560_
                           _L23836_
                           _rest23465_
                           _K23466_
                           _E23467_)))))
                   _g2382223833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2382024038_
                                                   (gx#genident 'rest)))))
                                            _g2379423805_))))
                                   (_g2379224042_ (gx#genident 'hd)))))
                             _g2376623777_))))
                    (_g2376424046_ (gx#genident 'splice-try)))))
              _g2373823749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2373624050_
                                              (gx#genident 'splice-loop)))))
                                       _g2371023721_))))
                              (_g2370824054_ (gx#genident 'splice-rest)))))
                        _g2368223693_))))
               (_g2368024058_ _tgt23462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2362123660_))))))
                                (_loop2361623640_ _target2361323634_ '()))
                              (_g2361023627_ _g2361123631_)))))
                    (_g2361023627_ _g2361123631_))
                (_g2361023627_ _g2361123631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2360924062_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2406524068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2406624071_)
                  (cons _g2406524068_ _g2406624071_))
                '()
                _L23523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2355023589_))))))
                     (_loop2354523569_ _target2354223563_ '()))
                   (_g2353923556_ _g2354023560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2353923556_ _g2354023560_))
                                             (_g2353923556_ _g2354023560_)))))
                                 (_g2353824074_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2407724080_
                                                     _g2407824083_)
                                              (cons _g2407724080_
                                                    _g2407824083_))
                                            '()
                                            _L23523_)))))))
                           _var2348023519_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2347523499_
                                                   _target2347223493_
                                                   '()))
                                                (_g2346923486_
                                                 _g2347023490_)))))
                                      (_g2346923486_ _g2347023490_))
                                  (_g2346923486_ _g2347023490_)))))
                      (_g2346824086_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd23464_)))))
                 (_generate-simple-vector22563_
                  (lambda (_tgt23304_
                           _body23306_
                           _start23307_
                           _K23308_
                           _E23309_)
                    (let _recur23311_ ((_rest23314_ _body23306_)
                                       (_off23316_ _start23307_))
                      (let* ((_g2331923331_
                              (lambda (_g2332023327_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2332023327_)))
                             (_g2331823342_
                              (lambda (_g2332023335_) ((lambda () _K23308_))))
                             (_g2331723458_
                              (lambda (_g2332023346_)
                                (if (gx#stx-pair? _g2332023346_)
                                    (let ((_e2332323349_
                                           (gx#syntax-e _g2332023346_)))
                                      (let ((_hd2332423353_
                                             (##car _e2332323349_))
                                            (_tl2332523356_
                                             (##cdr _e2332323349_)))
                                        ((lambda (_L23359_ _L23361_)
                                           (let* ((_g2337623395_
                                                   (lambda (_g2337723391_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2337723391_)))
                                                  (_g2337523454_
                                                   (lambda (_g2337723399_)
                                                     (if (gx#stx-pair?
                                                          _g2337723399_)
                                                         (let ((_e2338123402_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2337723399_)))
                   (let ((_hd2338223406_ (##car _e2338123402_))
                         (_tl2338323409_ (##cdr _e2338123402_)))
                     (if (gx#stx-pair? _tl2338323409_)
                         (let ((_e2338423412_ (gx#syntax-e _tl2338323409_)))
                           (let ((_hd2338523416_ (##car _e2338423412_))
                                 (_tl2338623419_ (##cdr _e2338423412_)))
                             (if (gx#stx-pair? _tl2338623419_)
                                 (let ((_e2338723422_
                                        (gx#syntax-e _tl2338623419_)))
                                   (let ((_hd2338823426_ (##car _e2338723422_))
                                         (_tl2338923429_
                                          (##cdr _e2338723422_)))
                                     (if (gx#stx-null? _tl2338923429_)
                                         ((lambda (_L23432_ _L23434_ _L23435_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L23435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L23434_ (cons _L23432_ '())))
                                    '()))
                        '())
                  (cons (_generate122560_
                         _L23435_
                         _L23361_
                         (_recur23311_ _L23359_ (fx1+ _off23316_))
                         _E23309_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2338823426_
                                          _hd2338523416_
                                          _hd2338223406_)
                                         (_g2337623395_ _g2337723399_))))
                                 (_g2337623395_ _g2337723399_))))
                         (_g2337623395_ _g2337723399_))))
                 (_g2337623395_ _g2337723399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2337523454_
                                              (list (gx#genident 'e)
                                                    _tgt23304_
                                                    _off23316_))))
                                         _tl2332523356_
                                         _hd2332423353_)))
                                    (_g2331823342_ _g2332023346_)))))
                        (_g2331723458_ _rest23314_)))))
                 (_generate-list-vector22564_
                  (lambda (_tgt23214_
                           _body23216_
                           _tgt->list23217_
                           _start23218_
                           _K23219_
                           _E23220_)
                    (let* ((_g2322223241_
                            (lambda (_g2322323237_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2322323237_)))
                           (_g2322123300_
                            (lambda (_g2322323245_)
                              (if (gx#stx-pair? _g2322323245_)
                                  (let ((_e2322723248_
                                         (gx#syntax-e _g2322323245_)))
                                    (let ((_hd2322823252_
                                           (##car _e2322723248_))
                                          (_tl2322923255_
                                           (##cdr _e2322723248_)))
                                      (if (gx#stx-pair? _tl2322923255_)
                                          (let ((_e2323023258_
                                                 (gx#syntax-e _tl2322923255_)))
                                            (let ((_hd2323123262_
                                                   (##car _e2323023258_))
                                                  (_tl2323223265_
                                                   (##cdr _e2323023258_)))
                                              (if (gx#stx-pair? _tl2323223265_)
                                                  (let ((_e2323323268_
                                                         (gx#syntax-e
                                                          _tl2323223265_)))
                                                    (let ((_hd2323423272_
                                                           (##car _e2323323268_))
                                                          (_tl2323523275_
                                                           (##cdr _e2323323268_)))
                                                      (if (gx#stx-null?
                                                           _tl2323523275_)
                                                          ((lambda (_L23278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23280_
                            _L23281_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L23281_
                                               (cons (cons _L23278_
                                                           (cons _L23280_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate122560_
                                          _L23281_
                                          _body23216_
                                          _K23219_
                                          _E23220_)
                                         '())))))
                   _hd2323423272_
                   _hd2323123262_
                   _hd2322823252_)
                  (_g2322223241_ _g2322323245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2322223241_
                                                   _g2322323245_))))
                                          (_g2322223241_ _g2322323245_))))
                                  (_g2322223241_ _g2322323245_)))))
                      (_g2322123300_
                       (list (gx#genident 'e) _tgt23214_ _tgt->list23217_)))))
                 (_generate-struct22565_
                  (lambda (_info22947_
                           _tgt22949_
                           _body22950_
                           _K22951_
                           _E22952_)
                    (let* ((_rtd22954_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info22947_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info22947_)
                                '#f))
                           (_fields22964_
                            (let _lp22957_ ((_rtd22960_ _rtd22954_)
                                            (_k22962_ '0))
                              (if _rtd22960_
                                  (_lp22957_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd22960_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd22960_))
                                        _k22962_))
                                  _k22962_)))
                           (_final?22967_
                            (if _rtd22954_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd22954_))
                                '#f))
                           (_g2297022978_
                            (lambda (_g2297122974_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2297122974_)))
                           (_g2296923210_
                            (lambda (_g2297122982_)
                              ((lambda (_L22985_)
                                 (let ()
                                   (let* ((_g2300023008_
                                           (lambda (_g2300123004_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2300123004_)))
                                          (_g2299923206_
                                           (lambda (_g2300123012_)
                                             ((lambda (_L23015_)
                                                (let ()
                                                  (let* ((_g2302823036_
                                                          (lambda (_g2302923032_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2302923032_)))
                                                         (_g2302723202_
                                                          (lambda (_g2302923040_)
                                                            ((lambda (_L23043_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2305923080_
                                   (lambda (_g2306023076_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2306023076_)))
                                  (_g2305823123_
                                   (lambda (_g2306023084_)
                                     (if (gx#stx-pair? _g2306023084_)
                                         (let ((_e2306923087_
                                                (gx#syntax-e _g2306023084_)))
                                           (let ((_hd2307023091_
                                                  (##car _e2306923087_))
                                                 (_tl2307123094_
                                                  (##cdr _e2306923087_)))
                                             (if (gx#stx-datum? _hd2307023091_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2307023091_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl2307123094_)
                                                         (let ((_e2307223097_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2307123094_)))
                   (let ((_hd2307323101_ (##car _e2307223097_))
                         (_tl2307423104_ (##cdr _e2307223097_)))
                     (if (gx#stx-null? _tl2307423104_)
                         ((lambda (_L23107_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L23043_
                                              (cons _L23015_
                                                    (cons _L22985_ '())))
                                        (cons (_generate-list-vector22564_
                                               _tgt22949_
                                               _L23107_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K22951_
                                               _E22952_)
                                              (cons _E22952_ '())))))
                          _hd2307323101_)
                         (_g2305923080_ _g2306023084_))))
                 (_g2305923080_ _g2306023084_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2305923080_
                                                      _g2306023084_))
                                                 (_g2305923080_
                                                  _g2306023084_))))
                                         (_g2305923080_ _g2306023084_))))
                                  (_g2305723198_
                                   (lambda (_g2306023127_)
                                     (if (gx#stx-pair? _g2306023127_)
                                         (let ((_e2306223130_
                                                (gx#syntax-e _g2306023127_)))
                                           (let ((_hd2306323134_
                                                  (##car _e2306223130_))
                                                 (_tl2306423137_
                                                  (##cdr _e2306223130_)))
                                             (if (gx#stx-datum? _hd2306323134_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2306323134_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl2306423137_)
                                                         (let ((_e2306523140_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2306423137_)))
                   (let ((_hd2306623144_ (##car _e2306523140_))
                         (_tl2306723147_ (##cdr _e2306523140_)))
                     (if (gx#stx-null? _tl2306723147_)
                         ((lambda (_L23150_)
                            (let ((_K23163_
                                   (_generate-simple-vector22563_
                                    _tgt22949_
                                    _L23150_
                                    '1
                                    _K22951_
                                    _E22952_)))
                              (if (if _rtd22954_
                                      (fx<= (gx#stx-length _L23150_)
                                            _fields22964_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L23043_
                                                    (cons _L23015_
                                                          (cons _L22985_ '())))
                                              (cons _K23163_
                                                    (cons _E22952_ '()))))
                                  (let* ((_g2316623174_
                                          (lambda (_g2316723170_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2316723170_)))
                                         (_g2316523194_
                                          (lambda (_g2316723178_)
                                            ((lambda (_L23181_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L23043_
                                       (cons _L23015_ (cons _L22985_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L23181_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L22985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K23163_ (cons _E22952_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2316723178_))))
                                    (_g2316523194_
                                     (gx#stx-length _L23150_))))))
                          _hd2306623144_)
                         (_g2305823123_ _g2306023127_))))
                 (_g2305823123_ _g2306023127_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2305823123_
                                                      _g2306023127_))
                                                 (_g2305823123_
                                                  _g2306023127_))))
                                         (_g2305823123_ _g2306023127_)))))
                             (_g2305723198_ _body22950_)))))
                     _g2302923040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2302723202_
                                                     (if _final?22967_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g2300123012_))))
                                     (_g2299923206_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info22947_)))))
                               _g2297122982_))))
                      (_g2296923210_ _tgt22949_))))
                 (_generate-class22566_
                  (lambda (_info22568_
                           _tgt22570_
                           _body22571_
                           _K22572_
                           _E22573_)
                    (letrec* ((_rtd22575_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info22568_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info22568_)
                                   '#f))
                              (_known-slot?22577_
                               (if _rtd22575_
                                   (lambda (_key22941_)
                                     (let ((_slot22944_
                                            (keyword->symbol
                                             (gx#stx-e _key22941_))))
                                       (_rtd-known-slot?22579_
                                        _rtd22575_
                                        _slot22944_)))
                                   false))
                              (_final?22578_
                               (if _rtd22575_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd22575_))
                                   '#f))
                              (_rtd-known-slot?22579_
                               (lambda (_rtd22928_ _slot22930_)
                                 (if _rtd22928_
                                     (let ((_$e22932_
                                            (memq _slot22930_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd22928_))))
                                       (if _$e22932_
                                           _$e22932_
                                           (ormap (lambda (_g2293522937_)
                                                    (_rtd-known-slot?22579_
                                                     _g2293522937_
                                                     _slot22930_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd22928_)))))
                                     '#f)))
                              (_recur22580_
                               (lambda (_klass22714_ _rest22716_)
                                 (let* ((_g2271922735_
                                         (lambda (_g2272022731_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2272022731_)))
                                        (_g2271822746_
                                         (lambda (_g2272022739_)
                                           ((lambda () _K22572_))))
                                        (_g2271722924_
                                         (lambda (_g2272022750_)
                                           (if (gx#stx-pair? _g2272022750_)
                                               (let ((_e2272422753_
                                                      (gx#syntax-e
                                                       _g2272022750_)))
                                                 (let ((_hd2272522757_
                                                        (##car _e2272422753_))
                                                       (_tl2272622760_
                                                        (##cdr _e2272422753_)))
                                                   (if (gx#stx-pair?
                                                        _tl2272622760_)
                                                       (let ((_e2272722763_
                                                              (gx#syntax-e
                                                               _tl2272622760_)))
                                                         (let ((_hd2272822767_
                                                                (##car _e2272722763_))
                                                               (_tl2272922770_
                                                                (##cdr _e2272722763_)))
                                                           ((lambda (_L22773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22775_
                             _L22776_)
                      (let* ((_g2279222800_
                              (lambda (_g2279322796_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2279322796_)))
                             (_g2279122920_
                              (lambda (_g2279322804_)
                                ((lambda (_L22807_)
                                   (let ()
                                     (let* ((_g2281922827_
                                             (lambda (_g2282022823_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2282022823_)))
                                            (_g2281822916_
                                             (lambda (_g2282022831_)
                                               ((lambda (_L22834_)
                                                  (let ()
                                                    (let* ((_g2284722855_
                                                            (lambda (_g2284822851_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2284822851_)))
                                                           (_g2284622912_
                                                            (lambda (_g2284822859_)
                                                              ((lambda (_L22862_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2287522883_
                                   (lambda (_g2287622879_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2287622879_)))
                                  (_g2287422908_
                                   (lambda (_g2287622887_)
                                     ((lambda (_L22890_)
                                        (let ()
                                          (let ((_K22903_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L22890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L22807_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L22862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate122560_
                            _L22890_
                            _L22775_
                            (_recur22580_ _klass22714_ _L22773_)
                            _E22573_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?22577_ _L22776_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L22834_
                                                  (cons _L22776_ '())))
                                      '()))
                          '())
                    (cons _K22903_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L22834_
                                                  (cons _L22776_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22862_
                                      (cons _K22903_ (cons _E22573_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2287622887_))))
                             (_g2287422908_ (gx#genident 'e)))))
                       _g2284822859_))))
              (_g2284622912_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2282022831_))))
                                       (_g2281822916_ _klass22714_))))
                                 _g2279322804_))))
                        (_g2279122920_ _tgt22570_)))
                    _tl2272922770_
                    _hd2272822767_
                    _hd2272522757_)))
               (_g2271822746_ _g2272022750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2271822746_
                                                _g2272022750_)))))
                                   (_g2271722924_ _rest22716_)))))
                      (let* ((_g2258222590_
                              (lambda (_g2258322586_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2258322586_)))
                             (_g2258122710_
                              (lambda (_g2258322594_)
                                ((lambda (_L22597_)
                                   (let ()
                                     (let* ((_g2261222620_
                                             (lambda (_g2261322616_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2261322616_)))
                                            (_g2261122706_
                                             (lambda (_g2261322624_)
                                               ((lambda (_L22627_)
                                                  (let ()
                                                    (let* ((_g2264022648_
                                                            (lambda (_g2264122644_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2264122644_)))
                                                           (_g2263922702_
                                                            (lambda (_g2264122652_)
                                                              ((lambda (_L22655_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2266822676_
                                   (lambda (_g2266922672_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2266922672_)))
                                  (_g2266722698_
                                   (lambda (_g2266922680_)
                                     ((lambda (_L22683_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L22683_
                                                              (cons _L22655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L22627_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L22597_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L22627_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur22580_ _L22597_ _body22571_)
                                        '())))
                      (cons _E22573_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2266922680_))))
                             (_g2266722698_
                              (if _final?22578_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2264122652_))))
              (_g2263922702_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info22568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2261322624_))))
                                       (_g2261122706_ _tgt22570_))))
                                 _g2258322594_))))
                        (_g2258122710_ (gx#genident 'class)))))))
          (_generate122560_ _tgt22555_ _ptree22556_ _K22557_ _E22558_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx21552_ _tgt-lst21554_ _clauses21555_)
        (letrec ((_parse-body21557_
                  (lambda (_hd-len22375_)
                    (let _lp22378_ ((_rest22381_ _clauses21555_)
                                    (_r22383_ '()))
                      (let* ((_g2238622398_
                              (lambda (_g2238722394_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2238722394_)))
                             (_g2238522409_
                              (lambda (_g2238722402_) ((lambda () _r22383_))))
                             (_g2238422549_
                              (lambda (_g2238722413_)
                                (if (gx#stx-pair? _g2238722413_)
                                    (let ((_e2239022416_
                                           (gx#syntax-e _g2238722413_)))
                                      (let ((_hd2239122420_
                                             (##car _e2239022416_))
                                            (_tl2239222423_
                                             (##cdr _e2239022416_)))
                                        ((lambda (_L22426_ _L22428_)
                                           (let* ((_g2244522461_
                                                   (lambda (_g2244622457_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2244622457_)))
                                                  (_g2244422472_
                                                   (lambda (_g2244622465_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx21552_
                                                         _L22428_)))))
                                                  (_g2244322513_
                                                   (lambda (_g2244622476_)
                                                     (if (gx#stx-pair?
                                                          _g2244622476_)
                                                         (let ((_e2245322479_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2244622476_)))
                   (let ((_hd2245422483_ (##car _e2245322479_))
                         (_tl2245522486_ (##cdr _e2245322479_)))
                     ((lambda (_L22489_ _L22491_)
                        (if (if (gx#stx-list? _L22491_)
                                (if (fx= (gx#stx-length _L22491_)
                                         _hd-len22375_)
                                    (if (gx#stx-list? _L22489_)
                                        (not (gx#stx-null? _L22489_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp22378_
                             _L22426_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g2250322505_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g2250322505_
                                                   _stx21552_))
                                                _L22491_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L22489_)
                                                      (let ((_$e22509_
                                                             (gx#stx-source
                                                              _L22428_)))
                                                        (if _$e22509_
                                                            _$e22509_
                                                            (gx#stx-source
                                                             _stx21552_))))
                                                     '())))
                                   _r22383_))
                            (_g2244422472_ _g2244622476_)))
                      _tl2245522486_
                      _hd2245422483_)))
                 (_g2244422472_ _g2244622476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2244222545_
                                                   (lambda (_g2244622517_)
                                                     (if (gx#stx-pair?
                                                          _g2244622517_)
                                                         (let ((_e2244822520_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2244622517_)))
                   (let ((_hd2244922524_ (##car _e2244822520_))
                         (_tl2245022527_ (##cdr _e2244822520_)))
                     (if (gx#identifier? _hd2244922524_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g35071_|
                              _hd2244922524_)
                             ((lambda (_L22530_)
                                (if (if (gx#stx-list? _L22530_)
                                        (not (gx#stx-null? _L22530_))
                                        '#f)
                                    (if (gx#stx-null? _L22426_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L22530_)
                         (let ((_$e22541_ (gx#stx-source _L22428_)))
                           (if _$e22541_
                               _$e22541_
                               (gx#stx-source _stx21552_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r22383_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx21552_
                                         _L22428_))
                                    (_g2244322513_ _g2244622517_)))
                              _tl2245022527_)
                             (_g2244322513_ _g2244622517_))
                         (_g2244322513_ _g2244622517_))))
                 (_g2244322513_ _g2244622517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2244222545_ _L22428_)))
                                         _tl2239222423_
                                         _hd2239122420_)))
                                    (_g2238522409_ _g2238722413_)))))
                        (_g2238422549_ _rest22381_)))))
                 (_generate-body21559_
                  (lambda (_body22192_)
                    (let* ((_g2219522203_
                            (lambda (_g2219622199_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2219622199_)))
                           (_g2219422371_
                            (lambda (_g2219622207_)
                              ((lambda (_L22210_)
                                 (let ()
                                   (let* ((_g2222222239_
                                           (lambda (_g2222322235_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2222322235_)))
                                          (_g2222122367_
                                           (lambda (_g2222322243_)
                                             (if (gx#stx-pair/null?
                                                  _g2222322243_)
                                                 (if (fx>= (gx#stx-length
                                                            _g2222322243_)
                                                           '0)
                                                     (let ((_g35072_
                                                            (gx#syntax-split-splice
                                                             _g2222322243_
                                                             '0)))
                                                       (begin
                                                         (let ((_g35073_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35072_)))
                   (if (not (fx= _g35073_ 2))
                       (error "Context expects 2 values" _g35073_)))
                 (let ((_target2222522246_ (values-ref _g35072_ 0))
                       (_tl2222722249_ (values-ref _g35072_ 1)))
                   (if (gx#stx-null? _tl2222722249_)
                       (letrec ((_loop2222822252_
                                 (lambda (_hd2222622256_ _target2223222259_)
                                   (if (gx#stx-pair? _hd2222622256_)
                                       (let ((_e2222922262_
                                              (gx#syntax-e _hd2222622256_)))
                                         (let ((_lp-hd2223022266_
                                                (##car _e2222922262_))
                                               (_lp-tl2223122269_
                                                (##cdr _e2222922262_)))
                                           (_loop2222822252_
                                            _lp-tl2223122269_
                                            (cons _lp-hd2223022266_
                                                  _target2223222259_))))
                                       (let ((_target2223322272_
                                              (reverse _target2223222259_)))
                                         ((lambda (_L22276_)
                                            (let ()
                                              (let* ((_g2229322301_
                                                      (lambda (_g2229422297_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2229422297_)))
                                                     (_g2229222355_
                                                      (lambda (_g2229422305_)
                                                        ((lambda (_L22308_)
                                                           (let ()
                                                             (let* ((_g2232122329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2232222325_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2232222325_)))
                            (_g2232022351_
                             (lambda (_g2232222333_)
                               ((lambda (_L22336_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L22210_
                                                              (cons _L22308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L22336_ '()))))))
                                _g2232222333_))))
                       (_g2232022351_
                        (_generate-clauses21560_
                         _body22192_
                         (cons _L22210_ '()))))))
                 _g2229422305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2229222355_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'error)
                                  (cons '"No clause matching"
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2235822361_
                                                          _g2235922364_)
                                                   (cons _g2235822361_
                                                         _g2235922364_))
                                                 '()
                                                 _L22276_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx21552_))))))
                                          _target2223322272_))))))
                         (_loop2222822252_ _target2222522246_ '()))
                       (_g2222222239_ _g2222322243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2222222239_
                                                      _g2222322243_))
                                                 (_g2222222239_
                                                  _g2222322243_)))))
                                     (_g2222122367_ _tgt-lst21554_))))
                               _g2219622207_))))
                      (_g2219422371_ (gx#genident 'E)))))
                 (_generate-clauses21560_
                  (lambda (_rest21874_ _E21876_)
                    (let* ((_g2188021896_
                            (lambda (_g2188121892_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2188121892_)))
                           (_g2187921907_
                            (lambda (_g2188121900_) ((lambda () _E21876_))))
                           (_g2187822083_
                            (lambda (_g2188121911_)
                              (if (gx#stx-pair? _g2188121911_)
                                  (let ((_e2188821914_
                                         (gx#syntax-e _g2188121911_)))
                                    (let ((_hd2188921918_
                                           (##car _e2188821914_))
                                          (_tl2189021921_
                                           (##cdr _e2188821914_)))
                                      ((lambda (_L21924_ _L21926_)
                                         (let* ((_g2193921958_
                                                 (lambda (_g2194021954_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2194021954_)))
                                                (_g2193822079_
                                                 (lambda (_g2194021962_)
                                                   (if (gx#stx-pair?
                                                        _g2194021962_)
                                                       (let ((_e2194421965_
                                                              (gx#syntax-e
                                                               _g2194021962_)))
                                                         (let ((_hd2194521969_
                                                                (##car _e2194421965_))
                                                               (_tl2194621972_
                                                                (##cdr _e2194421965_)))
                                                           (if (gx#stx-pair?
                                                                _tl2194621972_)
                                                               (let ((_e2194721975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2194621972_)))
                         (let ((_hd2194821979_ (##car _e2194721975_))
                               (_tl2194921982_ (##cdr _e2194721975_)))
                           (if (gx#stx-pair? _tl2194921982_)
                               (let ((_e2195021985_
                                      (gx#syntax-e _tl2194921982_)))
                                 (let ((_hd2195121989_ (##car _e2195021985_))
                                       (_tl2195221992_ (##cdr _e2195021985_)))
                                   (if (gx#stx-null? _tl2195221992_)
                                       ((lambda (_L21995_ _L21997_ _L21998_)
                                          (let* ((_g2201522030_
                                                  (lambda (_g2201622026_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2201622026_)))
                                                 (_g2201422075_
                                                  (lambda (_g2201622034_)
                                                    (if (gx#stx-pair?
                                                         _g2201622034_)
                                                        (let ((_e2201922037_
                                                               (gx#syntax-e
                                                                _g2201622034_)))
                                                          (let ((_hd2202022041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2201922037_))
                        (_tl2202122044_ (##cdr _e2201922037_)))
                    (if (gx#stx-pair? _tl2202122044_)
                        (let ((_e2202222047_ (gx#syntax-e _tl2202122044_)))
                          (let ((_hd2202322051_ (##car _e2202222047_))
                                (_tl2202422054_ (##cdr _e2202222047_)))
                            (if (gx#stx-null? _tl2202422054_)
                                ((lambda (_L22057_ _L22059_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L21998_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L22059_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L22057_ '())))))
                                 _hd2202322051_
                                 _hd2202022041_)
                                (_g2201522030_ _g2201622034_))))
                        (_g2201522030_ _g2201622034_))))
                (_g2201522030_ _g2201622034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2201422075_
                                             (list (if (gx#stx-e _L21997_)
                                                       (_generate121561_
                                                        _L21997_
                                                        _L21995_
                                                        _E21876_)
                                                       _L21995_)
                                                   (_generate-clauses21560_
                                                    _L21924_
                                                    (cons _L21998_ '()))))))
                                        _hd2195121989_
                                        _hd2194821979_
                                        _hd2194521969_)
                                       (_g2193921958_ _g2194021962_))))
                               (_g2193921958_ _g2194021962_))))
                       (_g2193921958_ _g2194021962_))))
               (_g2193921958_ _g2194021962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2193822079_ _L21926_)))
                                       _tl2189021921_
                                       _hd2188921918_)))
                                  (_g2187921907_ _g2188121911_))))
                           (_g2187722188_
                            (lambda (_g2188122087_)
                              (if (gx#stx-pair? _g2188122087_)
                                  (let ((_e2188322090_
                                         (gx#syntax-e _g2188122087_)))
                                    (let ((_hd2188422094_
                                           (##car _e2188322090_))
                                          (_tl2188522097_
                                           (##cdr _e2188322090_)))
                                      (if (gx#stx-null? _tl2188522097_)
                                          ((lambda (_L22100_)
                                             (let* ((_g2211122129_
                                                     (lambda (_g2211222125_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2211222125_)))
                                                    (_g2211022184_
                                                     (lambda (_g2211222133_)
                                                       (if (gx#stx-pair?
                                                            _g2211222133_)
                                                           (let ((_e2211522136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2211222133_)))
                     (let ((_hd2211622140_ (##car _e2211522136_))
                           (_tl2211722143_ (##cdr _e2211522136_)))
                       (if (gx#stx-pair? _tl2211722143_)
                           (let ((_e2211822146_ (gx#syntax-e _tl2211722143_)))
                             (let ((_hd2211922150_ (##car _e2211822146_))
                                   (_tl2212022153_ (##cdr _e2211822146_)))
                               (if (gx#stx-pair? _tl2212022153_)
                                   (let ((_e2212122156_
                                          (gx#syntax-e _tl2212022153_)))
                                     (let ((_hd2212222160_
                                            (##car _e2212122156_))
                                           (_tl2212322163_
                                            (##cdr _e2212122156_)))
                                       (if (gx#stx-null? _tl2212322163_)
                                           ((lambda (_L22166_ _L22168_)
                                              (if (gx#stx-e _L22168_)
                                                  (_generate121561_
                                                   _L22168_
                                                   _L22166_
                                                   _E21876_)
                                                  _L22166_))
                                            _hd2212222160_
                                            _hd2211922150_)
                                           (_g2211122129_ _g2211222133_))))
                                   (_g2211122129_ _g2211222133_))))
                           (_g2211122129_ _g2211222133_))))
                   (_g2211122129_ _g2211222133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2211022184_ _L22100_)))
                                           _hd2188422094_)
                                          (_g2187822083_ _g2188122087_))))
                                  (_g2187822083_ _g2188122087_)))))
                      (_g2187722188_ _rest21874_))))
                 (_generate121561_
                  (lambda (_clause21563_ _body21565_ _E21566_)
                    (let _recur21568_ ((_rest21571_ _clause21563_)
                                       (_rest-targets21573_ _tgt-lst21554_))
                      (let* ((_g2157621588_
                              (lambda (_g2157721584_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2157721584_)))
                             (_g2157521599_
                              (lambda (_g2157721592_)
                                ((lambda () _body21565_))))
                             (_g2157421870_
                              (lambda (_g2157721603_)
                                (if (gx#stx-pair? _g2157721603_)
                                    (let ((_e2158021606_
                                           (gx#syntax-e _g2157721603_)))
                                      (let ((_hd2158121610_
                                             (##car _e2158021606_))
                                            (_tl2158221613_
                                             (##cdr _e2158021606_)))
                                        ((lambda (_L21616_ _L21618_)
                                           (let* ((_g2163521647_
                                                   (lambda (_g2163621643_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2163621643_)))
                                                  (_g2163421866_
                                                   (lambda (_g2163621651_)
                                                     (if (gx#stx-pair?
                                                          _g2163621651_)
                                                         (let ((_e2163921654_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2163621651_)))
                   (let ((_hd2164021658_ (##car _e2163921654_))
                         (_tl2164121661_ (##cdr _e2163921654_)))
                     ((lambda (_L21664_ _L21666_)
                        (let* ((_g2167821686_
                                (lambda (_g2167921682_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2167921682_)))
                               (_g2167721862_
                                (lambda (_g2167921690_)
                                  ((lambda (_L21693_)
                                     (let ()
                                       (let* ((_g2170521722_
                                               (lambda (_g2170621718_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2170621718_)))
                                              (_g2170421858_
                                               (lambda (_g2170621726_)
                                                 (if (gx#stx-pair/null?
                                                      _g2170621726_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2170621726_)
                                                               '0)
                                                         (let ((_g35074_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2170621726_
                         '0)))
                   (begin
                     (let ((_g35075_ (values-count _g35074_)))
                       (if (not (fx= _g35075_ 2))
                           (error "Context expects 2 values" _g35075_)))
                     (let ((_target2170821729_ (values-ref _g35074_ 0))
                           (_tl2171021732_ (values-ref _g35074_ 1)))
                       (if (gx#stx-null? _tl2171021732_)
                           (letrec ((_loop2171121735_
                                     (lambda (_hd2170921739_ _var2171521742_)
                                       (if (gx#stx-pair? _hd2170921739_)
                                           (let ((_e2171221745_
                                                  (gx#syntax-e
                                                   _hd2170921739_)))
                                             (let ((_lp-hd2171321749_
                                                    (##car _e2171221745_))
                                                   (_lp-tl2171421752_
                                                    (##cdr _e2171221745_)))
                                               (_loop2171121735_
                                                _lp-tl2171421752_
                                                (cons _lp-hd2171321749_
                                                      _var2171521742_))))
                                           (let ((_var2171621755_
                                                  (reverse _var2171521742_)))
                                             ((lambda (_L21759_)
                                                (let ()
                                                  (let* ((_g2177621784_
                                                          (lambda (_g2177721780_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2177721780_)))
                                                         (_g2177521854_
                                                          (lambda (_g2177721788_)
                                                            ((lambda (_L21791_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g2180421812_
                                 (lambda (_g2180521808_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2180521808_)))
                                (_g2180321842_
                                 (lambda (_g2180521816_)
                                   ((lambda (_L21819_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g2183321836_
                                                              _g2183421839_)
                                                       (cons _g2183321836_
                                                             _g2183421839_))
                                                     '()
                                                     _L21759_))
                                            (cons _L21791_ '())))
                                '()))
                    '())
              (cons _L21819_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g2180521816_))))
                           (_g2180321842_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx21552_
                             _L21666_
                             _L21618_
                             (cons _L21693_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2184521848_
                                                     _g2184621851_)
                                              (cons _g2184521848_
                                                    _g2184621851_))
                                            '()
                                            _L21759_)))
                             _E21566_)))))
                     _g2177721788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2177521854_
                                                     (_recur21568_
                                                      _L21616_
                                                      _L21664_)))))
                                              _var2171621755_))))))
                             (_loop2171121735_ _target2170821729_ '()))
                           (_g2170521722_ _g2170621726_)))))
                 (_g2170521722_ _g2170621726_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2170521722_
                                                      _g2170621726_)))))
                                         (_g2170421858_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L21618_)))))
                                   _g2167921690_))))
                          (_g2167721862_ (gx#genident 'K))))
                      _tl2164121661_
                      _hd2164021658_)))
                 (_g2163521647_ _g2163621651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2163421866_
                                              _rest-targets21573_)))
                                         _tl2158221613_
                                         _hd2158121610_)))
                                    (_g2157521599_ _g2157721603_)))))
                        (_g2157421870_ _rest21571_))))))
          (_generate-body21559_
           (_parse-body21557_ (gx#stx-length _tgt-lst21554_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21454_ _tgt21456_ _clauses21457_)
        (letrec ((_reclause21459_
                  (lambda (_clause21462_)
                    (let* ((_g2146721482_
                            (lambda (_g2146821478_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2146821478_)))
                           (_g2146621493_
                            (lambda (_g2146821486_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx21454_
                                  _clause21462_)))))
                           (_g2146521527_
                            (lambda (_g2146821497_)
                              (if (gx#stx-pair? _g2146821497_)
                                  (let ((_e2147421500_
                                         (gx#syntax-e _g2146821497_)))
                                    (let ((_hd2147521504_
                                           (##car _e2147421500_))
                                          (_tl2147621507_
                                           (##cdr _e2147421500_)))
                                      ((lambda (_L21510_ _L21512_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L21512_ '()) _L21510_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl2147621507_
                                       _hd2147521504_)))
                                  (_g2146621493_ _g2146821497_))))
                           (_g2146421548_
                            (lambda (_g2146821531_)
                              (if (gx#stx-pair? _g2146821531_)
                                  (let ((_e2146921534_
                                         (gx#syntax-e _g2146821531_)))
                                    (let ((_hd2147021538_
                                           (##car _e2146921534_))
                                          (_tl2147121541_
                                           (##cdr _e2146921534_)))
                                      (if (gx#identifier? _hd2147021538_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g35076_|
                                               _hd2147021538_)
                                              ((lambda () _clause21462_))
                                              (_g2146521527_ _g2146821531_))
                                          (_g2146521527_ _g2146821531_))))
                                  (_g2146521527_ _g2146821531_)))))
                      (_g2146421548_ _clause21462_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21454_
           (cons _tgt21456_ '())
           (gx#stx-map _reclause21459_ _clauses21457_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx28661_)
        (let* ((_g2866628695_
                (lambda (_g2866728691_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2866728691_)))
               (_g2866528803_
                (lambda (_g2866728699_)
                  (if (gx#stx-pair? _g2866728699_)
                      (let ((_e2868428702_ (gx#syntax-e _g2866728699_)))
                        (let ((_hd2868528706_ (##car _e2868428702_))
                              (_tl2868628709_ (##cdr _e2868428702_)))
                          (if (gx#stx-pair? _tl2868628709_)
                              (let ((_e2868728712_
                                     (gx#syntax-e _tl2868628709_)))
                                (let ((_hd2868828716_ (##car _e2868728712_))
                                      (_tl2868928719_ (##cdr _e2868728712_)))
                                  ((lambda (_L28722_ _L28724_)
                                     (if (gx#stx-list? _L28722_)
                                         (let* ((_g2873828746_
                                                 (lambda (_g2873928742_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2873928742_)))
                                                (_g2873728799_
                                                 (lambda (_g2873928750_)
                                                   ((lambda (_L28753_)
                                                      (let ()
                                                        (let* ((_g2876528773_
                                                                (lambda (_g2876628769_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2876628769_)))
                       (_g2876428795_
                        (lambda (_g2876628777_)
                          ((lambda (_L28780_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L28753_
                                                         (cons _L28724_ '()))
                                                   '())
                                             (cons _L28780_ '()))))))
                           _g2876628777_))))
                  (_g2876428795_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx28661_
                    _L28753_
                    _L28722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2873928750_))))
                                           (_g2873728799_
                                            (gx#genident _L28724_)))
                                         (_g2866628695_ _g2866728699_)))
                                   _tl2868928719_
                                   _hd2868828716_)))
                              (_g2866628695_ _g2866728699_))))
                      (_g2866628695_ _g2866728699_))))
               (_g2866428908_
                (lambda (_g2866728807_)
                  (if (gx#stx-pair? _g2866728807_)
                      (let ((_e2867628810_ (gx#syntax-e _g2866728807_)))
                        (let ((_hd2867728814_ (##car _e2867628810_))
                              (_tl2867828817_ (##cdr _e2867628810_)))
                          (if (gx#stx-pair? _tl2867828817_)
                              (let ((_e2867928820_
                                     (gx#syntax-e _tl2867828817_)))
                                (let ((_hd2868028824_ (##car _e2867928820_))
                                      (_tl2868128827_ (##cdr _e2867928820_)))
                                  (if (gx#identifier? _hd2868028824_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35077_|
                                           _hd2868028824_)
                                          ((lambda (_L28830_)
                                             (if (gx#stx-list? _L28830_)
                                                 (let* ((_g2884328851_
                                                         (lambda (_g2884428847_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2884428847_)))
                                                        (_g2884228904_
                                                         (lambda (_g2884428855_)
                                                           ((lambda (_L28858_)
                                                              (let ()
                                                                (let* ((_g2887028878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2887128874_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2887128874_)))
                               (_g2886928900_
                                (lambda (_g2887128882_)
                                  ((lambda (_L28885_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L28858_
                                                     (cons _L28885_ '()))))))
                                   _g2887128882_))))
                          (_g2886928900_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L28858_ _L28830_))
                            (gx#stx-source _stx28661_))))))
                    _g2884428855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2884228904_
                                                    (gx#genident 'args)))
                                                 (_g2866528803_
                                                  _g2866728807_)))
                                           _tl2868128827_)
                                          (_g2866528803_ _g2866728807_))
                                      (_g2866528803_ _g2866728807_))))
                              (_g2866528803_ _g2866728807_))))
                      (_g2866528803_ _g2866728807_))))
               (_g2866329013_
                (lambda (_g2866728912_)
                  (if (gx#stx-pair? _g2866728912_)
                      (let ((_e2866928915_ (gx#syntax-e _g2866728912_)))
                        (let ((_hd2867028919_ (##car _e2866928915_))
                              (_tl2867128922_ (##cdr _e2866928915_)))
                          (if (gx#stx-pair? _tl2867128922_)
                              (let ((_e2867228925_
                                     (gx#syntax-e _tl2867128922_)))
                                (let ((_hd2867328929_ (##car _e2867228925_))
                                      (_tl2867428932_ (##cdr _e2867228925_)))
                                  (if (gx#identifier? _hd2867328929_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g35078_|
                                           _hd2867328929_)
                                          ((lambda (_L28935_)
                                             (if (gx#stx-list? _L28935_)
                                                 (let* ((_g2894828956_
                                                         (lambda (_g2894928952_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2894928952_)))
                                                        (_g2894729009_
                                                         (lambda (_g2894928960_)
                                                           ((lambda (_L28963_)
                                                              (let ()
                                                                (let* ((_g2897528983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2897628979_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2897628979_)))
                               (_g2897429005_
                                (lambda (_g2897628987_)
                                  ((lambda (_L28990_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L28963_ '())
                                                     (cons _L28990_ '()))))))
                                   _g2897628987_))))
                          (_g2897429005_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L28963_ _L28935_))
                            (gx#stx-source _stx28661_))))))
                    _g2894928960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2894729009_
                                                    (gx#genident 'e)))
                                                 (_g2866428908_
                                                  _g2866728912_)))
                                           _tl2867428932_)
                                          (_g2866428908_ _g2866728912_))
                                      (_g2866428908_ _g2866728912_))))
                              (_g2866428908_ _g2866728912_))))
                      (_g2866428908_ _g2866728912_)))))
          (_g2866329013_ _stx28661_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx29017_)
        (let* ((_g2902029044_
                (lambda (_g2902129040_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2902129040_)))
               (_g2901929256_
                (lambda (_g2902129048_)
                  (if (gx#stx-pair? _g2902129048_)
                      (let ((_e2902429051_ (gx#syntax-e _g2902129048_)))
                        (let ((_hd2902529055_ (##car _e2902429051_))
                              (_tl2902629058_ (##cdr _e2902429051_)))
                          (if (gx#stx-pair? _tl2902629058_)
                              (let ((_e2902729061_
                                     (gx#syntax-e _tl2902629058_)))
                                (let ((_hd2902829065_ (##car _e2902729061_))
                                      (_tl2902929068_ (##cdr _e2902729061_)))
                                  (if (gx#stx-pair/null? _hd2902829065_)
                                      (if (fx>= (gx#stx-length _hd2902829065_)
                                                '0)
                                          (let ((_g35079_
                                                 (gx#syntax-split-splice
                                                  _hd2902829065_
                                                  '0)))
                                            (begin
                                              (let ((_g35080_
                                                     (values-count _g35079_)))
                                                (if (not (fx= _g35080_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35080_)))
                                              (let ((_target2903029071_
                                                     (values-ref _g35079_ 0))
                                                    (_tl2903229074_
                                                     (values-ref _g35079_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2903229074_)
                                                    (letrec ((_loop2903329077_
                                                              (lambda (_hd2903129081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2903729084_)
                        (if (gx#stx-pair? _hd2903129081_)
                            (let ((_e2903429087_ (gx#syntax-e _hd2903129081_)))
                              (let ((_lp-hd2903529091_ (##car _e2903429087_))
                                    (_lp-tl2903629094_ (##cdr _e2903429087_)))
                                (_loop2903329077_
                                 _lp-tl2903629094_
                                 (cons _lp-hd2903529091_ _e2903729084_))))
                            (let ((_e2903829097_ (reverse _e2903729084_)))
                              ((lambda (_L29101_ _L29103_)
                                 (if (gx#stx-list? _L29101_)
                                     (let* ((_g2912129138_
                                             (lambda (_g2912229134_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2912229134_)))
                                            (_g2912029244_
                                             (lambda (_g2912229142_)
                                               (if (gx#stx-pair/null?
                                                    _g2912229142_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2912229142_)
                                                             '0)
                                                       (let ((_g35081_
                                                              (gx#syntax-split-splice
                                                               _g2912229142_
                                                               '0)))
                                                         (begin
                                                           (let ((_g35082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g35081_)))
                     (if (not (fx= _g35082_ 2))
                         (error "Context expects 2 values" _g35082_)))
                   (let ((_target2912429145_ (values-ref _g35081_ 0))
                         (_tl2912629148_ (values-ref _g35081_ 1)))
                     (if (gx#stx-null? _tl2912629148_)
                         (letrec ((_loop2912729151_
                                   (lambda (_hd2912529155_ _$e2913129158_)
                                     (if (gx#stx-pair? _hd2912529155_)
                                         (let ((_e2912829161_
                                                (gx#syntax-e _hd2912529155_)))
                                           (let ((_lp-hd2912929165_
                                                  (##car _e2912829161_))
                                                 (_lp-tl2913029168_
                                                  (##cdr _e2912829161_)))
                                             (_loop2912729151_
                                              _lp-tl2913029168_
                                              (cons _lp-hd2912929165_
                                                    _$e2913129158_))))
                                         (let ((_$e2913229171_
                                                (reverse _$e2913129158_)))
                                           ((lambda (_L29175_)
                                              (let ()
                                                (let* ((_g2919129199_
                                                        (lambda (_g2919229195_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2919229195_)))
                                                       (_g2919029232_
                                                        (lambda (_g2919229203_)
                                                          ((lambda (_L29206_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L29103_
                                        _L29175_)
                                       (foldr (lambda (_g2922029224_
                                                       _g2922129227_
                                                       _g2922229229_)
                                                (cons (cons _g2922129227_
                                                            (cons _g2922029224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2922229229_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L29103_
                                              _L29175_))
                                     (cons _L29206_ '()))))))
                   _g2919229203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2919029232_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx29017_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2923529238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2923629241_)
                       (cons _g2923529238_ _g2923629241_))
                     '()
                     _L29175_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L29101_)))))
                                            _$e2913229171_))))))
                           (_loop2912729151_ _target2912429145_ '()))
                         (_g2912129138_ _g2912229142_)))))
               (_g2912129138_ _g2912229142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2912129138_
                                                    _g2912229142_)))))
                                       (_g2912029244_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2924729250_
                                                           _g2924829253_)
                                                    (cons _g2924729250_
                                                          _g2924829253_))
                                                  '()
                                                  _L29103_)))))
                                     (_g2902029044_ _g2902129048_)))
                               _tl2902929068_
                               _e2903829097_))))))
              (_loop2903329077_ _target2903029071_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2902029044_
                                                     _g2902129048_)))))
                                          (_g2902029044_ _g2902129048_))
                                      (_g2902029044_ _g2902129048_))))
                              (_g2902029044_ _g2902129048_))))
                      (_g2902029044_ _g2902129048_)))))
          (_g2901929256_ _stx29017_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx29262_)
        (let* ((_g2926829351_
                (lambda (_g2926929347_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2926929347_)))
               (_g2926729512_
                (lambda (_g2926929355_)
                  (if (gx#stx-pair? _g2926929355_)
                      (let ((_e2931429358_ (gx#syntax-e _g2926929355_)))
                        (let ((_hd2931529362_ (##car _e2931429358_))
                              (_tl2931629365_ (##cdr _e2931429358_)))
                          (if (gx#stx-pair? _tl2931629365_)
                              (let ((_e2931729368_
                                     (gx#syntax-e _tl2931629365_)))
                                (let ((_hd2931829372_ (##car _e2931729368_))
                                      (_tl2931929375_ (##cdr _e2931729368_)))
                                  (if (gx#stx-pair/null? _hd2931829372_)
                                      (if (fx>= (gx#stx-length _hd2931829372_)
                                                '0)
                                          (let ((_g35083_
                                                 (gx#syntax-split-splice
                                                  _hd2931829372_
                                                  '0)))
                                            (begin
                                              (let ((_g35084_
                                                     (values-count _g35083_)))
                                                (if (not (fx= _g35084_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35084_)))
                                              (let ((_target2932029378_
                                                     (values-ref _g35083_ 0))
                                                    (_tl2932229381_
                                                     (values-ref _g35083_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2932229381_)
                                                    (letrec ((_loop2932329384_
                                                              (lambda (_hd2932129388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2932729391_
                               _hd2932829393_)
                        (if (gx#stx-pair? _hd2932129388_)
                            (let ((_e2932429396_ (gx#syntax-e _hd2932129388_)))
                              (let ((_lp-hd2932529400_ (##car _e2932429396_))
                                    (_lp-tl2932629403_ (##cdr _e2932429396_)))
                                (if (gx#stx-pair? _lp-hd2932529400_)
                                    (let ((_e2933129406_
                                           (gx#syntax-e _lp-hd2932529400_)))
                                      (let ((_hd2933229410_
                                             (##car _e2933129406_))
                                            (_tl2933329413_
                                             (##cdr _e2933129406_)))
                                        (if (gx#stx-pair? _tl2933329413_)
                                            (let ((_e2933429416_
                                                   (gx#syntax-e
                                                    _tl2933329413_)))
                                              (let ((_hd2933529420_
                                                     (##car _e2933429416_))
                                                    (_tl2933629423_
                                                     (##cdr _e2933429416_)))
                                                (if (gx#stx-null?
                                                     _tl2933629423_)
                                                    (_loop2932329384_
                                                     _lp-tl2932629403_
                                                     (cons _hd2933529420_
                                                           _expr2932729391_)
                                                     (cons _hd2933229410_
                                                           _hd2932829393_))
                                                    (_g2926829351_
                                                     _g2926929355_))))
                                            (_g2926829351_ _g2926929355_))))
                                    (_g2926829351_ _g2926929355_))))
                            (let ((_expr2932929426_ (reverse _expr2932729391_))
                                  (_hd2933029429_ (reverse _hd2932829393_)))
                              (if (gx#stx-pair/null? _tl2931929375_)
                                  (if (fx>= (gx#stx-length _tl2931929375_) '0)
                                      (let ((_g35085_
                                             (gx#syntax-split-splice
                                              _tl2931929375_
                                              '0)))
                                        (begin
                                          (let ((_g35086_
                                                 (values-count _g35085_)))
                                            (if (not (fx= _g35086_ 2))
                                                (error "Context expects 2 values"
                                                       _g35086_)))
                                          (let ((_target2933729432_
                                                 (values-ref _g35085_ 0))
                                                (_tl2933929435_
                                                 (values-ref _g35085_ 1)))
                                            (if (gx#stx-null? _tl2933929435_)
                                                (letrec ((_loop2934029438_
                                                          (lambda (_hd2933829442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2934429445_)
                    (if (gx#stx-pair? _hd2933829442_)
                        (let ((_e2934129448_ (gx#syntax-e _hd2933829442_)))
                          (let ((_lp-hd2934229452_ (##car _e2934129448_))
                                (_lp-tl2934329455_ (##cdr _e2934129448_)))
                            (_loop2934029438_
                             _lp-tl2934329455_
                             (cons _lp-hd2934229452_ _body2934429445_))))
                        (let ((_body2934529458_ (reverse _body2934429445_)))
                          ((lambda (_L29462_ _L29464_ _L29465_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2948729494_
                                                           _g2948829497_)
                                                    (cons _g2948729494_
                                                          _g2948829497_))
                                                  '()
                                                  _L29464_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2948929500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2949029503_)
                        (cons _g2948929500_ _g2949029503_))
                      '()
                      _L29465_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2949129506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2949229509_)
                        (cons _g2949129506_ _g2949229509_))
                      '()
                      _L29462_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2934529458_
                           _expr2932929426_
                           _hd2933029429_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2934029438_
                                                   _target2933729432_
                                                   '()))
                                                (_g2926829351_
                                                 _g2926929355_)))))
                                      (_g2926829351_ _g2926929355_))
                                  (_g2926829351_ _g2926929355_)))))))
              (_loop2932329384_ _target2932029378_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2926829351_
                                                     _g2926929355_)))))
                                          (_g2926829351_ _g2926929355_))
                                      (_g2926829351_ _g2926929355_))))
                              (_g2926829351_ _g2926929355_))))
                      (_g2926829351_ _g2926929355_))))
               (_g2926629624_
                (lambda (_g2926929516_)
                  (if (gx#stx-pair? _g2926929516_)
                      (let ((_e2929029519_ (gx#syntax-e _g2926929516_)))
                        (let ((_hd2929129523_ (##car _e2929029519_))
                              (_tl2929229526_ (##cdr _e2929029519_)))
                          (if (gx#stx-pair? _tl2929229526_)
                              (let ((_e2929329529_
                                     (gx#syntax-e _tl2929229526_)))
                                (let ((_hd2929429533_ (##car _e2929329529_))
                                      (_tl2929529536_ (##cdr _e2929329529_)))
                                  (if (gx#stx-pair? _hd2929429533_)
                                      (let ((_e2929629539_
                                             (gx#syntax-e _hd2929429533_)))
                                        (let ((_hd2929729543_
                                               (##car _e2929629539_))
                                              (_tl2929829546_
                                               (##cdr _e2929629539_)))
                                          (if (gx#stx-pair? _tl2929829546_)
                                              (let ((_e2929929549_
                                                     (gx#syntax-e
                                                      _tl2929829546_)))
                                                (let ((_hd2930029553_
                                                       (##car _e2929929549_))
                                                      (_tl2930129556_
                                                       (##cdr _e2929929549_)))
                                                  (if (gx#stx-null?
                                                       _tl2930129556_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2929529536_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2929529536_)
                            '0)
                      (let ((_g35087_
                             (gx#syntax-split-splice _tl2929529536_ '0)))
                        (begin
                          (let ((_g35088_ (values-count _g35087_)))
                            (if (not (fx= _g35088_ 2))
                                (error "Context expects 2 values" _g35088_)))
                          (let ((_target2930229559_ (values-ref _g35087_ 0))
                                (_tl2930429562_ (values-ref _g35087_ 1)))
                            (if (gx#stx-null? _tl2930429562_)
                                (letrec ((_loop2930529565_
                                          (lambda (_hd2930329569_
                                                   _body2930929572_)
                                            (if (gx#stx-pair? _hd2930329569_)
                                                (let ((_e2930629575_
                                                       (gx#syntax-e
                                                        _hd2930329569_)))
                                                  (let ((_lp-hd2930729579_
                                                         (##car _e2930629575_))
                                                        (_lp-tl2930829582_
                                                         (##cdr _e2930629575_)))
                                                    (_loop2930529565_
                                                     _lp-tl2930829582_
                                                     (cons _lp-hd2930729579_
                                                           _body2930929572_))))
                                                (let ((_body2931029585_
                                                       (reverse _body2930929572_)))
                                                  ((lambda (_L29589_
                                                            _L29591_
                                                            _L29592_
                                                            _L29593_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L29592_)
                                                         (cons _L29593_
                                                               (cons (cons (cons _L29592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L29591_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2961529618_ _g2961629621_)
                                        (cons _g2961529618_ _g2961629621_))
                                      '()
                                      _L29589_))))
                 (_g2926729512_ _g2926929516_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2931029585_
                                                   _hd2930029553_
                                                   _hd2929729543_
                                                   _hd2929129523_))))))
                                  (_loop2930529565_ _target2930229559_ '()))
                                (_g2926729512_ _g2926929516_)))))
                      (_g2926729512_ _g2926929516_))
                  (_g2926729512_ _g2926929516_))
              (_g2926729512_ _g2926929516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2926729512_ _g2926929516_))))
                                      (_g2926729512_ _g2926929516_))))
                              (_g2926729512_ _g2926929516_))))
                      (_g2926729512_ _g2926929516_))))
               (_g2926529706_
                (lambda (_g2926929628_)
                  (if (gx#stx-pair? _g2926929628_)
                      (let ((_e2927129631_ (gx#syntax-e _g2926929628_)))
                        (let ((_hd2927229635_ (##car _e2927129631_))
                              (_tl2927329638_ (##cdr _e2927129631_)))
                          (if (gx#stx-pair? _tl2927329638_)
                              (let ((_e2927429641_
                                     (gx#syntax-e _tl2927329638_)))
                                (let ((_hd2927529645_ (##car _e2927429641_))
                                      (_tl2927629648_ (##cdr _e2927429641_)))
                                  (if (gx#stx-null? _hd2927529645_)
                                      (if (gx#stx-pair/null? _tl2927629648_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2927629648_)
                                                    '0)
                                              (let ((_g35089_
                                                     (gx#syntax-split-splice
                                                      _tl2927629648_
                                                      '0)))
                                                (begin
                                                  (let ((_g35090_
                                                         (values-count
                                                          _g35089_)))
                                                    (if (not (fx= _g35090_ 2))
                                                        (error "Context expects 2 values"
                                                               _g35090_)))
                                                  (let ((_target2927729651_
                                                         (values-ref
                                                          _g35089_
                                                          0))
                                                        (_tl2927929654_
                                                         (values-ref
                                                          _g35089_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2927929654_)
                                                        (letrec ((_loop2928029657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2927829661_ _body2928429664_)
                            (if (gx#stx-pair? _hd2927829661_)
                                (let ((_e2928129667_
                                       (gx#syntax-e _hd2927829661_)))
                                  (let ((_lp-hd2928229671_
                                         (##car _e2928129667_))
                                        (_lp-tl2928329674_
                                         (##cdr _e2928129667_)))
                                    (_loop2928029657_
                                     _lp-tl2928329674_
                                     (cons _lp-hd2928229671_
                                           _body2928429664_))))
                                (let ((_body2928529677_
                                       (reverse _body2928429664_)))
                                  ((lambda (_L29681_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2969729700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2969829703_)
                    (cons _g2969729700_ _g2969829703_))
                  '()
                  _L29681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2928529677_))))))
                  (_loop2928029657_ _target2927729651_ '()))
                (_g2926629624_ _g2926929628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2926629624_ _g2926929628_))
                                          (_g2926629624_ _g2926929628_))
                                      (_g2926629624_ _g2926929628_))))
                              (_g2926629624_ _g2926929628_))))
                      (_g2926629624_ _g2926929628_)))))
          (_g2926529706_ _$stx29262_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx29714_)
        (let* ((_g2971929771_
                (lambda (_g2972029767_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2972029767_)))
               (_g2971829854_
                (lambda (_g2972029775_)
                  (if (gx#stx-pair? _g2972029775_)
                      (let ((_e2975129778_ (gx#syntax-e _g2972029775_)))
                        (let ((_hd2975229782_ (##car _e2975129778_))
                              (_tl2975329785_ (##cdr _e2975129778_)))
                          (if (gx#stx-pair? _tl2975329785_)
                              (let ((_e2975429788_
                                     (gx#syntax-e _tl2975329785_)))
                                (let ((_hd2975529792_ (##car _e2975429788_))
                                      (_tl2975629795_ (##cdr _e2975429788_)))
                                  (if (gx#stx-null? _hd2975529792_)
                                      (if (gx#stx-pair/null? _tl2975629795_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2975629795_)
                                                    '0)
                                              (let ((_g35091_
                                                     (gx#syntax-split-splice
                                                      _tl2975629795_
                                                      '0)))
                                                (begin
                                                  (let ((_g35092_
                                                         (values-count
                                                          _g35091_)))
                                                    (if (not (fx= _g35092_ 2))
                                                        (error "Context expects 2 values"
                                                               _g35092_)))
                                                  (let ((_target2975729798_
                                                         (values-ref
                                                          _g35091_
                                                          0))
                                                        (_tl2975929801_
                                                         (values-ref
                                                          _g35091_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2975929801_)
                                                        (letrec ((_loop2976029804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2975829808_ _body2976429811_)
                            (if (gx#stx-pair? _hd2975829808_)
                                (let ((_e2976129814_
                                       (gx#syntax-e _hd2975829808_)))
                                  (let ((_lp-hd2976229818_
                                         (##car _e2976129814_))
                                        (_lp-tl2976329821_
                                         (##cdr _e2976129814_)))
                                    (_loop2976029804_
                                     _lp-tl2976329821_
                                     (cons _lp-hd2976229818_
                                           _body2976429811_))))
                                (let ((_body2976529824_
                                       (reverse _body2976429811_)))
                                  ((lambda (_L29828_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2984529848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2984629851_)
                    (cons _g2984529848_ _g2984629851_))
                  '()
                  _L29828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2976529824_))))))
                  (_loop2976029804_ _target2975729798_ '()))
                (_g2971929771_ _g2972029775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2971929771_ _g2972029775_))
                                          (_g2971929771_ _g2972029775_))
                                      (_g2971929771_ _g2972029775_))))
                              (_g2971929771_ _g2972029775_))))
                      (_g2971929771_ _g2972029775_))))
               (_g2971729980_
                (lambda (_g2972029858_)
                  (if (gx#stx-pair? _g2972029858_)
                      (let ((_e2972629861_ (gx#syntax-e _g2972029858_)))
                        (let ((_hd2972729865_ (##car _e2972629861_))
                              (_tl2972829868_ (##cdr _e2972629861_)))
                          (if (gx#stx-pair? _tl2972829868_)
                              (let ((_e2972929871_
                                     (gx#syntax-e _tl2972829868_)))
                                (let ((_hd2973029875_ (##car _e2972929871_))
                                      (_tl2973129878_ (##cdr _e2972929871_)))
                                  (if (gx#stx-pair? _hd2973029875_)
                                      (let ((_e2973229881_
                                             (gx#syntax-e _hd2973029875_)))
                                        (let ((_hd2973329885_
                                               (##car _e2973229881_))
                                              (_tl2973429888_
                                               (##cdr _e2973229881_)))
                                          (if (gx#stx-pair? _hd2973329885_)
                                              (let ((_e2973529891_
                                                     (gx#syntax-e
                                                      _hd2973329885_)))
                                                (let ((_hd2973629895_
                                                       (##car _e2973529891_))
                                                      (_tl2973729898_
                                                       (##cdr _e2973529891_)))
                                                  (if (gx#stx-pair?
                                                       _tl2973729898_)
                                                      (let ((_e2973829901_
                                                             (gx#syntax-e
                                                              _tl2973729898_)))
                                                        (let ((_hd2973929905_
                                                               (##car _e2973829901_))
                                                              (_tl2974029908_
                                                               (##cdr _e2973829901_)))
                                                          (if (gx#stx-null?
                                                               _tl2974029908_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2973129878_)
                          (if (fx>= (gx#stx-length _tl2973129878_) '0)
                              (let ((_g35093_
                                     (gx#syntax-split-splice
                                      _tl2973129878_
                                      '0)))
                                (begin
                                  (let ((_g35094_ (values-count _g35093_)))
                                    (if (not (fx= _g35094_ 2))
                                        (error "Context expects 2 values"
                                               _g35094_)))
                                  (let ((_target2974129911_
                                         (values-ref _g35093_ 0))
                                        (_tl2974329914_
                                         (values-ref _g35093_ 1)))
                                    (if (gx#stx-null? _tl2974329914_)
                                        (letrec ((_loop2974429917_
                                                  (lambda (_hd2974229921_
                                                           _body2974829924_)
                                                    (if (gx#stx-pair?
                                                         _hd2974229921_)
                                                        (let ((_e2974529927_
                                                               (gx#syntax-e
                                                                _hd2974229921_)))
                                                          (let ((_lp-hd2974629931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2974529927_))
                        (_lp-tl2974729934_ (##cdr _e2974529927_)))
                    (_loop2974429917_
                     _lp-tl2974729934_
                     (cons _lp-hd2974629931_ _body2974829924_))))
                (let ((_body2974929937_ (reverse _body2974829924_)))
                  ((lambda (_L29941_ _L29943_ _L29944_ _L29945_ _L29946_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L29945_ (cons _L29944_ '())) '())
                                 (cons (cons _L29946_
                                             (cons _L29943_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2997129974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2997229977_)
                      (cons _g2997129974_ _g2997229977_))
                    '()
                    _L29941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2974929937_
                   _tl2973429888_
                   _hd2973929905_
                   _hd2973629895_
                   _hd2972729865_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2974429917_
                                           _target2974129911_
                                           '()))
                                        (_g2971829854_ _g2972029858_)))))
                              (_g2971829854_ _g2972029858_))
                          (_g2971829854_ _g2972029858_))
                      (_g2971829854_ _g2972029858_))))
              (_g2971829854_ _g2972029858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2971829854_ _g2972029858_))))
                                      (_g2971829854_ _g2972029858_))))
                              (_g2971829854_ _g2972029858_))))
                      (_g2971829854_ _g2972029858_)))))
          (_g2971729980_ _$stx29714_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx29986_)
        (let* ((_g2999730141_
                (lambda (_g2999830137_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2999830137_)))
               (_g2999630236_
                (lambda (_g2999830145_)
                  (if (gx#stx-pair? _g2999830145_)
                      (let ((_e3011830148_ (gx#syntax-e _g2999830145_)))
                        (let ((_hd3011930152_ (##car _e3011830148_))
                              (_tl3012030155_ (##cdr _e3011830148_)))
                          (if (gx#stx-pair? _tl3012030155_)
                              (let ((_e3012130158_
                                     (gx#syntax-e _tl3012030155_)))
                                (let ((_hd3012230162_ (##car _e3012130158_))
                                      (_tl3012330165_ (##cdr _e3012130158_)))
                                  (if (gx#stx-pair? _tl3012330165_)
                                      (let ((_e3012430168_
                                             (gx#syntax-e _tl3012330165_)))
                                        (let ((_hd3012530172_
                                               (##car _e3012430168_))
                                              (_tl3012630175_
                                               (##cdr _e3012430168_)))
                                          (if (gx#stx-datum? _hd3012530172_)
                                              (if (equal? (gx#stx-e
                                                           _hd3012530172_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3012630175_)
                                                      (let ((_e3012730178_
                                                             (gx#syntax-e
                                                              _tl3012630175_)))
                                                        (let ((_hd3012830182_
                                                               (##car _e3012730178_))
                                                              (_tl3012930185_
                                                               (##cdr _e3012730178_)))
                                                          (if (gx#stx-pair?
                                                               _tl3012930185_)
                                                              (let ((_e3013030188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3012930185_)))
                        (let ((_hd3013130192_ (##car _e3013030188_))
                              (_tl3013230195_ (##cdr _e3013030188_)))
                          (if (gx#identifier? _hd3013130192_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g35095_|
                                   _hd3013130192_)
                                  (if (gx#stx-pair? _tl3013230195_)
                                      (let ((_e3013330198_
                                             (gx#syntax-e _tl3013230195_)))
                                        (let ((_hd3013430202_
                                               (##car _e3013330198_))
                                              (_tl3013530205_
                                               (##cdr _e3013330198_)))
                                          (if (gx#stx-null? _tl3013530205_)
                                              ((lambda (_L30208_
                                                        _L30210_
                                                        _L30211_
                                                        _L30212_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L30212_
                                             (cons _L30211_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L30208_
                                                   (cons (cons _L30210_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '$obj)
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd3013430202_
                                               _hd3012830182_
                                               _hd3012230162_
                                               _hd3011930152_)
                                              (_g2999730141_ _g2999830145_))))
                                      (_g2999730141_ _g2999830145_))
                                  (_g2999730141_ _g2999830145_))
                              (_g2999730141_ _g2999830145_))))
                      (_g2999730141_ _g2999830145_))))
              (_g2999730141_ _g2999830145_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2999730141_
                                                   _g2999830145_))
                                              (_g2999730141_ _g2999830145_))))
                                      (_g2999730141_ _g2999830145_))))
                              (_g2999730141_ _g2999830145_))))
                      (_g2999730141_ _g2999830145_))))
               (_g2999530304_
                (lambda (_g2999830240_)
                  (if (gx#stx-pair? _g2999830240_)
                      (let ((_e3010230243_ (gx#syntax-e _g2999830240_)))
                        (let ((_hd3010330247_ (##car _e3010230243_))
                              (_tl3010430250_ (##cdr _e3010230243_)))
                          (if (gx#stx-pair? _tl3010430250_)
                              (let ((_e3010530253_
                                     (gx#syntax-e _tl3010430250_)))
                                (let ((_hd3010630257_ (##car _e3010530253_))
                                      (_tl3010730260_ (##cdr _e3010530253_)))
                                  (if (gx#stx-pair? _tl3010730260_)
                                      (let ((_e3010830263_
                                             (gx#syntax-e _tl3010730260_)))
                                        (let ((_hd3010930267_
                                               (##car _e3010830263_))
                                              (_tl3011030270_
                                               (##cdr _e3010830263_)))
                                          (if (gx#stx-datum? _hd3010930267_)
                                              (if (equal? (gx#stx-e
                                                           _hd3010930267_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl3011030270_)
                                                      (let ((_e3011130273_
                                                             (gx#syntax-e
                                                              _tl3011030270_)))
                                                        (let ((_hd3011230277_
                                                               (##car _e3011130273_))
                                                              (_tl3011330280_
                                                               (##cdr _e3011130273_)))
                                                          (if (gx#stx-null?
                                                               _tl3011330280_)
                                                              ((lambda (_L30283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30285_
                                _L30286_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L30286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L30285_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L30283_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3011230277_
                       _hd3010630257_
                       _hd3010330247_)
                      (_g2999630236_ _g2999830240_))))
              (_g2999630236_ _g2999830240_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2999630236_
                                                   _g2999830240_))
                                              (_g2999630236_ _g2999830240_))))
                                      (_g2999630236_ _g2999830240_))))
                              (_g2999630236_ _g2999830240_))))
                      (_g2999630236_ _g2999830240_))))
               (_g2999430372_
                (lambda (_g2999830308_)
                  (if (gx#stx-pair? _g2999830308_)
                      (let ((_e3008730311_ (gx#syntax-e _g2999830308_)))
                        (let ((_hd3008830315_ (##car _e3008730311_))
                              (_tl3008930318_ (##cdr _e3008730311_)))
                          (if (gx#stx-pair? _tl3008930318_)
                              (let ((_e3009030321_
                                     (gx#syntax-e _tl3008930318_)))
                                (let ((_hd3009130325_ (##car _e3009030321_))
                                      (_tl3009230328_ (##cdr _e3009030321_)))
                                  (if (gx#stx-pair? _tl3009230328_)
                                      (let ((_e3009330331_
                                             (gx#syntax-e _tl3009230328_)))
                                        (let ((_hd3009430335_
                                               (##car _e3009330331_))
                                              (_tl3009530338_
                                               (##cdr _e3009330331_)))
                                          (if (gx#identifier? _hd3009430335_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35096_|
                                                   _hd3009430335_)
                                                  (if (gx#stx-pair?
                                                       _tl3009530338_)
                                                      (let ((_e3009630341_
                                                             (gx#syntax-e
                                                              _tl3009530338_)))
                                                        (let ((_hd3009730345_
                                                               (##car _e3009630341_))
                                                              (_tl3009830348_
                                                               (##cdr _e3009630341_)))
                                                          (if (gx#stx-null?
                                                               _tl3009830348_)
                                                              ((lambda (_L30351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30353_
                                _L30354_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L30354_
                                                             (cons _L30353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L30351_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd3009730345_
                       _hd3009130325_
                       _hd3008830315_)
                      (_g2999530304_ _g2999830308_))))
              (_g2999530304_ _g2999830308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2999530304_
                                                   _g2999830308_))
                                              (_g2999530304_ _g2999830308_))))
                                      (_g2999530304_ _g2999830308_))))
                              (_g2999530304_ _g2999830308_))))
                      (_g2999530304_ _g2999830308_))))
               (_g2999330414_
                (lambda (_g2999830376_)
                  (if (gx#stx-pair? _g2999830376_)
                      (let ((_e3007830379_ (gx#syntax-e _g2999830376_)))
                        (let ((_hd3007930383_ (##car _e3007830379_))
                              (_tl3008030386_ (##cdr _e3007830379_)))
                          (if (gx#stx-pair? _tl3008030386_)
                              (let ((_e3008130389_
                                     (gx#syntax-e _tl3008030386_)))
                                (let ((_hd3008230393_ (##car _e3008130389_))
                                      (_tl3008330396_ (##cdr _e3008130389_)))
                                  (if (gx#stx-null? _tl3008330396_)
                                      ((lambda (_L30399_ _L30401_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L30401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L30399_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd3008230393_
                                       _hd3007930383_)
                                      (_g2999430372_ _g2999830376_))))
                              (_g2999430372_ _g2999830376_))))
                      (_g2999430372_ _g2999830376_))))
               (_g2999230468_
                (lambda (_g2999830418_)
                  (if (gx#stx-pair? _g2999830418_)
                      (let ((_e3006730421_ (gx#syntax-e _g2999830418_)))
                        (let ((_hd3006830425_ (##car _e3006730421_))
                              (_tl3006930428_ (##cdr _e3006730421_)))
                          (if (gx#stx-pair? _tl3006930428_)
                              (let ((_e3007030431_
                                     (gx#syntax-e _tl3006930428_)))
                                (let ((_hd3007130435_ (##car _e3007030431_))
                                      (_tl3007230438_ (##cdr _e3007030431_)))
                                  (if (gx#stx-pair? _tl3007230438_)
                                      (let ((_e3007330441_
                                             (gx#syntax-e _tl3007230438_)))
                                        (let ((_hd3007430445_
                                               (##car _e3007330441_))
                                              (_tl3007530448_
                                               (##cdr _e3007330441_)))
                                          (if (gx#stx-null? _tl3007530448_)
                                              ((lambda (_L30451_ _L30453_)
                                                 (cons _L30453_
                                                       (cons _L30451_ '())))
                                               _hd3007430445_
                                               _hd3007130435_)
                                              (_g2999330414_ _g2999830418_))))
                                      (_g2999330414_ _g2999830418_))))
                              (_g2999330414_ _g2999830418_))))
                      (_g2999330414_ _g2999830418_))))
               (_g2999130548_
                (lambda (_g2999830472_)
                  (if (gx#stx-pair? _g2999830472_)
                      (let ((_e3005030475_ (gx#syntax-e _g2999830472_)))
                        (let ((_hd3005130479_ (##car _e3005030475_))
                              (_tl3005230482_ (##cdr _e3005030475_)))
                          (if (gx#stx-pair? _tl3005230482_)
                              (let ((_e3005330485_
                                     (gx#syntax-e _tl3005230482_)))
                                (let ((_hd3005430489_ (##car _e3005330485_))
                                      (_tl3005530492_ (##cdr _e3005330485_)))
                                  (if (gx#stx-pair? _hd3005430489_)
                                      (let ((_e3005630495_
                                             (gx#syntax-e _hd3005430489_)))
                                        (let ((_hd3005730499_
                                               (##car _e3005630495_))
                                              (_tl3005830502_
                                               (##cdr _e3005630495_)))
                                          (if (gx#identifier? _hd3005730499_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35097_|
                                                   _hd3005730499_)
                                                  (if (gx#stx-pair?
                                                       _tl3005830502_)
                                                      (let ((_e3005930505_
                                                             (gx#syntax-e
                                                              _tl3005830502_)))
                                                        (let ((_hd3006030509_
                                                               (##car _e3005930505_))
                                                              (_tl3006130512_
                                                               (##cdr _e3005930505_)))
                                                          (if (gx#stx-null?
                                                               _tl3006130512_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3005530492_)
                          (let ((_e3006230515_ (gx#syntax-e _tl3005530492_)))
                            (let ((_hd3006330519_ (##car _e3006230515_))
                                  (_tl3006430522_ (##cdr _e3006230515_)))
                              (if (gx#stx-null? _tl3006430522_)
                                  ((lambda (_L30525_ _L30527_ _L30528_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L30528_
                                                       (cons _L30527_
                                                             (cons _L30525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd3006330519_
                                   _hd3006030509_
                                   _hd3005130479_)
                                  (_g2999230468_ _g2999830472_))))
                          (_g2999230468_ _g2999830472_))
                      (_g2999230468_ _g2999830472_))))
              (_g2999230468_ _g2999830472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2999230468_
                                                   _g2999830472_))
                                              (_g2999230468_ _g2999830472_))))
                                      (_g2999230468_ _g2999830472_))))
                              (_g2999230468_ _g2999830472_))))
                      (_g2999230468_ _g2999830472_))))
               (_g2999030658_
                (lambda (_g2999830552_)
                  (if (gx#stx-pair? _g2999830552_)
                      (let ((_e3002630555_ (gx#syntax-e _g2999830552_)))
                        (let ((_hd3002730559_ (##car _e3002630555_))
                              (_tl3002830562_ (##cdr _e3002630555_)))
                          (if (gx#stx-pair? _tl3002830562_)
                              (let ((_e3002930565_
                                     (gx#syntax-e _tl3002830562_)))
                                (let ((_hd3003030569_ (##car _e3002930565_))
                                      (_tl3003130572_ (##cdr _e3002930565_)))
                                  (if (gx#stx-pair? _hd3003030569_)
                                      (let ((_e3003230575_
                                             (gx#syntax-e _hd3003030569_)))
                                        (let ((_hd3003330579_
                                               (##car _e3003230575_))
                                              (_tl3003430582_
                                               (##cdr _e3003230575_)))
                                          (if (gx#identifier? _hd3003330579_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35098_|
                                                   _hd3003330579_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3003430582_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3003430582_)
                        '0)
                  (let ((_g35099_ (gx#syntax-split-splice _tl3003430582_ '0)))
                    (begin
                      (let ((_g35100_ (values-count _g35099_)))
                        (if (not (fx= _g35100_ 2))
                            (error "Context expects 2 values" _g35100_)))
                      (let ((_target3003530585_ (values-ref _g35099_ 0))
                            (_tl3003730588_ (values-ref _g35099_ 1)))
                        (if (gx#stx-null? _tl3003730588_)
                            (letrec ((_loop3003830591_
                                      (lambda (_hd3003630595_ _pred3004230598_)
                                        (if (gx#stx-pair? _hd3003630595_)
                                            (let ((_e3003930601_
                                                   (gx#syntax-e
                                                    _hd3003630595_)))
                                              (let ((_lp-hd3004030605_
                                                     (##car _e3003930601_))
                                                    (_lp-tl3004130608_
                                                     (##cdr _e3003930601_)))
                                                (_loop3003830591_
                                                 _lp-tl3004130608_
                                                 (cons _lp-hd3004030605_
                                                       _pred3004230598_))))
                                            (let ((_pred3004330611_
                                                   (reverse _pred3004230598_)))
                                              (if (gx#stx-pair? _tl3003130572_)
                                                  (let ((_e3004430615_
                                                         (gx#syntax-e
                                                          _tl3003130572_)))
                                                    (let ((_hd3004530619_
                                                           (##car _e3004430615_))
                                                          (_tl3004630622_
                                                           (##cdr _e3004430615_)))
                                                      (if (gx#stx-null?
                                                           _tl3004630622_)
                                                          ((lambda (_L30625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30627_
                            _L30628_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g3064930652_ _g3065030655_)
                                      (cons (cons _L30628_
                                                  (cons _g3064930652_
                                                        (cons _L30625_ '())))
                                            _g3065030655_))
                                    '()
                                    _L30627_))))
                   _hd3004530619_
                   _pred3004330611_
                   _hd3002730559_)
                  (_g2999130548_ _g2999830552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2999130548_
                                                   _g2999830552_)))))))
                              (_loop3003830591_ _target3003530585_ '()))
                            (_g2999130548_ _g2999830552_)))))
                  (_g2999130548_ _g2999830552_))
              (_g2999130548_ _g2999830552_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2999130548_
                                                   _g2999830552_))
                                              (_g2999130548_ _g2999830552_))))
                                      (_g2999130548_ _g2999830552_))))
                              (_g2999130548_ _g2999830552_))))
                      (_g2999130548_ _g2999830552_))))
               (_g2998930768_
                (lambda (_g2999830662_)
                  (if (gx#stx-pair? _g2999830662_)
                      (let ((_e3000230665_ (gx#syntax-e _g2999830662_)))
                        (let ((_hd3000330669_ (##car _e3000230665_))
                              (_tl3000430672_ (##cdr _e3000230665_)))
                          (if (gx#stx-pair? _tl3000430672_)
                              (let ((_e3000530675_
                                     (gx#syntax-e _tl3000430672_)))
                                (let ((_hd3000630679_ (##car _e3000530675_))
                                      (_tl3000730682_ (##cdr _e3000530675_)))
                                  (if (gx#stx-pair? _hd3000630679_)
                                      (let ((_e3000830685_
                                             (gx#syntax-e _hd3000630679_)))
                                        (let ((_hd3000930689_
                                               (##car _e3000830685_))
                                              (_tl3001030692_
                                               (##cdr _e3000830685_)))
                                          (if (gx#identifier? _hd3000930689_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g35101_|
                                                   _hd3000930689_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3001030692_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3001030692_)
                        '0)
                  (let ((_g35102_ (gx#syntax-split-splice _tl3001030692_ '0)))
                    (begin
                      (let ((_g35103_ (values-count _g35102_)))
                        (if (not (fx= _g35103_ 2))
                            (error "Context expects 2 values" _g35103_)))
                      (let ((_target3001130695_ (values-ref _g35102_ 0))
                            (_tl3001330698_ (values-ref _g35102_ 1)))
                        (if (gx#stx-null? _tl3001330698_)
                            (letrec ((_loop3001430701_
                                      (lambda (_hd3001230705_ _pred3001830708_)
                                        (if (gx#stx-pair? _hd3001230705_)
                                            (let ((_e3001530711_
                                                   (gx#syntax-e
                                                    _hd3001230705_)))
                                              (let ((_lp-hd3001630715_
                                                     (##car _e3001530711_))
                                                    (_lp-tl3001730718_
                                                     (##cdr _e3001530711_)))
                                                (_loop3001430701_
                                                 _lp-tl3001730718_
                                                 (cons _lp-hd3001630715_
                                                       _pred3001830708_))))
                                            (let ((_pred3001930721_
                                                   (reverse _pred3001830708_)))
                                              (if (gx#stx-pair? _tl3000730682_)
                                                  (let ((_e3002030725_
                                                         (gx#syntax-e
                                                          _tl3000730682_)))
                                                    (let ((_hd3002130729_
                                                           (##car _e3002030725_))
                                                          (_tl3002230732_
                                                           (##cdr _e3002030725_)))
                                                      (if (gx#stx-null?
                                                           _tl3002230732_)
                                                          ((lambda (_L30735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30737_
                            _L30738_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g3075930762_ _g3076030765_)
                                      (cons (cons _L30738_
                                                  (cons _g3075930762_
                                                        (cons _L30735_ '())))
                                            _g3076030765_))
                                    '()
                                    _L30737_))))
                   _hd3002130729_
                   _pred3001930721_
                   _hd3000330669_)
                  (_g2999030658_ _g2999830662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2999030658_
                                                   _g2999830662_)))))))
                              (_loop3001430701_ _target3001130695_ '()))
                            (_g2999030658_ _g2999830662_)))))
                  (_g2999030658_ _g2999830662_))
              (_g2999030658_ _g2999830662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2999030658_
                                                   _g2999830662_))
                                              (_g2999030658_ _g2999830662_))))
                                      (_g2999030658_ _g2999830662_))))
                              (_g2999030658_ _g2999830662_))))
                      (_g2999030658_ _g2999830662_)))))
          (_g2998930768_ _$stx29986_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx30774_)
        (let* ((_g3077930813_
                (lambda (_g3078030809_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3078030809_)))
               (_g3077830870_
                (lambda (_g3078030817_)
                  (if (gx#stx-pair? _g3078030817_)
                      (let ((_e3079930820_ (gx#syntax-e _g3078030817_)))
                        (let ((_hd3080030824_ (##car _e3079930820_))
                              (_tl3080130827_ (##cdr _e3079930820_)))
                          (if (gx#stx-pair? _tl3080130827_)
                              (let ((_e3080230830_
                                     (gx#syntax-e _tl3080130827_)))
                                (let ((_hd3080330834_ (##car _e3080230830_))
                                      (_tl3080430837_ (##cdr _e3080230830_)))
                                  (if (gx#stx-pair? _tl3080430837_)
                                      (let ((_e3080530840_
                                             (gx#syntax-e _tl3080430837_)))
                                        (let ((_hd3080630844_
                                               (##car _e3080530840_))
                                              (_tl3080730847_
                                               (##cdr _e3080530840_)))
                                          (if (gx#stx-null? _tl3080730847_)
                                              ((lambda (_L30850_
                                                        _L30852_
                                                        _L30853_)
                                                 (cons _L30853_
                                                       (cons _L30852_
                                                             (cons _L30850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise-syntax-error)
                                                         (cons '#f
                                                               (cons '"Bad syntax"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '$stx) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd3080630844_
                                               _hd3080330834_
                                               _hd3080030824_)
                                              (_g3077930813_ _g3078030817_))))
                                      (_g3077930813_ _g3078030817_))))
                              (_g3077930813_ _g3078030817_))))
                      (_g3077930813_ _g3078030817_))))
               (_g3077730938_
                (lambda (_g3078030874_)
                  (if (gx#stx-pair? _g3078030874_)
                      (let ((_e3078430877_ (gx#syntax-e _g3078030874_)))
                        (let ((_hd3078530881_ (##car _e3078430877_))
                              (_tl3078630884_ (##cdr _e3078430877_)))
                          (if (gx#stx-pair? _tl3078630884_)
                              (let ((_e3078730887_
                                     (gx#syntax-e _tl3078630884_)))
                                (let ((_hd3078830891_ (##car _e3078730887_))
                                      (_tl3078930894_ (##cdr _e3078730887_)))
                                  (if (gx#stx-pair? _tl3078930894_)
                                      (let ((_e3079030897_
                                             (gx#syntax-e _tl3078930894_)))
                                        (let ((_hd3079130901_
                                               (##car _e3079030897_))
                                              (_tl3079230904_
                                               (##cdr _e3079030897_)))
                                          (if (gx#stx-pair? _tl3079230904_)
                                              (let ((_e3079330907_
                                                     (gx#syntax-e
                                                      _tl3079230904_)))
                                                (let ((_hd3079430911_
                                                       (##car _e3079330907_))
                                                      (_tl3079530914_
                                                       (##cdr _e3079330907_)))
                                                  (if (gx#stx-null?
                                                       _tl3079530914_)
                                                      ((lambda (_L30917_
                                                                _L30919_
                                                                _L30920_)
                                                         (if (gx#identifier?
                                                              _L30920_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L30920_
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-match-macro)
                                             (cons 'macro:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '$match-e)
                                         (cons _L30919_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L30917_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '$stx)
                                                     '())
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-case)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$stx)
                         (cons '()
                               (cons (cons (cons 'match:
                                                 (gx#datum->syntax '#f 'body))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'core-apply-expander)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$match-e)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'stx-wrap-source)
                                 (cons (cons (gx#datum->syntax '#f 'syntax)
                                             (cons (gx#datum->syntax '#f 'body)
                                                   '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-source)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$stx)
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f '_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'core-apply-expander)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$macro-e)
                           (cons (gx#datum->syntax '#f '$stx) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (_g3077830870_ _g3078030874_)))
               _hd3079430911_
               _hd3079130901_
               _hd3078830891_)
              (_g3077830870_ _g3078030874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3077830870_ _g3078030874_))))
                                      (_g3077830870_ _g3078030874_))))
                              (_g3077830870_ _g3078030874_))))
                      (_g3077830870_ _g3078030874_)))))
          (_g3077730938_ _$stx30774_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx30942_)
        (let* ((_g3094630961_
                (lambda (_g3094730957_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3094730957_)))
               (_g3094531004_
                (lambda (_g3094730965_)
                  (if (gx#stx-pair? _g3094730965_)
                      (let ((_e3095030968_ (gx#syntax-e _g3094730965_)))
                        (let ((_hd3095130972_ (##car _e3095030968_))
                              (_tl3095230975_ (##cdr _e3095030968_)))
                          (if (gx#stx-pair? _tl3095230975_)
                              (let ((_e3095330978_
                                     (gx#syntax-e _tl3095230975_)))
                                (let ((_hd3095430982_ (##car _e3095330978_))
                                      (_tl3095530985_ (##cdr _e3095330978_)))
                                  ((lambda (_L30988_ _L30990_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L30990_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L30988_)
                                                       '()))))
                                   _tl3095530985_
                                   _hd3095430982_)))
                              (_g3094630961_ _g3094730965_))))
                      (_g3094630961_ _g3094730965_)))))
          (_g3094531004_ _$stx30942_))))))
