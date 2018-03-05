(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g34807_|
    (gx#make-syntax-quote '@method #f (gx#current-expander-context) '()))
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
      (lambda _$args19681_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args19681_)))
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
      (lambda _$args19677_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args19677_)))
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
      (lambda _$args19673_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args19673_)))
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
      (lambda _$args19669_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args19669_)))
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
      (lambda _$args19665_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args19665_)))
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
      (lambda _$args19661_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args19661_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1963319647_
             (lambda (_stx19635_ _is?19637_)
               (if (gx#identifier? _stx19635_)
                   (let ((_e1963819640_
                          (gx#syntax-local-value _stx19635_ false)))
                     (if _e1963819640_
                         (let ((_e19644_ _e1963819640_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e19644_)
                               (_is?19637_ _e19644_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g34793_
          (let ((_g34792_ (length _g34793_)))
            (cond ((fx= _g34792_ 1)
                   (apply (lambda (_stx19651_)
                            (let ((_is?19654_ true))
                              (_opt-lambda1963319647_ _stx19651_ _is?19654_)))
                          _g34793_))
                  ((fx= _g34792_ 2) (apply _opt-lambda1963319647_ _g34793_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g34793_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx19631_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx19631_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx19628_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx19628_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id19622_)
        (if _id19622_
            (let ((_info19625_ (gx#syntax-local-value _id19622_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info19625_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info19625_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self19387_ _stx19389_)
        (let* ((_g1939119411_
                (lambda (_g1939219407_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1939219407_)))
               (_g1939019618_
                (lambda (_g1939219415_)
                  (if (gx#stx-pair? _g1939219415_)
                      (let ((_e1939419418_ (gx#syntax-e _g1939219415_)))
                        (let ((_hd1939519422_ (##car _e1939419418_))
                              (_tl1939619425_ (##cdr _e1939419418_)))
                          (if (gx#stx-pair/null? _tl1939619425_)
                              (if (fx>= (gx#stx-length _tl1939619425_) '0)
                                  (let ((_g34794_
                                         (gx#syntax-split-splice
                                          _tl1939619425_
                                          '0)))
                                    (begin
                                      (let ((_g34795_ (values-count _g34794_)))
                                        (if (not (fx= _g34795_ 2))
                                            (error "Context expects 2 values"
                                                   _g34795_)))
                                      (let ((_target1939719428_
                                             (values-ref _g34794_ 0))
                                            (_tl1939919431_
                                             (values-ref _g34794_ 1)))
                                        (if (gx#stx-null? _tl1939919431_)
                                            (letrec ((_loop1940019434_
                                                      (lambda (_hd1939819438_
                                                               _arg1940419441_)
                                                        (if (gx#stx-pair?
                                                             _hd1939819438_)
                                                            (let ((_e1940119444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1939819438_)))
                      (let ((_lp-hd1940219448_ (##car _e1940119444_))
                            (_lp-tl1940319451_ (##cdr _e1940119444_)))
                        (_loop1940019434_
                         _lp-tl1940319451_
                         (cons _lp-hd1940219448_ _arg1940419441_))))
                    (let ((_arg1940519454_ (reverse _arg1940419441_)))
                      ((lambda (_L19458_)
                         (let* ((_g1947419505_
                                 (lambda (_g1947519501_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1947519501_)))
                                (_g1947319614_
                                 (lambda (_g1947519509_)
                                   (if (gx#stx-pair? _g1947519509_)
                                       (let ((_e1948219512_
                                              (gx#syntax-e _g1947519509_)))
                                         (let ((_hd1948319516_
                                                (##car _e1948219512_))
                                               (_tl1948419519_
                                                (##cdr _e1948219512_)))
                                           (if (gx#stx-pair? _tl1948419519_)
                                               (let ((_e1948519522_
                                                      (gx#syntax-e
                                                       _tl1948419519_)))
                                                 (let ((_hd1948619526_
                                                        (##car _e1948519522_))
                                                       (_tl1948719529_
                                                        (##cdr _e1948519522_)))
                                                   (if (gx#stx-pair?
                                                        _tl1948719529_)
                                                       (let ((_e1948819532_
                                                              (gx#syntax-e
                                                               _tl1948719529_)))
                                                         (let ((_hd1948919536_
                                                                (##car _e1948819532_))
                                                               (_tl1949019539_
                                                                (##cdr _e1948819532_)))
                                                           (if (gx#stx-pair?
                                                                _tl1949019539_)
                                                               (let ((_e1949119542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1949019539_)))
                         (let ((_hd1949219546_ (##car _e1949119542_))
                               (_tl1949319549_ (##cdr _e1949119542_)))
                           (if (gx#stx-pair? _tl1949319549_)
                               (let ((_e1949419552_
                                      (gx#syntax-e _tl1949319549_)))
                                 (let ((_hd1949519556_ (##car _e1949419552_))
                                       (_tl1949619559_ (##cdr _e1949419552_)))
                                   (if (gx#stx-pair? _tl1949619559_)
                                       (let ((_e1949719562_
                                              (gx#syntax-e _tl1949619559_)))
                                         (let ((_hd1949819566_
                                                (##car _e1949719562_))
                                               (_tl1949919569_
                                                (##cdr _e1949719562_)))
                                           (if (gx#stx-null? _tl1949919569_)
                                               ((lambda (_L19572_
                                                         _L19574_
                                                         _L19575_
                                                         _L19576_
                                                         _L19577_
                                                         _L19578_)
                                                  (let ()
                                                    (cons _L19576_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1960519608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1960619611_)
                             (cons _g1960519608_ _g1960619611_))
                           '()
                           _L19458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1949819566_
                                                _hd1949519556_
                                                _hd1949219546_
                                                _hd1948919536_
                                                _hd1948619526_
                                                _hd1948319516_)
                                               (_g1947419505_ _g1947519509_))))
                                       (_g1947419505_ _g1947519509_))))
                               (_g1947419505_ _g1947519509_))))
                       (_g1947419505_ _g1947519509_))))
               (_g1947419505_ _g1947519509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1947419505_ _g1947519509_))))
                                       (_g1947419505_ _g1947519509_)))))
                           (_g1947319614_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self19387_))))
                       _arg1940519454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1940019434_
                                               _target1939719428_
                                               '()))
                                            (_g1939119411_ _g1939219415_)))))
                                  (_g1939119411_ _g1939219415_))
                              (_g1939119411_ _g1939219415_))))
                      (_g1939119411_ _g1939219415_)))))
          (_g1939019618_ _stx19389_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx19378_)
        (letrec ((_body-opt?19381_
                  (lambda (_key19384_)
                    (memq (gx#stx-e _key19384_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx19378_ _body-opt?19381_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18206_
               _id18208_
               _super-ref18209_
               _els18210_
               _body18211_
               _struct?18212_)
        (letrec* ((_wrap18214_
                   (lambda (_e-stx19375_)
                     (gx#stx-wrap-source
                      _e-stx19375_
                      (gx#stx-source _stx18206_))))
                  (_make-id18216_
                   (if (uninterned-symbol? (gx#stx-e _id18208_))
                       (lambda _g34796_ (gx#genident _id18208_))
                       (lambda _args19372_
                         (apply gx#stx-identifier _id18208_ _args19372_)))))
          (begin
            (gx#check-duplicate-identifiers _els18210_ _stx18206_)
            (let* ((_name18218_ (symbol->string (gx#stx-e _id18208_)))
                   (_super18221_
                    (if _struct?18212_
                        (if _super-ref18209_
                            (gx#syntax-local-value _super-ref18209_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18209_)))
                   (_g1822418232_
                    (lambda (_g1822518228_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1822518228_)))
                   (_g1822319366_
                    (lambda (_g1822518236_)
                      ((lambda (_L18239_)
                         (let ()
                           (let* ((_g1825518263_
                                   (lambda (_g1825618259_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1825618259_)))
                                  (_g1825419362_
                                   (lambda (_g1825618267_)
                                     ((lambda (_L18270_)
                                        (let ()
                                          (let* ((_g1828318291_
                                                  (lambda (_g1828418287_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1828418287_)))
                                                 (_g1828219358_
                                                  (lambda (_g1828418295_)
                                                    ((lambda (_L18298_)
                                                       (let ()
                                                         (let* ((_g1831118319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1831218315_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1831218315_)))
                        (_g1831019354_
                         (lambda (_g1831218323_)
                           ((lambda (_L18326_)
                              (let ()
                                (let* ((_g1833918347_
                                        (lambda (_g1834018343_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1834018343_)))
                                       (_g1833819350_
                                        (lambda (_g1834018351_)
                                          ((lambda (_L18354_)
                                             (let ()
                                               (let* ((_g1836718375_
                                                       (lambda (_g1836818371_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1836818371_)))
                                                      (_g1836619346_
                                                       (lambda (_g1836818379_)
                                                         ((lambda (_L18382_)
                                                            (let ()
                                                              (let* ((_g1839518412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1839618408_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1839618408_)))
                             (_g1839419342_
                              (lambda (_g1839618416_)
                                (if (gx#stx-pair/null? _g1839618416_)
                                    (if (fx>= (gx#stx-length _g1839618416_) '0)
                                        (let ((_g34797_
                                               (gx#syntax-split-splice
                                                _g1839618416_
                                                '0)))
                                          (begin
                                            (let ((_g34798_
                                                   (values-count _g34797_)))
                                              (if (not (fx= _g34798_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34798_)))
                                            (let ((_target1839818419_
                                                   (values-ref _g34797_ 0))
                                                  (_tl1840018422_
                                                   (values-ref _g34797_ 1)))
                                              (if (gx#stx-null? _tl1840018422_)
                                                  (letrec ((_loop1840118425_
                                                            (lambda (_hd1839918429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1840518432_)
                      (if (gx#stx-pair? _hd1839918429_)
                          (let ((_e1840218435_ (gx#syntax-e _hd1839918429_)))
                            (let ((_lp-hd1840318439_ (##car _e1840218435_))
                                  (_lp-tl1840418442_ (##cdr _e1840218435_)))
                              (_loop1840118425_
                               _lp-tl1840418442_
                               (cons _lp-hd1840318439_ _attr1840518432_))))
                          (let ((_attr1840618445_ (reverse _attr1840518432_)))
                            ((lambda (_L18449_)
                               (let ()
                                 (let* ((_g1846618483_
                                         (lambda (_g1846718479_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1846718479_)))
                                        (_g1846519333_
                                         (lambda (_g1846718487_)
                                           (if (gx#stx-pair/null?
                                                _g1846718487_)
                                               (if (fx>= (gx#stx-length
                                                          _g1846718487_)
                                                         '0)
                                                   (let ((_g34799_
                                                          (gx#syntax-split-splice
                                                           _g1846718487_
                                                           '0)))
                                                     (begin
                                                       (let ((_g34800_
                                                              (values-count
                                                               _g34799_)))
                                                         (if (not (fx= _g34800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g34800_)))
               (let ((_target1846918490_ (values-ref _g34799_ 0))
                     (_tl1847118493_ (values-ref _g34799_ 1)))
                 (if (gx#stx-null? _tl1847118493_)
                     (letrec ((_loop1847218496_
                               (lambda (_hd1847018500_ _getf1847618503_)
                                 (if (gx#stx-pair? _hd1847018500_)
                                     (let ((_e1847318506_
                                            (gx#syntax-e _hd1847018500_)))
                                       (let ((_lp-hd1847418510_
                                              (##car _e1847318506_))
                                             (_lp-tl1847518513_
                                              (##cdr _e1847318506_)))
                                         (_loop1847218496_
                                          _lp-tl1847518513_
                                          (cons _lp-hd1847418510_
                                                _getf1847618503_))))
                                     (let ((_getf1847718516_
                                            (reverse _getf1847618503_)))
                                       ((lambda (_L18520_)
                                          (let ()
                                            (let* ((_g1853718554_
                                                    (lambda (_g1853818550_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1853818550_)))
                                                   (_g1853619324_
                                                    (lambda (_g1853818558_)
                                                      (if (gx#stx-pair/null?
                                                           _g1853818558_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1853818558_)
                            '0)
                      (let ((_g34801_
                             (gx#syntax-split-splice _g1853818558_ '0)))
                        (begin
                          (let ((_g34802_ (values-count _g34801_)))
                            (if (not (fx= _g34802_ 2))
                                (error "Context expects 2 values" _g34802_)))
                          (let ((_target1854018561_ (values-ref _g34801_ 0))
                                (_tl1854218564_ (values-ref _g34801_ 1)))
                            (if (gx#stx-null? _tl1854218564_)
                                (letrec ((_loop1854318567_
                                          (lambda (_hd1854118571_
                                                   _setf1854718574_)
                                            (if (gx#stx-pair? _hd1854118571_)
                                                (let ((_e1854418577_
                                                       (gx#syntax-e
                                                        _hd1854118571_)))
                                                  (let ((_lp-hd1854518581_
                                                         (##car _e1854418577_))
                                                        (_lp-tl1854618584_
                                                         (##cdr _e1854418577_)))
                                                    (_loop1854318567_
                                                     _lp-tl1854618584_
                                                     (cons _lp-hd1854518581_
                                                           _setf1854718574_))))
                                                (let ((_setf1854818587_
                                                       (reverse _setf1854718574_)))
                                                  ((lambda (_L18591_)
                                                     (let ()
                                                       (let* ((_type-attr18636_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els18210_)
                           '()
                           (if _struct?18212_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L18591_
                                              _L18520_
                                              _L18449_)
                                             (foldr (lambda (_g1860718612_
                                                             _g1860818615_
                                                             _g1860918617_
                                                             _g1861018619_)
                                                      (cons (cons _g1860918617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1860818615_ (cons _g1860718612_ '())))
                    _g1861018619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L18591_
                                                    _L18520_
                                                    _L18449_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L18591_
                                              _L18520_
                                              _L18449_)
                                             (foldr (lambda (_g1862118626_
                                                             _g1862218629_
                                                             _g1862318631_
                                                             _g1862418633_)
                                                      (cons (cons _g1862318631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1862218629_ (cons _g1862118626_ '())))
                    _g1862418633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L18591_
                                                    _L18520_
                                                    _L18449_))
                                           '())))))
                      (_type-name18643_
                       (cons 'name:
                             (cons (let ((_$e18639_
                                          (gx#stx-getq 'name: _body18211_)))
                                     (if _$e18639_ _$e18639_ _id18208_))
                                   '())))
                      (_type-id18658_
                       (let ((_$e18654_
                              (let ((_e1864518647_
                                     (gx#stx-getq 'id: _body18211_)))
                                (if _e1864518647_
                                    (let ((_e18651_ _e1864518647_))
                                      (cons 'id: (cons _e18651_ '())))
                                    '#f))))
                         (if _$e18654_ _$e18654_ '())))
                      (_type-ctor18673_
                       (let ((_$e18669_
                              (let ((_e1866018662_
                                     (gx#stx-getq 'constructor: _body18211_)))
                                (if _e1866018662_
                                    (let ((_e18666_ _e1866018662_))
                                      (cons 'constructor: (cons _e18666_ '())))
                                    '#f))))
                         (if _$e18669_ _$e18669_ '())))
                      (_plist18717_
                       (let* ((_plist18680_
                               (let ((_$e18676_
                                      (gx#stx-getq 'plist: _body18211_)))
                                 (if _$e18676_ _$e18676_ '())))
                              (_plist18683_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body18211_))
                                   (cons (cons 'transparent: '#t) _plist18680_)
                                   _plist18680_))
                              (_plist18686_
                               (if (gx#stx-e (gx#stx-getq 'final: _body18211_))
                                   (cons (cons 'final: '#t) _plist18683_)
                                   _plist18683_))
                              (_plist18699_
                               (let ((_$e18689_
                                      (gx#stx-e
                                       (gx#stx-getq 'print: _body18211_))))
                                 (if _$e18689_
                                     ((lambda (_print18693_)
                                        (let ((_print18696_
                                               (if (eq? _print18693_ '#t)
                                                   _els18210_
                                                   _print18693_)))
                                          (cons (cons 'print: _print18696_)
                                                _plist18686_)))
                                      _$e18689_)
                                     _plist18686_)))
                              (_plist18712_
                               (let ((_$e18702_
                                      (gx#stx-e
                                       (gx#stx-getq 'equal: _body18211_))))
                                 (if _$e18702_
                                     ((lambda (_equal18706_)
                                        (let ((_equal18709_
                                               (if (eq? _equal18706_ '#t)
                                                   _els18210_
                                                   _equal18706_)))
                                          (cons (cons 'equal: _equal18709_)
                                                _plist18699_)))
                                      _$e18702_)
                                     _plist18699_))))
                         _plist18712_))
                      (_type-plist18757_
                       (if (null? _plist18717_)
                           _plist18717_
                           (let* ((_g1872018728_
                                   (lambda (_g1872118724_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1872118724_)))
                                  (_g1871918753_
                                   (lambda (_g1872118732_)
                                     ((lambda (_L18735_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L18735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1872118732_))))
                             (_g1871918753_ _plist18717_))))
                      (_type-unchecked18772_
                       (let ((_$e18768_
                              (let ((_e1875918761_
                                     (gx#stx-getq 'unchecked: _body18211_)))
                                (if _e1875918761_
                                    (let ((_e18765_ _e1875918761_))
                                      (cons 'unchecked: (cons _e18765_ '())))
                                    '#f))))
                         (if _$e18768_ _$e18768_ '())))
                      (_g1877518792_
                       (lambda (_g1877618788_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1877618788_)))
                      (_g1877419320_
                       (lambda (_g1877618796_)
                         (if (gx#stx-pair/null? _g1877618796_)
                             (if (fx>= (gx#stx-length _g1877618796_) '0)
                                 (let ((_g34803_
                                        (gx#syntax-split-splice
                                         _g1877618796_
                                         '0)))
                                   (begin
                                     (let ((_g34804_ (values-count _g34803_)))
                                       (if (not (fx= _g34804_ 2))
                                           (error "Context expects 2 values"
                                                  _g34804_)))
                                     (let ((_target1877818799_
                                            (values-ref _g34803_ 0))
                                           (_tl1878018802_
                                            (values-ref _g34803_ 1)))
                                       (if (gx#stx-null? _tl1878018802_)
                                           (letrec ((_loop1878118805_
                                                     (lambda (_hd1877918809_
                                                              _type-body1878518812_)
                                                       (if (gx#stx-pair?
                                                            _hd1877918809_)
                                                           (let ((_e1878218815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1877918809_)))
                     (let ((_lp-hd1878318819_ (##car _e1878218815_))
                           (_lp-tl1878418822_ (##cdr _e1878218815_)))
                       (_loop1878118805_
                        _lp-tl1878418822_
                        (cons _lp-hd1878318819_ _type-body1878518812_))))
                   (let ((_type-body1878618825_
                          (reverse _type-body1878518812_)))
                     ((lambda (_L18829_)
                        (let ()
                          (let* ((_g1884618854_
                                  (lambda (_g1884718850_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1884718850_)))
                                 (_g1884519308_
                                  (lambda (_g1884718858_)
                                    ((lambda (_L18861_)
                                       (let ()
                                         (let* ((_g1887418882_
                                                 (lambda (_g1887518878_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1887518878_)))
                                                (_g1887319304_
                                                 (lambda (_g1887518886_)
                                                   ((lambda (_L18889_)
                                                      (let ()
                                                        (let* ((_g1890218910_
                                                                (lambda (_g1890318906_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1890318906_)))
                       (_g1890119218_
                        (lambda (_g1890318914_)
                          ((lambda (_L18917_)
                             (let ()
                               (let* ((_g1893018938_
                                       (lambda (_g1893118934_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1893118934_)))
                                      (_g1892919214_
                                       (lambda (_g1893118942_)
                                         ((lambda (_L18945_)
                                            (let ()
                                              (let* ((_g1895818966_
                                                      (lambda (_g1895918962_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1895918962_)))
                                                     (_g1895719210_
                                                      (lambda (_g1895918970_)
                                                        ((lambda (_L18973_)
                                                           (let ()
                                                             (let* ((_g1898618994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1898718990_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1898718990_)))
                            (_g1898519168_
                             (lambda (_g1898718998_)
                               ((lambda (_L19001_)
                                  (let ()
                                    (let* ((_g1901419022_
                                            (lambda (_g1901519018_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1901519018_)))
                                           (_g1901319164_
                                            (lambda (_g1901519026_)
                                              ((lambda (_L19029_)
                                                 (let ()
                                                   (let* ((_g1904219050_
                                                           (lambda (_g1904319046_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1904319046_)))
                                                          (_g1904119160_
                                                           (lambda (_g1904319054_)
                                                             ((lambda (_L19057_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1907019078_
                                  (lambda (_g1907119074_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1907119074_)))
                                 (_g1906919156_
                                  (lambda (_g1907119082_)
                                    ((lambda (_L19085_)
                                       (let ()
                                         (let* ((_g1909819106_
                                                 (lambda (_g1909919102_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1909919102_)))
                                                (_g1909719128_
                                                 (lambda (_g1909919110_)
                                                   ((lambda (_L19113_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap18214_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L18861_ (cons _L19113_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1909919110_))))
                                           (_g1909719128_
                                            (_wrap18214_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L18270_
                                                         (cons (cons _L18889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L18298_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L18917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L18298_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L18326_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L18354_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1913119138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1913219141_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1913119138_ '()))
                                _g1913219141_))
                        '()
                        _L18520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1913319144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1913419147_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1913319144_ '()))
                                      _g1913419147_))
                              '()
                              _L18591_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L18945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L18973_ '()))
                                     (cons _L19001_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L19029_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L19057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L19085_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1913519150_
                                                         _g1913619153_)
                                                  (cons _g1913519150_
                                                        _g1913619153_))
                                                '()
                                                _L18449_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1907119082_))))
                            (_g1906919156_ _plist18717_))))
                      _g1904319054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1904119160_
                                                      (if (not (null? _type-ctor18673_))
                                                          (cadr _type-ctor18673_)
                                                          '#f)))))
                                               _g1901519026_))))
                                      (_g1901319164_
                                       (cadr _type-name18643_)))))
                                _g1898718998_))))
                       (_g1898519168_
                        (let ((_quote-e19207_
                               (lambda (_x-ref19172_)
                                 (if _x-ref19172_
                                     (let* ((_g1917519183_
                                             (lambda (_g1917619179_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1917619179_)))
                                            (_g1917419203_
                                             (lambda (_g1917619187_)
                                               ((lambda (_L19190_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L19190_
                                                                '()))))
                                                _g1917619187_))))
                                       (_g1917419203_ _x-ref19172_))
                                     '#f))))
                          (if _struct?18212_
                              (_quote-e19207_ _super-ref18209_)
                              (cons 'list
                                    (map _quote-e19207_
                                         _super-ref18209_))))))))
                 _g1895918970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1895719210_
                                                 (if (not (null? _type-id18658_))
                                                     (cadr _type-id18658_)
                                                     '#f)))))
                                          _g1893118942_))))
                                 (_g1892919214_
                                  (if _struct?18212_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1890318914_))))
                  (_g1890119218_
                   (if _struct?18212_
                       (if _super18221_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L18382_ '()))
                           '#f)
                       (let* ((_g1922219239_
                               (lambda (_g1922319235_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1922319235_)))
                              (_g1922119300_
                               (lambda (_g1922319243_)
                                 (if (gx#stx-pair/null? _g1922319243_)
                                     (if (fx>= (gx#stx-length _g1922319243_)
                                               '0)
                                         (let ((_g34805_
                                                (gx#syntax-split-splice
                                                 _g1922319243_
                                                 '0)))
                                           (begin
                                             (let ((_g34806_
                                                    (values-count _g34805_)))
                                               (if (not (fx= _g34806_ 2))
                                                   (error "Context expects 2 values"
                                                          _g34806_)))
                                             (let ((_target1922519246_
                                                    (values-ref _g34805_ 0))
                                                   (_tl1922719249_
                                                    (values-ref _g34805_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1922719249_)
                                                   (letrec ((_loop1922819252_
                                                             (lambda (_hd1922619256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1923219259_)
                       (if (gx#stx-pair? _hd1922619256_)
                           (let ((_e1922919262_ (gx#syntax-e _hd1922619256_)))
                             (let ((_lp-hd1923019266_ (##car _e1922919262_))
                                   (_lp-tl1923119269_ (##cdr _e1922919262_)))
                               (_loop1922819252_
                                _lp-tl1923119269_
                                (cons _lp-hd1923019266_
                                      _super-id1923219259_))))
                           (let ((_super-id1923319272_
                                  (reverse _super-id1923219259_)))
                             ((lambda (_L19276_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1929119294_
                                                          _g1929219297_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1929119294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1929219297_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L19276_)))))
                              _super-id1923319272_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1922819252_
                                                      _target1922519246_
                                                      '()))
                                                   (_g1922219239_
                                                    _g1922319243_)))))
                                         (_g1922219239_ _g1922319243_))
                                     (_g1922219239_ _g1922319243_)))))
                         (_g1922119300_ _L18382_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1887518886_))))
                                           (_g1887319304_
                                            (if _struct?18212_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1884718858_))))
                            (_g1884519308_
                             (_wrap18214_
                              (cons _L18239_
                                    (cons _L18298_
                                          (cons _L18382_
                                                (cons _L18326_
                                                      (cons _L18354_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1931119314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1931219317_)
                               (cons _g1931119314_ _g1931219317_))
                             '()
                             _L18829_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1878618825_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1878118805_
                                              _target1877818799_
                                              '()))
                                           (_g1877518792_ _g1877618796_)))))
                                 (_g1877518792_ _g1877618796_))
                             (_g1877518792_ _g1877618796_)))))
                 (_g1877419320_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked18772_
                                                     _type-plist18757_)
                                              _type-ctor18673_)
                                       _type-name18643_)
                                _type-id18658_)
                         _type-attr18636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1854818587_))))))
                                  (_loop1854318567_ _target1854018561_ '()))
                                (_g1853718554_ _g1853818558_)))))
                      (_g1853718554_ _g1853818558_))
                  (_g1853718554_ _g1853818558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1853619324_
                                               (gx#stx-map
                                                (lambda (_g1932719329_)
                                                  (_make-id18216_
                                                   _name18218_
                                                   '"-"
                                                   _g1932719329_
                                                   '"-set!"))
                                                _els18210_)))))
                                        _getf1847718516_))))))
                       (_loop1847218496_ _target1846918490_ '()))
                     (_g1846618483_ _g1846718487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1846618483_
                                                    _g1846718487_))
                                               (_g1846618483_
                                                _g1846718487_)))))
                                   (_g1846519333_
                                    (gx#stx-map
                                     (lambda (_g1933619338_)
                                       (_make-id18216_
                                        _name18218_
                                        '"-"
                                        _g1933619338_))
                                     _els18210_)))))
                             _attr1840618445_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1840118425_
                                                     _target1839818419_
                                                     '()))
                                                  (_g1839518412_
                                                   _g1839618416_)))))
                                        (_g1839518412_ _g1839618416_))
                                    (_g1839518412_ _g1839618416_)))))
                        (_g1839419342_ _els18210_))))
                  _g1836818379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1836619346_
                                                  (if _struct?18212_
                                                      (if _super18221_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18221_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18221_))))))
                                           _g1834018351_))))
                                  (_g1833819350_
                                   (_make-id18216_ _name18218_ '"?")))))
                            _g1831218323_))))
                   (_g1831019354_ (_make-id18216_ '"make-" _name18218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1828418295_))))
                                            (_g1828219358_
                                             (_make-id18216_
                                              _name18218_
                                              '"::t")))))
                                      _g1825618267_))))
                             (_g1825419362_ _id18208_))))
                       _g1822518236_))))
              (_g1822319366_
               (if _struct?18212_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx19694_)
        (letrec ((_generate19697_
                  (lambda (_hd19781_ _fields19783_ _body19784_)
                    (let* ((_g1978719802_
                            (lambda (_g1978819798_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1978819798_)))
                           (_g1978619813_
                            (lambda (_g1978819806_)
                              ((lambda ()
                                 (if (gx#identifier? _hd19781_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx19694_
                                      _hd19781_
                                      '#f
                                      _fields19783_
                                      _body19784_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx19694_
                                      _hd19781_))))))
                           (_g1978519857_
                            (lambda (_g1978819817_)
                              (if (gx#stx-pair? _g1978819817_)
                                  (let ((_e1979119820_
                                         (gx#syntax-e _g1978819817_)))
                                    (let ((_hd1979219824_
                                           (##car _e1979119820_))
                                          (_tl1979319827_
                                           (##cdr _e1979119820_)))
                                      (if (gx#stx-pair? _tl1979319827_)
                                          (let ((_e1979419830_
                                                 (gx#syntax-e _tl1979319827_)))
                                            (let ((_hd1979519834_
                                                   (##car _e1979419830_))
                                                  (_tl1979619837_
                                                   (##cdr _e1979419830_)))
                                              (if (gx#stx-null? _tl1979619837_)
                                                  ((lambda (_L19840_ _L19842_)
                                                     (if (if (gx#identifier?
                                                              _L19842_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L19840_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx19694_
                                                          _L19842_
                                                          _L19840_
                                                          _fields19783_
                                                          _body19784_
                                                          '#t)
                                                         (_g1978619813_
                                                          _g1978819817_)))
                                                   _hd1979519834_
                                                   _hd1979219824_)
                                                  (_g1978619813_
                                                   _g1978819817_))))
                                          (_g1978619813_ _g1978819817_))))
                                  (_g1978619813_ _g1978819817_)))))
                      (_g1978519857_ _hd19781_)))))
          (let* ((_g1970019719_
                  (lambda (_g1970119715_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1970119715_)))
                 (_g1969919777_
                  (lambda (_g1970119723_)
                    (if (gx#stx-pair? _g1970119723_)
                        (let ((_e1970519726_ (gx#syntax-e _g1970119723_)))
                          (let ((_hd1970619730_ (##car _e1970519726_))
                                (_tl1970719733_ (##cdr _e1970519726_)))
                            (if (gx#stx-pair? _tl1970719733_)
                                (let ((_e1970819736_
                                       (gx#syntax-e _tl1970719733_)))
                                  (let ((_hd1970919740_ (##car _e1970819736_))
                                        (_tl1971019743_ (##cdr _e1970819736_)))
                                    (if (gx#stx-pair? _tl1971019743_)
                                        (let ((_e1971119746_
                                               (gx#syntax-e _tl1971019743_)))
                                          (let ((_hd1971219750_
                                                 (##car _e1971119746_))
                                                (_tl1971319753_
                                                 (##cdr _e1971119746_)))
                                            ((lambda (_L19756_
                                                      _L19758_
                                                      _L19759_)
                                               (if (if (gx#identifier-list?
                                                        _L19758_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L19756_)
                                                       '#f)
                                                   (_generate19697_
                                                    _L19759_
                                                    _L19758_
                                                    _L19756_)
                                                   (_g1970019719_
                                                    _g1970119723_)))
                                             _tl1971319753_
                                             _hd1971219750_
                                             _hd1970919740_)))
                                        (_g1970019719_ _g1970119723_))))
                                (_g1970019719_ _g1970119723_))))
                        (_g1970019719_ _g1970119723_)))))
            (_g1969919777_ _stx19694_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx19861_)
        (letrec ((_generate19864_
                  (lambda (_hd19948_ _slots19950_ _body19951_)
                    (let* ((_g1995419966_
                            (lambda (_g1995519962_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1995519962_)))
                           (_g1995319977_
                            (lambda (_g1995519970_)
                              ((lambda ()
                                 (if (gx#identifier? _hd19948_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx19861_
                                      _hd19948_
                                      '()
                                      _slots19950_
                                      _body19951_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx19861_
                                      _hd19948_))))))
                           (_g1995220009_
                            (lambda (_g1995519981_)
                              (if (gx#stx-pair? _g1995519981_)
                                  (let ((_e1995819984_
                                         (gx#syntax-e _g1995519981_)))
                                    (let ((_hd1995919988_
                                           (##car _e1995819984_))
                                          (_tl1996019991_
                                           (##cdr _e1995819984_)))
                                      ((lambda (_L19994_ _L19996_)
                                         (if (if (gx#stx-list? _L19994_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L19994_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx19861_
                                              _L19996_
                                              (gx#syntax->list _L19994_)
                                              _slots19950_
                                              _body19951_
                                              '#f)
                                             (_g1995319977_ _g1995519981_)))
                                       _tl1996019991_
                                       _hd1995919988_)))
                                  (_g1995319977_ _g1995519981_)))))
                      (_g1995220009_ _hd19948_)))))
          (let* ((_g1986719886_
                  (lambda (_g1986819882_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1986819882_)))
                 (_g1986619944_
                  (lambda (_g1986819890_)
                    (if (gx#stx-pair? _g1986819890_)
                        (let ((_e1987219893_ (gx#syntax-e _g1986819890_)))
                          (let ((_hd1987319897_ (##car _e1987219893_))
                                (_tl1987419900_ (##cdr _e1987219893_)))
                            (if (gx#stx-pair? _tl1987419900_)
                                (let ((_e1987519903_
                                       (gx#syntax-e _tl1987419900_)))
                                  (let ((_hd1987619907_ (##car _e1987519903_))
                                        (_tl1987719910_ (##cdr _e1987519903_)))
                                    (if (gx#stx-pair? _tl1987719910_)
                                        (let ((_e1987819913_
                                               (gx#syntax-e _tl1987719910_)))
                                          (let ((_hd1987919917_
                                                 (##car _e1987819913_))
                                                (_tl1988019920_
                                                 (##cdr _e1987819913_)))
                                            ((lambda (_L19923_
                                                      _L19925_
                                                      _L19926_)
                                               (if (if (gx#identifier-list?
                                                        _L19925_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L19923_)
                                                       '#f)
                                                   (_generate19864_
                                                    _L19926_
                                                    _L19925_
                                                    _L19923_)
                                                   (_g1986719886_
                                                    _g1986819890_)))
                                             _tl1988019920_
                                             _hd1987919917_
                                             _hd1987619907_)))
                                        (_g1986719886_ _g1986819890_))))
                                (_g1986719886_ _g1986819890_))))
                        (_g1986719886_ _g1986819890_)))))
            (_g1986619944_ _stx19861_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20013_)
        (letrec ((_wrap20016_
                  (lambda (_e-stx20353_)
                    (gx#stx-wrap-source
                     _e-stx20353_
                     (gx#stx-source _stx20013_))))
                 (_method-opt?20018_
                  (lambda (_x20350_) (memq (gx#stx-e _x20350_) '(rebind:)))))
          (let* ((_g2002020049_
                  (lambda (_g2002120045_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2002120045_)))
                 (_g2001920346_
                  (lambda (_g2002120053_)
                    (if (gx#stx-pair? _g2002120053_)
                        (let ((_e2002620056_ (gx#syntax-e _g2002120053_)))
                          (let ((_hd2002720060_ (##car _e2002620056_))
                                (_tl2002820063_ (##cdr _e2002620056_)))
                            (if (gx#stx-pair? _tl2002820063_)
                                (let ((_e2002920066_
                                       (gx#syntax-e _tl2002820063_)))
                                  (let ((_hd2003020070_ (##car _e2002920066_))
                                        (_tl2003120073_ (##cdr _e2002920066_)))
                                    (if (gx#stx-pair? _hd2003020070_)
                                        (let ((_e2003220076_
                                               (gx#syntax-e _hd2003020070_)))
                                          (let ((_hd2003320080_
                                                 (##car _e2003220076_))
                                                (_tl2003420083_
                                                 (##cdr _e2003220076_)))
                                            (if (gx#identifier? _hd2003320080_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g34807_|
                                                     _hd2003320080_)
                                                    (if (gx#stx-pair?
                                                         _tl2003420083_)
                                                        (let ((_e2003520086_
                                                               (gx#syntax-e
                                                                _tl2003420083_)))
                                                          (let ((_hd2003620090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2003520086_))
                        (_tl2003720093_ (##cdr _e2003520086_)))
                    (if (gx#stx-pair? _tl2003720093_)
                        (let ((_e2003820096_ (gx#syntax-e _tl2003720093_)))
                          (let ((_hd2003920100_ (##car _e2003820096_))
                                (_tl2004020103_ (##cdr _e2003820096_)))
                            (if (gx#stx-null? _tl2004020103_)
                                (if (gx#stx-pair? _tl2003120073_)
                                    (let ((_e2004120106_
                                           (gx#syntax-e _tl2003120073_)))
                                      (let ((_hd2004220110_
                                             (##car _e2004120106_))
                                            (_tl2004320113_
                                             (##cdr _e2004120106_)))
                                        ((lambda (_L20116_
                                                  _L20118_
                                                  _L20119_
                                                  _L20120_)
                                           (if (if (gx#identifier? _L20120_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L20119_)
                                                       (gx#stx-plist?
                                                        _L20116_
                                                        _method-opt?20018_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass20145_
                                                       (gx#syntax-local-value
                                                        _L20119_))
                                                      (_rebind?20148_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20116_))
                                                           '#t
                                                           '#f))
                                                      (_g2015120159_
                                                       (lambda (_g2015220155_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2015220155_)))
                                                      (_g2015020342_
                                                       (lambda (_g2015220163_)
                                                         ((lambda (_L20166_)
                                                            (let ()
                                                              (let* ((_g2018020188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2018120184_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2018120184_)))
                             (_g2017920338_
                              (lambda (_g2018120192_)
                                ((lambda (_L20195_)
                                   (let ()
                                     (let* ((_g2020820216_
                                             (lambda (_g2020920212_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2020920212_)))
                                            (_g2020720334_
                                             (lambda (_g2020920220_)
                                               ((lambda (_L20223_)
                                                  (let ()
                                                    (let* ((_g2023620244_
                                                            (lambda (_g2023720240_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2023720240_)))
                                                           (_g2023520330_
                                                            (lambda (_g2023720248_)
                                                              ((lambda (_L20251_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2026420272_
                                   (lambda (_g2026520268_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2026520268_)))
                                  (_g2026320326_
                                   (lambda (_g2026520276_)
                                     ((lambda (_L20279_)
                                        (let ()
                                          (let* ((_g2029220300_
                                                  (lambda (_g2029320296_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2029320296_)))
                                                 (_g2029120322_
                                                  (lambda (_g2029320304_)
                                                    ((lambda (_L20307_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20016_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20251_ (cons _L20307_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2029320304_))))
                                            (_g2029120322_
                                             (_wrap20016_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20166_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20120_ '()))
                        (cons _L20195_ (cons _L20279_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2026520276_))))
                             (_g2026320326_ _rebind?20148_))))
                       _g2023720248_))))
              (_g2023520330_
               (_wrap20016_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20195_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20223_
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
                                                            (cons _L20166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20120_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20118_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2020920220_))))
                                       (_g2020720334_
                                        (gx#stx-identifier
                                         _L20120_
                                         '@next-method)))))
                                 _g2018120192_))))
                        (_g2017920338_
                         (gx#stx-identifier
                          _L20120_
                          _L20119_
                          '"::"
                          _L20120_)))))
                  _g2015220163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2015020342_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20145_)))
                                               (if (not (gx#identifier?
                                                         _L20120_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20013_
                                                    _L20120_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L20119_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20013_
                                                        _L20119_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20013_)))))
                                         _tl2004320113_
                                         _hd2004220110_
                                         _hd2003920100_
                                         _hd2003620090_)))
                                    (_g2002020049_ _g2002120053_))
                                (_g2002020049_ _g2002120053_))))
                        (_g2002020049_ _g2002120053_))))
                (_g2002020049_ _g2002120053_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2002020049_
                                                     _g2002120053_))
                                                (_g2002020049_
                                                 _g2002120053_))))
                                        (_g2002020049_ _g2002120053_))))
                                (_g2002020049_ _g2002120053_))))
                        (_g2002020049_ _g2002120053_)))))
            (_g2001920346_ _stx20013_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx20356_)
        (let* ((_g2036120410_
                (lambda (_g2036220406_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2036220406_)))
               (_g2036020509_
                (lambda (_g2036220414_)
                  (if (gx#stx-pair? _g2036220414_)
                      (let ((_e2038720417_ (gx#syntax-e _g2036220414_)))
                        (let ((_hd2038820421_ (##car _e2038720417_))
                              (_tl2038920424_ (##cdr _e2038720417_)))
                          (if (gx#stx-pair? _tl2038920424_)
                              (let ((_e2039020427_
                                     (gx#syntax-e _tl2038920424_)))
                                (let ((_hd2039120431_ (##car _e2039020427_))
                                      (_tl2039220434_ (##cdr _e2039020427_)))
                                  (if (gx#stx-pair? _tl2039220434_)
                                      (let ((_e2039320437_
                                             (gx#syntax-e _tl2039220434_)))
                                        (let ((_hd2039420441_
                                               (##car _e2039320437_))
                                              (_tl2039520444_
                                               (##cdr _e2039320437_)))
                                          (if (gx#stx-pair/null?
                                               _tl2039520444_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2039520444_)
                                                        '0)
                                                  (let ((_g34808_
                                                         (gx#syntax-split-splice
                                                          _tl2039520444_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34809_
                                                             (values-count
                                                              _g34808_)))
                                                        (if (not (fx= _g34809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34809_)))
              (let ((_target2039620447_ (values-ref _g34808_ 0))
                    (_tl2039820450_ (values-ref _g34808_ 1)))
                (if (gx#stx-null? _tl2039820450_)
                    (letrec ((_loop2039920453_
                              (lambda (_hd2039720457_ _arg2040320460_)
                                (if (gx#stx-pair? _hd2039720457_)
                                    (let ((_e2040020463_
                                           (gx#syntax-e _hd2039720457_)))
                                      (let ((_lp-hd2040120467_
                                             (##car _e2040020463_))
                                            (_lp-tl2040220470_
                                             (##cdr _e2040020463_)))
                                        (_loop2039920453_
                                         _lp-tl2040220470_
                                         (cons _lp-hd2040120467_
                                               _arg2040320460_))))
                                    (let ((_arg2040420473_
                                           (reverse _arg2040320460_)))
                                      ((lambda (_L20477_ _L20479_ _L20480_)
                                         (if (gx#identifier? _L20480_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L20479_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L20480_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g2050020503_ _g2050120506_)
                                  (cons _g2050020503_ _g2050120506_))
                                '()
                                _L20477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2036120410_ _g2036220414_)))
                                       _arg2040420473_
                                       _hd2039420441_
                                       _hd2039120431_))))))
                      (_loop2039920453_ _target2039620447_ '()))
                    (_g2036120410_ _g2036220414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2036120410_
                                                   _g2036220414_))
                                              (_g2036120410_ _g2036220414_))))
                                      (_g2036120410_ _g2036220414_))))
                              (_g2036120410_ _g2036220414_))))
                      (_g2036120410_ _g2036220414_))))
               (_g2035920615_
                (lambda (_g2036220513_)
                  (if (gx#stx-pair? _g2036220513_)
                      (let ((_e2036620516_ (gx#syntax-e _g2036220513_)))
                        (let ((_hd2036720520_ (##car _e2036620516_))
                              (_tl2036820523_ (##cdr _e2036620516_)))
                          (if (gx#stx-pair? _tl2036820523_)
                              (let ((_e2036920526_
                                     (gx#syntax-e _tl2036820523_)))
                                (let ((_hd2037020530_ (##car _e2036920526_))
                                      (_tl2037120533_ (##cdr _e2036920526_)))
                                  (if (gx#stx-pair? _tl2037120533_)
                                      (let ((_e2037220536_
                                             (gx#syntax-e _tl2037120533_)))
                                        (let ((_hd2037320540_
                                               (##car _e2037220536_))
                                              (_tl2037420543_
                                               (##cdr _e2037220536_)))
                                          (if (gx#stx-pair/null?
                                               _tl2037420543_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2037420543_)
                                                        '0)
                                                  (let ((_g34810_
                                                         (gx#syntax-split-splice
                                                          _tl2037420543_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34811_
                                                             (values-count
                                                              _g34810_)))
                                                        (if (not (fx= _g34811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34811_)))
              (let ((_target2037520546_ (values-ref _g34810_ 0))
                    (_tl2037720549_ (values-ref _g34810_ 1)))
                (if (gx#stx-null? _tl2037720549_)
                    (letrec ((_loop2037820552_
                              (lambda (_hd2037620556_ _arg2038220559_)
                                (if (gx#stx-pair? _hd2037620556_)
                                    (let ((_e2037920562_
                                           (gx#syntax-e _hd2037620556_)))
                                      (let ((_lp-hd2038020566_
                                             (##car _e2037920562_))
                                            (_lp-tl2038120569_
                                             (##cdr _e2037920562_)))
                                        (_loop2037820552_
                                         _lp-tl2038120569_
                                         (cons _lp-hd2038020566_
                                               _arg2038220559_))))
                                    (let ((_arg2038320572_
                                           (reverse _arg2038220559_)))
                                      ((lambda (_L20576_ _L20578_ _L20579_)
                                         (if (if (gx#identifier? _L20579_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2059820601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2059920604_)
                     (cons _g2059820601_ _g2059920604_))
                   '()
                   _L20576_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L20578_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L20579_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2060620609_
                                                           _g2060720612_)
                                                    (cons _g2060620609_
                                                          _g2060720612_))
                                                  '()
                                                  _L20576_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2036020509_ _g2036220513_)))
                                       _arg2038320572_
                                       _hd2037320540_
                                       _hd2037020530_))))))
                      (_loop2037820552_ _target2037520546_ '()))
                    (_g2036020509_ _g2036220513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2036020509_
                                                   _g2036220513_))
                                              (_g2036020509_ _g2036220513_))))
                                      (_g2036020509_ _g2036220513_))))
                              (_g2036020509_ _g2036220513_))))
                      (_g2036020509_ _g2036220513_)))))
          (_g2035920615_ _$stx20356_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx20621_)
        (let* ((_g2062620666_
                (lambda (_g2062720662_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2062720662_)))
               (_g2062520767_
                (lambda (_g2062720670_)
                  (if (gx#stx-pair? _g2062720670_)
                      (let ((_e2064320673_ (gx#syntax-e _g2062720670_)))
                        (let ((_hd2064420677_ (##car _e2064320673_))
                              (_tl2064520680_ (##cdr _e2064320673_)))
                          (if (gx#stx-pair? _tl2064520680_)
                              (let ((_e2064620683_
                                     (gx#syntax-e _tl2064520680_)))
                                (let ((_hd2064720687_ (##car _e2064620683_))
                                      (_tl2064820690_ (##cdr _e2064620683_)))
                                  (if (gx#stx-pair? _tl2064820690_)
                                      (let ((_e2064920693_
                                             (gx#syntax-e _tl2064820690_)))
                                        (let ((_hd2065020697_
                                               (##car _e2064920693_))
                                              (_tl2065120700_
                                               (##cdr _e2064920693_)))
                                          (if (gx#stx-pair/null?
                                               _tl2065120700_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2065120700_)
                                                        '0)
                                                  (let ((_g34812_
                                                         (gx#syntax-split-splice
                                                          _tl2065120700_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34813_
                                                             (values-count
                                                              _g34812_)))
                                                        (if (not (fx= _g34813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34813_)))
              (let ((_target2065220703_ (values-ref _g34812_ 0))
                    (_tl2065420706_ (values-ref _g34812_ 1)))
                (if (gx#stx-null? _tl2065420706_)
                    (letrec ((_loop2065520709_
                              (lambda (_hd2065320713_ _rest2065920716_)
                                (if (gx#stx-pair? _hd2065320713_)
                                    (let ((_e2065620719_
                                           (gx#syntax-e _hd2065320713_)))
                                      (let ((_lp-hd2065720723_
                                             (##car _e2065620719_))
                                            (_lp-tl2065820726_
                                             (##cdr _e2065620719_)))
                                        (_loop2065520709_
                                         _lp-tl2065820726_
                                         (cons _lp-hd2065720723_
                                               _rest2065920716_))))
                                    (let ((_rest2066020729_
                                           (reverse _rest2065920716_)))
                                      ((lambda (_L20733_
                                                _L20735_
                                                _L20736_
                                                _L20737_)
                                         (cons _L20737_
                                               (cons (cons _L20737_
                                                           (cons _L20736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L20735_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2075820761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2075920764_)
                        (cons _g2075820761_ _g2075920764_))
                      '()
                      _L20733_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest2066020729_
                                       _hd2065020697_
                                       _hd2064720687_
                                       _hd2064420677_))))))
                      (_loop2065520709_ _target2065220703_ '()))
                    (_g2062620666_ _g2062720670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2062620666_
                                                   _g2062720670_))
                                              (_g2062620666_ _g2062720670_))))
                                      (_g2062620666_ _g2062720670_))))
                              (_g2062620666_ _g2062720670_))))
                      (_g2062620666_ _g2062720670_))))
               (_g2062420821_
                (lambda (_g2062720771_)
                  (if (gx#stx-pair? _g2062720771_)
                      (let ((_e2063020774_ (gx#syntax-e _g2062720771_)))
                        (let ((_hd2063120778_ (##car _e2063020774_))
                              (_tl2063220781_ (##cdr _e2063020774_)))
                          (if (gx#stx-pair? _tl2063220781_)
                              (let ((_e2063320784_
                                     (gx#syntax-e _tl2063220781_)))
                                (let ((_hd2063420788_ (##car _e2063320784_))
                                      (_tl2063520791_ (##cdr _e2063320784_)))
                                  (if (gx#stx-pair? _tl2063520791_)
                                      (let ((_e2063620794_
                                             (gx#syntax-e _tl2063520791_)))
                                        (let ((_hd2063720798_
                                               (##car _e2063620794_))
                                              (_tl2063820801_
                                               (##cdr _e2063620794_)))
                                          (if (gx#stx-null? _tl2063820801_)
                                              ((lambda (_L20804_ _L20806_)
                                                 (if (gx#identifier? _L20804_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L20806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L20804_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2062520767_
                                                      _g2062720771_)))
                                               _hd2063720798_
                                               _hd2063420788_)
                                              (_g2062520767_ _g2062720771_))))
                                      (_g2062520767_ _g2062720771_))))
                              (_g2062520767_ _g2062720771_))))
                      (_g2062520767_ _g2062720771_)))))
          (_g2062420821_ _$stx20621_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx20826_)
        (let* ((_g2083120883_
                (lambda (_g2083220879_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2083220879_)))
               (_g2083021012_
                (lambda (_g2083220887_)
                  (if (gx#stx-pair? _g2083220887_)
                      (let ((_e2085420890_ (gx#syntax-e _g2083220887_)))
                        (let ((_hd2085520894_ (##car _e2085420890_))
                              (_tl2085620897_ (##cdr _e2085420890_)))
                          (if (gx#stx-pair? _tl2085620897_)
                              (let ((_e2085720900_
                                     (gx#syntax-e _tl2085620897_)))
                                (let ((_hd2085820904_ (##car _e2085720900_))
                                      (_tl2085920907_ (##cdr _e2085720900_)))
                                  (if (gx#stx-pair? _tl2085920907_)
                                      (let ((_e2086020910_
                                             (gx#syntax-e _tl2085920907_)))
                                        (let ((_hd2086120914_
                                               (##car _e2086020910_))
                                              (_tl2086220917_
                                               (##cdr _e2086020910_)))
                                          (if (gx#stx-pair/null?
                                               _tl2086220917_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2086220917_)
                                                        '2)
                                                  (let ((_g34814_
                                                         (gx#syntax-split-splice
                                                          _tl2086220917_
                                                          '2)))
                                                    (begin
                                                      (let ((_g34815_
                                                             (values-count
                                                              _g34814_)))
                                                        (if (not (fx= _g34815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34815_)))
              (let ((_target2086320920_ (values-ref _g34814_ 0))
                    (_tl2086520923_ (values-ref _g34814_ 1)))
                (if (gx#stx-pair? _tl2086520923_)
                    (let ((_e2087220926_ (gx#syntax-e _tl2086520923_)))
                      (let ((_hd2087320930_ (##car _e2087220926_))
                            (_tl2087420933_ (##cdr _e2087220926_)))
                        (if (gx#stx-pair? _tl2087420933_)
                            (let ((_e2087520936_ (gx#syntax-e _tl2087420933_)))
                              (let ((_hd2087620940_ (##car _e2087520936_))
                                    (_tl2087720943_ (##cdr _e2087520936_)))
                                (if (gx#stx-null? _tl2087720943_)
                                    (letrec ((_loop2086620946_
                                              (lambda (_hd2086420950_
                                                       _path2087020953_)
                                                (if (gx#stx-pair?
                                                     _hd2086420950_)
                                                    (let ((_e2086720956_
                                                           (gx#syntax-e
                                                            _hd2086420950_)))
                                                      (let ((_lp-hd2086820960_
                                                             (##car _e2086720956_))
                                                            (_lp-tl2086920963_
                                                             (##cdr _e2086720956_)))
                                                        (_loop2086620946_
                                                         _lp-tl2086920963_
                                                         (cons _lp-hd2086820960_
                                                               _path2087020953_))))
                                                    (let ((_path2087120966_
                                                           (reverse _path2087020953_)))
                                                      ((lambda (_L20970_
                                                                _L20972_
                                                                _L20973_
                                                                _L20974_
                                                                _L20975_
                                                                _L20976_)
                                                         (cons _L20976_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L20975_
                                         (cons _L20974_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2100321006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2100421009_)
                  (cons _g2100321006_ _g2100421009_))
                '()
                _L20973_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L20972_ (cons _L20970_ '())))))
               _hd2087620940_
               _hd2087320930_
               _path2087120966_
               _hd2086120914_
               _hd2085820904_
               _hd2085520894_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2086620946_
                                       _target2086320920_
                                       '()))
                                    (_g2083120883_ _g2083220887_))))
                            (_g2083120883_ _g2083220887_))))
                    (_g2083120883_ _g2083220887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2083120883_
                                                   _g2083220887_))
                                              (_g2083120883_ _g2083220887_))))
                                      (_g2083120883_ _g2083220887_))))
                              (_g2083120883_ _g2083220887_))))
                      (_g2083120883_ _g2083220887_))))
               (_g2082921080_
                (lambda (_g2083221016_)
                  (if (gx#stx-pair? _g2083221016_)
                      (let ((_e2083621019_ (gx#syntax-e _g2083221016_)))
                        (let ((_hd2083721023_ (##car _e2083621019_))
                              (_tl2083821026_ (##cdr _e2083621019_)))
                          (if (gx#stx-pair? _tl2083821026_)
                              (let ((_e2083921029_
                                     (gx#syntax-e _tl2083821026_)))
                                (let ((_hd2084021033_ (##car _e2083921029_))
                                      (_tl2084121036_ (##cdr _e2083921029_)))
                                  (if (gx#stx-pair? _tl2084121036_)
                                      (let ((_e2084221039_
                                             (gx#syntax-e _tl2084121036_)))
                                        (let ((_hd2084321043_
                                               (##car _e2084221039_))
                                              (_tl2084421046_
                                               (##cdr _e2084221039_)))
                                          (if (gx#stx-pair? _tl2084421046_)
                                              (let ((_e2084521049_
                                                     (gx#syntax-e
                                                      _tl2084421046_)))
                                                (let ((_hd2084621053_
                                                       (##car _e2084521049_))
                                                      (_tl2084721056_
                                                       (##cdr _e2084521049_)))
                                                  (if (gx#stx-null?
                                                       _tl2084721056_)
                                                      ((lambda (_L21059_
                                                                _L21061_
                                                                _L21062_)
                                                         (if (gx#identifier?
                                                              _L21061_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L21062_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21061_ '()))
                                       (cons _L21059_ '()))))
                     (_g2083021012_ _g2083221016_)))
               _hd2084621053_
               _hd2084321043_
               _hd2084021033_)
              (_g2083021012_ _g2083221016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2083021012_ _g2083221016_))))
                                      (_g2083021012_ _g2083221016_))))
                              (_g2083021012_ _g2083221016_))))
                      (_g2083021012_ _g2083221016_)))))
          (_g2082921080_ _$stx20826_))))))
