(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g41713_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
      (make-class-type
       'gerbil.core#runtime-type-info::t
       '()
       '(runtime-identifier)
       'runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
      (make-class-type
       'gerbil.core#runtime-struct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
      (lambda _$args20717_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20717_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
      (make-class-type
       'gerbil.core#runtime-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
      (lambda _$args20713_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20713_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
      (make-class-type
       'gerbil.core#expander-type-info::t
       '()
       '(expander-identifiers)
       'expander-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
      (make-class-type
       'gerbil.core#extended-runtime-type-info
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '(type-exhibitor)
       'extended-runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
      (lambda _$args20709_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20709_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
      (lambda _$args20705_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20705_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f
       '(id super name ctor plist)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-struct-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'struct-exhibitor
       '()
       '#f
       '(fields)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args20701_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20701_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-class-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'class-exhibitor
       '()
       '#f
       '(slots)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args20697_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20697_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20671_ _is?20673_)
        (if (gx#identifier? _stx20671_)
            (let ((_e2067420676_ (gx#syntax-local-value _stx20671_ false)))
              (if _e2067420676_
                  (let ((_e20680_ _e2067420676_))
                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                         _e20680_)
                        (_is?20673_ _e20680_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20687_)
        (let ((_is?20690_ true))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20687_
           _is?20690_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g41699_
        (let ((_g41698_ (length _g41699_)))
          (cond ((##fx= _g41698_ 1)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                        _g41699_))
                ((##fx= _g41698_ 2)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                        _g41699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g41699_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20667_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20667_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20664_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20664_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20658_)
        (if _id20658_
            (let ((_info20661_ (gx#syntax-local-value _id20658_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20661_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20661_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20423_ _stx20425_)
        (let* ((_g2042720447_
                (lambda (_g2042820443_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2042820443_)))
               (_g2042620654_
                (lambda (_g2042820451_)
                  (if (gx#stx-pair? _g2042820451_)
                      (let ((_e2043020454_ (gx#syntax-e _g2042820451_)))
                        (let ((_hd2043120458_ (##car _e2043020454_))
                              (_tl2043220461_ (##cdr _e2043020454_)))
                          (if (gx#stx-pair/null? _tl2043220461_)
                              (let ((_g41700_
                                     (gx#syntax-split-splice
                                      _tl2043220461_
                                      '0)))
                                (begin
                                  (let ((_g41701_
                                         (if (##values? _g41700_)
                                             (##vector-length _g41700_)
                                             1)))
                                    (if (not (##fx= _g41701_ 2))
                                        (error "Context expects 2 values"
                                               _g41701_)))
                                  (let ((_target2043320464_
                                         (##vector-ref _g41700_ 0))
                                        (_tl2043520467_
                                         (##vector-ref _g41700_ 1)))
                                    (if (gx#stx-null? _tl2043520467_)
                                        (letrec ((_loop2043620470_
                                                  (lambda (_hd2043420474_
                                                           _arg2044020477_)
                                                    (if (gx#stx-pair?
                                                         _hd2043420474_)
                                                        (let ((_e2043720480_
                                                               (gx#syntax-e
                                                                _hd2043420474_)))
                                                          (let ((_lp-hd2043820484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2043720480_))
                        (_lp-tl2043920487_ (##cdr _e2043720480_)))
                    (_loop2043620470_
                     _lp-tl2043920487_
                     (cons _lp-hd2043820484_ _arg2044020477_))))
                (let ((_arg2044120490_ (reverse _arg2044020477_)))
                  ((lambda (_L20494_)
                     (let* ((_g2051020541_
                             (lambda (_g2051120537_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2051120537_)))
                            (_g2050920650_
                             (lambda (_g2051120545_)
                               (if (gx#stx-pair? _g2051120545_)
                                   (let ((_e2051820548_
                                          (gx#syntax-e _g2051120545_)))
                                     (let ((_hd2051920552_
                                            (##car _e2051820548_))
                                           (_tl2052020555_
                                            (##cdr _e2051820548_)))
                                       (if (gx#stx-pair? _tl2052020555_)
                                           (let ((_e2052120558_
                                                  (gx#syntax-e
                                                   _tl2052020555_)))
                                             (let ((_hd2052220562_
                                                    (##car _e2052120558_))
                                                   (_tl2052320565_
                                                    (##cdr _e2052120558_)))
                                               (if (gx#stx-pair?
                                                    _tl2052320565_)
                                                   (let ((_e2052420568_
                                                          (gx#syntax-e
                                                           _tl2052320565_)))
                                                     (let ((_hd2052520572_
                                                            (##car _e2052420568_))
                                                           (_tl2052620575_
                                                            (##cdr _e2052420568_)))
                                                       (if (gx#stx-pair?
                                                            _tl2052620575_)
                                                           (let ((_e2052720578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2052620575_)))
                     (let ((_hd2052820582_ (##car _e2052720578_))
                           (_tl2052920585_ (##cdr _e2052720578_)))
                       (if (gx#stx-pair? _tl2052920585_)
                           (let ((_e2053020588_ (gx#syntax-e _tl2052920585_)))
                             (let ((_hd2053120592_ (##car _e2053020588_))
                                   (_tl2053220595_ (##cdr _e2053020588_)))
                               (if (gx#stx-pair? _tl2053220595_)
                                   (let ((_e2053320598_
                                          (gx#syntax-e _tl2053220595_)))
                                     (let ((_hd2053420602_
                                            (##car _e2053320598_))
                                           (_tl2053520605_
                                            (##cdr _e2053320598_)))
                                       (if (gx#stx-null? _tl2053520605_)
                                           ((lambda (_L20608_
                                                     _L20610_
                                                     _L20611_
                                                     _L20612_
                                                     _L20613_
                                                     _L20614_)
                                              (let ()
                                                (cons _L20612_
                                                      (foldr (lambda (_g2064120644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2064220647_)
                       (cons _g2064120644_ _g2064220647_))
                     '()
                     _L20494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2053420602_
                                            _hd2053120592_
                                            _hd2052820582_
                                            _hd2052520572_
                                            _hd2052220562_
                                            _hd2051920552_)
                                           (_g2051020541_ _g2051120545_))))
                                   (_g2051020541_ _g2051120545_))))
                           (_g2051020541_ _g2051120545_))))
                   (_g2051020541_ _g2051120545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2051020541_
                                                    _g2051120545_))))
                                           (_g2051020541_ _g2051120545_))))
                                   (_g2051020541_ _g2051120545_)))))
                       (_g2050920650_
                        (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                         _self20423_))))
                   _arg2044120490_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2043620470_
                                           _target2043320464_
                                           '()))
                                        (_g2042720447_ _g2042820451_)))))
                              (_g2042720447_ _g2042820451_))))
                      (_g2042720447_ _g2042820451_)))))
          (_g2042620654_ _stx20425_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20414_)
        (letrec ((_body-opt?20417_
                  (lambda (_key20420_)
                    (memq (gx#stx-e _key20420_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20414_ _body-opt?20417_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx19242_
               _id19244_
               _super-ref19245_
               _els19246_
               _body19247_
               _struct?19248_)
        (letrec* ((_wrap19250_
                   (lambda (_e-stx20411_)
                     (gx#stx-wrap-source
                      _e-stx20411_
                      (gx#stx-source _stx19242_))))
                  (_make-id19252_
                   (if (uninterned-symbol? (gx#stx-e _id19244_))
                       (lambda _g41702_ (gx#genident _id19244_))
                       (lambda _args20408_
                         (apply gx#stx-identifier _id19244_ _args20408_)))))
          (gx#check-duplicate-identifiers _els19246_ _stx19242_)
          (let* ((_name19254_ (symbol->string (gx#stx-e _id19244_)))
                 (_super19257_
                  (if _struct?19248_
                      (if _super-ref19245_
                          (gx#syntax-local-value _super-ref19245_)
                          '#f)
                      (map gx#syntax-local-value _super-ref19245_)))
                 (_g1926019268_
                  (lambda (_g1926119264_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1926119264_)))
                 (_g1925920402_
                  (lambda (_g1926119272_)
                    ((lambda (_L19275_)
                       (let ()
                         (let* ((_g1929119299_
                                 (lambda (_g1929219295_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1929219295_)))
                                (_g1929020398_
                                 (lambda (_g1929219303_)
                                   ((lambda (_L19306_)
                                      (let ()
                                        (let* ((_g1931919327_
                                                (lambda (_g1932019323_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1932019323_)))
                                               (_g1931820394_
                                                (lambda (_g1932019331_)
                                                  ((lambda (_L19334_)
                                                     (let ()
                                                       (let* ((_g1934719355_
                                                               (lambda (_g1934819351_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1934819351_)))
                      (_g1934620390_
                       (lambda (_g1934819359_)
                         ((lambda (_L19362_)
                            (let ()
                              (let* ((_g1937519383_
                                      (lambda (_g1937619379_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1937619379_)))
                                     (_g1937420386_
                                      (lambda (_g1937619387_)
                                        ((lambda (_L19390_)
                                           (let ()
                                             (let* ((_g1940319411_
                                                     (lambda (_g1940419407_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1940419407_)))
                                                    (_g1940220382_
                                                     (lambda (_g1940419415_)
                                                       ((lambda (_L19418_)
                                                          (let ()
                                                            (let* ((_g1943119448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1943219444_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1943219444_)))
                           (_g1943020378_
                            (lambda (_g1943219452_)
                              (if (gx#stx-pair/null? _g1943219452_)
                                  (let ((_g41703_
                                         (gx#syntax-split-splice
                                          _g1943219452_
                                          '0)))
                                    (begin
                                      (let ((_g41704_
                                             (if (##values? _g41703_)
                                                 (##vector-length _g41703_)
                                                 1)))
                                        (if (not (##fx= _g41704_ 2))
                                            (error "Context expects 2 values"
                                                   _g41704_)))
                                      (let ((_target1943419455_
                                             (##vector-ref _g41703_ 0))
                                            (_tl1943619458_
                                             (##vector-ref _g41703_ 1)))
                                        (if (gx#stx-null? _tl1943619458_)
                                            (letrec ((_loop1943719461_
                                                      (lambda (_hd1943519465_
                                                               _attr1944119468_)
                                                        (if (gx#stx-pair?
                                                             _hd1943519465_)
                                                            (let ((_e1943819471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1943519465_)))
                      (let ((_lp-hd1943919475_ (##car _e1943819471_))
                            (_lp-tl1944019478_ (##cdr _e1943819471_)))
                        (_loop1943719461_
                         _lp-tl1944019478_
                         (cons _lp-hd1943919475_ _attr1944119468_))))
                    (let ((_attr1944219481_ (reverse _attr1944119468_)))
                      ((lambda (_L19485_)
                         (let ()
                           (let* ((_g1950219519_
                                   (lambda (_g1950319515_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1950319515_)))
                                  (_g1950120369_
                                   (lambda (_g1950319523_)
                                     (if (gx#stx-pair/null? _g1950319523_)
                                         (let ((_g41705_
                                                (gx#syntax-split-splice
                                                 _g1950319523_
                                                 '0)))
                                           (begin
                                             (let ((_g41706_
                                                    (if (##values? _g41705_)
                                                        (##vector-length
                                                         _g41705_)
                                                        1)))
                                               (if (not (##fx= _g41706_ 2))
                                                   (error "Context expects 2 values"
                                                          _g41706_)))
                                             (let ((_target1950519526_
                                                    (##vector-ref _g41705_ 0))
                                                   (_tl1950719529_
                                                    (##vector-ref _g41705_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1950719529_)
                                                   (letrec ((_loop1950819532_
                                                             (lambda (_hd1950619536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1951219539_)
                       (if (gx#stx-pair? _hd1950619536_)
                           (let ((_e1950919542_ (gx#syntax-e _hd1950619536_)))
                             (let ((_lp-hd1951019546_ (##car _e1950919542_))
                                   (_lp-tl1951119549_ (##cdr _e1950919542_)))
                               (_loop1950819532_
                                _lp-tl1951119549_
                                (cons _lp-hd1951019546_ _getf1951219539_))))
                           (let ((_getf1951319552_ (reverse _getf1951219539_)))
                             ((lambda (_L19556_)
                                (let ()
                                  (let* ((_g1957319590_
                                          (lambda (_g1957419586_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1957419586_)))
                                         (_g1957220360_
                                          (lambda (_g1957419594_)
                                            (if (gx#stx-pair/null?
                                                 _g1957419594_)
                                                (let ((_g41707_
                                                       (gx#syntax-split-splice
                                                        _g1957419594_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41708_
                                                           (if (##values?
                                                                _g41707_)
                                                               (##vector-length
                                                                _g41707_)
                                                               1)))
                                                      (if (not (##fx= _g41708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1957619597_
                                                           (##vector-ref
                                                            _g41707_
                                                            0))
                                                          (_tl1957819600_
                                                           (##vector-ref
                                                            _g41707_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1957819600_)
                                                          (letrec ((_loop1957919603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1957719607_ _setf1958319610_)
                              (if (gx#stx-pair? _hd1957719607_)
                                  (let ((_e1958019613_
                                         (gx#syntax-e _hd1957719607_)))
                                    (let ((_lp-hd1958119617_
                                           (##car _e1958019613_))
                                          (_lp-tl1958219620_
                                           (##cdr _e1958019613_)))
                                      (_loop1957919603_
                                       _lp-tl1958219620_
                                       (cons _lp-hd1958119617_
                                             _setf1958319610_))))
                                  (let ((_setf1958419623_
                                         (reverse _setf1958319610_)))
                                    ((lambda (_L19627_)
                                       (let ()
                                         (let* ((_type-attr19672_
                                                 (if (gx#stx-null? _els19246_)
                                                     '()
                                                     (if _struct?19248_
                                                         (cons 'fields:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L19627_
                                _L19556_
                                _L19485_)
                               (foldr (lambda (_g1964319648_
                                               _g1964419651_
                                               _g1964519653_
                                               _g1964619655_)
                                        (cons (cons _g1964519653_
                                                    (cons _g1964419651_
                                                          (cons _g1964319648_
                                                                '())))
                                              _g1964619655_))
                                      '()
                                      _L19627_
                                      _L19556_
                                      _L19485_))
                             '()))
                 (cons 'slots:
                       (cons (begin
                               (gx#syntax-check-splice-targets
                                _L19627_
                                _L19556_
                                _L19485_)
                               (foldr (lambda (_g1965719662_
                                               _g1965819665_
                                               _g1965919667_
                                               _g1966019669_)
                                        (cons (cons _g1965919667_
                                                    (cons _g1965819665_
                                                          (cons _g1965719662_
                                                                '())))
                                              _g1966019669_))
                                      '()
                                      _L19627_
                                      _L19556_
                                      _L19485_))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-name19679_
                                                 (cons 'name:
                                                       (cons (let ((_$e19675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'name: _body19247_)))
                       (if _$e19675_ _$e19675_ _id19244_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-id19694_
                                                 (let ((_$e19690_
                                                        (let ((_e1968119683_
                                                               (gx#stx-getq
                                                                'id:
                                                                _body19247_)))
                                                          (if _e1968119683_
                                                              (let ((_e19687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1968119683_))
                        (cons 'id: (cons _e19687_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19690_
                                                       _$e19690_
                                                       '())))
                                                (_type-ctor19709_
                                                 (let ((_$e19705_
                                                        (let ((_e1969619698_
                                                               (gx#stx-getq
                                                                'constructor:
                                                                _body19247_)))
                                                          (if _e1969619698_
                                                              (let ((_e19702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1969619698_))
                        (cons 'constructor: (cons _e19702_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19705_
                                                       _$e19705_
                                                       '())))
                                                (_plist19753_
                                                 (let* ((_plist19716_
                                                         (let ((_$e19712_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'plist:
                         _body19247_)))
                   (if _$e19712_ _$e19712_ '())))
                (_plist19719_
                 (if (gx#stx-e (gx#stx-getq 'transparent: _body19247_))
                     (cons (cons 'transparent: '#t) _plist19716_)
                     _plist19716_))
                (_plist19722_
                 (if (gx#stx-e (gx#stx-getq 'final: _body19247_))
                     (cons (cons 'final: '#t) _plist19719_)
                     _plist19719_))
                (_plist19735_
                 (let ((_$e19725_
                        (gx#stx-e (gx#stx-getq 'print: _body19247_))))
                   (if _$e19725_
                       ((lambda (_print19729_)
                          (let ((_print19732_
                                 (if (eq? _print19729_ '#t)
                                     _els19246_
                                     _print19729_)))
                            (cons (cons 'print: _print19732_) _plist19722_)))
                        _$e19725_)
                       _plist19722_)))
                (_plist19748_
                 (let ((_$e19738_
                        (gx#stx-e (gx#stx-getq 'equal: _body19247_))))
                   (if _$e19738_
                       ((lambda (_equal19742_)
                          (let ((_equal19745_
                                 (if (eq? _equal19742_ '#t)
                                     _els19246_
                                     _equal19742_)))
                            (cons (cons 'equal: _equal19745_) _plist19735_)))
                        _$e19738_)
                       _plist19735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _plist19748_))
                                                (_type-plist19793_
                                                 (if (null? _plist19753_)
                                                     _plist19753_
                                                     (let* ((_g1975619764_
                                                             (lambda (_g1975719760_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1975719760_)))
                                                            (_g1975519789_
                                                             (lambda (_g1975719768_)
                                                               ((lambda (_L19771_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons 'plist:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L19771_ '()))
                                        '()))))
                        _g1975719768_))))
               (_g1975519789_ _plist19753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-unchecked19808_
                                                 (let ((_$e19804_
                                                        (let ((_e1979519797_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body19247_)))
                                                          (if _e1979519797_
                                                              (let ((_e19801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1979519797_))
                        (cons 'unchecked: (cons _e19801_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19804_
                                                       _$e19804_
                                                       '())))
                                                (_g1981119828_
                                                 (lambda (_g1981219824_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1981219824_)))
                                                (_g1981020356_
                                                 (lambda (_g1981219832_)
                                                   (if (gx#stx-pair/null?
                                                        _g1981219832_)
                                                       (let ((_g41709_
                                                              (gx#syntax-split-splice
                                                               _g1981219832_
                                                               '0)))
                                                         (begin
                                                           (let ((_g41710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g41709_)
                              (##vector-length _g41709_)
                              1)))
                     (if (not (##fx= _g41710_ 2))
                         (error "Context expects 2 values" _g41710_)))
                   (let ((_target1981419835_ (##vector-ref _g41709_ 0))
                         (_tl1981619838_ (##vector-ref _g41709_ 1)))
                     (if (gx#stx-null? _tl1981619838_)
                         (letrec ((_loop1981719841_
                                   (lambda (_hd1981519845_
                                            _type-body1982119848_)
                                     (if (gx#stx-pair? _hd1981519845_)
                                         (let ((_e1981819851_
                                                (gx#syntax-e _hd1981519845_)))
                                           (let ((_lp-hd1981919855_
                                                  (##car _e1981819851_))
                                                 (_lp-tl1982019858_
                                                  (##cdr _e1981819851_)))
                                             (_loop1981719841_
                                              _lp-tl1982019858_
                                              (cons _lp-hd1981919855_
                                                    _type-body1982119848_))))
                                         (let ((_type-body1982219861_
                                                (reverse _type-body1982119848_)))
                                           ((lambda (_L19865_)
                                              (let ()
                                                (let* ((_g1988219890_
                                                        (lambda (_g1988319886_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1988319886_)))
                                                       (_g1988120344_
                                                        (lambda (_g1988319894_)
                                                          ((lambda (_L19897_)
                                                             (let ()
                                                               (let* ((_g1991019918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1991119914_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1991119914_)))
                              (_g1990920340_
                               (lambda (_g1991119922_)
                                 ((lambda (_L19925_)
                                    (let ()
                                      (let* ((_g1993819946_
                                              (lambda (_g1993919942_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1993919942_)))
                                             (_g1993720254_
                                              (lambda (_g1993919950_)
                                                ((lambda (_L19953_)
                                                   (let ()
                                                     (let* ((_g1996619974_
                                                             (lambda (_g1996719970_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1996719970_)))
                                                            (_g1996520250_
                                                             (lambda (_g1996719978_)
                                                               ((lambda (_L19981_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g1999420002_
                                    (lambda (_g1999519998_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g1999519998_)))
                                   (_g1999320246_
                                    (lambda (_g1999520006_)
                                      ((lambda (_L20009_)
                                         (let ()
                                           (let* ((_g2002220030_
                                                   (lambda (_g2002320026_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2002320026_)))
                                                  (_g2002120204_
                                                   (lambda (_g2002320034_)
                                                     ((lambda (_L20037_)
                                                        (let ()
                                                          (let* ((_g2005020058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2005120054_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2005120054_)))
                         (_g2004920200_
                          (lambda (_g2005120062_)
                            ((lambda (_L20065_)
                               (let ()
                                 (let* ((_g2007820086_
                                         (lambda (_g2007920082_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2007920082_)))
                                        (_g2007720196_
                                         (lambda (_g2007920090_)
                                           ((lambda (_L20093_)
                                              (let ()
                                                (let* ((_g2010620114_
                                                        (lambda (_g2010720110_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2010720110_)))
                                                       (_g2010520192_
                                                        (lambda (_g2010720118_)
                                                          ((lambda (_L20121_)
                                                             (let ()
                                                               (let* ((_g2013420142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2013520138_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2013520138_)))
                              (_g2013320164_
                               (lambda (_g2013520146_)
                                 ((lambda (_L20149_)
                                    (let ()
                                      (let ()
                                        (_wrap19250_
                                         (cons (gx#datum->syntax '#f 'begin)
                                               (cons _L19897_
                                                     (cons _L20149_ '())))))))
                                  _g2013520146_))))
                         (_g2013320164_
                          (_wrap19250_
                           (cons (gx#datum->syntax '#f 'defsyntax)
                                 (cons _L19306_
                                       (cons (cons _L19925_
                                                   (cons 'runtime-identifier:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _L19334_ '()))
                       (cons 'expander-identifiers:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons _L19953_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax)
                                                           (cons _L19334_ '()))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L19362_ '()))
                   (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                               (cons _L19390_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (foldr (lambda (_g2016720174_
                                                     _g2016820177_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _g2016720174_
                                                                '()))
                                                    _g2016820177_))
                                            '()
                                            _L19556_))
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (foldr (lambda (_g2016920180_
                                                           _g2017020183_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _g2016920180_ '()))
                  _g2017020183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L19627_))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons 'type-exhibitor:
                                         (cons (cons _L19981_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L20009_ '()))
                   (cons _L20037_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L20065_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L20093_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L20121_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons (foldr (lambda (_g2017120186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2017220189_)
                              (cons _g2017120186_ _g2017220189_))
                            '()
                            _L19485_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))))
                   _g2010720118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2010520192_
                                                   _plist19753_))))
                                            _g2007920090_))))
                                   (_g2007720196_
                                    (if (not (null? _type-ctor19709_))
                                        (cadr _type-ctor19709_)
                                        '#f)))))
                             _g2005120062_))))
                    (_g2004920200_ (cadr _type-name19679_)))))
              _g2002320034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2002120204_
                                              (let ((_quote-e20243_
                                                     (lambda (_x-ref20208_)
                                                       (if _x-ref20208_
                                                           (let* ((_g2021120219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2021220215_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2021220215_)))
                          (_g2021020239_
                           (lambda (_g2021220223_)
                             ((lambda (_L20226_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'quote-syntax)
                                        (cons _L20226_ '()))))
                              _g2021220223_))))
                     (_g2021020239_ _x-ref20208_))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _struct?19248_
                                                    (_quote-e20243_
                                                     _super-ref19245_)
                                                    (cons 'list
                                                          (map _quote-e20243_
                                                               _super-ref19245_))))))))
                                       _g1999520006_))))
                              (_g1999320246_
                               (if (not (null? _type-id19694_))
                                   (cadr _type-id19694_)
                                   '#f)))))
                        _g1996719978_))))
               (_g1996520250_
                (if _struct?19248_
                    (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                    (gx#datum->syntax '#f 'make-runtime-class-exhibitor))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g1993919950_))))
                                        (_g1993720254_
                                         (if _struct?19248_
                                             (if _super19257_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _L19418_ '()))
                                                 '#f)
                                             (let* ((_g2025820275_
                                                     (lambda (_g2025920271_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2025920271_)))
                                                    (_g2025720336_
                                                     (lambda (_g2025920279_)
                                                       (if (gx#stx-pair/null?
                                                            _g2025920279_)
                                                           (let ((_g41711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g2025920279_ '0)))
                     (begin
                       (let ((_g41712_
                              (if (##values? _g41711_)
                                  (##vector-length _g41711_)
                                  1)))
                         (if (not (##fx= _g41712_ 2))
                             (error "Context expects 2 values" _g41712_)))
                       (let ((_target2026120282_ (##vector-ref _g41711_ 0))
                             (_tl2026320285_ (##vector-ref _g41711_ 1)))
                         (if (gx#stx-null? _tl2026320285_)
                             (letrec ((_loop2026420288_
                                       (lambda (_hd2026220292_
                                                _super-id2026820295_)
                                         (if (gx#stx-pair? _hd2026220292_)
                                             (let ((_e2026520298_
                                                    (gx#syntax-e
                                                     _hd2026220292_)))
                                               (let ((_lp-hd2026620302_
                                                      (##car _e2026520298_))
                                                     (_lp-tl2026720305_
                                                      (##cdr _e2026520298_)))
                                                 (_loop2026420288_
                                                  _lp-tl2026720305_
                                                  (cons _lp-hd2026620302_
                                                        _super-id2026820295_))))
                                             (let ((_super-id2026920308_
                                                    (reverse _super-id2026820295_)))
                                               ((lambda (_L20312_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (foldr (lambda (_g2032720330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2032820333_)
                           (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                       (cons _g2032720330_ '()))
                                 _g2032820333_))
                         '()
                         _L20312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _super-id2026920308_))))))
                               (_loop2026420288_ _target2026120282_ '()))
                             (_g2025820275_ _g2025920279_)))))
                   (_g2025820275_ _g2025920279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2025720336_ _L19418_)))))))
                                  _g1991119922_))))
                         (_g1990920340_
                          (if _struct?19248_
                              (gx#datum->syntax '#f 'make-extended-struct-info)
                              (gx#datum->syntax
                               '#f
                               'make-extended-class-info))))))
                   _g1988319894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1988120344_
                                                   (_wrap19250_
                                                    (cons _L19275_
                                                          (cons _L19334_
                                                                (cons _L19418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L19362_
                                    (cons _L19390_
                                          (foldr (lambda (_g2034720350_
                                                          _g2034820353_)
                                                   (cons _g2034720350_
                                                         _g2034820353_))
                                                 '()
                                                 _L19865_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _type-body1982219861_))))))
                           (_loop1981719841_ _target1981419835_ '()))
                         (_g1981119828_ _g1981219832_)))))
               (_g1981119828_ _g1981219832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1981020356_
                                            (foldr cons
                                                   (foldr cons
                                                          (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr cons
                                (foldr cons
                                       _type-unchecked19808_
                                       _type-plist19793_)
                                _type-ctor19709_)
                         _type-name19679_)
                  _type-id19694_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _type-attr19672_)))))
                                     _setf1958419623_))))))
                    (_loop1957919603_ _target1957619597_ '()))
                  (_g1957319590_ _g1957419594_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1957319590_
                                                 _g1957419594_)))))
                                    (_g1957220360_
                                     (gx#stx-map
                                      (lambda (_g2036320365_)
                                        (_make-id19252_
                                         _name19254_
                                         '"-"
                                         _g2036320365_
                                         '"-set!"))
                                      _els19246_)))))
                              _getf1951319552_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1950819532_
                                                      _target1950519526_
                                                      '()))
                                                   (_g1950219519_
                                                    _g1950319523_)))))
                                         (_g1950219519_ _g1950319523_)))))
                             (_g1950120369_
                              (gx#stx-map
                               (lambda (_g2037220374_)
                                 (_make-id19252_
                                  _name19254_
                                  '"-"
                                  _g2037220374_))
                               _els19246_)))))
                       _attr1944219481_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1943719461_
                                               _target1943419455_
                                               '()))
                                            (_g1943119448_ _g1943219452_)))))
                                  (_g1943119448_ _g1943219452_)))))
                      (_g1943020378_ _els19246_))))
                _g1940419415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1940220382_
                                                (if _struct?19248_
                                                    (if _super19257_
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super19257_)
                                                        '#f)
                                                    (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                         _super19257_))))))
                                         _g1937619387_))))
                                (_g1937420386_
                                 (_make-id19252_ _name19254_ '"?")))))
                          _g1934819359_))))
                 (_g1934620390_ (_make-id19252_ '"make-" _name19254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1932019331_))))
                                          (_g1931820394_
                                           (_make-id19252_
                                            _name19254_
                                            '"::t")))))
                                    _g1929219303_))))
                           (_g1929020398_ _id19244_))))
                     _g1926119272_))))
            (_g1925920402_
             (if _struct?19248_
                 (gx#datum->syntax '#f 'defstruct-type)
                 (gx#datum->syntax '#f 'defclass-type)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20730_)
        (letrec ((_generate20733_
                  (lambda (_hd20817_ _fields20819_ _body20820_)
                    (let* ((___stx3864038641_ _hd20817_)
                           (_g2082320838_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3864038641_))))
                      (let ((___kont3864338644_
                             (lambda (_L20876_ _L20878_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20730_
                                _L20878_
                                _L20876_
                                _fields20819_
                                _body20820_
                                '#t)))
                            (___kont3864538646_
                             (lambda ()
                               (if (gx#identifier? _hd20817_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20730_
                                    _hd20817_
                                    '#f
                                    _fields20819_
                                    _body20820_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20730_
                                    _hd20817_)))))
                        (let ((___match3866138662_
                               (lambda (_e2082720856_
                                        _hd2082820860_
                                        _tl2082920863_
                                        _e2083020866_
                                        _hd2083120870_
                                        _tl2083220873_)
                                 (let ((_L20876_ _hd2083120870_)
                                       (_L20878_ _hd2082820860_))
                                   (if (and (gx#identifier? _L20878_)
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                             _L20876_))
                                       (___kont3864338644_ _L20876_ _L20878_)
                                       (___kont3864538646_))))))
                          (if (gx#stx-pair? ___stx3864038641_)
                              (let ((_e2082720856_
                                     (gx#syntax-e ___stx3864038641_)))
                                (let ((_tl2082920863_ (##cdr _e2082720856_))
                                      (_hd2082820860_ (##car _e2082720856_)))
                                  (if (gx#stx-pair? _tl2082920863_)
                                      (let ((_e2083020866_
                                             (gx#syntax-e _tl2082920863_)))
                                        (let ((_tl2083220873_
                                               (##cdr _e2083020866_))
                                              (_hd2083120870_
                                               (##car _e2083020866_)))
                                          (if (gx#stx-null? _tl2083220873_)
                                              (___match3866138662_
                                               _e2082720856_
                                               _hd2082820860_
                                               _tl2082920863_
                                               _e2083020866_
                                               _hd2083120870_
                                               _tl2083220873_)
                                              (___kont3864538646_))))
                                      (___kont3864538646_))))
                              (___kont3864538646_))))))))
          (let* ((_g2073620755_
                  (lambda (_g2073720751_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2073720751_)))
                 (_g2073520813_
                  (lambda (_g2073720759_)
                    (if (gx#stx-pair? _g2073720759_)
                        (let ((_e2074120762_ (gx#syntax-e _g2073720759_)))
                          (let ((_hd2074220766_ (##car _e2074120762_))
                                (_tl2074320769_ (##cdr _e2074120762_)))
                            (if (gx#stx-pair? _tl2074320769_)
                                (let ((_e2074420772_
                                       (gx#syntax-e _tl2074320769_)))
                                  (let ((_hd2074520776_ (##car _e2074420772_))
                                        (_tl2074620779_ (##cdr _e2074420772_)))
                                    (if (gx#stx-pair? _tl2074620779_)
                                        (let ((_e2074720782_
                                               (gx#syntax-e _tl2074620779_)))
                                          (let ((_hd2074820786_
                                                 (##car _e2074720782_))
                                                (_tl2074920789_
                                                 (##cdr _e2074720782_)))
                                            ((lambda (_L20792_
                                                      _L20794_
                                                      _L20795_)
                                               (if (and (gx#identifier-list?
                                                         _L20794_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L20792_))
                                                   (_generate20733_
                                                    _L20795_
                                                    _L20794_
                                                    _L20792_)
                                                   (_g2073620755_
                                                    _g2073720759_)))
                                             _tl2074920789_
                                             _hd2074820786_
                                             _hd2074520776_)))
                                        (_g2073620755_ _g2073720759_))))
                                (_g2073620755_ _g2073720759_))))
                        (_g2073620755_ _g2073720759_)))))
            (_g2073520813_ _stx20730_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20897_)
        (letrec ((_generate20900_
                  (lambda (_hd20984_ _slots20986_ _body20987_)
                    (let* ((___stx3866438665_ _hd20984_)
                           (_g2099021002_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3866438665_))))
                      (let ((___kont3866738668_
                             (lambda (_L21030_ _L21032_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20897_
                                _L21032_
                                (gx#syntax->list _L21030_)
                                _slots20986_
                                _body20987_
                                '#f)))
                            (___kont3866938670_
                             (lambda ()
                               (if (gx#identifier? _hd20984_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20897_
                                    _hd20984_
                                    '()
                                    _slots20986_
                                    _body20987_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20897_
                                    _hd20984_)))))
                        (let ((___match3867738678_
                               (lambda (_e2099421020_
                                        _hd2099521024_
                                        _tl2099621027_)
                                 (let ((_L21030_ _tl2099621027_)
                                       (_L21032_ _hd2099521024_))
                                   (if (and (gx#stx-list? _L21030_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L21030_))
                                       (___kont3866738668_ _L21030_ _L21032_)
                                       (___kont3866938670_))))))
                          (if (gx#stx-pair? ___stx3866438665_)
                              (let ((_e2099421020_
                                     (gx#syntax-e ___stx3866438665_)))
                                (let ((_tl2099621027_ (##cdr _e2099421020_))
                                      (_hd2099521024_ (##car _e2099421020_)))
                                  (___match3867738678_
                                   _e2099421020_
                                   _hd2099521024_
                                   _tl2099621027_)))
                              (___kont3866938670_))))))))
          (let* ((_g2090320922_
                  (lambda (_g2090420918_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2090420918_)))
                 (_g2090220980_
                  (lambda (_g2090420926_)
                    (if (gx#stx-pair? _g2090420926_)
                        (let ((_e2090820929_ (gx#syntax-e _g2090420926_)))
                          (let ((_hd2090920933_ (##car _e2090820929_))
                                (_tl2091020936_ (##cdr _e2090820929_)))
                            (if (gx#stx-pair? _tl2091020936_)
                                (let ((_e2091120939_
                                       (gx#syntax-e _tl2091020936_)))
                                  (let ((_hd2091220943_ (##car _e2091120939_))
                                        (_tl2091320946_ (##cdr _e2091120939_)))
                                    (if (gx#stx-pair? _tl2091320946_)
                                        (let ((_e2091420949_
                                               (gx#syntax-e _tl2091320946_)))
                                          (let ((_hd2091520953_
                                                 (##car _e2091420949_))
                                                (_tl2091620956_
                                                 (##cdr _e2091420949_)))
                                            ((lambda (_L20959_
                                                      _L20961_
                                                      _L20962_)
                                               (if (and (gx#identifier-list?
                                                         _L20961_)
                                                        (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                         _L20959_))
                                                   (_generate20900_
                                                    _L20962_
                                                    _L20961_
                                                    _L20959_)
                                                   (_g2090320922_
                                                    _g2090420926_)))
                                             _tl2091620956_
                                             _hd2091520953_
                                             _hd2091220943_)))
                                        (_g2090320922_ _g2090420926_))))
                                (_g2090320922_ _g2090420926_))))
                        (_g2090320922_ _g2090420926_)))))
            (_g2090220980_ _stx20897_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx21049_)
        (letrec ((_wrap21052_
                  (lambda (_e-stx21389_)
                    (gx#stx-wrap-source
                     _e-stx21389_
                     (gx#stx-source _stx21049_))))
                 (_method-opt?21054_
                  (lambda (_x21386_) (memq (gx#stx-e _x21386_) '(rebind:)))))
          (let* ((_g2105621085_
                  (lambda (_g2105721081_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2105721081_)))
                 (_g2105521382_
                  (lambda (_g2105721089_)
                    (if (gx#stx-pair? _g2105721089_)
                        (let ((_e2106221092_ (gx#syntax-e _g2105721089_)))
                          (let ((_hd2106321096_ (##car _e2106221092_))
                                (_tl2106421099_ (##cdr _e2106221092_)))
                            (if (gx#stx-pair? _tl2106421099_)
                                (let ((_e2106521102_
                                       (gx#syntax-e _tl2106421099_)))
                                  (let ((_hd2106621106_ (##car _e2106521102_))
                                        (_tl2106721109_ (##cdr _e2106521102_)))
                                    (if (gx#stx-pair? _hd2106621106_)
                                        (let ((_e2106821112_
                                               (gx#syntax-e _hd2106621106_)))
                                          (let ((_hd2106921116_
                                                 (##car _e2106821112_))
                                                (_tl2107021119_
                                                 (##cdr _e2106821112_)))
                                            (if (gx#identifier? _hd2106921116_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g41713_|
                                                     _hd2106921116_)
                                                    (if (gx#stx-pair?
                                                         _tl2107021119_)
                                                        (let ((_e2107121122_
                                                               (gx#syntax-e
                                                                _tl2107021119_)))
                                                          (let ((_hd2107221126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2107121122_))
                        (_tl2107321129_ (##cdr _e2107121122_)))
                    (if (gx#stx-pair? _tl2107321129_)
                        (let ((_e2107421132_ (gx#syntax-e _tl2107321129_)))
                          (let ((_hd2107521136_ (##car _e2107421132_))
                                (_tl2107621139_ (##cdr _e2107421132_)))
                            (if (gx#stx-null? _tl2107621139_)
                                (if (gx#stx-pair? _tl2106721109_)
                                    (let ((_e2107721142_
                                           (gx#syntax-e _tl2106721109_)))
                                      (let ((_hd2107821146_
                                             (##car _e2107721142_))
                                            (_tl2107921149_
                                             (##cdr _e2107721142_)))
                                        ((lambda (_L21152_
                                                  _L21154_
                                                  _L21155_
                                                  _L21156_)
                                           (if (and (gx#identifier? _L21156_)
                                                    (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                     _L21155_)
                                                    (gx#stx-plist?
                                                     _L21152_
                                                     _method-opt?21054_))
                                               (let* ((_klass21181_
                                                       (gx#syntax-local-value
                                                        _L21155_))
                                                      (_rebind?21184_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L21152_))
                                                           '#t
                                                           '#f))
                                                      (_g2118721195_
                                                       (lambda (_g2118821191_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2118821191_)))
                                                      (_g2118621378_
                                                       (lambda (_g2118821199_)
                                                         ((lambda (_L21202_)
                                                            (let ()
                                                              (let* ((_g2121621224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2121721220_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2121721220_)))
                             (_g2121521374_
                              (lambda (_g2121721228_)
                                ((lambda (_L21231_)
                                   (let ()
                                     (let* ((_g2124421252_
                                             (lambda (_g2124521248_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2124521248_)))
                                            (_g2124321370_
                                             (lambda (_g2124521256_)
                                               ((lambda (_L21259_)
                                                  (let ()
                                                    (let* ((_g2127221280_
                                                            (lambda (_g2127321276_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2127321276_)))
                                                           (_g2127121366_
                                                            (lambda (_g2127321284_)
                                                              ((lambda (_L21287_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2130021308_
                                   (lambda (_g2130121304_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2130121304_)))
                                  (_g2129921362_
                                   (lambda (_g2130121312_)
                                     ((lambda (_L21315_)
                                        (let ()
                                          (let* ((_g2132821336_
                                                  (lambda (_g2132921332_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2132921332_)))
                                                 (_g2132721358_
                                                  (lambda (_g2132921340_)
                                                    ((lambda (_L21343_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21052_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L21287_ (cons _L21343_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2132921340_))))
                                            (_g2132721358_
                                             (_wrap21052_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L21202_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L21156_ '()))
                        (cons _L21231_ (cons _L21315_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2130121312_))))
                             (_g2129921362_ _rebind?21184_))))
                       _g2127321284_))))
              (_g2127121366_
               (_wrap21052_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L21231_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L21259_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons '()
                                    (cons (cons (cons (gx#datum->syntax '#f '_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'obj)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'call-next-method)
                                                            (cons _L21202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L21156_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L21154_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2124521256_))))
                                       (_g2124321370_
                                        (gx#stx-identifier
                                         _L21156_
                                         '@next-method)))))
                                 _g2121721228_))))
                        (_g2121521374_
                         (gx#stx-identifier
                          _L21156_
                          _L21155_
                          '"::"
                          _L21156_)))))
                  _g2118821199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2118621378_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass21181_)))
                                               (if (not (gx#identifier?
                                                         _L21156_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx21049_
                                                    _L21156_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                             _L21155_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx21049_
                                                        _L21155_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx21049_)))))
                                         _tl2107921149_
                                         _hd2107821146_
                                         _hd2107521136_
                                         _hd2107221126_)))
                                    (_g2105621085_ _g2105721089_))
                                (_g2105621085_ _g2105721089_))))
                        (_g2105621085_ _g2105721089_))))
                (_g2105621085_ _g2105721089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2105621085_
                                                     _g2105721089_))
                                                (_g2105621085_
                                                 _g2105721089_))))
                                        (_g2105621085_ _g2105721089_))))
                                (_g2105621085_ _g2105721089_))))
                        (_g2105621085_ _g2105721089_)))))
            (_g2105521382_ _stx21049_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx21392_)
        (let* ((___stx3868038681_ _$stx21392_)
               (_g2139721446_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3868038681_))))
          (let ((___kont3868338684_
                 (lambda (_L21612_ _L21614_ _L21615_)
                   (cons (gx#datum->syntax '#f 'apply)
                         (cons (gx#datum->syntax '#f 'call-method)
                               (cons _L21614_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L21615_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (foldr (lambda (_g2164221645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2164321648_)
                        (cons _g2164221645_ _g2164321648_))
                      '()
                      _L21612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont3868738688_
                 (lambda (_L21513_ _L21515_ _L21516_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _L21515_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21516_ '()))
                                     (foldr (lambda (_g2153621539_
                                                     _g2153721542_)
                                              (cons _g2153621539_
                                                    _g2153721542_))
                                            '()
                                            _L21513_)))))))
            (let* ((___match3874338744_
                    (lambda (_e2142321453_
                             _hd2142421457_
                             _tl2142521460_
                             _e2142621463_
                             _hd2142721467_
                             _tl2142821470_
                             _e2142921473_
                             _hd2143021477_
                             _tl2143121480_
                             ___splice3868938690_
                             _target2143221483_
                             _tl2143421486_)
                      (letrec ((_loop2143521489_
                                (lambda (_hd2143321493_ _arg2143921496_)
                                  (if (gx#stx-pair? _hd2143321493_)
                                      (let ((_e2143621499_
                                             (gx#syntax-e _hd2143321493_)))
                                        (let ((_lp-tl2143821506_
                                               (##cdr _e2143621499_))
                                              (_lp-hd2143721503_
                                               (##car _e2143621499_)))
                                          (_loop2143521489_
                                           _lp-tl2143821506_
                                           (cons _lp-hd2143721503_
                                                 _arg2143921496_))))
                                      (let ((_arg2144021509_
                                             (reverse _arg2143921496_)))
                                        (let ((_L21513_ _arg2144021509_)
                                              (_L21515_ _hd2143021477_)
                                              (_L21516_ _hd2142721467_))
                                          (if (gx#identifier? _L21516_)
                                              (___kont3868738688_
                                               _L21513_
                                               _L21515_
                                               _L21516_)
                                              (_g2139721446_))))))))
                        (_loop2143521489_ _target2143221483_ '()))))
                   (___match3871738718_
                    (lambda (_e2140221552_
                             _hd2140321556_
                             _tl2140421559_
                             _e2140521562_
                             _hd2140621566_
                             _tl2140721569_
                             _e2140821572_
                             _hd2140921576_
                             _tl2141021579_
                             ___splice3868538686_
                             _target2141121582_
                             _tl2141321585_)
                      (letrec ((_loop2141421588_
                                (lambda (_hd2141221592_ _arg2141821595_)
                                  (if (gx#stx-pair? _hd2141221592_)
                                      (let ((_e2141521598_
                                             (gx#syntax-e _hd2141221592_)))
                                        (let ((_lp-tl2141721605_
                                               (##cdr _e2141521598_))
                                              (_lp-hd2141621602_
                                               (##car _e2141521598_)))
                                          (_loop2141421588_
                                           _lp-tl2141721605_
                                           (cons _lp-hd2141621602_
                                                 _arg2141821595_))))
                                      (let ((_arg2141921608_
                                             (reverse _arg2141821595_)))
                                        (let ((_L21612_ _arg2141921608_)
                                              (_L21614_ _hd2140921576_)
                                              (_L21615_ _hd2140621566_))
                                          (if (and (gx#identifier? _L21615_)
                                                   (gx#stx-ormap
                                                    gx#ellipsis?
                                                    (foldr (lambda (_g2163421637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2163521640_)
                     (cons _g2163421637_ _g2163521640_))
                   '()
                   _L21612_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3868338684_
                                               _L21612_
                                               _L21614_
                                               _L21615_)
                                              (___match3874338744_
                                               _e2140221552_
                                               _hd2140321556_
                                               _tl2140421559_
                                               _e2140521562_
                                               _hd2140621566_
                                               _tl2140721569_
                                               _e2140821572_
                                               _hd2140921576_
                                               _tl2141021579_
                                               ___splice3868538686_
                                               _target2141121582_
                                               _tl2141321585_))))))))
                        (_loop2141421588_ _target2141121582_ '())))))
              (if (gx#stx-pair? ___stx3868038681_)
                  (let ((_e2140221552_ (gx#syntax-e ___stx3868038681_)))
                    (let ((_tl2140421559_ (##cdr _e2140221552_))
                          (_hd2140321556_ (##car _e2140221552_)))
                      (if (gx#stx-pair? _tl2140421559_)
                          (let ((_e2140521562_ (gx#syntax-e _tl2140421559_)))
                            (let ((_tl2140721569_ (##cdr _e2140521562_))
                                  (_hd2140621566_ (##car _e2140521562_)))
                              (if (gx#stx-pair? _tl2140721569_)
                                  (let ((_e2140821572_
                                         (gx#syntax-e _tl2140721569_)))
                                    (let ((_tl2141021579_
                                           (##cdr _e2140821572_))
                                          (_hd2140921576_
                                           (##car _e2140821572_)))
                                      (if (gx#stx-pair/null? _tl2141021579_)
                                          (let ((___splice3868538686_
                                                 (gx#syntax-split-splice
                                                  _tl2141021579_
                                                  '0)))
                                            (let ((_tl2141321585_
                                                   (##vector-ref
                                                    ___splice3868538686_
                                                    '1))
                                                  (_target2141121582_
                                                   (##vector-ref
                                                    ___splice3868538686_
                                                    '0)))
                                              (if (gx#stx-null? _tl2141321585_)
                                                  (___match3871738718_
                                                   _e2140221552_
                                                   _hd2140321556_
                                                   _tl2140421559_
                                                   _e2140521562_
                                                   _hd2140621566_
                                                   _tl2140721569_
                                                   _e2140821572_
                                                   _hd2140921576_
                                                   _tl2141021579_
                                                   ___splice3868538686_
                                                   _target2141121582_
                                                   _tl2141321585_)
                                                  (_g2139721446_))))
                                          (_g2139721446_))))
                                  (_g2139721446_))))
                          (_g2139721446_))))
                  (_g2139721446_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21657_)
        (let* ((___stx3874638747_ _$stx21657_)
               (_g2166221702_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3874638747_))))
          (let ((___kont3874938750_
                 (lambda (_L21840_ _L21842_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L21842_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21840_ '()))
                                     '())))))
                (___kont3875138752_
                 (lambda (_L21769_ _L21771_ _L21772_ _L21773_)
                   (cons _L21773_
                         (cons (cons _L21773_
                                     (cons _L21772_ (cons _L21771_ '())))
                               (foldr (lambda (_g2179421797_ _g2179521800_)
                                        (cons _g2179421797_ _g2179521800_))
                                      '()
                                      _L21769_))))))
            (let* ((___match3880138802_
                    (lambda (_e2167921709_
                             _hd2168021713_
                             _tl2168121716_
                             _e2168221719_
                             _hd2168321723_
                             _tl2168421726_
                             _e2168521729_
                             _hd2168621733_
                             _tl2168721736_
                             ___splice3875338754_
                             _target2168821739_
                             _tl2169021742_)
                      (letrec ((_loop2169121745_
                                (lambda (_hd2168921749_ _rest2169521752_)
                                  (if (gx#stx-pair? _hd2168921749_)
                                      (let ((_e2169221755_
                                             (gx#syntax-e _hd2168921749_)))
                                        (let ((_lp-tl2169421762_
                                               (##cdr _e2169221755_))
                                              (_lp-hd2169321759_
                                               (##car _e2169221755_)))
                                          (_loop2169121745_
                                           _lp-tl2169421762_
                                           (cons _lp-hd2169321759_
                                                 _rest2169521752_))))
                                      (let ((_rest2169621765_
                                             (reverse _rest2169521752_)))
                                        (___kont3875138752_
                                         _rest2169621765_
                                         _hd2168621733_
                                         _hd2168321723_
                                         _hd2168021713_))))))
                        (_loop2169121745_ _target2168821739_ '()))))
                   (___match3877538776_
                    (lambda (_e2166621810_
                             _hd2166721814_
                             _tl2166821817_
                             _e2166921820_
                             _hd2167021824_
                             _tl2167121827_
                             _e2167221830_
                             _hd2167321834_
                             _tl2167421837_)
                      (let ((_L21840_ _hd2167321834_)
                            (_L21842_ _hd2167021824_))
                        (if (gx#identifier? _L21840_)
                            (___kont3874938750_ _L21840_ _L21842_)
                            (if (gx#stx-pair/null? _tl2167421837_)
                                (let ((___splice3875338754_
                                       (gx#syntax-split-splice
                                        _tl2167421837_
                                        '0)))
                                  (let ((_tl2169021742_
                                         (##vector-ref
                                          ___splice3875338754_
                                          '1))
                                        (_target2168821739_
                                         (##vector-ref
                                          ___splice3875338754_
                                          '0)))
                                    (if (gx#stx-null? _tl2169021742_)
                                        (___match3880138802_
                                         _e2166621810_
                                         _hd2166721814_
                                         _tl2166821817_
                                         _e2166921820_
                                         _hd2167021824_
                                         _tl2167121827_
                                         _e2167221830_
                                         _hd2167321834_
                                         _tl2167421837_
                                         ___splice3875338754_
                                         _target2168821739_
                                         _tl2169021742_)
                                        (_g2166221702_))))
                                (_g2166221702_)))))))
              (if (gx#stx-pair? ___stx3874638747_)
                  (let ((_e2166621810_ (gx#syntax-e ___stx3874638747_)))
                    (let ((_tl2166821817_ (##cdr _e2166621810_))
                          (_hd2166721814_ (##car _e2166621810_)))
                      (if (gx#stx-pair? _tl2166821817_)
                          (let ((_e2166921820_ (gx#syntax-e _tl2166821817_)))
                            (let ((_tl2167121827_ (##cdr _e2166921820_))
                                  (_hd2167021824_ (##car _e2166921820_)))
                              (if (gx#stx-pair? _tl2167121827_)
                                  (let ((_e2167221830_
                                         (gx#syntax-e _tl2167121827_)))
                                    (let ((_tl2167421837_
                                           (##cdr _e2167221830_))
                                          (_hd2167321834_
                                           (##car _e2167221830_)))
                                      (if (gx#stx-null? _tl2167421837_)
                                          (___match3877538776_
                                           _e2166621810_
                                           _hd2166721814_
                                           _tl2166821817_
                                           _e2166921820_
                                           _hd2167021824_
                                           _tl2167121827_
                                           _e2167221830_
                                           _hd2167321834_
                                           _tl2167421837_)
                                          (if (gx#stx-pair/null?
                                               _tl2167421837_)
                                              (let ((___splice3875338754_
                                                     (gx#syntax-split-splice
                                                      _tl2167421837_
                                                      '0)))
                                                (let ((_tl2169021742_
                                                       (##vector-ref
                                                        ___splice3875338754_
                                                        '1))
                                                      (_target2168821739_
                                                       (##vector-ref
                                                        ___splice3875338754_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl2169021742_)
                                                      (___match3880138802_
                                                       _e2166621810_
                                                       _hd2166721814_
                                                       _tl2166821817_
                                                       _e2166921820_
                                                       _hd2167021824_
                                                       _tl2167121827_
                                                       _e2167221830_
                                                       _hd2167321834_
                                                       _tl2167421837_
                                                       ___splice3875338754_
                                                       _target2168821739_
                                                       _tl2169021742_)
                                                      (_g2166221702_))))
                                              (_g2166221702_)))))
                                  (_g2166221702_))))
                          (_g2166221702_))))
                  (_g2166221702_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21862_)
        (let* ((___stx3880438805_ _$stx21862_)
               (_g2186721919_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3880438805_))))
          (let ((___kont3880738808_
                 (lambda (_L22095_ _L22097_ _L22098_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L22098_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22097_ '()))
                                     (cons _L22095_ '()))))))
                (___kont3880938810_
                 (lambda (_L22006_
                          _L22008_
                          _L22009_
                          _L22010_
                          _L22011_
                          _L22012_)
                   (cons _L22012_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L22011_
                                           (cons _L22010_
                                                 (foldr (lambda (_g2203922042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2204022045_)
                  (cons _g2203922042_ _g2204022045_))
                '()
                _L22009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L22008_ (cons _L22006_ '())))))))
            (let* ((___match3887938880_
                    (lambda (_e2189021926_
                             _hd2189121930_
                             _tl2189221933_
                             _e2189321936_
                             _hd2189421940_
                             _tl2189521943_
                             _e2189621946_
                             _hd2189721950_
                             _tl2189821953_
                             ___splice3881138812_
                             _target2189921956_
                             _tl2190121959_
                             _e2190821962_
                             _hd2190921966_
                             _tl2191021969_
                             _e2191121972_
                             _hd2191221976_
                             _tl2191321979_)
                      (letrec ((_loop2190221982_
                                (lambda (_hd2190021986_ _path2190621989_)
                                  (if (gx#stx-pair? _hd2190021986_)
                                      (let ((_e2190321992_
                                             (gx#syntax-e _hd2190021986_)))
                                        (let ((_lp-tl2190521999_
                                               (##cdr _e2190321992_))
                                              (_lp-hd2190421996_
                                               (##car _e2190321992_)))
                                          (_loop2190221982_
                                           _lp-tl2190521999_
                                           (cons _lp-hd2190421996_
                                                 _path2190621989_))))
                                      (let ((_path2190722002_
                                             (reverse _path2190621989_)))
                                        (___kont3880938810_
                                         _hd2191221976_
                                         _hd2190921966_
                                         _path2190722002_
                                         _hd2189721950_
                                         _hd2189421940_
                                         _hd2189121930_))))))
                        (_loop2190221982_ _target2189921956_ '()))))
                   (___match3883938840_
                    (lambda (_e2187222055_
                             _hd2187322059_
                             _tl2187422062_
                             _e2187522065_
                             _hd2187622069_
                             _tl2187722072_
                             _e2187822075_
                             _hd2187922079_
                             _tl2188022082_
                             _e2188122085_
                             _hd2188222089_
                             _tl2188322092_)
                      (let ((_L22095_ _hd2188222089_)
                            (_L22097_ _hd2187922079_)
                            (_L22098_ _hd2187622069_))
                        (if (gx#identifier? _L22097_)
                            (___kont3880738808_ _L22095_ _L22097_ _L22098_)
                            (if (gx#stx-pair/null? _tl2188022082_)
                                (if (fx>= (gx#stx-length _tl2188022082_) '2)
                                    (let ((___splice3881138812_
                                           (gx#syntax-split-splice
                                            _tl2188022082_
                                            '2)))
                                      (let ((_tl2190121959_
                                             (##vector-ref
                                              ___splice3881138812_
                                              '1))
                                            (_target2189921956_
                                             (##vector-ref
                                              ___splice3881138812_
                                              '0)))
                                        (if (gx#stx-pair? _tl2190121959_)
                                            (let ((_e2190821962_
                                                   (gx#syntax-e
                                                    _tl2190121959_)))
                                              (let ((_tl2191021969_
                                                     (##cdr _e2190821962_))
                                                    (_hd2190921966_
                                                     (##car _e2190821962_)))
                                                (if (gx#stx-pair?
                                                     _tl2191021969_)
                                                    (let ((_e2191121972_
                                                           (gx#syntax-e
                                                            _tl2191021969_)))
                                                      (let ((_tl2191321979_
                                                             (##cdr _e2191121972_))
                                                            (_hd2191221976_
                                                             (##car _e2191121972_)))
                                                        (if (gx#stx-null?
                                                             _tl2191321979_)
                                                            (___match3887938880_
                                                             _e2187222055_
                                                             _hd2187322059_
                                                             _tl2187422062_
                                                             _e2187522065_
                                                             _hd2187622069_
                                                             _tl2187722072_
                                                             _e2187822075_
                                                             _hd2187922079_
                                                             _tl2188022082_
                                                             ___splice3881138812_
                                                             _target2189921956_
                                                             _tl2190121959_
                                                             _e2190821962_
                                                             _hd2190921966_
                                                             _tl2191021969_
                                                             _e2191121972_
                                                             _hd2191221976_
                                                             _tl2191321979_)
                                                            (_g2186721919_))))
                                                    (_g2186721919_))))
                                            (_g2186721919_))))
                                    (_g2186721919_))
                                (_g2186721919_)))))))
              (if (gx#stx-pair? ___stx3880438805_)
                  (let ((_e2187222055_ (gx#syntax-e ___stx3880438805_)))
                    (let ((_tl2187422062_ (##cdr _e2187222055_))
                          (_hd2187322059_ (##car _e2187222055_)))
                      (if (gx#stx-pair? _tl2187422062_)
                          (let ((_e2187522065_ (gx#syntax-e _tl2187422062_)))
                            (let ((_tl2187722072_ (##cdr _e2187522065_))
                                  (_hd2187622069_ (##car _e2187522065_)))
                              (if (gx#stx-pair? _tl2187722072_)
                                  (let ((_e2187822075_
                                         (gx#syntax-e _tl2187722072_)))
                                    (let ((_tl2188022082_
                                           (##cdr _e2187822075_))
                                          (_hd2187922079_
                                           (##car _e2187822075_)))
                                      (if (gx#stx-pair? _tl2188022082_)
                                          (let ((_e2188122085_
                                                 (gx#syntax-e _tl2188022082_)))
                                            (let ((_tl2188322092_
                                                   (##cdr _e2188122085_))
                                                  (_hd2188222089_
                                                   (##car _e2188122085_)))
                                              (if (gx#stx-null? _tl2188322092_)
                                                  (___match3883938840_
                                                   _e2187222055_
                                                   _hd2187322059_
                                                   _tl2187422062_
                                                   _e2187522065_
                                                   _hd2187622069_
                                                   _tl2187722072_
                                                   _e2187822075_
                                                   _hd2187922079_
                                                   _tl2188022082_
                                                   _e2188122085_
                                                   _hd2188222089_
                                                   _tl2188322092_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2188022082_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2188022082_)
                        '2)
                  (let ((___splice3881138812_
                         (gx#syntax-split-splice _tl2188022082_ '2)))
                    (let ((_tl2190121959_
                           (##vector-ref ___splice3881138812_ '1))
                          (_target2189921956_
                           (##vector-ref ___splice3881138812_ '0)))
                      (if (gx#stx-pair? _tl2190121959_)
                          (let ((_e2190821962_ (gx#syntax-e _tl2190121959_)))
                            (let ((_tl2191021969_ (##cdr _e2190821962_))
                                  (_hd2190921966_ (##car _e2190821962_)))
                              (if (gx#stx-pair? _tl2191021969_)
                                  (let ((_e2191121972_
                                         (gx#syntax-e _tl2191021969_)))
                                    (let ((_tl2191321979_
                                           (##cdr _e2191121972_))
                                          (_hd2191221976_
                                           (##car _e2191121972_)))
                                      (if (gx#stx-null? _tl2191321979_)
                                          (___match3887938880_
                                           _e2187222055_
                                           _hd2187322059_
                                           _tl2187422062_
                                           _e2187522065_
                                           _hd2187622069_
                                           _tl2187722072_
                                           _e2187822075_
                                           _hd2187922079_
                                           _tl2188022082_
                                           ___splice3881138812_
                                           _target2189921956_
                                           _tl2190121959_
                                           _e2190821962_
                                           _hd2190921966_
                                           _tl2191021969_
                                           _e2191121972_
                                           _hd2191221976_
                                           _tl2191321979_)
                                          (_g2186721919_))))
                                  (_g2186721919_))))
                          (_g2186721919_))))
                  (_g2186721919_))
              (_g2186721919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2188022082_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2188022082_)
                                                        '2)
                                                  (let ((___splice3881138812_
                                                         (gx#syntax-split-splice
                                                          _tl2188022082_
                                                          '2)))
                                                    (let ((_tl2190121959_
                                                           (##vector-ref
                                                            ___splice3881138812_
                                                            '1))
                                                          (_target2189921956_
                                                           (##vector-ref
                                                            ___splice3881138812_
                                                            '0)))
                                                      (if (gx#stx-pair?
                                                           _tl2190121959_)
                                                          (let ((_e2190821962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2190121959_)))
                    (let ((_tl2191021969_ (##cdr _e2190821962_))
                          (_hd2190921966_ (##car _e2190821962_)))
                      (if (gx#stx-pair? _tl2191021969_)
                          (let ((_e2191121972_ (gx#syntax-e _tl2191021969_)))
                            (let ((_tl2191321979_ (##cdr _e2191121972_))
                                  (_hd2191221976_ (##car _e2191121972_)))
                              (if (gx#stx-null? _tl2191321979_)
                                  (___match3887938880_
                                   _e2187222055_
                                   _hd2187322059_
                                   _tl2187422062_
                                   _e2187522065_
                                   _hd2187622069_
                                   _tl2187722072_
                                   _e2187822075_
                                   _hd2187922079_
                                   _tl2188022082_
                                   ___splice3881138812_
                                   _target2189921956_
                                   _tl2190121959_
                                   _e2190821962_
                                   _hd2190921966_
                                   _tl2191021969_
                                   _e2191121972_
                                   _hd2191221976_
                                   _tl2191321979_)
                                  (_g2186721919_))))
                          (_g2186721919_))))
                  (_g2186721919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2186721919_))
                                              (_g2186721919_)))))
                                  (_g2186721919_))))
                          (_g2186721919_))))
                  (_g2186721919_)))))))))
