(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1695117619)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl40989_ (make-table 'test: eq?)))
           (hash-copy! _tbl40989_ (force gxc#&identity))
           (table-set! _tbl40989_ '%#begin gxc#xform-begin%)
           (table-set! _tbl40989_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl40989_ '%#module gxc#xform-module%)
           (table-set!
            _tbl40989_
            '%#define-values
            gxc#generate-method-specializers-define-values%)
           _tbl40989_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx40982_ . _args40984_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx40982_ _args40984_))
         gxc#current-compile-methods
         (force gxc#&generate-method-specializers))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl40979_ (make-table 'test: eq?)))
           (hash-copy! _tbl40979_ (force gxc#&void))
           (table-set! _tbl40979_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl40979_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl40979_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl40979_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl40979_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl40979_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl40979_
            '%#letrec-values*
            gxc#collect-body-let-values%)
           (table-set! _tbl40979_ '%#call gxc#collect-object-refs-call%)
           (table-set! _tbl40979_ '%#if gxc#collect-operands)
           (table-set! _tbl40979_ '%#set! gxc#collect-body-setq%)
           (table-set! _tbl40979_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl40979_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl40979_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl40979_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl40979_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl40979_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl40979_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx40972_ . _args40974_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx40972_ _args40974_))
         gxc#current-compile-methods
         (force gxc#&collect-object-refs))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl40969_ (make-table 'test: eq?)))
           (hash-copy! _tbl40969_ (force gxc#&basic-xform-expression))
           (table-set! _tbl40969_ '%#begin gxc#xform-begin%)
           (table-set! _tbl40969_ '%#call gxc#subst-object-refs-call%)
           _tbl40969_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx40962_ . _args40964_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx40962_ _args40964_))
         gxc#current-compile-methods
         (force gxc#&subst-object-refs))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx37632_)
        (letrec ((_generate-method-bind37634_
                  (lambda (_$t40956_ _id40957_ _$id40958_)
                    (let ((_$tmp40960_ (make-symbol (gensym '__tmp))))
                      (cons (cons _$id40958_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _$tmp40960_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'direct-method-ref '()))
                                (cons (cons '%#ref (cons _$t40956_ '()))
                                      (cons (cons '%#quote
                                                  (cons _id40957_ '()))
                                            '()))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _$tmp40960_ '()))
                    (cons (cons '%#ref (cons _$tmp40960_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _id40957_
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
                 (_generate-slot-bind37635_
                  (lambda (_$t40950_ _id40951_ _$id40952_)
                    (let ((_$tmp40954_ (make-symbol (gensym '__tmp))))
                      (cons (cons _$id40952_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _$tmp40954_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref (cons _$t40950_ '()))
                                          (cons (cons '%#quote
                                                      (cons _id40951_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _$tmp40954_ '()))
                        (cons (cons '%#call
                                    (cons (cons '%#ref (cons '##fx+ '()))
                                          (cons (cons '%#ref
                                                      (cons _$tmp40954_ '()))
                                                (cons (cons '%#quote
                                                            (cons '1 '()))
                                                      '()))))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _id40951_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_generate-class-check-bind37636_
                  (lambda (_$t40946_ _class-type40947_ _$class-type40948_)
                    (cons (cons _$class-type40948_ '())
                          (cons (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'class-subtype? '()))
                                            (cons (cons '%#ref
                                                        (cons _class-type40947_
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _$t40946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
                 (_generate-struct-check-bind37637_
                  (lambda (_$t40942_ _class-type40943_ _$class-type40944_)
                    (cons (cons _$class-type40944_ '())
                          (cons (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'struct-subtype? '()))
                                            (cons (cons '%#ref
                                                        (cons _class-type40943_
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _$t40942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
                 (_generate-specializer-impl37638_
                  (lambda (_$t40891_
                           _methods-bind40892_
                           _slots-bind40893_
                           _class-check-bind40894_
                           _struct-check-bind40895_
                           _specializer-impl40896_
                           _lifted-specializer-id40897_
                           _unchecked-specializer-impl40898_)
                    (gxc#xform-wrap-source
                     (cons '%#lambda
                           (cons (cons _$t40891_ '())
                                 (cons (cons '%#let-values
                                             (cons (foldr1 cons
                                                           (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr1 cons
                                   _struct-check-bind40895_
                                   _class-check-bind40894_)
                           _slots-bind40893_)
                   _methods-bind40892_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (if (or _lifted-specializer-id40897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _unchecked-specializer-impl40898_)
                     (let ((_$specializer40903_
                            (make-symbol (gensym '__specializer))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _$specializer40903_ '())
                                               (cons _specializer-impl40896_
                                                     '()))
                                         '())
                                   (cons (let _recur40905_ ((_rest40907_
                                                             (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _struct-check-bind40895_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let* ((_rest4090840916_
                                                   _rest40907_)
                                                  (_else4091040924_
                                                   (lambda ()
                                                     (if _lifted-specializer-id40897_
                                                         (cons '%#ref
                                                               (cons _lifted-specializer-id40897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _unchecked-specializer-impl40898_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K4091240930_
                                                   (lambda (_rest40927_
                                                            _checkq40928_)
                                                     (cons '%#if
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _checkq40928_ '()))
                         (cons (_recur40905_ _rest40927_)
                               (cons (cons '%#ref
                                           (cons _$specializer40903_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _rest4090840916_))
                                                 (let ((_hd4091340933_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _rest4090840916_)))
                                                       (_tl4091440935_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _rest4090840916_))))
                                                   (let* ((_checkq40938_
                                                           _hd4091340933_)
                                                          (_rest40940_
                                                           _tl4091440935_))
                                                     (_K4091240930_
                                                      _rest40940_
                                                      _checkq40938_)))
                                                 (_else4091040924_))))
                                         '()))))
                     _specializer-impl40896_)
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     _stx37632_)))
                 (_generate-specializer-def37639_
                  (lambda (_id40885_
                           _specializer-id40886_
                           _specializer-impl40887_
                           _lifted-specializer-id40888_
                           _unchecked-specializer-impl40889_)
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons _stx37632_
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _specializer-id40886_
                                                          '())
                                                    (cons _specializer-impl40887_
                                                          '())))
                                        _stx37632_)
                                       (foldr1 cons
                                               (cons (gxc#xform-wrap-source
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'bind-specializer! '()))
                          (cons (cons '%#ref (cons _id40885_ '()))
                                (cons (cons '%#ref
                                            (cons _specializer-id40886_ '()))
                                      '()))))
              _stx37632_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (if _lifted-specializer-id40888_
                                                   (cons (gxc#xform-wrap-source
                                                          (cons '%#define-values
                                                                (cons (cons _lifted-specializer-id40888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _unchecked-specializer-impl40889_ '())))
                  _stx37632_)
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                     _stx37632_))))
          (let* ((___stx4107841079_ _stx37632_)
                 (_g3764237662_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx4107841079_))))
            (let ((___kont4108041081_
                   (lambda (_L37706_ _L37707_)
                     (let ((_method-calls37726_ (make-table 'test: eq?))
                           (_slot-refs37727_ (make-table 'test: eq?))
                           (_class-type-check37728_ (make-table 'test: eq?))
                           (_struct-type-check37729_ (make-table 'test: eq?))
                           (_struct-type-assert37730_ (make-table 'test: eq?))
                           (_empty37731_ (make-table 'test: eq?)))
                       (letrec ((_no-specializer?37733_
                                 (lambda ()
                                   (if (fxzero? (table-length
                                                 _method-calls37726_))
                                       (if (fxzero? (table-length
                                                     _slot-refs37727_))
                                           (if (fxzero? (table-length
                                                         _class-type-check37728_))
                                               (if (fxzero? (table-length
                                                             _struct-type-check37729_))
                                                   (fxzero? (table-length
                                                             _struct-type-assert37730_))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?37734_
                                 (lambda ()
                                   (let ((_$e40878_
                                          (not (fxzero? (table-length
                                                         _struct-type-check37729_)))))
                                     (if _$e40878_
                                         _$e40878_
                                         (not (fxzero? (table-length
                                                        _struct-type-assert37730_)))))))
                                (_lift-unchecked-specializer?37735_
                                 (lambda ()
                                   (if (fxzero? (table-length
                                                 _method-calls37726_))
                                       (if (fxzero? (table-length
                                                     _slot-refs37727_))
                                           (fxzero? (table-length
                                                     _class-type-check37728_))
                                           '#f)
                                       '#f))))
                         (if (gxc#lambda-expr? _L37706_)
                             (let* ((___stx4099240993_ _L37706_)
                                    (_g3824838266_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4099240993_))))
                               (let ((___kont4099440995_
                                      (lambda (_L38302_ _L38303_ _L38304_)
                                        (for-each
                                         (lambda (_g3831938321_)
                                           (gxc#apply-collect-object-refs
                                            _g3831938321_
                                            _L38304_
                                            _method-calls37726_
                                            _slot-refs37727_
                                            _class-type-check37728_
                                            _struct-type-check37729_
                                            _struct-type-assert37730_))
                                         _L38302_)
                                        (if (_no-specializer?37733_)
                                            _stx37632_
                                            (let* ((_specializer-id38330_
                                                    (let* ((_id38324_
                                                            (make-symbol
                                                             (gx#stx-e
                                                              _L37707_)
                                                             '"::specialize"))
                                                           (_specializer-id38327_
                                                            (gx#core-quote-syntax__1
                                                             _id38324_
                                                             (gx#stx-source
                                                              _stx37632_))))
                                                      (gx#core-bind-runtime!__0
                                                       _specializer-id38327_)
                                                      _specializer-id38327_))
                                                   (_lifted-specializer-id38337_
                                                    (if (_lift-unchecked-specializer?37735_)
                                                        (let* ((_id38332_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L37707_)
                         '"::specialize::unchecked"))
                       (_lifted-specializer-id38334_
                        (gx#core-quote-syntax__1
                         _id38332_
                         (gx#stx-source _stx37632_))))
                  (gx#core-bind-runtime!__0 _lifted-specializer-id38334_)
                  _lifted-specializer-id38334_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t38339_
                                                    (make-symbol
                                                     (gensym '__t)))
                                                   (_methods38341_
                                                    (hash-keys
                                                     _method-calls37726_))
                                                   (_$methods38345_
                                                    (map (lambda (_id38343_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id38343_)))
                                                         _methods38341_))
                                                   (_g42593_
                                                    (for-each
                                                     (lambda (_g3834638349_
                                                              _g3834738351_)
                                                       (table-set!
                                                        _method-calls37726_
                                                        _g3834638349_
                                                        _g3834738351_))
                                                     _methods38341_
                                                     _$methods38345_))
                                                   (_methods-bind38362_
                                                    (map (lambda (_g3835438357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3835538359_)
                   (_generate-method-bind37634_
                    _$t38339_
                    _g3835438357_
                    _g3835538359_))
                 _methods38341_
                 _$methods38345_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots38364_
                                                    (hash-keys
                                                     _slot-refs37727_))
                                                   (_$slots38368_
                                                    (map (lambda (_id38366_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id38366_)))
                                                         _slots38364_))
                                                   (_g42594_
                                                    (for-each
                                                     (lambda (_g3836938372_
                                                              _g3837038374_)
                                                       (table-set!
                                                        _slot-refs37727_
                                                        _g3836938372_
                                                        _g3837038374_))
                                                     _slots38364_
                                                     _$slots38368_))
                                                   (_slots-bind38385_
                                                    (map (lambda (_g3837738380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3837838382_)
                   (_generate-slot-bind37635_
                    _$t38339_
                    _g3837738380_
                    _g3837838382_))
                 _slots38364_
                 _$slots38368_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check38387_
                                                    (hash-keys
                                                     _class-type-check37728_))
                                                   (_$class-check38390_
                                                    (map (lambda (_g42595_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _class-check38387_))
                                                   (_g42596_
                                                    (for-each
                                                     (lambda (_g3839138394_
                                                              _g3839238396_)
                                                       (table-set!
                                                        _class-type-check37728_
                                                        _g3839138394_
                                                        _g3839238396_))
                                                     _class-check38387_
                                                     _$class-check38390_))
                                                   (_class-check-bind38407_
                                                    (map (lambda (_g3839938402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3840038404_)
                   (_generate-class-check-bind37636_
                    _$t38339_
                    _g3839938402_
                    _g3840038404_))
                 _class-check38387_
                 _$class-check38390_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all38409_
                                                    (hash-merge
                                                     _struct-type-check37729_
                                                     _struct-type-assert37730_))
                                                   (_struct-check38411_
                                                    (hash-keys
                                                     _struct-check-all38409_))
                                                   (_$struct-check38414_
                                                    (map (lambda (_g42597_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _struct-check38411_))
                                                   (_g42598_
                                                    (for-each
                                                     (lambda (_g3841538418_
                                                              _g3841638420_)
                                                       (table-set!
                                                        _struct-check-all38409_
                                                        _g3841538418_
                                                        _g3841638420_))
                                                     _struct-check38411_
                                                     _$struct-check38414_))
                                                   (_struct-check-bind38431_
                                                    (map (lambda (_g3842338426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3842438428_)
                   (_generate-struct-check-bind37637_
                    _$t38339_
                    _g3842338426_
                    _g3842438428_))
                 _struct-check38411_
                 _$struct-check38414_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl38442_
                                                    (lambda (_struct-type-check138433_
                                                             _struct-type-check238434_)
                                                      (let ((_specializer-body38440_
                                                             (map (lambda (_g3843538437_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-subst-object-refs
                             _g3843538437_
                             _L38304_
                             _$t38339_
                             _method-calls37726_
                             _slot-refs37727_
                             _class-type-check37728_
                             _struct-type-check138433_
                             _struct-type-check238434_))
                          _L38302_)))
                (gxc#xform-wrap-source
                 (cons '%#lambda
                       (cons (cons _L38304_ _L38303_) _specializer-body38440_))
                 _stx37632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl38444_
                                                    (_make-specializer-impl38442_
                                                     _struct-check-all38409_
                                                     _empty37731_))
                                                   (_unchecked-specializer-impl38446_
                                                    (if (_unchecked-specializer?37734_)
                                                        (_make-specializer-impl38442_
                                                         _empty37731_
                                                         _struct-check-all38409_)
                                                        '#f))
                                                   (_specializer-impl38448_
                                                    (_generate-specializer-impl37638_
                                                     _$t38339_
                                                     _methods-bind38362_
                                                     _slots-bind38385_
                                                     _class-check-bind38407_
                                                     _struct-check-bind38431_
                                                     _specializer-impl38444_
                                                     _lifted-specializer-id38337_
                                                     _unchecked-specializer-impl38446_)))
                                              (gxc#verbose
                                               '"generate method specializer "
                                               (gx#stx-e _L37707_)
                                               '" => "
                                               (gx#stx-e
                                                _specializer-id38330_))
                                              (_generate-specializer-def37639_
                                               _L37707_
                                               _specializer-id38330_
                                               _specializer-impl38448_
                                               _lifted-specializer-id38337_
                                               _unchecked-specializer-impl38446_)))))
                                     (___kont4099640997_
                                      (lambda () _stx37632_)))
                                 (if (gx#stx-pair? ___stx4099240993_)
                                     (let ((_e3825338278_
                                            (gx#stx-e ___stx4099240993_)))
                                       (let ((_tl3825538283_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3825338278_)))
                                             (_hd3825438281_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3825338278_))))
                                         (if (gx#stx-pair? _tl3825538283_)
                                             (let ((_e3825638286_
                                                    (gx#stx-e _tl3825538283_)))
                                               (let ((_tl3825838291_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3825638286_)))
                                                     (_hd3825738289_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3825638286_))))
                                                 (if (gx#stx-pair?
                                                      _hd3825738289_)
                                                     (let ((_e3825938294_
                                                            (gx#stx-e
                                                             _hd3825738289_)))
                                                       (let ((_tl3826138299_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3825938294_)))
                     (_hd3826038297_
                      (let () (declare (not safe)) (##car _e3825938294_))))
                 (___kont4099440995_
                  _tl3825838291_
                  _tl3826138299_
                  _hd3826038297_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4099640997_))))
                                             (___kont4099640997_))))
                                     (___kont4099640997_))))
                             (if (gxc#case-lambda-expr? _L37706_)
                                 (let* ((_g3845438473_
                                         (lambda (_g3845538470_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3845538470_)))
                                        (_g3845338824_
                                         (lambda (_g3845538476_)
                                           (if (gx#stx-pair? _g3845538476_)
                                               (let ((_e3845738478_
                                                      (gx#stx-e
                                                       _g3845538476_)))
                                                 (let ((_hd3845838481_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3845738478_)))
                                                       (_tl3845938483_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3845738478_))))
                                                   (if (gx#stx-pair/null?
                                                        _tl3845938483_)
                                                       (let ((_g42599_
                                                              (gx#syntax-split-splice
                                                               _tl3845938483_
                                                               '0)))
                                                         (begin
                                                           (let ((_g42600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g42599_)
                                (##vector-length _g42599_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g42600_ 2)))
                         (error "Context expects 2 values" _g42600_)))
                   (let ((_target3846038486_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42599_ 0)))
                         (_tl3846238488_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42599_ 1))))
                     (if (gx#stx-null? _tl3846238488_)
                         (letrec ((_loop3846338491_
                                   (lambda (_hd3846138494_ _clause3846738496_)
                                     (if (gx#stx-pair? _hd3846138494_)
                                         (let ((_e3846438499_
                                                (gx#stx-e _hd3846138494_)))
                                           (let ((_lp-hd3846538502_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e3846438499_)))
                                                 (_lp-tl3846638504_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e3846438499_))))
                                             (_loop3846338491_
                                              _lp-tl3846638504_
                                              (cons _lp-hd3846538502_
                                                    _clause3846738496_))))
                                         (let ((_clause3846838507_
                                                (reverse _clause3846738496_)))
                                           ((lambda (_L38510_)
                                              (for-each
                                               (lambda (_clause38523_)
                                                 (let* ((___stx4101841019_
                                                         _clause38523_)
                                                        (_g3852638541_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            ___stx4101841019_))))
                                                   (let ((___kont4102041021_
                                                          (lambda (_L38569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L38570_
                           _L38571_)
                    (for-each
                     (lambda (_g3858638588_)
                       (gxc#apply-collect-object-refs
                        _g3858638588_
                        _L38571_
                        _method-calls37726_
                        _slot-refs37727_
                        _class-type-check37728_
                        _struct-type-check37729_
                        _struct-type-assert37730_))
                     _L38569_)))
                 (___kont4102241023_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair?
                                                          ___stx4101841019_)
                                                         (let ((_e3853138553_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___stx4101841019_)))
                   (let ((_tl3853338558_
                          (let () (declare (not safe)) (##cdr _e3853138553_)))
                         (_hd3853238556_
                          (let () (declare (not safe)) (##car _e3853138553_))))
                     (if (gx#stx-pair? _hd3853238556_)
                         (let ((_e3853438561_ (gx#stx-e _hd3853238556_)))
                           (let ((_tl3853638566_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3853438561_)))
                                 (_hd3853538564_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3853438561_))))
                             (___kont4102041021_
                              _tl3853338558_
                              _tl3853638566_
                              _hd3853538564_)))
                         (___kont4102241023_))))
                 (___kont4102241023_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (foldr1 (lambda (_g3859338596_
                                                                _g3859438598_)
                                                         (cons _g3859338596_
                                                               _g3859438598_))
                                                       '()
                                                       _L38510_))
                                              (if (_no-specializer?37733_)
                                                  _stx37632_
                                                  (let* ((_specializer-id38607_
                                                          (let* ((_id38601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol (gx#stx-e _L37707_) '"::specialize"))
                         (_specializer-id38604_
                          (gx#core-quote-syntax__1
                           _id38601_
                           (gx#stx-source _stx37632_))))
                    (gx#core-bind-runtime!__0 _specializer-id38604_)
                    _specializer-id38604_))
                 (_lifted-specializer-id38614_
                  (if (_lift-unchecked-specializer?37735_)
                      (let* ((_id38609_
                              (make-symbol
                               (gx#stx-e _L37707_)
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id38611_
                              (gx#core-quote-syntax__1
                               _id38609_
                               (gx#stx-source _stx37632_))))
                        (gx#core-bind-runtime!__0 _lifted-specializer-id38611_)
                        _lifted-specializer-id38611_)
                      '#f))
                 (_$t38616_ (make-symbol (gensym '__t)))
                 (_methods38618_ (hash-keys _method-calls37726_))
                 (_$methods38622_
                  (map (lambda (_id38620_)
                         (make-symbol '"__" (gensym _id38620_)))
                       _methods38618_))
                 (_g42601_
                  (for-each
                   (lambda (_g3862338626_ _g3862438628_)
                     (table-set!
                      _method-calls37726_
                      _g3862338626_
                      _g3862438628_))
                   _methods38618_
                   _$methods38622_))
                 (_methods-bind38639_
                  (map (lambda (_g3863138634_ _g3863238636_)
                         (_generate-method-bind37634_
                          _$t38616_
                          _g3863138634_
                          _g3863238636_))
                       _methods38618_
                       _$methods38622_))
                 (_slots38641_ (hash-keys _slot-refs37727_))
                 (_$slots38645_
                  (map (lambda (_id38643_)
                         (make-symbol '"__" (gensym _id38643_)))
                       _slots38641_))
                 (_g42602_
                  (for-each
                   (lambda (_g3864638649_ _g3864738651_)
                     (table-set! _slot-refs37727_ _g3864638649_ _g3864738651_))
                   _slots38641_
                   _$slots38645_))
                 (_slots-bind38662_
                  (map (lambda (_g3865438657_ _g3865538659_)
                         (_generate-slot-bind37635_
                          _$t38616_
                          _g3865438657_
                          _g3865538659_))
                       _slots38641_
                       _$slots38645_))
                 (_class-check38664_ (hash-keys _class-type-check37728_))
                 (_$class-check38667_
                  (map (lambda (_g42603_) (make-symbol (gensym '__class)))
                       _class-check38664_))
                 (_g42604_
                  (for-each
                   (lambda (_g3866838671_ _g3866938673_)
                     (table-set!
                      _class-type-check37728_
                      _g3866838671_
                      _g3866938673_))
                   _class-check38664_
                   _$class-check38667_))
                 (_class-check-bind38684_
                  (map (lambda (_g3867638679_ _g3867738681_)
                         (_generate-class-check-bind37636_
                          _$t38616_
                          _g3867638679_
                          _g3867738681_))
                       _class-check38664_
                       _$class-check38667_))
                 (_struct-check-all38686_
                  (hash-merge
                   _struct-type-check37729_
                   _struct-type-assert37730_))
                 (_struct-check38688_ (hash-keys _struct-check-all38686_))
                 (_$struct-check38691_
                  (map (lambda (_g42605_) (make-symbol (gensym '__class)))
                       _struct-check38688_))
                 (_g42606_
                  (for-each
                   (lambda (_g3869238695_ _g3869338697_)
                     (table-set!
                      _struct-check-all38686_
                      _g3869238695_
                      _g3869338697_))
                   _struct-check38688_
                   _$struct-check38691_))
                 (_struct-check-bind38708_
                  (map (lambda (_g3870038703_ _g3870138705_)
                         (_generate-struct-check-bind37637_
                          _$t38616_
                          _g3870038703_
                          _g3870138705_))
                       _struct-check38688_
                       _$struct-check38691_))
                 (_make-specializer-impl38815_
                  (lambda (_struct-type-check138710_ _struct-type-check238711_)
                    (let ((_specializer-clauses38813_
                           (map (lambda (_clause38713_)
                                  (let* ((___stx4103841039_ _clause38713_)
                                         (_g3871638731_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx4103841039_))))
                                    (let ((___kont4104041041_
                                           (lambda (_L38759_ _L38760_ _L38761_)
                                             (let ((_body38801_
                                                    (map (lambda (_g3879638798_)
                                                           (gxc#apply-subst-object-refs
                                                            _g3879638798_
                                                            _L38761_
                                                            _$t38616_
                                                            _method-calls37726_
                                                            _slot-refs37727_
                                                            _class-type-check37728_
                                                            _struct-type-check138710_
                                                            _struct-type-check238711_))
                                                         _L38759_)))
                                               (cons (cons _L38761_ _L38760_)
                                                     _body38801_))))
                                          (___kont4104241043_
                                           (lambda () _clause38713_)))
                                      (if (gx#stx-pair? ___stx4103841039_)
                                          (let ((_e3872138743_
                                                 (gx#stx-e ___stx4103841039_)))
                                            (let ((_tl3872338748_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3872138743_)))
                                                  (_hd3872238746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3872138743_))))
                                              (if (gx#stx-pair? _hd3872238746_)
                                                  (let ((_e3872438751_
                                                         (gx#stx-e
                                                          _hd3872238746_)))
                                                    (let ((_tl3872638756_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3872438751_)))
                                                          (_hd3872538754_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3872438751_))))
                                                      (___kont4104041041_
                                                       _tl3872338748_
                                                       _tl3872638756_
                                                       _hd3872538754_)))
                                                  (___kont4104241043_))))
                                          (___kont4104241043_)))))
                                (foldr1 (lambda (_g3880538808_ _g3880638810_)
                                          (cons _g3880538808_ _g3880638810_))
                                        '()
                                        _L38510_))))
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _specializer-clauses38813_)
                       _stx37632_))))
                 (_specializer-impl38817_
                  (_make-specializer-impl38815_
                   _struct-check-all38686_
                   _empty37731_))
                 (_unchecked-specializer-impl38819_
                  (if (_unchecked-specializer?37734_)
                      (_make-specializer-impl38815_
                       _empty37731_
                       _struct-check-all38686_)
                      '#f))
                 (_specializer-impl38821_
                  (_generate-specializer-impl37638_
                   _$t38616_
                   _methods-bind38639_
                   _slots-bind38662_
                   _class-check-bind38684_
                   _struct-check-bind38708_
                   _specializer-impl38817_
                   _lifted-specializer-id38614_
                   _unchecked-specializer-impl38819_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     (gx#stx-e _L37707_)
                                                     '" => "
                                                     (gx#stx-e
                                                      _specializer-id38607_))
                                                    (_generate-specializer-def37639_
                                                     _L37707_
                                                     _specializer-id38607_
                                                     _specializer-impl38821_
                                                     _lifted-specializer-id38614_
                                                     _unchecked-specializer-impl38819_))))
                                            _clause3846838507_))))))
                           (_loop3846338491_ _target3846038486_ '()))
                         (_g3845438473_ _g3845538476_)))))
               (_g3845438473_ _g3845538476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3845438473_
                                                _g3845538476_)))))
                                   (_g3845338824_ _L37706_))
                                 (if (gxc#opt-lambda-expr? _L37706_)
                                     (let* ((_g3882738857_
                                             (lambda (_g3882838854_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3882838854_)))
                                            (_g3882639545_
                                             (lambda (_g3882838860_)
                                               (if (gx#stx-pair? _g3882838860_)
                                                   (let ((_e3883238862_
                                                          (gx#stx-e
                                                           _g3882838860_)))
                                                     (let ((_hd3883338865_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3883238862_)))
                                                           (_tl3883438867_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3883238862_))))
                                                       (if (gx#stx-pair?
                                                            _tl3883438867_)
                                                           (let ((_e3883538870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3883438867_)))
                     (let ((_hd3883638873_
                            (let ()
                              (declare (not safe))
                              (##car _e3883538870_)))
                           (_tl3883738875_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3883538870_))))
                       (if (gx#stx-pair? _hd3883638873_)
                           (let ((_e3883838878_ (gx#stx-e _hd3883638873_)))
                             (let ((_hd3883938881_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3883838878_)))
                                   (_tl3884038883_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3883838878_))))
                               (if (gx#stx-pair? _hd3883938881_)
                                   (let ((_e3884138886_
                                          (gx#stx-e _hd3883938881_)))
                                     (let ((_hd3884238889_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3884138886_)))
                                           (_tl3884338891_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3884138886_))))
                                       (if (gx#stx-pair? _hd3884238889_)
                                           (let ((_e3884438894_
                                                  (gx#stx-e _hd3884238889_)))
                                             (let ((_hd3884538897_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3884438894_)))
                                                   (_tl3884638899_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3884438894_))))
                                               (if (gx#stx-null?
                                                    _tl3884638899_)
                                                   (if (gx#stx-pair?
                                                        _tl3884338891_)
                                                       (let ((_e3884738902_
                                                              (gx#stx-e
                                                               _tl3884338891_)))
                                                         (let ((_hd3884838905_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3884738902_)))
                       (_tl3884938907_
                        (let () (declare (not safe)) (##cdr _e3884738902_))))
                   (if (gx#stx-null? _tl3884938907_)
                       (if (gx#stx-null? _tl3884038883_)
                           (if (gx#stx-pair? _tl3883738875_)
                               (let ((_e3885038910_ (gx#stx-e _tl3883738875_)))
                                 (let ((_hd3885138913_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3885038910_)))
                                       (_tl3885238915_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3885038910_))))
                                   (if (gx#stx-null? _tl3885238915_)
                                       ((lambda (_L38918_ _L38919_ _L38920_)
                                          (let* ((_g3894338961_
                                                  (lambda (_g3894438958_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3894438958_)))
                                                 (_g3894239012_
                                                  (lambda (_g3894438964_)
                                                    (if (gx#stx-pair?
                                                         _g3894438964_)
                                                        (let ((_e3894838966_
                                                               (gx#stx-e
                                                                _g3894438964_)))
                                                          (let ((_hd3894938969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e3894838966_)))
                        (_tl3895038971_
                         (let () (declare (not safe)) (##cdr _e3894838966_))))
                    (if (gx#stx-pair? _tl3895038971_)
                        (let ((_e3895138974_ (gx#stx-e _tl3895038971_)))
                          (let ((_hd3895238977_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3895138974_)))
                                (_tl3895338979_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3895138974_))))
                            (if (gx#stx-pair? _hd3895238977_)
                                (let ((_e3895438982_
                                       (gx#stx-e _hd3895238977_)))
                                  (let ((_hd3895538985_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3895438982_)))
                                        (_tl3895638987_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3895438982_))))
                                    ((lambda (_L38990_ _L38991_ _L38992_)
                                       (for-each
                                        (lambda (_g3900739009_)
                                          (gxc#apply-collect-object-refs
                                           _g3900739009_
                                           _L38992_
                                           _method-calls37726_
                                           _slot-refs37727_
                                           _class-type-check37728_
                                           _struct-type-check37729_
                                           _struct-type-assert37730_))
                                        _L38990_))
                                     _tl3895338979_
                                     _tl3895638987_
                                     _hd3895538985_)))
                                (_g3894338961_ _g3894438964_))))
                        (_g3894338961_ _g3894438964_))))
                (_g3894338961_ _g3894438964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3894239012_ _L38919_))
                                          (let* ((_g3901539034_
                                                  (lambda (_g3901639031_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g3901639031_)))
                                                 (_g3901439153_
                                                  (lambda (_g3901639037_)
                                                    (if (gx#stx-pair?
                                                         _g3901639037_)
                                                        (let ((_e3901839039_
                                                               (gx#stx-e
                                                                _g3901639037_)))
                                                          (let ((_hd3901939042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e3901839039_)))
                        (_tl3902039044_
                         (let () (declare (not safe)) (##cdr _e3901839039_))))
                    (if (gx#stx-pair/null? _tl3902039044_)
                        (let ((_g42607_
                               (gx#syntax-split-splice _tl3902039044_ '0)))
                          (begin
                            (let ((_g42608_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g42607_)
                                         (##vector-length _g42607_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g42608_ 2)))
                                  (error "Context expects 2 values" _g42608_)))
                            (let ((_target3902139047_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42607_ 0)))
                                  (_tl3902339049_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42607_ 1))))
                              (if (gx#stx-null? _tl3902339049_)
                                  (letrec ((_loop3902439052_
                                            (lambda (_hd3902239055_
                                                     _clause3902839057_)
                                              (if (gx#stx-pair? _hd3902239055_)
                                                  (let ((_e3902539060_
                                                         (gx#stx-e
                                                          _hd3902239055_)))
                                                    (let ((_lp-hd3902639063_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3902539060_)))
                                                          (_lp-tl3902739065_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3902539060_))))
                                                      (_loop3902439052_
                                                       _lp-tl3902739065_
                                                       (cons _lp-hd3902639063_
                                                             _clause3902839057_))))
                                                  (let ((_clause3902939068_
                                                         (reverse _clause3902839057_)))
                                                    ((lambda (_L39071_)
                                                       (for-each
                                                        (lambda (_clause39084_)
                                                          (let* ((_g3908639101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g3908739098_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3908739098_)))
                         (_g3908539143_
                          (lambda (_g3908739104_)
                            (if (gx#stx-pair? _g3908739104_)
                                (let ((_e3909139106_ (gx#stx-e _g3908739104_)))
                                  (let ((_hd3909239109_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3909139106_)))
                                        (_tl3909339111_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3909139106_))))
                                    (if (gx#stx-pair? _hd3909239109_)
                                        (let ((_e3909439114_
                                               (gx#stx-e _hd3909239109_)))
                                          (let ((_hd3909539117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3909439114_)))
                                                (_tl3909639119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3909439114_))))
                                            ((lambda (_L39122_
                                                      _L39123_
                                                      _L39124_)
                                               (for-each
                                                (lambda (_g3913839140_)
                                                  (gxc#apply-collect-object-refs
                                                   _g3913839140_
                                                   _L39124_
                                                   _method-calls37726_
                                                   _slot-refs37727_
                                                   _class-type-check37728_
                                                   _struct-type-check37729_
                                                   _struct-type-assert37730_))
                                                _L39122_))
                                             _tl3909339111_
                                             _tl3909639119_
                                             _hd3909539117_)))
                                        (_g3908639101_ _g3908739104_))))
                                (_g3908639101_ _g3908739104_)))))
                    (_g3908539143_ _clause39084_)))
                (foldr1 (lambda (_g3914539148_ _g3914639150_)
                          (cons _g3914539148_ _g3914639150_))
                        '()
                        _L39071_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause3902939068_))))))
                                    (_loop3902439052_ _target3902139047_ '()))
                                  (_g3901539034_ _g3901639037_)))))
                        (_g3901539034_ _g3901639037_))))
                (_g3901539034_ _g3901639037_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3901439153_ _L38918_))
                                          (if (_no-specializer?37733_)
                                              _stx37632_
                                              (let* ((_specializer-id39162_
                                                      (let* ((_id39156_
                                                              (make-symbol
                                                               (gx#stx-e
                                                                _L37707_)
                                                               '"::specialize"))
                                                             (_specializer-id39159_
                                                              (gx#core-quote-syntax__1
                                                               _id39156_
                                                               (gx#stx-source
                                                                _stx37632_))))
                                                        (gx#core-bind-runtime!__0
                                                         _specializer-id39159_)
                                                        _specializer-id39159_))
                                                     (_lifted-specializer-id39169_
                                                      (if (_lift-unchecked-specializer?37735_)
                                                          (let* ((_id39164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (gx#stx-e _L37707_)
                           '"::specialize::unchecked"))
                         (_lifted-specializer-id39166_
                          (gx#core-quote-syntax__1
                           _id39164_
                           (gx#stx-source _stx37632_))))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id39166_)
                    _lifted-specializer-id39166_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t39171_
                                                      (make-symbol
                                                       (gensym '__t)))
                                                     (_methods39173_
                                                      (hash-keys
                                                       _method-calls37726_))
                                                     (_$methods39177_
                                                      (map (lambda (_id39175_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id39175_)))
                                                           _methods39173_))
                                                     (_g42609_
                                                      (for-each
                                                       (lambda (_g3917839181_
                                                                _g3917939183_)
                                                         (table-set!
                                                          _method-calls37726_
                                                          _g3917839181_
                                                          _g3917939183_))
                                                       _methods39173_
                                                       _$methods39177_))
                                                     (_methods-bind39194_
                                                      (map (lambda (_g3918639189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3918739191_)
                     (_generate-method-bind37634_
                      _$t39171_
                      _g3918639189_
                      _g3918739191_))
                   _methods39173_
                   _$methods39177_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots39196_
                                                      (hash-keys
                                                       _slot-refs37727_))
                                                     (_$slots39200_
                                                      (map (lambda (_id39198_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id39198_)))
                                                           _slots39196_))
                                                     (_g42610_
                                                      (for-each
                                                       (lambda (_g3920139204_
                                                                _g3920239206_)
                                                         (table-set!
                                                          _slot-refs37727_
                                                          _g3920139204_
                                                          _g3920239206_))
                                                       _slots39196_
                                                       _$slots39200_))
                                                     (_slots-bind39217_
                                                      (map (lambda (_g3920939212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3921039214_)
                     (_generate-slot-bind37635_
                      _$t39171_
                      _g3920939212_
                      _g3921039214_))
                   _slots39196_
                   _$slots39200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check39219_
                                                      (hash-keys
                                                       _class-type-check37728_))
                                                     (_$class-check39222_
                                                      (map (lambda (_g42611_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _class-check39219_))
                                                     (_g42612_
                                                      (for-each
                                                       (lambda (_g3922339226_
                                                                _g3922439228_)
                                                         (table-set!
                                                          _class-type-check37728_
                                                          _g3922339226_
                                                          _g3922439228_))
                                                       _class-check39219_
                                                       _$class-check39222_))
                                                     (_class-check-bind39239_
                                                      (map (lambda (_g3923139234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3923239236_)
                     (_generate-class-check-bind37636_
                      _$t39171_
                      _g3923139234_
                      _g3923239236_))
                   _class-check39219_
                   _$class-check39222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all39241_
                                                      (hash-merge
                                                       _struct-type-check37729_
                                                       _struct-type-assert37730_))
                                                     (_struct-check39243_
                                                      (hash-keys
                                                       _struct-check-all39241_))
                                                     (_$struct-check39246_
                                                      (map (lambda (_g42613_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _struct-check39243_))
                                                     (_g42614_
                                                      (for-each
                                                       (lambda (_g3924739250_
                                                                _g3924839252_)
                                                         (table-set!
                                                          _struct-check-all39241_
                                                          _g3924739250_
                                                          _g3924839252_))
                                                       _struct-check39243_
                                                       _$struct-check39246_))
                                                     (_struct-check-bind39263_
                                                      (map (lambda (_g3925539258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3925639260_)
                     (_generate-struct-check-bind37637_
                      _$t39171_
                      _g3925539258_
                      _g3925639260_))
                   _struct-check39243_
                   _$struct-check39246_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr39362_
                                                      (lambda (_struct-type-check139265_
                                                               _struct-type-check239266_)
                                                        (let* ((_g3926839286_
                                                                (lambda (_g3926939283_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3926939283_)))
                       (_g3926739359_
                        (lambda (_g3926939289_)
                          (if (gx#stx-pair? _g3926939289_)
                              (let ((_e3927339291_ (gx#stx-e _g3926939289_)))
                                (let ((_hd3927439294_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3927339291_)))
                                      (_tl3927539296_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3927339291_))))
                                  (if (gx#stx-pair? _tl3927539296_)
                                      (let ((_e3927639299_
                                             (gx#stx-e _tl3927539296_)))
                                        (let ((_hd3927739302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3927639299_)))
                                              (_tl3927839304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3927639299_))))
                                          (if (gx#stx-pair? _hd3927739302_)
                                              (let ((_e3927939307_
                                                     (gx#stx-e
                                                      _hd3927739302_)))
                                                (let ((_hd3928039310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3927939307_)))
                                                      (_tl3928139312_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3927939307_))))
                                                  ((lambda (_L39315_
                                                            _L39316_
                                                            _L39317_)
                                                     (let ((_body39357_
                                                            (map (lambda (_g3935239354_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-subst-object-refs
                            _g3935239354_
                            _L39317_
                            _$t39171_
                            _method-calls37726_
                            _slot-refs37727_
                            _class-type-check37728_
                            _struct-type-check139265_
                            _struct-type-check239266_))
                         _L39315_)))
               (gxc#xform-wrap-source
                (cons '%#lambda (cons (cons _L39317_ _L39316_) _body39357_))
                _L38919_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl3927839304_
                                                   _tl3928139312_
                                                   _hd3928039310_)))
                                              (_g3926839286_ _g3926939289_))))
                                      (_g3926839286_ _g3926939289_))))
                              (_g3926839286_ _g3926939289_)))))
                  (_g3926739359_ _L38919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr39523_
                                                      (lambda (_struct-type-check139364_
                                                               _struct-type-check239365_)
                                                        (let* ((_g3936739386_
                                                                (lambda (_g3936839383_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3936839383_)))
                       (_g3936639520_
                        (lambda (_g3936839389_)
                          (if (gx#stx-pair? _g3936839389_)
                              (let ((_e3937039391_ (gx#stx-e _g3936839389_)))
                                (let ((_hd3937139394_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3937039391_)))
                                      (_tl3937239396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3937039391_))))
                                  (if (gx#stx-pair/null? _tl3937239396_)
                                      (let ((_g42615_
                                             (gx#syntax-split-splice
                                              _tl3937239396_
                                              '0)))
                                        (begin
                                          (let ((_g42616_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42615_)
                                                       (##vector-length
                                                        _g42615_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42616_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42616_)))
                                          (let ((_target3937339399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42615_ 0)))
                                                (_tl3937539401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42615_ 1))))
                                            (if (gx#stx-null? _tl3937539401_)
                                                (letrec ((_loop3937639404_
                                                          (lambda (_hd3937439407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause3938039409_)
                    (if (gx#stx-pair? _hd3937439407_)
                        (let ((_e3937739412_ (gx#stx-e _hd3937439407_)))
                          (let ((_lp-hd3937839415_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3937739412_)))
                                (_lp-tl3937939417_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3937739412_))))
                            (_loop3937639404_
                             _lp-tl3937939417_
                             (cons _lp-hd3937839415_ _clause3938039409_))))
                        (let ((_clause3938139420_
                               (reverse _clause3938039409_)))
                          ((lambda (_L39423_)
                             (let ((_clauses39518_
                                    (map (lambda (_clause39438_)
                                           (let* ((___stx4105841059_
                                                   _clause39438_)
                                                  (_g3944139456_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4105841059_))))
                                             (let ((___kont4106041061_
                                                    (lambda (_L39484_
                                                             _L39485_
                                                             _L39486_)
                                                      (let ((_body39506_
                                                             (map (lambda (_g3950139503_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-subst-object-refs
                             _g3950139503_
                             _L39486_
                             _$t39171_
                             _method-calls37726_
                             _slot-refs37727_
                             _class-type-check37728_
                             _struct-type-check139364_
                             _struct-type-check239365_))
                          _L39484_)))
                (cons (cons _L39486_ _L39485_) _body39506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4106241063_
                                                    (lambda () _clause39438_)))
                                               (if (gx#stx-pair?
                                                    ___stx4105841059_)
                                                   (let ((_e3944639468_
                                                          (gx#stx-e
                                                           ___stx4105841059_)))
                                                     (let ((_tl3944839473_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3944639468_)))
                                                           (_hd3944739471_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3944639468_))))
                                                       (if (gx#stx-pair?
                                                            _hd3944739471_)
                                                           (let ((_e3944939476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3944739471_)))
                     (let ((_tl3945139481_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3944939476_)))
                           (_hd3945039479_
                            (let ()
                              (declare (not safe))
                              (##car _e3944939476_))))
                       (___kont4106041061_
                        _tl3944839473_
                        _tl3945139481_
                        _hd3945039479_)))
                   (___kont4106241063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4106241063_)))))
                                         (foldr1 (lambda (_g3951039513_
                                                          _g3951139515_)
                                                   (cons _g3951039513_
                                                         _g3951139515_))
                                                 '()
                                                 _L39423_))))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses39518_)
                                _L38918_)))
                           _clause3938139420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3937639404_
                                                   _target3937339399_
                                                   '()))
                                                (_g3936739386_
                                                 _g3936839389_)))))
                                      (_g3936739386_ _g3936839389_))))
                              (_g3936739386_ _g3936839389_)))))
                  (_g3936639520_ _L38918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl39528_
                                                      (lambda (_specializer-lambda-expr39525_
                                                               _specializer-case-lambda-expr39526_)
                                                        (gxc#xform-wrap-source
                                                         (cons '%#let-values
                                                               (cons (cons (cons (cons _L38920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons _specializer-lambda-expr39525_
                                               '()))
                                   '())
                             (cons _specializer-case-lambda-expr39526_ '())))
                 _stx37632_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr39530_
                                                      (_make-specializer-lambda-expr39362_
                                                       _struct-check-all39241_
                                                       _empty37731_))
                                                     (_specializer-case-lambda-expr39532_
                                                      (_make-specializer-case-lambda-expr39523_
                                                       _struct-check-all39241_
                                                       _empty37731_))
                                                     (_specializer-impl39534_
                                                      (_make-specializer-impl39528_
                                                       _specializer-lambda-expr39530_
                                                       _specializer-case-lambda-expr39532_))
                                                     (_unchecked-specializer-lambda-expr39536_
                                                      (if (_unchecked-specializer?37734_)
                                                          (_make-specializer-lambda-expr39362_
                                                           _empty37731_
                                                           _struct-check-all39241_)
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr39538_
                                                      (if (_unchecked-specializer?37734_)
                                                          (_make-specializer-case-lambda-expr39523_
                                                           _empty37731_
                                                           _struct-check-all39241_)
                                                          '#f))
                                                     (_unchecked-specializer-impl39540_
                                                      (if (_unchecked-specializer?37734_)
                                                          (_make-specializer-impl39528_
                                                           _unchecked-specializer-lambda-expr39536_
                                                           _unchecked-specializer-case-lambda-expr39538_)
                                                          '#f))
                                                     (_specializer-impl39542_
                                                      (_generate-specializer-impl37638_
                                                       _$t39171_
                                                       _methods-bind39194_
                                                       _slots-bind39217_
                                                       _class-check-bind39239_
                                                       _struct-check-bind39263_
                                                       _specializer-impl39534_
                                                       _lifted-specializer-id39169_
                                                       _unchecked-specializer-impl39540_)))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 (gx#stx-e _L37707_)
                                                 '" => "
                                                 (gx#stx-e
                                                  _specializer-id39162_))
                                                (_generate-specializer-def37639_
                                                 _L37707_
                                                 _specializer-id39162_
                                                 _specializer-impl39542_
                                                 _lifted-specializer-id39169_
                                                 _unchecked-specializer-impl39540_))))
                                        _hd3885138913_
                                        _hd3884838905_
                                        _hd3884538897_)
                                       (_g3882738857_ _g3882838860_))))
                               (_g3882738857_ _g3882838860_))
                           (_g3882738857_ _g3882838860_))
                       (_g3882738857_ _g3882838860_))))
               (_g3882738857_ _g3882838860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3882738857_
                                                    _g3882838860_))))
                                           (_g3882738857_ _g3882838860_))))
                                   (_g3882738857_ _g3882838860_))))
                           (_g3882738857_ _g3882838860_))))
                   (_g3882738857_ _g3882838860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3882738857_
                                                    _g3882838860_)))))
                                       (_g3882639545_ _L37706_))
                                     (if (gxc#kw-lambda-expr? _L37706_)
                                         (let* ((_g3954839601_
                                                 (lambda (_g3954939598_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3954939598_)))
                                                (_g3954740873_
                                                 (lambda (_g3954939604_)
                                                   (if (gx#stx-pair?
                                                        _g3954939604_)
                                                       (let ((_e3955539606_
                                                              (gx#stx-e
                                                               _g3954939604_)))
                                                         (let ((_hd3955639609_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3955539606_)))
                       (_tl3955739611_
                        (let () (declare (not safe)) (##cdr _e3955539606_))))
                   (if (gx#identifier? _hd3955639609_)
                       (if (gx#stx-eq? '%#let-values _hd3955639609_)
                           (if (gx#stx-pair? _tl3955739611_)
                               (let ((_e3955839614_ (gx#stx-e _tl3955739611_)))
                                 (let ((_hd3955939617_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3955839614_)))
                                       (_tl3956039619_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3955839614_))))
                                   (if (gx#stx-pair? _hd3955939617_)
                                       (let ((_e3956139622_
                                              (gx#stx-e _hd3955939617_)))
                                         (let ((_hd3956239625_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3956139622_)))
                                               (_tl3956339627_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3956139622_))))
                                           (if (gx#stx-pair? _hd3956239625_)
                                               (let ((_e3956439630_
                                                      (gx#stx-e
                                                       _hd3956239625_)))
                                                 (let ((_hd3956539633_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3956439630_)))
                                                       (_tl3956639635_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3956439630_))))
                                                   (if (gx#stx-pair?
                                                        _hd3956539633_)
                                                       (let ((_e3956739638_
                                                              (gx#stx-e
                                                               _hd3956539633_)))
                                                         (let ((_hd3956839641_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3956739638_)))
                       (_tl3956939643_
                        (let () (declare (not safe)) (##cdr _e3956739638_))))
                   (if (gx#stx-null? _tl3956939643_)
                       (if (gx#stx-pair? _tl3956639635_)
                           (let ((_e3957039646_ (gx#stx-e _tl3956639635_)))
                             (let ((_hd3957139649_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3957039646_)))
                                   (_tl3957239651_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3957039646_))))
                               (if (gx#stx-pair? _hd3957139649_)
                                   (let ((_e3957339654_
                                          (gx#stx-e _hd3957139649_)))
                                     (let ((_hd3957439657_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3957339654_)))
                                           (_tl3957539659_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3957339654_))))
                                       (if (gx#identifier? _hd3957439657_)
                                           (if (gx#stx-eq?
                                                '%#let-values
                                                _hd3957439657_)
                                               (if (gx#stx-pair?
                                                    _tl3957539659_)
                                                   (let ((_e3957639662_
                                                          (gx#stx-e
                                                           _tl3957539659_)))
                                                     (let ((_hd3957739665_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3957639662_)))
                                                           (_tl3957839667_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3957639662_))))
                                                       (if (gx#stx-pair?
                                                            _hd3957739665_)
                                                           (let ((_e3957939670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3957739665_)))
                     (let ((_hd3958039673_
                            (let ()
                              (declare (not safe))
                              (##car _e3957939670_)))
                           (_tl3958139675_
                            (let ()
                              (declare (not safe))
                              (##cdr _e3957939670_))))
                       (if (gx#stx-pair? _hd3958039673_)
                           (let ((_e3958239678_ (gx#stx-e _hd3958039673_)))
                             (let ((_hd3958339681_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3958239678_)))
                                   (_tl3958439683_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3958239678_))))
                               (if (gx#stx-pair? _hd3958339681_)
                                   (let ((_e3958539686_
                                          (gx#stx-e _hd3958339681_)))
                                     (let ((_hd3958639689_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3958539686_)))
                                           (_tl3958739691_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3958539686_))))
                                       (if (gx#stx-null? _tl3958739691_)
                                           (if (gx#stx-pair? _tl3958439683_)
                                               (let ((_e3958839694_
                                                      (gx#stx-e
                                                       _tl3958439683_)))
                                                 (let ((_hd3958939697_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3958839694_)))
                                                       (_tl3959039699_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3958839694_))))
                                                   (if (gx#stx-null?
                                                        _tl3959039699_)
                                                       (if (gx#stx-null?
                                                            _tl3958139675_)
                                                           (if (gx#stx-pair?
                                                                _tl3957839667_)
                                                               (let ((_e3959139702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3957839667_)))
                         (let ((_hd3959239705_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3959139702_)))
                               (_tl3959339707_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3959139702_))))
                           (if (gx#stx-null? _tl3959339707_)
                               (if (gx#stx-null? _tl3957239651_)
                                   (if (gx#stx-null? _tl3956339627_)
                                       (if (gx#stx-pair? _tl3956039619_)
                                           (let ((_e3959439710_
                                                  (gx#stx-e _tl3956039619_)))
                                             (let ((_hd3959539713_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3959439710_)))
                                                   (_tl3959639715_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3959439710_))))
                                               (if (gx#stx-null?
                                                    _tl3959639715_)
                                                   ((lambda (_L39718_
                                                             _L39719_
                                                             _L39720_
                                                             _L39721_
                                                             _L39722_)
                                                      (let* ((_g3976139823_
                                                              (lambda (_g3976239820_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g3976239820_)))
                     (_g3976040870_
                      (lambda (_g3976239826_)
                        (if (gx#stx-pair? _g3976239826_)
                            (let ((_e3976839828_ (gx#stx-e _g3976239826_)))
                              (let ((_hd3976939831_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3976839828_)))
                                    (_tl3977039833_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3976839828_))))
                                (if (gx#identifier? _hd3976939831_)
                                    (if (gx#stx-eq? '%#lambda _hd3976939831_)
                                        (if (gx#stx-pair? _tl3977039833_)
                                            (let ((_e3977139836_
                                                   (gx#stx-e _tl3977039833_)))
                                              (let ((_hd3977239839_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3977139836_)))
                                                    (_tl3977339841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3977139836_))))
                                                (if (gx#stx-pair?
                                                     _tl3977339841_)
                                                    (let ((_e3977439844_
                                                           (gx#stx-e
                                                            _tl3977339841_)))
                                                      (let ((_hd3977539847_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e3977439844_)))
                    (_tl3977639849_
                     (let () (declare (not safe)) (##cdr _e3977439844_))))
                (if (gx#stx-pair? _hd3977539847_)
                    (let ((_e3977739852_ (gx#stx-e _hd3977539847_)))
                      (let ((_hd3977839855_
                             (let ()
                               (declare (not safe))
                               (##car _e3977739852_)))
                            (_tl3977939857_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3977739852_))))
                        (if (gx#identifier? _hd3977839855_)
                            (if (gx#stx-eq? '%#call _hd3977839855_)
                                (if (gx#stx-pair? _tl3977939857_)
                                    (let ((_e3978039860_
                                           (gx#stx-e _tl3977939857_)))
                                      (let ((_hd3978139863_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3978039860_)))
                                            (_tl3978239865_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3978039860_))))
                                        (if (gx#stx-pair? _hd3978139863_)
                                            (let ((_e3978339868_
                                                   (gx#stx-e _hd3978139863_)))
                                              (let ((_hd3978439871_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3978339868_)))
                                                    (_tl3978539873_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3978339868_))))
                                                (if (gx#identifier?
                                                     _hd3978439871_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3978439871_)
                                                        (if (gx#stx-pair?
                                                             _tl3978539873_)
                                                            (let ((_e3978639876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3978539873_)))
                      (let ((_hd3978739879_
                             (let ()
                               (declare (not safe))
                               (##car _e3978639876_)))
                            (_tl3978839881_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3978639876_))))
                        (if (gx#stx-null? _tl3978839881_)
                            (if (gx#stx-pair? _tl3978239865_)
                                (let ((_e3978939884_
                                       (gx#stx-e _tl3978239865_)))
                                  (let ((_hd3979039887_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3978939884_)))
                                        (_tl3979139889_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3978939884_))))
                                    (if (gx#stx-pair? _hd3979039887_)
                                        (let ((_e3979239892_
                                               (gx#stx-e _hd3979039887_)))
                                          (let ((_hd3979339895_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3979239892_)))
                                                (_tl3979439897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3979239892_))))
                                            (if (gx#identifier? _hd3979339895_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd3979339895_)
                                                    (if (gx#stx-pair?
                                                         _tl3979439897_)
                                                        (let ((_e3979539900_
                                                               (gx#stx-e
                                                                _tl3979439897_)))
                                                          (let ((_hd3979639903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e3979539900_)))
                        (_tl3979739905_
                         (let () (declare (not safe)) (##cdr _e3979539900_))))
                    (if (gx#stx-null? _tl3979739905_)
                        (if (gx#stx-pair? _tl3979139889_)
                            (let ((_e3979839908_ (gx#stx-e _tl3979139889_)))
                              (let ((_hd3979939911_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3979839908_)))
                                    (_tl3980039913_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3979839908_))))
                                (if (gx#stx-pair? _hd3979939911_)
                                    (let ((_e3980139916_
                                           (gx#stx-e _hd3979939911_)))
                                      (let ((_hd3980239919_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3980139916_)))
                                            (_tl3980339921_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3980139916_))))
                                        (if (gx#identifier? _hd3980239919_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3980239919_)
                                                (if (gx#stx-pair?
                                                     _tl3980339921_)
                                                    (let ((_e3980439924_
                                                           (gx#stx-e
                                                            _tl3980339921_)))
                                                      (let ((_hd3980539927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e3980439924_)))
                    (_tl3980639929_
                     (let () (declare (not safe)) (##cdr _e3980439924_))))
                (if (gx#stx-null? _tl3980639929_)
                    (if (gx#stx-pair/null? _tl3980039913_)
                        (if (fx>= (gx#stx-length _tl3980039913_) '1)
                            (let ((_g42617_
                                   (gx#syntax-split-splice _tl3980039913_ '1)))
                              (begin
                                (let ((_g42618_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g42617_)
                                             (##vector-length _g42617_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g42618_ 2)))
                                      (error "Context expects 2 values"
                                             _g42618_)))
                                (let ((_target3980739932_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42617_ 0)))
                                      (_tl3980939934_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42617_ 1))))
                                  (if (gx#stx-pair? _tl3980939934_)
                                      (let ((_e3981639937_
                                             (gx#stx-e _tl3980939934_)))
                                        (let ((_hd3981739940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3981639937_)))
                                              (_tl3981839942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3981639937_))))
                                          (if (gx#stx-null? _tl3981839942_)
                                              (letrec ((_loop3981039945_
                                                        (lambda (_hd3980839948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref3981439950_)
                  (if (gx#stx-pair? _hd3980839948_)
                      (let ((_e3981139953_ (gx#stx-e _hd3980839948_)))
                        (let ((_lp-hd3981239956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3981139953_)))
                              (_lp-tl3981339958_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3981139953_))))
                          (_loop3981039945_
                           _lp-tl3981339958_
                           (cons _lp-hd3981239956_ _kw-ref3981439950_))))
                      (let ((_kw-ref3981539961_ (reverse _kw-ref3981439950_)))
                        (if (gx#stx-null? _tl3977639849_)
                            ((lambda (_L39964_
                                      _L39965_
                                      _L39966_
                                      _L39967_
                                      _L39968_)
                               (let* ((_kw-count40019_
                                       (length (foldr1 (lambda (_g4001140014_
                                                                _g4001240016_)
                                                         (cons _g4001140014_
                                                               _g4001240016_))
                                                       '()
                                                       _L39965_)))
                                      (_self-index40021_
                                       (fx+ _kw-count40019_ '1)))
                                 (if (gxc#lambda-expr? _L39720_)
                                     (let* ((_g4002440038_
                                             (lambda (_g4002540035_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g4002540035_)))
                                            (_g4002340209_
                                             (lambda (_g4002540041_)
                                               (if (gx#stx-pair? _g4002540041_)
                                                   (let ((_e4002840043_
                                                          (gx#stx-e
                                                           _g4002540041_)))
                                                     (let ((_hd4002940046_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4002840043_)))
                                                           (_tl4003040048_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4002840043_))))
                                                       (if (gx#stx-pair?
                                                            _tl4003040048_)
                                                           (let ((_e4003140051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4003040048_)))
                     (let ((_hd4003240054_
                            (let ()
                              (declare (not safe))
                              (##car _e4003140051_)))
                           (_tl4003340056_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4003140051_))))
                       ((lambda (_L40059_ _L40060_)
                          (let ((_self40076_
                                 (list-ref _L40060_ _self-index40021_)))
                            (for-each
                             (lambda (_g4007740079_)
                               (gxc#apply-collect-object-refs
                                _g4007740079_
                                _self40076_
                                _method-calls37726_
                                _slot-refs37727_
                                _class-type-check37728_
                                _struct-type-check37729_
                                _struct-type-assert37730_))
                             _L40059_)
                            (if (_no-specializer?37733_)
                                _stx37632_
                                (let* ((_specializer-id40088_
                                        (let* ((_id40082_
                                                (make-symbol
                                                 (gx#stx-e _L37707_)
                                                 '"::specialize"))
                                               (_specializer-id40085_
                                                (gx#core-quote-syntax__1
                                                 _id40082_
                                                 (gx#stx-source _stx37632_))))
                                          (gx#core-bind-runtime!__0
                                           _specializer-id40085_)
                                          _specializer-id40085_))
                                       (_lifted-specializer-id40095_
                                        (if (_lift-unchecked-specializer?37735_)
                                            (let* ((_id40090_
                                                    (make-symbol
                                                     (gx#stx-e _L37707_)
                                                     '"::specialize::unchecked"))
                                                   (_lifted-specializer-id40092_
                                                    (gx#core-quote-syntax__1
                                                     _id40090_
                                                     (gx#stx-source
                                                      _stx37632_))))
                                              (gx#core-bind-runtime!__0
                                               _lifted-specializer-id40092_)
                                              _lifted-specializer-id40092_)
                                            '#f))
                                       (_$t40097_ (make-symbol (gensym '__t)))
                                       (_methods40099_
                                        (hash-keys _method-calls37726_))
                                       (_$methods40103_
                                        (map (lambda (_id40101_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id40101_)))
                                             _methods40099_))
                                       (_g42619_
                                        (for-each
                                         (lambda (_g4010440107_ _g4010540109_)
                                           (table-set!
                                            _method-calls37726_
                                            _g4010440107_
                                            _g4010540109_))
                                         _methods40099_
                                         _$methods40103_))
                                       (_methods-bind40120_
                                        (map (lambda (_g4011240115_
                                                      _g4011340117_)
                                               (_generate-method-bind37634_
                                                _$t40097_
                                                _g4011240115_
                                                _g4011340117_))
                                             _methods40099_
                                             _$methods40103_))
                                       (_slots40122_
                                        (hash-keys _slot-refs37727_))
                                       (_$slots40126_
                                        (map (lambda (_id40124_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id40124_)))
                                             _slots40122_))
                                       (_g42620_
                                        (for-each
                                         (lambda (_g4012740130_ _g4012840132_)
                                           (table-set!
                                            _slot-refs37727_
                                            _g4012740130_
                                            _g4012840132_))
                                         _slots40122_
                                         _$slots40126_))
                                       (_slots-bind40143_
                                        (map (lambda (_g4013540138_
                                                      _g4013640140_)
                                               (_generate-slot-bind37635_
                                                _$t40097_
                                                _g4013540138_
                                                _g4013640140_))
                                             _slots40122_
                                             _$slots40126_))
                                       (_class-check40145_
                                        (hash-keys _class-type-check37728_))
                                       (_$class-check40148_
                                        (map (lambda (_g42621_)
                                               (make-symbol (gensym '__class)))
                                             _class-check40145_))
                                       (_g42622_
                                        (for-each
                                         (lambda (_g4014940152_ _g4015040154_)
                                           (table-set!
                                            _class-type-check37728_
                                            _g4014940152_
                                            _g4015040154_))
                                         _class-check40145_
                                         _$class-check40148_))
                                       (_class-check-bind40165_
                                        (map (lambda (_g4015740160_
                                                      _g4015840162_)
                                               (_generate-class-check-bind37636_
                                                _$t40097_
                                                _g4015740160_
                                                _g4015840162_))
                                             _class-check40145_
                                             _$class-check40148_))
                                       (_struct-check-all40167_
                                        (hash-merge
                                         _struct-type-check37729_
                                         _struct-type-assert37730_))
                                       (_struct-check40169_
                                        (hash-keys _struct-check-all40167_))
                                       (_$struct-check40172_
                                        (map (lambda (_g42623_)
                                               (make-symbol (gensym '__class)))
                                             _struct-check40169_))
                                       (_g42624_
                                        (for-each
                                         (lambda (_g4017340176_ _g4017440178_)
                                           (table-set!
                                            _struct-check-all40167_
                                            _g4017340176_
                                            _g4017440178_))
                                         _struct-check40169_
                                         _$struct-check40172_))
                                       (_struct-check-bind40189_
                                        (map (lambda (_g4018140184_
                                                      _g4018240186_)
                                               (_generate-struct-check-bind37637_
                                                _$t40097_
                                                _g4018140184_
                                                _g4018240186_))
                                             _struct-check40169_
                                             _$struct-check40172_))
                                       (_make-specializer-impl40200_
                                        (lambda (_struct-type-check140191_
                                                 _struct-type-check240192_)
                                          (let ((_specializer-body40198_
                                                 (map (lambda (_g4019340195_)
                                                        (gxc#apply-subst-object-refs
                                                         _g4019340195_
                                                         _self40076_
                                                         _$t40097_
                                                         _method-calls37726_
                                                         _slot-refs37727_
                                                         _class-type-check37728_
                                                         _struct-type-check140191_
                                                         _struct-type-check240192_))
                                                      _L40059_)))
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _L39722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons '%#let-values
                                         (cons (cons (cons (cons _L39721_ '())
                                                           (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _L40060_ _specializer-body40198_))
                          _L39720_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L39719_ '())))
                                   '()))
                       '())
                 (cons _L39718_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx37632_))))
                                       (_specializer-impl40202_
                                        (_make-specializer-impl40200_
                                         _struct-check-all40167_
                                         _empty37731_))
                                       (_unchecked-specializer-impl40204_
                                        (if (_unchecked-specializer?37734_)
                                            (_make-specializer-impl40200_
                                             _empty37731_
                                             _struct-check-all40167_)
                                            '#f))
                                       (_specializer-impl40206_
                                        (_generate-specializer-impl37638_
                                         _$t40097_
                                         _methods-bind40120_
                                         _slots-bind40143_
                                         _class-check-bind40165_
                                         _struct-check-bind40189_
                                         _specializer-impl40202_
                                         _lifted-specializer-id40095_
                                         _unchecked-specializer-impl40204_)))
                                  (gxc#verbose
                                   '"generate method specializer "
                                   (gx#stx-e _L37707_)
                                   '" => "
                                   (gx#stx-e _specializer-id40088_))
                                  (_generate-specializer-def37639_
                                   _L37707_
                                   _specializer-id40088_
                                   _specializer-impl40206_
                                   _lifted-specializer-id40095_
                                   _unchecked-specializer-impl40204_)))))
                        _tl4003340056_
                        _hd4003240054_)))
                   (_g4002440038_ _g4002540041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4002440038_
                                                    _g4002540041_)))))
                                       (_g4002340209_ _L39720_))
                                     (if (gxc#opt-lambda-expr? _L39720_)
                                         (let* ((_g4021240242_
                                                 (lambda (_g4021340239_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g4021340239_)))
                                                (_g4021140867_
                                                 (lambda (_g4021340245_)
                                                   (if (gx#stx-pair?
                                                        _g4021340245_)
                                                       (let ((_e4021740247_
                                                              (gx#stx-e
                                                               _g4021340245_)))
                                                         (let ((_hd4021840250_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e4021740247_)))
                       (_tl4021940252_
                        (let () (declare (not safe)) (##cdr _e4021740247_))))
                   (if (gx#stx-pair? _tl4021940252_)
                       (let ((_e4022040255_ (gx#stx-e _tl4021940252_)))
                         (let ((_hd4022140258_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4022040255_)))
                               (_tl4022240260_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4022040255_))))
                           (if (gx#stx-pair? _hd4022140258_)
                               (let ((_e4022340263_ (gx#stx-e _hd4022140258_)))
                                 (let ((_hd4022440266_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4022340263_)))
                                       (_tl4022540268_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4022340263_))))
                                   (if (gx#stx-pair? _hd4022440266_)
                                       (let ((_e4022640271_
                                              (gx#stx-e _hd4022440266_)))
                                         (let ((_hd4022740274_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4022640271_)))
                                               (_tl4022840276_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4022640271_))))
                                           (if (gx#stx-pair? _hd4022740274_)
                                               (let ((_e4022940279_
                                                      (gx#stx-e
                                                       _hd4022740274_)))
                                                 (let ((_hd4023040282_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4022940279_)))
                                                       (_tl4023140284_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4022940279_))))
                                                   (if (gx#stx-null?
                                                        _tl4023140284_)
                                                       (if (gx#stx-pair?
                                                            _tl4022840276_)
                                                           (let ((_e4023240287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4022840276_)))
                     (let ((_hd4023340290_
                            (let ()
                              (declare (not safe))
                              (##car _e4023240287_)))
                           (_tl4023440292_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4023240287_))))
                       (if (gx#stx-null? _tl4023440292_)
                           (if (gx#stx-null? _tl4022540268_)
                               (if (gx#stx-pair? _tl4022240260_)
                                   (let ((_e4023540295_
                                          (gx#stx-e _tl4022240260_)))
                                     (let ((_hd4023640298_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4023540295_)))
                                           (_tl4023740300_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4023540295_))))
                                       (if (gx#stx-null? _tl4023740300_)
                                           ((lambda (_L40303_
                                                     _L40304_
                                                     _L40305_)
                                              (let* ((_g4032840342_
                                                      (lambda (_g4032940339_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g4032940339_)))
                                                     (_g4032740383_
                                                      (lambda (_g4032940345_)
                                                        (if (gx#stx-pair?
                                                             _g4032940345_)
                                                            (let ((_e4033240347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _g4032940345_)))
                      (let ((_hd4033340350_
                             (let ()
                               (declare (not safe))
                               (##car _e4033240347_)))
                            (_tl4033440352_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4033240347_))))
                        (if (gx#stx-pair? _tl4033440352_)
                            (let ((_e4033540355_ (gx#stx-e _tl4033440352_)))
                              (let ((_hd4033640358_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4033540355_)))
                                    (_tl4033740360_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4033540355_))))
                                ((lambda (_L40363_ _L40364_)
                                   (let ((_self40377_
                                          (list-ref
                                           _L40364_
                                           _self-index40021_)))
                                     (for-each
                                      (lambda (_g4037840380_)
                                        (gxc#apply-collect-object-refs
                                         _g4037840380_
                                         _self40377_
                                         _method-calls37726_
                                         _slot-refs37727_
                                         _class-type-check37728_
                                         _struct-type-check37729_
                                         _struct-type-assert37730_))
                                      _L40363_)))
                                 _tl4033740360_
                                 _hd4033640358_)))
                            (_g4032840342_ _g4032940345_))))
                    (_g4032840342_ _g4032940345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4032740383_ _L40304_))
                                              (let* ((_g4038640405_
                                                      (lambda (_g4038740402_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g4038740402_)))
                                                     (_g4038540510_
                                                      (lambda (_g4038740408_)
                                                        (if (gx#stx-pair?
                                                             _g4038740408_)
                                                            (let ((_e4038940410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _g4038740408_)))
                      (let ((_hd4039040413_
                             (let ()
                               (declare (not safe))
                               (##car _e4038940410_)))
                            (_tl4039140415_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4038940410_))))
                        (if (gx#stx-pair/null? _tl4039140415_)
                            (let ((_g42625_
                                   (gx#syntax-split-splice _tl4039140415_ '0)))
                              (begin
                                (let ((_g42626_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g42625_)
                                             (##vector-length _g42625_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g42626_ 2)))
                                      (error "Context expects 2 values"
                                             _g42626_)))
                                (let ((_target4039240418_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42625_ 0)))
                                      (_tl4039440420_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g42625_ 1))))
                                  (if (gx#stx-null? _tl4039440420_)
                                      (letrec ((_loop4039540423_
                                                (lambda (_hd4039340426_
                                                         _clause4039940428_)
                                                  (if (gx#stx-pair?
                                                       _hd4039340426_)
                                                      (let ((_e4039640431_
                                                             (gx#stx-e
                                                              _hd4039340426_)))
                                                        (let ((_lp-hd4039740434_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e4039640431_)))
                      (_lp-tl4039840436_
                       (let () (declare (not safe)) (##cdr _e4039640431_))))
                  (_loop4039540423_
                   _lp-tl4039840436_
                   (cons _lp-hd4039740434_ _clause4039940428_))))
              (let ((_clause4040040439_ (reverse _clause4039940428_)))
                ((lambda (_L40442_)
                   (for-each
                    (lambda (_clause40455_)
                      (let* ((_g4045740468_
                              (lambda (_g4045840465_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4045840465_)))
                             (_g4045640500_
                              (lambda (_g4045840471_)
                                (if (gx#stx-pair? _g4045840471_)
                                    (let ((_e4046140473_
                                           (gx#stx-e _g4045840471_)))
                                      (let ((_hd4046240476_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4046140473_)))
                                            (_tl4046340478_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4046140473_))))
                                        ((lambda (_L40481_ _L40482_)
                                           (let ((_self40494_
                                                  (list-ref
                                                   _L40482_
                                                   _self-index40021_)))
                                             (for-each
                                              (lambda (_g4049540497_)
                                                (gxc#apply-collect-object-refs
                                                 _g4049540497_
                                                 _self40494_
                                                 _method-calls37726_
                                                 _slot-refs37727_
                                                 _class-type-check37728_
                                                 _struct-type-check37729_
                                                 _struct-type-assert37730_))
                                              _L40481_)))
                                         _tl4046340478_
                                         _hd4046240476_)))
                                    (_g4045740468_ _g4045840471_)))))
                        (_g4045640500_ _clause40455_)))
                    (foldr1 (lambda (_g4050240505_ _g4050340507_)
                              (cons _g4050240505_ _g4050340507_))
                            '()
                            _L40442_)))
                 _clause4040040439_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4039540423_
                                         _target4039240418_
                                         '()))
                                      (_g4038640405_ _g4038740408_)))))
                            (_g4038640405_ _g4038740408_))))
                    (_g4038640405_ _g4038740408_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4038540510_ _L40303_))
                                              (if (_no-specializer?37733_)
                                                  _stx37632_
                                                  (let* ((_specializer-id40519_
                                                          (let* ((_id40513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol (gx#stx-e _L37707_) '"::specialize"))
                         (_specializer-id40516_
                          (gx#core-quote-syntax__1
                           _id40513_
                           (gx#stx-source _stx37632_))))
                    (gx#core-bind-runtime!__0 _specializer-id40516_)
                    _specializer-id40516_))
                 (_lifted-specializer-id40526_
                  (if (_lift-unchecked-specializer?37735_)
                      (let* ((_id40521_
                              (make-symbol
                               (gx#stx-e _L37707_)
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id40523_
                              (gx#core-quote-syntax__1
                               _id40521_
                               (gx#stx-source _stx37632_))))
                        (gx#core-bind-runtime!__0 _lifted-specializer-id40523_)
                        _lifted-specializer-id40523_)
                      '#f))
                 (_$t40528_ (make-symbol (gensym '__t)))
                 (_methods40530_ (hash-keys _method-calls37726_))
                 (_$methods40534_
                  (map (lambda (_id40532_)
                         (make-symbol '"__" (gensym _id40532_)))
                       _methods40530_))
                 (_g42627_
                  (for-each
                   (lambda (_g4053540538_ _g4053640540_)
                     (table-set!
                      _method-calls37726_
                      _g4053540538_
                      _g4053640540_))
                   _methods40530_
                   _$methods40534_))
                 (_methods-bind40551_
                  (map (lambda (_g4054340546_ _g4054440548_)
                         (_generate-method-bind37634_
                          _$t40528_
                          _g4054340546_
                          _g4054440548_))
                       _methods40530_
                       _$methods40534_))
                 (_slots40553_ (hash-keys _slot-refs37727_))
                 (_$slots40557_
                  (map (lambda (_id40555_)
                         (make-symbol '"__" (gensym _id40555_)))
                       _slots40553_))
                 (_g42628_
                  (for-each
                   (lambda (_g4055840561_ _g4055940563_)
                     (table-set! _slot-refs37727_ _g4055840561_ _g4055940563_))
                   _slots40553_
                   _$slots40557_))
                 (_slots-bind40574_
                  (map (lambda (_g4056640569_ _g4056740571_)
                         (_generate-slot-bind37635_
                          _$t40528_
                          _g4056640569_
                          _g4056740571_))
                       _slots40553_
                       _$slots40557_))
                 (_class-check40576_ (hash-keys _class-type-check37728_))
                 (_$class-check40579_
                  (map (lambda (_g42629_) (make-symbol (gensym '__class)))
                       _class-check40576_))
                 (_g42630_
                  (for-each
                   (lambda (_g4058040583_ _g4058140585_)
                     (table-set!
                      _class-type-check37728_
                      _g4058040583_
                      _g4058140585_))
                   _class-check40576_
                   _$class-check40579_))
                 (_class-check-bind40596_
                  (map (lambda (_g4058840591_ _g4058940593_)
                         (_generate-class-check-bind37636_
                          _$t40528_
                          _g4058840591_
                          _g4058940593_))
                       _class-check40576_
                       _$class-check40579_))
                 (_struct-check-all40598_
                  (hash-merge
                   _struct-type-check37729_
                   _struct-type-assert37730_))
                 (_struct-check40600_ (hash-keys _struct-check-all40598_))
                 (_$struct-check40603_
                  (map (lambda (_g42631_) (make-symbol (gensym '__class)))
                       _struct-check40600_))
                 (_g42632_
                  (for-each
                   (lambda (_g4060440607_ _g4060540609_)
                     (table-set!
                      _struct-check-all40598_
                      _g4060440607_
                      _g4060540609_))
                   _struct-check40600_
                   _$struct-check40603_))
                 (_struct-check-bind40620_
                  (map (lambda (_g4061240615_ _g4061340617_)
                         (_generate-struct-check-bind37637_
                          _$t40528_
                          _g4061240615_
                          _g4061340617_))
                       _struct-check40600_
                       _$struct-check40603_))
                 (_make-specializer-lambda-expr40706_
                  (lambda (_struct-type-check140622_ _struct-type-check240623_)
                    (let* ((_g4062540639_
                            (lambda (_g4062640636_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4062640636_)))
                           (_g4062440703_
                            (lambda (_g4062640642_)
                              (if (gx#stx-pair? _g4062640642_)
                                  (let ((_e4062940644_
                                         (gx#stx-e _g4062640642_)))
                                    (let ((_hd4063040647_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4062940644_)))
                                          (_tl4063140649_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4062940644_))))
                                      (if (gx#stx-pair? _tl4063140649_)
                                          (let ((_e4063240652_
                                                 (gx#stx-e _tl4063140649_)))
                                            (let ((_hd4063340655_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4063240652_)))
                                                  (_tl4063440657_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4063240652_))))
                                              ((lambda (_L40660_ _L40661_)
                                                 (let* ((_self40694_
                                                         (list-ref
                                                          _L40661_
                                                          _self-index40021_))
                                                        (_body40700_
                                                         (map (lambda (_g4069540697_)
                                                                (gxc#apply-subst-object-refs
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g4069540697_
                         _self40694_
                         _$t40528_
                         _method-calls37726_
                         _slot-refs37727_
                         _class-type-check37728_
                         _struct-type-check140622_
                         _struct-type-check240623_))
                      _L40660_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gxc#xform-wrap-source
                                                    (cons '%#lambda
                                                          (cons _L40661_
                                                                _body40700_))
                                                    _L40304_)))
                                               _tl4063440657_
                                               _hd4063340655_)))
                                          (_g4062540639_ _g4062640642_))))
                                  (_g4062540639_ _g4062640642_)))))
                      (_g4062440703_ _L40304_))))
                 (_make-specializer-case-lambda-expr40845_
                  (lambda (_struct-type-check140708_ _struct-type-check240709_)
                    (let* ((_g4071140730_
                            (lambda (_g4071240727_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4071240727_)))
                           (_g4071040842_
                            (lambda (_g4071240733_)
                              (if (gx#stx-pair? _g4071240733_)
                                  (let ((_e4071440735_
                                         (gx#stx-e _g4071240733_)))
                                    (let ((_hd4071540738_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4071440735_)))
                                          (_tl4071640740_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4071440735_))))
                                      (if (gx#stx-pair/null? _tl4071640740_)
                                          (let ((_g42633_
                                                 (gx#syntax-split-splice
                                                  _tl4071640740_
                                                  '0)))
                                            (begin
                                              (let ((_g42634_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g42633_)
                                                           (##vector-length
                                                            _g42633_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g42634_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g42634_)))
                                              (let ((_target4071740743_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42633_
                                                        0)))
                                                    (_tl4071940745_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g42633_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl4071940745_)
                                                    (letrec ((_loop4072040748_
                                                              (lambda (_hd4071840751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause4072440753_)
                        (if (gx#stx-pair? _hd4071840751_)
                            (let ((_e4072140756_ (gx#stx-e _hd4071840751_)))
                              (let ((_lp-hd4072240759_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4072140756_)))
                                    (_lp-tl4072340761_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4072140756_))))
                                (_loop4072040748_
                                 _lp-tl4072340761_
                                 (cons _lp-hd4072240759_ _clause4072440753_))))
                            (let ((_clause4072540764_
                                   (reverse _clause4072440753_)))
                              ((lambda (_L40767_)
                                 (let ((_clauses40840_
                                        (map (lambda (_clause40782_)
                                               (let* ((_g4078440795_
                                                       (lambda (_g4078540792_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g4078540792_)))
                                                      (_g4078340830_
                                                       (lambda (_g4078540798_)
                                                         (if (gx#stx-pair?
                                                              _g4078540798_)
                                                             (let ((_e4078840800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _g4078540798_)))
                       (let ((_hd4078940803_
                              (let ()
                                (declare (not safe))
                                (##car _e4078840800_)))
                             (_tl4079040805_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4078840800_))))
                         ((lambda (_L40808_ _L40809_)
                            (let* ((_self40821_
                                    (list-ref _L40809_ _self-index40021_))
                                   (_body40827_
                                    (map (lambda (_g4082240824_)
                                           (gxc#apply-subst-object-refs
                                            _g4082240824_
                                            _self40821_
                                            _$t40528_
                                            _method-calls37726_
                                            _slot-refs37727_
                                            _class-type-check37728_
                                            _struct-type-check140708_
                                            _struct-type-check240709_))
                                         _L40808_)))
                              (cons _L40809_ _body40827_)))
                          _tl4079040805_
                          _hd4078940803_)))
                     (_g4078440795_ _g4078540798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4078340830_
                                                  _clause40782_)))
                                             (foldr1 (lambda (_g4083240835_
                                                              _g4083340837_)
                                                       (cons _g4083240835_
                                                             _g4083340837_))
                                                     '()
                                                     _L40767_))))
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses40840_)
                                    _L40303_)))
                               _clause4072540764_))))))
              (_loop4072040748_ _target4071740743_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4071140730_
                                                     _g4071240733_)))))
                                          (_g4071140730_ _g4071240733_))))
                                  (_g4071140730_ _g4071240733_)))))
                      (_g4071040842_ _L40303_))))
                 (_make-specializer-impl40850_
                  (lambda (_specializer-lambda-expr40847_
                           _specializer-case-lambda-expr40848_)
                    (gxc#xform-wrap-source
                     (cons '%#let-values
                           (cons (cons (cons (cons _L39722_ '())
                                             (cons (cons '%#let-values
                                                         (cons (cons (cons (cons _L39721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons (cons (cons (cons _L40305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _specializer-lambda-expr40847_ '()))
                    '())
              (cons _specializer-case-lambda-expr40848_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx37632_)
                                         '()))
                             '())
                       (cons _L39719_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons _L39718_ '())))
                     _stx37632_)))
                 (_specializer-lambda-expr40852_
                  (_make-specializer-lambda-expr40706_
                   _struct-check-all40598_
                   _empty37731_))
                 (_specializer-case-lambda-expr40854_
                  (_make-specializer-case-lambda-expr40845_
                   _struct-check-all40598_
                   _empty37731_))
                 (_specializer-impl40856_
                  (_make-specializer-impl40850_
                   _specializer-lambda-expr40852_
                   _specializer-case-lambda-expr40854_))
                 (_unchecked-specializer-lambda-expr40858_
                  (if (_unchecked-specializer?37734_)
                      (_make-specializer-lambda-expr40706_
                       _empty37731_
                       _struct-check-all40598_)
                      '#f))
                 (_unchecked-specializer-case-lambda-expr40860_
                  (if (_unchecked-specializer?37734_)
                      (_make-specializer-case-lambda-expr40845_
                       _empty37731_
                       _struct-check-all40598_)
                      '#f))
                 (_unchecked-specializer-impl40862_
                  (if (_unchecked-specializer?37734_)
                      (_make-specializer-impl40850_
                       _unchecked-specializer-lambda-expr40858_
                       _unchecked-specializer-case-lambda-expr40860_)
                      '#f))
                 (_specializer-impl40864_
                  (_generate-specializer-impl37638_
                   _$t40528_
                   _methods-bind40551_
                   _slots-bind40574_
                   _class-check-bind40596_
                   _struct-check-bind40620_
                   _specializer-impl40856_
                   _lifted-specializer-id40526_
                   _unchecked-specializer-impl40862_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     (gx#stx-e _L37707_)
                                                     '" => "
                                                     (gx#stx-e
                                                      _specializer-id40519_))
                                                    (_generate-specializer-def37639_
                                                     _L37707_
                                                     _specializer-id40519_
                                                     _specializer-impl40864_
                                                     _lifted-specializer-id40526_
                                                     _unchecked-specializer-impl40862_))))
                                            _hd4023640298_
                                            _hd4023340290_
                                            _hd4023040282_)
                                           (_g4021240242_ _g4021340245_))))
                                   (_g4021240242_ _g4021340245_))
                               (_g4021240242_ _g4021340245_))
                           (_g4021240242_ _g4021340245_))))
                   (_g4021240242_ _g4021340245_))
               (_g4021240242_ _g4021340245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4021240242_ _g4021340245_))))
                                       (_g4021240242_ _g4021340245_))))
                               (_g4021240242_ _g4021340245_))))
                       (_g4021240242_ _g4021340245_))))
               (_g4021240242_ _g4021340245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g4021140867_ _L39720_))
                                         _stx37632_))))
                             _hd3981739940_
                             _kw-ref3981539961_
                             _hd3980539927_
                             _hd3979639903_
                             _hd3978739879_)
                            (_g3976139823_ _g3976239826_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3981039945_
                                                 _target3980739932_
                                                 '()))
                                              (_g3976139823_ _g3976239826_))))
                                      (_g3976139823_ _g3976239826_)))))
                            (_g3976139823_ _g3976239826_))
                        (_g3976139823_ _g3976239826_))
                    (_g3976139823_ _g3976239826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3976139823_
                                                     _g3976239826_))
                                                (_g3976139823_ _g3976239826_))
                                            (_g3976139823_ _g3976239826_))))
                                    (_g3976139823_ _g3976239826_))))
                            (_g3976139823_ _g3976239826_))
                        (_g3976139823_ _g3976239826_))))
                (_g3976139823_ _g3976239826_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3976139823_
                                                     _g3976239826_))
                                                (_g3976139823_
                                                 _g3976239826_))))
                                        (_g3976139823_ _g3976239826_))))
                                (_g3976139823_ _g3976239826_))
                            (_g3976139823_ _g3976239826_))))
                    (_g3976139823_ _g3976239826_))
                (_g3976139823_ _g3976239826_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3976139823_
                                                     _g3976239826_))))
                                            (_g3976139823_ _g3976239826_))))
                                    (_g3976139823_ _g3976239826_))
                                (_g3976139823_ _g3976239826_))
                            (_g3976139823_ _g3976239826_))))
                    (_g3976139823_ _g3976239826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3976139823_
                                                     _g3976239826_))))
                                            (_g3976139823_ _g3976239826_))
                                        (_g3976139823_ _g3976239826_))
                                    (_g3976139823_ _g3976239826_))))
                            (_g3976139823_ _g3976239826_)))))
                (_g3976040870_ _L39719_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd3959539713_
                                                    _hd3959239705_
                                                    _hd3958939697_
                                                    _hd3958639689_
                                                    _hd3956839641_)
                                                   (_g3954839601_
                                                    _g3954939604_))))
                                           (_g3954839601_ _g3954939604_))
                                       (_g3954839601_ _g3954939604_))
                                   (_g3954839601_ _g3954939604_))
                               (_g3954839601_ _g3954939604_))))
                       (_g3954839601_ _g3954939604_))
                   (_g3954839601_ _g3954939604_))
               (_g3954839601_ _g3954939604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3954839601_ _g3954939604_))
                                           (_g3954839601_ _g3954939604_))))
                                   (_g3954839601_ _g3954939604_))))
                           (_g3954839601_ _g3954939604_))))
                   (_g3954839601_ _g3954939604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3954839601_
                                                    _g3954939604_))
                                               (_g3954839601_ _g3954939604_))
                                           (_g3954839601_ _g3954939604_))))
                                   (_g3954839601_ _g3954939604_))))
                           (_g3954839601_ _g3954939604_))
                       (_g3954839601_ _g3954939604_))))
               (_g3954839601_ _g3954939604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3954839601_ _g3954939604_))))
                                       (_g3954839601_ _g3954939604_))))
                               (_g3954839601_ _g3954939604_))
                           (_g3954839601_ _g3954939604_))
                       (_g3954839601_ _g3954939604_))))
               (_g3954839601_ _g3954939604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g3954740873_ _L37706_))
                                         _stx37632_))))))))
                  (___kont4108241083_ (lambda () _stx37632_)))
              (let ((___match4111141112_
                     (lambda (_e3764637674_
                              _hd3764737677_
                              _tl3764837679_
                              _e3764937682_
                              _hd3765037685_
                              _tl3765137687_
                              _e3765237690_
                              _hd3765337693_
                              _tl3765437695_
                              _e3765537698_
                              _hd3765637701_
                              _tl3765737703_)
                       (let ((_L37706_ _hd3765637701_)
                             (_L37707_ _hd3765337693_))
                         (if (gxc#optimizer-top-level-method?
                              (gxc#identifier-symbol _L37707_))
                             (___kont4108041081_ _L37706_ _L37707_)
                             (___kont4108241083_))))))
                (if (gx#stx-pair? ___stx4107841079_)
                    (let ((_e3764637674_ (gx#stx-e ___stx4107841079_)))
                      (let ((_tl3764837679_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3764637674_)))
                            (_hd3764737677_
                             (let ()
                               (declare (not safe))
                               (##car _e3764637674_))))
                        (if (gx#stx-pair? _tl3764837679_)
                            (let ((_e3764937682_ (gx#stx-e _tl3764837679_)))
                              (let ((_tl3765137687_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3764937682_)))
                                    (_hd3765037685_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3764937682_))))
                                (if (gx#stx-pair? _hd3765037685_)
                                    (let ((_e3765237690_
                                           (gx#stx-e _hd3765037685_)))
                                      (let ((_tl3765437695_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3765237690_)))
                                            (_hd3765337693_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3765237690_))))
                                        (if (gx#stx-null? _tl3765437695_)
                                            (if (gx#stx-pair? _tl3765137687_)
                                                (let ((_e3765537698_
                                                       (gx#stx-e
                                                        _tl3765137687_)))
                                                  (let ((_tl3765737703_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3765537698_)))
                                                        (_hd3765637701_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3765537698_))))
                                                    (if (gx#stx-null?
                                                         _tl3765737703_)
                                                        (___match4111141112_
                                                         _e3764637674_
                                                         _hd3764737677_
                                                         _tl3764837679_
                                                         _e3764937682_
                                                         _hd3765037685_
                                                         _tl3765137687_
                                                         _e3765237690_
                                                         _hd3765337693_
                                                         _tl3765437695_
                                                         _e3765537698_
                                                         _hd3765637701_
                                                         _tl3765737703_)
                                                        (___kont4108241083_))))
                                                (___kont4108241083_))
                                            (___kont4108241083_))))
                                    (___kont4108241083_))))
                            (___kont4108241083_))))
                    (___kont4108241083_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx36134_
               _self36135_
               _methods36136_
               _slots36137_
               _class-check36138_
               _struct-check36139_
               _struct-assert36140_)
        (let* ((___stx4111441115_ _stx36134_)
               (_g3615236470_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4111441115_))))
          (let ((___kont4111641117_
                 (lambda (_L37581_ _L37582_ _L37583_ _L37584_)
                   (table-set! _methods36136_ (gx#stx-e _L37582_) '#t)
                   (for-each
                    (lambda (_g3761737619_)
                      (gxc#compile-e
                       _g3761737619_
                       _self36135_
                       _methods36136_
                       _slots36137_
                       _class-check36138_
                       _struct-check36139_
                       _struct-assert36140_))
                    (foldr1 (lambda (_g3762137624_ _g3762237626_)
                              (cons _g3762137624_ _g3762237626_))
                            '()
                            _L37581_))))
                (___kont4112041121_
                 (lambda (_L37416_ _L37417_ _L37418_ _L37419_ _L37420_)
                   (table-set! _methods36136_ (gx#stx-e _L37417_) '#t)
                   (for-each
                    (lambda (_g3746037462_)
                      (gxc#compile-e
                       _g3746037462_
                       _self36135_
                       _methods36136_
                       _slots36137_
                       _class-check36138_
                       _struct-check36139_
                       _struct-assert36140_))
                    (foldr1 (lambda (_g3746437467_ _g3746537469_)
                              (cons _g3746437467_ _g3746537469_))
                            '()
                            _L37416_))))
                (___kont4112441125_
                 (lambda (_L37249_ _L37250_ _L37251_)
                   (table-set! _slots36137_ (gx#stx-e _L37249_) '#t)))
                (___kont4112641127_
                 (lambda (_L37126_ _L37127_ _L37128_ _L37129_)
                   (table-set! _slots36137_ (gx#stx-e _L37127_) '#t)
                   (gxc#compile-e
                    _L37126_
                    _self36135_
                    _methods36136_
                    _slots36137_
                    _class-check36138_
                    _struct-check36139_
                    _struct-assert36140_)))
                (___kont4112841129_
                 (lambda (_L37010_ _L37011_)
                   (table-set!
                    _slots36137_
                    (##structure-ref
                     (gxc#optimizer-resolve-type
                      (gxc#identifier-symbol _L37011_))
                     '2
                     gxc#!class-getf::t
                     '#f)
                    '#t)))
                (___kont4113041131_
                 (lambda (_L36922_ _L36923_ _L36924_)
                   (table-set!
                    _slots36137_
                    (##structure-ref
                     (gxc#optimizer-resolve-type
                      (gxc#identifier-symbol _L36924_))
                     '2
                     gxc#!class-setf::t
                     '#f)
                    '#t)
                   (gxc#compile-e
                    _L36922_
                    _self36135_
                    _methods36136_
                    _slots36137_
                    _class-check36138_
                    _struct-check36139_
                    _struct-assert36140_)))
                (___kont4113241133_
                 (lambda (_L36830_ _L36831_)
                   (table-set!
                    _class-check36138_
                    (##structure-ref
                     (gxc#optimizer-resolve-type
                      (gxc#identifier-symbol _L36831_))
                     '1
                     gxc#!type::t
                     '#f)
                    '#t)))
                (___kont4113441135_
                 (lambda (_L36746_ _L36747_)
                   (table-set!
                    _struct-check36139_
                    (##structure-ref
                     (gxc#optimizer-resolve-type
                      (gxc#identifier-symbol _L36747_))
                     '1
                     gxc#!type::t
                     '#f)
                    '#t)))
                (___kont4113641137_
                 (lambda (_L36649_ _L36650_)
                   (let ((_getf36683_
                          (gxc#optimizer-resolve-type
                           (gxc#identifier-symbol _L36650_))))
                     (if (##structure-ref
                          _getf36683_
                          '3
                          gxc#!struct-getf::t
                          '#f)
                         '#!void
                         (table-set!
                          _struct-assert36140_
                          (##structure-ref _getf36683_ '1 gxc#!type::t '#f)
                          '#t)))))
                (___kont4113841139_
                 (lambda (_L36546_ _L36547_ _L36548_)
                   (let ((_setf36586_
                          (gxc#optimizer-resolve-type
                           (gxc#identifier-symbol _L36548_))))
                     (if (##structure-ref
                          _setf36586_
                          '3
                          gxc#!struct-setf::t
                          '#f)
                         '#!void
                         (table-set!
                          _struct-assert36140_
                          (##structure-ref _setf36586_ '1 gxc#!type::t '#f)
                          '#t))
                     (gxc#compile-e
                      _L36546_
                      _self36135_
                      _methods36136_
                      _slots36137_
                      _class-check36138_
                      _struct-check36139_
                      _struct-assert36140_))))
                (___kont4114041141_
                 (lambda ()
                   (gxc#collect-operands
                    _stx36134_
                    _self36135_
                    _methods36136_
                    _slots36137_
                    _class-check36138_
                    _struct-check36139_
                    _struct-assert36140_))))
            (let* ((___match4185141852_
                    (lambda (_e3644236482_
                             _hd3644336485_
                             _tl3644436487_
                             _e3644536490_
                             _hd3644636493_
                             _tl3644736495_
                             _e3644836498_
                             _hd3644936501_
                             _tl3645036503_
                             _e3645136506_
                             _hd3645236509_
                             _tl3645336511_
                             _e3645436514_
                             _hd3645536517_
                             _tl3645636519_
                             _e3645736522_
                             _hd3645836525_
                             _tl3645936527_
                             _e3646036530_
                             _hd3646136533_
                             _tl3646236535_
                             _e3646336538_
                             _hd3646436541_
                             _tl3646536543_)
                      (let ((_L36546_ _hd3646436541_)
                            (_L36547_ _hd3646136533_)
                            (_L36548_ _hd3645236509_))
                        (if (if (not (gx#free-identifier=?
                                      _L36547_
                                      _self36135_))
                                '#f
                                (let ((_$e36575_
                                       (gxc#optimizer-resolve-type
                                        (gxc#identifier-symbol _L36548_))))
                                  (and _$e36575_
                                       ((lambda (_t36578_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t36578_
                                                  'gxc#!struct-setf::t))
                                               (let ((_struct-t3657936581_
                                                      (gxc#optimizer-resolve-type
                                                       (##structure-ref
                                                        _t36578_
                                                        '1
                                                        gxc#!type::t
                                                        '#f))))
                                                 (and _struct-t3657936581_
                                                      (let ((_struct-t36584_
                                                             _struct-t3657936581_))
                                                        (##structure-ref
                                                         _struct-t36584_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e36575_))))
                            (___kont4113841139_ _L36546_ _L36547_ _L36548_)
                            (___kont4114041141_)))))
                   (___match4184341844_
                    (lambda (_e3644236482_
                             _hd3644336485_
                             _tl3644436487_
                             _e3644536490_
                             _hd3644636493_
                             _tl3644736495_
                             _e3644836498_
                             _hd3644936501_
                             _tl3645036503_
                             _e3645136506_
                             _hd3645236509_
                             _tl3645336511_
                             _e3645436514_
                             _hd3645536517_
                             _tl3645636519_
                             _e3645736522_
                             _hd3645836525_
                             _tl3645936527_
                             _e3646036530_
                             _hd3646136533_
                             _tl3646236535_)
                      (if (gx#stx-pair? _tl3645636519_)
                          (let ((_e3646336538_ (gx#stx-e _tl3645636519_)))
                            (let ((_tl3646536543_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3646336538_)))
                                  (_hd3646436541_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3646336538_))))
                              (if (gx#stx-null? _tl3646536543_)
                                  (___match4185141852_
                                   _e3644236482_
                                   _hd3644336485_
                                   _tl3644436487_
                                   _e3644536490_
                                   _hd3644636493_
                                   _tl3644736495_
                                   _e3644836498_
                                   _hd3644936501_
                                   _tl3645036503_
                                   _e3645136506_
                                   _hd3645236509_
                                   _tl3645336511_
                                   _e3645436514_
                                   _hd3645536517_
                                   _tl3645636519_
                                   _e3645736522_
                                   _hd3645836525_
                                   _tl3645936527_
                                   _e3646036530_
                                   _hd3646136533_
                                   _tl3646236535_
                                   _e3646336538_
                                   _hd3646436541_
                                   _tl3646536543_)
                                  (___kont4114041141_))))
                          (___kont4114041141_))))
                   (___match4178941790_
                    (lambda (_e3641836593_
                             _hd3641936596_
                             _tl3642036598_
                             _e3642136601_
                             _hd3642236604_
                             _tl3642336606_
                             _e3642436609_
                             _hd3642536612_
                             _tl3642636614_
                             _e3642736617_
                             _hd3642836620_
                             _tl3642936622_
                             _e3643036625_
                             _hd3643136628_
                             _tl3643236630_
                             _e3643336633_
                             _hd3643436636_
                             _tl3643536638_
                             _e3643636641_
                             _hd3643736644_
                             _tl3643836646_)
                      (let ((_L36649_ _hd3643736644_)
                            (_L36650_ _hd3642836620_))
                        (if (if (not (gx#free-identifier=?
                                      _L36649_
                                      _self36135_))
                                '#f
                                (let ((_$e36672_
                                       (gxc#optimizer-resolve-type
                                        (gxc#identifier-symbol _L36650_))))
                                  (and _$e36672_
                                       ((lambda (_t36675_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t36675_
                                                  'gxc#!struct-getf::t))
                                               (let ((_struct-t3667636678_
                                                      (gxc#optimizer-resolve-type
                                                       (##structure-ref
                                                        _t36675_
                                                        '1
                                                        gxc#!type::t
                                                        '#f))))
                                                 (and _struct-t3667636678_
                                                      (let ((_struct-t36681_
                                                             _struct-t3667636678_))
                                                        (##structure-ref
                                                         _struct-t36681_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e36672_))))
                            (___kont4113641137_ _L36649_ _L36650_)
                            (___kont4114041141_)))))
                   (___match4173341734_
                    (lambda (_e3639536690_
                             _hd3639636693_
                             _tl3639736695_
                             _e3639836698_
                             _hd3639936701_
                             _tl3640036703_
                             _e3640136706_
                             _hd3640236709_
                             _tl3640336711_
                             _e3640436714_
                             _hd3640536717_
                             _tl3640636719_
                             _e3640736722_
                             _hd3640836725_
                             _tl3640936727_
                             _e3641036730_
                             _hd3641136733_
                             _tl3641236735_
                             _e3641336738_
                             _hd3641436741_
                             _tl3641536743_)
                      (let ((_L36746_ _hd3641436741_)
                            (_L36747_ _hd3640536717_))
                        (if (and (let ((__tmp42635
                                        (gxc#optimizer-resolve-type
                                         (gxc#identifier-symbol _L36747_))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp42635
                                    'gxc#!struct-pred::t))
                                 (gx#free-identifier=? _L36746_ _self36135_))
                            (___kont4113441135_ _L36746_ _L36747_)
                            (___match4178941790_
                             _e3639536690_
                             _hd3639636693_
                             _tl3639736695_
                             _e3639836698_
                             _hd3639936701_
                             _tl3640036703_
                             _e3640136706_
                             _hd3640236709_
                             _tl3640336711_
                             _e3640436714_
                             _hd3640536717_
                             _tl3640636719_
                             _e3640736722_
                             _hd3640836725_
                             _tl3640936727_
                             _e3641036730_
                             _hd3641136733_
                             _tl3641236735_
                             _e3641336738_
                             _hd3641436741_
                             _tl3641536743_)))))
                   (___match4167741678_
                    (lambda (_e3637236774_
                             _hd3637336777_
                             _tl3637436779_
                             _e3637536782_
                             _hd3637636785_
                             _tl3637736787_
                             _e3637836790_
                             _hd3637936793_
                             _tl3638036795_
                             _e3638136798_
                             _hd3638236801_
                             _tl3638336803_
                             _e3638436806_
                             _hd3638536809_
                             _tl3638636811_
                             _e3638736814_
                             _hd3638836817_
                             _tl3638936819_
                             _e3639036822_
                             _hd3639136825_
                             _tl3639236827_)
                      (let ((_L36830_ _hd3639136825_)
                            (_L36831_ _hd3638236801_))
                        (if (and (let ((__tmp42636
                                        (gxc#optimizer-resolve-type
                                         (gxc#identifier-symbol _L36831_))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp42636
                                    'gxc#!class-pred::t))
                                 (gx#free-identifier=? _L36830_ _self36135_))
                            (___kont4113241133_ _L36830_ _L36831_)
                            (___match4173341734_
                             _e3637236774_
                             _hd3637336777_
                             _tl3637436779_
                             _e3637536782_
                             _hd3637636785_
                             _tl3637736787_
                             _e3637836790_
                             _hd3637936793_
                             _tl3638036795_
                             _e3638136798_
                             _hd3638236801_
                             _tl3638336803_
                             _e3638436806_
                             _hd3638536809_
                             _tl3638636811_
                             _e3638736814_
                             _hd3638836817_
                             _tl3638936819_
                             _e3639036822_
                             _hd3639136825_
                             _tl3639236827_)))))
                   (___match4167541676_
                    (lambda (_e3637236774_
                             _hd3637336777_
                             _tl3637436779_
                             _e3637536782_
                             _hd3637636785_
                             _tl3637736787_
                             _e3637836790_
                             _hd3637936793_
                             _tl3638036795_
                             _e3638136798_
                             _hd3638236801_
                             _tl3638336803_
                             _e3638436806_
                             _hd3638536809_
                             _tl3638636811_
                             _e3638736814_
                             _hd3638836817_
                             _tl3638936819_
                             _e3639036822_
                             _hd3639136825_
                             _tl3639236827_)
                      (if (gx#stx-null? _tl3638636811_)
                          (___match4167741678_
                           _e3637236774_
                           _hd3637336777_
                           _tl3637436779_
                           _e3637536782_
                           _hd3637636785_
                           _tl3637736787_
                           _e3637836790_
                           _hd3637936793_
                           _tl3638036795_
                           _e3638136798_
                           _hd3638236801_
                           _tl3638336803_
                           _e3638436806_
                           _hd3638536809_
                           _tl3638636811_
                           _e3638736814_
                           _hd3638836817_
                           _tl3638936819_
                           _e3639036822_
                           _hd3639136825_
                           _tl3639236827_)
                          (___match4184341844_
                           _e3637236774_
                           _hd3637336777_
                           _tl3637436779_
                           _e3637536782_
                           _hd3637636785_
                           _tl3637736787_
                           _e3637836790_
                           _hd3637936793_
                           _tl3638036795_
                           _e3638136798_
                           _hd3638236801_
                           _tl3638336803_
                           _e3638436806_
                           _hd3638536809_
                           _tl3638636811_
                           _e3638736814_
                           _hd3638836817_
                           _tl3638936819_
                           _e3639036822_
                           _hd3639136825_
                           _tl3639236827_))))
                   (___match4162141622_
                    (lambda (_e3634636858_
                             _hd3634736861_
                             _tl3634836863_
                             _e3634936866_
                             _hd3635036869_
                             _tl3635136871_
                             _e3635236874_
                             _hd3635336877_
                             _tl3635436879_
                             _e3635536882_
                             _hd3635636885_
                             _tl3635736887_
                             _e3635836890_
                             _hd3635936893_
                             _tl3636036895_
                             _e3636136898_
                             _hd3636236901_
                             _tl3636336903_
                             _e3636436906_
                             _hd3636536909_
                             _tl3636636911_
                             _e3636736914_
                             _hd3636836917_
                             _tl3636936919_)
                      (let ((_L36922_ _hd3636836917_)
                            (_L36923_ _hd3636536909_)
                            (_L36924_ _hd3635636885_))
                        (if (and (let ((__tmp42637
                                        (gxc#optimizer-resolve-type
                                         (gxc#identifier-symbol _L36924_))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp42637
                                    'gxc#!class-setf::t))
                                 (gx#free-identifier=? _L36923_ _self36135_))
                            (___kont4113041131_ _L36922_ _L36923_ _L36924_)
                            (___match4185141852_
                             _e3634636858_
                             _hd3634736861_
                             _tl3634836863_
                             _e3634936866_
                             _hd3635036869_
                             _tl3635136871_
                             _e3635236874_
                             _hd3635336877_
                             _tl3635436879_
                             _e3635536882_
                             _hd3635636885_
                             _tl3635736887_
                             _e3635836890_
                             _hd3635936893_
                             _tl3636036895_
                             _e3636136898_
                             _hd3636236901_
                             _tl3636336903_
                             _e3636436906_
                             _hd3636536909_
                             _tl3636636911_
                             _e3636736914_
                             _hd3636836917_
                             _tl3636936919_)))))
                   (___match4161941620_
                    (lambda (_e3634636858_
                             _hd3634736861_
                             _tl3634836863_
                             _e3634936866_
                             _hd3635036869_
                             _tl3635136871_
                             _e3635236874_
                             _hd3635336877_
                             _tl3635436879_
                             _e3635536882_
                             _hd3635636885_
                             _tl3635736887_
                             _e3635836890_
                             _hd3635936893_
                             _tl3636036895_
                             _e3636136898_
                             _hd3636236901_
                             _tl3636336903_
                             _e3636436906_
                             _hd3636536909_
                             _tl3636636911_
                             _e3636736914_
                             _hd3636836917_
                             _tl3636936919_)
                      (if (gx#stx-null? _tl3636936919_)
                          (___match4162141622_
                           _e3634636858_
                           _hd3634736861_
                           _tl3634836863_
                           _e3634936866_
                           _hd3635036869_
                           _tl3635136871_
                           _e3635236874_
                           _hd3635336877_
                           _tl3635436879_
                           _e3635536882_
                           _hd3635636885_
                           _tl3635736887_
                           _e3635836890_
                           _hd3635936893_
                           _tl3636036895_
                           _e3636136898_
                           _hd3636236901_
                           _tl3636336903_
                           _e3636436906_
                           _hd3636536909_
                           _tl3636636911_
                           _e3636736914_
                           _hd3636836917_
                           _tl3636936919_)
                          (___kont4114041141_))))
                   (___match4161341614_
                    (lambda (_e3634636858_
                             _hd3634736861_
                             _tl3634836863_
                             _e3634936866_
                             _hd3635036869_
                             _tl3635136871_
                             _e3635236874_
                             _hd3635336877_
                             _tl3635436879_
                             _e3635536882_
                             _hd3635636885_
                             _tl3635736887_
                             _e3635836890_
                             _hd3635936893_
                             _tl3636036895_
                             _e3636136898_
                             _hd3636236901_
                             _tl3636336903_
                             _e3636436906_
                             _hd3636536909_
                             _tl3636636911_)
                      (if (gx#stx-pair? _tl3636036895_)
                          (let ((_e3636736914_ (gx#stx-e _tl3636036895_)))
                            (let ((_tl3636936919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3636736914_)))
                                  (_hd3636836917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3636736914_))))
                              (if (gx#stx-null? _tl3636936919_)
                                  (___match4162141622_
                                   _e3634636858_
                                   _hd3634736861_
                                   _tl3634836863_
                                   _e3634936866_
                                   _hd3635036869_
                                   _tl3635136871_
                                   _e3635236874_
                                   _hd3635336877_
                                   _tl3635436879_
                                   _e3635536882_
                                   _hd3635636885_
                                   _tl3635736887_
                                   _e3635836890_
                                   _hd3635936893_
                                   _tl3636036895_
                                   _e3636136898_
                                   _hd3636236901_
                                   _tl3636336903_
                                   _e3636436906_
                                   _hd3636536909_
                                   _tl3636636911_
                                   _e3636736914_
                                   _hd3636836917_
                                   _tl3636936919_)
                                  (___kont4114041141_))))
                          (___match4167541676_
                           _e3634636858_
                           _hd3634736861_
                           _tl3634836863_
                           _e3634936866_
                           _hd3635036869_
                           _tl3635136871_
                           _e3635236874_
                           _hd3635336877_
                           _tl3635436879_
                           _e3635536882_
                           _hd3635636885_
                           _tl3635736887_
                           _e3635836890_
                           _hd3635936893_
                           _tl3636036895_
                           _e3636136898_
                           _hd3636236901_
                           _tl3636336903_
                           _e3636436906_
                           _hd3636536909_
                           _tl3636636911_))))
                   (___match4155941560_
                    (lambda (_e3632236954_
                             _hd3632336957_
                             _tl3632436959_
                             _e3632536962_
                             _hd3632636965_
                             _tl3632736967_
                             _e3632836970_
                             _hd3632936973_
                             _tl3633036975_
                             _e3633136978_
                             _hd3633236981_
                             _tl3633336983_
                             _e3633436986_
                             _hd3633536989_
                             _tl3633636991_
                             _e3633736994_
                             _hd3633836997_
                             _tl3633936999_
                             _e3634037002_
                             _hd3634137005_
                             _tl3634237007_)
                      (let ((_L37010_ _hd3634137005_)
                            (_L37011_ _hd3633236981_))
                        (if (and (let ((__tmp42638
                                        (gxc#optimizer-resolve-type
                                         (gxc#identifier-symbol _L37011_))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp42638
                                    'gxc#!class-getf::t))
                                 (gx#free-identifier=? _L37010_ _self36135_))
                            (___kont4112841129_ _L37010_ _L37011_)
                            (___match4167741678_
                             _e3632236954_
                             _hd3632336957_
                             _tl3632436959_
                             _e3632536962_
                             _hd3632636965_
                             _tl3632736967_
                             _e3632836970_
                             _hd3632936973_
                             _tl3633036975_
                             _e3633136978_
                             _hd3633236981_
                             _tl3633336983_
                             _e3633436986_
                             _hd3633536989_
                             _tl3633636991_
                             _e3633736994_
                             _hd3633836997_
                             _tl3633936999_
                             _e3634037002_
                             _hd3634137005_
                             _tl3634237007_)))))
                   (___match4155741558_
                    (lambda (_e3632236954_
                             _hd3632336957_
                             _tl3632436959_
                             _e3632536962_
                             _hd3632636965_
                             _tl3632736967_
                             _e3632836970_
                             _hd3632936973_
                             _tl3633036975_
                             _e3633136978_
                             _hd3633236981_
                             _tl3633336983_
                             _e3633436986_
                             _hd3633536989_
                             _tl3633636991_
                             _e3633736994_
                             _hd3633836997_
                             _tl3633936999_
                             _e3634037002_
                             _hd3634137005_
                             _tl3634237007_)
                      (if (gx#stx-null? _tl3633636991_)
                          (___match4155941560_
                           _e3632236954_
                           _hd3632336957_
                           _tl3632436959_
                           _e3632536962_
                           _hd3632636965_
                           _tl3632736967_
                           _e3632836970_
                           _hd3632936973_
                           _tl3633036975_
                           _e3633136978_
                           _hd3633236981_
                           _tl3633336983_
                           _e3633436986_
                           _hd3633536989_
                           _tl3633636991_
                           _e3633736994_
                           _hd3633836997_
                           _tl3633936999_
                           _e3634037002_
                           _hd3634137005_
                           _tl3634237007_)
                          (___match4161341614_
                           _e3632236954_
                           _hd3632336957_
                           _tl3632436959_
                           _e3632536962_
                           _hd3632636965_
                           _tl3632736967_
                           _e3632836970_
                           _hd3632936973_
                           _tl3633036975_
                           _e3633136978_
                           _hd3633236981_
                           _tl3633336983_
                           _e3633436986_
                           _hd3633536989_
                           _tl3633636991_
                           _e3633736994_
                           _hd3633836997_
                           _tl3633936999_
                           _e3634037002_
                           _hd3634137005_
                           _tl3634237007_))))
                   (___match4150341504_
                    (lambda (_e3628737038_
                             _hd3628837041_
                             _tl3628937043_
                             _e3629037046_
                             _hd3629137049_
                             _tl3629237051_
                             _e3629337054_
                             _hd3629437057_
                             _tl3629537059_
                             _e3629637062_
                             _hd3629737065_
                             _tl3629837067_
                             _e3629937070_
                             _hd3630037073_
                             _tl3630137075_
                             _e3630237078_
                             _hd3630337081_
                             _tl3630437083_
                             _e3630537086_
                             _hd3630637089_
                             _tl3630737091_
                             _e3630837094_
                             _hd3630937097_
                             _tl3631037099_
                             _e3631137102_
                             _hd3631237105_
                             _tl3631337107_
                             _e3631437110_
                             _hd3631537113_
                             _tl3631637115_
                             _e3631737118_
                             _hd3631837121_
                             _tl3631937123_)
                      (let ((_L37126_ _hd3631837121_)
                            (_L37127_ _hd3631537113_)
                            (_L37128_ _hd3630637089_)
                            (_L37129_ _hd3629737065_))
                        (if (and (or (gxc#runtime-identifier=?
                                      _L37129_
                                      'slot-set!)
                                     (gxc#runtime-identifier=?
                                      _L37129_
                                      'unchecked-slot-set!))
                                 (gx#free-identifier=? _L37128_ _self36135_))
                            (___kont4112641127_
                             _L37126_
                             _L37127_
                             _L37128_
                             _L37129_)
                            (___kont4114041141_)))))
                   (___match4149541496_
                    (lambda (_e3628737038_
                             _hd3628837041_
                             _tl3628937043_
                             _e3629037046_
                             _hd3629137049_
                             _tl3629237051_
                             _e3629337054_
                             _hd3629437057_
                             _tl3629537059_
                             _e3629637062_
                             _hd3629737065_
                             _tl3629837067_
                             _e3629937070_
                             _hd3630037073_
                             _tl3630137075_
                             _e3630237078_
                             _hd3630337081_
                             _tl3630437083_
                             _e3630537086_
                             _hd3630637089_
                             _tl3630737091_
                             _e3630837094_
                             _hd3630937097_
                             _tl3631037099_
                             _e3631137102_
                             _hd3631237105_
                             _tl3631337107_
                             _e3631437110_
                             _hd3631537113_
                             _tl3631637115_)
                      (if (gx#stx-pair? _tl3631037099_)
                          (let ((_e3631737118_ (gx#stx-e _tl3631037099_)))
                            (let ((_tl3631937123_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3631737118_)))
                                  (_hd3631837121_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3631737118_))))
                              (if (gx#stx-null? _tl3631937123_)
                                  (___match4150341504_
                                   _e3628737038_
                                   _hd3628837041_
                                   _tl3628937043_
                                   _e3629037046_
                                   _hd3629137049_
                                   _tl3629237051_
                                   _e3629337054_
                                   _hd3629437057_
                                   _tl3629537059_
                                   _e3629637062_
                                   _hd3629737065_
                                   _tl3629837067_
                                   _e3629937070_
                                   _hd3630037073_
                                   _tl3630137075_
                                   _e3630237078_
                                   _hd3630337081_
                                   _tl3630437083_
                                   _e3630537086_
                                   _hd3630637089_
                                   _tl3630737091_
                                   _e3630837094_
                                   _hd3630937097_
                                   _tl3631037099_
                                   _e3631137102_
                                   _hd3631237105_
                                   _tl3631337107_
                                   _e3631437110_
                                   _hd3631537113_
                                   _tl3631637115_
                                   _e3631737118_
                                   _hd3631837121_
                                   _tl3631937123_)
                                  (___kont4114041141_))))
                          (___match4161941620_
                           _e3628737038_
                           _hd3628837041_
                           _tl3628937043_
                           _e3629037046_
                           _hd3629137049_
                           _tl3629237051_
                           _e3629337054_
                           _hd3629437057_
                           _tl3629537059_
                           _e3629637062_
                           _hd3629737065_
                           _tl3629837067_
                           _e3629937070_
                           _hd3630037073_
                           _tl3630137075_
                           _e3630237078_
                           _hd3630337081_
                           _tl3630437083_
                           _e3630537086_
                           _hd3630637089_
                           _tl3630737091_
                           _e3630837094_
                           _hd3630937097_
                           _tl3631037099_))))
                   (___match4141741418_
                    (lambda (_e3625337169_
                             _hd3625437172_
                             _tl3625537174_
                             _e3625637177_
                             _hd3625737180_
                             _tl3625837182_
                             _e3625937185_
                             _hd3626037188_
                             _tl3626137190_
                             _e3626237193_
                             _hd3626337196_
                             _tl3626437198_
                             _e3626537201_
                             _hd3626637204_
                             _tl3626737206_
                             _e3626837209_
                             _hd3626937212_
                             _tl3627037214_
                             _e3627137217_
                             _hd3627237220_
                             _tl3627337222_
                             _e3627437225_
                             _hd3627537228_
                             _tl3627637230_
                             _e3627737233_
                             _hd3627837236_
                             _tl3627937238_
                             _e3628037241_
                             _hd3628137244_
                             _tl3628237246_)
                      (let ((_L37249_ _hd3628137244_)
                            (_L37250_ _hd3627237220_)
                            (_L37251_ _hd3626337196_))
                        (if (and (or (gxc#runtime-identifier=?
                                      _L37251_
                                      'slot-ref)
                                     (gxc#runtime-identifier=?
                                      _L37251_
                                      'unchecked-slot-ref))
                                 (gx#free-identifier=? _L37250_ _self36135_))
                            (___kont4112441125_ _L37249_ _L37250_ _L37251_)
                            (___match4162141622_
                             _e3625337169_
                             _hd3625437172_
                             _tl3625537174_
                             _e3625637177_
                             _hd3625737180_
                             _tl3625837182_
                             _e3625937185_
                             _hd3626037188_
                             _tl3626137190_
                             _e3626237193_
                             _hd3626337196_
                             _tl3626437198_
                             _e3626537201_
                             _hd3626637204_
                             _tl3626737206_
                             _e3626837209_
                             _hd3626937212_
                             _tl3627037214_
                             _e3627137217_
                             _hd3627237220_
                             _tl3627337222_
                             _e3627437225_
                             _hd3627537228_
                             _tl3627637230_)))))
                   (___match4141541416_
                    (lambda (_e3625337169_
                             _hd3625437172_
                             _tl3625537174_
                             _e3625637177_
                             _hd3625737180_
                             _tl3625837182_
                             _e3625937185_
                             _hd3626037188_
                             _tl3626137190_
                             _e3626237193_
                             _hd3626337196_
                             _tl3626437198_
                             _e3626537201_
                             _hd3626637204_
                             _tl3626737206_
                             _e3626837209_
                             _hd3626937212_
                             _tl3627037214_
                             _e3627137217_
                             _hd3627237220_
                             _tl3627337222_
                             _e3627437225_
                             _hd3627537228_
                             _tl3627637230_
                             _e3627737233_
                             _hd3627837236_
                             _tl3627937238_
                             _e3628037241_
                             _hd3628137244_
                             _tl3628237246_)
                      (if (gx#stx-null? _tl3627637230_)
                          (___match4141741418_
                           _e3625337169_
                           _hd3625437172_
                           _tl3625537174_
                           _e3625637177_
                           _hd3625737180_
                           _tl3625837182_
                           _e3625937185_
                           _hd3626037188_
                           _tl3626137190_
                           _e3626237193_
                           _hd3626337196_
                           _tl3626437198_
                           _e3626537201_
                           _hd3626637204_
                           _tl3626737206_
                           _e3626837209_
                           _hd3626937212_
                           _tl3627037214_
                           _e3627137217_
                           _hd3627237220_
                           _tl3627337222_
                           _e3627437225_
                           _hd3627537228_
                           _tl3627637230_
                           _e3627737233_
                           _hd3627837236_
                           _tl3627937238_
                           _e3628037241_
                           _hd3628137244_
                           _tl3628237246_)
                          (___match4149541496_
                           _e3625337169_
                           _hd3625437172_
                           _tl3625537174_
                           _e3625637177_
                           _hd3625737180_
                           _tl3625837182_
                           _e3625937185_
                           _hd3626037188_
                           _tl3626137190_
                           _e3626237193_
                           _hd3626337196_
                           _tl3626437198_
                           _e3626537201_
                           _hd3626637204_
                           _tl3626737206_
                           _e3626837209_
                           _hd3626937212_
                           _tl3627037214_
                           _e3627137217_
                           _hd3627237220_
                           _tl3627337222_
                           _e3627437225_
                           _hd3627537228_
                           _tl3627637230_
                           _e3627737233_
                           _hd3627837236_
                           _tl3627937238_
                           _e3628037241_
                           _hd3628137244_
                           _tl3628237246_))))
                   (___match4140541406_
                    (lambda (_e3625337169_
                             _hd3625437172_
                             _tl3625537174_
                             _e3625637177_
                             _hd3625737180_
                             _tl3625837182_
                             _e3625937185_
                             _hd3626037188_
                             _tl3626137190_
                             _e3626237193_
                             _hd3626337196_
                             _tl3626437198_
                             _e3626537201_
                             _hd3626637204_
                             _tl3626737206_
                             _e3626837209_
                             _hd3626937212_
                             _tl3627037214_
                             _e3627137217_
                             _hd3627237220_
                             _tl3627337222_
                             _e3627437225_
                             _hd3627537228_
                             _tl3627637230_
                             _e3627737233_
                             _hd3627837236_
                             _tl3627937238_)
                      (if (gx#stx-eq? '%#quote _hd3627837236_)
                          (if (gx#stx-pair? _tl3627937238_)
                              (let ((_e3628037241_ (gx#stx-e _tl3627937238_)))
                                (let ((_tl3628237246_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3628037241_)))
                                      (_hd3628137244_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3628037241_))))
                                  (if (gx#stx-null? _tl3628237246_)
                                      (if (gx#stx-null? _tl3627637230_)
                                          (___match4141741418_
                                           _e3625337169_
                                           _hd3625437172_
                                           _tl3625537174_
                                           _e3625637177_
                                           _hd3625737180_
                                           _tl3625837182_
                                           _e3625937185_
                                           _hd3626037188_
                                           _tl3626137190_
                                           _e3626237193_
                                           _hd3626337196_
                                           _tl3626437198_
                                           _e3626537201_
                                           _hd3626637204_
                                           _tl3626737206_
                                           _e3626837209_
                                           _hd3626937212_
                                           _tl3627037214_
                                           _e3627137217_
                                           _hd3627237220_
                                           _tl3627337222_
                                           _e3627437225_
                                           _hd3627537228_
                                           _tl3627637230_
                                           _e3627737233_
                                           _hd3627837236_
                                           _tl3627937238_
                                           _e3628037241_
                                           _hd3628137244_
                                           _tl3628237246_)
                                          (___match4149541496_
                                           _e3625337169_
                                           _hd3625437172_
                                           _tl3625537174_
                                           _e3625637177_
                                           _hd3625737180_
                                           _tl3625837182_
                                           _e3625937185_
                                           _hd3626037188_
                                           _tl3626137190_
                                           _e3626237193_
                                           _hd3626337196_
                                           _tl3626437198_
                                           _e3626537201_
                                           _hd3626637204_
                                           _tl3626737206_
                                           _e3626837209_
                                           _hd3626937212_
                                           _tl3627037214_
                                           _e3627137217_
                                           _hd3627237220_
                                           _tl3627337222_
                                           _e3627437225_
                                           _hd3627537228_
                                           _tl3627637230_
                                           _e3627737233_
                                           _hd3627837236_
                                           _tl3627937238_
                                           _e3628037241_
                                           _hd3628137244_
                                           _tl3628237246_))
                                      (___match4161941620_
                                       _e3625337169_
                                       _hd3625437172_
                                       _tl3625537174_
                                       _e3625637177_
                                       _hd3625737180_
                                       _tl3625837182_
                                       _e3625937185_
                                       _hd3626037188_
                                       _tl3626137190_
                                       _e3626237193_
                                       _hd3626337196_
                                       _tl3626437198_
                                       _e3626537201_
                                       _hd3626637204_
                                       _tl3626737206_
                                       _e3626837209_
                                       _hd3626937212_
                                       _tl3627037214_
                                       _e3627137217_
                                       _hd3627237220_
                                       _tl3627337222_
                                       _e3627437225_
                                       _hd3627537228_
                                       _tl3627637230_))))
                              (___match4161941620_
                               _e3625337169_
                               _hd3625437172_
                               _tl3625537174_
                               _e3625637177_
                               _hd3625737180_
                               _tl3625837182_
                               _e3625937185_
                               _hd3626037188_
                               _tl3626137190_
                               _e3626237193_
                               _hd3626337196_
                               _tl3626437198_
                               _e3626537201_
                               _hd3626637204_
                               _tl3626737206_
                               _e3626837209_
                               _hd3626937212_
                               _tl3627037214_
                               _e3627137217_
                               _hd3627237220_
                               _tl3627337222_
                               _e3627437225_
                               _hd3627537228_
                               _tl3627637230_))
                          (___match4161941620_
                           _e3625337169_
                           _hd3625437172_
                           _tl3625537174_
                           _e3625637177_
                           _hd3625737180_
                           _tl3625837182_
                           _e3625937185_
                           _hd3626037188_
                           _tl3626137190_
                           _e3626237193_
                           _hd3626337196_
                           _tl3626437198_
                           _e3626537201_
                           _hd3626637204_
                           _tl3626737206_
                           _e3626837209_
                           _hd3626937212_
                           _tl3627037214_
                           _e3627137217_
                           _hd3627237220_
                           _tl3627337222_
                           _e3627437225_
                           _hd3627537228_
                           _tl3627637230_))))
                   (___match4133741338_
                    (lambda (_e3620237288_
                             _hd3620337291_
                             _tl3620437293_
                             _e3620537296_
                             _hd3620637299_
                             _tl3620737301_
                             _e3620837304_
                             _hd3620937307_
                             _tl3621037309_
                             _e3621137312_
                             _hd3621237315_
                             _tl3621337317_
                             _e3621437320_
                             _hd3621537323_
                             _tl3621637325_
                             _e3621737328_
                             _hd3621837331_
                             _tl3621937333_
                             _e3622037336_
                             _hd3622137339_
                             _tl3622237341_
                             _e3622337344_
                             _hd3622437347_
                             _tl3622537349_
                             _e3622637352_
                             _hd3622737355_
                             _tl3622837357_
                             _e3622937360_
                             _hd3623037363_
                             _tl3623137365_
                             _e3623237368_
                             _hd3623337371_
                             _tl3623437373_
                             _e3623537376_
                             _hd3623637379_
                             _tl3623737381_
                             _e3623837384_
                             _hd3623937387_
                             _tl3624037389_
                             ___splice4112241123_
                             _target3624137392_
                             _tl3624337394_)
                      (letrec ((_loop3624437397_
                                (lambda (_hd3624237400_ _args3624837402_)
                                  (if (gx#stx-pair? _hd3624237400_)
                                      (let ((_e3624537405_
                                             (gx#stx-e _hd3624237400_)))
                                        (let ((_lp-tl3624737410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3624537405_)))
                                              (_lp-hd3624637408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3624537405_))))
                                          (_loop3624437397_
                                           _lp-tl3624737410_
                                           (cons _lp-hd3624637408_
                                                 _args3624837402_))))
                                      (let ((_args3624937413_
                                             (reverse _args3624837402_)))
                                        (let ((_L37416_ _args3624937413_)
                                              (_L37417_ _hd3623937387_)
                                              (_L37418_ _hd3623037363_)
                                              (_L37419_ _hd3622137339_)
                                              (_L37420_ _hd3621237315_))
                                          (if (and (gxc#runtime-identifier=?
                                                    _L37420_
                                                    'apply)
                                                   (gxc#runtime-identifier=?
                                                    _L37419_
                                                    'call-method)
                                                   (gx#free-identifier=?
                                                    _L37418_
                                                    _self36135_))
                                              (___kont4112041121_
                                               _L37416_
                                               _L37417_
                                               _L37418_
                                               _L37419_
                                               _L37420_)
                                              (___kont4114041141_))))))))
                        (_loop3624437397_ _target3624137392_ '()))))
                   (___match4129541296_
                    (lambda (_e3620237288_
                             _hd3620337291_
                             _tl3620437293_
                             _e3620537296_
                             _hd3620637299_
                             _tl3620737301_
                             _e3620837304_
                             _hd3620937307_
                             _tl3621037309_
                             _e3621137312_
                             _hd3621237315_
                             _tl3621337317_
                             _e3621437320_
                             _hd3621537323_
                             _tl3621637325_
                             _e3621737328_
                             _hd3621837331_
                             _tl3621937333_
                             _e3622037336_
                             _hd3622137339_
                             _tl3622237341_
                             _e3622337344_
                             _hd3622437347_
                             _tl3622537349_
                             _e3622637352_
                             _hd3622737355_
                             _tl3622837357_)
                      (if (gx#stx-eq? '%#ref _hd3622737355_)
                          (if (gx#stx-pair? _tl3622837357_)
                              (let ((_e3622937360_ (gx#stx-e _tl3622837357_)))
                                (let ((_tl3623137365_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3622937360_)))
                                      (_hd3623037363_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3622937360_))))
                                  (if (gx#stx-null? _tl3623137365_)
                                      (if (gx#stx-pair? _tl3622537349_)
                                          (let ((_e3623237368_
                                                 (gx#stx-e _tl3622537349_)))
                                            (let ((_tl3623437373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3623237368_)))
                                                  (_hd3623337371_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3623237368_))))
                                              (if (gx#stx-pair? _hd3623337371_)
                                                  (let ((_e3623537376_
                                                         (gx#stx-e
                                                          _hd3623337371_)))
                                                    (let ((_tl3623737381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3623537376_)))
                                                          (_hd3623637379_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3623537376_))))
                                                      (if (gx#identifier?
                                                           _hd3623637379_)
                                                          (if (gx#stx-eq?
                                                               '%#quote
                                                               _hd3623637379_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3623737381_)
                          (let ((_e3623837384_ (gx#stx-e _tl3623737381_)))
                            (let ((_tl3624037389_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3623837384_)))
                                  (_hd3623937387_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3623837384_))))
                              (if (gx#stx-null? _tl3624037389_)
                                  (if (gx#stx-pair/null? _tl3623437373_)
                                      (let ((___splice4112241123_
                                             (gx#syntax-split-splice
                                              _tl3623437373_
                                              '0)))
                                        (let ((_tl3624337394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4112241123_
                                                  '1)))
                                              (_target3624137392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4112241123_
                                                  '0))))
                                          (if (gx#stx-null? _tl3624337394_)
                                              (___match4133741338_
                                               _e3620237288_
                                               _hd3620337291_
                                               _tl3620437293_
                                               _e3620537296_
                                               _hd3620637299_
                                               _tl3620737301_
                                               _e3620837304_
                                               _hd3620937307_
                                               _tl3621037309_
                                               _e3621137312_
                                               _hd3621237315_
                                               _tl3621337317_
                                               _e3621437320_
                                               _hd3621537323_
                                               _tl3621637325_
                                               _e3621737328_
                                               _hd3621837331_
                                               _tl3621937333_
                                               _e3622037336_
                                               _hd3622137339_
                                               _tl3622237341_
                                               _e3622337344_
                                               _hd3622437347_
                                               _tl3622537349_
                                               _e3622637352_
                                               _hd3622737355_
                                               _tl3622837357_
                                               _e3622937360_
                                               _hd3623037363_
                                               _tl3623137365_
                                               _e3623237368_
                                               _hd3623337371_
                                               _tl3623437373_
                                               _e3623537376_
                                               _hd3623637379_
                                               _tl3623737381_
                                               _e3623837384_
                                               _hd3623937387_
                                               _tl3624037389_
                                               ___splice4112241123_
                                               _target3624137392_
                                               _tl3624337394_)
                                              (___kont4114041141_))))
                                      (___kont4114041141_))
                                  (___kont4114041141_))))
                          (___kont4114041141_))
                      (___kont4114041141_))
                  (___kont4114041141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4114041141_))))
                                          (___match4161941620_
                                           _e3620237288_
                                           _hd3620337291_
                                           _tl3620437293_
                                           _e3620537296_
                                           _hd3620637299_
                                           _tl3620737301_
                                           _e3620837304_
                                           _hd3620937307_
                                           _tl3621037309_
                                           _e3621137312_
                                           _hd3621237315_
                                           _tl3621337317_
                                           _e3621437320_
                                           _hd3621537323_
                                           _tl3621637325_
                                           _e3621737328_
                                           _hd3621837331_
                                           _tl3621937333_
                                           _e3622037336_
                                           _hd3622137339_
                                           _tl3622237341_
                                           _e3622337344_
                                           _hd3622437347_
                                           _tl3622537349_))
                                      (___match4161941620_
                                       _e3620237288_
                                       _hd3620337291_
                                       _tl3620437293_
                                       _e3620537296_
                                       _hd3620637299_
                                       _tl3620737301_
                                       _e3620837304_
                                       _hd3620937307_
                                       _tl3621037309_
                                       _e3621137312_
                                       _hd3621237315_
                                       _tl3621337317_
                                       _e3621437320_
                                       _hd3621537323_
                                       _tl3621637325_
                                       _e3621737328_
                                       _hd3621837331_
                                       _tl3621937333_
                                       _e3622037336_
                                       _hd3622137339_
                                       _tl3622237341_
                                       _e3622337344_
                                       _hd3622437347_
                                       _tl3622537349_))))
                              (___match4161941620_
                               _e3620237288_
                               _hd3620337291_
                               _tl3620437293_
                               _e3620537296_
                               _hd3620637299_
                               _tl3620737301_
                               _e3620837304_
                               _hd3620937307_
                               _tl3621037309_
                               _e3621137312_
                               _hd3621237315_
                               _tl3621337317_
                               _e3621437320_
                               _hd3621537323_
                               _tl3621637325_
                               _e3621737328_
                               _hd3621837331_
                               _tl3621937333_
                               _e3622037336_
                               _hd3622137339_
                               _tl3622237341_
                               _e3622337344_
                               _hd3622437347_
                               _tl3622537349_))
                          (___match4140541406_
                           _e3620237288_
                           _hd3620337291_
                           _tl3620437293_
                           _e3620537296_
                           _hd3620637299_
                           _tl3620737301_
                           _e3620837304_
                           _hd3620937307_
                           _tl3621037309_
                           _e3621137312_
                           _hd3621237315_
                           _tl3621337317_
                           _e3621437320_
                           _hd3621537323_
                           _tl3621637325_
                           _e3621737328_
                           _hd3621837331_
                           _tl3621937333_
                           _e3622037336_
                           _hd3622137339_
                           _tl3622237341_
                           _e3622337344_
                           _hd3622437347_
                           _tl3622537349_
                           _e3622637352_
                           _hd3622737355_
                           _tl3622837357_))))
                   (___match4122741228_
                    (lambda (_e3615837477_
                             _hd3615937480_
                             _tl3616037482_
                             _e3616137485_
                             _hd3616237488_
                             _tl3616337490_
                             _e3616437493_
                             _hd3616537496_
                             _tl3616637498_
                             _e3616737501_
                             _hd3616837504_
                             _tl3616937506_
                             _e3617037509_
                             _hd3617137512_
                             _tl3617237514_
                             _e3617337517_
                             _hd3617437520_
                             _tl3617537522_
                             _e3617637525_
                             _hd3617737528_
                             _tl3617837530_
                             _e3617937533_
                             _hd3618037536_
                             _tl3618137538_
                             _e3618237541_
                             _hd3618337544_
                             _tl3618437546_
                             _e3618537549_
                             _hd3618637552_
                             _tl3618737554_
                             ___splice4111841119_
                             _target3618837557_
                             _tl3619037559_)
                      (letrec ((_loop3619137562_
                                (lambda (_hd3618937565_ _args3619537567_)
                                  (if (gx#stx-pair? _hd3618937565_)
                                      (let ((_e3619237570_
                                             (gx#stx-e _hd3618937565_)))
                                        (let ((_lp-tl3619437575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3619237570_)))
                                              (_lp-hd3619337573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3619237570_))))
                                          (_loop3619137562_
                                           _lp-tl3619437575_
                                           (cons _lp-hd3619337573_
                                                 _args3619537567_))))
                                      (let ((_args3619637578_
                                             (reverse _args3619537567_)))
                                        (let ((_L37581_ _args3619637578_)
                                              (_L37582_ _hd3618637552_)
                                              (_L37583_ _hd3617737528_)
                                              (_L37584_ _hd3616837504_))
                                          (if (and (gxc#runtime-identifier=?
                                                    _L37584_
                                                    'call-method)
                                                   (gx#free-identifier=?
                                                    _L37583_
                                                    _self36135_))
                                              (___kont4111641117_
                                               _L37581_
                                               _L37582_
                                               _L37583_
                                               _L37584_)
                                              (___match4141541416_
                                               _e3615837477_
                                               _hd3615937480_
                                               _tl3616037482_
                                               _e3616137485_
                                               _hd3616237488_
                                               _tl3616337490_
                                               _e3616437493_
                                               _hd3616537496_
                                               _tl3616637498_
                                               _e3616737501_
                                               _hd3616837504_
                                               _tl3616937506_
                                               _e3617037509_
                                               _hd3617137512_
                                               _tl3617237514_
                                               _e3617337517_
                                               _hd3617437520_
                                               _tl3617537522_
                                               _e3617637525_
                                               _hd3617737528_
                                               _tl3617837530_
                                               _e3617937533_
                                               _hd3618037536_
                                               _tl3618137538_
                                               _e3618237541_
                                               _hd3618337544_
                                               _tl3618437546_
                                               _e3618537549_
                                               _hd3618637552_
                                               _tl3618737554_))))))))
                        (_loop3619137562_ _target3618837557_ '())))))
              (if (gx#stx-pair? ___stx4111441115_)
                  (let ((_e3615837477_ (gx#stx-e ___stx4111441115_)))
                    (let ((_tl3616037482_
                           (let () (declare (not safe)) (##cdr _e3615837477_)))
                          (_hd3615937480_
                           (let ()
                             (declare (not safe))
                             (##car _e3615837477_))))
                      (if (gx#stx-pair? _tl3616037482_)
                          (let ((_e3616137485_ (gx#stx-e _tl3616037482_)))
                            (let ((_tl3616337490_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3616137485_)))
                                  (_hd3616237488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3616137485_))))
                              (if (gx#stx-pair? _hd3616237488_)
                                  (let ((_e3616437493_
                                         (gx#stx-e _hd3616237488_)))
                                    (let ((_tl3616637498_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3616437493_)))
                                          (_hd3616537496_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3616437493_))))
                                      (if (gx#identifier? _hd3616537496_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd3616537496_)
                                              (if (gx#stx-pair? _tl3616637498_)
                                                  (let ((_e3616737501_
                                                         (gx#stx-e
                                                          _tl3616637498_)))
                                                    (let ((_tl3616937506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3616737501_)))
                                                          (_hd3616837504_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3616737501_))))
                                                      (if (gx#stx-null?
                                                           _tl3616937506_)
                                                          (if (gx#stx-pair?
                                                               _tl3616337490_)
                                                              (let ((_e3617037509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl3616337490_)))
                        (let ((_tl3617237514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3617037509_)))
                              (_hd3617137512_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3617037509_))))
                          (if (gx#stx-pair? _hd3617137512_)
                              (let ((_e3617337517_ (gx#stx-e _hd3617137512_)))
                                (let ((_tl3617537522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3617337517_)))
                                      (_hd3617437520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3617337517_))))
                                  (if (gx#identifier? _hd3617437520_)
                                      (if (gx#stx-eq? '%#ref _hd3617437520_)
                                          (if (gx#stx-pair? _tl3617537522_)
                                              (let ((_e3617637525_
                                                     (gx#stx-e
                                                      _tl3617537522_)))
                                                (let ((_tl3617837530_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3617637525_)))
                                                      (_hd3617737528_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3617637525_))))
                                                  (if (gx#stx-null?
                                                       _tl3617837530_)
                                                      (if (gx#stx-pair?
                                                           _tl3617237514_)
                                                          (let ((_e3617937533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3617237514_)))
                    (let ((_tl3618137538_
                           (let () (declare (not safe)) (##cdr _e3617937533_)))
                          (_hd3618037536_
                           (let ()
                             (declare (not safe))
                             (##car _e3617937533_))))
                      (if (gx#stx-pair? _hd3618037536_)
                          (let ((_e3618237541_ (gx#stx-e _hd3618037536_)))
                            (let ((_tl3618437546_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3618237541_)))
                                  (_hd3618337544_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3618237541_))))
                              (if (gx#identifier? _hd3618337544_)
                                  (if (gx#stx-eq? '%#quote _hd3618337544_)
                                      (if (gx#stx-pair? _tl3618437546_)
                                          (let ((_e3618537549_
                                                 (gx#stx-e _tl3618437546_)))
                                            (let ((_tl3618737554_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3618537549_)))
                                                  (_hd3618637552_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3618537549_))))
                                              (if (gx#stx-null? _tl3618737554_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3618137538_)
                                                      (let ((___splice4111841119_
                                                             (gx#syntax-split-splice
                                                              _tl3618137538_
                                                              '0)))
                                                        (let ((_tl3619037559_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4111841119_ '1)))
                      (_target3618837557_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4111841119_ '0))))
                  (if (gx#stx-null? _tl3619037559_)
                      (___match4122741228_
                       _e3615837477_
                       _hd3615937480_
                       _tl3616037482_
                       _e3616137485_
                       _hd3616237488_
                       _tl3616337490_
                       _e3616437493_
                       _hd3616537496_
                       _tl3616637498_
                       _e3616737501_
                       _hd3616837504_
                       _tl3616937506_
                       _e3617037509_
                       _hd3617137512_
                       _tl3617237514_
                       _e3617337517_
                       _hd3617437520_
                       _tl3617537522_
                       _e3617637525_
                       _hd3617737528_
                       _tl3617837530_
                       _e3617937533_
                       _hd3618037536_
                       _tl3618137538_
                       _e3618237541_
                       _hd3618337544_
                       _tl3618437546_
                       _e3618537549_
                       _hd3618637552_
                       _tl3618737554_
                       ___splice4111841119_
                       _target3618837557_
                       _tl3619037559_)
                      (___match4141541416_
                       _e3615837477_
                       _hd3615937480_
                       _tl3616037482_
                       _e3616137485_
                       _hd3616237488_
                       _tl3616337490_
                       _e3616437493_
                       _hd3616537496_
                       _tl3616637498_
                       _e3616737501_
                       _hd3616837504_
                       _tl3616937506_
                       _e3617037509_
                       _hd3617137512_
                       _tl3617237514_
                       _e3617337517_
                       _hd3617437520_
                       _tl3617537522_
                       _e3617637525_
                       _hd3617737528_
                       _tl3617837530_
                       _e3617937533_
                       _hd3618037536_
                       _tl3618137538_
                       _e3618237541_
                       _hd3618337544_
                       _tl3618437546_
                       _e3618537549_
                       _hd3618637552_
                       _tl3618737554_))))
              (___match4141541416_
               _e3615837477_
               _hd3615937480_
               _tl3616037482_
               _e3616137485_
               _hd3616237488_
               _tl3616337490_
               _e3616437493_
               _hd3616537496_
               _tl3616637498_
               _e3616737501_
               _hd3616837504_
               _tl3616937506_
               _e3617037509_
               _hd3617137512_
               _tl3617237514_
               _e3617337517_
               _hd3617437520_
               _tl3617537522_
               _e3617637525_
               _hd3617737528_
               _tl3617837530_
               _e3617937533_
               _hd3618037536_
               _tl3618137538_
               _e3618237541_
               _hd3618337544_
               _tl3618437546_
               _e3618537549_
               _hd3618637552_
               _tl3618737554_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match4161941620_
                                                   _e3615837477_
                                                   _hd3615937480_
                                                   _tl3616037482_
                                                   _e3616137485_
                                                   _hd3616237488_
                                                   _tl3616337490_
                                                   _e3616437493_
                                                   _hd3616537496_
                                                   _tl3616637498_
                                                   _e3616737501_
                                                   _hd3616837504_
                                                   _tl3616937506_
                                                   _e3617037509_
                                                   _hd3617137512_
                                                   _tl3617237514_
                                                   _e3617337517_
                                                   _hd3617437520_
                                                   _tl3617537522_
                                                   _e3617637525_
                                                   _hd3617737528_
                                                   _tl3617837530_
                                                   _e3617937533_
                                                   _hd3618037536_
                                                   _tl3618137538_))))
                                          (___match4161941620_
                                           _e3615837477_
                                           _hd3615937480_
                                           _tl3616037482_
                                           _e3616137485_
                                           _hd3616237488_
                                           _tl3616337490_
                                           _e3616437493_
                                           _hd3616537496_
                                           _tl3616637498_
                                           _e3616737501_
                                           _hd3616837504_
                                           _tl3616937506_
                                           _e3617037509_
                                           _hd3617137512_
                                           _tl3617237514_
                                           _e3617337517_
                                           _hd3617437520_
                                           _tl3617537522_
                                           _e3617637525_
                                           _hd3617737528_
                                           _tl3617837530_
                                           _e3617937533_
                                           _hd3618037536_
                                           _tl3618137538_))
                                      (___match4129541296_
                                       _e3615837477_
                                       _hd3615937480_
                                       _tl3616037482_
                                       _e3616137485_
                                       _hd3616237488_
                                       _tl3616337490_
                                       _e3616437493_
                                       _hd3616537496_
                                       _tl3616637498_
                                       _e3616737501_
                                       _hd3616837504_
                                       _tl3616937506_
                                       _e3617037509_
                                       _hd3617137512_
                                       _tl3617237514_
                                       _e3617337517_
                                       _hd3617437520_
                                       _tl3617537522_
                                       _e3617637525_
                                       _hd3617737528_
                                       _tl3617837530_
                                       _e3617937533_
                                       _hd3618037536_
                                       _tl3618137538_
                                       _e3618237541_
                                       _hd3618337544_
                                       _tl3618437546_))
                                  (___match4161941620_
                                   _e3615837477_
                                   _hd3615937480_
                                   _tl3616037482_
                                   _e3616137485_
                                   _hd3616237488_
                                   _tl3616337490_
                                   _e3616437493_
                                   _hd3616537496_
                                   _tl3616637498_
                                   _e3616737501_
                                   _hd3616837504_
                                   _tl3616937506_
                                   _e3617037509_
                                   _hd3617137512_
                                   _tl3617237514_
                                   _e3617337517_
                                   _hd3617437520_
                                   _tl3617537522_
                                   _e3617637525_
                                   _hd3617737528_
                                   _tl3617837530_
                                   _e3617937533_
                                   _hd3618037536_
                                   _tl3618137538_))))
                          (___match4161941620_
                           _e3615837477_
                           _hd3615937480_
                           _tl3616037482_
                           _e3616137485_
                           _hd3616237488_
                           _tl3616337490_
                           _e3616437493_
                           _hd3616537496_
                           _tl3616637498_
                           _e3616737501_
                           _hd3616837504_
                           _tl3616937506_
                           _e3617037509_
                           _hd3617137512_
                           _tl3617237514_
                           _e3617337517_
                           _hd3617437520_
                           _tl3617537522_
                           _e3617637525_
                           _hd3617737528_
                           _tl3617837530_
                           _e3617937533_
                           _hd3618037536_
                           _tl3618137538_))))
                  (___match4155741558_
                   _e3615837477_
                   _hd3615937480_
                   _tl3616037482_
                   _e3616137485_
                   _hd3616237488_
                   _tl3616337490_
                   _e3616437493_
                   _hd3616537496_
                   _tl3616637498_
                   _e3616737501_
                   _hd3616837504_
                   _tl3616937506_
                   _e3617037509_
                   _hd3617137512_
                   _tl3617237514_
                   _e3617337517_
                   _hd3617437520_
                   _tl3617537522_
                   _e3617637525_
                   _hd3617737528_
                   _tl3617837530_))
              (___kont4114041141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont4114041141_))
                                          (___kont4114041141_))
                                      (___kont4114041141_))))
                              (___kont4114041141_))))
                      (___kont4114041141_))
                  (___kont4114041141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4114041141_))
                                              (___kont4114041141_))
                                          (___kont4114041141_))))
                                  (___kont4114041141_))))
                          (___kont4114041141_))))
                  (___kont4114041141_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx34561_
               _self34562_
               _$t34563_
               _methods34564_
               _slots34565_
               _class-check34566_
               _struct-check34567_
               _struct-assert34568_)
        (letrec ((_force-e34570_
                  (lambda (_what36132_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _what36132_ '()))
                                      '()))))))
          (let* ((___stx4185441855_ _stx34561_)
                 (_g3458234900_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx4185441855_))))
            (let ((___kont4185641857_
                   (lambda (_L36078_ _L36079_ _L36080_ _L36081_)
                     (let ((_$method36126_
                            (table-ref _methods34564_ (gx#stx-e _L36079_)))
                           (_args36127_
                            (map (lambda (_g3611436116_)
                                   (gxc#compile-e
                                    _g3611436116_
                                    _self34562_
                                    _$t34563_
                                    _methods34564_
                                    _slots34565_
                                    _class-check34566_
                                    _struct-check34567_
                                    _struct-assert34568_))
                                 (foldr1 (lambda (_g3611836121_ _g3611936123_)
                                           (cons _g3611836121_ _g3611936123_))
                                         '()
                                         _L36078_))))
                       (gxc#xform-wrap-source
                        (cons '%#call
                              (cons (_force-e34570_ _$method36126_)
                                    (cons (cons '%#ref (cons _self34562_ '()))
                                          _args36127_)))
                        _stx34561_))))
                  (___kont4186041861_
                   (lambda (_L35910_ _L35911_ _L35912_ _L35913_ _L35914_)
                     (let ((_$method35966_
                            (table-ref _methods34564_ (gx#stx-e _L35911_)))
                           (_args35967_
                            (map (lambda (_g3595435956_)
                                   (gxc#compile-e
                                    _g3595435956_
                                    _self34562_
                                    _$t34563_
                                    _methods34564_
                                    _slots34565_
                                    _class-check34566_
                                    _struct-check34567_
                                    _struct-assert34568_))
                                 (foldr1 (lambda (_g3595835961_ _g3595935963_)
                                           (cons _g3595835961_ _g3595935963_))
                                         '()
                                         _L35910_))))
                       (gxc#xform-wrap-source
                        (cons '%#call
                              (cons (cons '%#ref (cons 'apply '()))
                                    (cons (_force-e34570_ _$method35966_)
                                          (cons (cons '%#ref
                                                      (cons _self34562_ '()))
                                                _args35967_))))
                        _stx34561_))))
                  (___kont4186441865_
                   (lambda (_L35741_ _L35742_ _L35743_)
                     (let ((_$field35775_
                            (table-ref _slots34565_ (gx#stx-e _L35741_))))
                       (gxc#xform-wrap-source
                        (cons '%#struct-unchecked-ref
                              (cons (cons '%#ref (cons _$t34563_ '()))
                                    (cons (cons '%#ref
                                                (cons _$field35775_ '()))
                                          (cons (cons '%#ref
                                                      (cons _self34562_ '()))
                                                '()))))
                        _stx34561_))))
                  (___kont4186641867_
                   (lambda (_L35615_ _L35616_ _L35617_ _L35618_)
                     (let ((_$field35653_
                            (table-ref _slots34565_ (gx#stx-e _L35616_)))
                           (_expr35654_
                            (gxc#compile-e
                             _L35615_
                             _self34562_
                             _$t34563_
                             _methods34564_
                             _slots34565_
                             _class-check34566_
                             _struct-check34567_
                             _struct-assert34568_)))
                       (gxc#xform-wrap-source
                        (cons '%#struct-unchecked-set!
                              (cons (cons '%#ref (cons _$t34563_ '()))
                                    (cons (cons '%#ref
                                                (cons _$field35653_ '()))
                                          (cons (cons '%#ref
                                                      (cons _self34562_ '()))
                                                (cons _expr35654_ '())))))
                        _stx34561_))))
                  (___kont4186841869_
                   (lambda (_L35494_ _L35495_)
                     (let* ((_slot35517_
                             (##structure-ref
                              (gxc#optimizer-resolve-type
                               (gxc#identifier-symbol _L35495_))
                              '2
                              gxc#!class-getf::t
                              '#f))
                            (_$field35519_
                             (table-ref _slots34565_ _slot35517_)))
                       (gxc#xform-wrap-source
                        (cons '%#struct-unchecked-ref
                              (cons (cons '%#ref (cons _$t34563_ '()))
                                    (cons (cons '%#ref
                                                (cons _$field35519_ '()))
                                          (cons (cons '%#ref
                                                      (cons _self34562_ '()))
                                                '()))))
                        _stx34561_))))
                  (___kont4187041871_
                   (lambda (_L35399_ _L35400_ _L35401_)
                     (let* ((_slot35426_
                             (##structure-ref
                              (gxc#optimizer-resolve-type
                               (gxc#identifier-symbol
                                (gx#datum->syntax__0 '#f 'getf)))
                              '2
                              gxc#!class-setf::t
                              '#f))
                            (_$field35428_
                             (table-ref _slots34565_ _slot35426_))
                            (_expr35430_
                             (gxc#compile-e
                              _L35399_
                              _self34562_
                              _$t34563_
                              _methods34564_
                              _slots34565_
                              _class-check34566_
                              _struct-check34567_
                              _struct-assert34568_)))
                       (gxc#xform-wrap-source
                        (cons '%#struct-unchecked-set!
                              (cons (cons '%#ref (cons _$t34563_ '()))
                                    (cons (cons '%#ref
                                                (cons _$field35428_ '()))
                                          (cons (cons '%#ref
                                                      (cons _self34562_ '()))
                                                (cons _expr35430_ '())))))
                        _stx34561_))))
                  (___kont4187241873_
                   (lambda (_L35307_ _L35308_)
                     (cons '%#ref
                           (cons (table-ref
                                  _class-check34566_
                                  (##structure-ref
                                   (gxc#optimizer-resolve-type
                                    (gxc#identifier-symbol _L35308_))
                                   '1
                                   gxc#!type::t
                                   '#f))
                                 '()))))
                  (___kont4187441875_
                   (lambda (_L35216_ _L35217_)
                     (let ((_t35239_
                            (##structure-ref
                             (gxc#optimizer-resolve-type
                              (gxc#identifier-symbol _L35217_))
                             '1
                             gxc#!type::t
                             '#f)))
                       (if (table-ref _struct-assert34568_ _t35239_ '#f)
                           '(%#quote #t)
                           (let ((_$e35241_
                                  (table-ref
                                   _struct-check34567_
                                   _t35239_
                                   '#f)))
                             (if _$e35241_
                                 ((lambda (_checkq35244_)
                                    (cons '%#ref (cons _checkq35244_ '())))
                                  _$e35241_)
                                 _stx34561_))))))
                  (___kont4187641877_
                   (lambda (_L35101_ _L35102_)
                     (let* ((_getf35135_
                             (gxc#optimizer-resolve-type
                              (gxc#identifier-symbol _L35102_)))
                            (_t35137_
                             (##structure-ref
                              _getf35135_
                              '1
                              gxc#!type::t
                              '#f)))
                       (if (##structure-ref
                            _getf35135_
                            '3
                            gxc#!struct-getf::t
                            '#f)
                           _stx34561_
                           (if (table-ref _struct-assert34568_ _t35137_ '#f)
                               (let* ((_struct-t35140_
                                       (gxc#optimizer-resolve-type _t35137_))
                                      (_off35142_
                                       (fx+ (##structure-ref
                                             _getf35135_
                                             '2
                                             gxc#!struct-getf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t35140_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (cons '%#struct-unchecked-ref
                                       (cons (cons '%#ref (cons _t35137_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off35142_ '()))
                                                   (cons (cons '%#ref
                                                               (cons _self34562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (let ((_$e35145_
                                      (table-ref
                                       _struct-check34567_
                                       _t35137_
                                       '#f)))
                                 (if _$e35145_
                                     ((lambda (_checkq35148_)
                                        (let* ((_struct-t35150_
                                                (gxc#optimizer-resolve-type
                                                 _t35137_))
                                               (_off35152_
                                                (fx+ (##structure-ref
                                                      _getf35135_
                                                      '2
                                                      gxc#!struct-getf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t35150_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (cons '%#if
                                                (cons (cons '%#ref
                                                            (cons _checkq35148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref (cons _t35137_ '()))
                                (cons (cons '%#quote (cons _off35152_ '()))
                                      (cons (cons '%#ref
                                                  (cons _self34562_ '()))
                                            '()))))
                    (cons (cons '%#call
                                (cons (cons '%#ref (cons 'error '()))
                                      (cons (cons '%#quote
                                                  (cons '"Type error; concrete type is not a subclass of expected type"
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _t35137_ '()))
                                                  (cons (cons '%#ref
                                                              (cons _self34562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e35145_)
                                     _stx34561_)))))))
                  (___kont4187841879_
                   (lambda (_L34976_ _L34977_ _L34978_)
                     (let* ((_setf35018_
                             (gxc#optimizer-resolve-type
                              (gxc#identifier-symbol _L34978_)))
                            (_t35020_
                             (##structure-ref _setf35018_ '1 gxc#!type::t '#f))
                            (_expr35022_
                             (gxc#compile-e
                              _L34976_
                              _self34562_
                              _$t34563_
                              _methods34564_
                              _slots34565_
                              _class-check34566_
                              _struct-check34567_
                              _struct-assert34568_)))
                       (if (##structure-ref
                            _setf35018_
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
                                                   (cons _L34977_ '()))
                                             (cons _expr35022_ '()))))
                           (if (table-ref _struct-assert34568_ _t35020_ '#f)
                               (let* ((_struct-t35025_
                                       (gxc#optimizer-resolve-type _t35020_))
                                      (_off35027_
                                       (fx+ (##structure-ref
                                             _setf35018_
                                             '2
                                             gxc#!struct-setf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t35025_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (cons '%#struct-unchecked-set!
                                       (cons (cons '%#ref (cons _t35020_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off35027_ '()))
                                                   (cons (cons '%#ref
                                                               (cons _self34562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _expr35022_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (let ((_$e35030_
                                      (table-ref
                                       _struct-check34567_
                                       _t35020_
                                       '#f)))
                                 (if _$e35030_
                                     ((lambda (_checkq35033_)
                                        (let* ((_struct-t35035_
                                                (gxc#optimizer-resolve-type
                                                 _t35020_))
                                               (_off35037_
                                                (fx+ (##structure-ref
                                                      _setf35018_
                                                      '2
                                                      gxc#!struct-setf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t35035_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (cons '%#if
                                                (cons (cons '%#ref
                                                            (cons _checkq35033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#struct-unchecked-set!
                          (cons (cons '%#ref (cons _t35020_ '()))
                                (cons (cons '%#quote (cons _off35037_ '()))
                                      (cons (cons '%#ref
                                                  (cons _self34562_ '()))
                                            (cons _expr35022_ '())))))
                    (cons (cons '%#call
                                (cons (cons '%#ref (cons 'error '()))
                                      (cons (cons '%#quote
                                                  (cons '"Type error; concrete type is not a subclass of expected type"
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _t35020_ '()))
                                                  (cons (cons '%#ref
                                                              (cons _self34562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _$e35030_)
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
                                                             (cons _L34977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _expr35022_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  (___kont4188041881_
                   (lambda ()
                     (gxc#xform-operands
                      _stx34561_
                      _self34562_
                      _$t34563_
                      _methods34564_
                      _slots34565_
                      _class-check34566_
                      _struct-check34567_
                      _struct-assert34568_))))
              (let* ((___match4259142592_
                      (lambda (_e3487234912_
                               _hd3487334915_
                               _tl3487434917_
                               _e3487534920_
                               _hd3487634923_
                               _tl3487734925_
                               _e3487834928_
                               _hd3487934931_
                               _tl3488034933_
                               _e3488134936_
                               _hd3488234939_
                               _tl3488334941_
                               _e3488434944_
                               _hd3488534947_
                               _tl3488634949_
                               _e3488734952_
                               _hd3488834955_
                               _tl3488934957_
                               _e3489034960_
                               _hd3489134963_
                               _tl3489234965_
                               _e3489334968_
                               _hd3489434971_
                               _tl3489534973_)
                        (let ((_L34976_ _hd3489434971_)
                              (_L34977_ _hd3489134963_)
                              (_L34978_ _hd3488234939_))
                          (if (if (not (gx#free-identifier=?
                                        _L34977_
                                        _self34562_))
                                  '#f
                                  (let ((_$e35007_
                                         (gxc#optimizer-resolve-type
                                          (gxc#identifier-symbol _L34978_))))
                                    (and _$e35007_
                                         ((lambda (_t35010_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t35010_
                                                    'gxc#!struct-setf::t))
                                                 (let ((_struct-t3501135013_
                                                        (gxc#optimizer-resolve-type
                                                         (##structure-ref
                                                          _t35010_
                                                          '1
                                                          gxc#!type::t
                                                          '#f))))
                                                   (and _struct-t3501135013_
                                                        (let ((_struct-t35016_
                                                               _struct-t3501135013_))
                                                          (##structure-ref
                                                           _struct-t35016_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e35007_))))
                              (___kont4187841879_ _L34976_ _L34977_ _L34978_)
                              (___kont4188041881_)))))
                     (___match4258342584_
                      (lambda (_e3487234912_
                               _hd3487334915_
                               _tl3487434917_
                               _e3487534920_
                               _hd3487634923_
                               _tl3487734925_
                               _e3487834928_
                               _hd3487934931_
                               _tl3488034933_
                               _e3488134936_
                               _hd3488234939_
                               _tl3488334941_
                               _e3488434944_
                               _hd3488534947_
                               _tl3488634949_
                               _e3488734952_
                               _hd3488834955_
                               _tl3488934957_
                               _e3489034960_
                               _hd3489134963_
                               _tl3489234965_)
                        (if (gx#stx-pair? _tl3488634949_)
                            (let ((_e3489334968_ (gx#stx-e _tl3488634949_)))
                              (let ((_tl3489534973_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3489334968_)))
                                    (_hd3489434971_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3489334968_))))
                                (if (gx#stx-null? _tl3489534973_)
                                    (___match4259142592_
                                     _e3487234912_
                                     _hd3487334915_
                                     _tl3487434917_
                                     _e3487534920_
                                     _hd3487634923_
                                     _tl3487734925_
                                     _e3487834928_
                                     _hd3487934931_
                                     _tl3488034933_
                                     _e3488134936_
                                     _hd3488234939_
                                     _tl3488334941_
                                     _e3488434944_
                                     _hd3488534947_
                                     _tl3488634949_
                                     _e3488734952_
                                     _hd3488834955_
                                     _tl3488934957_
                                     _e3489034960_
                                     _hd3489134963_
                                     _tl3489234965_
                                     _e3489334968_
                                     _hd3489434971_
                                     _tl3489534973_)
                                    (___kont4188041881_))))
                            (___kont4188041881_))))
                     (___match4252942530_
                      (lambda (_e3484835045_
                               _hd3484935048_
                               _tl3485035050_
                               _e3485135053_
                               _hd3485235056_
                               _tl3485335058_
                               _e3485435061_
                               _hd3485535064_
                               _tl3485635066_
                               _e3485735069_
                               _hd3485835072_
                               _tl3485935074_
                               _e3486035077_
                               _hd3486135080_
                               _tl3486235082_
                               _e3486335085_
                               _hd3486435088_
                               _tl3486535090_
                               _e3486635093_
                               _hd3486735096_
                               _tl3486835098_)
                        (let ((_L35101_ _hd3486735096_)
                              (_L35102_ _hd3485835072_))
                          (if (if (not (gx#free-identifier=?
                                        _L35101_
                                        _self34562_))
                                  '#f
                                  (let ((_$e35124_
                                         (gxc#optimizer-resolve-type
                                          (gxc#identifier-symbol _L35102_))))
                                    (and _$e35124_
                                         ((lambda (_t35127_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t35127_
                                                    'gxc#!struct-getf::t))
                                                 (let ((_struct-t3512835130_
                                                        (gxc#optimizer-resolve-type
                                                         (##structure-ref
                                                          _t35127_
                                                          '1
                                                          gxc#!type::t
                                                          '#f))))
                                                   (and _struct-t3512835130_
                                                        (let ((_struct-t35133_
                                                               _struct-t3512835130_))
                                                          (##structure-ref
                                                           _struct-t35133_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e35124_))))
                              (___kont4187641877_ _L35101_ _L35102_)
                              (___kont4188041881_)))))
                     (___match4247342474_
                      (lambda (_e3482535160_
                               _hd3482635163_
                               _tl3482735165_
                               _e3482835168_
                               _hd3482935171_
                               _tl3483035173_
                               _e3483135176_
                               _hd3483235179_
                               _tl3483335181_
                               _e3483435184_
                               _hd3483535187_
                               _tl3483635189_
                               _e3483735192_
                               _hd3483835195_
                               _tl3483935197_
                               _e3484035200_
                               _hd3484135203_
                               _tl3484235205_
                               _e3484335208_
                               _hd3484435211_
                               _tl3484535213_)
                        (let ((_L35216_ _hd3484435211_)
                              (_L35217_ _hd3483535187_))
                          (if (and (gx#free-identifier=? _L35216_ _self34562_)
                                   (let ((__tmp42639
                                          (gxc#optimizer-resolve-type
                                           (gxc#identifier-symbol _L35217_))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp42639
                                      'gxc#!struct-pred::t)))
                              (___kont4187441875_ _L35216_ _L35217_)
                              (___match4252942530_
                               _e3482535160_
                               _hd3482635163_
                               _tl3482735165_
                               _e3482835168_
                               _hd3482935171_
                               _tl3483035173_
                               _e3483135176_
                               _hd3483235179_
                               _tl3483335181_
                               _e3483435184_
                               _hd3483535187_
                               _tl3483635189_
                               _e3483735192_
                               _hd3483835195_
                               _tl3483935197_
                               _e3484035200_
                               _hd3484135203_
                               _tl3484235205_
                               _e3484335208_
                               _hd3484435211_
                               _tl3484535213_)))))
                     (___match4241742418_
                      (lambda (_e3480235251_
                               _hd3480335254_
                               _tl3480435256_
                               _e3480535259_
                               _hd3480635262_
                               _tl3480735264_
                               _e3480835267_
                               _hd3480935270_
                               _tl3481035272_
                               _e3481135275_
                               _hd3481235278_
                               _tl3481335280_
                               _e3481435283_
                               _hd3481535286_
                               _tl3481635288_
                               _e3481735291_
                               _hd3481835294_
                               _tl3481935296_
                               _e3482035299_
                               _hd3482135302_
                               _tl3482235304_)
                        (let ((_L35307_ _hd3482135302_)
                              (_L35308_ _hd3481235278_))
                          (if (and (gx#free-identifier=? _L35307_ _self34562_)
                                   (let ((__tmp42640
                                          (gxc#optimizer-resolve-type
                                           (gxc#identifier-symbol _L35308_))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp42640
                                      'gxc#!class-pred::t)))
                              (___kont4187241873_ _L35307_ _L35308_)
                              (___match4247342474_
                               _e3480235251_
                               _hd3480335254_
                               _tl3480435256_
                               _e3480535259_
                               _hd3480635262_
                               _tl3480735264_
                               _e3480835267_
                               _hd3480935270_
                               _tl3481035272_
                               _e3481135275_
                               _hd3481235278_
                               _tl3481335280_
                               _e3481435283_
                               _hd3481535286_
                               _tl3481635288_
                               _e3481735291_
                               _hd3481835294_
                               _tl3481935296_
                               _e3482035299_
                               _hd3482135302_
                               _tl3482235304_)))))
                     (___match4241542416_
                      (lambda (_e3480235251_
                               _hd3480335254_
                               _tl3480435256_
                               _e3480535259_
                               _hd3480635262_
                               _tl3480735264_
                               _e3480835267_
                               _hd3480935270_
                               _tl3481035272_
                               _e3481135275_
                               _hd3481235278_
                               _tl3481335280_
                               _e3481435283_
                               _hd3481535286_
                               _tl3481635288_
                               _e3481735291_
                               _hd3481835294_
                               _tl3481935296_
                               _e3482035299_
                               _hd3482135302_
                               _tl3482235304_)
                        (if (gx#stx-null? _tl3481635288_)
                            (___match4241742418_
                             _e3480235251_
                             _hd3480335254_
                             _tl3480435256_
                             _e3480535259_
                             _hd3480635262_
                             _tl3480735264_
                             _e3480835267_
                             _hd3480935270_
                             _tl3481035272_
                             _e3481135275_
                             _hd3481235278_
                             _tl3481335280_
                             _e3481435283_
                             _hd3481535286_
                             _tl3481635288_
                             _e3481735291_
                             _hd3481835294_
                             _tl3481935296_
                             _e3482035299_
                             _hd3482135302_
                             _tl3482235304_)
                            (___match4258342584_
                             _e3480235251_
                             _hd3480335254_
                             _tl3480435256_
                             _e3480535259_
                             _hd3480635262_
                             _tl3480735264_
                             _e3480835267_
                             _hd3480935270_
                             _tl3481035272_
                             _e3481135275_
                             _hd3481235278_
                             _tl3481335280_
                             _e3481435283_
                             _hd3481535286_
                             _tl3481635288_
                             _e3481735291_
                             _hd3481835294_
                             _tl3481935296_
                             _e3482035299_
                             _hd3482135302_
                             _tl3482235304_))))
                     (___match4236142362_
                      (lambda (_e3477635335_
                               _hd3477735338_
                               _tl3477835340_
                               _e3477935343_
                               _hd3478035346_
                               _tl3478135348_
                               _e3478235351_
                               _hd3478335354_
                               _tl3478435356_
                               _e3478535359_
                               _hd3478635362_
                               _tl3478735364_
                               _e3478835367_
                               _hd3478935370_
                               _tl3479035372_
                               _e3479135375_
                               _hd3479235378_
                               _tl3479335380_
                               _e3479435383_
                               _hd3479535386_
                               _tl3479635388_
                               _e3479735391_
                               _hd3479835394_
                               _tl3479935396_)
                        (let ((_L35399_ _hd3479835394_)
                              (_L35400_ _hd3479535386_)
                              (_L35401_ _hd3478635362_))
                          (if (and (gx#free-identifier=? _L35400_ _self34562_)
                                   (let ((__tmp42641
                                          (gxc#optimizer-resolve-type
                                           (gxc#identifier-symbol _L35401_))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp42641
                                      'gxc#!class-setf::t)))
                              (___kont4187041871_ _L35399_ _L35400_ _L35401_)
                              (___match4259142592_
                               _e3477635335_
                               _hd3477735338_
                               _tl3477835340_
                               _e3477935343_
                               _hd3478035346_
                               _tl3478135348_
                               _e3478235351_
                               _hd3478335354_
                               _tl3478435356_
                               _e3478535359_
                               _hd3478635362_
                               _tl3478735364_
                               _e3478835367_
                               _hd3478935370_
                               _tl3479035372_
                               _e3479135375_
                               _hd3479235378_
                               _tl3479335380_
                               _e3479435383_
                               _hd3479535386_
                               _tl3479635388_
                               _e3479735391_
                               _hd3479835394_
                               _tl3479935396_)))))
                     (___match4235942360_
                      (lambda (_e3477635335_
                               _hd3477735338_
                               _tl3477835340_
                               _e3477935343_
                               _hd3478035346_
                               _tl3478135348_
                               _e3478235351_
                               _hd3478335354_
                               _tl3478435356_
                               _e3478535359_
                               _hd3478635362_
                               _tl3478735364_
                               _e3478835367_
                               _hd3478935370_
                               _tl3479035372_
                               _e3479135375_
                               _hd3479235378_
                               _tl3479335380_
                               _e3479435383_
                               _hd3479535386_
                               _tl3479635388_
                               _e3479735391_
                               _hd3479835394_
                               _tl3479935396_)
                        (if (gx#stx-null? _tl3479935396_)
                            (___match4236142362_
                             _e3477635335_
                             _hd3477735338_
                             _tl3477835340_
                             _e3477935343_
                             _hd3478035346_
                             _tl3478135348_
                             _e3478235351_
                             _hd3478335354_
                             _tl3478435356_
                             _e3478535359_
                             _hd3478635362_
                             _tl3478735364_
                             _e3478835367_
                             _hd3478935370_
                             _tl3479035372_
                             _e3479135375_
                             _hd3479235378_
                             _tl3479335380_
                             _e3479435383_
                             _hd3479535386_
                             _tl3479635388_
                             _e3479735391_
                             _hd3479835394_
                             _tl3479935396_)
                            (___kont4188041881_))))
                     (___match4235342354_
                      (lambda (_e3477635335_
                               _hd3477735338_
                               _tl3477835340_
                               _e3477935343_
                               _hd3478035346_
                               _tl3478135348_
                               _e3478235351_
                               _hd3478335354_
                               _tl3478435356_
                               _e3478535359_
                               _hd3478635362_
                               _tl3478735364_
                               _e3478835367_
                               _hd3478935370_
                               _tl3479035372_
                               _e3479135375_
                               _hd3479235378_
                               _tl3479335380_
                               _e3479435383_
                               _hd3479535386_
                               _tl3479635388_)
                        (if (gx#stx-pair? _tl3479035372_)
                            (let ((_e3479735391_ (gx#stx-e _tl3479035372_)))
                              (let ((_tl3479935396_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3479735391_)))
                                    (_hd3479835394_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3479735391_))))
                                (if (gx#stx-null? _tl3479935396_)
                                    (___match4236142362_
                                     _e3477635335_
                                     _hd3477735338_
                                     _tl3477835340_
                                     _e3477935343_
                                     _hd3478035346_
                                     _tl3478135348_
                                     _e3478235351_
                                     _hd3478335354_
                                     _tl3478435356_
                                     _e3478535359_
                                     _hd3478635362_
                                     _tl3478735364_
                                     _e3478835367_
                                     _hd3478935370_
                                     _tl3479035372_
                                     _e3479135375_
                                     _hd3479235378_
                                     _tl3479335380_
                                     _e3479435383_
                                     _hd3479535386_
                                     _tl3479635388_
                                     _e3479735391_
                                     _hd3479835394_
                                     _tl3479935396_)
                                    (___kont4188041881_))))
                            (___match4241542416_
                             _e3477635335_
                             _hd3477735338_
                             _tl3477835340_
                             _e3477935343_
                             _hd3478035346_
                             _tl3478135348_
                             _e3478235351_
                             _hd3478335354_
                             _tl3478435356_
                             _e3478535359_
                             _hd3478635362_
                             _tl3478735364_
                             _e3478835367_
                             _hd3478935370_
                             _tl3479035372_
                             _e3479135375_
                             _hd3479235378_
                             _tl3479335380_
                             _e3479435383_
                             _hd3479535386_
                             _tl3479635388_))))
                     (___match4229942300_
                      (lambda (_e3475235438_
                               _hd3475335441_
                               _tl3475435443_
                               _e3475535446_
                               _hd3475635449_
                               _tl3475735451_
                               _e3475835454_
                               _hd3475935457_
                               _tl3476035459_
                               _e3476135462_
                               _hd3476235465_
                               _tl3476335467_
                               _e3476435470_
                               _hd3476535473_
                               _tl3476635475_
                               _e3476735478_
                               _hd3476835481_
                               _tl3476935483_
                               _e3477035486_
                               _hd3477135489_
                               _tl3477235491_)
                        (let ((_L35494_ _hd3477135489_)
                              (_L35495_ _hd3476235465_))
                          (if (and (gx#free-identifier=? _L35494_ _self34562_)
                                   (let ((__tmp42642
                                          (gxc#optimizer-resolve-type
                                           (gxc#identifier-symbol _L35495_))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp42642
                                      'gxc#!class-getf::t)))
                              (___kont4186841869_ _L35494_ _L35495_)
                              (___match4241742418_
                               _e3475235438_
                               _hd3475335441_
                               _tl3475435443_
                               _e3475535446_
                               _hd3475635449_
                               _tl3475735451_
                               _e3475835454_
                               _hd3475935457_
                               _tl3476035459_
                               _e3476135462_
                               _hd3476235465_
                               _tl3476335467_
                               _e3476435470_
                               _hd3476535473_
                               _tl3476635475_
                               _e3476735478_
                               _hd3476835481_
                               _tl3476935483_
                               _e3477035486_
                               _hd3477135489_
                               _tl3477235491_)))))
                     (___match4229742298_
                      (lambda (_e3475235438_
                               _hd3475335441_
                               _tl3475435443_
                               _e3475535446_
                               _hd3475635449_
                               _tl3475735451_
                               _e3475835454_
                               _hd3475935457_
                               _tl3476035459_
                               _e3476135462_
                               _hd3476235465_
                               _tl3476335467_
                               _e3476435470_
                               _hd3476535473_
                               _tl3476635475_
                               _e3476735478_
                               _hd3476835481_
                               _tl3476935483_
                               _e3477035486_
                               _hd3477135489_
                               _tl3477235491_)
                        (if (gx#stx-null? _tl3476635475_)
                            (___match4229942300_
                             _e3475235438_
                             _hd3475335441_
                             _tl3475435443_
                             _e3475535446_
                             _hd3475635449_
                             _tl3475735451_
                             _e3475835454_
                             _hd3475935457_
                             _tl3476035459_
                             _e3476135462_
                             _hd3476235465_
                             _tl3476335467_
                             _e3476435470_
                             _hd3476535473_
                             _tl3476635475_
                             _e3476735478_
                             _hd3476835481_
                             _tl3476935483_
                             _e3477035486_
                             _hd3477135489_
                             _tl3477235491_)
                            (___match4235342354_
                             _e3475235438_
                             _hd3475335441_
                             _tl3475435443_
                             _e3475535446_
                             _hd3475635449_
                             _tl3475735451_
                             _e3475835454_
                             _hd3475935457_
                             _tl3476035459_
                             _e3476135462_
                             _hd3476235465_
                             _tl3476335467_
                             _e3476435470_
                             _hd3476535473_
                             _tl3476635475_
                             _e3476735478_
                             _hd3476835481_
                             _tl3476935483_
                             _e3477035486_
                             _hd3477135489_
                             _tl3477235491_))))
                     (___match4224342244_
                      (lambda (_e3471735527_
                               _hd3471835530_
                               _tl3471935532_
                               _e3472035535_
                               _hd3472135538_
                               _tl3472235540_
                               _e3472335543_
                               _hd3472435546_
                               _tl3472535548_
                               _e3472635551_
                               _hd3472735554_
                               _tl3472835556_
                               _e3472935559_
                               _hd3473035562_
                               _tl3473135564_
                               _e3473235567_
                               _hd3473335570_
                               _tl3473435572_
                               _e3473535575_
                               _hd3473635578_
                               _tl3473735580_
                               _e3473835583_
                               _hd3473935586_
                               _tl3474035588_
                               _e3474135591_
                               _hd3474235594_
                               _tl3474335596_
                               _e3474435599_
                               _hd3474535602_
                               _tl3474635604_
                               _e3474735607_
                               _hd3474835610_
                               _tl3474935612_)
                        (let ((_L35615_ _hd3474835610_)
                              (_L35616_ _hd3474535602_)
                              (_L35617_ _hd3473635578_)
                              (_L35618_ _hd3472735554_))
                          (if (and (or (gxc#runtime-identifier=?
                                        _L35618_
                                        'slot-set!)
                                       (gxc#runtime-identifier=?
                                        _L35618_
                                        'unchecked-slot-set!))
                                   (gx#free-identifier=? _L35617_ _self34562_))
                              (___kont4186641867_
                               _L35615_
                               _L35616_
                               _L35617_
                               _L35618_)
                              (___kont4188041881_)))))
                     (___match4223542236_
                      (lambda (_e3471735527_
                               _hd3471835530_
                               _tl3471935532_
                               _e3472035535_
                               _hd3472135538_
                               _tl3472235540_
                               _e3472335543_
                               _hd3472435546_
                               _tl3472535548_
                               _e3472635551_
                               _hd3472735554_
                               _tl3472835556_
                               _e3472935559_
                               _hd3473035562_
                               _tl3473135564_
                               _e3473235567_
                               _hd3473335570_
                               _tl3473435572_
                               _e3473535575_
                               _hd3473635578_
                               _tl3473735580_
                               _e3473835583_
                               _hd3473935586_
                               _tl3474035588_
                               _e3474135591_
                               _hd3474235594_
                               _tl3474335596_
                               _e3474435599_
                               _hd3474535602_
                               _tl3474635604_)
                        (if (gx#stx-pair? _tl3474035588_)
                            (let ((_e3474735607_ (gx#stx-e _tl3474035588_)))
                              (let ((_tl3474935612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3474735607_)))
                                    (_hd3474835610_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3474735607_))))
                                (if (gx#stx-null? _tl3474935612_)
                                    (___match4224342244_
                                     _e3471735527_
                                     _hd3471835530_
                                     _tl3471935532_
                                     _e3472035535_
                                     _hd3472135538_
                                     _tl3472235540_
                                     _e3472335543_
                                     _hd3472435546_
                                     _tl3472535548_
                                     _e3472635551_
                                     _hd3472735554_
                                     _tl3472835556_
                                     _e3472935559_
                                     _hd3473035562_
                                     _tl3473135564_
                                     _e3473235567_
                                     _hd3473335570_
                                     _tl3473435572_
                                     _e3473535575_
                                     _hd3473635578_
                                     _tl3473735580_
                                     _e3473835583_
                                     _hd3473935586_
                                     _tl3474035588_
                                     _e3474135591_
                                     _hd3474235594_
                                     _tl3474335596_
                                     _e3474435599_
                                     _hd3474535602_
                                     _tl3474635604_
                                     _e3474735607_
                                     _hd3474835610_
                                     _tl3474935612_)
                                    (___kont4188041881_))))
                            (___match4235942360_
                             _e3471735527_
                             _hd3471835530_
                             _tl3471935532_
                             _e3472035535_
                             _hd3472135538_
                             _tl3472235540_
                             _e3472335543_
                             _hd3472435546_
                             _tl3472535548_
                             _e3472635551_
                             _hd3472735554_
                             _tl3472835556_
                             _e3472935559_
                             _hd3473035562_
                             _tl3473135564_
                             _e3473235567_
                             _hd3473335570_
                             _tl3473435572_
                             _e3473535575_
                             _hd3473635578_
                             _tl3473735580_
                             _e3473835583_
                             _hd3473935586_
                             _tl3474035588_))))
                     (___match4215742158_
                      (lambda (_e3468335661_
                               _hd3468435664_
                               _tl3468535666_
                               _e3468635669_
                               _hd3468735672_
                               _tl3468835674_
                               _e3468935677_
                               _hd3469035680_
                               _tl3469135682_
                               _e3469235685_
                               _hd3469335688_
                               _tl3469435690_
                               _e3469535693_
                               _hd3469635696_
                               _tl3469735698_
                               _e3469835701_
                               _hd3469935704_
                               _tl3470035706_
                               _e3470135709_
                               _hd3470235712_
                               _tl3470335714_
                               _e3470435717_
                               _hd3470535720_
                               _tl3470635722_
                               _e3470735725_
                               _hd3470835728_
                               _tl3470935730_
                               _e3471035733_
                               _hd3471135736_
                               _tl3471235738_)
                        (let ((_L35741_ _hd3471135736_)
                              (_L35742_ _hd3470235712_)
                              (_L35743_ _hd3469335688_))
                          (if (and (or (gxc#runtime-identifier=?
                                        _L35743_
                                        'slot-ref)
                                       (gxc#runtime-identifier=?
                                        _L35743_
                                        'unchecked-slot-ref))
                                   (gx#free-identifier=? _L35742_ _self34562_))
                              (___kont4186441865_ _L35741_ _L35742_ _L35743_)
                              (___match4236142362_
                               _e3468335661_
                               _hd3468435664_
                               _tl3468535666_
                               _e3468635669_
                               _hd3468735672_
                               _tl3468835674_
                               _e3468935677_
                               _hd3469035680_
                               _tl3469135682_
                               _e3469235685_
                               _hd3469335688_
                               _tl3469435690_
                               _e3469535693_
                               _hd3469635696_
                               _tl3469735698_
                               _e3469835701_
                               _hd3469935704_
                               _tl3470035706_
                               _e3470135709_
                               _hd3470235712_
                               _tl3470335714_
                               _e3470435717_
                               _hd3470535720_
                               _tl3470635722_)))))
                     (___match4215542156_
                      (lambda (_e3468335661_
                               _hd3468435664_
                               _tl3468535666_
                               _e3468635669_
                               _hd3468735672_
                               _tl3468835674_
                               _e3468935677_
                               _hd3469035680_
                               _tl3469135682_
                               _e3469235685_
                               _hd3469335688_
                               _tl3469435690_
                               _e3469535693_
                               _hd3469635696_
                               _tl3469735698_
                               _e3469835701_
                               _hd3469935704_
                               _tl3470035706_
                               _e3470135709_
                               _hd3470235712_
                               _tl3470335714_
                               _e3470435717_
                               _hd3470535720_
                               _tl3470635722_
                               _e3470735725_
                               _hd3470835728_
                               _tl3470935730_
                               _e3471035733_
                               _hd3471135736_
                               _tl3471235738_)
                        (if (gx#stx-null? _tl3470635722_)
                            (___match4215742158_
                             _e3468335661_
                             _hd3468435664_
                             _tl3468535666_
                             _e3468635669_
                             _hd3468735672_
                             _tl3468835674_
                             _e3468935677_
                             _hd3469035680_
                             _tl3469135682_
                             _e3469235685_
                             _hd3469335688_
                             _tl3469435690_
                             _e3469535693_
                             _hd3469635696_
                             _tl3469735698_
                             _e3469835701_
                             _hd3469935704_
                             _tl3470035706_
                             _e3470135709_
                             _hd3470235712_
                             _tl3470335714_
                             _e3470435717_
                             _hd3470535720_
                             _tl3470635722_
                             _e3470735725_
                             _hd3470835728_
                             _tl3470935730_
                             _e3471035733_
                             _hd3471135736_
                             _tl3471235738_)
                            (___match4223542236_
                             _e3468335661_
                             _hd3468435664_
                             _tl3468535666_
                             _e3468635669_
                             _hd3468735672_
                             _tl3468835674_
                             _e3468935677_
                             _hd3469035680_
                             _tl3469135682_
                             _e3469235685_
                             _hd3469335688_
                             _tl3469435690_
                             _e3469535693_
                             _hd3469635696_
                             _tl3469735698_
                             _e3469835701_
                             _hd3469935704_
                             _tl3470035706_
                             _e3470135709_
                             _hd3470235712_
                             _tl3470335714_
                             _e3470435717_
                             _hd3470535720_
                             _tl3470635722_
                             _e3470735725_
                             _hd3470835728_
                             _tl3470935730_
                             _e3471035733_
                             _hd3471135736_
                             _tl3471235738_))))
                     (___match4214542146_
                      (lambda (_e3468335661_
                               _hd3468435664_
                               _tl3468535666_
                               _e3468635669_
                               _hd3468735672_
                               _tl3468835674_
                               _e3468935677_
                               _hd3469035680_
                               _tl3469135682_
                               _e3469235685_
                               _hd3469335688_
                               _tl3469435690_
                               _e3469535693_
                               _hd3469635696_
                               _tl3469735698_
                               _e3469835701_
                               _hd3469935704_
                               _tl3470035706_
                               _e3470135709_
                               _hd3470235712_
                               _tl3470335714_
                               _e3470435717_
                               _hd3470535720_
                               _tl3470635722_
                               _e3470735725_
                               _hd3470835728_
                               _tl3470935730_)
                        (if (gx#stx-eq? '%#quote _hd3470835728_)
                            (if (gx#stx-pair? _tl3470935730_)
                                (let ((_e3471035733_
                                       (gx#stx-e _tl3470935730_)))
                                  (let ((_tl3471235738_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3471035733_)))
                                        (_hd3471135736_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3471035733_))))
                                    (if (gx#stx-null? _tl3471235738_)
                                        (if (gx#stx-null? _tl3470635722_)
                                            (___match4215742158_
                                             _e3468335661_
                                             _hd3468435664_
                                             _tl3468535666_
                                             _e3468635669_
                                             _hd3468735672_
                                             _tl3468835674_
                                             _e3468935677_
                                             _hd3469035680_
                                             _tl3469135682_
                                             _e3469235685_
                                             _hd3469335688_
                                             _tl3469435690_
                                             _e3469535693_
                                             _hd3469635696_
                                             _tl3469735698_
                                             _e3469835701_
                                             _hd3469935704_
                                             _tl3470035706_
                                             _e3470135709_
                                             _hd3470235712_
                                             _tl3470335714_
                                             _e3470435717_
                                             _hd3470535720_
                                             _tl3470635722_
                                             _e3470735725_
                                             _hd3470835728_
                                             _tl3470935730_
                                             _e3471035733_
                                             _hd3471135736_
                                             _tl3471235738_)
                                            (___match4223542236_
                                             _e3468335661_
                                             _hd3468435664_
                                             _tl3468535666_
                                             _e3468635669_
                                             _hd3468735672_
                                             _tl3468835674_
                                             _e3468935677_
                                             _hd3469035680_
                                             _tl3469135682_
                                             _e3469235685_
                                             _hd3469335688_
                                             _tl3469435690_
                                             _e3469535693_
                                             _hd3469635696_
                                             _tl3469735698_
                                             _e3469835701_
                                             _hd3469935704_
                                             _tl3470035706_
                                             _e3470135709_
                                             _hd3470235712_
                                             _tl3470335714_
                                             _e3470435717_
                                             _hd3470535720_
                                             _tl3470635722_
                                             _e3470735725_
                                             _hd3470835728_
                                             _tl3470935730_
                                             _e3471035733_
                                             _hd3471135736_
                                             _tl3471235738_))
                                        (___match4235942360_
                                         _e3468335661_
                                         _hd3468435664_
                                         _tl3468535666_
                                         _e3468635669_
                                         _hd3468735672_
                                         _tl3468835674_
                                         _e3468935677_
                                         _hd3469035680_
                                         _tl3469135682_
                                         _e3469235685_
                                         _hd3469335688_
                                         _tl3469435690_
                                         _e3469535693_
                                         _hd3469635696_
                                         _tl3469735698_
                                         _e3469835701_
                                         _hd3469935704_
                                         _tl3470035706_
                                         _e3470135709_
                                         _hd3470235712_
                                         _tl3470335714_
                                         _e3470435717_
                                         _hd3470535720_
                                         _tl3470635722_))))
                                (___match4235942360_
                                 _e3468335661_
                                 _hd3468435664_
                                 _tl3468535666_
                                 _e3468635669_
                                 _hd3468735672_
                                 _tl3468835674_
                                 _e3468935677_
                                 _hd3469035680_
                                 _tl3469135682_
                                 _e3469235685_
                                 _hd3469335688_
                                 _tl3469435690_
                                 _e3469535693_
                                 _hd3469635696_
                                 _tl3469735698_
                                 _e3469835701_
                                 _hd3469935704_
                                 _tl3470035706_
                                 _e3470135709_
                                 _hd3470235712_
                                 _tl3470335714_
                                 _e3470435717_
                                 _hd3470535720_
                                 _tl3470635722_))
                            (___match4235942360_
                             _e3468335661_
                             _hd3468435664_
                             _tl3468535666_
                             _e3468635669_
                             _hd3468735672_
                             _tl3468835674_
                             _e3468935677_
                             _hd3469035680_
                             _tl3469135682_
                             _e3469235685_
                             _hd3469335688_
                             _tl3469435690_
                             _e3469535693_
                             _hd3469635696_
                             _tl3469735698_
                             _e3469835701_
                             _hd3469935704_
                             _tl3470035706_
                             _e3470135709_
                             _hd3470235712_
                             _tl3470335714_
                             _e3470435717_
                             _hd3470535720_
                             _tl3470635722_))))
                     (___match4207742078_
                      (lambda (_e3463235782_
                               _hd3463335785_
                               _tl3463435787_
                               _e3463535790_
                               _hd3463635793_
                               _tl3463735795_
                               _e3463835798_
                               _hd3463935801_
                               _tl3464035803_
                               _e3464135806_
                               _hd3464235809_
                               _tl3464335811_
                               _e3464435814_
                               _hd3464535817_
                               _tl3464635819_
                               _e3464735822_
                               _hd3464835825_
                               _tl3464935827_
                               _e3465035830_
                               _hd3465135833_
                               _tl3465235835_
                               _e3465335838_
                               _hd3465435841_
                               _tl3465535843_
                               _e3465635846_
                               _hd3465735849_
                               _tl3465835851_
                               _e3465935854_
                               _hd3466035857_
                               _tl3466135859_
                               _e3466235862_
                               _hd3466335865_
                               _tl3466435867_
                               _e3466535870_
                               _hd3466635873_
                               _tl3466735875_
                               _e3466835878_
                               _hd3466935881_
                               _tl3467035883_
                               ___splice4186241863_
                               _target3467135886_
                               _tl3467335888_)
                        (letrec ((_loop3467435891_
                                  (lambda (_hd3467235894_ _args3467835896_)
                                    (if (gx#stx-pair? _hd3467235894_)
                                        (let ((_e3467535899_
                                               (gx#stx-e _hd3467235894_)))
                                          (let ((_lp-tl3467735904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3467535899_)))
                                                (_lp-hd3467635902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3467535899_))))
                                            (_loop3467435891_
                                             _lp-tl3467735904_
                                             (cons _lp-hd3467635902_
                                                   _args3467835896_))))
                                        (let ((_args3467935907_
                                               (reverse _args3467835896_)))
                                          (let ((_L35910_ _args3467935907_)
                                                (_L35911_ _hd3466935881_)
                                                (_L35912_ _hd3466035857_)
                                                (_L35913_ _hd3465135833_)
                                                (_L35914_ _hd3464235809_))
                                            (if (and (gxc#runtime-identifier=?
                                                      _L35914_
                                                      'apply)
                                                     (gxc#runtime-identifier=?
                                                      _L35913_
                                                      'call-method)
                                                     (gx#free-identifier=?
                                                      _L35912_
                                                      _self34562_))
                                                (___kont4186041861_
                                                 _L35910_
                                                 _L35911_
                                                 _L35912_
                                                 _L35913_
                                                 _L35914_)
                                                (___kont4188041881_))))))))
                          (_loop3467435891_ _target3467135886_ '()))))
                     (___match4203542036_
                      (lambda (_e3463235782_
                               _hd3463335785_
                               _tl3463435787_
                               _e3463535790_
                               _hd3463635793_
                               _tl3463735795_
                               _e3463835798_
                               _hd3463935801_
                               _tl3464035803_
                               _e3464135806_
                               _hd3464235809_
                               _tl3464335811_
                               _e3464435814_
                               _hd3464535817_
                               _tl3464635819_
                               _e3464735822_
                               _hd3464835825_
                               _tl3464935827_
                               _e3465035830_
                               _hd3465135833_
                               _tl3465235835_
                               _e3465335838_
                               _hd3465435841_
                               _tl3465535843_
                               _e3465635846_
                               _hd3465735849_
                               _tl3465835851_)
                        (if (gx#stx-eq? '%#ref _hd3465735849_)
                            (if (gx#stx-pair? _tl3465835851_)
                                (let ((_e3465935854_
                                       (gx#stx-e _tl3465835851_)))
                                  (let ((_tl3466135859_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3465935854_)))
                                        (_hd3466035857_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3465935854_))))
                                    (if (gx#stx-null? _tl3466135859_)
                                        (if (gx#stx-pair? _tl3465535843_)
                                            (let ((_e3466235862_
                                                   (gx#stx-e _tl3465535843_)))
                                              (let ((_tl3466435867_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3466235862_)))
                                                    (_hd3466335865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3466235862_))))
                                                (if (gx#stx-pair?
                                                     _hd3466335865_)
                                                    (let ((_e3466535870_
                                                           (gx#stx-e
                                                            _hd3466335865_)))
                                                      (let ((_tl3466735875_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3466535870_)))
                    (_hd3466635873_
                     (let () (declare (not safe)) (##car _e3466535870_))))
                (if (gx#identifier? _hd3466635873_)
                    (if (gx#stx-eq? '%#quote _hd3466635873_)
                        (if (gx#stx-pair? _tl3466735875_)
                            (let ((_e3466835878_ (gx#stx-e _tl3466735875_)))
                              (let ((_tl3467035883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3466835878_)))
                                    (_hd3466935881_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3466835878_))))
                                (if (gx#stx-null? _tl3467035883_)
                                    (if (gx#stx-pair/null? _tl3466435867_)
                                        (let ((___splice4186241863_
                                               (gx#syntax-split-splice
                                                _tl3466435867_
                                                '0)))
                                          (let ((_tl3467335888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4186241863_
                                                    '1)))
                                                (_target3467135886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4186241863_
                                                    '0))))
                                            (if (gx#stx-null? _tl3467335888_)
                                                (___match4207742078_
                                                 _e3463235782_
                                                 _hd3463335785_
                                                 _tl3463435787_
                                                 _e3463535790_
                                                 _hd3463635793_
                                                 _tl3463735795_
                                                 _e3463835798_
                                                 _hd3463935801_
                                                 _tl3464035803_
                                                 _e3464135806_
                                                 _hd3464235809_
                                                 _tl3464335811_
                                                 _e3464435814_
                                                 _hd3464535817_
                                                 _tl3464635819_
                                                 _e3464735822_
                                                 _hd3464835825_
                                                 _tl3464935827_
                                                 _e3465035830_
                                                 _hd3465135833_
                                                 _tl3465235835_
                                                 _e3465335838_
                                                 _hd3465435841_
                                                 _tl3465535843_
                                                 _e3465635846_
                                                 _hd3465735849_
                                                 _tl3465835851_
                                                 _e3465935854_
                                                 _hd3466035857_
                                                 _tl3466135859_
                                                 _e3466235862_
                                                 _hd3466335865_
                                                 _tl3466435867_
                                                 _e3466535870_
                                                 _hd3466635873_
                                                 _tl3466735875_
                                                 _e3466835878_
                                                 _hd3466935881_
                                                 _tl3467035883_
                                                 ___splice4186241863_
                                                 _target3467135886_
                                                 _tl3467335888_)
                                                (___kont4188041881_))))
                                        (___kont4188041881_))
                                    (___kont4188041881_))))
                            (___kont4188041881_))
                        (___kont4188041881_))
                    (___kont4188041881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4188041881_))))
                                            (___match4235942360_
                                             _e3463235782_
                                             _hd3463335785_
                                             _tl3463435787_
                                             _e3463535790_
                                             _hd3463635793_
                                             _tl3463735795_
                                             _e3463835798_
                                             _hd3463935801_
                                             _tl3464035803_
                                             _e3464135806_
                                             _hd3464235809_
                                             _tl3464335811_
                                             _e3464435814_
                                             _hd3464535817_
                                             _tl3464635819_
                                             _e3464735822_
                                             _hd3464835825_
                                             _tl3464935827_
                                             _e3465035830_
                                             _hd3465135833_
                                             _tl3465235835_
                                             _e3465335838_
                                             _hd3465435841_
                                             _tl3465535843_))
                                        (___match4235942360_
                                         _e3463235782_
                                         _hd3463335785_
                                         _tl3463435787_
                                         _e3463535790_
                                         _hd3463635793_
                                         _tl3463735795_
                                         _e3463835798_
                                         _hd3463935801_
                                         _tl3464035803_
                                         _e3464135806_
                                         _hd3464235809_
                                         _tl3464335811_
                                         _e3464435814_
                                         _hd3464535817_
                                         _tl3464635819_
                                         _e3464735822_
                                         _hd3464835825_
                                         _tl3464935827_
                                         _e3465035830_
                                         _hd3465135833_
                                         _tl3465235835_
                                         _e3465335838_
                                         _hd3465435841_
                                         _tl3465535843_))))
                                (___match4235942360_
                                 _e3463235782_
                                 _hd3463335785_
                                 _tl3463435787_
                                 _e3463535790_
                                 _hd3463635793_
                                 _tl3463735795_
                                 _e3463835798_
                                 _hd3463935801_
                                 _tl3464035803_
                                 _e3464135806_
                                 _hd3464235809_
                                 _tl3464335811_
                                 _e3464435814_
                                 _hd3464535817_
                                 _tl3464635819_
                                 _e3464735822_
                                 _hd3464835825_
                                 _tl3464935827_
                                 _e3465035830_
                                 _hd3465135833_
                                 _tl3465235835_
                                 _e3465335838_
                                 _hd3465435841_
                                 _tl3465535843_))
                            (___match4214542146_
                             _e3463235782_
                             _hd3463335785_
                             _tl3463435787_
                             _e3463535790_
                             _hd3463635793_
                             _tl3463735795_
                             _e3463835798_
                             _hd3463935801_
                             _tl3464035803_
                             _e3464135806_
                             _hd3464235809_
                             _tl3464335811_
                             _e3464435814_
                             _hd3464535817_
                             _tl3464635819_
                             _e3464735822_
                             _hd3464835825_
                             _tl3464935827_
                             _e3465035830_
                             _hd3465135833_
                             _tl3465235835_
                             _e3465335838_
                             _hd3465435841_
                             _tl3465535843_
                             _e3465635846_
                             _hd3465735849_
                             _tl3465835851_))))
                     (___match4196741968_
                      (lambda (_e3458835974_
                               _hd3458935977_
                               _tl3459035979_
                               _e3459135982_
                               _hd3459235985_
                               _tl3459335987_
                               _e3459435990_
                               _hd3459535993_
                               _tl3459635995_
                               _e3459735998_
                               _hd3459836001_
                               _tl3459936003_
                               _e3460036006_
                               _hd3460136009_
                               _tl3460236011_
                               _e3460336014_
                               _hd3460436017_
                               _tl3460536019_
                               _e3460636022_
                               _hd3460736025_
                               _tl3460836027_
                               _e3460936030_
                               _hd3461036033_
                               _tl3461136035_
                               _e3461236038_
                               _hd3461336041_
                               _tl3461436043_
                               _e3461536046_
                               _hd3461636049_
                               _tl3461736051_
                               ___splice4185841859_
                               _target3461836054_
                               _tl3462036056_)
                        (letrec ((_loop3462136059_
                                  (lambda (_hd3461936062_ _args3462536064_)
                                    (if (gx#stx-pair? _hd3461936062_)
                                        (let ((_e3462236067_
                                               (gx#stx-e _hd3461936062_)))
                                          (let ((_lp-tl3462436072_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3462236067_)))
                                                (_lp-hd3462336070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3462236067_))))
                                            (_loop3462136059_
                                             _lp-tl3462436072_
                                             (cons _lp-hd3462336070_
                                                   _args3462536064_))))
                                        (let ((_args3462636075_
                                               (reverse _args3462536064_)))
                                          (let ((_L36078_ _args3462636075_)
                                                (_L36079_ _hd3461636049_)
                                                (_L36080_ _hd3460736025_)
                                                (_L36081_ _hd3459836001_))
                                            (if (and (gxc#runtime-identifier=?
                                                      _L36081_
                                                      'call-method)
                                                     (gx#free-identifier=?
                                                      _L36080_
                                                      _self34562_))
                                                (___kont4185641857_
                                                 _L36078_
                                                 _L36079_
                                                 _L36080_
                                                 _L36081_)
                                                (___match4215542156_
                                                 _e3458835974_
                                                 _hd3458935977_
                                                 _tl3459035979_
                                                 _e3459135982_
                                                 _hd3459235985_
                                                 _tl3459335987_
                                                 _e3459435990_
                                                 _hd3459535993_
                                                 _tl3459635995_
                                                 _e3459735998_
                                                 _hd3459836001_
                                                 _tl3459936003_
                                                 _e3460036006_
                                                 _hd3460136009_
                                                 _tl3460236011_
                                                 _e3460336014_
                                                 _hd3460436017_
                                                 _tl3460536019_
                                                 _e3460636022_
                                                 _hd3460736025_
                                                 _tl3460836027_
                                                 _e3460936030_
                                                 _hd3461036033_
                                                 _tl3461136035_
                                                 _e3461236038_
                                                 _hd3461336041_
                                                 _tl3461436043_
                                                 _e3461536046_
                                                 _hd3461636049_
                                                 _tl3461736051_))))))))
                          (_loop3462136059_ _target3461836054_ '())))))
                (if (gx#stx-pair? ___stx4185441855_)
                    (let ((_e3458835974_ (gx#stx-e ___stx4185441855_)))
                      (let ((_tl3459035979_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3458835974_)))
                            (_hd3458935977_
                             (let ()
                               (declare (not safe))
                               (##car _e3458835974_))))
                        (if (gx#stx-pair? _tl3459035979_)
                            (let ((_e3459135982_ (gx#stx-e _tl3459035979_)))
                              (let ((_tl3459335987_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3459135982_)))
                                    (_hd3459235985_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3459135982_))))
                                (if (gx#stx-pair? _hd3459235985_)
                                    (let ((_e3459435990_
                                           (gx#stx-e _hd3459235985_)))
                                      (let ((_tl3459635995_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3459435990_)))
                                            (_hd3459535993_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3459435990_))))
                                        (if (gx#identifier? _hd3459535993_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3459535993_)
                                                (if (gx#stx-pair?
                                                     _tl3459635995_)
                                                    (let ((_e3459735998_
                                                           (gx#stx-e
                                                            _tl3459635995_)))
                                                      (let ((_tl3459936003_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3459735998_)))
                    (_hd3459836001_
                     (let () (declare (not safe)) (##car _e3459735998_))))
                (if (gx#stx-null? _tl3459936003_)
                    (if (gx#stx-pair? _tl3459335987_)
                        (let ((_e3460036006_ (gx#stx-e _tl3459335987_)))
                          (let ((_tl3460236011_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3460036006_)))
                                (_hd3460136009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3460036006_))))
                            (if (gx#stx-pair? _hd3460136009_)
                                (let ((_e3460336014_
                                       (gx#stx-e _hd3460136009_)))
                                  (let ((_tl3460536019_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3460336014_)))
                                        (_hd3460436017_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3460336014_))))
                                    (if (gx#identifier? _hd3460436017_)
                                        (if (gx#stx-eq? '%#ref _hd3460436017_)
                                            (if (gx#stx-pair? _tl3460536019_)
                                                (let ((_e3460636022_
                                                       (gx#stx-e
                                                        _tl3460536019_)))
                                                  (let ((_tl3460836027_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3460636022_)))
                                                        (_hd3460736025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3460636022_))))
                                                    (if (gx#stx-null?
                                                         _tl3460836027_)
                                                        (if (gx#stx-pair?
                                                             _tl3460236011_)
                                                            (let ((_e3460936030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3460236011_)))
                      (let ((_tl3461136035_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3460936030_)))
                            (_hd3461036033_
                             (let ()
                               (declare (not safe))
                               (##car _e3460936030_))))
                        (if (gx#stx-pair? _hd3461036033_)
                            (let ((_e3461236038_ (gx#stx-e _hd3461036033_)))
                              (let ((_tl3461436043_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3461236038_)))
                                    (_hd3461336041_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3461236038_))))
                                (if (gx#identifier? _hd3461336041_)
                                    (if (gx#stx-eq? '%#quote _hd3461336041_)
                                        (if (gx#stx-pair? _tl3461436043_)
                                            (let ((_e3461536046_
                                                   (gx#stx-e _tl3461436043_)))
                                              (let ((_tl3461736051_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3461536046_)))
                                                    (_hd3461636049_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3461536046_))))
                                                (if (gx#stx-null?
                                                     _tl3461736051_)
                                                    (if (gx#stx-pair/null?
                                                         _tl3461136035_)
                                                        (let ((___splice4185841859_
                                                               (gx#syntax-split-splice
                                                                _tl3461136035_
                                                                '0)))
                                                          (let ((_tl3462036056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4185841859_ '1)))
                        (_target3461836054_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4185841859_ '0))))
                    (if (gx#stx-null? _tl3462036056_)
                        (___match4196741968_
                         _e3458835974_
                         _hd3458935977_
                         _tl3459035979_
                         _e3459135982_
                         _hd3459235985_
                         _tl3459335987_
                         _e3459435990_
                         _hd3459535993_
                         _tl3459635995_
                         _e3459735998_
                         _hd3459836001_
                         _tl3459936003_
                         _e3460036006_
                         _hd3460136009_
                         _tl3460236011_
                         _e3460336014_
                         _hd3460436017_
                         _tl3460536019_
                         _e3460636022_
                         _hd3460736025_
                         _tl3460836027_
                         _e3460936030_
                         _hd3461036033_
                         _tl3461136035_
                         _e3461236038_
                         _hd3461336041_
                         _tl3461436043_
                         _e3461536046_
                         _hd3461636049_
                         _tl3461736051_
                         ___splice4185841859_
                         _target3461836054_
                         _tl3462036056_)
                        (___match4215542156_
                         _e3458835974_
                         _hd3458935977_
                         _tl3459035979_
                         _e3459135982_
                         _hd3459235985_
                         _tl3459335987_
                         _e3459435990_
                         _hd3459535993_
                         _tl3459635995_
                         _e3459735998_
                         _hd3459836001_
                         _tl3459936003_
                         _e3460036006_
                         _hd3460136009_
                         _tl3460236011_
                         _e3460336014_
                         _hd3460436017_
                         _tl3460536019_
                         _e3460636022_
                         _hd3460736025_
                         _tl3460836027_
                         _e3460936030_
                         _hd3461036033_
                         _tl3461136035_
                         _e3461236038_
                         _hd3461336041_
                         _tl3461436043_
                         _e3461536046_
                         _hd3461636049_
                         _tl3461736051_))))
                (___match4215542156_
                 _e3458835974_
                 _hd3458935977_
                 _tl3459035979_
                 _e3459135982_
                 _hd3459235985_
                 _tl3459335987_
                 _e3459435990_
                 _hd3459535993_
                 _tl3459635995_
                 _e3459735998_
                 _hd3459836001_
                 _tl3459936003_
                 _e3460036006_
                 _hd3460136009_
                 _tl3460236011_
                 _e3460336014_
                 _hd3460436017_
                 _tl3460536019_
                 _e3460636022_
                 _hd3460736025_
                 _tl3460836027_
                 _e3460936030_
                 _hd3461036033_
                 _tl3461136035_
                 _e3461236038_
                 _hd3461336041_
                 _tl3461436043_
                 _e3461536046_
                 _hd3461636049_
                 _tl3461736051_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4235942360_
                                                     _e3458835974_
                                                     _hd3458935977_
                                                     _tl3459035979_
                                                     _e3459135982_
                                                     _hd3459235985_
                                                     _tl3459335987_
                                                     _e3459435990_
                                                     _hd3459535993_
                                                     _tl3459635995_
                                                     _e3459735998_
                                                     _hd3459836001_
                                                     _tl3459936003_
                                                     _e3460036006_
                                                     _hd3460136009_
                                                     _tl3460236011_
                                                     _e3460336014_
                                                     _hd3460436017_
                                                     _tl3460536019_
                                                     _e3460636022_
                                                     _hd3460736025_
                                                     _tl3460836027_
                                                     _e3460936030_
                                                     _hd3461036033_
                                                     _tl3461136035_))))
                                            (___match4235942360_
                                             _e3458835974_
                                             _hd3458935977_
                                             _tl3459035979_
                                             _e3459135982_
                                             _hd3459235985_
                                             _tl3459335987_
                                             _e3459435990_
                                             _hd3459535993_
                                             _tl3459635995_
                                             _e3459735998_
                                             _hd3459836001_
                                             _tl3459936003_
                                             _e3460036006_
                                             _hd3460136009_
                                             _tl3460236011_
                                             _e3460336014_
                                             _hd3460436017_
                                             _tl3460536019_
                                             _e3460636022_
                                             _hd3460736025_
                                             _tl3460836027_
                                             _e3460936030_
                                             _hd3461036033_
                                             _tl3461136035_))
                                        (___match4203542036_
                                         _e3458835974_
                                         _hd3458935977_
                                         _tl3459035979_
                                         _e3459135982_
                                         _hd3459235985_
                                         _tl3459335987_
                                         _e3459435990_
                                         _hd3459535993_
                                         _tl3459635995_
                                         _e3459735998_
                                         _hd3459836001_
                                         _tl3459936003_
                                         _e3460036006_
                                         _hd3460136009_
                                         _tl3460236011_
                                         _e3460336014_
                                         _hd3460436017_
                                         _tl3460536019_
                                         _e3460636022_
                                         _hd3460736025_
                                         _tl3460836027_
                                         _e3460936030_
                                         _hd3461036033_
                                         _tl3461136035_
                                         _e3461236038_
                                         _hd3461336041_
                                         _tl3461436043_))
                                    (___match4235942360_
                                     _e3458835974_
                                     _hd3458935977_
                                     _tl3459035979_
                                     _e3459135982_
                                     _hd3459235985_
                                     _tl3459335987_
                                     _e3459435990_
                                     _hd3459535993_
                                     _tl3459635995_
                                     _e3459735998_
                                     _hd3459836001_
                                     _tl3459936003_
                                     _e3460036006_
                                     _hd3460136009_
                                     _tl3460236011_
                                     _e3460336014_
                                     _hd3460436017_
                                     _tl3460536019_
                                     _e3460636022_
                                     _hd3460736025_
                                     _tl3460836027_
                                     _e3460936030_
                                     _hd3461036033_
                                     _tl3461136035_))))
                            (___match4235942360_
                             _e3458835974_
                             _hd3458935977_
                             _tl3459035979_
                             _e3459135982_
                             _hd3459235985_
                             _tl3459335987_
                             _e3459435990_
                             _hd3459535993_
                             _tl3459635995_
                             _e3459735998_
                             _hd3459836001_
                             _tl3459936003_
                             _e3460036006_
                             _hd3460136009_
                             _tl3460236011_
                             _e3460336014_
                             _hd3460436017_
                             _tl3460536019_
                             _e3460636022_
                             _hd3460736025_
                             _tl3460836027_
                             _e3460936030_
                             _hd3461036033_
                             _tl3461136035_))))
                    (___match4229742298_
                     _e3458835974_
                     _hd3458935977_
                     _tl3459035979_
                     _e3459135982_
                     _hd3459235985_
                     _tl3459335987_
                     _e3459435990_
                     _hd3459535993_
                     _tl3459635995_
                     _e3459735998_
                     _hd3459836001_
                     _tl3459936003_
                     _e3460036006_
                     _hd3460136009_
                     _tl3460236011_
                     _e3460336014_
                     _hd3460436017_
                     _tl3460536019_
                     _e3460636022_
                     _hd3460736025_
                     _tl3460836027_))
                (___kont4188041881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4188041881_))
                                            (___kont4188041881_))
                                        (___kont4188041881_))))
                                (___kont4188041881_))))
                        (___kont4188041881_))
                    (___kont4188041881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4188041881_))
                                                (___kont4188041881_))
                                            (___kont4188041881_))))
                                    (___kont4188041881_))))
                            (___kont4188041881_))))
                    (___kont4188041881_))))))))))
