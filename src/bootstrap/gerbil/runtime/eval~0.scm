(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1711709197)
  (begin
    (define __syntax::t
      (let ((__tmp77832 (list)) (__tmp77831 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77832
         '(e id)
         __tmp77831
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77642_ (apply make-instance __syntax::t _$args77642_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (__make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp77834 (list __syntax::t))
            (__tmp77833 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77834
         '()
         __tmp77833
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77639_ (apply make-instance __core-form::t _$args77639_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp77836 (list __core-form::t))
            (__tmp77835 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77836
         '()
         __tmp77835
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77636_
        (apply make-instance __core-expression::t _$args77636_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp77838 (list __core-form::t))
            (__tmp77837 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77838
         '()
         __tmp77837
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77633_
        (apply make-instance __core-special-form::t _$args77633_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_id77631_)
        (let ((__tmp77839 (let () (declare (not safe)) (__AST-e _id77631_))))
          (declare (not safe))
          (hash-get __core __tmp77839))))
    (define __core-bound-id?__%
      (lambda (_id77615_ _is?77616_)
        (let ((_$e77618_
               (let () (declare (not safe)) (__core-resolve _id77615_))))
          (if _$e77618_ (_is?77616_ _$e77618_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77624_)
        (let ((_is?77626_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77624_ _is?77626_))))
    (define __core-bound-id?
      (lambda _g77841_
        (let ((_g77840_ (let () (declare (not safe)) (##length _g77841_))))
          (cond ((let () (declare (not safe)) (##fx= _g77840_ 1))
                 (apply (lambda (_id77624_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77624_)))
                        _g77841_))
                ((let () (declare (not safe)) (##fx= _g77840_ 2))
                 (apply (lambda (_id77628_ _is?77629_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77628_ _is?77629_)))
                        _g77841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77841_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77598_ _e77599_ _make77600_)
        (let ((__tmp77842
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77599_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77599_
                   (_make77600_ _e77599_ _id77598_))))
          (declare (not safe))
          (hash-put! __core _id77598_ __tmp77842))))
    (define __core-bind-syntax!__0
      (lambda (_id77605_ _e77606_)
        (let ((_make77608_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77605_ _e77606_ _make77608_))))
    (define __core-bind-syntax!
      (lambda _g77844_
        (let ((_g77843_ (let () (declare (not safe)) (##length _g77844_))))
          (cond ((let () (declare (not safe)) (##fx= _g77843_ 2))
                 (apply (lambda (_id77605_ _e77606_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77605_ _e77606_)))
                        _g77844_))
                ((let () (declare (not safe)) (##fx= _g77843_ 3))
                 (apply (lambda (_id77610_ _e77611_ _make77612_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77610_
                             _e77611_
                             _make77612_)))
                        _g77844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77844_))))))
    (define __SRC__%
      (lambda (_e77581_ _src-stx77582_)
        (if (or (let () (declare (not safe)) (pair? _e77581_))
                (let () (declare (not safe)) (symbol? _e77581_)))
            (let ((__tmp77845
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77582_
                          'gerbil#AST::t))
                       (let ((__tmp77846
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77582_))))
                         (declare (not safe))
                         (__locat __tmp77846))
                       '#f)))
              (declare (not safe))
              (##make-source _e77581_ __tmp77845))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77581_ 'gerbil#AST::t))
                (let ((__tmp77849
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77581_ '1 '#f '#f)))
                      (__tmp77847
                       (let ((__tmp77848
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77581_))))
                         (declare (not safe))
                         (__locat __tmp77848))))
                  (declare (not safe))
                  (##make-source __tmp77849 __tmp77847))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77581_))))))
    (define __SRC__0
      (lambda (_e77590_)
        (let ((_src-stx77592_ '#f))
          (declare (not safe))
          (__SRC__% _e77590_ _src-stx77592_))))
    (define __SRC
      (lambda _g77851_
        (let ((_g77850_ (let () (declare (not safe)) (##length _g77851_))))
          (cond ((let () (declare (not safe)) (##fx= _g77850_ 1))
                 (apply (lambda (_e77590_)
                          (let () (declare (not safe)) (__SRC__0 _e77590_)))
                        _g77851_))
                ((let () (declare (not safe)) (##fx= _g77850_ 2))
                 (apply (lambda (_e77594_ _src-stx77595_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77594_ _src-stx77595_)))
                        _g77851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77851_))))))
    (define __locat
      (lambda (_loc77578_)
        (if (let () (declare (not safe)) (##locat? _loc77578_))
            _loc77578_
            '#f)))
    (define __check-values
      (lambda (_obj77573_ _k77574_)
        (let ((_count77576_
               (if (let () (declare (not safe)) (##values? _obj77573_))
                   (let () (declare (not safe)) (##vector-length _obj77573_))
                   '1)))
          (if (fx= _count77576_ _k77574_)
              '#!void
              (let ((__tmp77853
                     (if (fx< _count77576_ _k77574_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77852
                     (if (let () (declare (not safe)) (##values? _obj77573_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77573_))
                         _obj77573_)))
                (declare (not safe))
                (error __tmp77853 __tmp77852 _k77574_))))))
    (define __compile
      (lambda (_stx77543_)
        (let* ((_$e77545_ _stx77543_)
               (_$E7754777553_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77545_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77545_))
              (let* ((_$tgt7754877556_
                      (let () (declare (not safe)) (__AST-e _$e77545_)))
                     (_$hd7754977559_
                      (let () (declare (not safe)) (##car _$tgt7754877556_)))
                     (_$tl7755077562_
                      (let () (declare (not safe)) (##cdr _$tgt7754877556_))))
                (let* ((_form77566_ _$hd7754977559_)
                       (_$e77568_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77566_))))
                  (if _$e77568_
                      ((lambda (_bind77571_)
                         ((##structure-ref _bind77571_ '1 __syntax::t '#f)
                          _stx77543_))
                       _$e77568_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77543_
                         _form77566_)))))
              (let () (declare (not safe)) (_$E7754777553_))))))
    (define __compile-error__%
      (lambda (_stx77530_ _detail77531_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77530_
           _detail77531_))))
    (define __compile-error__0
      (lambda (_stx77536_)
        (let ((_detail77538_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77536_ _detail77538_))))
    (define __compile-error
      (lambda _g77855_
        (let ((_g77854_ (let () (declare (not safe)) (##length _g77855_))))
          (cond ((let () (declare (not safe)) (##fx= _g77854_ 1))
                 (apply (lambda (_stx77536_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77536_)))
                        _g77855_))
                ((let () (declare (not safe)) (##fx= _g77854_ 2))
                 (apply (lambda (_stx77540_ _detail77541_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77540_ _detail77541_)))
                        _g77855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77855_))))))
    (define __compile-ignore%
      (lambda (_stx77527_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77527_))))
    (define __compile-begin%
      (lambda (_stx77502_)
        (let* ((_$e77504_ _stx77502_)
               (_$E7750677512_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77504_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77504_))
              (let* ((_$tgt7750777515_
                      (let () (declare (not safe)) (__AST-e _$e77504_)))
                     (_$hd7750877518_
                      (let () (declare (not safe)) (##car _$tgt7750777515_)))
                     (_$tl7750977521_
                      (let () (declare (not safe)) (##cdr _$tgt7750777515_))))
                (let* ((_body77525_ _$tl7750977521_)
                       (__tmp77856 (cons 'begin (map __compile _body77525_))))
                  (declare (not safe))
                  (__SRC__% __tmp77856 _stx77502_)))
              (let () (declare (not safe)) (_$E7750677512_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77477_)
        (let* ((_$e77479_ _stx77477_)
               (_$E7748177487_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77479_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77479_))
              (let* ((_$tgt7748277490_
                      (let () (declare (not safe)) (__AST-e _$e77479_)))
                     (_$hd7748377493_
                      (let () (declare (not safe)) (##car _$tgt7748277490_)))
                     (_$tl7748477496_
                      (let () (declare (not safe)) (##cdr _$tgt7748277490_))))
                (let* ((_body77500_ _$tl7748477496_)
                       (__tmp77857
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _body77500_)))))
                  (declare (not safe))
                  (__SRC__% __tmp77857 _stx77477_)))
              (let () (declare (not safe)) (_$E7748177487_))))))
    (define __compile-import%
      (lambda (_stx77452_)
        (let* ((_$e77454_ _stx77452_)
               (_$E7745677462_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77454_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77454_))
              (let* ((_$tgt7745777465_
                      (let () (declare (not safe)) (__AST-e _$e77454_)))
                     (_$hd7745877468_
                      (let () (declare (not safe)) (##car _$tgt7745777465_)))
                     (_$tl7745977471_
                      (let () (declare (not safe)) (##cdr _$tgt7745777465_))))
                (let* ((_body77475_ _$tl7745977471_)
                       (__tmp77858
                        (cons '__eval-import
                              (cons (cons 'quote (cons _body77475_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp77858 _stx77452_)))
              (let () (declare (not safe)) (_$E7745677462_))))))
    (define __compile-begin-annotation%
      (lambda (_stx77399_)
        (let* ((_$e77401_ _stx77399_)
               (_$E7740377415_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77401_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77401_))
              (let* ((_$tgt7740477418_
                      (let () (declare (not safe)) (__AST-e _$e77401_)))
                     (_$hd7740577421_
                      (let () (declare (not safe)) (##car _$tgt7740477418_)))
                     (_$tl7740677424_
                      (let () (declare (not safe)) (##cdr _$tgt7740477418_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7740677424_))
                    (let* ((_$tgt7740777428_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7740677424_)))
                           (_$hd7740877431_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7740777428_)))
                           (_$tl7740977434_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7740777428_))))
                      (let ((_ann77438_ _$hd7740877431_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7740977434_))
                            (let* ((_$tgt7741077440_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7740977434_)))
                                   (_$hd7741177443_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7741077440_)))
                                   (_$tl7741277446_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7741077440_))))
                              (let ((_expr77450_ _$hd7741177443_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7741277446_))
                                            '())
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77450_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7740377415_)))))
                            (let () (declare (not safe)) (_$E7740377415_)))))
                    (let () (declare (not safe)) (_$E7740377415_))))
              (let () (declare (not safe)) (_$E7740377415_))))))
    (define __compile-define-values%
      (lambda (_stx77290_)
        (let* ((_$e77292_ _stx77290_)
               (_$E7729477306_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77292_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77292_))
              (let* ((_$tgt7729577309_
                      (let () (declare (not safe)) (__AST-e _$e77292_)))
                     (_$hd7729677312_
                      (let () (declare (not safe)) (##car _$tgt7729577309_)))
                     (_$tl7729777315_
                      (let () (declare (not safe)) (##cdr _$tgt7729577309_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7729777315_))
                    (let* ((_$tgt7729877319_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7729777315_)))
                           (_$hd7729977322_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7729877319_)))
                           (_$tl7730077325_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7729877319_))))
                      (let ((_hd77329_ _$hd7729977322_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7730077325_))
                            (let* ((_$tgt7730177331_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7730077325_)))
                                   (_$hd7730277334_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7730177331_)))
                                   (_$tl7730377337_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7730177331_))))
                              (let ((_expr77341_ _$hd7730277334_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7730377337_))
                                            '())
                                    (let* ((_$e77343_ _hd77329_)
                                           (_$E7734577386_
                                            (lambda ()
                                              (let ((_$E7734677371_
                                                     (lambda ()
                                                       (let* ((_$E7734777358_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e77343_))))
                      (_ids77361_ _hd77329_)
                      (_len77363_ (length _ids77361_))
                      (_tmp77365_
                       (let ((__tmp77859
                              (let () (declare (not safe)) (##gensym))))
                         (declare (not safe))
                         (__SRC__0 __tmp77859))))
                 (let ((__tmp77860
                        (cons 'begin
                              (cons (let ((__tmp77861
                                           (cons 'define
                                                 (cons _tmp77365_
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _expr77341_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp77861 _stx77290_))
                                    (cons (let ((__tmp77862
                                                 (cons '__check-values
                                                       (cons _tmp77365_
                                                             (cons _len77363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (__SRC__% __tmp77862 _stx77290_))
                                          (let ((__tmp77863
                                                 (let ((__tmp77865
                                                        (lambda (_id77368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _k77369_)
                  (if (let () (declare (not safe)) (__AST-e _id77368_))
                      (let ((__tmp77866
                             (cons 'define
                                   (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77368_))
                                         (cons (cons '##vector-ref
                                                     (cons _tmp77365_
                                                           (cons _k77369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (__SRC__% __tmp77866 _stx77290_))
                      '#f)))
               (__tmp77864 (let () (declare (not safe)) (##iota _len77363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__filter-map2
                                                    __tmp77865
                                                    _ids77361_
                                                    __tmp77864))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp77863)))))))
                   (declare (not safe))
                   (__SRC__% __tmp77860 _stx77290_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e77343_))
                                                    (let* ((_$tgt7734877374_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e77343_)))
                                                           (_$hd7734977377_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7734877374_)))
                                                           (_$tl7735077380_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7734877374_))))
                                                      (let ((_id77384_
                                                             _$hd7734977377_))
                                                        (if (equal? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (__AST-e _$tl7735077380_))
                            '())
                    (let ((__tmp77867
                           (cons 'define
                                 (cons (let ()
                                         (declare (not safe))
                                         (__SRC__0 _id77384_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (__compile _expr77341_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp77867 _stx77290_))
                    (let () (declare (not safe)) (_$E7734677371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7734677371_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e77343_))
                                          (let* ((_$tgt7735177389_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e77343_)))
                                                 (_$hd7735277392_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7735177389_)))
                                                 (_$tl7735377395_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7735177389_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _$hd7735277392_))
                                                        '#f)
                                                (if (equal? (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$tl7735377395_))
                                                            '())
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr77341_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7734577386_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7734577386_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7734577386_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7729477306_)))))
                            (let () (declare (not safe)) (_$E7729477306_)))))
                    (let () (declare (not safe)) (_$E7729477306_))))
              (let () (declare (not safe)) (_$E7729477306_))))))
    (define __compile-head-id
      (lambda (_e77288_)
        (let ((__tmp77868
               (if (let () (declare (not safe)) (__AST-e _e77288_))
                   _e77288_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp77868))))
    (define __compile-lambda-head
      (lambda (_hd77245_)
        (let _recur77247_ ((_rest77249_ _hd77245_))
          (let* ((_$e77251_ _rest77249_)
                 (_$E7725377271_
                  (lambda ()
                    (let ((_$E7725477268_
                           (lambda ()
                             (let* ((_$E7725577263_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e77251_))))
                                    (_tail77266_ _$e77251_))
                               (declare (not safe))
                               (__compile-head-id _tail77266_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77251_))
                                  '())
                          '()
                          (let () (declare (not safe)) (_$E7725477268_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77251_))
                (let* ((_$tgt7725677274_
                        (let () (declare (not safe)) (__AST-e _$e77251_)))
                       (_$hd7725777277_
                        (let () (declare (not safe)) (##car _$tgt7725677274_)))
                       (_$tl7725877280_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7725677274_))))
                  (let* ((_hd77284_ _$hd7725777277_)
                         (_rest77286_ _$tl7725877280_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _hd77284_))
                          (let ()
                            (declare (not safe))
                            (_recur77247_ _rest77286_)))))
                (let () (declare (not safe)) (_$E7725377271_)))))))
    (define __compile-lambda%
      (lambda (_stx77192_)
        (let* ((_$e77194_ _stx77192_)
               (_$E7719677208_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77194_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77194_))
              (let* ((_$tgt7719777211_
                      (let () (declare (not safe)) (__AST-e _$e77194_)))
                     (_$hd7719877214_
                      (let () (declare (not safe)) (##car _$tgt7719777211_)))
                     (_$tl7719977217_
                      (let () (declare (not safe)) (##cdr _$tgt7719777211_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7719977217_))
                    (let* ((_$tgt7720077221_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7719977217_)))
                           (_$hd7720177224_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7720077221_)))
                           (_$tl7720277227_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7720077221_))))
                      (let ((_hd77231_ _$hd7720177224_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7720277227_))
                            (let* ((_$tgt7720377233_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7720277227_)))
                                   (_$hd7720477236_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7720377233_)))
                                   (_$tl7720577239_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7720377233_))))
                              (let ((_body77243_ _$hd7720477236_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7720577239_))
                                            '())
                                    (let ((__tmp77869
                                           (cons 'lambda
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__compile-lambda-head
                                                          _hd77231_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _body77243_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp77869 _stx77192_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7719677208_)))))
                            (let () (declare (not safe)) (_$E7719677208_)))))
                    (let () (declare (not safe)) (_$E7719677208_))))
              (let () (declare (not safe)) (_$E7719677208_))))))
    (define __compile-case-lambda%
      (lambda (_stx76984_)
        (letrec ((_variadic?76986_
                  (lambda (_hd77157_)
                    (let* ((_$e77159_ _hd77157_)
                           (_$E7716177177_
                            (lambda ()
                              (let ((_$E7716277174_
                                     (lambda ()
                                       (let ((_$E7716377171_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e77159_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _$e77159_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7716277174_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77159_))
                          (let* ((_$tgt7716477180_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77159_)))
                                 (_$hd7716577183_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7716477180_)))
                                 (_$tl7716677186_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7716477180_))))
                            (let ((_rest77190_ _$tl7716677186_))
                              (declare (not safe))
                              (_variadic?76986_ _rest77190_)))
                          (let () (declare (not safe)) (_$E7716177177_))))))
                 (_arity76987_
                  (lambda (_hd77122_)
                    (let _lp77124_ ((_rest77126_ _hd77122_) (_k77127_ '0))
                      (let* ((_$e77129_ _rest77126_)
                             (_$E7713177142_
                              (lambda ()
                                (let ((_$E7713277139_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e77129_)))))
                                  _k77127_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e77129_))
                            (let* ((_$tgt7713377145_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e77129_)))
                                   (_$hd7713477148_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7713377145_)))
                                   (_$tl7713577151_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7713377145_))))
                              (let* ((_rest77155_ _$tl7713577151_)
                                     (__tmp77870
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _k77127_ '1))))
                                (declare (not safe))
                                (_lp77124_ _rest77155_ __tmp77870)))
                            (let () (declare (not safe)) (_$E7713177142_)))))))
                 (_generate76988_
                  (lambda (_rest77049_ _args77050_ _len77051_)
                    (let* ((_$e77053_ _rest77049_)
                           (_$E7705577066_
                            (lambda ()
                              (let* ((_$E7705677063_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e77053_))))
                                     (__tmp77871
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _args77050_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp77871 _stx76984_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77053_))
                          (let* ((_$tgt7705777069_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77053_)))
                                 (_$hd7705877072_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7705777069_)))
                                 (_$tl7705977075_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7705777069_))))
                            (let* ((_clause77079_ _$hd7705877072_)
                                   (_rest77081_ _$tl7705977075_)
                                   (_$e77083_ _clause77079_)
                                   (_$E7708577094_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e77083_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e77083_))
                                  (let* ((_$tgt7708677097_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e77083_)))
                                         (_$hd7708777100_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7708677097_)))
                                         (_$tl7708877103_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7708677097_))))
                                    (let ((_hd77107_ _$hd7708777100_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7708877103_))
                                          (let* ((_$tgt7708977109_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7708877103_)))
                                                 (_$hd7709077112_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7708977109_)))
                                                 (_$tl7709177115_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7708977109_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _$tl7709177115_))
                                                        '())
                                                (let ((_clen77119_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity76987_
                                                          _hd77107_)))
                                                      (_cmp77120_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?76986_
                                                              _hd77107_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77872
                                                         (cons 'if
                                                               (cons (cons _cmp77120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _len77051_ (cons _clen77119_ '())))
                             (cons (let ((__tmp77873
                                          (cons '##apply
                                                (cons (let ((__tmp77874
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause77079_)))
                (declare (not safe))
                (__compile-lambda% __tmp77874))
              (cons _args77050_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp77873 _stx76984_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (_generate76988_
                                            _rest77081_
                                            _args77050_
                                            _len77051_))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77872
                                                     _stx76984_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7708577094_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7708577094_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7708577094_)))))
                          (let () (declare (not safe)) (_$E7705577066_)))))))
          (let* ((_$e76990_ _stx76984_)
                 (_$E7699277024_
                  (lambda ()
                    (let ((_$E7699377006_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76990_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76990_))
                          (let* ((_$tgt7699477009_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76990_)))
                                 (_$hd7699577012_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7699477009_)))
                                 (_$tl7699677015_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7699477009_))))
                            (let ((_clauses77019_ _$tl7699677015_))
                              (let ((_args77021_
                                     (let ((__tmp77875
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp77875 _stx76984_)))
                                    (_len77022_
                                     (let ((__tmp77876
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp77876 _stx76984_))))
                                (let ((__tmp77877
                                       (cons 'lambda
                                             (cons _args77021_
                                                   (cons (let ((__tmp77878
                                                                (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (cons _len77022_
                                                (cons (let ((__tmp77879
                                                             (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args77021_ '()))))
                (declare (not safe))
                (__SRC__% __tmp77879 _stx76984_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (let ()
                                            (declare (not safe))
                                            (_generate76988_
                                             _clauses77019_
                                             _args77021_
                                             _len77022_))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp77878 _stx76984_))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__SRC__% __tmp77877 _stx76984_)))))
                          (let () (declare (not safe)) (_$E7699377006_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76990_))
                (let* ((_$tgt7699777027_
                        (let () (declare (not safe)) (__AST-e _$e76990_)))
                       (_$hd7699877030_
                        (let () (declare (not safe)) (##car _$tgt7699777027_)))
                       (_$tl7699977033_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7699777027_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7699977033_))
                      (let* ((_$tgt7700077037_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7699977033_)))
                             (_$hd7700177040_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7700077037_)))
                             (_$tl7700277043_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7700077037_))))
                        (let ((_clause77047_ _$hd7700177040_))
                          (if (equal? (let ()
                                        (declare (not safe))
                                        (__AST-e _$tl7700277043_))
                                      '())
                              (let ((__tmp77880
                                     (cons '%#lambda _clause77047_)))
                                (declare (not safe))
                                (__compile-lambda% __tmp77880))
                              (let () (declare (not safe)) (_$E7699277024_)))))
                      (let () (declare (not safe)) (_$E7699277024_))))
                (let () (declare (not safe)) (_$E7699277024_)))))))
    (define __compile-let-form
      (lambda (_stx76753_ _compile-simple76754_ _compile-values76755_)
        (letrec ((_simple-bind?76757_
                  (lambda (_hd76942_)
                    (let* ((_hd7694376953_ _hd76942_)
                           (_else7694676961_ (lambda () '#f)))
                      (let ((_K7694976974_ (lambda (_id76972_) '#t))
                            (_K7694876966_ (lambda () '#t)))
                        (let ((_try-match7694576969_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7694376953_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7694876966_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7694676961_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7694376953_))
                              (let ((_tl7695176979_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7694376953_)))
                                    (_hd7695076977_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7694376953_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7695176979_))
                                    (let ((_id76982_ _hd7695076977_))
                                      (declare (not safe))
                                      (_K7694976974_ _id76982_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7694576969_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7694576969_))))))))
                 (_car-e76758_
                  (lambda (_hd76940_)
                    (if (let () (declare (not safe)) (pair? _hd76940_))
                        (car _hd76940_)
                        _hd76940_))))
          (let* ((_$e76760_ _stx76753_)
                 (_$E7676276905_
                  (lambda ()
                    (let ((_$E7676376785_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76760_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76760_))
                          (let* ((_$tgt7676476788_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76760_)))
                                 (_$hd7676576791_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7676476788_)))
                                 (_$tl7676676794_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7676476788_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7676676794_))
                                (let* ((_$tgt7676776798_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7676676794_)))
                                       (_$hd7676876801_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7676776798_)))
                                       (_$tl7676976804_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7676776798_))))
                                  (let ((_hd76808_ _$hd7676876801_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7676976804_))
                                        (let* ((_$tgt7677076810_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7676976804_)))
                                               (_$hd7677176813_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7677076810_)))
                                               (_$tl7677276816_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7677076810_))))
                                          (let ((_body76820_ _$hd7677176813_))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _$tl7677276816_))
                                                        '())
                                                (let* ((_hd-ids76860_
                                                        (map (lambda (_bind76822_)
                                                               (let* ((_$e76824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76822_)
                              (_$E7682676835_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76824_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76824_))
                             (let* ((_$tgt7682776838_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76824_)))
                                    (_$hd7682876841_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7682776838_)))
                                    (_$tl7682976844_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7682776838_))))
                               (let ((_ids76848_ _$hd7682876841_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7682976844_))
                                     (let* ((_$tgt7683076850_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7682976844_)))
                                            (_$hd7683176853_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7683076850_)))
                                            (_$tl7683276856_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7683076850_))))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7683276856_))
                                                   '())
                                           _ids76848_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7682676835_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7682676835_)))))
                             (let () (declare (not safe)) (_$E7682676835_)))))
                     _hd76808_))
               (_exprs76900_
                (map (lambda (_bind76862_)
                       (let* ((_$e76864_ _bind76862_)
                              (_$E7686676875_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76864_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76864_))
                             (let* ((_$tgt7686776878_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76864_)))
                                    (_$hd7686876881_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7686776878_)))
                                    (_$tl7686976884_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7686776878_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7686976884_))
                                   (let* ((_$tgt7687076888_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7686976884_)))
                                          (_$hd7687176891_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7687076888_)))
                                          (_$tl7687276894_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7687076888_))))
                                     (let ((_expr76898_ _$hd7687176891_))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7687276894_))
                                                   '())
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76898_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7686676875_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7686676875_))))
                             (let () (declare (not safe)) (_$E7686676875_)))))
                     _hd76808_))
               (_body76902_
                (let () (declare (not safe)) (__compile _body76820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (__andmap1
                                                         _simple-bind?76757_
                                                         _hd-ids76860_))
                                                      (_compile-simple76754_
                                                       (map _car-e76758_
                                                            _hd-ids76860_)
                                                       _exprs76900_
                                                       _body76902_)
                                                      (_compile-values76755_
                                                       _hd-ids76860_
                                                       _exprs76900_
                                                       _body76902_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7676376785_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7676376785_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7676376785_))))
                          (let () (declare (not safe)) (_$E7676376785_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76760_))
                (let* ((_$tgt7677376908_
                        (let () (declare (not safe)) (__AST-e _$e76760_)))
                       (_$hd7677476911_
                        (let () (declare (not safe)) (##car _$tgt7677376908_)))
                       (_$tl7677576914_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7677376908_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7677576914_))
                      (let* ((_$tgt7677676918_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7677576914_)))
                             (_$hd7677776921_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7677676918_)))
                             (_$tl7677876924_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7677676918_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _$hd7677776921_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7677876924_))
                                (let* ((_$tgt7677976928_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7677876924_)))
                                       (_$hd7678076931_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7677976928_)))
                                       (_$tl7678176934_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7677976928_))))
                                  (let ((_body76938_ _$hd7678076931_))
                                    (if (equal? (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7678176934_))
                                                '())
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76938_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7676276905_)))))
                                (let () (declare (not safe)) (_$E7676276905_)))
                            (let () (declare (not safe)) (_$E7676276905_))))
                      (let () (declare (not safe)) (_$E7676276905_))))
                (let () (declare (not safe)) (_$E7676276905_)))))))
    (define __compile-let-values%
      (lambda (_stx76568_)
        (letrec ((_compile-simple76570_
                  (lambda (_hd-ids76749_ _exprs76750_ _body76751_)
                    (let ((__tmp77881
                           (cons 'let
                                 (cons (map list
                                            (map __compile-head-id
                                                 _hd-ids76749_)
                                            _exprs76750_)
                                       (cons _body76751_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp77881 _stx76568_))))
                 (_compile-values76571_
                  (lambda (_hd-ids76667_ _exprs76668_ _body76669_)
                    (let _lp76671_ ((_rest76673_ _hd-ids76667_)
                                    (_exprs76674_ _exprs76668_)
                                    (_bind76675_ '())
                                    (_post76676_ '()))
                      (let* ((_rest7667776691_ _rest76673_)
                             (_else7668076699_
                              (lambda ()
                                (let ((__tmp77882
                                       (cons 'let
                                             (cons (reverse _bind76675_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_compile-post76572_
                                                            _post76676_
                                                            _body76669_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77882 _stx76568_)))))
                        (let ((_K7668576732_
                               (lambda (_rest76729_ _id76730_)
                                 (let ((__tmp77884 (cdr _exprs76674_))
                                       (__tmp77883
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _id76730_))
                                                    (cons (car _exprs76674_)
                                                          '()))
                                              _bind76675_)))
                                   (declare (not safe))
                                   (_lp76671_
                                    _rest76729_
                                    __tmp77884
                                    __tmp77883
                                    _post76676_))))
                              (_K7668276714_
                               (lambda (_rest76703_ _hd76704_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76704_))
                                     (let ((__tmp77886 (cdr _exprs76674_))
                                           (__tmp77885
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _hd76704_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _exprs76674_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _bind76675_)))
                                       (declare (not safe))
                                       (_lp76671_
                                        _rest76703_
                                        __tmp77886
                                        __tmp77885
                                        _post76676_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76704_))
                                         (let* ((_len76706_ (length _hd76704_))
                                                (_tmp76708_
                                                 (let ((__tmp77887
                                                        (let ()
                                                          (declare (not safe))
                                                          (##gensym))))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77887))))
                                           (let ((__tmp77894
                                                  (cdr _exprs76674_))
                                                 (__tmp77893
                                                  (cons (cons _tmp76708_
                                                              (cons (car _exprs76674_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _bind76675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp77888
                                                  (cons (let ((__tmp77889
                                                               (let ((__tmp77890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77892
                                     (lambda (_id76711_ _k76712_)
                                       (if (let ()
                                             (declare (not safe))
                                             (__AST-e _id76711_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (__SRC__0 _id76711_))
                                                 _k76712_)
                                           '#f)))
                                    (__tmp77891
                                     (let ()
                                       (declare (not safe))
                                       (##iota _len76706_))))
                                (declare (not safe))
                                (__filter-map2
                                 __tmp77892
                                 _hd76704_
                                 __tmp77891))))
                         (declare (not safe))
                         (cons _len76706_ __tmp77890))))
                  (declare (not safe))
                  (cons _tmp76708_ __tmp77889))
                _post76676_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_lp76671_
                                              _rest76703_
                                              __tmp77894
                                              __tmp77893
                                              __tmp77888)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76568_
                                            _hd76704_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7667776691_))
                              (let ((_tl7668776737_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7667776691_)))
                                    (_hd7668676735_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7667776691_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7668676735_))
                                    (let ((_tl7668976742_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7668676735_)))
                                          (_hd7668876740_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7668676735_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7668976742_))
                                          (let ((_id76745_ _hd7668876740_)
                                                (_rest76747_ _tl7668776737_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7668576732_
                                               _rest76747_
                                               _id76745_)))
                                          (let ((_hd76722_ _hd7668676735_)
                                                (_rest76724_ _tl7668776737_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7668276714_
                                               _rest76724_
                                               _hd76722_)))))
                                    (let ((_hd76722_ _hd7668676735_)
                                          (_rest76724_ _tl7668776737_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7668276714_
                                         _rest76724_
                                         _hd76722_)))))
                              (let ()
                                (declare (not safe))
                                (_else7668076699_))))))))
                 (_compile-post76572_
                  (lambda (_post76574_ _body76575_)
                    (let _lp76577_ ((_rest76579_ _post76574_)
                                    (_check76580_ '())
                                    (_bind76581_ '()))
                      (let* ((_rest7658276594_ _rest76579_)
                             (_else7658476602_
                              (lambda ()
                                (let ((__tmp77895
                                       (cons 'begin
                                             (let ((__tmp77896
                                                    (cons (let ((__tmp77897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _bind76581_ (cons _body76575_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp77897 _stx76568_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp77896
                                                _check76580_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77895 _stx76568_))))
                             (_K7658676641_
                              (lambda (_rest76605_
                                       _init76606_
                                       _len76607_
                                       _tmp76608_)
                                (let ((__tmp77900
                                       (cons (let ((__tmp77901
                                                    (cons '__check-values
                                                          (cons _tmp76608_
                                                                (cons _len76607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77901
                                                _stx76568_))
                                             _check76580_))
                                      (__tmp77898
                                       (let ((__tmp77899
                                              (lambda (_hd76610_ _r76611_)
                                                (let* ((_hd7661276619_
                                                        _hd76610_)
                                                       (_E7661476623_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7661276619_))))
               (_K7661576629_
                (lambda (_k76626_ _id76627_)
                  (cons (cons _id76627_
                              (cons (cons '##vector-ref
                                          (cons _tmp76608_
                                                (cons _k76626_ '())))
                                    '()))
                        _r76611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7661276619_))
                                                      (let ((_hd7661676632_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7661276619_)))
                    (_tl7661776634_
                     (let () (declare (not safe)) (##cdr _hd7661276619_))))
                (let* ((_id76637_ _hd7661676632_) (_k76639_ _tl7661776634_))
                  (declare (not safe))
                  (_K7661576629_ _k76639_ _id76637_)))
              (let () (declare (not safe)) (_E7661476623_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp77899
                                          _bind76581_
                                          _init76606_))))
                                  (declare (not safe))
                                  (_lp76577_
                                   _rest76605_
                                   __tmp77900
                                   __tmp77898)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7658276594_))
                            (let ((_hd7658776644_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7658276594_)))
                                  (_tl7658876646_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7658276594_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7658776644_))
                                  (let ((_hd7658976649_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7658776644_)))
                                        (_tl7659076651_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7658776644_))))
                                    (let ((_tmp76654_ _hd7658976649_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7659076651_))
                                          (let ((_hd7659176656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7659076651_)))
                                                (_tl7659276658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7659076651_))))
                                            (let* ((_len76661_ _hd7659176656_)
                                                   (_init76663_ _tl7659276658_)
                                                   (_rest76665_
                                                    _tl7658876646_))
                                              (declare (not safe))
                                              (_K7658676641_
                                               _rest76665_
                                               _init76663_
                                               _len76661_
                                               _tmp76654_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7658476602_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7658476602_))))
                            (let ()
                              (declare (not safe))
                              (_else7658476602_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76568_
             _compile-simple76570_
             _compile-values76571_)))))
    (define __compile-letrec-values%
      (lambda (_stx76368_)
        (letrec ((_compile-simple76370_
                  (lambda (_hd-ids76564_ _exprs76565_ _body76566_)
                    (let ((__tmp77902
                           (cons 'letrec
                                 (cons (map list
                                            (map __compile-head-id
                                                 _hd-ids76564_)
                                            _exprs76565_)
                                       (cons _body76566_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp77902 _stx76368_))))
                 (_compile-values76371_
                  (lambda (_hd-ids76478_ _exprs76479_ _body76480_)
                    (let _lp76482_ ((_rest76484_ _hd-ids76478_)
                                    (_exprs76485_ _exprs76479_)
                                    (_pre76486_ '())
                                    (_bind76487_ '())
                                    (_post76488_ '()))
                      (let* ((_rest7648976503_ _rest76484_)
                             (_else7649276511_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner76372_
                                   _pre76486_
                                   _bind76487_
                                   _post76488_
                                   _body76480_)))))
                        (let ((_K7649776547_
                               (lambda (_rest76544_ _id76545_)
                                 (let ((__tmp77904 (cdr _exprs76485_))
                                       (__tmp77903
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _id76545_))
                                                    (cons (car _exprs76485_)
                                                          '()))
                                              _bind76487_)))
                                   (declare (not safe))
                                   (_lp76482_
                                    _rest76544_
                                    __tmp77904
                                    _pre76486_
                                    __tmp77903
                                    _post76488_))))
                              (_K7649476529_
                               (lambda (_rest76515_ _hd76516_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76516_))
                                     (let ((__tmp77906 (cdr _exprs76485_))
                                           (__tmp77905
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (__compile-head-id
                                                           _hd76516_))
                                                        (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (car _exprs76485_) '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _bind76487_)))
                                       (declare (not safe))
                                       (_lp76482_
                                        _rest76515_
                                        __tmp77906
                                        _pre76486_
                                        __tmp77905
                                        _post76488_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76516_))
                                         (let* ((_len76518_ (length _hd76516_))
                                                (_tmp76520_
                                                 (let ((__tmp77907
                                                        (let ()
                                                          (declare (not safe))
                                                          (##gensym))))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77907))))
                                           (let ((__tmp77916
                                                  (cdr _exprs76485_))
                                                 (__tmp77914
                                                  (let ((__tmp77915
                                                         (lambda (_id76523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76524_)
                   (if (let () (declare (not safe)) (__AST-e _id76523_))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (__SRC__0 _id76523_))
                                   (cons (cons 'quote (cons '#!void '())) '()))
                             _r76524_)
                       _r76524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldl1
                                                     __tmp77915
                                                     _pre76486_
                                                     _hd76516_)))
                                                 (__tmp77913
                                                  (cons (cons _tmp76520_
                                                              (cons (car _exprs76485_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _bind76487_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp77908
                                                  (cons (let ((__tmp77909
                                                               (let ((__tmp77910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77912
                                     (lambda (_id76526_ _k76527_)
                                       (if (let ()
                                             (declare (not safe))
                                             (__AST-e _id76526_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (__SRC__0 _id76526_))
                                                 _k76527_)
                                           '#f)))
                                    (__tmp77911
                                     (let ()
                                       (declare (not safe))
                                       (##iota _len76518_))))
                                (declare (not safe))
                                (__filter-map2
                                 __tmp77912
                                 _hd76516_
                                 __tmp77911))))
                         (declare (not safe))
                         (cons _len76518_ __tmp77910))))
                  (declare (not safe))
                  (cons _tmp76520_ __tmp77909))
                _post76488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_lp76482_
                                              _rest76515_
                                              __tmp77916
                                              __tmp77914
                                              __tmp77913
                                              __tmp77908)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76368_
                                            _hd76516_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7648976503_))
                              (let ((_tl7649976552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7648976503_)))
                                    (_hd7649876550_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7648976503_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7649876550_))
                                    (let ((_tl7650176557_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7649876550_)))
                                          (_hd7650076555_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7649876550_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7650176557_))
                                          (let ((_id76560_ _hd7650076555_)
                                                (_rest76562_ _tl7649976552_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7649776547_
                                               _rest76562_
                                               _id76560_)))
                                          (let ((_hd76537_ _hd7649876550_)
                                                (_rest76539_ _tl7649976552_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7649476529_
                                               _rest76539_
                                               _hd76537_)))))
                                    (let ((_hd76537_ _hd7649876550_)
                                          (_rest76539_ _tl7649976552_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7649476529_
                                         _rest76539_
                                         _hd76537_)))))
                              (let ()
                                (declare (not safe))
                                (_else7649276511_))))))))
                 (_compile-inner76372_
                  (lambda (_pre76473_ _bind76474_ _post76475_ _body76476_)
                    (if (let () (declare (not safe)) (null? _pre76473_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind76373_
                           _bind76474_
                           _post76475_
                           _body76476_))
                        (let ((__tmp77917
                               (cons 'let
                                     (cons (reverse _pre76473_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_compile-bind76373_
                                                    _bind76474_
                                                    _post76475_
                                                    _body76476_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp77917 _stx76368_)))))
                 (_compile-bind76373_
                  (lambda (_bind76469_ _post76470_ _body76471_)
                    (let ((__tmp77918
                           (cons 'letrec
                                 (cons (reverse _bind76469_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_compile-post76374_
                                                _post76470_
                                                _body76471_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp77918 _stx76368_))))
                 (_compile-post76374_
                  (lambda (_post76376_ _body76377_)
                    (let _lp76379_ ((_rest76381_ _post76376_)
                                    (_check76382_ '())
                                    (_bind76383_ '()))
                      (let* ((_rest7638476396_ _rest76381_)
                             (_else7638676404_
                              (lambda ()
                                (let ((__tmp77919
                                       (cons 'begin
                                             (let ((__tmp77920
                                                    (let ((__tmp77921
                                                           (cons _body76377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp77921 _bind76383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp77920
                                                _check76382_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77919 _stx76368_))))
                             (_K7638876443_
                              (lambda (_rest76407_
                                       _init76408_
                                       _len76409_
                                       _tmp76410_)
                                (let ((__tmp77924
                                       (cons (let ((__tmp77925
                                                    (cons '__check-values
                                                          (cons _tmp76410_
                                                                (cons _len76409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77925
                                                _stx76368_))
                                             _check76382_))
                                      (__tmp77922
                                       (let ((__tmp77923
                                              (lambda (_hd76412_ _r76413_)
                                                (let* ((_hd7641476421_
                                                        _hd76412_)
                                                       (_E7641676425_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7641476421_))))
               (_K7641776431_
                (lambda (_k76428_ _id76429_)
                  (cons (cons 'set!
                              (cons _id76429_
                                    (cons (cons '##vector-ref
                                                (cons _tmp76410_
                                                      (cons _k76428_ '())))
                                          '())))
                        _r76413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7641476421_))
                                                      (let ((_hd7641876434_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7641476421_)))
                    (_tl7641976436_
                     (let () (declare (not safe)) (##cdr _hd7641476421_))))
                (let* ((_id76439_ _hd7641876434_) (_k76441_ _tl7641976436_))
                  (declare (not safe))
                  (_K7641776431_ _k76441_ _id76439_)))
              (let () (declare (not safe)) (_E7641676425_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp77923
                                          _bind76383_
                                          _init76408_))))
                                  (declare (not safe))
                                  (_lp76379_
                                   _rest76407_
                                   __tmp77924
                                   __tmp77922)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7638476396_))
                            (let ((_hd7638976446_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7638476396_)))
                                  (_tl7639076448_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7638476396_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7638976446_))
                                  (let ((_hd7639176451_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7638976446_)))
                                        (_tl7639276453_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7638976446_))))
                                    (let ((_tmp76456_ _hd7639176451_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7639276453_))
                                          (let ((_hd7639376458_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7639276453_)))
                                                (_tl7639476460_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7639276453_))))
                                            (let* ((_len76463_ _hd7639376458_)
                                                   (_init76465_ _tl7639476460_)
                                                   (_rest76467_
                                                    _tl7639076448_))
                                              (declare (not safe))
                                              (_K7638876443_
                                               _rest76467_
                                               _init76465_
                                               _len76463_
                                               _tmp76456_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7638676404_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7638676404_))))
                            (let ()
                              (declare (not safe))
                              (_else7638676404_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76368_
             _compile-simple76370_
             _compile-values76371_)))))
    (define __compile-letrec*-values%
      (lambda (_stx76123_)
        (letrec ((_compile-simple76125_
                  (lambda (_hd-ids76364_ _exprs76365_ _body76366_)
                    (let ((__tmp77926
                           (cons 'letrec*
                                 (cons (map list
                                            (map __compile-head-id
                                                 _hd-ids76364_)
                                            _exprs76365_)
                                       (cons _body76366_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp77926 _stx76123_))))
                 (_compile-values76126_
                  (lambda (_hd-ids76275_ _exprs76276_ _body76277_)
                    (let _lp76279_ ((_rest76281_ _hd-ids76275_)
                                    (_exprs76282_ _exprs76276_)
                                    (_bind76283_ '())
                                    (_post76284_ '()))
                      (let* ((_rest7628576299_ _rest76281_)
                             (_else7628876307_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind76127_
                                   _bind76283_
                                   _post76284_
                                   _body76277_)))))
                        (let ((_K7629376347_
                               (lambda (_rest76342_ _hd76343_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76343_))
                                     (let ((_id76345_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76343_))))
                                       (let ((__tmp77929 (cdr _exprs76282_))
                                             (__tmp77928
                                              (cons (cons _id76345_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _bind76283_))
                                             (__tmp77927
                                              (cons (cons _id76345_
                                                          (cons (car _exprs76282_)
                                                                '()))
                                                    _post76284_)))
                                         (declare (not safe))
                                         (_lp76279_
                                          _rest76342_
                                          __tmp77929
                                          __tmp77928
                                          __tmp77927)))
                                     (let ((__tmp77931 (cdr _exprs76282_))
                                           (__tmp77930
                                            (cons (cons '#f
                                                        (cons (car _exprs76282_)
                                                              '()))
                                                  _post76284_)))
                                       (declare (not safe))
                                       (_lp76279_
                                        _rest76342_
                                        __tmp77931
                                        _bind76283_
                                        __tmp77930)))))
                              (_K7629076327_
                               (lambda (_rest76311_ _hd76312_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76312_))
                                     (let ((_id76314_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76312_))))
                                       (let ((__tmp77934 (cdr _exprs76282_))
                                             (__tmp77933
                                              (cons (cons _id76314_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _bind76283_))
                                             (__tmp77932
                                              (cons (cons _id76314_
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _exprs76282_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _post76284_)))
                                         (declare (not safe))
                                         (_lp76279_
                                          _rest76311_
                                          __tmp77934
                                          __tmp77933
                                          __tmp77932)))
                                     (if (let ((__tmp77935
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd76312_))))
                                           (declare (not safe))
                                           (not __tmp77935))
                                         (let ((__tmp77937 (cdr _exprs76282_))
                                               (__tmp77936
                                                (cons (cons '#f
                                                            (cons (car _exprs76282_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _post76284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_lp76279_
                                            _rest76311_
                                            __tmp77937
                                            _bind76283_
                                            __tmp77936))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd76312_))
                                             (let* ((_len76316_
                                                     (length _hd76312_))
                                                    (_tmp76318_
                                                     (let ((__tmp77938
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym))))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp77938))))
                                               (let ((__tmp77948
                                                      (cdr _exprs76282_))
                                                     (__tmp77946
                                                      (let ((__tmp77947
                                                             (lambda (_id76321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r76322_)
                       (if (let () (declare (not safe)) (__AST-e _id76321_))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (__SRC__0 _id76321_))
                                       (cons (cons 'quote (cons '#!void '()))
                                             '()))
                                 _r76322_)
                           _r76322_))))
                (declare (not safe))
                (__foldl1 __tmp77947 _bind76283_ _hd76312_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp77939
                                                      (cons (let ((__tmp77940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77945 (car _exprs76282_))
                                 (__tmp77941
                                  (let ((__tmp77942
                                         (let ((__tmp77944
                                                (lambda (_id76324_ _k76325_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (__AST-e _id76324_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (__SRC__0
                                                               _id76324_))
                                                            _k76325_)
                                                      '#f)))
                                               (__tmp77943
                                                (let ()
                                                  (declare (not safe))
                                                  (##iota _len76316_))))
                                           (declare (not safe))
                                           (__filter-map2
                                            __tmp77944
                                            _hd76312_
                                            __tmp77943))))
                                    (declare (not safe))
                                    (cons _len76316_ __tmp77942))))
                             (declare (not safe))
                             (cons __tmp77945 __tmp77941))))
                      (declare (not safe))
                      (cons _tmp76318_ __tmp77940))
                    _post76284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp76279_
                                                  _rest76311_
                                                  __tmp77948
                                                  __tmp77946
                                                  __tmp77939)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx76123_
                                                _hd76312_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7628576299_))
                              (let ((_tl7629576352_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7628576299_)))
                                    (_hd7629476350_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7628576299_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7629476350_))
                                    (let ((_tl7629776357_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7629476350_)))
                                          (_hd7629676355_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7629476350_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7629776357_))
                                          (let ((_hd76360_ _hd7629676355_)
                                                (_rest76362_ _tl7629576352_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7629376347_
                                               _rest76362_
                                               _hd76360_)))
                                          (let ((_hd76335_ _hd7629476350_)
                                                (_rest76337_ _tl7629576352_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7629076327_
                                               _rest76337_
                                               _hd76335_)))))
                                    (let ((_hd76335_ _hd7629476350_)
                                          (_rest76337_ _tl7629576352_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7629076327_
                                         _rest76337_
                                         _hd76335_)))))
                              (let ()
                                (declare (not safe))
                                (_else7628876307_))))))))
                 (_compile-bind76127_
                  (lambda (_bind76271_ _post76272_ _body76273_)
                    (let ((__tmp77949
                           (cons 'let
                                 (cons (reverse _bind76271_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_compile-post76128_
                                                _post76272_
                                                _body76273_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp77949 _stx76123_))))
                 (_compile-post76128_
                  (lambda (_post76130_ _body76131_)
                    (let ((__tmp77950
                           (cons 'begin
                                 (let ((__tmp77951
                                        (let ((__tmp77953
                                               (lambda (_hd76133_ _r76134_)
                                                 (let* ((_hd7613576158_
                                                         _hd76133_)
                                                        (_E7613976162_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd7613576158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K7615276256_
                                                          (lambda (_expr76254_)
                                                            (cons _expr76254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76134_)))
                 (_K7614776234_
                  (lambda (_expr76231_ _id76232_)
                    (cons (let ((__tmp77954
                                 (cons 'set!
                                       (cons _id76232_
                                             (cons _expr76231_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp77954 _stx76123_))
                          _r76134_)))
                 (_K7614076201_
                  (lambda (_init76166_ _len76167_ _expr76168_ _tmp76169_)
                    (cons (let ((__tmp77955
                                 (cons 'let
                                       (cons (cons (cons _tmp76169_
                                                         (cons _expr76168_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp77956
                                                          (cons '__check-values
                                                                (cons _tmp76169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _len76167_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp77956
                                                      _stx76123_))
                                                   (let ((__tmp77957
                                                          (map (lambda (_hd76171_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_hd7617276179_ _hd76171_)
                                (_E7617476183_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _hd7617276179_))))
                                (_K7617576189_
                                 (lambda (_k76186_ _id76187_)
                                   (let ((__tmp77958
                                          (cons 'set!
                                                (cons _id76187_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _tmp76169_ (cons _k76186_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp77958 _stx76123_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _hd7617276179_))
                               (let ((_hd7617676192_
                                      (let ()
                                        (declare (not safe))
                                        (##car _hd7617276179_)))
                                     (_tl7617776194_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _hd7617276179_))))
                                 (let* ((_id76197_ _hd7617676192_)
                                        (_k76199_ _tl7617776194_))
                                   (declare (not safe))
                                   (_K7617576189_ _k76199_ _id76197_)))
                               (let () (declare (not safe)) (_E7617476183_)))))
                       _init76166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp77957)))))))
                            (declare (not safe))
                            (__SRC__% __tmp77955 _stx76123_))
                          _r76134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##pair? _hd7613576158_))
                                                         (let ((_tl7615476261_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _hd7613576158_)))
                       (_hd7615376259_
                        (let () (declare (not safe)) (##car _hd7613576158_))))
                   (if (let () (declare (not safe)) (##eq? _hd7615376259_ '#f))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _tl7615476261_))
                           (let ((_tl7615676266_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _tl7615476261_)))
                                 (_hd7615576264_
                                  (let ()
                                    (declare (not safe))
                                    (##car _tl7615476261_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl7615676266_))
                                 (let ((_expr76269_ _hd7615576264_))
                                   (declare (not safe))
                                   (_K7615276256_ _expr76269_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _tl7615676266_))
                                     (let ((_tl7614676220_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _tl7615676266_)))
                                           (_hd7614576218_
                                            (let ()
                                              (declare (not safe))
                                              (##car _tl7615676266_))))
                                       (let ((_tmp76209_ _hd7615376259_)
                                             (_expr76216_ _hd7615576264_)
                                             (_len76223_ _hd7614576218_)
                                             (_init76225_ _tl7614676220_))
                                         (let ()
                                           (declare (not safe))
                                           (_K7614076201_
                                            _init76225_
                                            _len76223_
                                            _expr76216_
                                            _tmp76209_))))
                                     (let ()
                                       (declare (not safe))
                                       (_E7613976162_)))))
                           (let () (declare (not safe)) (_E7613976162_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _tl7615476261_))
                           (let ((_tl7615176246_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _tl7615476261_)))
                                 (_hd7615076244_
                                  (let ()
                                    (declare (not safe))
                                    (##car _tl7615476261_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl7615176246_))
                                 (let ((_id76242_ _hd7615376259_)
                                       (_expr76249_ _hd7615076244_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7614776234_ _expr76249_ _id76242_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _tl7615176246_))
                                     (let ((_tl7614676220_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _tl7615176246_)))
                                           (_hd7614576218_
                                            (let ()
                                              (declare (not safe))
                                              (##car _tl7615176246_))))
                                       (let ((_tmp76209_ _hd7615376259_)
                                             (_expr76216_ _hd7615076244_)
                                             (_len76223_ _hd7614576218_)
                                             (_init76225_ _tl7614676220_))
                                         (let ()
                                           (declare (not safe))
                                           (_K7614076201_
                                            _init76225_
                                            _len76223_
                                            _expr76216_
                                            _tmp76209_))))
                                     (let ()
                                       (declare (not safe))
                                       (_E7613976162_)))))
                           (let () (declare (not safe)) (_E7613976162_)))))
                 (let () (declare (not safe)) (_E7613976162_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp77952 (list _body76131_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp77953
                                           __tmp77952
                                           _post76130_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp77951)))))
                      (declare (not safe))
                      (__SRC__% __tmp77950 _stx76123_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76123_
             _compile-simple76125_
             _compile-values76126_)))))
    (define __compile-call%
      (lambda (_stx76083_)
        (let* ((_$e76085_ _stx76083_)
               (_$E7608776096_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76085_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76085_))
              (let* ((_$tgt7608876099_
                      (let () (declare (not safe)) (__AST-e _$e76085_)))
                     (_$hd7608976102_
                      (let () (declare (not safe)) (##car _$tgt7608876099_)))
                     (_$tl7609076105_
                      (let () (declare (not safe)) (##cdr _$tgt7608876099_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7609076105_))
                    (let* ((_$tgt7609176109_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7609076105_)))
                           (_$hd7609276112_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7609176109_)))
                           (_$tl7609376115_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7609176109_))))
                      (let* ((_rator76119_ _$hd7609276112_)
                             (_rands76121_ _$tl7609376115_)
                             (__tmp77959
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _rator76119_))
                                    (map __compile _rands76121_))))
                        (declare (not safe))
                        (__SRC__% __tmp77959 _stx76083_)))
                    (let () (declare (not safe)) (_$E7608776096_))))
              (let () (declare (not safe)) (_$E7608776096_))))))
    (define __compile-ref%
      (lambda (_stx76045_)
        (let* ((_$e76047_ _stx76045_)
               (_$E7604976058_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76047_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76047_))
              (let* ((_$tgt7605076061_
                      (let () (declare (not safe)) (__AST-e _$e76047_)))
                     (_$hd7605176064_
                      (let () (declare (not safe)) (##car _$tgt7605076061_)))
                     (_$tl7605276067_
                      (let () (declare (not safe)) (##cdr _$tgt7605076061_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7605276067_))
                    (let* ((_$tgt7605376071_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7605276067_)))
                           (_$hd7605476074_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7605376071_)))
                           (_$tl7605576077_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7605376071_))))
                      (let ((_id76081_ _$hd7605476074_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7605576077_))
                                    '())
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id76081_ _stx76045_))
                            (let () (declare (not safe)) (_$E7604976058_)))))
                    (let () (declare (not safe)) (_$E7604976058_))))
              (let () (declare (not safe)) (_$E7604976058_))))))
    (define __compile-setq%
      (lambda (_stx75992_)
        (let* ((_$e75994_ _stx75992_)
               (_$E7599676008_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75994_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75994_))
              (let* ((_$tgt7599776011_
                      (let () (declare (not safe)) (__AST-e _$e75994_)))
                     (_$hd7599876014_
                      (let () (declare (not safe)) (##car _$tgt7599776011_)))
                     (_$tl7599976017_
                      (let () (declare (not safe)) (##cdr _$tgt7599776011_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7599976017_))
                    (let* ((_$tgt7600076021_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7599976017_)))
                           (_$hd7600176024_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7600076021_)))
                           (_$tl7600276027_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7600076021_))))
                      (let ((_id76031_ _$hd7600176024_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7600276027_))
                            (let* ((_$tgt7600376033_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7600276027_)))
                                   (_$hd7600476036_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7600376033_)))
                                   (_$tl7600576039_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7600376033_))))
                              (let ((_expr76043_ _$hd7600476036_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7600576039_))
                                            '())
                                    (let ((__tmp77960
                                           (cons 'set!
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__SRC__%
                                                          _id76031_
                                                          _stx75992_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _expr76043_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp77960 _stx75992_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7599676008_)))))
                            (let () (declare (not safe)) (_$E7599676008_)))))
                    (let () (declare (not safe)) (_$E7599676008_))))
              (let () (declare (not safe)) (_$E7599676008_))))))
    (define __compile-if%
      (lambda (_stx75924_)
        (let* ((_$e75926_ _stx75924_)
               (_$E7592875943_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75926_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75926_))
              (let* ((_$tgt7592975946_
                      (let () (declare (not safe)) (__AST-e _$e75926_)))
                     (_$hd7593075949_
                      (let () (declare (not safe)) (##car _$tgt7592975946_)))
                     (_$tl7593175952_
                      (let () (declare (not safe)) (##cdr _$tgt7592975946_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7593175952_))
                    (let* ((_$tgt7593275956_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7593175952_)))
                           (_$hd7593375959_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7593275956_)))
                           (_$tl7593475962_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7593275956_))))
                      (let ((_p75966_ _$hd7593375959_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7593475962_))
                            (let* ((_$tgt7593575968_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7593475962_)))
                                   (_$hd7593675971_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7593575968_)))
                                   (_$tl7593775974_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7593575968_))))
                              (let ((_t75978_ _$hd7593675971_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7593775974_))
                                    (let* ((_$tgt7593875980_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7593775974_)))
                                           (_$hd7593975983_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7593875980_)))
                                           (_$tl7594075986_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7593875980_))))
                                      (let ((_f75990_ _$hd7593975983_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _$tl7594075986_))
                                                    '())
                                            (let ((__tmp77961
                                                   (cons 'if
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _p75966_))
                       (cons (let () (declare (not safe)) (__compile _t75978_))
                             (cons (let ()
                                     (declare (not safe))
                                     (__compile _f75990_))
                                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__SRC__% __tmp77961 _stx75924_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7592875943_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7592875943_)))))
                            (let () (declare (not safe)) (_$E7592875943_)))))
                    (let () (declare (not safe)) (_$E7592875943_))))
              (let () (declare (not safe)) (_$E7592875943_))))))
    (define __compile-quote%
      (lambda (_stx75886_)
        (let* ((_$e75888_ _stx75886_)
               (_$E7589075899_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75888_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75888_))
              (let* ((_$tgt7589175902_
                      (let () (declare (not safe)) (__AST-e _$e75888_)))
                     (_$hd7589275905_
                      (let () (declare (not safe)) (##car _$tgt7589175902_)))
                     (_$tl7589375908_
                      (let () (declare (not safe)) (##cdr _$tgt7589175902_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7589375908_))
                    (let* ((_$tgt7589475912_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7589375908_)))
                           (_$hd7589575915_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7589475912_)))
                           (_$tl7589675918_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7589475912_))))
                      (let ((_e75922_ _$hd7589575915_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7589675918_))
                                    '())
                            (let ((__tmp77962
                                   (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (__AST->datum _e75922_))
                                               '()))))
                              (declare (not safe))
                              (__SRC__% __tmp77962 _stx75886_))
                            (let () (declare (not safe)) (_$E7589075899_)))))
                    (let () (declare (not safe)) (_$E7589075899_))))
              (let () (declare (not safe)) (_$E7589075899_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75848_)
        (let* ((_$e75850_ _stx75848_)
               (_$E7585275861_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75850_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75850_))
              (let* ((_$tgt7585375864_
                      (let () (declare (not safe)) (__AST-e _$e75850_)))
                     (_$hd7585475867_
                      (let () (declare (not safe)) (##car _$tgt7585375864_)))
                     (_$tl7585575870_
                      (let () (declare (not safe)) (##cdr _$tgt7585375864_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7585575870_))
                    (let* ((_$tgt7585675874_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7585575870_)))
                           (_$hd7585775877_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7585675874_)))
                           (_$tl7585875880_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7585675874_))))
                      (let ((_e75884_ _$hd7585775877_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7585875880_))
                                    '())
                            (let ((__tmp77963
                                   (cons 'quote (cons _e75884_ '()))))
                              (declare (not safe))
                              (__SRC__% __tmp77963 _stx75848_))
                            (let () (declare (not safe)) (_$E7585275861_)))))
                    (let () (declare (not safe)) (_$E7585275861_))))
              (let () (declare (not safe)) (_$E7585275861_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))
