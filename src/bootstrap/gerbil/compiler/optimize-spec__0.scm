(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1693679903)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl41008_ (make-table 'test: eq?)))
           (hash-copy! _tbl41008_ (force gxc#&identity))
           (table-set! _tbl41008_ '%#begin gxc#xform-begin%)
           (table-set! _tbl41008_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl41008_ '%#module gxc#xform-module%)
           (table-set!
            _tbl41008_
            '%#define-values
            gxc#generate-method-specializers-define-values%)
           _tbl41008_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx41001_ . _args41003_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx41001_ _args41003_))
         gxc#current-compile-methods
         (force gxc#&generate-method-specializers))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl40998_ (make-table 'test: eq?)))
           (hash-copy! _tbl40998_ (force gxc#&void))
           (table-set! _tbl40998_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl40998_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl40998_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl40998_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl40998_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl40998_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl40998_
            '%#letrec-values*
            gxc#collect-body-let-values%)
           (table-set! _tbl40998_ '%#call gxc#collect-object-refs-call%)
           (table-set! _tbl40998_ '%#if gxc#collect-operands)
           (table-set! _tbl40998_ '%#set! gxc#collect-body-setq%)
           (table-set! _tbl40998_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl40998_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl40998_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl40998_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl40998_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl40998_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl40998_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx40991_ . _args40993_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx40991_ _args40993_))
         gxc#current-compile-methods
         (force gxc#&collect-object-refs))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl40988_ (make-table 'test: eq?)))
           (hash-copy! _tbl40988_ (force gxc#&basic-xform-expression))
           (table-set! _tbl40988_ '%#begin gxc#xform-begin%)
           (table-set! _tbl40988_ '%#call gxc#subst-object-refs-call%)
           _tbl40988_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx40981_ . _args40983_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx40981_ _args40983_))
         gxc#current-compile-methods
         (force gxc#&subst-object-refs))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx37651_)
        (letrec ((_generate-method-bind37653_
                  (lambda (_$t40975_ _id40976_ _$id40977_)
                    (let ((_$tmp40979_ (make-symbol (gensym '__tmp))))
                      (cons (cons _$id40977_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _$tmp40979_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'direct-method-ref '()))
                                (cons (cons '%#ref (cons _$t40975_ '()))
                                      (cons (cons '%#quote
                                                  (cons _id40976_ '()))
                                            '()))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _$tmp40979_ '()))
                    (cons (cons '%#ref (cons _$tmp40979_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _id40976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_generate-slot-bind37654_
                  (lambda (_$t40969_ _id40970_ _$id40971_)
                    (let ((_$tmp40973_ (make-symbol (gensym '__tmp))))
                      (cons (cons _$id40971_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _$tmp40973_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref (cons _$t40969_ '()))
                                          (cons (cons '%#quote
                                                      (cons _id40970_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _$tmp40973_ '()))
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons '##fx+ '()))
                                          (cons (cons '%#ref
                                                      (cons _$tmp40973_ '()))
                                                (cons (cons '%#quote
                                                            (cons '1 '()))
                                                      '()))))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _id40970_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_generate-class-check-bind37655_
                  (lambda (_$t40965_ _class-type40966_ _$class-type40967_)
                    (cons (cons _$class-type40967_ '())
                          (cons (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'class-subtype? '()))
                                            (cons (cons '%#ref
                                                        (cons _class-type40966_
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _$t40965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
                 (_generate-struct-check-bind37656_
                  (lambda (_$t40961_ _class-type40962_ _$class-type40963_)
                    (cons (cons _$class-type40963_ '())
                          (cons (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'struct-subtype? '()))
                                            (cons (cons '%#ref
                                                        (cons _class-type40962_
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _$t40961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
                 (_generate-specializer-impl37657_
                  (lambda (_$t40910_
                           _methods-bind40911_
                           _slots-bind40912_
                           _class-check-bind40913_
                           _struct-check-bind40914_
                           _specializer-impl40915_
                           _lifted-specializer-id40916_
                           _unchecked-specializer-impl40917_)
                    (gxc#xform-wrap-source
                     (cons '%#lambda
                           (cons (cons _$t40910_ '())
                                 (cons (cons '%#let-values
                                             (cons (foldr1 cons
                                                           (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr1 cons
                                   _struct-check-bind40914_
                                   _class-check-bind40913_)
                           _slots-bind40912_)
                   _methods-bind40911_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (if (or _lifted-specializer-id40916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _unchecked-specializer-impl40917_)
                     (let ((_$specializer40922_
                            (make-symbol (gensym '__specializer))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _$specializer40922_ '())
                                               (cons _specializer-impl40915_
                                                     '()))
                                         '())
                                   (cons (let _recur40924_ ((_rest40926_
                                                             (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _struct-check-bind40914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let* ((_rest4092740935_
                                                   _rest40926_)
                                                  (_else4092940943_
                                                   (lambda ()
                                                     (if _lifted-specializer-id40916_
                                                         (cons '%#ref
                                                               (cons _lifted-specializer-id40916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _unchecked-specializer-impl40917_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K4093140949_
                                                   (lambda (_rest40946_
                                                            _checkq40947_)
                                                     (cons '%#if
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _checkq40947_ '()))
                         (cons (_recur40924_ _rest40946_)
                               (cons (cons '%#ref
                                           (cons _$specializer40922_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _rest4092740935_))
                                                 (let ((_hd4093240952_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _rest4092740935_)))
                                                       (_tl4093340954_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _rest4092740935_))))
                                                   (let* ((_checkq40957_
                                                           _hd4093240952_)
                                                          (_rest40959_
                                                           _tl4093340954_))
                                                     (_K4093140949_
                                                      _rest40959_
                                                      _checkq40957_)))
                                                 (_else4092940943_))))
                                         '()))))
                     _specializer-impl40915_)
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     _stx37651_)))
                 (_generate-specializer-def37658_
                  (lambda (_id40904_
                           _specializer-id40905_
                           _specializer-impl40906_
                           _lifted-specializer-id40907_
                           _unchecked-specializer-impl40908_)
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons _stx37651_
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _specializer-id40905_
                                                          '())
                                                    (cons _specializer-impl40906_
                                                          '())))
                                        _stx37651_)
                                       (foldr1 cons
                                               (cons (gxc#xform-wrap-source
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'bind-specializer! '()))
                          (cons (cons '%#ref (cons _id40904_ '()))
                                (cons (cons '%#ref
                                            (cons _specializer-id40905_ '()))
                                      '()))))
              _stx37651_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (if _lifted-specializer-id40907_
                                                   (cons (gxc#xform-wrap-source
                                                          (cons '%#define-values
                                                                (cons (cons _lifted-specializer-id40907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _unchecked-specializer-impl40908_ '())))
                  _stx37651_)
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                     _stx37651_))))
          (let* ((___stx4109741098_ _stx37651_)
                 (_g3766137681_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx4109741098_))))
            (let ((___kont4109941100_
                   (lambda (_L37725_ _L37726_)
                     (let ((_method-calls37745_ (make-table 'test: eq?))
                           (_slot-refs37746_ (make-table 'test: eq?))
                           (_class-type-check37747_ (make-table 'test: eq?))
                           (_struct-type-check37748_ (make-table 'test: eq?))
                           (_struct-type-assert37749_ (make-table 'test: eq?))
                           (_empty37750_ (make-table 'test: eq?)))
                       (letrec ((_no-specializer?37752_
                                 (lambda ()
                                   (if (fxzero? (table-length
                                                 _method-calls37745_))
                                       (if (fxzero? (table-length
                                                     _slot-refs37746_))
                                           (if (fxzero? (table-length
                                                         _class-type-check37747_))
                                               (if (fxzero? (table-length
                                                             _struct-type-check37748_))
                                                   (fxzero? (table-length
                                                             _struct-type-assert37749_))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?37753_
                                 (lambda ()
                                   (let ((_$e40897_
                                          (not (fxzero? (table-length
                                                         _struct-type-check37748_)))))
                                     (if _$e40897_
                                         _$e40897_
                                         (not (fxzero? (table-length
                                                        _struct-type-assert37749_)))))))
                                (_lift-unchecked-specializer?37754_
                                 (lambda ()
                                   (if (fxzero? (table-length
                                                 _method-calls37745_))
                                       (if (fxzero? (table-length
                                                     _slot-refs37746_))
                                           (fxzero? (table-length
                                                     _class-type-check37747_))
                                           '#f)
                                       '#f))))
                         (if (gxc#lambda-expr? _L37725_)
                             (let* ((___stx4101141012_ _L37725_)
                                    (_g3826738285_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4101141012_))))
                               (let ((___kont4101341014_
                                      (lambda (_L38321_ _L38322_ _L38323_)
                                        (for-each
                                         (lambda (_g3833838340_)
                                           (gxc#apply-collect-object-refs
                                            _g3833838340_
                                            _L38323_
                                            _method-calls37745_
                                            _slot-refs37746_
                                            _class-type-check37747_
                                            _struct-type-check37748_
                                            _struct-type-assert37749_))
                                         _L38321_)
                                        (if (_no-specializer?37752_)
                                            _stx37651_
                                            (let* ((_specializer-id38349_
                                                    (let* ((_id38343_
                                                            (make-symbol
                                                             (gx#stx-e
                                                              _L37726_)
                                                             '"::specialize"))
                                                           (_specializer-id38346_
                                                            (gx#core-quote-syntax__1
                                                             _id38343_
                                                             (gx#stx-source
                                                              _stx37651_))))
                                                      (gx#core-bind-runtime!__0
                                                       _specializer-id38346_)
                                                      _specializer-id38346_))
                                                   (_lifted-specializer-id38356_
                                                    (if (_lift-unchecked-specializer?37754_)
                                                        (let* ((_id38351_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L37726_)
                         '"::specialize::unchecked"))
                       (_lifted-specializer-id38353_
                        (gx#core-quote-syntax__1
                         _id38351_
                         (gx#stx-source _stx37651_))))
                  (gx#core-bind-runtime!__0 _lifted-specializer-id38353_)
                  _lifted-specializer-id38353_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t38358_
                                                    (make-symbol
                                                     (gensym '__t)))
                                                   (_methods38360_
                                                    (hash-keys
                                                     _method-calls37745_))
                                                   (_$methods38364_
                                                    (map (lambda (_id38362_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id38362_)))
                                                         _methods38360_))
                                                   (_g42612_
                                                    (for-each
                                                     (lambda (_g3836538368_
                                                              _g3836638370_)
                                                       (table-set!
                                                        _method-calls37745_
                                                        _g3836538368_
                                                        _g3836638370_))
                                                     _methods38360_
                                                     _$methods38364_))
                                                   (_methods-bind38381_
                                                    (map (lambda (_g3837338376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3837438378_)
                   (_generate-method-bind37653_
                    _$t38358_
                    _g3837338376_
                    _g3837438378_))
                 _methods38360_
                 _$methods38364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots38383_
                                                    (hash-keys
                                                     _slot-refs37746_))
                                                   (_$slots38387_
                                                    (map (lambda (_id38385_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id38385_)))
                                                         _slots38383_))
                                                   (_g42613_
                                                    (for-each
                                                     (lambda (_g3838838391_
                                                              _g3838938393_)
                                                       (table-set!
                                                        _slot-refs37746_
                                                        _g3838838391_
                                                        _g3838938393_))
                                                     _slots38383_
                                                     _$slots38387_))
                                                   (_slots-bind38404_
                                                    (map (lambda (_g3839638399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3839738401_)
                   (_generate-slot-bind37654_
                    _$t38358_
                    _g3839638399_
                    _g3839738401_))
                 _slots38383_
                 _$slots38387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check38406_
                                                    (hash-keys
                                                     _class-type-check37747_))
                                                   (_$class-check38409_
                                                    (map (lambda (_g42614_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _class-check38406_))
                                                   (_g42615_
                                                    (for-each
                                                     (lambda (_g3841038413_
                                                              _g3841138415_)
                                                       (table-set!
                                                        _class-type-check37747_
                                                        _g3841038413_
                                                        _g3841138415_))
                                                     _class-check38406_
                                                     _$class-check38409_))
                                                   (_class-check-bind38426_
                                                    (map (lambda (_g3841838421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3841938423_)
                   (_generate-class-check-bind37655_
                    _$t38358_
                    _g3841838421_
                    _g3841938423_))
                 _class-check38406_
                 _$class-check38409_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all38428_
                                                    (hash-merge
                                                     _struct-type-check37748_
                                                     _struct-type-assert37749_))
                                                   (_struct-check38430_
                                                    (hash-keys
                                                     _struct-check-all38428_))
                                                   (_$struct-check38433_
                                                    (map (lambda (_g42616_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _struct-check38430_))
                                                   (_g42617_
                                                    (for-each
                                                     (lambda (_g3843438437_
                                                              _g3843538439_)
                                                       (table-set!
                                                        _struct-check-all38428_
                                                        _g3843438437_
                                                        _g3843538439_))
                                                     _struct-check38430_
                                                     _$struct-check38433_))
                                                   (_struct-check-bind38450_
                                                    (map (lambda (_g3844238445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3844338447_)
                   (_generate-struct-check-bind37656_
                    _$t38358_
                    _g3844238445_
                    _g3844338447_))
                 _struct-check38430_
                 _$struct-check38433_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl38461_
                                                    (lambda (_struct-type-check138452_
                                                             _struct-type-check238453_)
                                                      (let ((_specializer-body38459_
                                                             (map (lambda (_g3845438456_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-subst-object-refs
                             _g3845438456_
                             _L38323_
                             _$t38358_
                             _method-calls37745_
                             _slot-refs37746_
                             _class-type-check37747_
                             _struct-type-check138452_
                             _struct-type-check238453_))
                          _L38321_)))
                (gxc#xform-wrap-source
                 (cons '%#lambda
                       (cons (cons _L38323_ _L38322_) _specializer-body38459_))
                 _stx37651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl38463_
                                                    (_make-specializer-impl38461_
                                                     _struct-check-all38428_
                                                     _empty37750_))
                                                   (_unchecked-specializer-impl38465_
                                                    (if (_unchecked-specializer?37753_)
                                                        (_make-specializer-impl38461_
                                                         _empty37750_
                                                         _struct-check-all38428_)
                                                        '#f))
                                                   (_specializer-impl38467_
                                                    (_generate-specializer-impl37657_
                                                     _$t38358_
                                                     _methods-bind38381_
                                                     _slots-bind38404_
                                                     _class-check-bind38426_
                                                     _struct-check-bind38450_
                                                     _specializer-impl38463_
                                                     _lifted-specializer-id38356_
                                                     _unchecked-specializer-impl38465_)))
                                              (gxc#verbose
                                               '"generate method specializer "
                                               (gx#stx-e _L37726_)
                                               '" => "
                                               (gx#stx-e
                                                _specializer-id38349_))
                                              (_generate-specializer-def37658_
                                               _L37726_
                                               _specializer-id38349_
                                               _specializer-impl38467_
                                               _lifted-specializer-id38356_
                                               _unchecked-specializer-impl38465_)))))
                                     (___kont4101541016_
                                      (lambda () _stx37651_)))
                                 (if (gx#stx-pair? ___stx4101141012_)
                                     (let ((_e3827238297_
                                            (gx#stx-e ___stx4101141012_)))
                                       (let ((_tl3827438302_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3827238297_)))
                                             (_hd3827338300_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3827238297_))))
                                         (if (gx#stx-pair? _tl3827438302_)
                                             (let ((_e3827538305_
                                                    (gx#stx-e _tl3827438302_)))
                                               (let ((_tl3827738310_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3827538305_)))
                                                     (_hd3827638308_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3827538305_))))
                                                 (if (gx#stx-pair?
                                                      _hd3827638308_)
                                                     (let ((_e3827838313_
                                                            (gx#stx-e
                                                             _hd3827638308_)))
                                                       (let ((_tl3828038318_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3827838313_)))
                     (_hd3827938316_
                      (let () (declare (not safe)) (##car _e3827838313_))))
                 (___kont4101341014_
                  _tl3827738310_
                  _tl3828038318_
                  _hd3827938316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4101541016_))))
                                             (___kont4101541016_))))
                                     (___kont4101541016_))))
                             (if (gxc#case-lambda-expr? _L37725_)
                                 (let* ((_g3847338492_
                                         (lambda (_g3847438489_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3847438489_)))
                                        (_g3847238843_
                                         (lambda (_g3847438495_)
                                           (if (gx#stx-pair? _g3847438495_)
                                               (let ((_e3847638497_
                                                      (gx#stx-e
                                                       _g3847438495_)))
                                                 (let ((_hd3847738500_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3847638497_)))
                                                       (_tl3847838502_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3847638497_))))
                                                   (if (gx#stx-pair/null?
                                                        _tl3847838502_)
                                                       (let ((_g42618_
                                                              (gx#syntax-split-splice
                                                               _tl3847838502_
                                                               '0)))
                                                         (begin
                                                           (let ((_g42619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g42618_)
                                (##vector-length _g42618_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g42619_ 2)))
                         (error "Context expects 2 values" _g42619_)))
                   (let ((_target3847938505_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42618_ 0)))
                         (_tl3848138507_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42618_ 1))))
                     (if (gx#stx-null? _tl3848138507_)
                         (letrec ((_loop3848238510_
                                   (lambda (_hd3848038513_ _clause3848638515_)
                                     (if (gx#stx-pair? _hd3848038513_)
                                         (let ((_e3848338518_
                                                (gx#stx-e _hd3848038513_)))
                                           (let ((_lp-hd3848438521_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e3848338518_)))
                                                 (_lp-tl3848538523_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e3848338518_))))
                                             (_loop3848238510_
                                              _lp-tl3848538523_
                                              (cons _lp-hd3848438521_
                                                    _clause3848638515_))))
                                         (let ((_clause3848738526_
                                                (reverse _clause3848638515_)))
                                           ((lambda (_L38529_)
                                              (for-each
                                               (lambda (_clause38542_)
                                                 (let* ((___stx4103741038_
                                                         _clause38542_)
                                                        (_g3854538560_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            ___stx4103741038_))))
                                                   (let ((___kont4103941040_
                                                          (lambda (_L38588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L38589_
                           _L38590_)
                    (for-each
                     (lambda (_g3860538607_)
                       (gxc#apply-collect-object-refs
                        _g3860538607_
                        _L38590_
                        _method-calls37745_
                        _slot-refs37746_
                        _class-type-check37747_
                        _struct-type-check37748_
                        _struct-type-assert37749_))
                     _L38588_)))
                 (___kont4104141042_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair?
                                                          ___stx4103741038_)
                                                         (let ((_e3855038572_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___stx4103741038_)))
                   (let ((_tl3855238577_
                          (let () (declare (not safe)) (##cdr _e3855038572_)))
                         (_hd3855138575_
                          (let () (declare (not safe)) (##car _e3855038572_))))
                     (if (gx#stx-pair? _hd3855138575_)
                         (let ((_e3855338580_ (gx#stx-e _hd3855138575_)))
                           (let ((_tl3855538585_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3855338580_)))
                                 (_hd3855438583_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3855338580_))))
                             (___kont4103941040_
                              _tl3855238577_
                              _tl3855538585_
                              _hd3855438583_)))
                         (___kont4104141042_))))
                 (___kont4104141042_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (foldr1 (lambda (_g3861238615_
                                                                _g3861338617_)
                                                         (cons _g3861238615_
                                                               _g3861338617_))
                                                       '()
                                                       _L38529_))
                                              (if (_no-specializer?37752_)
                                                  _stx37651_
                                                  (let* ((_specializer-id38626_
                                                          (let* ((_id38620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol (gx#stx-e _L37726_) '"::specialize"))
                         (_specializer-id38623_
                          (gx#core-quote-syntax__1
                           _id38620_
                           (gx#stx-source _stx37651_))))
                    (gx#core-bind-runtime!__0 _specializer-id38623_)
                    _specializer-id38623_))
                 (_lifted-specializer-id38633_
                  (if (_lift-unchecked-specializer?37754_)
                      (let* ((_id38628_
                              (make-symbol
                               (gx#stx-e _L37726_)
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id38630_
                              (gx#core-quote-syntax__1
                               _id38628_
                               (gx#stx-source _stx37651_))))
                        (gx#core-bind-runtime!__0 _lifted-specializer-id38630_)
                        _lifted-specializer-id38630_)
                      '#f))
                 (_$t38635_ (make-symbol (gensym '__t)))
                 (_methods38637_ (hash-keys _method-calls37745_))
                 (_$methods38641_
                  (map (lambda (_id38639_)
                         (make-symbol '"__" (gensym _id38639_)))
                       _methods38637_))
                 (_g42620_
                  (for-each
                   (lambda (_g3864238645_ _g3864338647_)
                     (table-set!
                      _method-calls37745_
                      _g3864238645_
                      _g3864338647_))
                   _methods38637_
                   _$methods38641_))
                 (_methods-bind38658_
                  (map (lambda (_g3865038653_ _g3865138655_)
                         (_generate-method-bind37653_
                          _$t38635_
                          _g3865038653_
                          _g3865138655_))
                       _methods38637_
                       _$methods38641_))
                 (_slots38660_ (hash-keys _slot-refs37746_))
                 (_$slots38664_
                  (map (lambda (_id38662_)
                         (make-symbol '"__" (gensym _id38662_)))
                       _slots38660_))
                 (_g42621_
                  (for-each
                   (lambda (_g3866538668_ _g3866638670_)
                     (table-set! _slot-refs37746_ _g3866538668_ _g3866638670_))
                   _slots38660_
                   _$slots38664_))
                 (_slots-bind38681_
                  (map (lambda (_g3867338676_ _g3867438678_)
                         (_generate-slot-bind37654_
                          _$t38635_
                          _g3867338676_
                          _g3867438678_))
                       _slots38660_
                       _$slots38664_))
                 (_class-check38683_ (hash-keys _class-type-check37747_))
                 (_$class-check38686_
                  (map (lambda (_g42622_) (make-symbol (gensym '__class)))
                       _class-check38683_))
                 (_g42623_
                  (for-each
                   (lambda (_g3868738690_ _g3868838692_)
                     (table-set!
                      _class-type-check37747_
                      _g3868738690_
                      _g3868838692_))
                   _class-check38683_
                   _$class-check38686_))
                 (_class-check-bind38703_
                  (map (lambda (_g3869538698_ _g3869638700_)
                         (_generate-class-check-bind37655_
                          _$t38635_
                          _g3869538698_
                          _g3869638700_))
                       _class-check38683_
                       _$class-check38686_))
                 (_struct-check-all38705_
                  (hash-merge
                   _struct-type-check37748_
                   _struct-type-assert37749_))
                 (_struct-check38707_ (hash-keys _struct-check-all38705_))
                 (_$struct-check38710_
                  (map (lambda (_g42624_) (make-symbol (gensym '__class)))
                       _struct-check38707_))
                 (_g42625_
                  (for-each
                   (lambda (_g3871138714_ _g3871238716_)
                     (table-set!
                      _struct-check-all38705_
                      _g3871138714_
                      _g3871238716_))
                   _struct-check38707_
                   _$struct-check38710_))
                 (_struct-check-bind38727_
                  (map (lambda (_g3871938722_ _g3872038724_)
                         (_generate-struct-check-bind37656_
                          _$t38635_
                          _g3871938722_
                          _g3872038724_))
                       _struct-check38707_
                       _$struct-check38710_))
                 (_make-specializer-impl38834_
                  (lambda (_struct-type-check138729_ _struct-type-check238730_)
                    (let ((_specializer-clauses38832_
                           (map (lambda (_clause38732_)
                                  (let* ((___stx4105741058_ _clause38732_)
                                         (_g3873538750_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx4105741058_))))
                                    (let ((___kont4105941060_
                                           (lambda (_L38778_ _L38779_ _L38780_)
                                             (let ((_body38820_
                                                    (map (lambda (_g3881538817_)
                                                           (gxc#apply-subst-object-refs
                                                            _g3881538817_
                                                            _L38780_
                                                            _$t38635_
                                                            _method-calls37745_
                                                            _slot-refs37746_
                                                            _class-type-check37747_
                                                            _struct-type-check138729_
                                                            _struct-type-check238730_))
                                                         _L38778_)))
                                               (cons (cons _L38780_ _L38779_)
                                                     _body38820_))))
                                          (___kont4106141062_
                                           (lambda () _clause38732_)))
                                      (if (gx#stx-pair? ___stx4105741058_)
                                          (let ((_e3874038762_
                                                 (gx#stx-e ___stx4105741058_)))
                                            (let ((_tl3874238767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3874038762_)))
                                                  (_hd3874138765_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3874038762_))))
                                              (if (gx#stx-pair? _hd3874138765_)
                                                  (let ((_e3874338770_
                                                         (gx#stx-e
                                                          _hd3874138765_)))
                                                    (let ((_tl3874538775_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3874338770_)))
                                                          (_hd3874438773_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3874338770_))))
                                                      (___kont4105941060_
                                                       _tl3874238767_
                                                       _tl3874538775_
                                                       _hd3874438773_)))
                                                  (___kont4106141062_))))
                                          (___kont4106141062_)))))
                                (foldr1 (lambda (_g3882438827_ _g3882538829_)
                                          (cons _g3882438827_ _g3882538829_))
                                        '()
                                        _L38529_))))
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _specializer-clauses38832_)
                       _stx37651_))))
                 (_specializer-impl38836_
                  (_make-specializer-impl38834_
                   _struct-check-all38705_
                   _empty37750_))
                 (_unchecked-specializer-impl38838_
                  (if (_unchecked-specializer?37753_)
                      (_make-specializer-impl38834_
                       _empty37750_
                       _struct-check-all38705_)
                      '#f))
                 (_specializer-impl38840_
                  (_generate-specializer-impl37657_
                   _$t38635_
                   _methods-bind38658_
                   _slots-bind38681_
                   _class-check-bind38703_
                   _struct-check-bind38727_
                   _specializer-impl38836_
                   _lifted-specializer-id38633_
                   _unchecked-specializer-impl38838_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     (gx#stx-e _L37726_)
                                                     '" => "
                                                     (gx#stx-e
                                                      _specializer-id38626_))
                                                    (_generate-specializer-def37658_
                                                     _L37726_
                                                     _specializer-id38626_
                                                     _specializer-impl38840_
                                                     _lifted-specializer-id38633_
                                                     _unchecked-specializer-impl38838_))))
                                            _clause3848738526_))))))
                           (_loop3848238510_ _target3847938505_ '()))
                         (_g3847338492_ _g3847438495_)))))
               (_g3847338492_ _g3847438495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3847338492_
                                                _g3847438495_)))))
                                   (_g3847238843_ _L37725_))
                                 (if (gxc#opt-lambda-expr? _L37725_)
                                     (let* ((_g3884638876_
                                             (lambda (_g3884738873_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3884738873_)))
                                            (_g3884539564_
                                             (lambda (_g3884738879_)
                                               (if (gx#stx-pair? _g3884738879_)
                                                   (let ((_e3885138881_
                                                          (gx#stx-e
                                                           _g3884738879_)))
                                                     (let ((_hd3885238884_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3885138881_)))
                                                           (_tl3885338886_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3885138881_))))
                                                       (if (gx#stx-pair?
                                                            _tl3885338886_)
                                                           (let ((_e3885438889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3885338886_)))
                     (let ((_hd3885538892_
                            (let ()
                              (declare (not safe))
                              (##car _e3885438889_)))
                           (_tl3885638894_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3885438889_))))
                       (if (gx#stx-pair? _hd3885538892_)
                           (let ((_e3885738897_ (gx#stx-e _hd3885538892_)))
                             (let ((_hd3885838900_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3885738897_)))
                                   (_tl3885938902_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3885738897_))))
                               (if (gx#stx-pair? _hd3885838900_)
                                   (let ((_e3886038905_
                                          (gx#stx-e _hd3885838900_)))
                                     (let ((_hd3886138908_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3886038905_)))
                                           (_tl3886238910_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3886038905_))))
                                       (if (gx#stx-pair? _hd3886138908_)
                                           (let ((_e3886338913_
                                                  (gx#stx-e _hd3886138908_)))
                                             (let ((_hd3886438916_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3886338913_)))
                                                   (_tl3886538918_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3886338913_))))
                                               (if (gx#stx-null?
                                                    _tl3886538918_)
                                                   (if (gx#stx-pair?
                                                        _tl3886238910_)
                                                       (let ((_e3886638921_
                                                              (gx#stx-e
                                                               _tl3886238910_)))
                                                         (let ((_hd3886738924_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3886638921_)))
                       (_tl3886838926_
                        (let () (declare (not safe)) (##cdr _e3886638921_))))
                   (if (gx#stx-null? _tl3886838926_)
                       (if (gx#stx-null? _tl3885938902_)
                           (if (gx#stx-pair? _tl3885638894_)
                               (let ((_e3886938929_ (gx#stx-e _tl3885638894_)))
                                 (let ((_hd3887038932_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3886938929_)))
                                       (_tl3887138934_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3886938929_))))
                                   (if (gx#stx-null? _tl3887138934_)
                                       ((lambda (_L38937_ _L38938_ _L38939_)
                                          (let* ((_g3896238980_
                                                  (lambda (_g3896338977_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3896338977_)))
                                                 (_g3896139031_
                                                  (lambda (_g3896338983_)
                                                    (if (gx#stx-pair?
                                                         _g3896338983_)
                                                        (let ((_e3896738985_
                                                               (gx#stx-e
                                                                _g3896338983_)))
                                                          (let ((_hd3896838988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e3896738985_)))
                        (_tl3896938990_
                         (let () (declare (not safe)) (##cdr _e3896738985_))))
                    (if (gx#stx-pair? _tl3896938990_)
                        (let ((_e3897038993_ (gx#stx-e _tl3896938990_)))
                          (let ((_hd3897138996_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3897038993_)))
                                (_tl3897238998_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3897038993_))))
                            (if (gx#stx-pair? _hd3897138996_)
                                (let ((_e3897339001_
                                       (gx#stx-e _hd3897138996_)))
                                  (let ((_hd3897439004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3897339001_)))
                                        (_tl3897539006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3897339001_))))
                                    ((lambda (_L39009_ _L39010_ _L39011_)
                                       (for-each
                                        (lambda (_g3902639028_)
                                          (gxc#apply-collect-object-refs
                                           _g3902639028_
                                           _L39011_
                                           _method-calls37745_
                                           _slot-refs37746_
                                           _class-type-check37747_
                                           _struct-type-check37748_
                                           _struct-type-assert37749_))
                                        _L39009_))
                                     _tl3897238998_
                                     _tl3897539006_
                                     _hd3897439004_)))
                                (_g3896238980_ _g3896338983_))))
                        (_g3896238980_ _g3896338983_))))
                (_g3896238980_ _g3896338983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3896139031_ _L38938_))
                                          (let* ((_g3903439053_
                                                  (lambda (_g3903539050_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3903539050_)))
                                                 (_g3903339172_
                                                  (lambda (_g3903539056_)
                                                    (if (gx#stx-pair?
                                                         _g3903539056_)
                                                        (let ((_e3903739058_
                                                               (gx#stx-e
                                                                _g3903539056_)))
                                                          (let ((_hd3903839061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e3903739058_)))
                        (_tl3903939063_
                         (let () (declare (not safe)) (##cdr _e3903739058_))))
                    (if (gx#stx-pair/null? _tl3903939063_)
                        (let ((_g42626_
                               (gx#syntax-split-splice _tl3903939063_ '0)))
                          (begin
                            (let ((_g42627_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g42626_)
                                         (##vector-length _g42626_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g42627_ 2)))
                                  (error "Context expects 2 values" _g42627_)))
                            (let ((_target3904039066_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42626_ 0)))
                                  (_tl3904239068_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42626_ 1))))
                              (if (gx#stx-null? _tl3904239068_)
                                  (letrec ((_loop3904339071_
                                            (lambda (_hd3904139074_
                                                     _clause3904739076_)
                                              (if (gx#stx-pair? _hd3904139074_)
                                                  (let ((_e3904439079_
                                                         (gx#stx-e
                                                          _hd3904139074_)))
                                                    (let ((_lp-hd3904539082_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3904439079_)))
                                                          (_lp-tl3904639084_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3904439079_))))
                                                      (_loop3904339071_
                                                       _lp-tl3904639084_
                                                       (cons _lp-hd3904539082_
                                                             _clause3904739076_))))
                                                  (let ((_clause3904839087_
                                                         (reverse _clause3904739076_)))
                                                    ((lambda (_L39090_)
                                                       (for-each
                                                        (lambda (_clause39103_)
                                                          (let* ((_g3910539120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g3910639117_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3910639117_)))
                         (_g3910439162_
                          (lambda (_g3910639123_)
                            (if (gx#stx-pair? _g3910639123_)
                                (let ((_e3911039125_ (gx#stx-e _g3910639123_)))
                                  (let ((_hd3911139128_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3911039125_)))
                                        (_tl3911239130_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3911039125_))))
                                    (if (gx#stx-pair? _hd3911139128_)
                                        (let ((_e3911339133_
                                               (gx#stx-e _hd3911139128_)))
                                          (let ((_hd3911439136_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3911339133_)))
                                                (_tl3911539138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3911339133_))))
                                            ((lambda (_L39141_
                                                      _L39142_
                                                      _L39143_)
                                               (for-each
                                                (lambda (_g3915739159_)
                                                  (gxc#apply-collect-object-refs
                                                   _g3915739159_
                                                   _L39143_
                                                   _method-calls37745_
                                                   _slot-refs37746_
                                                   _class-type-check37747_
                                                   _struct-type-check37748_
                                                   _struct-type-assert37749_))
                                                _L39141_))
                                             _tl3911239130_
                                             _tl3911539138_
                                             _hd3911439136_)))
                                        (_g3910539120_ _g3910639123_))))
                                (_g3910539120_ _g3910639123_)))))
                    (_g3910439162_ _clause39103_)))
                (foldr1 (lambda (_g3916439167_ _g3916539169_)
                          (cons _g3916439167_ _g3916539169_))
                        '()
                        _L39090_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause3904839087_))))))
                                    (_loop3904339071_ _target3904039066_ '()))
                                  (_g3903439053_ _g3903539056_)))))
                        (_g3903439053_ _g3903539056_))))
                (_g3903439053_ _g3903539056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3903339172_ _L38937_))
                                          (if (_no-specializer?37752_)
                                              _stx37651_
                                              (let* ((_specializer-id39181_
                                                      (let* ((_id39175_
                                                              (make-symbol
                                                               (gx#stx-e
                                                                _L37726_)
                                                               '"::specialize"))
                                                             (_specializer-id39178_
                                                              (gx#core-quote-syntax__1
                                                               _id39175_
                                                               (gx#stx-source
                                                                _stx37651_))))
                                                        (gx#core-bind-runtime!__0
                                                         _specializer-id39178_)
                                                        _specializer-id39178_))
                                                     (_lifted-specializer-id39188_
                                                      (if (_lift-unchecked-specializer?37754_)
                                                          (let* ((_id39183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (gx#stx-e _L37726_)
                           '"::specialize::unchecked"))
                         (_lifted-specializer-id39185_
                          (gx#core-quote-syntax__1
                           _id39183_
                           (gx#stx-source _stx37651_))))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id39185_)
                    _lifted-specializer-id39185_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t39190_
                                                      (make-symbol
                                                       (gensym '__t)))
                                                     (_methods39192_
                                                      (hash-keys
                                                       _method-calls37745_))
                                                     (_$methods39196_
                                                      (map (lambda (_id39194_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id39194_)))
                                                           _methods39192_))
                                                     (_g42628_
                                                      (for-each
                                                       (lambda (_g3919739200_
                                                                _g3919839202_)
                                                         (table-set!
                                                          _method-calls37745_
                                                          _g3919739200_
                                                          _g3919839202_))
                                                       _methods39192_
                                                       _$methods39196_))
                                                     (_methods-bind39213_
                                                      (map (lambda (_g3920539208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3920639210_)
                     (_generate-method-bind37653_
                      _$t39190_
                      _g3920539208_
                      _g3920639210_))
                   _methods39192_
                   _$methods39196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots39215_
                                                      (hash-keys
                                                       _slot-refs37746_))
                                                     (_$slots39219_
                                                      (map (lambda (_id39217_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id39217_)))
                                                           _slots39215_))
                                                     (_g42629_
                                                      (for-each
                                                       (lambda (_g3922039223_
                                                                _g3922139225_)
                                                         (table-set!
                                                          _slot-refs37746_
                                                          _g3922039223_
                                                          _g3922139225_))
                                                       _slots39215_
                                                       _$slots39219_))
                                                     (_slots-bind39236_
                                                      (map (lambda (_g3922839231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3922939233_)
                     (_generate-slot-bind37654_
                      _$t39190_
                      _g3922839231_
                      _g3922939233_))
                   _slots39215_
                   _$slots39219_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check39238_
                                                      (hash-keys
                                                       _class-type-check37747_))
                                                     (_$class-check39241_
                                                      (map (lambda (_g42630_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _class-check39238_))
                                                     (_g42631_
                                                      (for-each
                                                       (lambda (_g3924239245_
                                                                _g3924339247_)
                                                         (table-set!
                                                          _class-type-check37747_
                                                          _g3924239245_
                                                          _g3924339247_))
                                                       _class-check39238_
                                                       _$class-check39241_))
                                                     (_class-check-bind39258_
                                                      (map (lambda (_g3925039253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3925139255_)
                     (_generate-class-check-bind37655_
                      _$t39190_
                      _g3925039253_
                      _g3925139255_))
                   _class-check39238_
                   _$class-check39241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all39260_
                                                      (hash-merge
                                                       _struct-type-check37748_
                                                       _struct-type-assert37749_))
                                                     (_struct-check39262_
                                                      (hash-keys
                                                       _struct-check-all39260_))
                                                     (_$struct-check39265_
                                                      (map (lambda (_g42632_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _struct-check39262_))
                                                     (_g42633_
                                                      (for-each
                                                       (lambda (_g3926639269_
                                                                _g3926739271_)
                                                         (table-set!
                                                          _struct-check-all39260_
                                                          _g3926639269_
                                                          _g3926739271_))
                                                       _struct-check39262_
                                                       _$struct-check39265_))
                                                     (_struct-check-bind39282_
                                                      (map (lambda (_g3927439277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3927539279_)
                     (_generate-struct-check-bind37656_
                      _$t39190_
                      _g3927439277_
                      _g3927539279_))
                   _struct-check39262_
                   _$struct-check39265_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr39381_
                                                      (lambda (_struct-type-check139284_
                                                               _struct-type-check239285_)
                                                        (let* ((_g3928739305_
                                                                (lambda (_g3928839302_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3928839302_)))
                       (_g3928639378_
                        (lambda (_g3928839308_)
                          (if (gx#stx-pair? _g3928839308_)
                              (let ((_e3929239310_ (gx#stx-e _g3928839308_)))
                                (let ((_hd3929339313_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3929239310_)))
                                      (_tl3929439315_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3929239310_))))
                                  (if (gx#stx-pair? _tl3929439315_)
                                      (let ((_e3929539318_
                                             (gx#stx-e _tl3929439315_)))
                                        (let ((_hd3929639321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3929539318_)))
                                              (_tl3929739323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3929539318_))))
                                          (if (gx#stx-pair? _hd3929639321_)
                                              (let ((_e3929839326_
                                                     (gx#stx-e
                                                      _hd3929639321_)))
                                                (let ((_hd3929939329_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3929839326_)))
                                                      (_tl3930039331_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3929839326_))))
                                                  ((lambda (_L39334_
                                                            _L39335_
                                                            _L39336_)
                                                     (let ((_body39376_
                                                            (map (lambda (_g3937139373_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-subst-object-refs
                            _g3937139373_
                            _L39336_
                            _$t39190_
                            _method-calls37745_
                            _slot-refs37746_
                            _class-type-check37747_
                            _struct-type-check139284_
                            _struct-type-check239285_))
                         _L39334_)))
               (gxc#xform-wrap-source
                (cons '%#lambda (cons (cons _L39336_ _L39335_) _body39376_))
                _L38938_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl3929739323_
                                                   _tl3930039331_
                                                   _hd3929939329_)))
                                              (_g3928739305_ _g3928839308_))))
                                      (_g3928739305_ _g3928839308_))))
                              (_g3928739305_ _g3928839308_)))))
                  (_g3928639378_ _L38938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr39542_
                                                      (lambda (_struct-type-check139383_
                                                               _struct-type-check239384_)
                                                        (let* ((_g3938639405_
                                                                (lambda (_g3938739402_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3938739402_)))
                       (_g3938539539_
                        (lambda (_g3938739408_)
                          (if (gx#stx-pair? _g3938739408_)
                              (let ((_e3938939410_ (gx#stx-e _g3938739408_)))
                                (let ((_hd3939039413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3938939410_)))
                                      (_tl3939139415_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3938939410_))))
                                  (if (gx#stx-pair/null? _tl3939139415_)
                                      (let ((_g42634_
                                             (gx#syntax-split-splice
                                              _tl3939139415_
                                              '0)))
                                        (begin
                                          (let ((_g42635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42634_)
                                                       (##vector-length
                                                        _g42634_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42635_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42635_)))
                                          (let ((_target3939239418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42634_ 0)))
                                                (_tl3939439420_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42634_ 1))))
                                            (if (gx#stx-null? _tl3939439420_)
                                                (letrec ((_loop3939539423_
                                                          (lambda (_hd3939339426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause3939939428_)
                    (if (gx#stx-pair? _hd3939339426_)
                        (let ((_e3939639431_ (gx#stx-e _hd3939339426_)))
                          (let ((_lp-hd3939739434_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3939639431_)))
                                (_lp-tl3939839436_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3939639431_))))
                            (_loop3939539423_
                             _lp-tl3939839436_
                             (cons _lp-hd3939739434_ _clause3939939428_))))
                        (let ((_clause3940039439_
                               (reverse _clause3939939428_)))
                          ((lambda (_L39442_)
                             (let ((_clauses39537_
                                    (map (lambda (_clause39457_)
                                           (let* ((___stx4107741078_
                                                   _clause39457_)
                                                  (_g3946039475_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4107741078_))))
                                             (let ((___kont4107941080_
                                                    (lambda (_L39503_
                                                             _L39504_
                                                             _L39505_)
                                                      (let ((_body39525_
                                                             (map (lambda (_g3952039522_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-subst-object-refs
                             _g3952039522_
                             _L39505_
                             _$t39190_
                             _method-calls37745_
                             _slot-refs37746_
                             _class-type-check37747_
                             _struct-type-check139383_
                             _struct-type-check239384_))
                          _L39503_)))
                (cons (cons _L39505_ _L39504_) _body39525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4108141082_
                                                    (lambda () _clause39457_)))
                                               (if (gx#stx-pair?
                                                    ___stx4107741078_)
                                                   (let ((_e3946539487_
                                                          (gx#stx-e
                                                           ___stx4107741078_)))
                                                     (let ((_tl3946739492_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3946539487_)))
                                                           (_hd3946639490_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3946539487_))))
                                                       (if (gx#stx-pair?
                                                            _hd3946639490_)
                                                           (let ((_e3946839495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3946639490_)))
                     (let ((_tl3947039500_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3946839495_)))
                           (_hd3946939498_
                            (let ()
                              (declare (not safe))
                              (##car _e3946839495_))))
                       (___kont4107941080_
                        _tl3946739492_
                        _tl3947039500_
                        _hd3946939498_)))
                   (___kont4108141082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4108141082_)))))
                                         (foldr1 (lambda (_g3952939532_
                                                          _g3953039534_)
                                                   (cons _g3952939532_
                                                         _g3953039534_))
                                                 '()
                                                 _L39442_))))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses39537_)
                                _L38937_)))
                           _clause3940039439_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3939539423_
                                                   _target3939239418_
                                                   '()))
                                                (_g3938639405_
                                                 _g3938739408_)))))
                                      (_g3938639405_ _g3938739408_))))
                              (_g3938639405_ _g3938739408_)))))
                  (_g3938539539_ _L38937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl39547_
                                                      (lambda (_specializer-lambda-expr39544_
                                                               _specializer-case-lambda-expr39545_)
                                                        (gxc#xform-wrap-source
                                                         (cons '%#let-values
                                                               (cons (cons (cons (cons _L38939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons _specializer-lambda-expr39544_
                                               '()))
                                   '())
                             (cons _specializer-case-lambda-expr39545_ '())))
                 _stx37651_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr39549_
                                                      (_make-specializer-lambda-expr39381_
                                                       _struct-check-all39260_
                                                       _empty37750_))
                                                     (_specializer-case-lambda-expr39551_
                                                      (_make-specializer-case-lambda-expr39542_
                                                       _struct-check-all39260_
                                                       _empty37750_))
                                                     (_specializer-impl39553_
                                                      (_make-specializer-impl39547_
                                                       _specializer-lambda-expr39549_
                                                       _specializer-case-lambda-expr39551_))
                                                     (_unchecked-specializer-lambda-expr39555_
                                                      (if (_unchecked-specializer?37753_)
                                                          (_make-specializer-lambda-expr39381_
                                                           _empty37750_
                                                           _struct-check-all39260_)
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr39557_
                                                      (if (_unchecked-specializer?37753_)
                                                          (_make-specializer-case-lambda-expr39542_
                                                           _empty37750_
                                                           _struct-check-all39260_)
                                                          '#f))
                                                     (_unchecked-specializer-impl39559_
                                                      (if (_unchecked-specializer?37753_)
                                                          (_make-specializer-impl39547_
                                                           _unchecked-specializer-lambda-expr39555_
                                                           _unchecked-specializer-case-lambda-expr39557_)
                                                          '#f))
                                                     (_specializer-impl39561_
                                                      (_generate-specializer-impl37657_
                                                       _$t39190_
                                                       _methods-bind39213_
                                                       _slots-bind39236_
                                                       _class-check-bind39258_
                                                       _struct-check-bind39282_
                                                       _specializer-impl39553_
                                                       _lifted-specializer-id39188_
                                                       _unchecked-specializer-impl39559_)))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 (gx#stx-e _L37726_)
                                                 '" => "
                                                 (gx#stx-e
                                                  _specializer-id39181_))
                                                (_generate-specializer-def37658_
                                                 _L37726_
                                                 _specializer-id39181_
                                                 _specializer-impl39561_
                                                 _lifted-specializer-id39188_
                                                 _unchecked-specializer-impl39559_))))
                                        _hd3887038932_
                                        _hd3886738924_
                                        _hd3886438916_)
                                       (_g3884638876_ _g3884738879_))))
                               (_g3884638876_ _g3884738879_))
                           (_g3884638876_ _g3884738879_))
                       (_g3884638876_ _g3884738879_))))
               (_g3884638876_ _g3884738879_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3884638876_
                                                    _g3884738879_))))
                                           (_g3884638876_ _g3884738879_))))
                                   (_g3884638876_ _g3884738879_))))
                           (_g3884638876_ _g3884738879_))))
                   (_g3884638876_ _g3884738879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3884638876_
                                                    _g3884738879_)))))
                                       (_g3884539564_ _L37725_))
                                     (if (gxc#kw-lambda-expr? _L37725_)
                                         (let* ((_g3956739620_
                                                 (lambda (_g3956839617_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3956839617_)))
                                                (_g3956640892_
                                                 (lambda (_g3956839623_)
                                                   (if (gx#stx-pair?
                                                        _g3956839623_)
                                                       (let ((_e3957439625_
                                                              (gx#stx-e
                                                               _g3956839623_)))
                                                         (let ((_hd3957539628_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3957439625_)))
                       (_tl3957639630_
                        (let () (declare (not safe)) (##cdr _e3957439625_))))
                   (if (gx#identifier? _hd3957539628_)
                       (if (gx#stx-eq? '%#let-values _hd3957539628_)
                           (if (gx#stx-pair? _tl3957639630_)
                               (let ((_e3957739633_ (gx#stx-e _tl3957639630_)))
                                 (let ((_hd3957839636_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3957739633_)))
                                       (_tl3957939638_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3957739633_))))
                                   (if (gx#stx-pair? _hd3957839636_)
                                       (let ((_e3958039641_
                                              (gx#stx-e _hd3957839636_)))
                                         (let ((_hd3958139644_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3958039641_)))
                                               (_tl3958239646_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3958039641_))))
                                           (if (gx#stx-pair? _hd3958139644_)
                                               (let ((_e3958339649_
                                                      (gx#stx-e
                                                       _hd3958139644_)))
                                                 (let ((_hd3958439652_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3958339649_)))
                                                       (_tl3958539654_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3958339649_))))
                                                   (if (gx#stx-pair?
                                                        _hd3958439652_)
                                                       (let ((_e3958639657_
                                                              (gx#stx-e
                                                               _hd3958439652_)))
                                                         (let ((_hd3958739660_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3958639657_)))
                       (_tl3958839662_
                        (let () (declare (not safe)) (##cdr _e3958639657_))))
                   (if (gx#stx-null? _tl3958839662_)
                       (if (gx#stx-pair? _tl3958539654_)
                           (let ((_e3958939665_ (gx#stx-e _tl3958539654_)))
                             (let ((_hd3959039668_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3958939665_)))
                                   (_tl3959139670_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3958939665_))))
                               (if (gx#stx-pair? _hd3959039668_)
                                   (let ((_e3959239673_
                                          (gx#stx-e _hd3959039668_)))
                                     (let ((_hd3959339676_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3959239673_)))
                                           (_tl3959439678_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3959239673_))))
                                       (if (gx#identifier? _hd3959339676_)
                                           (if (gx#stx-eq?
                                                '%#let-values
                                                _hd3959339676_)
                                               (if (gx#stx-pair?
                                                    _tl3959439678_)
                                                   (let ((_e3959539681_
                                                          (gx#stx-e
                                                           _tl3959439678_)))
                                                     (let ((_hd3959639684_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3959539681_)))
                                                           (_tl3959739686_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3959539681_))))
                                                       (if (gx#stx-pair?
                                                            _hd3959639684_)
                                                           (let ((_e3959839689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3959639684_)))
                     (let ((_hd3959939692_
                            (let ()
                              (declare (not safe))
                              (##car _e3959839689_)))
                           (_tl3960039694_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3959839689_))))
                       (if (gx#stx-pair? _hd3959939692_)
                           (let ((_e3960139697_ (gx#stx-e _hd3959939692_)))
                             (let ((_hd3960239700_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3960139697_)))
                                   (_tl3960339702_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3960139697_))))
                               (if (gx#stx-pair? _hd3960239700_)
                                   (let ((_e3960439705_
                                          (gx#stx-e _hd3960239700_)))
                                     (let ((_hd3960539708_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3960439705_)))
                                           (_tl3960639710_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3960439705_))))
                                       (if (gx#stx-null? _tl3960639710_)
                                           (if (gx#stx-pair? _tl3960339702_)
                                               (let ((_e3960739713_
                                                      (gx#stx-e
                                                       _tl3960339702_)))
                                                 (let ((_hd3960839716_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3960739713_)))
                                                       (_tl3960939718_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3960739713_))))
                                                   (if (gx#stx-null?
                                                        _tl3960939718_)
                                                       (if (gx#stx-null?
                                                            _tl3960039694_)
                                                           (if (gx#stx-pair?
                                                                _tl3959739686_)
                                                               (let ((_e3961039721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3959739686_)))
                         (let ((_hd3961139724_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3961039721_)))
                               (_tl3961239726_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3961039721_))))
                           (if (gx#stx-null? _tl3961239726_)
                               (if (gx#stx-null? _tl3959139670_)
                                   (if (gx#stx-null? _tl3958239646_)
                                       (if (gx#stx-pair? _tl3957939638_)
                                           (let ((_e3961339729_
                                                  (gx#stx-e _tl3957939638_)))
                                             (let ((_hd3961439732_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3961339729_)))
                                                   (_tl3961539734_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3961339729_))))
                                               (if (gx#stx-null?
                                                    _tl3961539734_)
                                                   ((lambda (_L39737_
                                                             _L39738_
                                                             _L39739_
                                                             _L39740_
                                                             _L39741_)
                                                      (let* ((_g3978039842_
                                                              (lambda (_g3978139839_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g3978139839_)))
                     (_g3977940889_
                      (lambda (_g3978139845_)
                        (if (gx#stx-pair? _g3978139845_)
                            (let ((_e3978739847_ (gx#stx-e _g3978139845_)))
                              (let ((_hd3978839850_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3978739847_)))
                                    (_tl3978939852_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3978739847_))))
                                (if (gx#identifier? _hd3978839850_)
                                    (if (gx#stx-eq? '%#lambda _hd3978839850_)
                                        (if (gx#stx-pair? _tl3978939852_)
                                            (let ((_e3979039855_
                                                   (gx#stx-e _tl3978939852_)))
                                              (let ((_hd3979139858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3979039855_)))
                                                    (_tl3979239860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3979039855_))))
                                                (if (gx#stx-pair?
                                                     _tl3979239860_)
                                                    (let ((_e3979339863_
                                                           (gx#stx-e
                                                            _tl3979239860_)))
                                                      (let ((_hd3979439866_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e3979339863_)))
                    (_tl3979539868_
                     (let () (declare (not safe)) (##cdr _e3979339863_))))
                (if (gx#stx-pair? _hd3979439866_)
                    (let ((_e3979639871_ (gx#stx-e _hd3979439866_)))
                      (let ((_hd3979739874_
                             (let ()
                               (declare (not safe))
                               (##car _e3979639871_)))
                            (_tl3979839876_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3979639871_))))
                        (if (gx#identifier? _hd3979739874_)
                            (if (gx#stx-eq? '%#call _hd3979739874_)
                                (if (gx#stx-pair? _tl3979839876_)
                                    (let ((_e3979939879_
                                           (gx#stx-e _tl3979839876_)))
                                      (let ((_hd3980039882_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3979939879_)))
                                            (_tl3980139884_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3979939879_))))
                                        (if (gx#stx-pair? _hd3980039882_)
                                            (let ((_e3980239887_
                                                   (gx#stx-e _hd3980039882_)))
                                              (let ((_hd3980339890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3980239887_)))
                                                    (_tl3980439892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3980239887_))))
                                                (if (gx#identifier?
                                                     _hd3980339890_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3980339890_)
                                                        (if (gx#stx-pair?
                                                             _tl3980439892_)
                                                            (let ((_e3980539895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3980439892_)))
                      (let ((_hd3980639898_
                             (let ()
                               (declare (not safe))
                               (##car _e3980539895_)))
                            (_tl3980739900_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3980539895_))))
                        (if (gx#stx-null? _tl3980739900_)
                            (if (gx#stx-pair? _tl3980139884_)
                                (let ((_e3980839903_
                                       (gx#stx-e _tl3980139884_)))
                                  (let ((_hd3980939906_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3980839903_)))
                                        (_tl3981039908_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3980839903_))))
                                    (if (gx#stx-pair? _hd3980939906_)
                                        (let ((_e3981139911_
                                               (gx#stx-e _hd3980939906_)))
                                          (let ((_hd3981239914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3981139911_)))
                                                (_tl3981339916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3981139911_))))
                                            (if (gx#identifier? _hd3981239914_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd3981239914_)
                                                    (if (gx#stx-pair?
                                                         _tl3981339916_)
                                                        (let ((_e3981439919_
                                                               (gx#stx-e
                                                                _tl3981339916_)))
                                                          (let ((_hd3981539922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e3981439919_)))
                        (_tl3981639924_
                         (let () (declare (not safe)) (##cdr _e3981439919_))))
                    (if (gx#stx-null? _tl3981639924_)
                        (if (gx#stx-pair? _tl3981039908_)
                            (let ((_e3981739927_ (gx#stx-e _tl3981039908_)))
                              (let ((_hd3981839930_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3981739927_)))
                                    (_tl3981939932_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3981739927_))))
                                (if (gx#stx-pair? _hd3981839930_)
                                    (let ((_e3982039935_
                                           (gx#stx-e _hd3981839930_)))
                                      (let ((_hd3982139938_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3982039935_)))
                                            (_tl3982239940_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3982039935_))))
                                        (if (gx#identifier? _hd3982139938_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3982139938_)
                                                (if (gx#stx-pair?
                                                     _tl3982239940_)
                                                    (let ((_e3982339943_
                                                           (gx#stx-e
                                                            _tl3982239940_)))
                                                      (let ((_hd3982439946_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e3982339943_)))
                    (_tl3982539948_
                     (let () (declare (not safe)) (##cdr _e3982339943_))))
                (if (gx#stx-null? _tl3982539948_)
                    (if (gx#stx-pair/null? _tl3981939932_)
                        (if (fx>= (gx#stx-length _tl3981939932_) '1)
                            (let ((_g42636_
                                   (gx#syntax-split-splice _tl3981939932_ '1)))
                              (begin
                                (let ((_g42637_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g42636_)
                                             (##vector-length _g42636_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g42637_ 2)))
                                      (error "Context expects 2 values"
                                             _g42637_)))
                                (let ((_target3982639951_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42636_ 0)))
                                      (_tl3982839953_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42636_ 1))))
                                  (if (gx#stx-pair? _tl3982839953_)
                                      (let ((_e3983539956_
                                             (gx#stx-e _tl3982839953_)))
                                        (let ((_hd3983639959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3983539956_)))
                                              (_tl3983739961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3983539956_))))
                                          (if (gx#stx-null? _tl3983739961_)
                                              (letrec ((_loop3982939964_
                                                        (lambda (_hd3982739967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref3983339969_)
                  (if (gx#stx-pair? _hd3982739967_)
                      (let ((_e3983039972_ (gx#stx-e _hd3982739967_)))
                        (let ((_lp-hd3983139975_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3983039972_)))
                              (_lp-tl3983239977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3983039972_))))
                          (_loop3982939964_
                           _lp-tl3983239977_
                           (cons _lp-hd3983139975_ _kw-ref3983339969_))))
                      (let ((_kw-ref3983439980_ (reverse _kw-ref3983339969_)))
                        (if (gx#stx-null? _tl3979539868_)
                            ((lambda (_L39983_
                                      _L39984_
                                      _L39985_
                                      _L39986_
                                      _L39987_)
                               (let* ((_kw-count40038_
                                       (length (foldr1 (lambda (_g4003040033_
                                                                _g4003140035_)
                                                         (cons _g4003040033_
                                                               _g4003140035_))
                                                       '()
                                                       _L39984_)))
                                      (_self-index40040_
                                       (fx+ _kw-count40038_ '1)))
                                 (if (gxc#lambda-expr? _L39739_)
                                     (let* ((_g4004340057_
                                             (lambda (_g4004440054_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g4004440054_)))
                                            (_g4004240228_
                                             (lambda (_g4004440060_)
                                               (if (gx#stx-pair? _g4004440060_)
                                                   (let ((_e4004740062_
                                                          (gx#stx-e
                                                           _g4004440060_)))
                                                     (let ((_hd4004840065_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4004740062_)))
                                                           (_tl4004940067_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4004740062_))))
                                                       (if (gx#stx-pair?
                                                            _tl4004940067_)
                                                           (let ((_e4005040070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4004940067_)))
                     (let ((_hd4005140073_
                            (let ()
                              (declare (not safe))
                              (##car _e4005040070_)))
                           (_tl4005240075_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4005040070_))))
                       ((lambda (_L40078_ _L40079_)
                          (let ((_self40095_
                                 (list-ref _L40079_ _self-index40040_)))
                            (for-each
                             (lambda (_g4009640098_)
                               (gxc#apply-collect-object-refs
                                _g4009640098_
                                _self40095_
                                _method-calls37745_
                                _slot-refs37746_
                                _class-type-check37747_
                                _struct-type-check37748_
                                _struct-type-assert37749_))
                             _L40078_)
                            (if (_no-specializer?37752_)
                                _stx37651_
                                (let* ((_specializer-id40107_
                                        (let* ((_id40101_
                                                (make-symbol
                                                 (gx#stx-e _L37726_)
                                                 '"::specialize"))
                                               (_specializer-id40104_
                                                (gx#core-quote-syntax__1
                                                 _id40101_
                                                 (gx#stx-source _stx37651_))))
                                          (gx#core-bind-runtime!__0
                                           _specializer-id40104_)
                                          _specializer-id40104_))
                                       (_lifted-specializer-id40114_
                                        (if (_lift-unchecked-specializer?37754_)
                                            (let* ((_id40109_
                                                    (make-symbol
                                                     (gx#stx-e _L37726_)
                                                     '"::specialize::unchecked"))
                                                   (_lifted-specializer-id40111_
                                                    (gx#core-quote-syntax__1
                                                     _id40109_
                                                     (gx#stx-source
                                                      _stx37651_))))
                                              (gx#core-bind-runtime!__0
                                               _lifted-specializer-id40111_)
                                              _lifted-specializer-id40111_)
                                            '#f))
                                       (_$t40116_ (make-symbol (gensym '__t)))
                                       (_methods40118_
                                        (hash-keys _method-calls37745_))
                                       (_$methods40122_
                                        (map (lambda (_id40120_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id40120_)))
                                             _methods40118_))
                                       (_g42638_
                                        (for-each
                                         (lambda (_g4012340126_ _g4012440128_)
                                           (table-set!
                                            _method-calls37745_
                                            _g4012340126_
                                            _g4012440128_))
                                         _methods40118_
                                         _$methods40122_))
                                       (_methods-bind40139_
                                        (map (lambda (_g4013140134_
                                                      _g4013240136_)
                                               (_generate-method-bind37653_
                                                _$t40116_
                                                _g4013140134_
                                                _g4013240136_))
                                             _methods40118_
                                             _$methods40122_))
                                       (_slots40141_
                                        (hash-keys _slot-refs37746_))
                                       (_$slots40145_
                                        (map (lambda (_id40143_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id40143_)))
                                             _slots40141_))
                                       (_g42639_
                                        (for-each
                                         (lambda (_g4014640149_ _g4014740151_)
                                           (table-set!
                                            _slot-refs37746_
                                            _g4014640149_
                                            _g4014740151_))
                                         _slots40141_
                                         _$slots40145_))
                                       (_slots-bind40162_
                                        (map (lambda (_g4015440157_
                                                      _g4015540159_)
                                               (_generate-slot-bind37654_
                                                _$t40116_
                                                _g4015440157_
                                                _g4015540159_))
                                             _slots40141_
                                             _$slots40145_))
                                       (_class-check40164_
                                        (hash-keys _class-type-check37747_))
                                       (_$class-check40167_
                                        (map (lambda (_g42640_)
                                               (make-symbol (gensym '__class)))
                                             _class-check40164_))
                                       (_g42641_
                                        (for-each
                                         (lambda (_g4016840171_ _g4016940173_)
                                           (table-set!
                                            _class-type-check37747_
                                            _g4016840171_
                                            _g4016940173_))
                                         _class-check40164_
                                         _$class-check40167_))
                                       (_class-check-bind40184_
                                        (map (lambda (_g4017640179_
                                                      _g4017740181_)
                                               (_generate-class-check-bind37655_
                                                _$t40116_
                                                _g4017640179_
                                                _g4017740181_))
                                             _class-check40164_
                                             _$class-check40167_))
                                       (_struct-check-all40186_
                                        (hash-merge
                                         _struct-type-check37748_
                                         _struct-type-assert37749_))
                                       (_struct-check40188_
                                        (hash-keys _struct-check-all40186_))
                                       (_$struct-check40191_
                                        (map (lambda (_g42642_)
                                               (make-symbol (gensym '__class)))
                                             _struct-check40188_))
                                       (_g42643_
                                        (for-each
                                         (lambda (_g4019240195_ _g4019340197_)
                                           (table-set!
                                            _struct-check-all40186_
                                            _g4019240195_
                                            _g4019340197_))
                                         _struct-check40188_
                                         _$struct-check40191_))
                                       (_struct-check-bind40208_
                                        (map (lambda (_g4020040203_
                                                      _g4020140205_)
                                               (_generate-struct-check-bind37656_
                                                _$t40116_
                                                _g4020040203_
                                                _g4020140205_))
                                             _struct-check40188_
                                             _$struct-check40191_))
                                       (_make-specializer-impl40219_
                                        (lambda (_struct-type-check140210_
                                                 _struct-type-check240211_)
                                          (let ((_specializer-body40217_
                                                 (map (lambda (_g4021240214_)
                                                        (gxc#apply-subst-object-refs
                                                         _g4021240214_
                                                         _self40095_
                                                         _$t40116_
                                                         _method-calls37745_
                                                         _slot-refs37746_
                                                         _class-type-check37747_
                                                         _struct-type-check140210_
                                                         _struct-type-check240211_))
                                                      _L40078_)))
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _L39741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons '%#let-values
                                         (cons (cons (cons (cons _L39740_ '())
                                                           (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _L40079_ _specializer-body40217_))
                          _L39739_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L39738_ '())))
                                   '()))
                       '())
                 (cons _L39737_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx37651_))))
                                       (_specializer-impl40221_
                                        (_make-specializer-impl40219_
                                         _struct-check-all40186_
                                         _empty37750_))
                                       (_unchecked-specializer-impl40223_
                                        (if (_unchecked-specializer?37753_)
                                            (_make-specializer-impl40219_
                                             _empty37750_
                                             _struct-check-all40186_)
                                            '#f))
                                       (_specializer-impl40225_
                                        (_generate-specializer-impl37657_
                                         _$t40116_
                                         _methods-bind40139_
                                         _slots-bind40162_
                                         _class-check-bind40184_
                                         _struct-check-bind40208_
                                         _specializer-impl40221_
                                         _lifted-specializer-id40114_
                                         _unchecked-specializer-impl40223_)))
                                  (gxc#verbose
                                   '"generate method specializer "
                                   (gx#stx-e _L37726_)
                                   '" => "
                                   (gx#stx-e _specializer-id40107_))
                                  (_generate-specializer-def37658_
                                   _L37726_
                                   _specializer-id40107_
                                   _specializer-impl40225_
                                   _lifted-specializer-id40114_
                                   _unchecked-specializer-impl40223_)))))
                        _tl4005240075_
                        _hd4005140073_)))
                   (_g4004340057_ _g4004440060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4004340057_
                                                    _g4004440060_)))))
                                       (_g4004240228_ _L39739_))
                                     (if (gxc#opt-lambda-expr? _L39739_)
                                         (let* ((_g4023140261_
                                                 (lambda (_g4023240258_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g4023240258_)))
                                                (_g4023040886_
                                                 (lambda (_g4023240264_)
                                                   (if (gx#stx-pair?
                                                        _g4023240264_)
                                                       (let ((_e4023640266_
                                                              (gx#stx-e
                                                               _g4023240264_)))
                                                         (let ((_hd4023740269_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4023640266_)))
                       (_tl4023840271_
                        (let () (declare (not safe)) (##cdr _e4023640266_))))
                   (if (gx#stx-pair? _tl4023840271_)
                       (let ((_e4023940274_ (gx#stx-e _tl4023840271_)))
                         (let ((_hd4024040277_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4023940274_)))
                               (_tl4024140279_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4023940274_))))
                           (if (gx#stx-pair? _hd4024040277_)
                               (let ((_e4024240282_ (gx#stx-e _hd4024040277_)))
                                 (let ((_hd4024340285_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4024240282_)))
                                       (_tl4024440287_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4024240282_))))
                                   (if (gx#stx-pair? _hd4024340285_)
                                       (let ((_e4024540290_
                                              (gx#stx-e _hd4024340285_)))
                                         (let ((_hd4024640293_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4024540290_)))
                                               (_tl4024740295_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4024540290_))))
                                           (if (gx#stx-pair? _hd4024640293_)
                                               (let ((_e4024840298_
                                                      (gx#stx-e
                                                       _hd4024640293_)))
                                                 (let ((_hd4024940301_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4024840298_)))
                                                       (_tl4025040303_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4024840298_))))
                                                   (if (gx#stx-null?
                                                        _tl4025040303_)
                                                       (if (gx#stx-pair?
                                                            _tl4024740295_)
                                                           (let ((_e4025140306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4024740295_)))
                     (let ((_hd4025240309_
                            (let ()
                              (declare (not safe))
                              (##car _e4025140306_)))
                           (_tl4025340311_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4025140306_))))
                       (if (gx#stx-null? _tl4025340311_)
                           (if (gx#stx-null? _tl4024440287_)
                               (if (gx#stx-pair? _tl4024140279_)
                                   (let ((_e4025440314_
                                          (gx#stx-e _tl4024140279_)))
                                     (let ((_hd4025540317_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4025440314_)))
                                           (_tl4025640319_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4025440314_))))
                                       (if (gx#stx-null? _tl4025640319_)
                                           ((lambda (_L40322_
                                                     _L40323_
                                                     _L40324_)
                                              (let* ((_g4034740361_
                                                      (lambda (_g4034840358_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g4034840358_)))
                                                     (_g4034640402_
                                                      (lambda (_g4034840364_)
                                                        (if (gx#stx-pair?
                                                             _g4034840364_)
                                                            (let ((_e4035140366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _g4034840364_)))
                      (let ((_hd4035240369_
                             (let ()
                               (declare (not safe))
                               (##car _e4035140366_)))
                            (_tl4035340371_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4035140366_))))
                        (if (gx#stx-pair? _tl4035340371_)
                            (let ((_e4035440374_ (gx#stx-e _tl4035340371_)))
                              (let ((_hd4035540377_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4035440374_)))
                                    (_tl4035640379_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4035440374_))))
                                ((lambda (_L40382_ _L40383_)
                                   (let ((_self40396_
                                          (list-ref
                                           _L40383_
                                           _self-index40040_)))
                                     (for-each
                                      (lambda (_g4039740399_)
                                        (gxc#apply-collect-object-refs
                                         _g4039740399_
                                         _self40396_
                                         _method-calls37745_
                                         _slot-refs37746_
                                         _class-type-check37747_
                                         _struct-type-check37748_
                                         _struct-type-assert37749_))
                                      _L40382_)))
                                 _tl4035640379_
                                 _hd4035540377_)))
                            (_g4034740361_ _g4034840364_))))
                    (_g4034740361_ _g4034840364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4034640402_ _L40323_))
                                              (let* ((_g4040540424_
                                                      (lambda (_g4040640421_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g4040640421_)))
                                                     (_g4040440529_
                                                      (lambda (_g4040640427_)
                                                        (if (gx#stx-pair?
                                                             _g4040640427_)
                                                            (let ((_e4040840429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _g4040640427_)))
                      (let ((_hd4040940432_
                             (let ()
                               (declare (not safe))
                               (##car _e4040840429_)))
                            (_tl4041040434_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4040840429_))))
                        (if (gx#stx-pair/null? _tl4041040434_)
                            (let ((_g42644_
                                   (gx#syntax-split-splice _tl4041040434_ '0)))
                              (begin
                                (let ((_g42645_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g42644_)
                                             (##vector-length _g42644_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g42645_ 2)))
                                      (error "Context expects 2 values"
                                             _g42645_)))
                                (let ((_target4041140437_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42644_ 0)))
                                      (_tl4041340439_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42644_ 1))))
                                  (if (gx#stx-null? _tl4041340439_)
                                      (letrec ((_loop4041440442_
                                                (lambda (_hd4041240445_
                                                         _clause4041840447_)
                                                  (if (gx#stx-pair?
                                                       _hd4041240445_)
                                                      (let ((_e4041540450_
                                                             (gx#stx-e
                                                              _hd4041240445_)))
                                                        (let ((_lp-hd4041640453_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e4041540450_)))
                      (_lp-tl4041740455_
                       (let () (declare (not safe)) (##cdr _e4041540450_))))
                  (_loop4041440442_
                   _lp-tl4041740455_
                   (cons _lp-hd4041640453_ _clause4041840447_))))
              (let ((_clause4041940458_ (reverse _clause4041840447_)))
                ((lambda (_L40461_)
                   (for-each
                    (lambda (_clause40474_)
                      (let* ((_g4047640487_
                              (lambda (_g4047740484_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4047740484_)))
                             (_g4047540519_
                              (lambda (_g4047740490_)
                                (if (gx#stx-pair? _g4047740490_)
                                    (let ((_e4048040492_
                                           (gx#stx-e _g4047740490_)))
                                      (let ((_hd4048140495_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4048040492_)))
                                            (_tl4048240497_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4048040492_))))
                                        ((lambda (_L40500_ _L40501_)
                                           (let ((_self40513_
                                                  (list-ref
                                                   _L40501_
                                                   _self-index40040_)))
                                             (for-each
                                              (lambda (_g4051440516_)
                                                (gxc#apply-collect-object-refs
                                                 _g4051440516_
                                                 _self40513_
                                                 _method-calls37745_
                                                 _slot-refs37746_
                                                 _class-type-check37747_
                                                 _struct-type-check37748_
                                                 _struct-type-assert37749_))
                                              _L40500_)))
                                         _tl4048240497_
                                         _hd4048140495_)))
                                    (_g4047640487_ _g4047740490_)))))
                        (_g4047540519_ _clause40474_)))
                    (foldr1 (lambda (_g4052140524_ _g4052240526_)
                              (cons _g4052140524_ _g4052240526_))
                            '()
                            _L40461_)))
                 _clause4041940458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4041440442_
                                         _target4041140437_
                                         '()))
                                      (_g4040540424_ _g4040640427_)))))
                            (_g4040540424_ _g4040640427_))))
                    (_g4040540424_ _g4040640427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4040440529_ _L40322_))
                                              (if (_no-specializer?37752_)
                                                  _stx37651_
                                                  (let* ((_specializer-id40538_
                                                          (let* ((_id40532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol (gx#stx-e _L37726_) '"::specialize"))
                         (_specializer-id40535_
                          (gx#core-quote-syntax__1
                           _id40532_
                           (gx#stx-source _stx37651_))))
                    (gx#core-bind-runtime!__0 _specializer-id40535_)
                    _specializer-id40535_))
                 (_lifted-specializer-id40545_
                  (if (_lift-unchecked-specializer?37754_)
                      (let* ((_id40540_
                              (make-symbol
                               (gx#stx-e _L37726_)
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id40542_
                              (gx#core-quote-syntax__1
                               _id40540_
                               (gx#stx-source _stx37651_))))
                        (gx#core-bind-runtime!__0 _lifted-specializer-id40542_)
                        _lifted-specializer-id40542_)
                      '#f))
                 (_$t40547_ (make-symbol (gensym '__t)))
                 (_methods40549_ (hash-keys _method-calls37745_))
                 (_$methods40553_
                  (map (lambda (_id40551_)
                         (make-symbol '"__" (gensym _id40551_)))
                       _methods40549_))
                 (_g42646_
                  (for-each
                   (lambda (_g4055440557_ _g4055540559_)
                     (table-set!
                      _method-calls37745_
                      _g4055440557_
                      _g4055540559_))
                   _methods40549_
                   _$methods40553_))
                 (_methods-bind40570_
                  (map (lambda (_g4056240565_ _g4056340567_)
                         (_generate-method-bind37653_
                          _$t40547_
                          _g4056240565_
                          _g4056340567_))
                       _methods40549_
                       _$methods40553_))
                 (_slots40572_ (hash-keys _slot-refs37746_))
                 (_$slots40576_
                  (map (lambda (_id40574_)
                         (make-symbol '"__" (gensym _id40574_)))
                       _slots40572_))
                 (_g42647_
                  (for-each
                   (lambda (_g4057740580_ _g4057840582_)
                     (table-set! _slot-refs37746_ _g4057740580_ _g4057840582_))
                   _slots40572_
                   _$slots40576_))
                 (_slots-bind40593_
                  (map (lambda (_g4058540588_ _g4058640590_)
                         (_generate-slot-bind37654_
                          _$t40547_
                          _g4058540588_
                          _g4058640590_))
                       _slots40572_
                       _$slots40576_))
                 (_class-check40595_ (hash-keys _class-type-check37747_))
                 (_$class-check40598_
                  (map (lambda (_g42648_) (make-symbol (gensym '__class)))
                       _class-check40595_))
                 (_g42649_
                  (for-each
                   (lambda (_g4059940602_ _g4060040604_)
                     (table-set!
                      _class-type-check37747_
                      _g4059940602_
                      _g4060040604_))
                   _class-check40595_
                   _$class-check40598_))
                 (_class-check-bind40615_
                  (map (lambda (_g4060740610_ _g4060840612_)
                         (_generate-class-check-bind37655_
                          _$t40547_
                          _g4060740610_
                          _g4060840612_))
                       _class-check40595_
                       _$class-check40598_))
                 (_struct-check-all40617_
                  (hash-merge
                   _struct-type-check37748_
                   _struct-type-assert37749_))
                 (_struct-check40619_ (hash-keys _struct-check-all40617_))
                 (_$struct-check40622_
                  (map (lambda (_g42650_) (make-symbol (gensym '__class)))
                       _struct-check40619_))
                 (_g42651_
                  (for-each
                   (lambda (_g4062340626_ _g4062440628_)
                     (table-set!
                      _struct-check-all40617_
                      _g4062340626_
                      _g4062440628_))
                   _struct-check40619_
                   _$struct-check40622_))
                 (_struct-check-bind40639_
                  (map (lambda (_g4063140634_ _g4063240636_)
                         (_generate-struct-check-bind37656_
                          _$t40547_
                          _g4063140634_
                          _g4063240636_))
                       _struct-check40619_
                       _$struct-check40622_))
                 (_make-specializer-lambda-expr40725_
                  (lambda (_struct-type-check140641_ _struct-type-check240642_)
                    (let* ((_g4064440658_
                            (lambda (_g4064540655_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4064540655_)))
                           (_g4064340722_
                            (lambda (_g4064540661_)
                              (if (gx#stx-pair? _g4064540661_)
                                  (let ((_e4064840663_
                                         (gx#stx-e _g4064540661_)))
                                    (let ((_hd4064940666_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4064840663_)))
                                          (_tl4065040668_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4064840663_))))
                                      (if (gx#stx-pair? _tl4065040668_)
                                          (let ((_e4065140671_
                                                 (gx#stx-e _tl4065040668_)))
                                            (let ((_hd4065240674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4065140671_)))
                                                  (_tl4065340676_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4065140671_))))
                                              ((lambda (_L40679_ _L40680_)
                                                 (let* ((_self40713_
                                                         (list-ref
                                                          _L40680_
                                                          _self-index40040_))
                                                        (_body40719_
                                                         (map (lambda (_g4071440716_)
                                                                (gxc#apply-subst-object-refs
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g4071440716_
                         _self40713_
                         _$t40547_
                         _method-calls37745_
                         _slot-refs37746_
                         _class-type-check37747_
                         _struct-type-check140641_
                         _struct-type-check240642_))
                      _L40679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gxc#xform-wrap-source
                                                    (cons '%#lambda
                                                          (cons _L40680_
                                                                _body40719_))
                                                    _L40323_)))
                                               _tl4065340676_
                                               _hd4065240674_)))
                                          (_g4064440658_ _g4064540661_))))
                                  (_g4064440658_ _g4064540661_)))))
                      (_g4064340722_ _L40323_))))
                 (_make-specializer-case-lambda-expr40864_
                  (lambda (_struct-type-check140727_ _struct-type-check240728_)
                    (let* ((_g4073040749_
                            (lambda (_g4073140746_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4073140746_)))
                           (_g4072940861_
                            (lambda (_g4073140752_)
                              (if (gx#stx-pair? _g4073140752_)
                                  (let ((_e4073340754_
                                         (gx#stx-e _g4073140752_)))
                                    (let ((_hd4073440757_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4073340754_)))
                                          (_tl4073540759_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4073340754_))))
                                      (if (gx#stx-pair/null? _tl4073540759_)
                                          (let ((_g42652_
                                                 (gx#syntax-split-splice
                                                  _tl4073540759_
                                                  '0)))
                                            (begin
                                              (let ((_g42653_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g42652_)
                                                           (##vector-length
                                                            _g42652_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g42653_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g42653_)))
                                              (let ((_target4073640762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42652_
                                                        0)))
                                                    (_tl4073840764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42652_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl4073840764_)
                                                    (letrec ((_loop4073940767_
                                                              (lambda (_hd4073740770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause4074340772_)
                        (if (gx#stx-pair? _hd4073740770_)
                            (let ((_e4074040775_ (gx#stx-e _hd4073740770_)))
                              (let ((_lp-hd4074140778_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4074040775_)))
                                    (_lp-tl4074240780_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4074040775_))))
                                (_loop4073940767_
                                 _lp-tl4074240780_
                                 (cons _lp-hd4074140778_ _clause4074340772_))))
                            (let ((_clause4074440783_
                                   (reverse _clause4074340772_)))
                              ((lambda (_L40786_)
                                 (let ((_clauses40859_
                                        (map (lambda (_clause40801_)
                                               (let* ((_g4080340814_
                                                       (lambda (_g4080440811_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g4080440811_)))
                                                      (_g4080240849_
                                                       (lambda (_g4080440817_)
                                                         (if (gx#stx-pair?
                                                              _g4080440817_)
                                                             (let ((_e4080740819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _g4080440817_)))
                       (let ((_hd4080840822_
                              (let ()
                                (declare (not safe))
                                (##car _e4080740819_)))
                             (_tl4080940824_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4080740819_))))
                         ((lambda (_L40827_ _L40828_)
                            (let* ((_self40840_
                                    (list-ref _L40828_ _self-index40040_))
                                   (_body40846_
                                    (map (lambda (_g4084140843_)
                                           (gxc#apply-subst-object-refs
                                            _g4084140843_
                                            _self40840_
                                            _$t40547_
                                            _method-calls37745_
                                            _slot-refs37746_
                                            _class-type-check37747_
                                            _struct-type-check140727_
                                            _struct-type-check240728_))
                                         _L40827_)))
                              (cons _L40828_ _body40846_)))
                          _tl4080940824_
                          _hd4080840822_)))
                     (_g4080340814_ _g4080440817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4080240849_
                                                  _clause40801_)))
                                             (foldr1 (lambda (_g4085140854_
                                                              _g4085240856_)
                                                       (cons _g4085140854_
                                                             _g4085240856_))
                                                     '()
                                                     _L40786_))))
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses40859_)
                                    _L40322_)))
                               _clause4074440783_))))))
              (_loop4073940767_ _target4073640762_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4073040749_
                                                     _g4073140752_)))))
                                          (_g4073040749_ _g4073140752_))))
                                  (_g4073040749_ _g4073140752_)))))
                      (_g4072940861_ _L40322_))))
                 (_make-specializer-impl40869_
                  (lambda (_specializer-lambda-expr40866_
                           _specializer-case-lambda-expr40867_)
                    (gxc#xform-wrap-source
                     (cons '%#let-values
                           (cons (cons (cons (cons _L39741_ '())
                                             (cons (cons '%#let-values
                                                         (cons (cons (cons (cons _L39740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons (cons (cons (cons _L40324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _specializer-lambda-expr40866_ '()))
                    '())
              (cons _specializer-case-lambda-expr40867_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx37651_)
                                         '()))
                             '())
                       (cons _L39738_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons _L39737_ '())))
                     _stx37651_)))
                 (_specializer-lambda-expr40871_
                  (_make-specializer-lambda-expr40725_
                   _struct-check-all40617_
                   _empty37750_))
                 (_specializer-case-lambda-expr40873_
                  (_make-specializer-case-lambda-expr40864_
                   _struct-check-all40617_
                   _empty37750_))
                 (_specializer-impl40875_
                  (_make-specializer-impl40869_
                   _specializer-lambda-expr40871_
                   _specializer-case-lambda-expr40873_))
                 (_unchecked-specializer-lambda-expr40877_
                  (if (_unchecked-specializer?37753_)
                      (_make-specializer-lambda-expr40725_
                       _empty37750_
                       _struct-check-all40617_)
                      '#f))
                 (_unchecked-specializer-case-lambda-expr40879_
                  (if (_unchecked-specializer?37753_)
                      (_make-specializer-case-lambda-expr40864_
                       _empty37750_
                       _struct-check-all40617_)
                      '#f))
                 (_unchecked-specializer-impl40881_
                  (if (_unchecked-specializer?37753_)
                      (_make-specializer-impl40869_
                       _unchecked-specializer-lambda-expr40877_
                       _unchecked-specializer-case-lambda-expr40879_)
                      '#f))
                 (_specializer-impl40883_
                  (_generate-specializer-impl37657_
                   _$t40547_
                   _methods-bind40570_
                   _slots-bind40593_
                   _class-check-bind40615_
                   _struct-check-bind40639_
                   _specializer-impl40875_
                   _lifted-specializer-id40545_
                   _unchecked-specializer-impl40881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     (gx#stx-e _L37726_)
                                                     '" => "
                                                     (gx#stx-e
                                                      _specializer-id40538_))
                                                    (_generate-specializer-def37658_
                                                     _L37726_
                                                     _specializer-id40538_
                                                     _specializer-impl40883_
                                                     _lifted-specializer-id40545_
                                                     _unchecked-specializer-impl40881_))))
                                            _hd4025540317_
                                            _hd4025240309_
                                            _hd4024940301_)
                                           (_g4023140261_ _g4023240264_))))
                                   (_g4023140261_ _g4023240264_))
                               (_g4023140261_ _g4023240264_))
                           (_g4023140261_ _g4023240264_))))
                   (_g4023140261_ _g4023240264_))
               (_g4023140261_ _g4023240264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4023140261_ _g4023240264_))))
                                       (_g4023140261_ _g4023240264_))))
                               (_g4023140261_ _g4023240264_))))
                       (_g4023140261_ _g4023240264_))))
               (_g4023140261_ _g4023240264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g4023040886_ _L39739_))
                                         _stx37651_))))
                             _hd3983639959_
                             _kw-ref3983439980_
                             _hd3982439946_
                             _hd3981539922_
                             _hd3980639898_)
                            (_g3978039842_ _g3978139845_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3982939964_
                                                 _target3982639951_
                                                 '()))
                                              (_g3978039842_ _g3978139845_))))
                                      (_g3978039842_ _g3978139845_)))))
                            (_g3978039842_ _g3978139845_))
                        (_g3978039842_ _g3978139845_))
                    (_g3978039842_ _g3978139845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3978039842_
                                                     _g3978139845_))
                                                (_g3978039842_ _g3978139845_))
                                            (_g3978039842_ _g3978139845_))))
                                    (_g3978039842_ _g3978139845_))))
                            (_g3978039842_ _g3978139845_))
                        (_g3978039842_ _g3978139845_))))
                (_g3978039842_ _g3978139845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3978039842_
                                                     _g3978139845_))
                                                (_g3978039842_
                                                 _g3978139845_))))
                                        (_g3978039842_ _g3978139845_))))
                                (_g3978039842_ _g3978139845_))
                            (_g3978039842_ _g3978139845_))))
                    (_g3978039842_ _g3978139845_))
                (_g3978039842_ _g3978139845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3978039842_
                                                     _g3978139845_))))
                                            (_g3978039842_ _g3978139845_))))
                                    (_g3978039842_ _g3978139845_))
                                (_g3978039842_ _g3978139845_))
                            (_g3978039842_ _g3978139845_))))
                    (_g3978039842_ _g3978139845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3978039842_
                                                     _g3978139845_))))
                                            (_g3978039842_ _g3978139845_))
                                        (_g3978039842_ _g3978139845_))
                                    (_g3978039842_ _g3978139845_))))
                            (_g3978039842_ _g3978139845_)))))
                (_g3977940889_ _L39738_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3961439732_
                                                    _hd3961139724_
                                                    _hd3960839716_
                                                    _hd3960539708_
                                                    _hd3958739660_)
                                                   (_g3956739620_
                                                    _g3956839623_))))
                                           (_g3956739620_ _g3956839623_))
                                       (_g3956739620_ _g3956839623_))
                                   (_g3956739620_ _g3956839623_))
                               (_g3956739620_ _g3956839623_))))
                       (_g3956739620_ _g3956839623_))
                   (_g3956739620_ _g3956839623_))
               (_g3956739620_ _g3956839623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3956739620_ _g3956839623_))
                                           (_g3956739620_ _g3956839623_))))
                                   (_g3956739620_ _g3956839623_))))
                           (_g3956739620_ _g3956839623_))))
                   (_g3956739620_ _g3956839623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3956739620_
                                                    _g3956839623_))
                                               (_g3956739620_ _g3956839623_))
                                           (_g3956739620_ _g3956839623_))))
                                   (_g3956739620_ _g3956839623_))))
                           (_g3956739620_ _g3956839623_))
                       (_g3956739620_ _g3956839623_))))
               (_g3956739620_ _g3956839623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3956739620_ _g3956839623_))))
                                       (_g3956739620_ _g3956839623_))))
                               (_g3956739620_ _g3956839623_))
                           (_g3956739620_ _g3956839623_))
                       (_g3956739620_ _g3956839623_))))
               (_g3956739620_ _g3956839623_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g3956640892_ _L37725_))
                                         _stx37651_))))))))
                  (___kont4110141102_ (lambda () _stx37651_)))
              (let ((___match4113041131_
                     (lambda (_e3766537693_
                              _hd3766637696_
                              _tl3766737698_
                              _e3766837701_
                              _hd3766937704_
                              _tl3767037706_
                              _e3767137709_
                              _hd3767237712_
                              _tl3767337714_
                              _e3767437717_
                              _hd3767537720_
                              _tl3767637722_)
                       (let ((_L37725_ _hd3767537720_)
                             (_L37726_ _hd3767237712_))
                         (if (gxc#optimizer-top-level-method?
                              (gxc#identifier-symbol _L37726_))
                             (___kont4109941100_ _L37725_ _L37726_)
                             (___kont4110141102_))))))
                (if (gx#stx-pair? ___stx4109741098_)
                    (let ((_e3766537693_ (gx#stx-e ___stx4109741098_)))
                      (let ((_tl3766737698_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3766537693_)))
                            (_hd3766637696_
                             (let ()
                               (declare (not safe))
                               (##car _e3766537693_))))
                        (if (gx#stx-pair? _tl3766737698_)
                            (let ((_e3766837701_ (gx#stx-e _tl3766737698_)))
                              (let ((_tl3767037706_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3766837701_)))
                                    (_hd3766937704_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3766837701_))))
                                (if (gx#stx-pair? _hd3766937704_)
                                    (let ((_e3767137709_
                                           (gx#stx-e _hd3766937704_)))
                                      (let ((_tl3767337714_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3767137709_)))
                                            (_hd3767237712_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3767137709_))))
                                        (if (gx#stx-null? _tl3767337714_)
                                            (if (gx#stx-pair? _tl3767037706_)
                                                (let ((_e3767437717_
                                                       (gx#stx-e
                                                        _tl3767037706_)))
                                                  (let ((_tl3767637722_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3767437717_)))
                                                        (_hd3767537720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3767437717_))))
                                                    (if (gx#stx-null?
                                                         _tl3767637722_)
                                                        (___match4113041131_
                                                         _e3766537693_
                                                         _hd3766637696_
                                                         _tl3766737698_
                                                         _e3766837701_
                                                         _hd3766937704_
                                                         _tl3767037706_
                                                         _e3767137709_
                                                         _hd3767237712_
                                                         _tl3767337714_
                                                         _e3767437717_
                                                         _hd3767537720_
                                                         _tl3767637722_)
                                                        (___kont4110141102_))))
                                                (___kont4110141102_))
                                            (___kont4110141102_))))
                                    (___kont4110141102_))))
                            (___kont4110141102_))))
                    (___kont4110141102_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx36153_
               _self36154_
               _methods36155_
               _slots36156_
               _class-check36157_
               _struct-check36158_
               _struct-assert36159_)
        (let* ((___stx4113341134_ _stx36153_)
               (_g3617136489_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4113341134_))))
          (let ((___kont4113541136_
                 (lambda (_L37600_ _L37601_ _L37602_ _L37603_)
                   (table-set! _methods36155_ (gx#stx-e _L37601_) '#t)
                   (for-each
                    (lambda (_g3763637638_)
                      (gxc#compile-e
                       _g3763637638_
                       _self36154_
                       _methods36155_
                       _slots36156_
                       _class-check36157_
                       _struct-check36158_
                       _struct-assert36159_))
                    (foldr1 (lambda (_g3764037643_ _g3764137645_)
                              (cons _g3764037643_ _g3764137645_))
                            '()
                            _L37600_))))
                (___kont4113941140_
                 (lambda (_L37435_ _L37436_ _L37437_ _L37438_ _L37439_)
                   (table-set! _methods36155_ (gx#stx-e _L37436_) '#t)
                   (for-each
                    (lambda (_g3747937481_)
                      (gxc#compile-e
                       _g3747937481_
                       _self36154_
                       _methods36155_
                       _slots36156_
                       _class-check36157_
                       _struct-check36158_
                       _struct-assert36159_))
                    (foldr1 (lambda (_g3748337486_ _g3748437488_)
                              (cons _g3748337486_ _g3748437488_))
                            '()
                            _L37435_))))
                (___kont4114341144_
                 (lambda (_L37268_ _L37269_ _L37270_)
                   (table-set! _slots36156_ (gx#stx-e _L37268_) '#t)))
                (___kont4114541146_
                 (lambda (_L37145_ _L37146_ _L37147_ _L37148_)
                   (table-set! _slots36156_ (gx#stx-e _L37146_) '#t)
                   (gxc#compile-e
                    _L37145_
                    _self36154_
                    _methods36155_
                    _slots36156_
                    _class-check36157_
                    _struct-check36158_
                    _struct-assert36159_)))
                (___kont4114741148_
                 (lambda (_L37029_ _L37030_)
                   (table-set!
                    _slots36156_
                    (##structure-ref
                     (gxc#optimizer-resolve-type
                      (gxc#identifier-symbol _L37030_))
                     '2
                     gxc#!class-getf::t
                     '#f)
                    '#t)))
                (___kont4114941150_
                 (lambda (_L36941_ _L36942_ _L36943_)
                   (table-set!
                    _slots36156_
                    (##structure-ref
                     (gxc#optimizer-resolve-type
                      (gxc#identifier-symbol _L36943_))
                     '2
                     gxc#!class-setf::t
                     '#f)
                    '#t)
                   (gxc#compile-e
                    _L36941_
                    _self36154_
                    _methods36155_
                    _slots36156_
                    _class-check36157_
                    _struct-check36158_
                    _struct-assert36159_)))
                (___kont4115141152_
                 (lambda (_L36849_ _L36850_)
                   (table-set!
                    _class-check36157_
                    (##structure-ref
                     (gxc#optimizer-resolve-type
                      (gxc#identifier-symbol _L36850_))
                     '1
                     gxc#!type::t
                     '#f)
                    '#t)))
                (___kont4115341154_
                 (lambda (_L36765_ _L36766_)
                   (table-set!
                    _struct-check36158_
                    (##structure-ref
                     (gxc#optimizer-resolve-type
                      (gxc#identifier-symbol _L36766_))
                     '1
                     gxc#!type::t
                     '#f)
                    '#t)))
                (___kont4115541156_
                 (lambda (_L36668_ _L36669_)
                   (let ((_getf36702_
                          (gxc#optimizer-resolve-type
                           (gxc#identifier-symbol _L36669_))))
                     (if (##structure-ref
                          _getf36702_
                          '3
                          gxc#!struct-getf::t
                          '#f)
                         '#!void
                         (table-set!
                          _struct-assert36159_
                          (##structure-ref _getf36702_ '1 gxc#!type::t '#f)
                          '#t)))))
                (___kont4115741158_
                 (lambda (_L36565_ _L36566_ _L36567_)
                   (let ((_setf36605_
                          (gxc#optimizer-resolve-type
                           (gxc#identifier-symbol _L36567_))))
                     (if (##structure-ref
                          _setf36605_
                          '3
                          gxc#!struct-setf::t
                          '#f)
                         '#!void
                         (table-set!
                          _struct-assert36159_
                          (##structure-ref _setf36605_ '1 gxc#!type::t '#f)
                          '#t))
                     (gxc#compile-e
                      _L36565_
                      _self36154_
                      _methods36155_
                      _slots36156_
                      _class-check36157_
                      _struct-check36158_
                      _struct-assert36159_))))
                (___kont4115941160_
                 (lambda ()
                   (gxc#collect-operands
                    _stx36153_
                    _self36154_
                    _methods36155_
                    _slots36156_
                    _class-check36157_
                    _struct-check36158_
                    _struct-assert36159_))))
            (let* ((___match4187041871_
                    (lambda (_e3646136501_
                             _hd3646236504_
                             _tl3646336506_
                             _e3646436509_
                             _hd3646536512_
                             _tl3646636514_
                             _e3646736517_
                             _hd3646836520_
                             _tl3646936522_
                             _e3647036525_
                             _hd3647136528_
                             _tl3647236530_
                             _e3647336533_
                             _hd3647436536_
                             _tl3647536538_
                             _e3647636541_
                             _hd3647736544_
                             _tl3647836546_
                             _e3647936549_
                             _hd3648036552_
                             _tl3648136554_
                             _e3648236557_
                             _hd3648336560_
                             _tl3648436562_)
                      (let ((_L36565_ _hd3648336560_)
                            (_L36566_ _hd3648036552_)
                            (_L36567_ _hd3647136528_))
                        (if (if (not (gx#free-identifier=?
                                      _L36566_
                                      _self36154_))
                                '#f
                                (let ((_$e36594_
                                       (gxc#optimizer-resolve-type
                                        (gxc#identifier-symbol _L36567_))))
                                  (and _$e36594_
                                       ((lambda (_t36597_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t36597_
                                                  'gxc#!struct-setf::t))
                                               (let ((_struct-t3659836600_
                                                      (gxc#optimizer-resolve-type
                                                       (##structure-ref
                                                        _t36597_
                                                        '1
                                                        gxc#!type::t
                                                        '#f))))
                                                 (and _struct-t3659836600_
                                                      (let ((_struct-t36603_
                                                             _struct-t3659836600_))
                                                        (##structure-ref
                                                         _struct-t36603_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e36594_))))
                            (___kont4115741158_ _L36565_ _L36566_ _L36567_)
                            (___kont4115941160_)))))
                   (___match4186241863_
                    (lambda (_e3646136501_
                             _hd3646236504_
                             _tl3646336506_
                             _e3646436509_
                             _hd3646536512_
                             _tl3646636514_
                             _e3646736517_
                             _hd3646836520_
                             _tl3646936522_
                             _e3647036525_
                             _hd3647136528_
                             _tl3647236530_
                             _e3647336533_
                             _hd3647436536_
                             _tl3647536538_
                             _e3647636541_
                             _hd3647736544_
                             _tl3647836546_
                             _e3647936549_
                             _hd3648036552_
                             _tl3648136554_)
                      (if (gx#stx-pair? _tl3647536538_)
                          (let ((_e3648236557_ (gx#stx-e _tl3647536538_)))
                            (let ((_tl3648436562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3648236557_)))
                                  (_hd3648336560_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3648236557_))))
                              (if (gx#stx-null? _tl3648436562_)
                                  (___match4187041871_
                                   _e3646136501_
                                   _hd3646236504_
                                   _tl3646336506_
                                   _e3646436509_
                                   _hd3646536512_
                                   _tl3646636514_
                                   _e3646736517_
                                   _hd3646836520_
                                   _tl3646936522_
                                   _e3647036525_
                                   _hd3647136528_
                                   _tl3647236530_
                                   _e3647336533_
                                   _hd3647436536_
                                   _tl3647536538_
                                   _e3647636541_
                                   _hd3647736544_
                                   _tl3647836546_
                                   _e3647936549_
                                   _hd3648036552_
                                   _tl3648136554_
                                   _e3648236557_
                                   _hd3648336560_
                                   _tl3648436562_)
                                  (___kont4115941160_))))
                          (___kont4115941160_))))
                   (___match4180841809_
                    (lambda (_e3643736612_
                             _hd3643836615_
                             _tl3643936617_
                             _e3644036620_
                             _hd3644136623_
                             _tl3644236625_
                             _e3644336628_
                             _hd3644436631_
                             _tl3644536633_
                             _e3644636636_
                             _hd3644736639_
                             _tl3644836641_
                             _e3644936644_
                             _hd3645036647_
                             _tl3645136649_
                             _e3645236652_
                             _hd3645336655_
                             _tl3645436657_
                             _e3645536660_
                             _hd3645636663_
                             _tl3645736665_)
                      (let ((_L36668_ _hd3645636663_)
                            (_L36669_ _hd3644736639_))
                        (if (if (not (gx#free-identifier=?
                                      _L36668_
                                      _self36154_))
                                '#f
                                (let ((_$e36691_
                                       (gxc#optimizer-resolve-type
                                        (gxc#identifier-symbol _L36669_))))
                                  (and _$e36691_
                                       ((lambda (_t36694_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t36694_
                                                  'gxc#!struct-getf::t))
                                               (let ((_struct-t3669536697_
                                                      (gxc#optimizer-resolve-type
                                                       (##structure-ref
                                                        _t36694_
                                                        '1
                                                        gxc#!type::t
                                                        '#f))))
                                                 (and _struct-t3669536697_
                                                      (let ((_struct-t36700_
                                                             _struct-t3669536697_))
                                                        (##structure-ref
                                                         _struct-t36700_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e36691_))))
                            (___kont4115541156_ _L36668_ _L36669_)
                            (___kont4115941160_)))))
                   (___match4175241753_
                    (lambda (_e3641436709_
                             _hd3641536712_
                             _tl3641636714_
                             _e3641736717_
                             _hd3641836720_
                             _tl3641936722_
                             _e3642036725_
                             _hd3642136728_
                             _tl3642236730_
                             _e3642336733_
                             _hd3642436736_
                             _tl3642536738_
                             _e3642636741_
                             _hd3642736744_
                             _tl3642836746_
                             _e3642936749_
                             _hd3643036752_
                             _tl3643136754_
                             _e3643236757_
                             _hd3643336760_
                             _tl3643436762_)
                      (let ((_L36765_ _hd3643336760_)
                            (_L36766_ _hd3642436736_))
                        (if (and (let ((__tmp42654
                                        (gxc#optimizer-resolve-type
                                         (gxc#identifier-symbol _L36766_))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp42654
                                    'gxc#!struct-pred::t))
                                 (gx#free-identifier=? _L36765_ _self36154_))
                            (___kont4115341154_ _L36765_ _L36766_)
                            (___match4180841809_
                             _e3641436709_
                             _hd3641536712_
                             _tl3641636714_
                             _e3641736717_
                             _hd3641836720_
                             _tl3641936722_
                             _e3642036725_
                             _hd3642136728_
                             _tl3642236730_
                             _e3642336733_
                             _hd3642436736_
                             _tl3642536738_
                             _e3642636741_
                             _hd3642736744_
                             _tl3642836746_
                             _e3642936749_
                             _hd3643036752_
                             _tl3643136754_
                             _e3643236757_
                             _hd3643336760_
                             _tl3643436762_)))))
                   (___match4169641697_
                    (lambda (_e3639136793_
                             _hd3639236796_
                             _tl3639336798_
                             _e3639436801_
                             _hd3639536804_
                             _tl3639636806_
                             _e3639736809_
                             _hd3639836812_
                             _tl3639936814_
                             _e3640036817_
                             _hd3640136820_
                             _tl3640236822_
                             _e3640336825_
                             _hd3640436828_
                             _tl3640536830_
                             _e3640636833_
                             _hd3640736836_
                             _tl3640836838_
                             _e3640936841_
                             _hd3641036844_
                             _tl3641136846_)
                      (let ((_L36849_ _hd3641036844_)
                            (_L36850_ _hd3640136820_))
                        (if (and (let ((__tmp42655
                                        (gxc#optimizer-resolve-type
                                         (gxc#identifier-symbol _L36850_))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp42655
                                    'gxc#!class-pred::t))
                                 (gx#free-identifier=? _L36849_ _self36154_))
                            (___kont4115141152_ _L36849_ _L36850_)
                            (___match4175241753_
                             _e3639136793_
                             _hd3639236796_
                             _tl3639336798_
                             _e3639436801_
                             _hd3639536804_
                             _tl3639636806_
                             _e3639736809_
                             _hd3639836812_
                             _tl3639936814_
                             _e3640036817_
                             _hd3640136820_
                             _tl3640236822_
                             _e3640336825_
                             _hd3640436828_
                             _tl3640536830_
                             _e3640636833_
                             _hd3640736836_
                             _tl3640836838_
                             _e3640936841_
                             _hd3641036844_
                             _tl3641136846_)))))
                   (___match4169441695_
                    (lambda (_e3639136793_
                             _hd3639236796_
                             _tl3639336798_
                             _e3639436801_
                             _hd3639536804_
                             _tl3639636806_
                             _e3639736809_
                             _hd3639836812_
                             _tl3639936814_
                             _e3640036817_
                             _hd3640136820_
                             _tl3640236822_
                             _e3640336825_
                             _hd3640436828_
                             _tl3640536830_
                             _e3640636833_
                             _hd3640736836_
                             _tl3640836838_
                             _e3640936841_
                             _hd3641036844_
                             _tl3641136846_)
                      (if (gx#stx-null? _tl3640536830_)
                          (___match4169641697_
                           _e3639136793_
                           _hd3639236796_
                           _tl3639336798_
                           _e3639436801_
                           _hd3639536804_
                           _tl3639636806_
                           _e3639736809_
                           _hd3639836812_
                           _tl3639936814_
                           _e3640036817_
                           _hd3640136820_
                           _tl3640236822_
                           _e3640336825_
                           _hd3640436828_
                           _tl3640536830_
                           _e3640636833_
                           _hd3640736836_
                           _tl3640836838_
                           _e3640936841_
                           _hd3641036844_
                           _tl3641136846_)
                          (___match4186241863_
                           _e3639136793_
                           _hd3639236796_
                           _tl3639336798_
                           _e3639436801_
                           _hd3639536804_
                           _tl3639636806_
                           _e3639736809_
                           _hd3639836812_
                           _tl3639936814_
                           _e3640036817_
                           _hd3640136820_
                           _tl3640236822_
                           _e3640336825_
                           _hd3640436828_
                           _tl3640536830_
                           _e3640636833_
                           _hd3640736836_
                           _tl3640836838_
                           _e3640936841_
                           _hd3641036844_
                           _tl3641136846_))))
                   (___match4164041641_
                    (lambda (_e3636536877_
                             _hd3636636880_
                             _tl3636736882_
                             _e3636836885_
                             _hd3636936888_
                             _tl3637036890_
                             _e3637136893_
                             _hd3637236896_
                             _tl3637336898_
                             _e3637436901_
                             _hd3637536904_
                             _tl3637636906_
                             _e3637736909_
                             _hd3637836912_
                             _tl3637936914_
                             _e3638036917_
                             _hd3638136920_
                             _tl3638236922_
                             _e3638336925_
                             _hd3638436928_
                             _tl3638536930_
                             _e3638636933_
                             _hd3638736936_
                             _tl3638836938_)
                      (let ((_L36941_ _hd3638736936_)
                            (_L36942_ _hd3638436928_)
                            (_L36943_ _hd3637536904_))
                        (if (and (let ((__tmp42656
                                        (gxc#optimizer-resolve-type
                                         (gxc#identifier-symbol _L36943_))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp42656
                                    'gxc#!class-setf::t))
                                 (gx#free-identifier=? _L36942_ _self36154_))
                            (___kont4114941150_ _L36941_ _L36942_ _L36943_)
                            (___match4187041871_
                             _e3636536877_
                             _hd3636636880_
                             _tl3636736882_
                             _e3636836885_
                             _hd3636936888_
                             _tl3637036890_
                             _e3637136893_
                             _hd3637236896_
                             _tl3637336898_
                             _e3637436901_
                             _hd3637536904_
                             _tl3637636906_
                             _e3637736909_
                             _hd3637836912_
                             _tl3637936914_
                             _e3638036917_
                             _hd3638136920_
                             _tl3638236922_
                             _e3638336925_
                             _hd3638436928_
                             _tl3638536930_
                             _e3638636933_
                             _hd3638736936_
                             _tl3638836938_)))))
                   (___match4163841639_
                    (lambda (_e3636536877_
                             _hd3636636880_
                             _tl3636736882_
                             _e3636836885_
                             _hd3636936888_
                             _tl3637036890_
                             _e3637136893_
                             _hd3637236896_
                             _tl3637336898_
                             _e3637436901_
                             _hd3637536904_
                             _tl3637636906_
                             _e3637736909_
                             _hd3637836912_
                             _tl3637936914_
                             _e3638036917_
                             _hd3638136920_
                             _tl3638236922_
                             _e3638336925_
                             _hd3638436928_
                             _tl3638536930_
                             _e3638636933_
                             _hd3638736936_
                             _tl3638836938_)
                      (if (gx#stx-null? _tl3638836938_)
                          (___match4164041641_
                           _e3636536877_
                           _hd3636636880_
                           _tl3636736882_
                           _e3636836885_
                           _hd3636936888_
                           _tl3637036890_
                           _e3637136893_
                           _hd3637236896_
                           _tl3637336898_
                           _e3637436901_
                           _hd3637536904_
                           _tl3637636906_
                           _e3637736909_
                           _hd3637836912_
                           _tl3637936914_
                           _e3638036917_
                           _hd3638136920_
                           _tl3638236922_
                           _e3638336925_
                           _hd3638436928_
                           _tl3638536930_
                           _e3638636933_
                           _hd3638736936_
                           _tl3638836938_)
                          (___kont4115941160_))))
                   (___match4163241633_
                    (lambda (_e3636536877_
                             _hd3636636880_
                             _tl3636736882_
                             _e3636836885_
                             _hd3636936888_
                             _tl3637036890_
                             _e3637136893_
                             _hd3637236896_
                             _tl3637336898_
                             _e3637436901_
                             _hd3637536904_
                             _tl3637636906_
                             _e3637736909_
                             _hd3637836912_
                             _tl3637936914_
                             _e3638036917_
                             _hd3638136920_
                             _tl3638236922_
                             _e3638336925_
                             _hd3638436928_
                             _tl3638536930_)
                      (if (gx#stx-pair? _tl3637936914_)
                          (let ((_e3638636933_ (gx#stx-e _tl3637936914_)))
                            (let ((_tl3638836938_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3638636933_)))
                                  (_hd3638736936_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3638636933_))))
                              (if (gx#stx-null? _tl3638836938_)
                                  (___match4164041641_
                                   _e3636536877_
                                   _hd3636636880_
                                   _tl3636736882_
                                   _e3636836885_
                                   _hd3636936888_
                                   _tl3637036890_
                                   _e3637136893_
                                   _hd3637236896_
                                   _tl3637336898_
                                   _e3637436901_
                                   _hd3637536904_
                                   _tl3637636906_
                                   _e3637736909_
                                   _hd3637836912_
                                   _tl3637936914_
                                   _e3638036917_
                                   _hd3638136920_
                                   _tl3638236922_
                                   _e3638336925_
                                   _hd3638436928_
                                   _tl3638536930_
                                   _e3638636933_
                                   _hd3638736936_
                                   _tl3638836938_)
                                  (___kont4115941160_))))
                          (___match4169441695_
                           _e3636536877_
                           _hd3636636880_
                           _tl3636736882_
                           _e3636836885_
                           _hd3636936888_
                           _tl3637036890_
                           _e3637136893_
                           _hd3637236896_
                           _tl3637336898_
                           _e3637436901_
                           _hd3637536904_
                           _tl3637636906_
                           _e3637736909_
                           _hd3637836912_
                           _tl3637936914_
                           _e3638036917_
                           _hd3638136920_
                           _tl3638236922_
                           _e3638336925_
                           _hd3638436928_
                           _tl3638536930_))))
                   (___match4157841579_
                    (lambda (_e3634136973_
                             _hd3634236976_
                             _tl3634336978_
                             _e3634436981_
                             _hd3634536984_
                             _tl3634636986_
                             _e3634736989_
                             _hd3634836992_
                             _tl3634936994_
                             _e3635036997_
                             _hd3635137000_
                             _tl3635237002_
                             _e3635337005_
                             _hd3635437008_
                             _tl3635537010_
                             _e3635637013_
                             _hd3635737016_
                             _tl3635837018_
                             _e3635937021_
                             _hd3636037024_
                             _tl3636137026_)
                      (let ((_L37029_ _hd3636037024_)
                            (_L37030_ _hd3635137000_))
                        (if (and (let ((__tmp42657
                                        (gxc#optimizer-resolve-type
                                         (gxc#identifier-symbol _L37030_))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp42657
                                    'gxc#!class-getf::t))
                                 (gx#free-identifier=? _L37029_ _self36154_))
                            (___kont4114741148_ _L37029_ _L37030_)
                            (___match4169641697_
                             _e3634136973_
                             _hd3634236976_
                             _tl3634336978_
                             _e3634436981_
                             _hd3634536984_
                             _tl3634636986_
                             _e3634736989_
                             _hd3634836992_
                             _tl3634936994_
                             _e3635036997_
                             _hd3635137000_
                             _tl3635237002_
                             _e3635337005_
                             _hd3635437008_
                             _tl3635537010_
                             _e3635637013_
                             _hd3635737016_
                             _tl3635837018_
                             _e3635937021_
                             _hd3636037024_
                             _tl3636137026_)))))
                   (___match4157641577_
                    (lambda (_e3634136973_
                             _hd3634236976_
                             _tl3634336978_
                             _e3634436981_
                             _hd3634536984_
                             _tl3634636986_
                             _e3634736989_
                             _hd3634836992_
                             _tl3634936994_
                             _e3635036997_
                             _hd3635137000_
                             _tl3635237002_
                             _e3635337005_
                             _hd3635437008_
                             _tl3635537010_
                             _e3635637013_
                             _hd3635737016_
                             _tl3635837018_
                             _e3635937021_
                             _hd3636037024_
                             _tl3636137026_)
                      (if (gx#stx-null? _tl3635537010_)
                          (___match4157841579_
                           _e3634136973_
                           _hd3634236976_
                           _tl3634336978_
                           _e3634436981_
                           _hd3634536984_
                           _tl3634636986_
                           _e3634736989_
                           _hd3634836992_
                           _tl3634936994_
                           _e3635036997_
                           _hd3635137000_
                           _tl3635237002_
                           _e3635337005_
                           _hd3635437008_
                           _tl3635537010_
                           _e3635637013_
                           _hd3635737016_
                           _tl3635837018_
                           _e3635937021_
                           _hd3636037024_
                           _tl3636137026_)
                          (___match4163241633_
                           _e3634136973_
                           _hd3634236976_
                           _tl3634336978_
                           _e3634436981_
                           _hd3634536984_
                           _tl3634636986_
                           _e3634736989_
                           _hd3634836992_
                           _tl3634936994_
                           _e3635036997_
                           _hd3635137000_
                           _tl3635237002_
                           _e3635337005_
                           _hd3635437008_
                           _tl3635537010_
                           _e3635637013_
                           _hd3635737016_
                           _tl3635837018_
                           _e3635937021_
                           _hd3636037024_
                           _tl3636137026_))))
                   (___match4152241523_
                    (lambda (_e3630637057_
                             _hd3630737060_
                             _tl3630837062_
                             _e3630937065_
                             _hd3631037068_
                             _tl3631137070_
                             _e3631237073_
                             _hd3631337076_
                             _tl3631437078_
                             _e3631537081_
                             _hd3631637084_
                             _tl3631737086_
                             _e3631837089_
                             _hd3631937092_
                             _tl3632037094_
                             _e3632137097_
                             _hd3632237100_
                             _tl3632337102_
                             _e3632437105_
                             _hd3632537108_
                             _tl3632637110_
                             _e3632737113_
                             _hd3632837116_
                             _tl3632937118_
                             _e3633037121_
                             _hd3633137124_
                             _tl3633237126_
                             _e3633337129_
                             _hd3633437132_
                             _tl3633537134_
                             _e3633637137_
                             _hd3633737140_
                             _tl3633837142_)
                      (let ((_L37145_ _hd3633737140_)
                            (_L37146_ _hd3633437132_)
                            (_L37147_ _hd3632537108_)
                            (_L37148_ _hd3631637084_))
                        (if (and (or (gxc#runtime-identifier=?
                                      _L37148_
                                      'slot-set!)
                                     (gxc#runtime-identifier=?
                                      _L37148_
                                      'unchecked-slot-set!))
                                 (gx#free-identifier=? _L37147_ _self36154_))
                            (___kont4114541146_
                             _L37145_
                             _L37146_
                             _L37147_
                             _L37148_)
                            (___kont4115941160_)))))
                   (___match4151441515_
                    (lambda (_e3630637057_
                             _hd3630737060_
                             _tl3630837062_
                             _e3630937065_
                             _hd3631037068_
                             _tl3631137070_
                             _e3631237073_
                             _hd3631337076_
                             _tl3631437078_
                             _e3631537081_
                             _hd3631637084_
                             _tl3631737086_
                             _e3631837089_
                             _hd3631937092_
                             _tl3632037094_
                             _e3632137097_
                             _hd3632237100_
                             _tl3632337102_
                             _e3632437105_
                             _hd3632537108_
                             _tl3632637110_
                             _e3632737113_
                             _hd3632837116_
                             _tl3632937118_
                             _e3633037121_
                             _hd3633137124_
                             _tl3633237126_
                             _e3633337129_
                             _hd3633437132_
                             _tl3633537134_)
                      (if (gx#stx-pair? _tl3632937118_)
                          (let ((_e3633637137_ (gx#stx-e _tl3632937118_)))
                            (let ((_tl3633837142_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3633637137_)))
                                  (_hd3633737140_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3633637137_))))
                              (if (gx#stx-null? _tl3633837142_)
                                  (___match4152241523_
                                   _e3630637057_
                                   _hd3630737060_
                                   _tl3630837062_
                                   _e3630937065_
                                   _hd3631037068_
                                   _tl3631137070_
                                   _e3631237073_
                                   _hd3631337076_
                                   _tl3631437078_
                                   _e3631537081_
                                   _hd3631637084_
                                   _tl3631737086_
                                   _e3631837089_
                                   _hd3631937092_
                                   _tl3632037094_
                                   _e3632137097_
                                   _hd3632237100_
                                   _tl3632337102_
                                   _e3632437105_
                                   _hd3632537108_
                                   _tl3632637110_
                                   _e3632737113_
                                   _hd3632837116_
                                   _tl3632937118_
                                   _e3633037121_
                                   _hd3633137124_
                                   _tl3633237126_
                                   _e3633337129_
                                   _hd3633437132_
                                   _tl3633537134_
                                   _e3633637137_
                                   _hd3633737140_
                                   _tl3633837142_)
                                  (___kont4115941160_))))
                          (___match4163841639_
                           _e3630637057_
                           _hd3630737060_
                           _tl3630837062_
                           _e3630937065_
                           _hd3631037068_
                           _tl3631137070_
                           _e3631237073_
                           _hd3631337076_
                           _tl3631437078_
                           _e3631537081_
                           _hd3631637084_
                           _tl3631737086_
                           _e3631837089_
                           _hd3631937092_
                           _tl3632037094_
                           _e3632137097_
                           _hd3632237100_
                           _tl3632337102_
                           _e3632437105_
                           _hd3632537108_
                           _tl3632637110_
                           _e3632737113_
                           _hd3632837116_
                           _tl3632937118_))))
                   (___match4143641437_
                    (lambda (_e3627237188_
                             _hd3627337191_
                             _tl3627437193_
                             _e3627537196_
                             _hd3627637199_
                             _tl3627737201_
                             _e3627837204_
                             _hd3627937207_
                             _tl3628037209_
                             _e3628137212_
                             _hd3628237215_
                             _tl3628337217_
                             _e3628437220_
                             _hd3628537223_
                             _tl3628637225_
                             _e3628737228_
                             _hd3628837231_
                             _tl3628937233_
                             _e3629037236_
                             _hd3629137239_
                             _tl3629237241_
                             _e3629337244_
                             _hd3629437247_
                             _tl3629537249_
                             _e3629637252_
                             _hd3629737255_
                             _tl3629837257_
                             _e3629937260_
                             _hd3630037263_
                             _tl3630137265_)
                      (let ((_L37268_ _hd3630037263_)
                            (_L37269_ _hd3629137239_)
                            (_L37270_ _hd3628237215_))
                        (if (and (or (gxc#runtime-identifier=?
                                      _L37270_
                                      'slot-ref)
                                     (gxc#runtime-identifier=?
                                      _L37270_
                                      'unchecked-slot-ref))
                                 (gx#free-identifier=? _L37269_ _self36154_))
                            (___kont4114341144_ _L37268_ _L37269_ _L37270_)
                            (___match4164041641_
                             _e3627237188_
                             _hd3627337191_
                             _tl3627437193_
                             _e3627537196_
                             _hd3627637199_
                             _tl3627737201_
                             _e3627837204_
                             _hd3627937207_
                             _tl3628037209_
                             _e3628137212_
                             _hd3628237215_
                             _tl3628337217_
                             _e3628437220_
                             _hd3628537223_
                             _tl3628637225_
                             _e3628737228_
                             _hd3628837231_
                             _tl3628937233_
                             _e3629037236_
                             _hd3629137239_
                             _tl3629237241_
                             _e3629337244_
                             _hd3629437247_
                             _tl3629537249_)))))
                   (___match4143441435_
                    (lambda (_e3627237188_
                             _hd3627337191_
                             _tl3627437193_
                             _e3627537196_
                             _hd3627637199_
                             _tl3627737201_
                             _e3627837204_
                             _hd3627937207_
                             _tl3628037209_
                             _e3628137212_
                             _hd3628237215_
                             _tl3628337217_
                             _e3628437220_
                             _hd3628537223_
                             _tl3628637225_
                             _e3628737228_
                             _hd3628837231_
                             _tl3628937233_
                             _e3629037236_
                             _hd3629137239_
                             _tl3629237241_
                             _e3629337244_
                             _hd3629437247_
                             _tl3629537249_
                             _e3629637252_
                             _hd3629737255_
                             _tl3629837257_
                             _e3629937260_
                             _hd3630037263_
                             _tl3630137265_)
                      (if (gx#stx-null? _tl3629537249_)
                          (___match4143641437_
                           _e3627237188_
                           _hd3627337191_
                           _tl3627437193_
                           _e3627537196_
                           _hd3627637199_
                           _tl3627737201_
                           _e3627837204_
                           _hd3627937207_
                           _tl3628037209_
                           _e3628137212_
                           _hd3628237215_
                           _tl3628337217_
                           _e3628437220_
                           _hd3628537223_
                           _tl3628637225_
                           _e3628737228_
                           _hd3628837231_
                           _tl3628937233_
                           _e3629037236_
                           _hd3629137239_
                           _tl3629237241_
                           _e3629337244_
                           _hd3629437247_
                           _tl3629537249_
                           _e3629637252_
                           _hd3629737255_
                           _tl3629837257_
                           _e3629937260_
                           _hd3630037263_
                           _tl3630137265_)
                          (___match4151441515_
                           _e3627237188_
                           _hd3627337191_
                           _tl3627437193_
                           _e3627537196_
                           _hd3627637199_
                           _tl3627737201_
                           _e3627837204_
                           _hd3627937207_
                           _tl3628037209_
                           _e3628137212_
                           _hd3628237215_
                           _tl3628337217_
                           _e3628437220_
                           _hd3628537223_
                           _tl3628637225_
                           _e3628737228_
                           _hd3628837231_
                           _tl3628937233_
                           _e3629037236_
                           _hd3629137239_
                           _tl3629237241_
                           _e3629337244_
                           _hd3629437247_
                           _tl3629537249_
                           _e3629637252_
                           _hd3629737255_
                           _tl3629837257_
                           _e3629937260_
                           _hd3630037263_
                           _tl3630137265_))))
                   (___match4142441425_
                    (lambda (_e3627237188_
                             _hd3627337191_
                             _tl3627437193_
                             _e3627537196_
                             _hd3627637199_
                             _tl3627737201_
                             _e3627837204_
                             _hd3627937207_
                             _tl3628037209_
                             _e3628137212_
                             _hd3628237215_
                             _tl3628337217_
                             _e3628437220_
                             _hd3628537223_
                             _tl3628637225_
                             _e3628737228_
                             _hd3628837231_
                             _tl3628937233_
                             _e3629037236_
                             _hd3629137239_
                             _tl3629237241_
                             _e3629337244_
                             _hd3629437247_
                             _tl3629537249_
                             _e3629637252_
                             _hd3629737255_
                             _tl3629837257_)
                      (if (gx#stx-eq? '%#quote _hd3629737255_)
                          (if (gx#stx-pair? _tl3629837257_)
                              (let ((_e3629937260_ (gx#stx-e _tl3629837257_)))
                                (let ((_tl3630137265_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3629937260_)))
                                      (_hd3630037263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3629937260_))))
                                  (if (gx#stx-null? _tl3630137265_)
                                      (if (gx#stx-null? _tl3629537249_)
                                          (___match4143641437_
                                           _e3627237188_
                                           _hd3627337191_
                                           _tl3627437193_
                                           _e3627537196_
                                           _hd3627637199_
                                           _tl3627737201_
                                           _e3627837204_
                                           _hd3627937207_
                                           _tl3628037209_
                                           _e3628137212_
                                           _hd3628237215_
                                           _tl3628337217_
                                           _e3628437220_
                                           _hd3628537223_
                                           _tl3628637225_
                                           _e3628737228_
                                           _hd3628837231_
                                           _tl3628937233_
                                           _e3629037236_
                                           _hd3629137239_
                                           _tl3629237241_
                                           _e3629337244_
                                           _hd3629437247_
                                           _tl3629537249_
                                           _e3629637252_
                                           _hd3629737255_
                                           _tl3629837257_
                                           _e3629937260_
                                           _hd3630037263_
                                           _tl3630137265_)
                                          (___match4151441515_
                                           _e3627237188_
                                           _hd3627337191_
                                           _tl3627437193_
                                           _e3627537196_
                                           _hd3627637199_
                                           _tl3627737201_
                                           _e3627837204_
                                           _hd3627937207_
                                           _tl3628037209_
                                           _e3628137212_
                                           _hd3628237215_
                                           _tl3628337217_
                                           _e3628437220_
                                           _hd3628537223_
                                           _tl3628637225_
                                           _e3628737228_
                                           _hd3628837231_
                                           _tl3628937233_
                                           _e3629037236_
                                           _hd3629137239_
                                           _tl3629237241_
                                           _e3629337244_
                                           _hd3629437247_
                                           _tl3629537249_
                                           _e3629637252_
                                           _hd3629737255_
                                           _tl3629837257_
                                           _e3629937260_
                                           _hd3630037263_
                                           _tl3630137265_))
                                      (___match4163841639_
                                       _e3627237188_
                                       _hd3627337191_
                                       _tl3627437193_
                                       _e3627537196_
                                       _hd3627637199_
                                       _tl3627737201_
                                       _e3627837204_
                                       _hd3627937207_
                                       _tl3628037209_
                                       _e3628137212_
                                       _hd3628237215_
                                       _tl3628337217_
                                       _e3628437220_
                                       _hd3628537223_
                                       _tl3628637225_
                                       _e3628737228_
                                       _hd3628837231_
                                       _tl3628937233_
                                       _e3629037236_
                                       _hd3629137239_
                                       _tl3629237241_
                                       _e3629337244_
                                       _hd3629437247_
                                       _tl3629537249_))))
                              (___match4163841639_
                               _e3627237188_
                               _hd3627337191_
                               _tl3627437193_
                               _e3627537196_
                               _hd3627637199_
                               _tl3627737201_
                               _e3627837204_
                               _hd3627937207_
                               _tl3628037209_
                               _e3628137212_
                               _hd3628237215_
                               _tl3628337217_
                               _e3628437220_
                               _hd3628537223_
                               _tl3628637225_
                               _e3628737228_
                               _hd3628837231_
                               _tl3628937233_
                               _e3629037236_
                               _hd3629137239_
                               _tl3629237241_
                               _e3629337244_
                               _hd3629437247_
                               _tl3629537249_))
                          (___match4163841639_
                           _e3627237188_
                           _hd3627337191_
                           _tl3627437193_
                           _e3627537196_
                           _hd3627637199_
                           _tl3627737201_
                           _e3627837204_
                           _hd3627937207_
                           _tl3628037209_
                           _e3628137212_
                           _hd3628237215_
                           _tl3628337217_
                           _e3628437220_
                           _hd3628537223_
                           _tl3628637225_
                           _e3628737228_
                           _hd3628837231_
                           _tl3628937233_
                           _e3629037236_
                           _hd3629137239_
                           _tl3629237241_
                           _e3629337244_
                           _hd3629437247_
                           _tl3629537249_))))
                   (___match4135641357_
                    (lambda (_e3622137307_
                             _hd3622237310_
                             _tl3622337312_
                             _e3622437315_
                             _hd3622537318_
                             _tl3622637320_
                             _e3622737323_
                             _hd3622837326_
                             _tl3622937328_
                             _e3623037331_
                             _hd3623137334_
                             _tl3623237336_
                             _e3623337339_
                             _hd3623437342_
                             _tl3623537344_
                             _e3623637347_
                             _hd3623737350_
                             _tl3623837352_
                             _e3623937355_
                             _hd3624037358_
                             _tl3624137360_
                             _e3624237363_
                             _hd3624337366_
                             _tl3624437368_
                             _e3624537371_
                             _hd3624637374_
                             _tl3624737376_
                             _e3624837379_
                             _hd3624937382_
                             _tl3625037384_
                             _e3625137387_
                             _hd3625237390_
                             _tl3625337392_
                             _e3625437395_
                             _hd3625537398_
                             _tl3625637400_
                             _e3625737403_
                             _hd3625837406_
                             _tl3625937408_
                             ___splice4114141142_
                             _target3626037411_
                             _tl3626237413_)
                      (letrec ((_loop3626337416_
                                (lambda (_hd3626137419_ _args3626737421_)
                                  (if (gx#stx-pair? _hd3626137419_)
                                      (let ((_e3626437424_
                                             (gx#stx-e _hd3626137419_)))
                                        (let ((_lp-tl3626637429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3626437424_)))
                                              (_lp-hd3626537427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3626437424_))))
                                          (_loop3626337416_
                                           _lp-tl3626637429_
                                           (cons _lp-hd3626537427_
                                                 _args3626737421_))))
                                      (let ((_args3626837432_
                                             (reverse _args3626737421_)))
                                        (let ((_L37435_ _args3626837432_)
                                              (_L37436_ _hd3625837406_)
                                              (_L37437_ _hd3624937382_)
                                              (_L37438_ _hd3624037358_)
                                              (_L37439_ _hd3623137334_))
                                          (if (and (gxc#runtime-identifier=?
                                                    _L37439_
                                                    'apply)
                                                   (gxc#runtime-identifier=?
                                                    _L37438_
                                                    'call-method)
                                                   (gx#free-identifier=?
                                                    _L37437_
                                                    _self36154_))
                                              (___kont4113941140_
                                               _L37435_
                                               _L37436_
                                               _L37437_
                                               _L37438_
                                               _L37439_)
                                              (___kont4115941160_))))))))
                        (_loop3626337416_ _target3626037411_ '()))))
                   (___match4131441315_
                    (lambda (_e3622137307_
                             _hd3622237310_
                             _tl3622337312_
                             _e3622437315_
                             _hd3622537318_
                             _tl3622637320_
                             _e3622737323_
                             _hd3622837326_
                             _tl3622937328_
                             _e3623037331_
                             _hd3623137334_
                             _tl3623237336_
                             _e3623337339_
                             _hd3623437342_
                             _tl3623537344_
                             _e3623637347_
                             _hd3623737350_
                             _tl3623837352_
                             _e3623937355_
                             _hd3624037358_
                             _tl3624137360_
                             _e3624237363_
                             _hd3624337366_
                             _tl3624437368_
                             _e3624537371_
                             _hd3624637374_
                             _tl3624737376_)
                      (if (gx#stx-eq? '%#ref _hd3624637374_)
                          (if (gx#stx-pair? _tl3624737376_)
                              (let ((_e3624837379_ (gx#stx-e _tl3624737376_)))
                                (let ((_tl3625037384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3624837379_)))
                                      (_hd3624937382_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3624837379_))))
                                  (if (gx#stx-null? _tl3625037384_)
                                      (if (gx#stx-pair? _tl3624437368_)
                                          (let ((_e3625137387_
                                                 (gx#stx-e _tl3624437368_)))
                                            (let ((_tl3625337392_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3625137387_)))
                                                  (_hd3625237390_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3625137387_))))
                                              (if (gx#stx-pair? _hd3625237390_)
                                                  (let ((_e3625437395_
                                                         (gx#stx-e
                                                          _hd3625237390_)))
                                                    (let ((_tl3625637400_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3625437395_)))
                                                          (_hd3625537398_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3625437395_))))
                                                      (if (gx#identifier?
                                                           _hd3625537398_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd3625537398_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3625637400_)
                          (let ((_e3625737403_ (gx#stx-e _tl3625637400_)))
                            (let ((_tl3625937408_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3625737403_)))
                                  (_hd3625837406_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3625737403_))))
                              (if (gx#stx-null? _tl3625937408_)
                                  (if (gx#stx-pair/null? _tl3625337392_)
                                      (let ((___splice4114141142_
                                             (gx#syntax-split-splice
                                              _tl3625337392_
                                              '0)))
                                        (let ((_tl3626237413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4114141142_
                                                  '1)))
                                              (_target3626037411_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4114141142_
                                                  '0))))
                                          (if (gx#stx-null? _tl3626237413_)
                                              (___match4135641357_
                                               _e3622137307_
                                               _hd3622237310_
                                               _tl3622337312_
                                               _e3622437315_
                                               _hd3622537318_
                                               _tl3622637320_
                                               _e3622737323_
                                               _hd3622837326_
                                               _tl3622937328_
                                               _e3623037331_
                                               _hd3623137334_
                                               _tl3623237336_
                                               _e3623337339_
                                               _hd3623437342_
                                               _tl3623537344_
                                               _e3623637347_
                                               _hd3623737350_
                                               _tl3623837352_
                                               _e3623937355_
                                               _hd3624037358_
                                               _tl3624137360_
                                               _e3624237363_
                                               _hd3624337366_
                                               _tl3624437368_
                                               _e3624537371_
                                               _hd3624637374_
                                               _tl3624737376_
                                               _e3624837379_
                                               _hd3624937382_
                                               _tl3625037384_
                                               _e3625137387_
                                               _hd3625237390_
                                               _tl3625337392_
                                               _e3625437395_
                                               _hd3625537398_
                                               _tl3625637400_
                                               _e3625737403_
                                               _hd3625837406_
                                               _tl3625937408_
                                               ___splice4114141142_
                                               _target3626037411_
                                               _tl3626237413_)
                                              (___kont4115941160_))))
                                      (___kont4115941160_))
                                  (___kont4115941160_))))
                          (___kont4115941160_))
                      (___kont4115941160_))
                  (___kont4115941160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4115941160_))))
                                          (___match4163841639_
                                           _e3622137307_
                                           _hd3622237310_
                                           _tl3622337312_
                                           _e3622437315_
                                           _hd3622537318_
                                           _tl3622637320_
                                           _e3622737323_
                                           _hd3622837326_
                                           _tl3622937328_
                                           _e3623037331_
                                           _hd3623137334_
                                           _tl3623237336_
                                           _e3623337339_
                                           _hd3623437342_
                                           _tl3623537344_
                                           _e3623637347_
                                           _hd3623737350_
                                           _tl3623837352_
                                           _e3623937355_
                                           _hd3624037358_
                                           _tl3624137360_
                                           _e3624237363_
                                           _hd3624337366_
                                           _tl3624437368_))
                                      (___match4163841639_
                                       _e3622137307_
                                       _hd3622237310_
                                       _tl3622337312_
                                       _e3622437315_
                                       _hd3622537318_
                                       _tl3622637320_
                                       _e3622737323_
                                       _hd3622837326_
                                       _tl3622937328_
                                       _e3623037331_
                                       _hd3623137334_
                                       _tl3623237336_
                                       _e3623337339_
                                       _hd3623437342_
                                       _tl3623537344_
                                       _e3623637347_
                                       _hd3623737350_
                                       _tl3623837352_
                                       _e3623937355_
                                       _hd3624037358_
                                       _tl3624137360_
                                       _e3624237363_
                                       _hd3624337366_
                                       _tl3624437368_))))
                              (___match4163841639_
                               _e3622137307_
                               _hd3622237310_
                               _tl3622337312_
                               _e3622437315_
                               _hd3622537318_
                               _tl3622637320_
                               _e3622737323_
                               _hd3622837326_
                               _tl3622937328_
                               _e3623037331_
                               _hd3623137334_
                               _tl3623237336_
                               _e3623337339_
                               _hd3623437342_
                               _tl3623537344_
                               _e3623637347_
                               _hd3623737350_
                               _tl3623837352_
                               _e3623937355_
                               _hd3624037358_
                               _tl3624137360_
                               _e3624237363_
                               _hd3624337366_
                               _tl3624437368_))
                          (___match4142441425_
                           _e3622137307_
                           _hd3622237310_
                           _tl3622337312_
                           _e3622437315_
                           _hd3622537318_
                           _tl3622637320_
                           _e3622737323_
                           _hd3622837326_
                           _tl3622937328_
                           _e3623037331_
                           _hd3623137334_
                           _tl3623237336_
                           _e3623337339_
                           _hd3623437342_
                           _tl3623537344_
                           _e3623637347_
                           _hd3623737350_
                           _tl3623837352_
                           _e3623937355_
                           _hd3624037358_
                           _tl3624137360_
                           _e3624237363_
                           _hd3624337366_
                           _tl3624437368_
                           _e3624537371_
                           _hd3624637374_
                           _tl3624737376_))))
                   (___match4124641247_
                    (lambda (_e3617737496_
                             _hd3617837499_
                             _tl3617937501_
                             _e3618037504_
                             _hd3618137507_
                             _tl3618237509_
                             _e3618337512_
                             _hd3618437515_
                             _tl3618537517_
                             _e3618637520_
                             _hd3618737523_
                             _tl3618837525_
                             _e3618937528_
                             _hd3619037531_
                             _tl3619137533_
                             _e3619237536_
                             _hd3619337539_
                             _tl3619437541_
                             _e3619537544_
                             _hd3619637547_
                             _tl3619737549_
                             _e3619837552_
                             _hd3619937555_
                             _tl3620037557_
                             _e3620137560_
                             _hd3620237563_
                             _tl3620337565_
                             _e3620437568_
                             _hd3620537571_
                             _tl3620637573_
                             ___splice4113741138_
                             _target3620737576_
                             _tl3620937578_)
                      (letrec ((_loop3621037581_
                                (lambda (_hd3620837584_ _args3621437586_)
                                  (if (gx#stx-pair? _hd3620837584_)
                                      (let ((_e3621137589_
                                             (gx#stx-e _hd3620837584_)))
                                        (let ((_lp-tl3621337594_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3621137589_)))
                                              (_lp-hd3621237592_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3621137589_))))
                                          (_loop3621037581_
                                           _lp-tl3621337594_
                                           (cons _lp-hd3621237592_
                                                 _args3621437586_))))
                                      (let ((_args3621537597_
                                             (reverse _args3621437586_)))
                                        (let ((_L37600_ _args3621537597_)
                                              (_L37601_ _hd3620537571_)
                                              (_L37602_ _hd3619637547_)
                                              (_L37603_ _hd3618737523_))
                                          (if (and (gxc#runtime-identifier=?
                                                    _L37603_
                                                    'call-method)
                                                   (gx#free-identifier=?
                                                    _L37602_
                                                    _self36154_))
                                              (___kont4113541136_
                                               _L37600_
                                               _L37601_
                                               _L37602_
                                               _L37603_)
                                              (___match4143441435_
                                               _e3617737496_
                                               _hd3617837499_
                                               _tl3617937501_
                                               _e3618037504_
                                               _hd3618137507_
                                               _tl3618237509_
                                               _e3618337512_
                                               _hd3618437515_
                                               _tl3618537517_
                                               _e3618637520_
                                               _hd3618737523_
                                               _tl3618837525_
                                               _e3618937528_
                                               _hd3619037531_
                                               _tl3619137533_
                                               _e3619237536_
                                               _hd3619337539_
                                               _tl3619437541_
                                               _e3619537544_
                                               _hd3619637547_
                                               _tl3619737549_
                                               _e3619837552_
                                               _hd3619937555_
                                               _tl3620037557_
                                               _e3620137560_
                                               _hd3620237563_
                                               _tl3620337565_
                                               _e3620437568_
                                               _hd3620537571_
                                               _tl3620637573_))))))))
                        (_loop3621037581_ _target3620737576_ '())))))
              (if (gx#stx-pair? ___stx4113341134_)
                  (let ((_e3617737496_ (gx#stx-e ___stx4113341134_)))
                    (let ((_tl3617937501_
                           (let () (declare (not safe)) (##cdr _e3617737496_)))
                          (_hd3617837499_
                           (let ()
                             (declare (not safe))
                             (##car _e3617737496_))))
                      (if (gx#stx-pair? _tl3617937501_)
                          (let ((_e3618037504_ (gx#stx-e _tl3617937501_)))
                            (let ((_tl3618237509_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3618037504_)))
                                  (_hd3618137507_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3618037504_))))
                              (if (gx#stx-pair? _hd3618137507_)
                                  (let ((_e3618337512_
                                         (gx#stx-e _hd3618137507_)))
                                    (let ((_tl3618537517_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3618337512_)))
                                          (_hd3618437515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3618337512_))))
                                      (if (gx#identifier? _hd3618437515_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd3618437515_)
                                              (if (gx#stx-pair? _tl3618537517_)
                                                  (let ((_e3618637520_
                                                         (gx#stx-e
                                                          _tl3618537517_)))
                                                    (let ((_tl3618837525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3618637520_)))
                                                          (_hd3618737523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3618637520_))))
                                                      (if (gx#stx-null?
                                                           _tl3618837525_)
                                                          (if (gx#stx-pair?
                                                               _tl3618237509_)
                                                              (let ((_e3618937528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl3618237509_)))
                        (let ((_tl3619137533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3618937528_)))
                              (_hd3619037531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3618937528_))))
                          (if (gx#stx-pair? _hd3619037531_)
                              (let ((_e3619237536_ (gx#stx-e _hd3619037531_)))
                                (let ((_tl3619437541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3619237536_)))
                                      (_hd3619337539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3619237536_))))
                                  (if (gx#identifier? _hd3619337539_)
                                      (if (gx#stx-eq? '%#ref _hd3619337539_)
                                          (if (gx#stx-pair? _tl3619437541_)
                                              (let ((_e3619537544_
                                                     (gx#stx-e
                                                      _tl3619437541_)))
                                                (let ((_tl3619737549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3619537544_)))
                                                      (_hd3619637547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3619537544_))))
                                                  (if (gx#stx-null?
                                                       _tl3619737549_)
                                                      (if (gx#stx-pair?
                                                           _tl3619137533_)
                                                          (let ((_e3619837552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3619137533_)))
                    (let ((_tl3620037557_
                           (let () (declare (not safe)) (##cdr _e3619837552_)))
                          (_hd3619937555_
                           (let ()
                             (declare (not safe))
                             (##car _e3619837552_))))
                      (if (gx#stx-pair? _hd3619937555_)
                          (let ((_e3620137560_ (gx#stx-e _hd3619937555_)))
                            (let ((_tl3620337565_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3620137560_)))
                                  (_hd3620237563_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3620137560_))))
                              (if (gx#identifier? _hd3620237563_)
                                  (if (gx#stx-eq? '%#quote _hd3620237563_)
                                      (if (gx#stx-pair? _tl3620337565_)
                                          (let ((_e3620437568_
                                                 (gx#stx-e _tl3620337565_)))
                                            (let ((_tl3620637573_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3620437568_)))
                                                  (_hd3620537571_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3620437568_))))
                                              (if (gx#stx-null? _tl3620637573_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3620037557_)
                                                      (let ((___splice4113741138_
                                                             (gx#syntax-split-splice
                                                              _tl3620037557_
                                                              '0)))
                                                        (let ((_tl3620937578_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4113741138_ '1)))
                      (_target3620737576_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4113741138_ '0))))
                  (if (gx#stx-null? _tl3620937578_)
                      (___match4124641247_
                       _e3617737496_
                       _hd3617837499_
                       _tl3617937501_
                       _e3618037504_
                       _hd3618137507_
                       _tl3618237509_
                       _e3618337512_
                       _hd3618437515_
                       _tl3618537517_
                       _e3618637520_
                       _hd3618737523_
                       _tl3618837525_
                       _e3618937528_
                       _hd3619037531_
                       _tl3619137533_
                       _e3619237536_
                       _hd3619337539_
                       _tl3619437541_
                       _e3619537544_
                       _hd3619637547_
                       _tl3619737549_
                       _e3619837552_
                       _hd3619937555_
                       _tl3620037557_
                       _e3620137560_
                       _hd3620237563_
                       _tl3620337565_
                       _e3620437568_
                       _hd3620537571_
                       _tl3620637573_
                       ___splice4113741138_
                       _target3620737576_
                       _tl3620937578_)
                      (___match4143441435_
                       _e3617737496_
                       _hd3617837499_
                       _tl3617937501_
                       _e3618037504_
                       _hd3618137507_
                       _tl3618237509_
                       _e3618337512_
                       _hd3618437515_
                       _tl3618537517_
                       _e3618637520_
                       _hd3618737523_
                       _tl3618837525_
                       _e3618937528_
                       _hd3619037531_
                       _tl3619137533_
                       _e3619237536_
                       _hd3619337539_
                       _tl3619437541_
                       _e3619537544_
                       _hd3619637547_
                       _tl3619737549_
                       _e3619837552_
                       _hd3619937555_
                       _tl3620037557_
                       _e3620137560_
                       _hd3620237563_
                       _tl3620337565_
                       _e3620437568_
                       _hd3620537571_
                       _tl3620637573_))))
              (___match4143441435_
               _e3617737496_
               _hd3617837499_
               _tl3617937501_
               _e3618037504_
               _hd3618137507_
               _tl3618237509_
               _e3618337512_
               _hd3618437515_
               _tl3618537517_
               _e3618637520_
               _hd3618737523_
               _tl3618837525_
               _e3618937528_
               _hd3619037531_
               _tl3619137533_
               _e3619237536_
               _hd3619337539_
               _tl3619437541_
               _e3619537544_
               _hd3619637547_
               _tl3619737549_
               _e3619837552_
               _hd3619937555_
               _tl3620037557_
               _e3620137560_
               _hd3620237563_
               _tl3620337565_
               _e3620437568_
               _hd3620537571_
               _tl3620637573_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match4163841639_
                                                   _e3617737496_
                                                   _hd3617837499_
                                                   _tl3617937501_
                                                   _e3618037504_
                                                   _hd3618137507_
                                                   _tl3618237509_
                                                   _e3618337512_
                                                   _hd3618437515_
                                                   _tl3618537517_
                                                   _e3618637520_
                                                   _hd3618737523_
                                                   _tl3618837525_
                                                   _e3618937528_
                                                   _hd3619037531_
                                                   _tl3619137533_
                                                   _e3619237536_
                                                   _hd3619337539_
                                                   _tl3619437541_
                                                   _e3619537544_
                                                   _hd3619637547_
                                                   _tl3619737549_
                                                   _e3619837552_
                                                   _hd3619937555_
                                                   _tl3620037557_))))
                                          (___match4163841639_
                                           _e3617737496_
                                           _hd3617837499_
                                           _tl3617937501_
                                           _e3618037504_
                                           _hd3618137507_
                                           _tl3618237509_
                                           _e3618337512_
                                           _hd3618437515_
                                           _tl3618537517_
                                           _e3618637520_
                                           _hd3618737523_
                                           _tl3618837525_
                                           _e3618937528_
                                           _hd3619037531_
                                           _tl3619137533_
                                           _e3619237536_
                                           _hd3619337539_
                                           _tl3619437541_
                                           _e3619537544_
                                           _hd3619637547_
                                           _tl3619737549_
                                           _e3619837552_
                                           _hd3619937555_
                                           _tl3620037557_))
                                      (___match4131441315_
                                       _e3617737496_
                                       _hd3617837499_
                                       _tl3617937501_
                                       _e3618037504_
                                       _hd3618137507_
                                       _tl3618237509_
                                       _e3618337512_
                                       _hd3618437515_
                                       _tl3618537517_
                                       _e3618637520_
                                       _hd3618737523_
                                       _tl3618837525_
                                       _e3618937528_
                                       _hd3619037531_
                                       _tl3619137533_
                                       _e3619237536_
                                       _hd3619337539_
                                       _tl3619437541_
                                       _e3619537544_
                                       _hd3619637547_
                                       _tl3619737549_
                                       _e3619837552_
                                       _hd3619937555_
                                       _tl3620037557_
                                       _e3620137560_
                                       _hd3620237563_
                                       _tl3620337565_))
                                  (___match4163841639_
                                   _e3617737496_
                                   _hd3617837499_
                                   _tl3617937501_
                                   _e3618037504_
                                   _hd3618137507_
                                   _tl3618237509_
                                   _e3618337512_
                                   _hd3618437515_
                                   _tl3618537517_
                                   _e3618637520_
                                   _hd3618737523_
                                   _tl3618837525_
                                   _e3618937528_
                                   _hd3619037531_
                                   _tl3619137533_
                                   _e3619237536_
                                   _hd3619337539_
                                   _tl3619437541_
                                   _e3619537544_
                                   _hd3619637547_
                                   _tl3619737549_
                                   _e3619837552_
                                   _hd3619937555_
                                   _tl3620037557_))))
                          (___match4163841639_
                           _e3617737496_
                           _hd3617837499_
                           _tl3617937501_
                           _e3618037504_
                           _hd3618137507_
                           _tl3618237509_
                           _e3618337512_
                           _hd3618437515_
                           _tl3618537517_
                           _e3618637520_
                           _hd3618737523_
                           _tl3618837525_
                           _e3618937528_
                           _hd3619037531_
                           _tl3619137533_
                           _e3619237536_
                           _hd3619337539_
                           _tl3619437541_
                           _e3619537544_
                           _hd3619637547_
                           _tl3619737549_
                           _e3619837552_
                           _hd3619937555_
                           _tl3620037557_))))
                  (___match4157641577_
                   _e3617737496_
                   _hd3617837499_
                   _tl3617937501_
                   _e3618037504_
                   _hd3618137507_
                   _tl3618237509_
                   _e3618337512_
                   _hd3618437515_
                   _tl3618537517_
                   _e3618637520_
                   _hd3618737523_
                   _tl3618837525_
                   _e3618937528_
                   _hd3619037531_
                   _tl3619137533_
                   _e3619237536_
                   _hd3619337539_
                   _tl3619437541_
                   _e3619537544_
                   _hd3619637547_
                   _tl3619737549_))
              (___kont4115941160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont4115941160_))
                                          (___kont4115941160_))
                                      (___kont4115941160_))))
                              (___kont4115941160_))))
                      (___kont4115941160_))
                  (___kont4115941160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4115941160_))
                                              (___kont4115941160_))
                                          (___kont4115941160_))))
                                  (___kont4115941160_))))
                          (___kont4115941160_))))
                  (___kont4115941160_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx34580_
               _self34581_
               _$t34582_
               _methods34583_
               _slots34584_
               _class-check34585_
               _struct-check34586_
               _struct-assert34587_)
        (letrec ((_force-e34589_
                  (lambda (_what36151_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _what36151_ '()))
                                      '()))))))
          (let* ((___stx4187341874_ _stx34580_)
                 (_g3460134919_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx4187341874_))))
            (let ((___kont4187541876_
                   (lambda (_L36097_ _L36098_ _L36099_ _L36100_)
                     (let ((_$method36145_
                            (table-ref _methods34583_ (gx#stx-e _L36098_)))
                           (_args36146_
                            (map (lambda (_g3613336135_)
                                   (gxc#compile-e
                                    _g3613336135_
                                    _self34581_
                                    _$t34582_
                                    _methods34583_
                                    _slots34584_
                                    _class-check34585_
                                    _struct-check34586_
                                    _struct-assert34587_))
                                 (foldr1 (lambda (_g3613736140_ _g3613836142_)
                                           (cons _g3613736140_ _g3613836142_))
                                         '()
                                         _L36097_))))
                       (gxc#xform-wrap-source
                        (cons '%#call
                              (cons (_force-e34589_ _$method36145_)
                                    (cons (cons '%#ref (cons _self34581_ '()))
                                          _args36146_)))
                        _stx34580_))))
                  (___kont4187941880_
                   (lambda (_L35929_ _L35930_ _L35931_ _L35932_ _L35933_)
                     (let ((_$method35985_
                            (table-ref _methods34583_ (gx#stx-e _L35930_)))
                           (_args35986_
                            (map (lambda (_g3597335975_)
                                   (gxc#compile-e
                                    _g3597335975_
                                    _self34581_
                                    _$t34582_
                                    _methods34583_
                                    _slots34584_
                                    _class-check34585_
                                    _struct-check34586_
                                    _struct-assert34587_))
                                 (foldr1 (lambda (_g3597735980_ _g3597835982_)
                                           (cons _g3597735980_ _g3597835982_))
                                         '()
                                         _L35929_))))
                       (gxc#xform-wrap-source
                        (cons '%#call
                              (cons (cons '%#ref (cons 'apply '()))
                                    (cons (_force-e34589_ _$method35985_)
                                          (cons (cons '%#ref
                                                      (cons _self34581_ '()))
                                                _args35986_))))
                        _stx34580_))))
                  (___kont4188341884_
                   (lambda (_L35760_ _L35761_ _L35762_)
                     (let ((_$field35794_
                            (table-ref _slots34584_ (gx#stx-e _L35760_))))
                       (gxc#xform-wrap-source
                        (cons '%#struct-unchecked-ref
                              (cons (cons '%#ref (cons _$t34582_ '()))
                                    (cons (cons '%#ref
                                                (cons _$field35794_ '()))
                                          (cons (cons '%#ref
                                                      (cons _self34581_ '()))
                                                '()))))
                        _stx34580_))))
                  (___kont4188541886_
                   (lambda (_L35634_ _L35635_ _L35636_ _L35637_)
                     (let ((_$field35672_
                            (table-ref _slots34584_ (gx#stx-e _L35635_)))
                           (_expr35673_
                            (gxc#compile-e
                             _L35634_
                             _self34581_
                             _$t34582_
                             _methods34583_
                             _slots34584_
                             _class-check34585_
                             _struct-check34586_
                             _struct-assert34587_)))
                       (gxc#xform-wrap-source
                        (cons '%#struct-unchecked-set!
                              (cons (cons '%#ref (cons _$t34582_ '()))
                                    (cons (cons '%#ref
                                                (cons _$field35672_ '()))
                                          (cons (cons '%#ref
                                                      (cons _self34581_ '()))
                                                (cons _expr35673_ '())))))
                        _stx34580_))))
                  (___kont4188741888_
                   (lambda (_L35513_ _L35514_)
                     (let* ((_slot35536_
                             (##structure-ref
                              (gxc#optimizer-resolve-type
                               (gxc#identifier-symbol _L35514_))
                              '2
                              gxc#!class-getf::t
                              '#f))
                            (_$field35538_
                             (table-ref _slots34584_ _slot35536_)))
                       (gxc#xform-wrap-source
                        (cons '%#struct-unchecked-ref
                              (cons (cons '%#ref (cons _$t34582_ '()))
                                    (cons (cons '%#ref
                                                (cons _$field35538_ '()))
                                          (cons (cons '%#ref
                                                      (cons _self34581_ '()))
                                                '()))))
                        _stx34580_))))
                  (___kont4188941890_
                   (lambda (_L35418_ _L35419_ _L35420_)
                     (let* ((_slot35445_
                             (##structure-ref
                              (gxc#optimizer-resolve-type
                               (gxc#identifier-symbol
                                (gx#datum->syntax__0 '#f 'getf)))
                              '2
                              gxc#!class-setf::t
                              '#f))
                            (_$field35447_
                             (table-ref _slots34584_ _slot35445_))
                            (_expr35449_
                             (gxc#compile-e
                              _L35418_
                              _self34581_
                              _$t34582_
                              _methods34583_
                              _slots34584_
                              _class-check34585_
                              _struct-check34586_
                              _struct-assert34587_)))
                       (gxc#xform-wrap-source
                        (cons '%#struct-unchecked-set!
                              (cons (cons '%#ref (cons _$t34582_ '()))
                                    (cons (cons '%#ref
                                                (cons _$field35447_ '()))
                                          (cons (cons '%#ref
                                                      (cons _self34581_ '()))
                                                (cons _expr35449_ '())))))
                        _stx34580_))))
                  (___kont4189141892_
                   (lambda (_L35326_ _L35327_)
                     (cons '%#ref
                           (cons (table-ref
                                  _class-check34585_
                                  (##structure-ref
                                   (gxc#optimizer-resolve-type
                                    (gxc#identifier-symbol _L35327_))
                                   '1
                                   gxc#!type::t
                                   '#f))
                                 '()))))
                  (___kont4189341894_
                   (lambda (_L35235_ _L35236_)
                     (let ((_t35258_
                            (##structure-ref
                             (gxc#optimizer-resolve-type
                              (gxc#identifier-symbol _L35236_))
                             '1
                             gxc#!type::t
                             '#f)))
                       (if (table-ref _struct-assert34587_ _t35258_ '#f)
                           '(%#quote #t)
                           (let ((_$e35260_
                                  (table-ref
                                   _struct-check34586_
                                   _t35258_
                                   '#f)))
                             (if _$e35260_
                                 ((lambda (_checkq35263_)
                                    (cons '%#ref (cons _checkq35263_ '())))
                                  _$e35260_)
                                 _stx34580_))))))
                  (___kont4189541896_
                   (lambda (_L35120_ _L35121_)
                     (let* ((_getf35154_
                             (gxc#optimizer-resolve-type
                              (gxc#identifier-symbol _L35121_)))
                            (_t35156_
                             (##structure-ref
                              _getf35154_
                              '1
                              gxc#!type::t
                              '#f)))
                       (if (##structure-ref
                            _getf35154_
                            '3
                            gxc#!struct-getf::t
                            '#f)
                           _stx34580_
                           (if (table-ref _struct-assert34587_ _t35156_ '#f)
                               (let* ((_struct-t35159_
                                       (gxc#optimizer-resolve-type _t35156_))
                                      (_off35161_
                                       (fx+ (##structure-ref
                                             _getf35154_
                                             '2
                                             gxc#!struct-getf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t35159_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (cons '%#struct-unchecked-ref
                                       (cons (cons '%#ref (cons _t35156_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off35161_ '()))
                                                   (cons (cons '%#ref
                                                               (cons _self34581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (let ((_$e35164_
                                      (table-ref
                                       _struct-check34586_
                                       _t35156_
                                       '#f)))
                                 (if _$e35164_
                                     ((lambda (_checkq35167_)
                                        (let* ((_struct-t35169_
                                                (gxc#optimizer-resolve-type
                                                 _t35156_))
                                               (_off35171_
                                                (fx+ (##structure-ref
                                                      _getf35154_
                                                      '2
                                                      gxc#!struct-getf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t35169_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (cons '%#if
                                                (cons (cons '%#ref
                                                            (cons _checkq35167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref (cons _t35156_ '()))
                                (cons (cons '%#quote (cons _off35171_ '()))
                                      (cons (cons '%#ref
                                                  (cons _self34581_ '()))
                                            '()))))
                    (cons (cons '%#call
                                (cons (cons '%#ref (cons 'error '()))
                                      (cons (cons '%#quote
                                                  (cons '"Type error; concrete type is not a subclass of expected type"
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _t35156_ '()))
                                                  (cons (cons '%#ref
                                                              (cons _self34581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e35164_)
                                     _stx34580_)))))))
                  (___kont4189741898_
                   (lambda (_L34995_ _L34996_ _L34997_)
                     (let* ((_setf35037_
                             (gxc#optimizer-resolve-type
                              (gxc#identifier-symbol _L34997_)))
                            (_t35039_
                             (##structure-ref _setf35037_ '1 gxc#!type::t '#f))
                            (_expr35041_
                             (gxc#compile-e
                              _L34995_
                              _self34581_
                              _$t34582_
                              _methods34583_
                              _slots34584_
                              _class-check34585_
                              _struct-check34586_
                              _struct-assert34587_)))
                       (if (##structure-ref
                            _setf35037_
                            '3
                            gxc#!struct-setf::t
                            '#f)
                           (cons '%#call
                                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                             (cons (gx#datum->syntax__0
                                                    '#f
                                                    'setf)
                                                   '()))
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    '%#ref)
                                                   (cons _L34996_ '()))
                                             (cons _expr35041_ '()))))
                           (if (table-ref _struct-assert34587_ _t35039_ '#f)
                               (let* ((_struct-t35044_
                                       (gxc#optimizer-resolve-type _t35039_))
                                      (_off35046_
                                       (fx+ (##structure-ref
                                             _setf35037_
                                             '2
                                             gxc#!struct-setf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t35044_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (cons '%#struct-unchecked-set!
                                       (cons (cons '%#ref (cons _t35039_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off35046_ '()))
                                                   (cons (cons '%#ref
                                                               (cons _self34581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _expr35041_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (let ((_$e35049_
                                      (table-ref
                                       _struct-check34586_
                                       _t35039_
                                       '#f)))
                                 (if _$e35049_
                                     ((lambda (_checkq35052_)
                                        (let* ((_struct-t35054_
                                                (gxc#optimizer-resolve-type
                                                 _t35039_))
                                               (_off35056_
                                                (fx+ (##structure-ref
                                                      _setf35037_
                                                      '2
                                                      gxc#!struct-setf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t35054_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (cons '%#if
                                                (cons (cons '%#ref
                                                            (cons _checkq35052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#struct-unchecked-set!
                          (cons (cons '%#ref (cons _t35039_ '()))
                                (cons (cons '%#quote (cons _off35056_ '()))
                                      (cons (cons '%#ref
                                                  (cons _self34581_ '()))
                                            (cons _expr35041_ '())))))
                    (cons (cons '%#call
                                (cons (cons '%#ref (cons 'error '()))
                                      (cons (cons '%#quote
                                                  (cons '"Type error; concrete type is not a subclass of expected type"
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _t35039_ '()))
                                                  (cons (cons '%#ref
                                                              (cons _self34581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e35049_)
                                     (cons '%#call
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'setf)
                                                             '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             (cons _L34996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _expr35041_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  (___kont4189941900_
                   (lambda ()
                     (gxc#xform-operands
                      _stx34580_
                      _self34581_
                      _$t34582_
                      _methods34583_
                      _slots34584_
                      _class-check34585_
                      _struct-check34586_
                      _struct-assert34587_))))
              (let* ((___match4261042611_
                      (lambda (_e3489134931_
                               _hd3489234934_
                               _tl3489334936_
                               _e3489434939_
                               _hd3489534942_
                               _tl3489634944_
                               _e3489734947_
                               _hd3489834950_
                               _tl3489934952_
                               _e3490034955_
                               _hd3490134958_
                               _tl3490234960_
                               _e3490334963_
                               _hd3490434966_
                               _tl3490534968_
                               _e3490634971_
                               _hd3490734974_
                               _tl3490834976_
                               _e3490934979_
                               _hd3491034982_
                               _tl3491134984_
                               _e3491234987_
                               _hd3491334990_
                               _tl3491434992_)
                        (let ((_L34995_ _hd3491334990_)
                              (_L34996_ _hd3491034982_)
                              (_L34997_ _hd3490134958_))
                          (if (if (not (gx#free-identifier=?
                                        _L34996_
                                        _self34581_))
                                  '#f
                                  (let ((_$e35026_
                                         (gxc#optimizer-resolve-type
                                          (gxc#identifier-symbol _L34997_))))
                                    (and _$e35026_
                                         ((lambda (_t35029_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t35029_
                                                    'gxc#!struct-setf::t))
                                                 (let ((_struct-t3503035032_
                                                        (gxc#optimizer-resolve-type
                                                         (##structure-ref
                                                          _t35029_
                                                          '1
                                                          gxc#!type::t
                                                          '#f))))
                                                   (and _struct-t3503035032_
                                                        (let ((_struct-t35035_
                                                               _struct-t3503035032_))
                                                          (##structure-ref
                                                           _struct-t35035_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e35026_))))
                              (___kont4189741898_ _L34995_ _L34996_ _L34997_)
                              (___kont4189941900_)))))
                     (___match4260242603_
                      (lambda (_e3489134931_
                               _hd3489234934_
                               _tl3489334936_
                               _e3489434939_
                               _hd3489534942_
                               _tl3489634944_
                               _e3489734947_
                               _hd3489834950_
                               _tl3489934952_
                               _e3490034955_
                               _hd3490134958_
                               _tl3490234960_
                               _e3490334963_
                               _hd3490434966_
                               _tl3490534968_
                               _e3490634971_
                               _hd3490734974_
                               _tl3490834976_
                               _e3490934979_
                               _hd3491034982_
                               _tl3491134984_)
                        (if (gx#stx-pair? _tl3490534968_)
                            (let ((_e3491234987_ (gx#stx-e _tl3490534968_)))
                              (let ((_tl3491434992_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3491234987_)))
                                    (_hd3491334990_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3491234987_))))
                                (if (gx#stx-null? _tl3491434992_)
                                    (___match4261042611_
                                     _e3489134931_
                                     _hd3489234934_
                                     _tl3489334936_
                                     _e3489434939_
                                     _hd3489534942_
                                     _tl3489634944_
                                     _e3489734947_
                                     _hd3489834950_
                                     _tl3489934952_
                                     _e3490034955_
                                     _hd3490134958_
                                     _tl3490234960_
                                     _e3490334963_
                                     _hd3490434966_
                                     _tl3490534968_
                                     _e3490634971_
                                     _hd3490734974_
                                     _tl3490834976_
                                     _e3490934979_
                                     _hd3491034982_
                                     _tl3491134984_
                                     _e3491234987_
                                     _hd3491334990_
                                     _tl3491434992_)
                                    (___kont4189941900_))))
                            (___kont4189941900_))))
                     (___match4254842549_
                      (lambda (_e3486735064_
                               _hd3486835067_
                               _tl3486935069_
                               _e3487035072_
                               _hd3487135075_
                               _tl3487235077_
                               _e3487335080_
                               _hd3487435083_
                               _tl3487535085_
                               _e3487635088_
                               _hd3487735091_
                               _tl3487835093_
                               _e3487935096_
                               _hd3488035099_
                               _tl3488135101_
                               _e3488235104_
                               _hd3488335107_
                               _tl3488435109_
                               _e3488535112_
                               _hd3488635115_
                               _tl3488735117_)
                        (let ((_L35120_ _hd3488635115_)
                              (_L35121_ _hd3487735091_))
                          (if (if (not (gx#free-identifier=?
                                        _L35120_
                                        _self34581_))
                                  '#f
                                  (let ((_$e35143_
                                         (gxc#optimizer-resolve-type
                                          (gxc#identifier-symbol _L35121_))))
                                    (and _$e35143_
                                         ((lambda (_t35146_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t35146_
                                                    'gxc#!struct-getf::t))
                                                 (let ((_struct-t3514735149_
                                                        (gxc#optimizer-resolve-type
                                                         (##structure-ref
                                                          _t35146_
                                                          '1
                                                          gxc#!type::t
                                                          '#f))))
                                                   (and _struct-t3514735149_
                                                        (let ((_struct-t35152_
                                                               _struct-t3514735149_))
                                                          (##structure-ref
                                                           _struct-t35152_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e35143_))))
                              (___kont4189541896_ _L35120_ _L35121_)
                              (___kont4189941900_)))))
                     (___match4249242493_
                      (lambda (_e3484435179_
                               _hd3484535182_
                               _tl3484635184_
                               _e3484735187_
                               _hd3484835190_
                               _tl3484935192_
                               _e3485035195_
                               _hd3485135198_
                               _tl3485235200_
                               _e3485335203_
                               _hd3485435206_
                               _tl3485535208_
                               _e3485635211_
                               _hd3485735214_
                               _tl3485835216_
                               _e3485935219_
                               _hd3486035222_
                               _tl3486135224_
                               _e3486235227_
                               _hd3486335230_
                               _tl3486435232_)
                        (let ((_L35235_ _hd3486335230_)
                              (_L35236_ _hd3485435206_))
                          (if (and (gx#free-identifier=? _L35235_ _self34581_)
                                   (let ((__tmp42658
                                          (gxc#optimizer-resolve-type
                                           (gxc#identifier-symbol _L35236_))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp42658
                                      'gxc#!struct-pred::t)))
                              (___kont4189341894_ _L35235_ _L35236_)
                              (___match4254842549_
                               _e3484435179_
                               _hd3484535182_
                               _tl3484635184_
                               _e3484735187_
                               _hd3484835190_
                               _tl3484935192_
                               _e3485035195_
                               _hd3485135198_
                               _tl3485235200_
                               _e3485335203_
                               _hd3485435206_
                               _tl3485535208_
                               _e3485635211_
                               _hd3485735214_
                               _tl3485835216_
                               _e3485935219_
                               _hd3486035222_
                               _tl3486135224_
                               _e3486235227_
                               _hd3486335230_
                               _tl3486435232_)))))
                     (___match4243642437_
                      (lambda (_e3482135270_
                               _hd3482235273_
                               _tl3482335275_
                               _e3482435278_
                               _hd3482535281_
                               _tl3482635283_
                               _e3482735286_
                               _hd3482835289_
                               _tl3482935291_
                               _e3483035294_
                               _hd3483135297_
                               _tl3483235299_
                               _e3483335302_
                               _hd3483435305_
                               _tl3483535307_
                               _e3483635310_
                               _hd3483735313_
                               _tl3483835315_
                               _e3483935318_
                               _hd3484035321_
                               _tl3484135323_)
                        (let ((_L35326_ _hd3484035321_)
                              (_L35327_ _hd3483135297_))
                          (if (and (gx#free-identifier=? _L35326_ _self34581_)
                                   (let ((__tmp42659
                                          (gxc#optimizer-resolve-type
                                           (gxc#identifier-symbol _L35327_))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp42659
                                      'gxc#!class-pred::t)))
                              (___kont4189141892_ _L35326_ _L35327_)
                              (___match4249242493_
                               _e3482135270_
                               _hd3482235273_
                               _tl3482335275_
                               _e3482435278_
                               _hd3482535281_
                               _tl3482635283_
                               _e3482735286_
                               _hd3482835289_
                               _tl3482935291_
                               _e3483035294_
                               _hd3483135297_
                               _tl3483235299_
                               _e3483335302_
                               _hd3483435305_
                               _tl3483535307_
                               _e3483635310_
                               _hd3483735313_
                               _tl3483835315_
                               _e3483935318_
                               _hd3484035321_
                               _tl3484135323_)))))
                     (___match4243442435_
                      (lambda (_e3482135270_
                               _hd3482235273_
                               _tl3482335275_
                               _e3482435278_
                               _hd3482535281_
                               _tl3482635283_
                               _e3482735286_
                               _hd3482835289_
                               _tl3482935291_
                               _e3483035294_
                               _hd3483135297_
                               _tl3483235299_
                               _e3483335302_
                               _hd3483435305_
                               _tl3483535307_
                               _e3483635310_
                               _hd3483735313_
                               _tl3483835315_
                               _e3483935318_
                               _hd3484035321_
                               _tl3484135323_)
                        (if (gx#stx-null? _tl3483535307_)
                            (___match4243642437_
                             _e3482135270_
                             _hd3482235273_
                             _tl3482335275_
                             _e3482435278_
                             _hd3482535281_
                             _tl3482635283_
                             _e3482735286_
                             _hd3482835289_
                             _tl3482935291_
                             _e3483035294_
                             _hd3483135297_
                             _tl3483235299_
                             _e3483335302_
                             _hd3483435305_
                             _tl3483535307_
                             _e3483635310_
                             _hd3483735313_
                             _tl3483835315_
                             _e3483935318_
                             _hd3484035321_
                             _tl3484135323_)
                            (___match4260242603_
                             _e3482135270_
                             _hd3482235273_
                             _tl3482335275_
                             _e3482435278_
                             _hd3482535281_
                             _tl3482635283_
                             _e3482735286_
                             _hd3482835289_
                             _tl3482935291_
                             _e3483035294_
                             _hd3483135297_
                             _tl3483235299_
                             _e3483335302_
                             _hd3483435305_
                             _tl3483535307_
                             _e3483635310_
                             _hd3483735313_
                             _tl3483835315_
                             _e3483935318_
                             _hd3484035321_
                             _tl3484135323_))))
                     (___match4238042381_
                      (lambda (_e3479535354_
                               _hd3479635357_
                               _tl3479735359_
                               _e3479835362_
                               _hd3479935365_
                               _tl3480035367_
                               _e3480135370_
                               _hd3480235373_
                               _tl3480335375_
                               _e3480435378_
                               _hd3480535381_
                               _tl3480635383_
                               _e3480735386_
                               _hd3480835389_
                               _tl3480935391_
                               _e3481035394_
                               _hd3481135397_
                               _tl3481235399_
                               _e3481335402_
                               _hd3481435405_
                               _tl3481535407_
                               _e3481635410_
                               _hd3481735413_
                               _tl3481835415_)
                        (let ((_L35418_ _hd3481735413_)
                              (_L35419_ _hd3481435405_)
                              (_L35420_ _hd3480535381_))
                          (if (and (gx#free-identifier=? _L35419_ _self34581_)
                                   (let ((__tmp42660
                                          (gxc#optimizer-resolve-type
                                           (gxc#identifier-symbol _L35420_))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp42660
                                      'gxc#!class-setf::t)))
                              (___kont4188941890_ _L35418_ _L35419_ _L35420_)
                              (___match4261042611_
                               _e3479535354_
                               _hd3479635357_
                               _tl3479735359_
                               _e3479835362_
                               _hd3479935365_
                               _tl3480035367_
                               _e3480135370_
                               _hd3480235373_
                               _tl3480335375_
                               _e3480435378_
                               _hd3480535381_
                               _tl3480635383_
                               _e3480735386_
                               _hd3480835389_
                               _tl3480935391_
                               _e3481035394_
                               _hd3481135397_
                               _tl3481235399_
                               _e3481335402_
                               _hd3481435405_
                               _tl3481535407_
                               _e3481635410_
                               _hd3481735413_
                               _tl3481835415_)))))
                     (___match4237842379_
                      (lambda (_e3479535354_
                               _hd3479635357_
                               _tl3479735359_
                               _e3479835362_
                               _hd3479935365_
                               _tl3480035367_
                               _e3480135370_
                               _hd3480235373_
                               _tl3480335375_
                               _e3480435378_
                               _hd3480535381_
                               _tl3480635383_
                               _e3480735386_
                               _hd3480835389_
                               _tl3480935391_
                               _e3481035394_
                               _hd3481135397_
                               _tl3481235399_
                               _e3481335402_
                               _hd3481435405_
                               _tl3481535407_
                               _e3481635410_
                               _hd3481735413_
                               _tl3481835415_)
                        (if (gx#stx-null? _tl3481835415_)
                            (___match4238042381_
                             _e3479535354_
                             _hd3479635357_
                             _tl3479735359_
                             _e3479835362_
                             _hd3479935365_
                             _tl3480035367_
                             _e3480135370_
                             _hd3480235373_
                             _tl3480335375_
                             _e3480435378_
                             _hd3480535381_
                             _tl3480635383_
                             _e3480735386_
                             _hd3480835389_
                             _tl3480935391_
                             _e3481035394_
                             _hd3481135397_
                             _tl3481235399_
                             _e3481335402_
                             _hd3481435405_
                             _tl3481535407_
                             _e3481635410_
                             _hd3481735413_
                             _tl3481835415_)
                            (___kont4189941900_))))
                     (___match4237242373_
                      (lambda (_e3479535354_
                               _hd3479635357_
                               _tl3479735359_
                               _e3479835362_
                               _hd3479935365_
                               _tl3480035367_
                               _e3480135370_
                               _hd3480235373_
                               _tl3480335375_
                               _e3480435378_
                               _hd3480535381_
                               _tl3480635383_
                               _e3480735386_
                               _hd3480835389_
                               _tl3480935391_
                               _e3481035394_
                               _hd3481135397_
                               _tl3481235399_
                               _e3481335402_
                               _hd3481435405_
                               _tl3481535407_)
                        (if (gx#stx-pair? _tl3480935391_)
                            (let ((_e3481635410_ (gx#stx-e _tl3480935391_)))
                              (let ((_tl3481835415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3481635410_)))
                                    (_hd3481735413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3481635410_))))
                                (if (gx#stx-null? _tl3481835415_)
                                    (___match4238042381_
                                     _e3479535354_
                                     _hd3479635357_
                                     _tl3479735359_
                                     _e3479835362_
                                     _hd3479935365_
                                     _tl3480035367_
                                     _e3480135370_
                                     _hd3480235373_
                                     _tl3480335375_
                                     _e3480435378_
                                     _hd3480535381_
                                     _tl3480635383_
                                     _e3480735386_
                                     _hd3480835389_
                                     _tl3480935391_
                                     _e3481035394_
                                     _hd3481135397_
                                     _tl3481235399_
                                     _e3481335402_
                                     _hd3481435405_
                                     _tl3481535407_
                                     _e3481635410_
                                     _hd3481735413_
                                     _tl3481835415_)
                                    (___kont4189941900_))))
                            (___match4243442435_
                             _e3479535354_
                             _hd3479635357_
                             _tl3479735359_
                             _e3479835362_
                             _hd3479935365_
                             _tl3480035367_
                             _e3480135370_
                             _hd3480235373_
                             _tl3480335375_
                             _e3480435378_
                             _hd3480535381_
                             _tl3480635383_
                             _e3480735386_
                             _hd3480835389_
                             _tl3480935391_
                             _e3481035394_
                             _hd3481135397_
                             _tl3481235399_
                             _e3481335402_
                             _hd3481435405_
                             _tl3481535407_))))
                     (___match4231842319_
                      (lambda (_e3477135457_
                               _hd3477235460_
                               _tl3477335462_
                               _e3477435465_
                               _hd3477535468_
                               _tl3477635470_
                               _e3477735473_
                               _hd3477835476_
                               _tl3477935478_
                               _e3478035481_
                               _hd3478135484_
                               _tl3478235486_
                               _e3478335489_
                               _hd3478435492_
                               _tl3478535494_
                               _e3478635497_
                               _hd3478735500_
                               _tl3478835502_
                               _e3478935505_
                               _hd3479035508_
                               _tl3479135510_)
                        (let ((_L35513_ _hd3479035508_)
                              (_L35514_ _hd3478135484_))
                          (if (and (gx#free-identifier=? _L35513_ _self34581_)
                                   (let ((__tmp42661
                                          (gxc#optimizer-resolve-type
                                           (gxc#identifier-symbol _L35514_))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp42661
                                      'gxc#!class-getf::t)))
                              (___kont4188741888_ _L35513_ _L35514_)
                              (___match4243642437_
                               _e3477135457_
                               _hd3477235460_
                               _tl3477335462_
                               _e3477435465_
                               _hd3477535468_
                               _tl3477635470_
                               _e3477735473_
                               _hd3477835476_
                               _tl3477935478_
                               _e3478035481_
                               _hd3478135484_
                               _tl3478235486_
                               _e3478335489_
                               _hd3478435492_
                               _tl3478535494_
                               _e3478635497_
                               _hd3478735500_
                               _tl3478835502_
                               _e3478935505_
                               _hd3479035508_
                               _tl3479135510_)))))
                     (___match4231642317_
                      (lambda (_e3477135457_
                               _hd3477235460_
                               _tl3477335462_
                               _e3477435465_
                               _hd3477535468_
                               _tl3477635470_
                               _e3477735473_
                               _hd3477835476_
                               _tl3477935478_
                               _e3478035481_
                               _hd3478135484_
                               _tl3478235486_
                               _e3478335489_
                               _hd3478435492_
                               _tl3478535494_
                               _e3478635497_
                               _hd3478735500_
                               _tl3478835502_
                               _e3478935505_
                               _hd3479035508_
                               _tl3479135510_)
                        (if (gx#stx-null? _tl3478535494_)
                            (___match4231842319_
                             _e3477135457_
                             _hd3477235460_
                             _tl3477335462_
                             _e3477435465_
                             _hd3477535468_
                             _tl3477635470_
                             _e3477735473_
                             _hd3477835476_
                             _tl3477935478_
                             _e3478035481_
                             _hd3478135484_
                             _tl3478235486_
                             _e3478335489_
                             _hd3478435492_
                             _tl3478535494_
                             _e3478635497_
                             _hd3478735500_
                             _tl3478835502_
                             _e3478935505_
                             _hd3479035508_
                             _tl3479135510_)
                            (___match4237242373_
                             _e3477135457_
                             _hd3477235460_
                             _tl3477335462_
                             _e3477435465_
                             _hd3477535468_
                             _tl3477635470_
                             _e3477735473_
                             _hd3477835476_
                             _tl3477935478_
                             _e3478035481_
                             _hd3478135484_
                             _tl3478235486_
                             _e3478335489_
                             _hd3478435492_
                             _tl3478535494_
                             _e3478635497_
                             _hd3478735500_
                             _tl3478835502_
                             _e3478935505_
                             _hd3479035508_
                             _tl3479135510_))))
                     (___match4226242263_
                      (lambda (_e3473635546_
                               _hd3473735549_
                               _tl3473835551_
                               _e3473935554_
                               _hd3474035557_
                               _tl3474135559_
                               _e3474235562_
                               _hd3474335565_
                               _tl3474435567_
                               _e3474535570_
                               _hd3474635573_
                               _tl3474735575_
                               _e3474835578_
                               _hd3474935581_
                               _tl3475035583_
                               _e3475135586_
                               _hd3475235589_
                               _tl3475335591_
                               _e3475435594_
                               _hd3475535597_
                               _tl3475635599_
                               _e3475735602_
                               _hd3475835605_
                               _tl3475935607_
                               _e3476035610_
                               _hd3476135613_
                               _tl3476235615_
                               _e3476335618_
                               _hd3476435621_
                               _tl3476535623_
                               _e3476635626_
                               _hd3476735629_
                               _tl3476835631_)
                        (let ((_L35634_ _hd3476735629_)
                              (_L35635_ _hd3476435621_)
                              (_L35636_ _hd3475535597_)
                              (_L35637_ _hd3474635573_))
                          (if (and (or (gxc#runtime-identifier=?
                                        _L35637_
                                        'slot-set!)
                                       (gxc#runtime-identifier=?
                                        _L35637_
                                        'unchecked-slot-set!))
                                   (gx#free-identifier=? _L35636_ _self34581_))
                              (___kont4188541886_
                               _L35634_
                               _L35635_
                               _L35636_
                               _L35637_)
                              (___kont4189941900_)))))
                     (___match4225442255_
                      (lambda (_e3473635546_
                               _hd3473735549_
                               _tl3473835551_
                               _e3473935554_
                               _hd3474035557_
                               _tl3474135559_
                               _e3474235562_
                               _hd3474335565_
                               _tl3474435567_
                               _e3474535570_
                               _hd3474635573_
                               _tl3474735575_
                               _e3474835578_
                               _hd3474935581_
                               _tl3475035583_
                               _e3475135586_
                               _hd3475235589_
                               _tl3475335591_
                               _e3475435594_
                               _hd3475535597_
                               _tl3475635599_
                               _e3475735602_
                               _hd3475835605_
                               _tl3475935607_
                               _e3476035610_
                               _hd3476135613_
                               _tl3476235615_
                               _e3476335618_
                               _hd3476435621_
                               _tl3476535623_)
                        (if (gx#stx-pair? _tl3475935607_)
                            (let ((_e3476635626_ (gx#stx-e _tl3475935607_)))
                              (let ((_tl3476835631_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3476635626_)))
                                    (_hd3476735629_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3476635626_))))
                                (if (gx#stx-null? _tl3476835631_)
                                    (___match4226242263_
                                     _e3473635546_
                                     _hd3473735549_
                                     _tl3473835551_
                                     _e3473935554_
                                     _hd3474035557_
                                     _tl3474135559_
                                     _e3474235562_
                                     _hd3474335565_
                                     _tl3474435567_
                                     _e3474535570_
                                     _hd3474635573_
                                     _tl3474735575_
                                     _e3474835578_
                                     _hd3474935581_
                                     _tl3475035583_
                                     _e3475135586_
                                     _hd3475235589_
                                     _tl3475335591_
                                     _e3475435594_
                                     _hd3475535597_
                                     _tl3475635599_
                                     _e3475735602_
                                     _hd3475835605_
                                     _tl3475935607_
                                     _e3476035610_
                                     _hd3476135613_
                                     _tl3476235615_
                                     _e3476335618_
                                     _hd3476435621_
                                     _tl3476535623_
                                     _e3476635626_
                                     _hd3476735629_
                                     _tl3476835631_)
                                    (___kont4189941900_))))
                            (___match4237842379_
                             _e3473635546_
                             _hd3473735549_
                             _tl3473835551_
                             _e3473935554_
                             _hd3474035557_
                             _tl3474135559_
                             _e3474235562_
                             _hd3474335565_
                             _tl3474435567_
                             _e3474535570_
                             _hd3474635573_
                             _tl3474735575_
                             _e3474835578_
                             _hd3474935581_
                             _tl3475035583_
                             _e3475135586_
                             _hd3475235589_
                             _tl3475335591_
                             _e3475435594_
                             _hd3475535597_
                             _tl3475635599_
                             _e3475735602_
                             _hd3475835605_
                             _tl3475935607_))))
                     (___match4217642177_
                      (lambda (_e3470235680_
                               _hd3470335683_
                               _tl3470435685_
                               _e3470535688_
                               _hd3470635691_
                               _tl3470735693_
                               _e3470835696_
                               _hd3470935699_
                               _tl3471035701_
                               _e3471135704_
                               _hd3471235707_
                               _tl3471335709_
                               _e3471435712_
                               _hd3471535715_
                               _tl3471635717_
                               _e3471735720_
                               _hd3471835723_
                               _tl3471935725_
                               _e3472035728_
                               _hd3472135731_
                               _tl3472235733_
                               _e3472335736_
                               _hd3472435739_
                               _tl3472535741_
                               _e3472635744_
                               _hd3472735747_
                               _tl3472835749_
                               _e3472935752_
                               _hd3473035755_
                               _tl3473135757_)
                        (let ((_L35760_ _hd3473035755_)
                              (_L35761_ _hd3472135731_)
                              (_L35762_ _hd3471235707_))
                          (if (and (or (gxc#runtime-identifier=?
                                        _L35762_
                                        'slot-ref)
                                       (gxc#runtime-identifier=?
                                        _L35762_
                                        'unchecked-slot-ref))
                                   (gx#free-identifier=? _L35761_ _self34581_))
                              (___kont4188341884_ _L35760_ _L35761_ _L35762_)
                              (___match4238042381_
                               _e3470235680_
                               _hd3470335683_
                               _tl3470435685_
                               _e3470535688_
                               _hd3470635691_
                               _tl3470735693_
                               _e3470835696_
                               _hd3470935699_
                               _tl3471035701_
                               _e3471135704_
                               _hd3471235707_
                               _tl3471335709_
                               _e3471435712_
                               _hd3471535715_
                               _tl3471635717_
                               _e3471735720_
                               _hd3471835723_
                               _tl3471935725_
                               _e3472035728_
                               _hd3472135731_
                               _tl3472235733_
                               _e3472335736_
                               _hd3472435739_
                               _tl3472535741_)))))
                     (___match4217442175_
                      (lambda (_e3470235680_
                               _hd3470335683_
                               _tl3470435685_
                               _e3470535688_
                               _hd3470635691_
                               _tl3470735693_
                               _e3470835696_
                               _hd3470935699_
                               _tl3471035701_
                               _e3471135704_
                               _hd3471235707_
                               _tl3471335709_
                               _e3471435712_
                               _hd3471535715_
                               _tl3471635717_
                               _e3471735720_
                               _hd3471835723_
                               _tl3471935725_
                               _e3472035728_
                               _hd3472135731_
                               _tl3472235733_
                               _e3472335736_
                               _hd3472435739_
                               _tl3472535741_
                               _e3472635744_
                               _hd3472735747_
                               _tl3472835749_
                               _e3472935752_
                               _hd3473035755_
                               _tl3473135757_)
                        (if (gx#stx-null? _tl3472535741_)
                            (___match4217642177_
                             _e3470235680_
                             _hd3470335683_
                             _tl3470435685_
                             _e3470535688_
                             _hd3470635691_
                             _tl3470735693_
                             _e3470835696_
                             _hd3470935699_
                             _tl3471035701_
                             _e3471135704_
                             _hd3471235707_
                             _tl3471335709_
                             _e3471435712_
                             _hd3471535715_
                             _tl3471635717_
                             _e3471735720_
                             _hd3471835723_
                             _tl3471935725_
                             _e3472035728_
                             _hd3472135731_
                             _tl3472235733_
                             _e3472335736_
                             _hd3472435739_
                             _tl3472535741_
                             _e3472635744_
                             _hd3472735747_
                             _tl3472835749_
                             _e3472935752_
                             _hd3473035755_
                             _tl3473135757_)
                            (___match4225442255_
                             _e3470235680_
                             _hd3470335683_
                             _tl3470435685_
                             _e3470535688_
                             _hd3470635691_
                             _tl3470735693_
                             _e3470835696_
                             _hd3470935699_
                             _tl3471035701_
                             _e3471135704_
                             _hd3471235707_
                             _tl3471335709_
                             _e3471435712_
                             _hd3471535715_
                             _tl3471635717_
                             _e3471735720_
                             _hd3471835723_
                             _tl3471935725_
                             _e3472035728_
                             _hd3472135731_
                             _tl3472235733_
                             _e3472335736_
                             _hd3472435739_
                             _tl3472535741_
                             _e3472635744_
                             _hd3472735747_
                             _tl3472835749_
                             _e3472935752_
                             _hd3473035755_
                             _tl3473135757_))))
                     (___match4216442165_
                      (lambda (_e3470235680_
                               _hd3470335683_
                               _tl3470435685_
                               _e3470535688_
                               _hd3470635691_
                               _tl3470735693_
                               _e3470835696_
                               _hd3470935699_
                               _tl3471035701_
                               _e3471135704_
                               _hd3471235707_
                               _tl3471335709_
                               _e3471435712_
                               _hd3471535715_
                               _tl3471635717_
                               _e3471735720_
                               _hd3471835723_
                               _tl3471935725_
                               _e3472035728_
                               _hd3472135731_
                               _tl3472235733_
                               _e3472335736_
                               _hd3472435739_
                               _tl3472535741_
                               _e3472635744_
                               _hd3472735747_
                               _tl3472835749_)
                        (if (gx#stx-eq? '%#quote _hd3472735747_)
                            (if (gx#stx-pair? _tl3472835749_)
                                (let ((_e3472935752_
                                       (gx#stx-e _tl3472835749_)))
                                  (let ((_tl3473135757_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3472935752_)))
                                        (_hd3473035755_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3472935752_))))
                                    (if (gx#stx-null? _tl3473135757_)
                                        (if (gx#stx-null? _tl3472535741_)
                                            (___match4217642177_
                                             _e3470235680_
                                             _hd3470335683_
                                             _tl3470435685_
                                             _e3470535688_
                                             _hd3470635691_
                                             _tl3470735693_
                                             _e3470835696_
                                             _hd3470935699_
                                             _tl3471035701_
                                             _e3471135704_
                                             _hd3471235707_
                                             _tl3471335709_
                                             _e3471435712_
                                             _hd3471535715_
                                             _tl3471635717_
                                             _e3471735720_
                                             _hd3471835723_
                                             _tl3471935725_
                                             _e3472035728_
                                             _hd3472135731_
                                             _tl3472235733_
                                             _e3472335736_
                                             _hd3472435739_
                                             _tl3472535741_
                                             _e3472635744_
                                             _hd3472735747_
                                             _tl3472835749_
                                             _e3472935752_
                                             _hd3473035755_
                                             _tl3473135757_)
                                            (___match4225442255_
                                             _e3470235680_
                                             _hd3470335683_
                                             _tl3470435685_
                                             _e3470535688_
                                             _hd3470635691_
                                             _tl3470735693_
                                             _e3470835696_
                                             _hd3470935699_
                                             _tl3471035701_
                                             _e3471135704_
                                             _hd3471235707_
                                             _tl3471335709_
                                             _e3471435712_
                                             _hd3471535715_
                                             _tl3471635717_
                                             _e3471735720_
                                             _hd3471835723_
                                             _tl3471935725_
                                             _e3472035728_
                                             _hd3472135731_
                                             _tl3472235733_
                                             _e3472335736_
                                             _hd3472435739_
                                             _tl3472535741_
                                             _e3472635744_
                                             _hd3472735747_
                                             _tl3472835749_
                                             _e3472935752_
                                             _hd3473035755_
                                             _tl3473135757_))
                                        (___match4237842379_
                                         _e3470235680_
                                         _hd3470335683_
                                         _tl3470435685_
                                         _e3470535688_
                                         _hd3470635691_
                                         _tl3470735693_
                                         _e3470835696_
                                         _hd3470935699_
                                         _tl3471035701_
                                         _e3471135704_
                                         _hd3471235707_
                                         _tl3471335709_
                                         _e3471435712_
                                         _hd3471535715_
                                         _tl3471635717_
                                         _e3471735720_
                                         _hd3471835723_
                                         _tl3471935725_
                                         _e3472035728_
                                         _hd3472135731_
                                         _tl3472235733_
                                         _e3472335736_
                                         _hd3472435739_
                                         _tl3472535741_))))
                                (___match4237842379_
                                 _e3470235680_
                                 _hd3470335683_
                                 _tl3470435685_
                                 _e3470535688_
                                 _hd3470635691_
                                 _tl3470735693_
                                 _e3470835696_
                                 _hd3470935699_
                                 _tl3471035701_
                                 _e3471135704_
                                 _hd3471235707_
                                 _tl3471335709_
                                 _e3471435712_
                                 _hd3471535715_
                                 _tl3471635717_
                                 _e3471735720_
                                 _hd3471835723_
                                 _tl3471935725_
                                 _e3472035728_
                                 _hd3472135731_
                                 _tl3472235733_
                                 _e3472335736_
                                 _hd3472435739_
                                 _tl3472535741_))
                            (___match4237842379_
                             _e3470235680_
                             _hd3470335683_
                             _tl3470435685_
                             _e3470535688_
                             _hd3470635691_
                             _tl3470735693_
                             _e3470835696_
                             _hd3470935699_
                             _tl3471035701_
                             _e3471135704_
                             _hd3471235707_
                             _tl3471335709_
                             _e3471435712_
                             _hd3471535715_
                             _tl3471635717_
                             _e3471735720_
                             _hd3471835723_
                             _tl3471935725_
                             _e3472035728_
                             _hd3472135731_
                             _tl3472235733_
                             _e3472335736_
                             _hd3472435739_
                             _tl3472535741_))))
                     (___match4209642097_
                      (lambda (_e3465135801_
                               _hd3465235804_
                               _tl3465335806_
                               _e3465435809_
                               _hd3465535812_
                               _tl3465635814_
                               _e3465735817_
                               _hd3465835820_
                               _tl3465935822_
                               _e3466035825_
                               _hd3466135828_
                               _tl3466235830_
                               _e3466335833_
                               _hd3466435836_
                               _tl3466535838_
                               _e3466635841_
                               _hd3466735844_
                               _tl3466835846_
                               _e3466935849_
                               _hd3467035852_
                               _tl3467135854_
                               _e3467235857_
                               _hd3467335860_
                               _tl3467435862_
                               _e3467535865_
                               _hd3467635868_
                               _tl3467735870_
                               _e3467835873_
                               _hd3467935876_
                               _tl3468035878_
                               _e3468135881_
                               _hd3468235884_
                               _tl3468335886_
                               _e3468435889_
                               _hd3468535892_
                               _tl3468635894_
                               _e3468735897_
                               _hd3468835900_
                               _tl3468935902_
                               ___splice4188141882_
                               _target3469035905_
                               _tl3469235907_)
                        (letrec ((_loop3469335910_
                                  (lambda (_hd3469135913_ _args3469735915_)
                                    (if (gx#stx-pair? _hd3469135913_)
                                        (let ((_e3469435918_
                                               (gx#stx-e _hd3469135913_)))
                                          (let ((_lp-tl3469635923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3469435918_)))
                                                (_lp-hd3469535921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3469435918_))))
                                            (_loop3469335910_
                                             _lp-tl3469635923_
                                             (cons _lp-hd3469535921_
                                                   _args3469735915_))))
                                        (let ((_args3469835926_
                                               (reverse _args3469735915_)))
                                          (let ((_L35929_ _args3469835926_)
                                                (_L35930_ _hd3468835900_)
                                                (_L35931_ _hd3467935876_)
                                                (_L35932_ _hd3467035852_)
                                                (_L35933_ _hd3466135828_))
                                            (if (and (gxc#runtime-identifier=?
                                                      _L35933_
                                                      'apply)
                                                     (gxc#runtime-identifier=?
                                                      _L35932_
                                                      'call-method)
                                                     (gx#free-identifier=?
                                                      _L35931_
                                                      _self34581_))
                                                (___kont4187941880_
                                                 _L35929_
                                                 _L35930_
                                                 _L35931_
                                                 _L35932_
                                                 _L35933_)
                                                (___kont4189941900_))))))))
                          (_loop3469335910_ _target3469035905_ '()))))
                     (___match4205442055_
                      (lambda (_e3465135801_
                               _hd3465235804_
                               _tl3465335806_
                               _e3465435809_
                               _hd3465535812_
                               _tl3465635814_
                               _e3465735817_
                               _hd3465835820_
                               _tl3465935822_
                               _e3466035825_
                               _hd3466135828_
                               _tl3466235830_
                               _e3466335833_
                               _hd3466435836_
                               _tl3466535838_
                               _e3466635841_
                               _hd3466735844_
                               _tl3466835846_
                               _e3466935849_
                               _hd3467035852_
                               _tl3467135854_
                               _e3467235857_
                               _hd3467335860_
                               _tl3467435862_
                               _e3467535865_
                               _hd3467635868_
                               _tl3467735870_)
                        (if (gx#stx-eq? '%#ref _hd3467635868_)
                            (if (gx#stx-pair? _tl3467735870_)
                                (let ((_e3467835873_
                                       (gx#stx-e _tl3467735870_)))
                                  (let ((_tl3468035878_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3467835873_)))
                                        (_hd3467935876_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3467835873_))))
                                    (if (gx#stx-null? _tl3468035878_)
                                        (if (gx#stx-pair? _tl3467435862_)
                                            (let ((_e3468135881_
                                                   (gx#stx-e _tl3467435862_)))
                                              (let ((_tl3468335886_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3468135881_)))
                                                    (_hd3468235884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3468135881_))))
                                                (if (gx#stx-pair?
                                                     _hd3468235884_)
                                                    (let ((_e3468435889_
                                                           (gx#stx-e
                                                            _hd3468235884_)))
                                                      (let ((_tl3468635894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3468435889_)))
                    (_hd3468535892_
                     (let () (declare (not safe)) (##car _e3468435889_))))
                (if (gx#identifier? _hd3468535892_)
                    (if (gx#stx-eq? '%#quote _hd3468535892_)
                        (if (gx#stx-pair? _tl3468635894_)
                            (let ((_e3468735897_ (gx#stx-e _tl3468635894_)))
                              (let ((_tl3468935902_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3468735897_)))
                                    (_hd3468835900_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3468735897_))))
                                (if (gx#stx-null? _tl3468935902_)
                                    (if (gx#stx-pair/null? _tl3468335886_)
                                        (let ((___splice4188141882_
                                               (gx#syntax-split-splice
                                                _tl3468335886_
                                                '0)))
                                          (let ((_tl3469235907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4188141882_
                                                    '1)))
                                                (_target3469035905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4188141882_
                                                    '0))))
                                            (if (gx#stx-null? _tl3469235907_)
                                                (___match4209642097_
                                                 _e3465135801_
                                                 _hd3465235804_
                                                 _tl3465335806_
                                                 _e3465435809_
                                                 _hd3465535812_
                                                 _tl3465635814_
                                                 _e3465735817_
                                                 _hd3465835820_
                                                 _tl3465935822_
                                                 _e3466035825_
                                                 _hd3466135828_
                                                 _tl3466235830_
                                                 _e3466335833_
                                                 _hd3466435836_
                                                 _tl3466535838_
                                                 _e3466635841_
                                                 _hd3466735844_
                                                 _tl3466835846_
                                                 _e3466935849_
                                                 _hd3467035852_
                                                 _tl3467135854_
                                                 _e3467235857_
                                                 _hd3467335860_
                                                 _tl3467435862_
                                                 _e3467535865_
                                                 _hd3467635868_
                                                 _tl3467735870_
                                                 _e3467835873_
                                                 _hd3467935876_
                                                 _tl3468035878_
                                                 _e3468135881_
                                                 _hd3468235884_
                                                 _tl3468335886_
                                                 _e3468435889_
                                                 _hd3468535892_
                                                 _tl3468635894_
                                                 _e3468735897_
                                                 _hd3468835900_
                                                 _tl3468935902_
                                                 ___splice4188141882_
                                                 _target3469035905_
                                                 _tl3469235907_)
                                                (___kont4189941900_))))
                                        (___kont4189941900_))
                                    (___kont4189941900_))))
                            (___kont4189941900_))
                        (___kont4189941900_))
                    (___kont4189941900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4189941900_))))
                                            (___match4237842379_
                                             _e3465135801_
                                             _hd3465235804_
                                             _tl3465335806_
                                             _e3465435809_
                                             _hd3465535812_
                                             _tl3465635814_
                                             _e3465735817_
                                             _hd3465835820_
                                             _tl3465935822_
                                             _e3466035825_
                                             _hd3466135828_
                                             _tl3466235830_
                                             _e3466335833_
                                             _hd3466435836_
                                             _tl3466535838_
                                             _e3466635841_
                                             _hd3466735844_
                                             _tl3466835846_
                                             _e3466935849_
                                             _hd3467035852_
                                             _tl3467135854_
                                             _e3467235857_
                                             _hd3467335860_
                                             _tl3467435862_))
                                        (___match4237842379_
                                         _e3465135801_
                                         _hd3465235804_
                                         _tl3465335806_
                                         _e3465435809_
                                         _hd3465535812_
                                         _tl3465635814_
                                         _e3465735817_
                                         _hd3465835820_
                                         _tl3465935822_
                                         _e3466035825_
                                         _hd3466135828_
                                         _tl3466235830_
                                         _e3466335833_
                                         _hd3466435836_
                                         _tl3466535838_
                                         _e3466635841_
                                         _hd3466735844_
                                         _tl3466835846_
                                         _e3466935849_
                                         _hd3467035852_
                                         _tl3467135854_
                                         _e3467235857_
                                         _hd3467335860_
                                         _tl3467435862_))))
                                (___match4237842379_
                                 _e3465135801_
                                 _hd3465235804_
                                 _tl3465335806_
                                 _e3465435809_
                                 _hd3465535812_
                                 _tl3465635814_
                                 _e3465735817_
                                 _hd3465835820_
                                 _tl3465935822_
                                 _e3466035825_
                                 _hd3466135828_
                                 _tl3466235830_
                                 _e3466335833_
                                 _hd3466435836_
                                 _tl3466535838_
                                 _e3466635841_
                                 _hd3466735844_
                                 _tl3466835846_
                                 _e3466935849_
                                 _hd3467035852_
                                 _tl3467135854_
                                 _e3467235857_
                                 _hd3467335860_
                                 _tl3467435862_))
                            (___match4216442165_
                             _e3465135801_
                             _hd3465235804_
                             _tl3465335806_
                             _e3465435809_
                             _hd3465535812_
                             _tl3465635814_
                             _e3465735817_
                             _hd3465835820_
                             _tl3465935822_
                             _e3466035825_
                             _hd3466135828_
                             _tl3466235830_
                             _e3466335833_
                             _hd3466435836_
                             _tl3466535838_
                             _e3466635841_
                             _hd3466735844_
                             _tl3466835846_
                             _e3466935849_
                             _hd3467035852_
                             _tl3467135854_
                             _e3467235857_
                             _hd3467335860_
                             _tl3467435862_
                             _e3467535865_
                             _hd3467635868_
                             _tl3467735870_))))
                     (___match4198641987_
                      (lambda (_e3460735993_
                               _hd3460835996_
                               _tl3460935998_
                               _e3461036001_
                               _hd3461136004_
                               _tl3461236006_
                               _e3461336009_
                               _hd3461436012_
                               _tl3461536014_
                               _e3461636017_
                               _hd3461736020_
                               _tl3461836022_
                               _e3461936025_
                               _hd3462036028_
                               _tl3462136030_
                               _e3462236033_
                               _hd3462336036_
                               _tl3462436038_
                               _e3462536041_
                               _hd3462636044_
                               _tl3462736046_
                               _e3462836049_
                               _hd3462936052_
                               _tl3463036054_
                               _e3463136057_
                               _hd3463236060_
                               _tl3463336062_
                               _e3463436065_
                               _hd3463536068_
                               _tl3463636070_
                               ___splice4187741878_
                               _target3463736073_
                               _tl3463936075_)
                        (letrec ((_loop3464036078_
                                  (lambda (_hd3463836081_ _args3464436083_)
                                    (if (gx#stx-pair? _hd3463836081_)
                                        (let ((_e3464136086_
                                               (gx#stx-e _hd3463836081_)))
                                          (let ((_lp-tl3464336091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3464136086_)))
                                                (_lp-hd3464236089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3464136086_))))
                                            (_loop3464036078_
                                             _lp-tl3464336091_
                                             (cons _lp-hd3464236089_
                                                   _args3464436083_))))
                                        (let ((_args3464536094_
                                               (reverse _args3464436083_)))
                                          (let ((_L36097_ _args3464536094_)
                                                (_L36098_ _hd3463536068_)
                                                (_L36099_ _hd3462636044_)
                                                (_L36100_ _hd3461736020_))
                                            (if (and (gxc#runtime-identifier=?
                                                      _L36100_
                                                      'call-method)
                                                     (gx#free-identifier=?
                                                      _L36099_
                                                      _self34581_))
                                                (___kont4187541876_
                                                 _L36097_
                                                 _L36098_
                                                 _L36099_
                                                 _L36100_)
                                                (___match4217442175_
                                                 _e3460735993_
                                                 _hd3460835996_
                                                 _tl3460935998_
                                                 _e3461036001_
                                                 _hd3461136004_
                                                 _tl3461236006_
                                                 _e3461336009_
                                                 _hd3461436012_
                                                 _tl3461536014_
                                                 _e3461636017_
                                                 _hd3461736020_
                                                 _tl3461836022_
                                                 _e3461936025_
                                                 _hd3462036028_
                                                 _tl3462136030_
                                                 _e3462236033_
                                                 _hd3462336036_
                                                 _tl3462436038_
                                                 _e3462536041_
                                                 _hd3462636044_
                                                 _tl3462736046_
                                                 _e3462836049_
                                                 _hd3462936052_
                                                 _tl3463036054_
                                                 _e3463136057_
                                                 _hd3463236060_
                                                 _tl3463336062_
                                                 _e3463436065_
                                                 _hd3463536068_
                                                 _tl3463636070_))))))))
                          (_loop3464036078_ _target3463736073_ '())))))
                (if (gx#stx-pair? ___stx4187341874_)
                    (let ((_e3460735993_ (gx#stx-e ___stx4187341874_)))
                      (let ((_tl3460935998_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3460735993_)))
                            (_hd3460835996_
                             (let ()
                               (declare (not safe))
                               (##car _e3460735993_))))
                        (if (gx#stx-pair? _tl3460935998_)
                            (let ((_e3461036001_ (gx#stx-e _tl3460935998_)))
                              (let ((_tl3461236006_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3461036001_)))
                                    (_hd3461136004_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3461036001_))))
                                (if (gx#stx-pair? _hd3461136004_)
                                    (let ((_e3461336009_
                                           (gx#stx-e _hd3461136004_)))
                                      (let ((_tl3461536014_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3461336009_)))
                                            (_hd3461436012_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3461336009_))))
                                        (if (gx#identifier? _hd3461436012_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3461436012_)
                                                (if (gx#stx-pair?
                                                     _tl3461536014_)
                                                    (let ((_e3461636017_
                                                           (gx#stx-e
                                                            _tl3461536014_)))
                                                      (let ((_tl3461836022_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3461636017_)))
                    (_hd3461736020_
                     (let () (declare (not safe)) (##car _e3461636017_))))
                (if (gx#stx-null? _tl3461836022_)
                    (if (gx#stx-pair? _tl3461236006_)
                        (let ((_e3461936025_ (gx#stx-e _tl3461236006_)))
                          (let ((_tl3462136030_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3461936025_)))
                                (_hd3462036028_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3461936025_))))
                            (if (gx#stx-pair? _hd3462036028_)
                                (let ((_e3462236033_
                                       (gx#stx-e _hd3462036028_)))
                                  (let ((_tl3462436038_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3462236033_)))
                                        (_hd3462336036_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3462236033_))))
                                    (if (gx#identifier? _hd3462336036_)
                                        (if (gx#stx-eq? '%#ref _hd3462336036_)
                                            (if (gx#stx-pair? _tl3462436038_)
                                                (let ((_e3462536041_
                                                       (gx#stx-e
                                                        _tl3462436038_)))
                                                  (let ((_tl3462736046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3462536041_)))
                                                        (_hd3462636044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3462536041_))))
                                                    (if (gx#stx-null?
                                                         _tl3462736046_)
                                                        (if (gx#stx-pair?
                                                             _tl3462136030_)
                                                            (let ((_e3462836049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3462136030_)))
                      (let ((_tl3463036054_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3462836049_)))
                            (_hd3462936052_
                             (let ()
                               (declare (not safe))
                               (##car _e3462836049_))))
                        (if (gx#stx-pair? _hd3462936052_)
                            (let ((_e3463136057_ (gx#stx-e _hd3462936052_)))
                              (let ((_tl3463336062_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3463136057_)))
                                    (_hd3463236060_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3463136057_))))
                                (if (gx#identifier? _hd3463236060_)
                                    (if (gx#stx-eq? '%#quote _hd3463236060_)
                                        (if (gx#stx-pair? _tl3463336062_)
                                            (let ((_e3463436065_
                                                   (gx#stx-e _tl3463336062_)))
                                              (let ((_tl3463636070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3463436065_)))
                                                    (_hd3463536068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3463436065_))))
                                                (if (gx#stx-null?
                                                     _tl3463636070_)
                                                    (if (gx#stx-pair/null?
                                                         _tl3463036054_)
                                                        (let ((___splice4187741878_
                                                               (gx#syntax-split-splice
                                                                _tl3463036054_
                                                                '0)))
                                                          (let ((_tl3463936075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4187741878_ '1)))
                        (_target3463736073_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4187741878_ '0))))
                    (if (gx#stx-null? _tl3463936075_)
                        (___match4198641987_
                         _e3460735993_
                         _hd3460835996_
                         _tl3460935998_
                         _e3461036001_
                         _hd3461136004_
                         _tl3461236006_
                         _e3461336009_
                         _hd3461436012_
                         _tl3461536014_
                         _e3461636017_
                         _hd3461736020_
                         _tl3461836022_
                         _e3461936025_
                         _hd3462036028_
                         _tl3462136030_
                         _e3462236033_
                         _hd3462336036_
                         _tl3462436038_
                         _e3462536041_
                         _hd3462636044_
                         _tl3462736046_
                         _e3462836049_
                         _hd3462936052_
                         _tl3463036054_
                         _e3463136057_
                         _hd3463236060_
                         _tl3463336062_
                         _e3463436065_
                         _hd3463536068_
                         _tl3463636070_
                         ___splice4187741878_
                         _target3463736073_
                         _tl3463936075_)
                        (___match4217442175_
                         _e3460735993_
                         _hd3460835996_
                         _tl3460935998_
                         _e3461036001_
                         _hd3461136004_
                         _tl3461236006_
                         _e3461336009_
                         _hd3461436012_
                         _tl3461536014_
                         _e3461636017_
                         _hd3461736020_
                         _tl3461836022_
                         _e3461936025_
                         _hd3462036028_
                         _tl3462136030_
                         _e3462236033_
                         _hd3462336036_
                         _tl3462436038_
                         _e3462536041_
                         _hd3462636044_
                         _tl3462736046_
                         _e3462836049_
                         _hd3462936052_
                         _tl3463036054_
                         _e3463136057_
                         _hd3463236060_
                         _tl3463336062_
                         _e3463436065_
                         _hd3463536068_
                         _tl3463636070_))))
                (___match4217442175_
                 _e3460735993_
                 _hd3460835996_
                 _tl3460935998_
                 _e3461036001_
                 _hd3461136004_
                 _tl3461236006_
                 _e3461336009_
                 _hd3461436012_
                 _tl3461536014_
                 _e3461636017_
                 _hd3461736020_
                 _tl3461836022_
                 _e3461936025_
                 _hd3462036028_
                 _tl3462136030_
                 _e3462236033_
                 _hd3462336036_
                 _tl3462436038_
                 _e3462536041_
                 _hd3462636044_
                 _tl3462736046_
                 _e3462836049_
                 _hd3462936052_
                 _tl3463036054_
                 _e3463136057_
                 _hd3463236060_
                 _tl3463336062_
                 _e3463436065_
                 _hd3463536068_
                 _tl3463636070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4237842379_
                                                     _e3460735993_
                                                     _hd3460835996_
                                                     _tl3460935998_
                                                     _e3461036001_
                                                     _hd3461136004_
                                                     _tl3461236006_
                                                     _e3461336009_
                                                     _hd3461436012_
                                                     _tl3461536014_
                                                     _e3461636017_
                                                     _hd3461736020_
                                                     _tl3461836022_
                                                     _e3461936025_
                                                     _hd3462036028_
                                                     _tl3462136030_
                                                     _e3462236033_
                                                     _hd3462336036_
                                                     _tl3462436038_
                                                     _e3462536041_
                                                     _hd3462636044_
                                                     _tl3462736046_
                                                     _e3462836049_
                                                     _hd3462936052_
                                                     _tl3463036054_))))
                                            (___match4237842379_
                                             _e3460735993_
                                             _hd3460835996_
                                             _tl3460935998_
                                             _e3461036001_
                                             _hd3461136004_
                                             _tl3461236006_
                                             _e3461336009_
                                             _hd3461436012_
                                             _tl3461536014_
                                             _e3461636017_
                                             _hd3461736020_
                                             _tl3461836022_
                                             _e3461936025_
                                             _hd3462036028_
                                             _tl3462136030_
                                             _e3462236033_
                                             _hd3462336036_
                                             _tl3462436038_
                                             _e3462536041_
                                             _hd3462636044_
                                             _tl3462736046_
                                             _e3462836049_
                                             _hd3462936052_
                                             _tl3463036054_))
                                        (___match4205442055_
                                         _e3460735993_
                                         _hd3460835996_
                                         _tl3460935998_
                                         _e3461036001_
                                         _hd3461136004_
                                         _tl3461236006_
                                         _e3461336009_
                                         _hd3461436012_
                                         _tl3461536014_
                                         _e3461636017_
                                         _hd3461736020_
                                         _tl3461836022_
                                         _e3461936025_
                                         _hd3462036028_
                                         _tl3462136030_
                                         _e3462236033_
                                         _hd3462336036_
                                         _tl3462436038_
                                         _e3462536041_
                                         _hd3462636044_
                                         _tl3462736046_
                                         _e3462836049_
                                         _hd3462936052_
                                         _tl3463036054_
                                         _e3463136057_
                                         _hd3463236060_
                                         _tl3463336062_))
                                    (___match4237842379_
                                     _e3460735993_
                                     _hd3460835996_
                                     _tl3460935998_
                                     _e3461036001_
                                     _hd3461136004_
                                     _tl3461236006_
                                     _e3461336009_
                                     _hd3461436012_
                                     _tl3461536014_
                                     _e3461636017_
                                     _hd3461736020_
                                     _tl3461836022_
                                     _e3461936025_
                                     _hd3462036028_
                                     _tl3462136030_
                                     _e3462236033_
                                     _hd3462336036_
                                     _tl3462436038_
                                     _e3462536041_
                                     _hd3462636044_
                                     _tl3462736046_
                                     _e3462836049_
                                     _hd3462936052_
                                     _tl3463036054_))))
                            (___match4237842379_
                             _e3460735993_
                             _hd3460835996_
                             _tl3460935998_
                             _e3461036001_
                             _hd3461136004_
                             _tl3461236006_
                             _e3461336009_
                             _hd3461436012_
                             _tl3461536014_
                             _e3461636017_
                             _hd3461736020_
                             _tl3461836022_
                             _e3461936025_
                             _hd3462036028_
                             _tl3462136030_
                             _e3462236033_
                             _hd3462336036_
                             _tl3462436038_
                             _e3462536041_
                             _hd3462636044_
                             _tl3462736046_
                             _e3462836049_
                             _hd3462936052_
                             _tl3463036054_))))
                    (___match4231642317_
                     _e3460735993_
                     _hd3460835996_
                     _tl3460935998_
                     _e3461036001_
                     _hd3461136004_
                     _tl3461236006_
                     _e3461336009_
                     _hd3461436012_
                     _tl3461536014_
                     _e3461636017_
                     _hd3461736020_
                     _tl3461836022_
                     _e3461936025_
                     _hd3462036028_
                     _tl3462136030_
                     _e3462236033_
                     _hd3462336036_
                     _tl3462436038_
                     _e3462536041_
                     _hd3462636044_
                     _tl3462736046_))
                (___kont4189941900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4189941900_))
                                            (___kont4189941900_))
                                        (___kont4189941900_))))
                                (___kont4189941900_))))
                        (___kont4189941900_))
                    (___kont4189941900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4189941900_))
                                                (___kont4189941900_))
                                            (___kont4189941900_))))
                                    (___kont4189941900_))))
                            (___kont4189941900_))))
                    (___kont4189941900_))))))))))
