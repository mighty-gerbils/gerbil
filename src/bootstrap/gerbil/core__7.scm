(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g35571_|
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
      (lambda _$args20312_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20312_)))
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
      (lambda _$args20308_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20308_)))
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
      (lambda _$args20304_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20304_)))
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
      (lambda _$args20300_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20300_)))
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
      (lambda _$args20296_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20296_)))
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
      (lambda _$args20292_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20292_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda2026420278_
             (lambda (_stx20266_ _is?20268_)
               (if (gx#identifier? _stx20266_)
                   (let ((_e2026920271_
                          (gx#syntax-local-value _stx20266_ false)))
                     (if _e2026920271_
                         (let ((_e20275_ _e2026920271_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e20275_)
                               (_is?20268_ _e20275_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g35557_
          (let ((_g35556_ (length _g35557_)))
            (cond ((##fx= _g35556_ 1)
                   (apply (lambda (_stx20282_)
                            (let ((_is?20285_ true))
                              (_opt-lambda2026420278_ _stx20282_ _is?20285_)))
                          _g35557_))
                  ((##fx= _g35556_ 2) (apply _opt-lambda2026420278_ _g35557_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g35557_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20262_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx20262_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20259_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx20259_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20253_)
        (if _id20253_
            (let ((_info20256_ (gx#syntax-local-value _id20253_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20256_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20256_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20018_ _stx20020_)
        (let* ((_g2002220042_
                (lambda (_g2002320038_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2002320038_)))
               (_g2002120249_
                (lambda (_g2002320046_)
                  (if (gx#stx-pair? _g2002320046_)
                      (let ((_e2002520049_ (gx#syntax-e _g2002320046_)))
                        (let ((_hd2002620053_ (##car _e2002520049_))
                              (_tl2002720056_ (##cdr _e2002520049_)))
                          (if (gx#stx-pair/null? _tl2002720056_)
                              (if (fx>= (gx#stx-length _tl2002720056_) '0)
                                  (let ((_g35558_
                                         (gx#syntax-split-splice
                                          _tl2002720056_
                                          '0)))
                                    (begin
                                      (let ((_g35559_
                                             (if (##values? _g35558_)
                                                 (##vector-length _g35558_)
                                                 1)))
                                        (if (not (##fx= _g35559_ 2))
                                            (error "Context expects 2 values"
                                                   _g35559_)))
                                      (let ((_target2002820059_
                                             (##vector-ref _g35558_ 0))
                                            (_tl2003020062_
                                             (##vector-ref _g35558_ 1)))
                                        (if (gx#stx-null? _tl2003020062_)
                                            (letrec ((_loop2003120065_
                                                      (lambda (_hd2002920069_
                                                               _arg2003520072_)
                                                        (if (gx#stx-pair?
                                                             _hd2002920069_)
                                                            (let ((_e2003220075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2002920069_)))
                      (let ((_lp-hd2003320079_ (##car _e2003220075_))
                            (_lp-tl2003420082_ (##cdr _e2003220075_)))
                        (_loop2003120065_
                         _lp-tl2003420082_
                         (cons _lp-hd2003320079_ _arg2003520072_))))
                    (let ((_arg2003620085_ (reverse _arg2003520072_)))
                      ((lambda (_L20089_)
                         (let* ((_g2010520136_
                                 (lambda (_g2010620132_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2010620132_)))
                                (_g2010420245_
                                 (lambda (_g2010620140_)
                                   (if (gx#stx-pair? _g2010620140_)
                                       (let ((_e2011320143_
                                              (gx#syntax-e _g2010620140_)))
                                         (let ((_hd2011420147_
                                                (##car _e2011320143_))
                                               (_tl2011520150_
                                                (##cdr _e2011320143_)))
                                           (if (gx#stx-pair? _tl2011520150_)
                                               (let ((_e2011620153_
                                                      (gx#syntax-e
                                                       _tl2011520150_)))
                                                 (let ((_hd2011720157_
                                                        (##car _e2011620153_))
                                                       (_tl2011820160_
                                                        (##cdr _e2011620153_)))
                                                   (if (gx#stx-pair?
                                                        _tl2011820160_)
                                                       (let ((_e2011920163_
                                                              (gx#syntax-e
                                                               _tl2011820160_)))
                                                         (let ((_hd2012020167_
                                                                (##car _e2011920163_))
                                                               (_tl2012120170_
                                                                (##cdr _e2011920163_)))
                                                           (if (gx#stx-pair?
                                                                _tl2012120170_)
                                                               (let ((_e2012220173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2012120170_)))
                         (let ((_hd2012320177_ (##car _e2012220173_))
                               (_tl2012420180_ (##cdr _e2012220173_)))
                           (if (gx#stx-pair? _tl2012420180_)
                               (let ((_e2012520183_
                                      (gx#syntax-e _tl2012420180_)))
                                 (let ((_hd2012620187_ (##car _e2012520183_))
                                       (_tl2012720190_ (##cdr _e2012520183_)))
                                   (if (gx#stx-pair? _tl2012720190_)
                                       (let ((_e2012820193_
                                              (gx#syntax-e _tl2012720190_)))
                                         (let ((_hd2012920197_
                                                (##car _e2012820193_))
                                               (_tl2013020200_
                                                (##cdr _e2012820193_)))
                                           (if (gx#stx-null? _tl2013020200_)
                                               ((lambda (_L20203_
                                                         _L20205_
                                                         _L20206_
                                                         _L20207_
                                                         _L20208_
                                                         _L20209_)
                                                  (let ()
                                                    (cons _L20207_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g2023620239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2023720242_)
                             (cons _g2023620239_ _g2023720242_))
                           '()
                           _L20089_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2012920197_
                                                _hd2012620187_
                                                _hd2012320177_
                                                _hd2012020167_
                                                _hd2011720157_
                                                _hd2011420147_)
                                               (_g2010520136_ _g2010620140_))))
                                       (_g2010520136_ _g2010620140_))))
                               (_g2010520136_ _g2010620140_))))
                       (_g2010520136_ _g2010620140_))))
               (_g2010520136_ _g2010620140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2010520136_ _g2010620140_))))
                                       (_g2010520136_ _g2010620140_)))))
                           (_g2010420245_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self20018_))))
                       _arg2003620085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2003120065_
                                               _target2002820059_
                                               '()))
                                            (_g2002220042_ _g2002320046_)))))
                                  (_g2002220042_ _g2002320046_))
                              (_g2002220042_ _g2002320046_))))
                      (_g2002220042_ _g2002320046_)))))
          (_g2002120249_ _stx20020_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20009_)
        (letrec ((_body-opt?20012_
                  (lambda (_key20015_)
                    (memq (gx#stx-e _key20015_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20009_ _body-opt?20012_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18837_
               _id18839_
               _super-ref18840_
               _els18841_
               _body18842_
               _struct?18843_)
        (letrec* ((_wrap18845_
                   (lambda (_e-stx20006_)
                     (gx#stx-wrap-source
                      _e-stx20006_
                      (gx#stx-source _stx18837_))))
                  (_make-id18847_
                   (if (uninterned-symbol? (gx#stx-e _id18839_))
                       (lambda _g35560_ (gx#genident _id18839_))
                       (lambda _args20003_
                         (apply gx#stx-identifier _id18839_ _args20003_)))))
          (begin
            (gx#check-duplicate-identifiers _els18841_ _stx18837_)
            (let* ((_name18849_ (symbol->string (gx#stx-e _id18839_)))
                   (_super18852_
                    (if _struct?18843_
                        (if _super-ref18840_
                            (gx#syntax-local-value _super-ref18840_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18840_)))
                   (_g1885518863_
                    (lambda (_g1885618859_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1885618859_)))
                   (_g1885419997_
                    (lambda (_g1885618867_)
                      ((lambda (_L18870_)
                         (let ()
                           (let* ((_g1888618894_
                                   (lambda (_g1888718890_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1888718890_)))
                                  (_g1888519993_
                                   (lambda (_g1888718898_)
                                     ((lambda (_L18901_)
                                        (let ()
                                          (let* ((_g1891418922_
                                                  (lambda (_g1891518918_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1891518918_)))
                                                 (_g1891319989_
                                                  (lambda (_g1891518926_)
                                                    ((lambda (_L18929_)
                                                       (let ()
                                                         (let* ((_g1894218950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1894318946_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1894318946_)))
                        (_g1894119985_
                         (lambda (_g1894318954_)
                           ((lambda (_L18957_)
                              (let ()
                                (let* ((_g1897018978_
                                        (lambda (_g1897118974_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1897118974_)))
                                       (_g1896919981_
                                        (lambda (_g1897118982_)
                                          ((lambda (_L18985_)
                                             (let ()
                                               (let* ((_g1899819006_
                                                       (lambda (_g1899919002_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1899919002_)))
                                                      (_g1899719977_
                                                       (lambda (_g1899919010_)
                                                         ((lambda (_L19013_)
                                                            (let ()
                                                              (let* ((_g1902619043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1902719039_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1902719039_)))
                             (_g1902519973_
                              (lambda (_g1902719047_)
                                (if (gx#stx-pair/null? _g1902719047_)
                                    (if (fx>= (gx#stx-length _g1902719047_) '0)
                                        (let ((_g35561_
                                               (gx#syntax-split-splice
                                                _g1902719047_
                                                '0)))
                                          (begin
                                            (let ((_g35562_
                                                   (if (##values? _g35561_)
                                                       (##vector-length
                                                        _g35561_)
                                                       1)))
                                              (if (not (##fx= _g35562_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35562_)))
                                            (let ((_target1902919050_
                                                   (##vector-ref _g35561_ 0))
                                                  (_tl1903119053_
                                                   (##vector-ref _g35561_ 1)))
                                              (if (gx#stx-null? _tl1903119053_)
                                                  (letrec ((_loop1903219056_
                                                            (lambda (_hd1903019060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1903619063_)
                      (if (gx#stx-pair? _hd1903019060_)
                          (let ((_e1903319066_ (gx#syntax-e _hd1903019060_)))
                            (let ((_lp-hd1903419070_ (##car _e1903319066_))
                                  (_lp-tl1903519073_ (##cdr _e1903319066_)))
                              (_loop1903219056_
                               _lp-tl1903519073_
                               (cons _lp-hd1903419070_ _attr1903619063_))))
                          (let ((_attr1903719076_ (reverse _attr1903619063_)))
                            ((lambda (_L19080_)
                               (let ()
                                 (let* ((_g1909719114_
                                         (lambda (_g1909819110_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1909819110_)))
                                        (_g1909619964_
                                         (lambda (_g1909819118_)
                                           (if (gx#stx-pair/null?
                                                _g1909819118_)
                                               (if (fx>= (gx#stx-length
                                                          _g1909819118_)
                                                         '0)
                                                   (let ((_g35563_
                                                          (gx#syntax-split-splice
                                                           _g1909819118_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35564_
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g35563_)
                          (##vector-length _g35563_)
                          1)))
                 (if (not (##fx= _g35564_ 2))
                     (error "Context expects 2 values" _g35564_)))
               (let ((_target1910019121_ (##vector-ref _g35563_ 0))
                     (_tl1910219124_ (##vector-ref _g35563_ 1)))
                 (if (gx#stx-null? _tl1910219124_)
                     (letrec ((_loop1910319127_
                               (lambda (_hd1910119131_ _getf1910719134_)
                                 (if (gx#stx-pair? _hd1910119131_)
                                     (let ((_e1910419137_
                                            (gx#syntax-e _hd1910119131_)))
                                       (let ((_lp-hd1910519141_
                                              (##car _e1910419137_))
                                             (_lp-tl1910619144_
                                              (##cdr _e1910419137_)))
                                         (_loop1910319127_
                                          _lp-tl1910619144_
                                          (cons _lp-hd1910519141_
                                                _getf1910719134_))))
                                     (let ((_getf1910819147_
                                            (reverse _getf1910719134_)))
                                       ((lambda (_L19151_)
                                          (let ()
                                            (let* ((_g1916819185_
                                                    (lambda (_g1916919181_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1916919181_)))
                                                   (_g1916719955_
                                                    (lambda (_g1916919189_)
                                                      (if (gx#stx-pair/null?
                                                           _g1916919189_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1916919189_)
                            '0)
                      (let ((_g35565_
                             (gx#syntax-split-splice _g1916919189_ '0)))
                        (begin
                          (let ((_g35566_
                                 (if (##values? _g35565_)
                                     (##vector-length _g35565_)
                                     1)))
                            (if (not (##fx= _g35566_ 2))
                                (error "Context expects 2 values" _g35566_)))
                          (let ((_target1917119192_ (##vector-ref _g35565_ 0))
                                (_tl1917319195_ (##vector-ref _g35565_ 1)))
                            (if (gx#stx-null? _tl1917319195_)
                                (letrec ((_loop1917419198_
                                          (lambda (_hd1917219202_
                                                   _setf1917819205_)
                                            (if (gx#stx-pair? _hd1917219202_)
                                                (let ((_e1917519208_
                                                       (gx#syntax-e
                                                        _hd1917219202_)))
                                                  (let ((_lp-hd1917619212_
                                                         (##car _e1917519208_))
                                                        (_lp-tl1917719215_
                                                         (##cdr _e1917519208_)))
                                                    (_loop1917419198_
                                                     _lp-tl1917719215_
                                                     (cons _lp-hd1917619212_
                                                           _setf1917819205_))))
                                                (let ((_setf1917919218_
                                                       (reverse _setf1917819205_)))
                                                  ((lambda (_L19222_)
                                                     (let ()
                                                       (let* ((_type-attr19267_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els18841_)
                           '()
                           (if _struct?18843_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L19222_
                                              _L19151_
                                              _L19080_)
                                             (foldr (lambda (_g1923819243_
                                                             _g1923919246_
                                                             _g1924019248_
                                                             _g1924119250_)
                                                      (cons (cons _g1924019248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1923919246_ (cons _g1923819243_ '())))
                    _g1924119250_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L19222_
                                                    _L19151_
                                                    _L19080_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L19222_
                                              _L19151_
                                              _L19080_)
                                             (foldr (lambda (_g1925219257_
                                                             _g1925319260_
                                                             _g1925419262_
                                                             _g1925519264_)
                                                      (cons (cons _g1925419262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1925319260_ (cons _g1925219257_ '())))
                    _g1925519264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L19222_
                                                    _L19151_
                                                    _L19080_))
                                           '())))))
                      (_type-name19274_
                       (cons 'name:
                             (cons (let ((_$e19270_
                                          (gx#stx-getq 'name: _body18842_)))
                                     (if _$e19270_ _$e19270_ _id18839_))
                                   '())))
                      (_type-id19289_
                       (let ((_$e19285_
                              (let ((_e1927619278_
                                     (gx#stx-getq 'id: _body18842_)))
                                (if _e1927619278_
                                    (let ((_e19282_ _e1927619278_))
                                      (cons 'id: (cons _e19282_ '())))
                                    '#f))))
                         (if _$e19285_ _$e19285_ '())))
                      (_type-ctor19304_
                       (let ((_$e19300_
                              (let ((_e1929119293_
                                     (gx#stx-getq 'constructor: _body18842_)))
                                (if _e1929119293_
                                    (let ((_e19297_ _e1929119293_))
                                      (cons 'constructor: (cons _e19297_ '())))
                                    '#f))))
                         (if _$e19300_ _$e19300_ '())))
                      (_plist19348_
                       (let* ((_plist19311_
                               (let ((_$e19307_
                                      (gx#stx-getq 'plist: _body18842_)))
                                 (if _$e19307_ _$e19307_ '())))
                              (_plist19314_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body18842_))
                                   (cons (cons 'transparent: '#t) _plist19311_)
                                   _plist19311_))
                              (_plist19317_
                               (if (gx#stx-e (gx#stx-getq 'final: _body18842_))
                                   (cons (cons 'final: '#t) _plist19314_)
                                   _plist19314_))
                              (_plist19330_
                               (let ((_$e19320_
                                      (gx#stx-e
                                       (gx#stx-getq 'print: _body18842_))))
                                 (if _$e19320_
                                     ((lambda (_print19324_)
                                        (let ((_print19327_
                                               (if (eq? _print19324_ '#t)
                                                   _els18841_
                                                   _print19324_)))
                                          (cons (cons 'print: _print19327_)
                                                _plist19317_)))
                                      _$e19320_)
                                     _plist19317_)))
                              (_plist19343_
                               (let ((_$e19333_
                                      (gx#stx-e
                                       (gx#stx-getq 'equal: _body18842_))))
                                 (if _$e19333_
                                     ((lambda (_equal19337_)
                                        (let ((_equal19340_
                                               (if (eq? _equal19337_ '#t)
                                                   _els18841_
                                                   _equal19337_)))
                                          (cons (cons 'equal: _equal19340_)
                                                _plist19330_)))
                                      _$e19333_)
                                     _plist19330_))))
                         _plist19343_))
                      (_type-plist19388_
                       (if (null? _plist19348_)
                           _plist19348_
                           (let* ((_g1935119359_
                                   (lambda (_g1935219355_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1935219355_)))
                                  (_g1935019384_
                                   (lambda (_g1935219363_)
                                     ((lambda (_L19366_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L19366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1935219363_))))
                             (_g1935019384_ _plist19348_))))
                      (_type-unchecked19403_
                       (let ((_$e19399_
                              (let ((_e1939019392_
                                     (gx#stx-getq 'unchecked: _body18842_)))
                                (if _e1939019392_
                                    (let ((_e19396_ _e1939019392_))
                                      (cons 'unchecked: (cons _e19396_ '())))
                                    '#f))))
                         (if _$e19399_ _$e19399_ '())))
                      (_g1940619423_
                       (lambda (_g1940719419_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1940719419_)))
                      (_g1940519951_
                       (lambda (_g1940719427_)
                         (if (gx#stx-pair/null? _g1940719427_)
                             (if (fx>= (gx#stx-length _g1940719427_) '0)
                                 (let ((_g35567_
                                        (gx#syntax-split-splice
                                         _g1940719427_
                                         '0)))
                                   (begin
                                     (let ((_g35568_
                                            (if (##values? _g35567_)
                                                (##vector-length _g35567_)
                                                1)))
                                       (if (not (##fx= _g35568_ 2))
                                           (error "Context expects 2 values"
                                                  _g35568_)))
                                     (let ((_target1940919430_
                                            (##vector-ref _g35567_ 0))
                                           (_tl1941119433_
                                            (##vector-ref _g35567_ 1)))
                                       (if (gx#stx-null? _tl1941119433_)
                                           (letrec ((_loop1941219436_
                                                     (lambda (_hd1941019440_
                                                              _type-body1941619443_)
                                                       (if (gx#stx-pair?
                                                            _hd1941019440_)
                                                           (let ((_e1941319446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1941019440_)))
                     (let ((_lp-hd1941419450_ (##car _e1941319446_))
                           (_lp-tl1941519453_ (##cdr _e1941319446_)))
                       (_loop1941219436_
                        _lp-tl1941519453_
                        (cons _lp-hd1941419450_ _type-body1941619443_))))
                   (let ((_type-body1941719456_
                          (reverse _type-body1941619443_)))
                     ((lambda (_L19460_)
                        (let ()
                          (let* ((_g1947719485_
                                  (lambda (_g1947819481_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1947819481_)))
                                 (_g1947619939_
                                  (lambda (_g1947819489_)
                                    ((lambda (_L19492_)
                                       (let ()
                                         (let* ((_g1950519513_
                                                 (lambda (_g1950619509_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1950619509_)))
                                                (_g1950419935_
                                                 (lambda (_g1950619517_)
                                                   ((lambda (_L19520_)
                                                      (let ()
                                                        (let* ((_g1953319541_
                                                                (lambda (_g1953419537_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1953419537_)))
                       (_g1953219849_
                        (lambda (_g1953419545_)
                          ((lambda (_L19548_)
                             (let ()
                               (let* ((_g1956119569_
                                       (lambda (_g1956219565_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1956219565_)))
                                      (_g1956019845_
                                       (lambda (_g1956219573_)
                                         ((lambda (_L19576_)
                                            (let ()
                                              (let* ((_g1958919597_
                                                      (lambda (_g1959019593_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1959019593_)))
                                                     (_g1958819841_
                                                      (lambda (_g1959019601_)
                                                        ((lambda (_L19604_)
                                                           (let ()
                                                             (let* ((_g1961719625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1961819621_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1961819621_)))
                            (_g1961619799_
                             (lambda (_g1961819629_)
                               ((lambda (_L19632_)
                                  (let ()
                                    (let* ((_g1964519653_
                                            (lambda (_g1964619649_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1964619649_)))
                                           (_g1964419795_
                                            (lambda (_g1964619657_)
                                              ((lambda (_L19660_)
                                                 (let ()
                                                   (let* ((_g1967319681_
                                                           (lambda (_g1967419677_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1967419677_)))
                                                          (_g1967219791_
                                                           (lambda (_g1967419685_)
                                                             ((lambda (_L19688_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1970119709_
                                  (lambda (_g1970219705_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1970219705_)))
                                 (_g1970019787_
                                  (lambda (_g1970219713_)
                                    ((lambda (_L19716_)
                                       (let ()
                                         (let* ((_g1972919737_
                                                 (lambda (_g1973019733_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1973019733_)))
                                                (_g1972819759_
                                                 (lambda (_g1973019741_)
                                                   ((lambda (_L19744_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap18845_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L19492_ (cons _L19744_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1973019741_))))
                                           (_g1972819759_
                                            (_wrap18845_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L18901_
                                                         (cons (cons _L19520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L18929_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L19548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L18929_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L18957_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L18985_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1976219769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1976319772_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1976219769_ '()))
                                _g1976319772_))
                        '()
                        _L19151_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1976419775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1976519778_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1976419775_ '()))
                                      _g1976519778_))
                              '()
                              _L19222_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L19576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L19604_ '()))
                                     (cons _L19632_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L19660_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L19688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L19716_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1976619781_
                                                         _g1976719784_)
                                                  (cons _g1976619781_
                                                        _g1976719784_))
                                                '()
                                                _L19080_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1970219713_))))
                            (_g1970019787_ _plist19348_))))
                      _g1967419685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1967219791_
                                                      (if (not (null? _type-ctor19304_))
                                                          (cadr _type-ctor19304_)
                                                          '#f)))))
                                               _g1964619657_))))
                                      (_g1964419795_
                                       (cadr _type-name19274_)))))
                                _g1961819629_))))
                       (_g1961619799_
                        (let ((_quote-e19838_
                               (lambda (_x-ref19803_)
                                 (if _x-ref19803_
                                     (let* ((_g1980619814_
                                             (lambda (_g1980719810_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1980719810_)))
                                            (_g1980519834_
                                             (lambda (_g1980719818_)
                                               ((lambda (_L19821_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L19821_
                                                                '()))))
                                                _g1980719818_))))
                                       (_g1980519834_ _x-ref19803_))
                                     '#f))))
                          (if _struct?18843_
                              (_quote-e19838_ _super-ref18840_)
                              (cons 'list
                                    (map _quote-e19838_
                                         _super-ref18840_))))))))
                 _g1959019601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1958819841_
                                                 (if (not (null? _type-id19289_))
                                                     (cadr _type-id19289_)
                                                     '#f)))))
                                          _g1956219573_))))
                                 (_g1956019845_
                                  (if _struct?18843_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1953419545_))))
                  (_g1953219849_
                   (if _struct?18843_
                       (if _super18852_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L19013_ '()))
                           '#f)
                       (let* ((_g1985319870_
                               (lambda (_g1985419866_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1985419866_)))
                              (_g1985219931_
                               (lambda (_g1985419874_)
                                 (if (gx#stx-pair/null? _g1985419874_)
                                     (if (fx>= (gx#stx-length _g1985419874_)
                                               '0)
                                         (let ((_g35569_
                                                (gx#syntax-split-splice
                                                 _g1985419874_
                                                 '0)))
                                           (begin
                                             (let ((_g35570_
                                                    (if (##values? _g35569_)
                                                        (##vector-length
                                                         _g35569_)
                                                        1)))
                                               (if (not (##fx= _g35570_ 2))
                                                   (error "Context expects 2 values"
                                                          _g35570_)))
                                             (let ((_target1985619877_
                                                    (##vector-ref _g35569_ 0))
                                                   (_tl1985819880_
                                                    (##vector-ref _g35569_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1985819880_)
                                                   (letrec ((_loop1985919883_
                                                             (lambda (_hd1985719887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1986319890_)
                       (if (gx#stx-pair? _hd1985719887_)
                           (let ((_e1986019893_ (gx#syntax-e _hd1985719887_)))
                             (let ((_lp-hd1986119897_ (##car _e1986019893_))
                                   (_lp-tl1986219900_ (##cdr _e1986019893_)))
                               (_loop1985919883_
                                _lp-tl1986219900_
                                (cons _lp-hd1986119897_
                                      _super-id1986319890_))))
                           (let ((_super-id1986419903_
                                  (reverse _super-id1986319890_)))
                             ((lambda (_L19907_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1992219925_
                                                          _g1992319928_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1992219925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1992319928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L19907_)))))
                              _super-id1986419903_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1985919883_
                                                      _target1985619877_
                                                      '()))
                                                   (_g1985319870_
                                                    _g1985419874_)))))
                                         (_g1985319870_ _g1985419874_))
                                     (_g1985319870_ _g1985419874_)))))
                         (_g1985219931_ _L19013_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1950619517_))))
                                           (_g1950419935_
                                            (if _struct?18843_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1947819489_))))
                            (_g1947619939_
                             (_wrap18845_
                              (cons _L18870_
                                    (cons _L18929_
                                          (cons _L19013_
                                                (cons _L18957_
                                                      (cons _L18985_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1994219945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1994319948_)
                               (cons _g1994219945_ _g1994319948_))
                             '()
                             _L19460_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1941719456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1941219436_
                                              _target1940919430_
                                              '()))
                                           (_g1940619423_ _g1940719427_)))))
                                 (_g1940619423_ _g1940719427_))
                             (_g1940619423_ _g1940719427_)))))
                 (_g1940519951_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked19403_
                                                     _type-plist19388_)
                                              _type-ctor19304_)
                                       _type-name19274_)
                                _type-id19289_)
                         _type-attr19267_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1917919218_))))))
                                  (_loop1917419198_ _target1917119192_ '()))
                                (_g1916819185_ _g1916919189_)))))
                      (_g1916819185_ _g1916919189_))
                  (_g1916819185_ _g1916919189_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1916719955_
                                               (gx#stx-map
                                                (lambda (_g1995819960_)
                                                  (_make-id18847_
                                                   _name18849_
                                                   '"-"
                                                   _g1995819960_
                                                   '"-set!"))
                                                _els18841_)))))
                                        _getf1910819147_))))))
                       (_loop1910319127_ _target1910019121_ '()))
                     (_g1909719114_ _g1909819118_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1909719114_
                                                    _g1909819118_))
                                               (_g1909719114_
                                                _g1909819118_)))))
                                   (_g1909619964_
                                    (gx#stx-map
                                     (lambda (_g1996719969_)
                                       (_make-id18847_
                                        _name18849_
                                        '"-"
                                        _g1996719969_))
                                     _els18841_)))))
                             _attr1903719076_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1903219056_
                                                     _target1902919050_
                                                     '()))
                                                  (_g1902619043_
                                                   _g1902719047_)))))
                                        (_g1902619043_ _g1902719047_))
                                    (_g1902619043_ _g1902719047_)))))
                        (_g1902519973_ _els18841_))))
                  _g1899919010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1899719977_
                                                  (if _struct?18843_
                                                      (if _super18852_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18852_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18852_))))))
                                           _g1897118982_))))
                                  (_g1896919981_
                                   (_make-id18847_ _name18849_ '"?")))))
                            _g1894318954_))))
                   (_g1894119985_ (_make-id18847_ '"make-" _name18849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1891518926_))))
                                            (_g1891319989_
                                             (_make-id18847_
                                              _name18849_
                                              '"::t")))))
                                      _g1888718898_))))
                             (_g1888519993_ _id18839_))))
                       _g1885618867_))))
              (_g1885419997_
               (if _struct?18843_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20325_)
        (letrec ((_generate20328_
                  (lambda (_hd20412_ _fields20414_ _body20415_)
                    (let* ((_g2041820433_
                            (lambda (_g2041920429_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2041920429_)))
                           (_g2041720444_
                            (lambda (_g2041920437_)
                              ((lambda ()
                                 (if (gx#identifier? _hd20412_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20325_
                                      _hd20412_
                                      '#f
                                      _fields20414_
                                      _body20415_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx20325_
                                      _hd20412_))))))
                           (_g2041620488_
                            (lambda (_g2041920448_)
                              (if (gx#stx-pair? _g2041920448_)
                                  (let ((_e2042220451_
                                         (gx#syntax-e _g2041920448_)))
                                    (let ((_hd2042320455_
                                           (##car _e2042220451_))
                                          (_tl2042420458_
                                           (##cdr _e2042220451_)))
                                      (if (gx#stx-pair? _tl2042420458_)
                                          (let ((_e2042520461_
                                                 (gx#syntax-e _tl2042420458_)))
                                            (let ((_hd2042620465_
                                                   (##car _e2042520461_))
                                                  (_tl2042720468_
                                                   (##cdr _e2042520461_)))
                                              (if (gx#stx-null? _tl2042720468_)
                                                  ((lambda (_L20471_ _L20473_)
                                                     (if (if (gx#identifier?
                                                              _L20473_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L20471_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx20325_
                                                          _L20473_
                                                          _L20471_
                                                          _fields20414_
                                                          _body20415_
                                                          '#t)
                                                         (_g2041720444_
                                                          _g2041920448_)))
                                                   _hd2042620465_
                                                   _hd2042320455_)
                                                  (_g2041720444_
                                                   _g2041920448_))))
                                          (_g2041720444_ _g2041920448_))))
                                  (_g2041720444_ _g2041920448_)))))
                      (_g2041620488_ _hd20412_)))))
          (let* ((_g2033120350_
                  (lambda (_g2033220346_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2033220346_)))
                 (_g2033020408_
                  (lambda (_g2033220354_)
                    (if (gx#stx-pair? _g2033220354_)
                        (let ((_e2033620357_ (gx#syntax-e _g2033220354_)))
                          (let ((_hd2033720361_ (##car _e2033620357_))
                                (_tl2033820364_ (##cdr _e2033620357_)))
                            (if (gx#stx-pair? _tl2033820364_)
                                (let ((_e2033920367_
                                       (gx#syntax-e _tl2033820364_)))
                                  (let ((_hd2034020371_ (##car _e2033920367_))
                                        (_tl2034120374_ (##cdr _e2033920367_)))
                                    (if (gx#stx-pair? _tl2034120374_)
                                        (let ((_e2034220377_
                                               (gx#syntax-e _tl2034120374_)))
                                          (let ((_hd2034320381_
                                                 (##car _e2034220377_))
                                                (_tl2034420384_
                                                 (##cdr _e2034220377_)))
                                            ((lambda (_L20387_
                                                      _L20389_
                                                      _L20390_)
                                               (if (if (gx#identifier-list?
                                                        _L20389_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20387_)
                                                       '#f)
                                                   (_generate20328_
                                                    _L20390_
                                                    _L20389_
                                                    _L20387_)
                                                   (_g2033120350_
                                                    _g2033220354_)))
                                             _tl2034420384_
                                             _hd2034320381_
                                             _hd2034020371_)))
                                        (_g2033120350_ _g2033220354_))))
                                (_g2033120350_ _g2033220354_))))
                        (_g2033120350_ _g2033220354_)))))
            (_g2033020408_ _stx20325_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20492_)
        (letrec ((_generate20495_
                  (lambda (_hd20579_ _slots20581_ _body20582_)
                    (let* ((_g2058520597_
                            (lambda (_g2058620593_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2058620593_)))
                           (_g2058420608_
                            (lambda (_g2058620601_)
                              ((lambda ()
                                 (if (gx#identifier? _hd20579_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20492_
                                      _hd20579_
                                      '()
                                      _slots20581_
                                      _body20582_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx20492_
                                      _hd20579_))))))
                           (_g2058320640_
                            (lambda (_g2058620612_)
                              (if (gx#stx-pair? _g2058620612_)
                                  (let ((_e2058920615_
                                         (gx#syntax-e _g2058620612_)))
                                    (let ((_hd2059020619_
                                           (##car _e2058920615_))
                                          (_tl2059120622_
                                           (##cdr _e2058920615_)))
                                      ((lambda (_L20625_ _L20627_)
                                         (if (if (gx#stx-list? _L20625_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L20625_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx20492_
                                              _L20627_
                                              (gx#syntax->list _L20625_)
                                              _slots20581_
                                              _body20582_
                                              '#f)
                                             (_g2058420608_ _g2058620612_)))
                                       _tl2059120622_
                                       _hd2059020619_)))
                                  (_g2058420608_ _g2058620612_)))))
                      (_g2058320640_ _hd20579_)))))
          (let* ((_g2049820517_
                  (lambda (_g2049920513_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2049920513_)))
                 (_g2049720575_
                  (lambda (_g2049920521_)
                    (if (gx#stx-pair? _g2049920521_)
                        (let ((_e2050320524_ (gx#syntax-e _g2049920521_)))
                          (let ((_hd2050420528_ (##car _e2050320524_))
                                (_tl2050520531_ (##cdr _e2050320524_)))
                            (if (gx#stx-pair? _tl2050520531_)
                                (let ((_e2050620534_
                                       (gx#syntax-e _tl2050520531_)))
                                  (let ((_hd2050720538_ (##car _e2050620534_))
                                        (_tl2050820541_ (##cdr _e2050620534_)))
                                    (if (gx#stx-pair? _tl2050820541_)
                                        (let ((_e2050920544_
                                               (gx#syntax-e _tl2050820541_)))
                                          (let ((_hd2051020548_
                                                 (##car _e2050920544_))
                                                (_tl2051120551_
                                                 (##cdr _e2050920544_)))
                                            ((lambda (_L20554_
                                                      _L20556_
                                                      _L20557_)
                                               (if (if (gx#identifier-list?
                                                        _L20556_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20554_)
                                                       '#f)
                                                   (_generate20495_
                                                    _L20557_
                                                    _L20556_
                                                    _L20554_)
                                                   (_g2049820517_
                                                    _g2049920521_)))
                                             _tl2051120551_
                                             _hd2051020548_
                                             _hd2050720538_)))
                                        (_g2049820517_ _g2049920521_))))
                                (_g2049820517_ _g2049920521_))))
                        (_g2049820517_ _g2049920521_)))))
            (_g2049720575_ _stx20492_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20644_)
        (letrec ((_wrap20647_
                  (lambda (_e-stx20984_)
                    (gx#stx-wrap-source
                     _e-stx20984_
                     (gx#stx-source _stx20644_))))
                 (_method-opt?20649_
                  (lambda (_x20981_) (memq (gx#stx-e _x20981_) '(rebind:)))))
          (let* ((_g2065120680_
                  (lambda (_g2065220676_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2065220676_)))
                 (_g2065020977_
                  (lambda (_g2065220684_)
                    (if (gx#stx-pair? _g2065220684_)
                        (let ((_e2065720687_ (gx#syntax-e _g2065220684_)))
                          (let ((_hd2065820691_ (##car _e2065720687_))
                                (_tl2065920694_ (##cdr _e2065720687_)))
                            (if (gx#stx-pair? _tl2065920694_)
                                (let ((_e2066020697_
                                       (gx#syntax-e _tl2065920694_)))
                                  (let ((_hd2066120701_ (##car _e2066020697_))
                                        (_tl2066220704_ (##cdr _e2066020697_)))
                                    (if (gx#stx-pair? _hd2066120701_)
                                        (let ((_e2066320707_
                                               (gx#syntax-e _hd2066120701_)))
                                          (let ((_hd2066420711_
                                                 (##car _e2066320707_))
                                                (_tl2066520714_
                                                 (##cdr _e2066320707_)))
                                            (if (gx#identifier? _hd2066420711_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g35571_|
                                                     _hd2066420711_)
                                                    (if (gx#stx-pair?
                                                         _tl2066520714_)
                                                        (let ((_e2066620717_
                                                               (gx#syntax-e
                                                                _tl2066520714_)))
                                                          (let ((_hd2066720721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2066620717_))
                        (_tl2066820724_ (##cdr _e2066620717_)))
                    (if (gx#stx-pair? _tl2066820724_)
                        (let ((_e2066920727_ (gx#syntax-e _tl2066820724_)))
                          (let ((_hd2067020731_ (##car _e2066920727_))
                                (_tl2067120734_ (##cdr _e2066920727_)))
                            (if (gx#stx-null? _tl2067120734_)
                                (if (gx#stx-pair? _tl2066220704_)
                                    (let ((_e2067220737_
                                           (gx#syntax-e _tl2066220704_)))
                                      (let ((_hd2067320741_
                                             (##car _e2067220737_))
                                            (_tl2067420744_
                                             (##cdr _e2067220737_)))
                                        ((lambda (_L20747_
                                                  _L20749_
                                                  _L20750_
                                                  _L20751_)
                                           (if (if (gx#identifier? _L20751_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L20750_)
                                                       (gx#stx-plist?
                                                        _L20747_
                                                        _method-opt?20649_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass20776_
                                                       (gx#syntax-local-value
                                                        _L20750_))
                                                      (_rebind?20779_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20747_))
                                                           '#t
                                                           '#f))
                                                      (_g2078220790_
                                                       (lambda (_g2078320786_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2078320786_)))
                                                      (_g2078120973_
                                                       (lambda (_g2078320794_)
                                                         ((lambda (_L20797_)
                                                            (let ()
                                                              (let* ((_g2081120819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2081220815_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2081220815_)))
                             (_g2081020969_
                              (lambda (_g2081220823_)
                                ((lambda (_L20826_)
                                   (let ()
                                     (let* ((_g2083920847_
                                             (lambda (_g2084020843_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2084020843_)))
                                            (_g2083820965_
                                             (lambda (_g2084020851_)
                                               ((lambda (_L20854_)
                                                  (let ()
                                                    (let* ((_g2086720875_
                                                            (lambda (_g2086820871_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2086820871_)))
                                                           (_g2086620961_
                                                            (lambda (_g2086820879_)
                                                              ((lambda (_L20882_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2089520903_
                                   (lambda (_g2089620899_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2089620899_)))
                                  (_g2089420957_
                                   (lambda (_g2089620907_)
                                     ((lambda (_L20910_)
                                        (let ()
                                          (let* ((_g2092320931_
                                                  (lambda (_g2092420927_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2092420927_)))
                                                 (_g2092220953_
                                                  (lambda (_g2092420935_)
                                                    ((lambda (_L20938_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20647_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20882_ (cons _L20938_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2092420935_))))
                                            (_g2092220953_
                                             (_wrap20647_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20797_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20751_ '()))
                        (cons _L20826_ (cons _L20910_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2089620907_))))
                             (_g2089420957_ _rebind?20779_))))
                       _g2086820879_))))
              (_g2086620961_
               (_wrap20647_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20826_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20854_
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
                                                            (cons _L20797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20751_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20749_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2084020851_))))
                                       (_g2083820965_
                                        (gx#stx-identifier
                                         _L20751_
                                         '@next-method)))))
                                 _g2081220823_))))
                        (_g2081020969_
                         (gx#stx-identifier
                          _L20751_
                          _L20750_
                          '"::"
                          _L20751_)))))
                  _g2078320794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2078120973_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20776_)))
                                               (if (not (gx#identifier?
                                                         _L20751_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20644_
                                                    _L20751_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L20750_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20644_
                                                        _L20750_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20644_)))))
                                         _tl2067420744_
                                         _hd2067320741_
                                         _hd2067020731_
                                         _hd2066720721_)))
                                    (_g2065120680_ _g2065220684_))
                                (_g2065120680_ _g2065220684_))))
                        (_g2065120680_ _g2065220684_))))
                (_g2065120680_ _g2065220684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2065120680_
                                                     _g2065220684_))
                                                (_g2065120680_
                                                 _g2065220684_))))
                                        (_g2065120680_ _g2065220684_))))
                                (_g2065120680_ _g2065220684_))))
                        (_g2065120680_ _g2065220684_)))))
            (_g2065020977_ _stx20644_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx20987_)
        (let* ((_g2099221041_
                (lambda (_g2099321037_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2099321037_)))
               (_g2099121140_
                (lambda (_g2099321045_)
                  (if (gx#stx-pair? _g2099321045_)
                      (let ((_e2101821048_ (gx#syntax-e _g2099321045_)))
                        (let ((_hd2101921052_ (##car _e2101821048_))
                              (_tl2102021055_ (##cdr _e2101821048_)))
                          (if (gx#stx-pair? _tl2102021055_)
                              (let ((_e2102121058_
                                     (gx#syntax-e _tl2102021055_)))
                                (let ((_hd2102221062_ (##car _e2102121058_))
                                      (_tl2102321065_ (##cdr _e2102121058_)))
                                  (if (gx#stx-pair? _tl2102321065_)
                                      (let ((_e2102421068_
                                             (gx#syntax-e _tl2102321065_)))
                                        (let ((_hd2102521072_
                                               (##car _e2102421068_))
                                              (_tl2102621075_
                                               (##cdr _e2102421068_)))
                                          (if (gx#stx-pair/null?
                                               _tl2102621075_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2102621075_)
                                                        '0)
                                                  (let ((_g35572_
                                                         (gx#syntax-split-splice
                                                          _tl2102621075_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35573_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35572_)
                         (##vector-length _g35572_)
                         1)))
                (if (not (##fx= _g35573_ 2))
                    (error "Context expects 2 values" _g35573_)))
              (let ((_target2102721078_ (##vector-ref _g35572_ 0))
                    (_tl2102921081_ (##vector-ref _g35572_ 1)))
                (if (gx#stx-null? _tl2102921081_)
                    (letrec ((_loop2103021084_
                              (lambda (_hd2102821088_ _arg2103421091_)
                                (if (gx#stx-pair? _hd2102821088_)
                                    (let ((_e2103121094_
                                           (gx#syntax-e _hd2102821088_)))
                                      (let ((_lp-hd2103221098_
                                             (##car _e2103121094_))
                                            (_lp-tl2103321101_
                                             (##cdr _e2103121094_)))
                                        (_loop2103021084_
                                         _lp-tl2103321101_
                                         (cons _lp-hd2103221098_
                                               _arg2103421091_))))
                                    (let ((_arg2103521104_
                                           (reverse _arg2103421091_)))
                                      ((lambda (_L21108_ _L21110_ _L21111_)
                                         (if (gx#identifier? _L21111_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L21110_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L21111_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g2113121134_ _g2113221137_)
                                  (cons _g2113121134_ _g2113221137_))
                                '()
                                _L21108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2099221041_ _g2099321045_)))
                                       _arg2103521104_
                                       _hd2102521072_
                                       _hd2102221062_))))))
                      (_loop2103021084_ _target2102721078_ '()))
                    (_g2099221041_ _g2099321045_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2099221041_
                                                   _g2099321045_))
                                              (_g2099221041_ _g2099321045_))))
                                      (_g2099221041_ _g2099321045_))))
                              (_g2099221041_ _g2099321045_))))
                      (_g2099221041_ _g2099321045_))))
               (_g2099021246_
                (lambda (_g2099321144_)
                  (if (gx#stx-pair? _g2099321144_)
                      (let ((_e2099721147_ (gx#syntax-e _g2099321144_)))
                        (let ((_hd2099821151_ (##car _e2099721147_))
                              (_tl2099921154_ (##cdr _e2099721147_)))
                          (if (gx#stx-pair? _tl2099921154_)
                              (let ((_e2100021157_
                                     (gx#syntax-e _tl2099921154_)))
                                (let ((_hd2100121161_ (##car _e2100021157_))
                                      (_tl2100221164_ (##cdr _e2100021157_)))
                                  (if (gx#stx-pair? _tl2100221164_)
                                      (let ((_e2100321167_
                                             (gx#syntax-e _tl2100221164_)))
                                        (let ((_hd2100421171_
                                               (##car _e2100321167_))
                                              (_tl2100521174_
                                               (##cdr _e2100321167_)))
                                          (if (gx#stx-pair/null?
                                               _tl2100521174_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2100521174_)
                                                        '0)
                                                  (let ((_g35574_
                                                         (gx#syntax-split-splice
                                                          _tl2100521174_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35575_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35574_)
                         (##vector-length _g35574_)
                         1)))
                (if (not (##fx= _g35575_ 2))
                    (error "Context expects 2 values" _g35575_)))
              (let ((_target2100621177_ (##vector-ref _g35574_ 0))
                    (_tl2100821180_ (##vector-ref _g35574_ 1)))
                (if (gx#stx-null? _tl2100821180_)
                    (letrec ((_loop2100921183_
                              (lambda (_hd2100721187_ _arg2101321190_)
                                (if (gx#stx-pair? _hd2100721187_)
                                    (let ((_e2101021193_
                                           (gx#syntax-e _hd2100721187_)))
                                      (let ((_lp-hd2101121197_
                                             (##car _e2101021193_))
                                            (_lp-tl2101221200_
                                             (##cdr _e2101021193_)))
                                        (_loop2100921183_
                                         _lp-tl2101221200_
                                         (cons _lp-hd2101121197_
                                               _arg2101321190_))))
                                    (let ((_arg2101421203_
                                           (reverse _arg2101321190_)))
                                      ((lambda (_L21207_ _L21209_ _L21210_)
                                         (if (if (gx#identifier? _L21210_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2122921232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2123021235_)
                     (cons _g2122921232_ _g2123021235_))
                   '()
                   _L21207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L21209_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L21210_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2123721240_
                                                           _g2123821243_)
                                                    (cons _g2123721240_
                                                          _g2123821243_))
                                                  '()
                                                  _L21207_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2099121140_ _g2099321144_)))
                                       _arg2101421203_
                                       _hd2100421171_
                                       _hd2100121161_))))))
                      (_loop2100921183_ _target2100621177_ '()))
                    (_g2099121140_ _g2099321144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2099121140_
                                                   _g2099321144_))
                                              (_g2099121140_ _g2099321144_))))
                                      (_g2099121140_ _g2099321144_))))
                              (_g2099121140_ _g2099321144_))))
                      (_g2099121140_ _g2099321144_)))))
          (_g2099021246_ _$stx20987_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21252_)
        (let* ((_g2125721297_
                (lambda (_g2125821293_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2125821293_)))
               (_g2125621398_
                (lambda (_g2125821301_)
                  (if (gx#stx-pair? _g2125821301_)
                      (let ((_e2127421304_ (gx#syntax-e _g2125821301_)))
                        (let ((_hd2127521308_ (##car _e2127421304_))
                              (_tl2127621311_ (##cdr _e2127421304_)))
                          (if (gx#stx-pair? _tl2127621311_)
                              (let ((_e2127721314_
                                     (gx#syntax-e _tl2127621311_)))
                                (let ((_hd2127821318_ (##car _e2127721314_))
                                      (_tl2127921321_ (##cdr _e2127721314_)))
                                  (if (gx#stx-pair? _tl2127921321_)
                                      (let ((_e2128021324_
                                             (gx#syntax-e _tl2127921321_)))
                                        (let ((_hd2128121328_
                                               (##car _e2128021324_))
                                              (_tl2128221331_
                                               (##cdr _e2128021324_)))
                                          (if (gx#stx-pair/null?
                                               _tl2128221331_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2128221331_)
                                                        '0)
                                                  (let ((_g35576_
                                                         (gx#syntax-split-splice
                                                          _tl2128221331_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35577_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35576_)
                         (##vector-length _g35576_)
                         1)))
                (if (not (##fx= _g35577_ 2))
                    (error "Context expects 2 values" _g35577_)))
              (let ((_target2128321334_ (##vector-ref _g35576_ 0))
                    (_tl2128521337_ (##vector-ref _g35576_ 1)))
                (if (gx#stx-null? _tl2128521337_)
                    (letrec ((_loop2128621340_
                              (lambda (_hd2128421344_ _rest2129021347_)
                                (if (gx#stx-pair? _hd2128421344_)
                                    (let ((_e2128721350_
                                           (gx#syntax-e _hd2128421344_)))
                                      (let ((_lp-hd2128821354_
                                             (##car _e2128721350_))
                                            (_lp-tl2128921357_
                                             (##cdr _e2128721350_)))
                                        (_loop2128621340_
                                         _lp-tl2128921357_
                                         (cons _lp-hd2128821354_
                                               _rest2129021347_))))
                                    (let ((_rest2129121360_
                                           (reverse _rest2129021347_)))
                                      ((lambda (_L21364_
                                                _L21366_
                                                _L21367_
                                                _L21368_)
                                         (cons _L21368_
                                               (cons (cons _L21368_
                                                           (cons _L21367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L21366_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2138921392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2139021395_)
                        (cons _g2138921392_ _g2139021395_))
                      '()
                      _L21364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest2129121360_
                                       _hd2128121328_
                                       _hd2127821318_
                                       _hd2127521308_))))))
                      (_loop2128621340_ _target2128321334_ '()))
                    (_g2125721297_ _g2125821301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2125721297_
                                                   _g2125821301_))
                                              (_g2125721297_ _g2125821301_))))
                                      (_g2125721297_ _g2125821301_))))
                              (_g2125721297_ _g2125821301_))))
                      (_g2125721297_ _g2125821301_))))
               (_g2125521452_
                (lambda (_g2125821402_)
                  (if (gx#stx-pair? _g2125821402_)
                      (let ((_e2126121405_ (gx#syntax-e _g2125821402_)))
                        (let ((_hd2126221409_ (##car _e2126121405_))
                              (_tl2126321412_ (##cdr _e2126121405_)))
                          (if (gx#stx-pair? _tl2126321412_)
                              (let ((_e2126421415_
                                     (gx#syntax-e _tl2126321412_)))
                                (let ((_hd2126521419_ (##car _e2126421415_))
                                      (_tl2126621422_ (##cdr _e2126421415_)))
                                  (if (gx#stx-pair? _tl2126621422_)
                                      (let ((_e2126721425_
                                             (gx#syntax-e _tl2126621422_)))
                                        (let ((_hd2126821429_
                                               (##car _e2126721425_))
                                              (_tl2126921432_
                                               (##cdr _e2126721425_)))
                                          (if (gx#stx-null? _tl2126921432_)
                                              ((lambda (_L21435_ _L21437_)
                                                 (if (gx#identifier? _L21435_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L21437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L21435_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2125621398_
                                                      _g2125821402_)))
                                               _hd2126821429_
                                               _hd2126521419_)
                                              (_g2125621398_ _g2125821402_))))
                                      (_g2125621398_ _g2125821402_))))
                              (_g2125621398_ _g2125821402_))))
                      (_g2125621398_ _g2125821402_)))))
          (_g2125521452_ _$stx21252_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21457_)
        (let* ((_g2146221514_
                (lambda (_g2146321510_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2146321510_)))
               (_g2146121643_
                (lambda (_g2146321518_)
                  (if (gx#stx-pair? _g2146321518_)
                      (let ((_e2148521521_ (gx#syntax-e _g2146321518_)))
                        (let ((_hd2148621525_ (##car _e2148521521_))
                              (_tl2148721528_ (##cdr _e2148521521_)))
                          (if (gx#stx-pair? _tl2148721528_)
                              (let ((_e2148821531_
                                     (gx#syntax-e _tl2148721528_)))
                                (let ((_hd2148921535_ (##car _e2148821531_))
                                      (_tl2149021538_ (##cdr _e2148821531_)))
                                  (if (gx#stx-pair? _tl2149021538_)
                                      (let ((_e2149121541_
                                             (gx#syntax-e _tl2149021538_)))
                                        (let ((_hd2149221545_
                                               (##car _e2149121541_))
                                              (_tl2149321548_
                                               (##cdr _e2149121541_)))
                                          (if (gx#stx-pair/null?
                                               _tl2149321548_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2149321548_)
                                                        '2)
                                                  (let ((_g35578_
                                                         (gx#syntax-split-splice
                                                          _tl2149321548_
                                                          '2)))
                                                    (begin
                                                      (let ((_g35579_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35578_)
                         (##vector-length _g35578_)
                         1)))
                (if (not (##fx= _g35579_ 2))
                    (error "Context expects 2 values" _g35579_)))
              (let ((_target2149421551_ (##vector-ref _g35578_ 0))
                    (_tl2149621554_ (##vector-ref _g35578_ 1)))
                (if (gx#stx-pair? _tl2149621554_)
                    (let ((_e2150321557_ (gx#syntax-e _tl2149621554_)))
                      (let ((_hd2150421561_ (##car _e2150321557_))
                            (_tl2150521564_ (##cdr _e2150321557_)))
                        (if (gx#stx-pair? _tl2150521564_)
                            (let ((_e2150621567_ (gx#syntax-e _tl2150521564_)))
                              (let ((_hd2150721571_ (##car _e2150621567_))
                                    (_tl2150821574_ (##cdr _e2150621567_)))
                                (if (gx#stx-null? _tl2150821574_)
                                    (letrec ((_loop2149721577_
                                              (lambda (_hd2149521581_
                                                       _path2150121584_)
                                                (if (gx#stx-pair?
                                                     _hd2149521581_)
                                                    (let ((_e2149821587_
                                                           (gx#syntax-e
                                                            _hd2149521581_)))
                                                      (let ((_lp-hd2149921591_
                                                             (##car _e2149821587_))
                                                            (_lp-tl2150021594_
                                                             (##cdr _e2149821587_)))
                                                        (_loop2149721577_
                                                         _lp-tl2150021594_
                                                         (cons _lp-hd2149921591_
                                                               _path2150121584_))))
                                                    (let ((_path2150221597_
                                                           (reverse _path2150121584_)))
                                                      ((lambda (_L21601_
                                                                _L21603_
                                                                _L21604_
                                                                _L21605_
                                                                _L21606_
                                                                _L21607_)
                                                         (cons _L21607_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L21606_
                                         (cons _L21605_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2163421637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2163521640_)
                  (cons _g2163421637_ _g2163521640_))
                '()
                _L21604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L21603_ (cons _L21601_ '())))))
               _hd2150721571_
               _hd2150421561_
               _path2150221597_
               _hd2149221545_
               _hd2148921535_
               _hd2148621525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2149721577_
                                       _target2149421551_
                                       '()))
                                    (_g2146221514_ _g2146321518_))))
                            (_g2146221514_ _g2146321518_))))
                    (_g2146221514_ _g2146321518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2146221514_
                                                   _g2146321518_))
                                              (_g2146221514_ _g2146321518_))))
                                      (_g2146221514_ _g2146321518_))))
                              (_g2146221514_ _g2146321518_))))
                      (_g2146221514_ _g2146321518_))))
               (_g2146021711_
                (lambda (_g2146321647_)
                  (if (gx#stx-pair? _g2146321647_)
                      (let ((_e2146721650_ (gx#syntax-e _g2146321647_)))
                        (let ((_hd2146821654_ (##car _e2146721650_))
                              (_tl2146921657_ (##cdr _e2146721650_)))
                          (if (gx#stx-pair? _tl2146921657_)
                              (let ((_e2147021660_
                                     (gx#syntax-e _tl2146921657_)))
                                (let ((_hd2147121664_ (##car _e2147021660_))
                                      (_tl2147221667_ (##cdr _e2147021660_)))
                                  (if (gx#stx-pair? _tl2147221667_)
                                      (let ((_e2147321670_
                                             (gx#syntax-e _tl2147221667_)))
                                        (let ((_hd2147421674_
                                               (##car _e2147321670_))
                                              (_tl2147521677_
                                               (##cdr _e2147321670_)))
                                          (if (gx#stx-pair? _tl2147521677_)
                                              (let ((_e2147621680_
                                                     (gx#syntax-e
                                                      _tl2147521677_)))
                                                (let ((_hd2147721684_
                                                       (##car _e2147621680_))
                                                      (_tl2147821687_
                                                       (##cdr _e2147621680_)))
                                                  (if (gx#stx-null?
                                                       _tl2147821687_)
                                                      ((lambda (_L21690_
                                                                _L21692_
                                                                _L21693_)
                                                         (if (gx#identifier?
                                                              _L21692_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L21693_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21692_ '()))
                                       (cons _L21690_ '()))))
                     (_g2146121643_ _g2146321647_)))
               _hd2147721684_
               _hd2147421674_
               _hd2147121664_)
              (_g2146121643_ _g2146321647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2146121643_ _g2146321647_))))
                                      (_g2146121643_ _g2146321647_))))
                              (_g2146121643_ _g2146321647_))))
                      (_g2146121643_ _g2146321647_)))))
          (_g2146021711_ _$stx21457_))))))
