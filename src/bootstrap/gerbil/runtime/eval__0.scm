(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1709125254)
  (begin
    (define __syntax::t
      (let ((__tmp77835 (list))
            (__tmp77833
             (let ((__tmp77834
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77834 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77835
         '(e id)
         __tmp77833
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77644_ (apply make-instance __syntax::t _$args77644_)))
    (define __syntax-e
      (let () (declare (not safe)) (make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let () (declare (not safe)) (make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp77838 (list __syntax::t))
            (__tmp77836
             (let ((__tmp77837
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77837 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77838
         '()
         __tmp77836
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77641_ (apply make-instance __core-form::t _$args77641_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp77841 (list __core-form::t))
            (__tmp77839
             (let ((__tmp77840
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77840 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77841
         '()
         __tmp77839
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77638_
        (apply make-instance __core-expression::t _$args77638_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp77844 (list __core-form::t))
            (__tmp77842
             (let ((__tmp77843
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77843 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77844
         '()
         __tmp77842
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77635_
        (apply make-instance __core-special-form::t _$args77635_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_id77633_)
        (let ((__tmp77845 (let () (declare (not safe)) (__AST-e _id77633_))))
          (declare (not safe))
          (hash-get __core __tmp77845))))
    (define __core-bound-id?__%
      (lambda (_id77617_ _is?77618_)
        (let ((_$e77620_
               (let () (declare (not safe)) (__core-resolve _id77617_))))
          (if _$e77620_ (_is?77618_ _$e77620_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77626_)
        (let ((_is?77628_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77626_ _is?77628_))))
    (define __core-bound-id?
      (lambda _g77847_
        (let ((_g77846_ (let () (declare (not safe)) (##length _g77847_))))
          (cond ((let () (declare (not safe)) (##fx= _g77846_ 1))
                 (apply (lambda (_id77626_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77626_)))
                        _g77847_))
                ((let () (declare (not safe)) (##fx= _g77846_ 2))
                 (apply (lambda (_id77630_ _is?77631_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77630_ _is?77631_)))
                        _g77847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77847_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77600_ _e77601_ _make77602_)
        (let ((__tmp77848
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77601_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77601_
                   (_make77602_ _e77601_ _id77600_))))
          (declare (not safe))
          (hash-put! __core _id77600_ __tmp77848))))
    (define __core-bind-syntax!__0
      (lambda (_id77607_ _e77608_)
        (let ((_make77610_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77607_ _e77608_ _make77610_))))
    (define __core-bind-syntax!
      (lambda _g77850_
        (let ((_g77849_ (let () (declare (not safe)) (##length _g77850_))))
          (cond ((let () (declare (not safe)) (##fx= _g77849_ 2))
                 (apply (lambda (_id77607_ _e77608_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77607_ _e77608_)))
                        _g77850_))
                ((let () (declare (not safe)) (##fx= _g77849_ 3))
                 (apply (lambda (_id77612_ _e77613_ _make77614_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77612_
                             _e77613_
                             _make77614_)))
                        _g77850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77850_))))))
    (define __SRC__%
      (lambda (_e77583_ _src-stx77584_)
        (if (or (let () (declare (not safe)) (pair? _e77583_))
                (let () (declare (not safe)) (symbol? _e77583_)))
            (let ((__tmp77854
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77584_
                          'gerbil#AST::t))
                       (let ((__tmp77855
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77584_))))
                         (declare (not safe))
                         (__locat __tmp77855))
                       '#f)))
              (declare (not safe))
              (##make-source _e77583_ __tmp77854))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77583_ 'gerbil#AST::t))
                (let ((__tmp77853
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77583_ '1 AST::t '#f)))
                      (__tmp77851
                       (let ((__tmp77852
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77583_))))
                         (declare (not safe))
                         (__locat __tmp77852))))
                  (declare (not safe))
                  (##make-source __tmp77853 __tmp77851))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77583_))))))
    (define __SRC__0
      (lambda (_e77592_)
        (let ((_src-stx77594_ '#f))
          (declare (not safe))
          (__SRC__% _e77592_ _src-stx77594_))))
    (define __SRC
      (lambda _g77857_
        (let ((_g77856_ (let () (declare (not safe)) (##length _g77857_))))
          (cond ((let () (declare (not safe)) (##fx= _g77856_ 1))
                 (apply (lambda (_e77592_)
                          (let () (declare (not safe)) (__SRC__0 _e77592_)))
                        _g77857_))
                ((let () (declare (not safe)) (##fx= _g77856_ 2))
                 (apply (lambda (_e77596_ _src-stx77597_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77596_ _src-stx77597_)))
                        _g77857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77857_))))))
    (define __locat
      (lambda (_loc77580_)
        (if (let () (declare (not safe)) (##locat? _loc77580_))
            _loc77580_
            '#f)))
    (define __check-values
      (lambda (_obj77575_ _k77576_)
        (let ((_count77578_
               (if (let () (declare (not safe)) (##values? _obj77575_))
                   (let () (declare (not safe)) (##vector-length _obj77575_))
                   '1)))
          (if (fx= _count77578_ _k77576_)
              '#!void
              (let ((__tmp77859
                     (if (fx< _count77578_ _k77576_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77858
                     (if (let () (declare (not safe)) (##values? _obj77575_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77575_))
                         _obj77575_)))
                (declare (not safe))
                (error __tmp77859 __tmp77858 _k77576_))))))
    (define __compile
      (lambda (_stx77545_)
        (let* ((_$e77547_ _stx77545_)
               (_$E7754977555_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77547_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77547_))
              (let* ((_$tgt7755077558_
                      (let () (declare (not safe)) (__AST-e _$e77547_)))
                     (_$hd7755177561_
                      (let () (declare (not safe)) (##car _$tgt7755077558_)))
                     (_$tl7755277564_
                      (let () (declare (not safe)) (##cdr _$tgt7755077558_))))
                (let* ((_form77568_ _$hd7755177561_)
                       (_$e77570_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77568_))))
                  (if _$e77570_
                      ((lambda (_bind77573_)
                         ((##structure-ref _bind77573_ '1 __syntax::t '#f)
                          _stx77545_))
                       _$e77570_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77545_
                         _form77568_)))))
              (let () (declare (not safe)) (_$E7754977555_))))))
    (define __compile-error__%
      (lambda (_stx77532_ _detail77533_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77532_
           _detail77533_))))
    (define __compile-error__0
      (lambda (_stx77538_)
        (let ((_detail77540_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77538_ _detail77540_))))
    (define __compile-error
      (lambda _g77861_
        (let ((_g77860_ (let () (declare (not safe)) (##length _g77861_))))
          (cond ((let () (declare (not safe)) (##fx= _g77860_ 1))
                 (apply (lambda (_stx77538_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77538_)))
                        _g77861_))
                ((let () (declare (not safe)) (##fx= _g77860_ 2))
                 (apply (lambda (_stx77542_ _detail77543_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77542_ _detail77543_)))
                        _g77861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77861_))))))
    (define __compile-ignore%
      (lambda (_stx77529_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77529_))))
    (define __compile-begin%
      (lambda (_stx77504_)
        (let* ((_$e77506_ _stx77504_)
               (_$E7750877514_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77506_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77506_))
              (let* ((_$tgt7750977517_
                      (let () (declare (not safe)) (__AST-e _$e77506_)))
                     (_$hd7751077520_
                      (let () (declare (not safe)) (##car _$tgt7750977517_)))
                     (_$tl7751177523_
                      (let () (declare (not safe)) (##cdr _$tgt7750977517_))))
                (let* ((_body77527_ _$tl7751177523_)
                       (__tmp77862
                        (let ((__tmp77863 (map __compile _body77527_)))
                          (declare (not safe))
                          (cons 'begin __tmp77863))))
                  (declare (not safe))
                  (__SRC__% __tmp77862 _stx77504_)))
              (let () (declare (not safe)) (_$E7750877514_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77479_)
        (let* ((_$e77481_ _stx77479_)
               (_$E7748377489_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77481_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77481_))
              (let* ((_$tgt7748477492_
                      (let () (declare (not safe)) (__AST-e _$e77481_)))
                     (_$hd7748577495_
                      (let () (declare (not safe)) (##car _$tgt7748477492_)))
                     (_$tl7748677498_
                      (let () (declare (not safe)) (##cdr _$tgt7748477492_))))
                (let* ((_body77502_ _$tl7748677498_)
                       (__tmp77864
                        (let ((__tmp77865
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body77502_))))
                          (declare (not safe))
                          (cons 'begin __tmp77865))))
                  (declare (not safe))
                  (__SRC__% __tmp77864 _stx77479_)))
              (let () (declare (not safe)) (_$E7748377489_))))))
    (define __compile-import%
      (lambda (_stx77454_)
        (let* ((_$e77456_ _stx77454_)
               (_$E7745877464_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77456_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77456_))
              (let* ((_$tgt7745977467_
                      (let () (declare (not safe)) (__AST-e _$e77456_)))
                     (_$hd7746077470_
                      (let () (declare (not safe)) (##car _$tgt7745977467_)))
                     (_$tl7746177473_
                      (let () (declare (not safe)) (##cdr _$tgt7745977467_))))
                (let* ((_body77477_ _$tl7746177473_)
                       (__tmp77866
                        (let ((__tmp77867
                               (let ((__tmp77868
                                      (let ((__tmp77869
                                             (let ()
                                               (declare (not safe))
                                               (cons _body77477_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp77869))))
                                 (declare (not safe))
                                 (cons __tmp77868 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp77867))))
                  (declare (not safe))
                  (__SRC__% __tmp77866 _stx77454_)))
              (let () (declare (not safe)) (_$E7745877464_))))))
    (define __compile-begin-annotation%
      (lambda (_stx77401_)
        (let* ((_$e77403_ _stx77401_)
               (_$E7740577417_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77403_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77403_))
              (let* ((_$tgt7740677420_
                      (let () (declare (not safe)) (__AST-e _$e77403_)))
                     (_$hd7740777423_
                      (let () (declare (not safe)) (##car _$tgt7740677420_)))
                     (_$tl7740877426_
                      (let () (declare (not safe)) (##cdr _$tgt7740677420_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7740877426_))
                    (let* ((_$tgt7740977430_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7740877426_)))
                           (_$hd7741077433_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7740977430_)))
                           (_$tl7741177436_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7740977430_))))
                      (let ((_ann77440_ _$hd7741077433_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7741177436_))
                            (let* ((_$tgt7741277442_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7741177436_)))
                                   (_$hd7741377445_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7741277442_)))
                                   (_$tl7741477448_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7741277442_))))
                              (let ((_expr77452_ _$hd7741377445_))
                                (if (let ((__tmp77870
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7741477448_))))
                                      (declare (not safe))
                                      (equal? __tmp77870 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77452_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7740577417_)))))
                            (let () (declare (not safe)) (_$E7740577417_)))))
                    (let () (declare (not safe)) (_$E7740577417_))))
              (let () (declare (not safe)) (_$E7740577417_))))))
    (define __compile-define-values%
      (lambda (_stx77292_)
        (let* ((_$e77294_ _stx77292_)
               (_$E7729677308_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77294_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77294_))
              (let* ((_$tgt7729777311_
                      (let () (declare (not safe)) (__AST-e _$e77294_)))
                     (_$hd7729877314_
                      (let () (declare (not safe)) (##car _$tgt7729777311_)))
                     (_$tl7729977317_
                      (let () (declare (not safe)) (##cdr _$tgt7729777311_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7729977317_))
                    (let* ((_$tgt7730077321_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7729977317_)))
                           (_$hd7730177324_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7730077321_)))
                           (_$tl7730277327_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7730077321_))))
                      (let ((_hd77331_ _$hd7730177324_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7730277327_))
                            (let* ((_$tgt7730377333_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7730277327_)))
                                   (_$hd7730477336_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7730377333_)))
                                   (_$tl7730577339_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7730377333_))))
                              (let ((_expr77343_ _$hd7730477336_))
                                (if (let ((__tmp77903
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7730577339_))))
                                      (declare (not safe))
                                      (equal? __tmp77903 '()))
                                    (let* ((_$e77345_ _hd77331_)
                                           (_$E7734777388_
                                            (lambda ()
                                              (let ((_$E7734877373_
                                                     (lambda ()
                                                       (let* ((_$E7734977360_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e77345_))))
                      (_ids77363_ _hd77331_)
                      (_len77365_ (length _ids77363_))
                      (_tmp77367_
                       (let ((__tmp77871 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp77871))))
                 (let ((__tmp77872
                        (let ((__tmp77873
                               (let ((__tmp77890
                                      (let ((__tmp77891
                                             (let ((__tmp77892
                                                    (let ((__tmp77893
                                                           (let ((__tmp77894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr77343_))))
                     (declare (not safe))
                     (cons __tmp77894 '()))))
              (declare (not safe))
              (cons _tmp77367_ __tmp77893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp77892))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77891 _stx77292_)))
                                     (__tmp77874
                                      (let ((__tmp77886
                                             (let ((__tmp77887
                                                    (let ((__tmp77888
                                                           (let ((__tmp77889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len77365_ '()))))
                     (declare (not safe))
                     (cons _tmp77367_ __tmp77889))))
              (declare (not safe))
              (cons '__check-values __tmp77888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77887
                                                _stx77292_)))
                                            (__tmp77875
                                             (let ((__tmp77876
                                                    (let ((__tmp77878
                                                           (lambda (_id77370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k77371_)
                     (if (let () (declare (not safe)) (__AST-e _id77370_))
                         (let ((__tmp77879
                                (let ((__tmp77880
                                       (let ((__tmp77885
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id77370_)))
                                             (__tmp77881
                                              (let ((__tmp77882
                                                     (let ((__tmp77883
                                                            (let ((__tmp77884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k77371_ '()))))
                      (declare (not safe))
                      (cons _tmp77367_ __tmp77884))))
               (declare (not safe))
               (cons '##vector-ref __tmp77883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77882 '()))))
                                         (declare (not safe))
                                         (cons __tmp77885 __tmp77881))))
                                  (declare (not safe))
                                  (cons 'define __tmp77880))))
                           (declare (not safe))
                           (__SRC__% __tmp77879 _stx77292_))
                         '#f)))
                  (__tmp77877
                   (let () (declare (not safe)) (iota__0 _len77365_))))
              (declare (not safe))
              (filter-map2 __tmp77878 _ids77363_ __tmp77877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp77876))))
                                        (declare (not safe))
                                        (cons __tmp77886 __tmp77875))))
                                 (declare (not safe))
                                 (cons __tmp77890 __tmp77874))))
                          (declare (not safe))
                          (cons 'begin __tmp77873))))
                   (declare (not safe))
                   (__SRC__% __tmp77872 _stx77292_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e77345_))
                                                    (let* ((_$tgt7735077376_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e77345_)))
                                                           (_$hd7735177379_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7735077376_)))
                                                           (_$tl7735277382_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7735077376_))))
                                                      (let ((_id77386_
                                                             _$hd7735177379_))
                                                        (if (let ((__tmp77900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7735277382_))))
                      (declare (not safe))
                      (equal? __tmp77900 '()))
                    (let ((__tmp77895
                           (let ((__tmp77896
                                  (let ((__tmp77899
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77386_)))
                                        (__tmp77897
                                         (let ((__tmp77898
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr77343_))))
                                           (declare (not safe))
                                           (cons __tmp77898 '()))))
                                    (declare (not safe))
                                    (cons __tmp77899 __tmp77897))))
                             (declare (not safe))
                             (cons 'define __tmp77896))))
                      (declare (not safe))
                      (__SRC__% __tmp77895 _stx77292_))
                    (let () (declare (not safe)) (_$E7734877373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7734877373_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e77345_))
                                          (let* ((_$tgt7735377391_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e77345_)))
                                                 (_$hd7735477394_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7735377391_)))
                                                 (_$tl7735577397_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7735377391_))))
                                            (if (let ((__tmp77902
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7735477394_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77902 '#f))
                                                (if (let ((__tmp77901
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7735577397_))))
                                                      (declare (not safe))
                                                      (equal? __tmp77901 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr77343_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7734777388_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7734777388_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7734777388_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7729677308_)))))
                            (let () (declare (not safe)) (_$E7729677308_)))))
                    (let () (declare (not safe)) (_$E7729677308_))))
              (let () (declare (not safe)) (_$E7729677308_))))))
    (define __compile-head-id
      (lambda (_e77290_)
        (let ((__tmp77904
               (if (let () (declare (not safe)) (__AST-e _e77290_))
                   _e77290_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp77904))))
    (define __compile-lambda-head
      (lambda (_hd77247_)
        (let _recur77249_ ((_rest77251_ _hd77247_))
          (let* ((_$e77253_ _rest77251_)
                 (_$E7725577273_
                  (lambda ()
                    (let ((_$E7725677270_
                           (lambda ()
                             (let* ((_$E7725777265_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e77253_))))
                                    (_tail77268_ _$e77253_))
                               (declare (not safe))
                               (__compile-head-id _tail77268_)))))
                      (if (let ((__tmp77905
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e77253_))))
                            (declare (not safe))
                            (equal? __tmp77905 '()))
                          '()
                          (let () (declare (not safe)) (_$E7725677270_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77253_))
                (let* ((_$tgt7725877276_
                        (let () (declare (not safe)) (__AST-e _$e77253_)))
                       (_$hd7725977279_
                        (let () (declare (not safe)) (##car _$tgt7725877276_)))
                       (_$tl7726077282_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7725877276_))))
                  (let* ((_hd77286_ _$hd7725977279_)
                         (_rest77288_ _$tl7726077282_))
                    (let ((__tmp77907
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd77286_)))
                          (__tmp77906
                           (let ()
                             (declare (not safe))
                             (_recur77249_ _rest77288_))))
                      (declare (not safe))
                      (cons __tmp77907 __tmp77906))))
                (let () (declare (not safe)) (_$E7725577273_)))))))
    (define __compile-lambda%
      (lambda (_stx77194_)
        (let* ((_$e77196_ _stx77194_)
               (_$E7719877210_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77196_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77196_))
              (let* ((_$tgt7719977213_
                      (let () (declare (not safe)) (__AST-e _$e77196_)))
                     (_$hd7720077216_
                      (let () (declare (not safe)) (##car _$tgt7719977213_)))
                     (_$tl7720177219_
                      (let () (declare (not safe)) (##cdr _$tgt7719977213_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7720177219_))
                    (let* ((_$tgt7720277223_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7720177219_)))
                           (_$hd7720377226_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7720277223_)))
                           (_$tl7720477229_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7720277223_))))
                      (let ((_hd77233_ _$hd7720377226_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7720477229_))
                            (let* ((_$tgt7720577235_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7720477229_)))
                                   (_$hd7720677238_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7720577235_)))
                                   (_$tl7720777241_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7720577235_))))
                              (let ((_body77245_ _$hd7720677238_))
                                (if (let ((__tmp77913
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7720777241_))))
                                      (declare (not safe))
                                      (equal? __tmp77913 '()))
                                    (let ((__tmp77908
                                           (let ((__tmp77909
                                                  (let ((__tmp77912
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd77233_)))
                                                        (__tmp77910
                                                         (let ((__tmp77911
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body77245_))))
                   (declare (not safe))
                   (cons __tmp77911 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77912
                                                          __tmp77910))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp77909))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77908 _stx77194_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7719877210_)))))
                            (let () (declare (not safe)) (_$E7719877210_)))))
                    (let () (declare (not safe)) (_$E7719877210_))))
              (let () (declare (not safe)) (_$E7719877210_))))))
    (define __compile-case-lambda%
      (lambda (_stx76986_)
        (letrec ((_variadic?76988_
                  (lambda (_hd77159_)
                    (let* ((_$e77161_ _hd77159_)
                           (_$E7716377179_
                            (lambda ()
                              (let ((_$E7716477176_
                                     (lambda ()
                                       (let ((_$E7716577173_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e77161_)))))
                                         '#t))))
                                (if (let ((__tmp77914
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e77161_))))
                                      (declare (not safe))
                                      (equal? __tmp77914 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7716477176_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77161_))
                          (let* ((_$tgt7716677182_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77161_)))
                                 (_$hd7716777185_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7716677182_)))
                                 (_$tl7716877188_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7716677182_))))
                            (let ((_rest77192_ _$tl7716877188_))
                              (declare (not safe))
                              (_variadic?76988_ _rest77192_)))
                          (let () (declare (not safe)) (_$E7716377179_))))))
                 (_arity76989_
                  (lambda (_hd77124_)
                    (let _lp77126_ ((_rest77128_ _hd77124_) (_k77129_ '0))
                      (let* ((_$e77131_ _rest77128_)
                             (_$E7713377144_
                              (lambda ()
                                (let ((_$E7713477141_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e77131_)))))
                                  _k77129_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e77131_))
                            (let* ((_$tgt7713577147_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e77131_)))
                                   (_$hd7713677150_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7713577147_)))
                                   (_$tl7713777153_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7713577147_))))
                              (let* ((_rest77157_ _$tl7713777153_)
                                     (__tmp77915
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k77129_ '1))))
                                (declare (not safe))
                                (_lp77126_ _rest77157_ __tmp77915)))
                            (let () (declare (not safe)) (_$E7713377144_)))))))
                 (_generate76990_
                  (lambda (_rest77051_ _args77052_ _len77053_)
                    (let* ((_$e77055_ _rest77051_)
                           (_$E7705777068_
                            (lambda ()
                              (let* ((_$E7705877065_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e77055_))))
                                     (__tmp77916
                                      (let ((__tmp77917
                                             (let ((__tmp77918
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args77052_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp77918))))
                                        (declare (not safe))
                                        (cons 'error __tmp77917))))
                                (declare (not safe))
                                (__SRC__% __tmp77916 _stx76986_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77055_))
                          (let* ((_$tgt7705977071_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77055_)))
                                 (_$hd7706077074_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7705977071_)))
                                 (_$tl7706177077_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7705977071_))))
                            (let* ((_clause77081_ _$hd7706077074_)
                                   (_rest77083_ _$tl7706177077_)
                                   (_$e77085_ _clause77081_)
                                   (_$E7708777096_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e77085_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e77085_))
                                  (let* ((_$tgt7708877099_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e77085_)))
                                         (_$hd7708977102_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7708877099_)))
                                         (_$tl7709077105_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7708877099_))))
                                    (let ((_hd77109_ _$hd7708977102_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7709077105_))
                                          (let* ((_$tgt7709177111_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7709077105_)))
                                                 (_$hd7709277114_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7709177111_)))
                                                 (_$tl7709377117_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7709177111_))))
                                            (if (let ((__tmp77933
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7709377117_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77933 '()))
                                                (let ((_clen77121_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity76989_
                                                          _hd77109_)))
                                                      (_cmp77122_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?76988_
                                                              _hd77109_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77919
                                                         (let ((__tmp77920
                                                                (let ((__tmp77930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77931
                                      (let ((__tmp77932
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen77121_ '()))))
                                        (declare (not safe))
                                        (cons _len77053_ __tmp77932))))
                                 (declare (not safe))
                                 (cons _cmp77122_ __tmp77931)))
                              (__tmp77921
                               (let ((__tmp77924
                                      (let ((__tmp77925
                                             (let ((__tmp77926
                                                    (let ((__tmp77928
                                                           (let ((__tmp77929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause77081_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp77929)))
                  (__tmp77927
                   (let () (declare (not safe)) (cons _args77052_ '()))))
              (declare (not safe))
              (cons __tmp77928 __tmp77927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp77926))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77925 _stx76986_)))
                                     (__tmp77922
                                      (let ((__tmp77923
                                             (let ()
                                               (declare (not safe))
                                               (_generate76990_
                                                _rest77083_
                                                _args77052_
                                                _len77053_))))
                                        (declare (not safe))
                                        (cons __tmp77923 '()))))
                                 (declare (not safe))
                                 (cons __tmp77924 __tmp77922))))
                          (declare (not safe))
                          (cons __tmp77930 __tmp77921))))
                   (declare (not safe))
                   (cons 'if __tmp77920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77919
                                                     _stx76986_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7708777096_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7708777096_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7708777096_)))))
                          (let () (declare (not safe)) (_$E7705777068_)))))))
          (let* ((_$e76992_ _stx76986_)
                 (_$E7699477026_
                  (lambda ()
                    (let ((_$E7699577008_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76992_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76992_))
                          (let* ((_$tgt7699677011_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76992_)))
                                 (_$hd7699777014_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7699677011_)))
                                 (_$tl7699877017_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7699677011_))))
                            (let ((_clauses77021_ _$tl7699877017_))
                              (let ((_args77023_
                                     (let ((__tmp77934 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77934 _stx76986_)))
                                    (_len77024_
                                     (let ((__tmp77935 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77935 _stx76986_))))
                                (let ((__tmp77936
                                       (let ((__tmp77937
                                              (let ((__tmp77938
                                                     (let ((__tmp77939
                                                            (let ((__tmp77940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77941
                                  (let ((__tmp77944
                                         (let ((__tmp77945
                                                (let ((__tmp77946
                                                       (let ((__tmp77947
                                                              (let ((__tmp77948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77949
                                    (let ()
                                      (declare (not safe))
                                      (cons _args77023_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp77949))))
                        (declare (not safe))
                        (__SRC__% __tmp77948 _stx76986_))))
                 (declare (not safe))
                 (cons __tmp77947 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len77024_
                                                        __tmp77946))))
                                           (declare (not safe))
                                           (cons __tmp77945 '())))
                                        (__tmp77942
                                         (let ((__tmp77943
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate76990_
                                                   _clauses77021_
                                                   _args77023_
                                                   _len77024_))))
                                           (declare (not safe))
                                           (cons __tmp77943 '()))))
                                    (declare (not safe))
                                    (cons __tmp77944 __tmp77942))))
                             (declare (not safe))
                             (cons 'let __tmp77941))))
                      (declare (not safe))
                      (__SRC__% __tmp77940 _stx76986_))))
               (declare (not safe))
               (cons __tmp77939 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args77023_
                                                      __tmp77938))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp77937))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77936 _stx76986_)))))
                          (let () (declare (not safe)) (_$E7699577008_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76992_))
                (let* ((_$tgt7699977029_
                        (let () (declare (not safe)) (__AST-e _$e76992_)))
                       (_$hd7700077032_
                        (let () (declare (not safe)) (##car _$tgt7699977029_)))
                       (_$tl7700177035_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7699977029_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7700177035_))
                      (let* ((_$tgt7700277039_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7700177035_)))
                             (_$hd7700377042_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7700277039_)))
                             (_$tl7700477045_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7700277039_))))
                        (let ((_clause77049_ _$hd7700377042_))
                          (if (let ((__tmp77951
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7700477045_))))
                                (declare (not safe))
                                (equal? __tmp77951 '()))
                              (let ((__tmp77950
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause77049_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp77950))
                              (let () (declare (not safe)) (_$E7699477026_)))))
                      (let () (declare (not safe)) (_$E7699477026_))))
                (let () (declare (not safe)) (_$E7699477026_)))))))
    (define __compile-let-form
      (lambda (_stx76755_ _compile-simple76756_ _compile-values76757_)
        (letrec ((_simple-bind?76759_
                  (lambda (_hd76944_)
                    (let* ((_hd7694576955_ _hd76944_)
                           (_else7694876963_ (lambda () '#f)))
                      (let ((_K7695176976_ (lambda (_id76974_) '#t))
                            (_K7695076968_ (lambda () '#t)))
                        (let ((_try-match7694776971_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7694576955_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7695076968_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7694876963_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7694576955_))
                              (let ((_tl7695376981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7694576955_)))
                                    (_hd7695276979_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7694576955_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7695376981_))
                                    (let ((_id76984_ _hd7695276979_))
                                      (declare (not safe))
                                      (_K7695176976_ _id76984_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7694776971_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7694776971_))))))))
                 (_car-e76760_
                  (lambda (_hd76942_)
                    (if (let () (declare (not safe)) (pair? _hd76942_))
                        (car _hd76942_)
                        _hd76942_))))
          (let* ((_$e76762_ _stx76755_)
                 (_$E7676476907_
                  (lambda ()
                    (let ((_$E7676576787_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76762_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76762_))
                          (let* ((_$tgt7676676790_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76762_)))
                                 (_$hd7676776793_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7676676790_)))
                                 (_$tl7676876796_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7676676790_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7676876796_))
                                (let* ((_$tgt7676976800_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7676876796_)))
                                       (_$hd7677076803_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7676976800_)))
                                       (_$tl7677176806_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7676976800_))))
                                  (let ((_hd76810_ _$hd7677076803_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7677176806_))
                                        (let* ((_$tgt7677276812_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7677176806_)))
                                               (_$hd7677376815_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7677276812_)))
                                               (_$tl7677476818_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7677276812_))))
                                          (let ((_body76822_ _$hd7677376815_))
                                            (if (let ((__tmp77954
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7677476818_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77954 '()))
                                                (let* ((_hd-ids76862_
                                                        (map (lambda (_bind76824_)
                                                               (let* ((_$e76826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76824_)
                              (_$E7682876837_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76826_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76826_))
                             (let* ((_$tgt7682976840_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76826_)))
                                    (_$hd7683076843_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7682976840_)))
                                    (_$tl7683176846_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7682976840_))))
                               (let ((_ids76850_ _$hd7683076843_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7683176846_))
                                     (let* ((_$tgt7683276852_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7683176846_)))
                                            (_$hd7683376855_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7683276852_)))
                                            (_$tl7683476858_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7683276852_))))
                                       (if (let ((__tmp77952
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7683476858_))))
                                             (declare (not safe))
                                             (equal? __tmp77952 '()))
                                           _ids76850_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7682876837_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7682876837_)))))
                             (let () (declare (not safe)) (_$E7682876837_)))))
                     _hd76810_))
               (_exprs76902_
                (map (lambda (_bind76864_)
                       (let* ((_$e76866_ _bind76864_)
                              (_$E7686876877_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76866_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76866_))
                             (let* ((_$tgt7686976880_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76866_)))
                                    (_$hd7687076883_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7686976880_)))
                                    (_$tl7687176886_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7686976880_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7687176886_))
                                   (let* ((_$tgt7687276890_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7687176886_)))
                                          (_$hd7687376893_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7687276890_)))
                                          (_$tl7687476896_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7687276890_))))
                                     (let ((_expr76900_ _$hd7687376893_))
                                       (if (let ((__tmp77953
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7687476896_))))
                                             (declare (not safe))
                                             (equal? __tmp77953 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76900_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7686876877_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7686876877_))))
                             (let () (declare (not safe)) (_$E7686876877_)))))
                     _hd76810_))
               (_body76904_
                (let () (declare (not safe)) (__compile _body76822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?76759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids76862_))
              (_compile-simple76756_
               (map _car-e76760_ _hd-ids76862_)
               _exprs76902_
               _body76904_)
              (_compile-values76757_ _hd-ids76862_ _exprs76902_ _body76904_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7676576787_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7676576787_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7676576787_))))
                          (let () (declare (not safe)) (_$E7676576787_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76762_))
                (let* ((_$tgt7677576910_
                        (let () (declare (not safe)) (__AST-e _$e76762_)))
                       (_$hd7677676913_
                        (let () (declare (not safe)) (##car _$tgt7677576910_)))
                       (_$tl7677776916_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7677576910_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7677776916_))
                      (let* ((_$tgt7677876920_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7677776916_)))
                             (_$hd7677976923_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7677876920_)))
                             (_$tl7678076926_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7677876920_))))
                        (if (let ((__tmp77956
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7677976923_))))
                              (declare (not safe))
                              (equal? __tmp77956 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7678076926_))
                                (let* ((_$tgt7678176930_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7678076926_)))
                                       (_$hd7678276933_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7678176930_)))
                                       (_$tl7678376936_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7678176930_))))
                                  (let ((_body76940_ _$hd7678276933_))
                                    (if (let ((__tmp77955
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7678376936_))))
                                          (declare (not safe))
                                          (equal? __tmp77955 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76940_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7676476907_)))))
                                (let () (declare (not safe)) (_$E7676476907_)))
                            (let () (declare (not safe)) (_$E7676476907_))))
                      (let () (declare (not safe)) (_$E7676476907_))))
                (let () (declare (not safe)) (_$E7676476907_)))))))
    (define __compile-let-values%
      (lambda (_stx76570_)
        (letrec ((_compile-simple76572_
                  (lambda (_hd-ids76751_ _exprs76752_ _body76753_)
                    (let ((__tmp77957
                           (let ((__tmp77958
                                  (let ((__tmp77960
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76751_)
                                              _exprs76752_))
                                        (__tmp77959
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76753_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77960 __tmp77959))))
                             (declare (not safe))
                             (cons 'let __tmp77958))))
                      (declare (not safe))
                      (__SRC__% __tmp77957 _stx76570_))))
                 (_compile-values76573_
                  (lambda (_hd-ids76669_ _exprs76670_ _body76671_)
                    (let _lp76673_ ((_rest76675_ _hd-ids76669_)
                                    (_exprs76676_ _exprs76670_)
                                    (_bind76677_ '())
                                    (_post76678_ '()))
                      (let* ((_rest7667976693_ _rest76675_)
                             (_else7668276701_
                              (lambda ()
                                (let ((__tmp77961
                                       (let ((__tmp77962
                                              (let ((__tmp77965
                                                     (reverse _bind76677_))
                                                    (__tmp77963
                                                     (let ((__tmp77964
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post76574_
                                                               _post76678_
                                                               _body76671_))))
                                                       (declare (not safe))
                                                       (cons __tmp77964 '()))))
                                                (declare (not safe))
                                                (cons __tmp77965 __tmp77963))))
                                         (declare (not safe))
                                         (cons 'let __tmp77962))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77961 _stx76570_)))))
                        (let ((_K7668776734_
                               (lambda (_rest76731_ _id76732_)
                                 (let ((__tmp77971 (cdr _exprs76676_))
                                       (__tmp77966
                                        (let ((__tmp77967
                                               (let ((__tmp77970
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76732_)))
                                                     (__tmp77968
                                                      (let ((__tmp77969
                                                             (car _exprs76676_)))
                                                        (declare (not safe))
                                                        (cons __tmp77969
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77970
                                                       __tmp77968))))
                                          (declare (not safe))
                                          (cons __tmp77967 _bind76677_))))
                                   (declare (not safe))
                                   (_lp76673_
                                    _rest76731_
                                    __tmp77971
                                    __tmp77966
                                    _post76678_))))
                              (_K7668476716_
                               (lambda (_rest76705_ _hd76706_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76706_))
                                     (let ((__tmp77992 (cdr _exprs76676_))
                                           (__tmp77985
                                            (let ((__tmp77986
                                                   (let ((__tmp77991
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76706_)))
                                                         (__tmp77987
                                                          (let ((__tmp77988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77989
                                (let ((__tmp77990 (car _exprs76676_)))
                                  (declare (not safe))
                                  (cons __tmp77990 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77989))))
                    (declare (not safe))
                    (cons __tmp77988 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77991
                                                           __tmp77987))))
                                              (declare (not safe))
                                              (cons __tmp77986 _bind76677_))))
                                       (declare (not safe))
                                       (_lp76673_
                                        _rest76705_
                                        __tmp77992
                                        __tmp77985
                                        _post76678_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76706_))
                                         (let* ((_len76708_ (length _hd76706_))
                                                (_tmp76710_
                                                 (let ((__tmp77972 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77972))))
                                           (let ((__tmp77984
                                                  (cdr _exprs76676_))
                                                 (__tmp77980
                                                  (let ((__tmp77981
                                                         (let ((__tmp77982
                                                                (let ((__tmp77983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76676_)))
                          (declare (not safe))
                          (cons __tmp77983 '()))))
                   (declare (not safe))
                   (cons _tmp76710_ __tmp77982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77981
                                                          _bind76677_)))
                                                 (__tmp77973
                                                  (let ((__tmp77974
                                                         (let ((__tmp77975
                                                                (let ((__tmp77976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77978
                                      (lambda (_id76713_ _k76714_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76713_))
                                            (let ((__tmp77979
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76713_))))
                                              (declare (not safe))
                                              (cons __tmp77979 _k76714_))
                                            '#f)))
                                     (__tmp77977
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76708_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77978
                                  _hd76706_
                                  __tmp77977))))
                          (declare (not safe))
                          (cons _len76708_ __tmp77976))))
                   (declare (not safe))
                   (cons _tmp76710_ __tmp77975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77974
                                                          _post76678_))))
                                             (declare (not safe))
                                             (_lp76673_
                                              _rest76705_
                                              __tmp77984
                                              __tmp77980
                                              __tmp77973)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76570_
                                            _hd76706_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7667976693_))
                              (let ((_tl7668976739_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7667976693_)))
                                    (_hd7668876737_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7667976693_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7668876737_))
                                    (let ((_tl7669176744_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7668876737_)))
                                          (_hd7669076742_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7668876737_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7669176744_))
                                          (let ((_id76747_ _hd7669076742_)
                                                (_rest76749_ _tl7668976739_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7668776734_
                                               _rest76749_
                                               _id76747_)))
                                          (let ((_hd76724_ _hd7668876737_)
                                                (_rest76726_ _tl7668976739_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7668476716_
                                               _rest76726_
                                               _hd76724_)))))
                                    (let ((_hd76724_ _hd7668876737_)
                                          (_rest76726_ _tl7668976739_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7668476716_
                                         _rest76726_
                                         _hd76724_)))))
                              (let ()
                                (declare (not safe))
                                (_else7668276701_))))))))
                 (_compile-post76574_
                  (lambda (_post76576_ _body76577_)
                    (let _lp76579_ ((_rest76581_ _post76576_)
                                    (_check76582_ '())
                                    (_bind76583_ '()))
                      (let* ((_rest7658476596_ _rest76581_)
                             (_else7658676604_
                              (lambda ()
                                (let ((__tmp77993
                                       (let ((__tmp77994
                                              (let ((__tmp77995
                                                     (let ((__tmp77996
                                                            (let ((__tmp77997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77998
                                  (let ((__tmp77999
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76577_ '()))))
                                    (declare (not safe))
                                    (cons _bind76583_ __tmp77999))))
                             (declare (not safe))
                             (cons 'let __tmp77998))))
                      (declare (not safe))
                      (__SRC__% __tmp77997 _stx76570_))))
               (declare (not safe))
               (cons __tmp77996 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77995
                                                        _check76582_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77994))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77993 _stx76570_))))
                             (_K7658876643_
                              (lambda (_rest76607_
                                       _init76608_
                                       _len76609_
                                       _tmp76610_)
                                (let ((__tmp78007
                                       (let ((__tmp78008
                                              (let ((__tmp78009
                                                     (let ((__tmp78010
                                                            (let ((__tmp78011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76609_ '()))))
                      (declare (not safe))
                      (cons _tmp76610_ __tmp78011))))
               (declare (not safe))
               (cons '__check-values __tmp78010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78009
                                                 _stx76570_))))
                                         (declare (not safe))
                                         (cons __tmp78008 _check76582_)))
                                      (__tmp78000
                                       (let ((__tmp78001
                                              (lambda (_hd76612_ _r76613_)
                                                (let* ((_hd7661476621_
                                                        _hd76612_)
                                                       (_E7661676625_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7661476621_))))
               (_K7661776631_
                (lambda (_k76628_ _id76629_)
                  (let ((__tmp78002
                         (let ((__tmp78003
                                (let ((__tmp78004
                                       (let ((__tmp78005
                                              (let ((__tmp78006
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k76628_ '()))))
                                                (declare (not safe))
                                                (cons _tmp76610_ __tmp78006))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp78005))))
                                  (declare (not safe))
                                  (cons __tmp78004 '()))))
                           (declare (not safe))
                           (cons _id76629_ __tmp78003))))
                    (declare (not safe))
                    (cons __tmp78002 _r76613_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7661476621_))
                                                      (let ((_hd7661876634_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7661476621_)))
                    (_tl7661976636_
                     (let () (declare (not safe)) (##cdr _hd7661476621_))))
                (let* ((_id76639_ _hd7661876634_) (_k76641_ _tl7661976636_))
                  (declare (not safe))
                  (_K7661776631_ _k76641_ _id76639_)))
              (let () (declare (not safe)) (_E7661676625_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78001
                                                 _bind76583_
                                                 _init76608_))))
                                  (declare (not safe))
                                  (_lp76579_
                                   _rest76607_
                                   __tmp78007
                                   __tmp78000)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7658476596_))
                            (let ((_hd7658976646_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7658476596_)))
                                  (_tl7659076648_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7658476596_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7658976646_))
                                  (let ((_hd7659176651_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7658976646_)))
                                        (_tl7659276653_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7658976646_))))
                                    (let ((_tmp76656_ _hd7659176651_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7659276653_))
                                          (let ((_hd7659376658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7659276653_)))
                                                (_tl7659476660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7659276653_))))
                                            (let* ((_len76663_ _hd7659376658_)
                                                   (_init76665_ _tl7659476660_)
                                                   (_rest76667_
                                                    _tl7659076648_))
                                              (declare (not safe))
                                              (_K7658876643_
                                               _rest76667_
                                               _init76665_
                                               _len76663_
                                               _tmp76656_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7658676604_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7658676604_))))
                            (let ()
                              (declare (not safe))
                              (_else7658676604_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76570_
             _compile-simple76572_
             _compile-values76573_)))))
    (define __compile-letrec-values%
      (lambda (_stx76370_)
        (letrec ((_compile-simple76372_
                  (lambda (_hd-ids76566_ _exprs76567_ _body76568_)
                    (let ((__tmp78012
                           (let ((__tmp78013
                                  (let ((__tmp78015
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76566_)
                                              _exprs76567_))
                                        (__tmp78014
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76568_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78015 __tmp78014))))
                             (declare (not safe))
                             (cons 'letrec __tmp78013))))
                      (declare (not safe))
                      (__SRC__% __tmp78012 _stx76370_))))
                 (_compile-values76373_
                  (lambda (_hd-ids76480_ _exprs76481_ _body76482_)
                    (let _lp76484_ ((_rest76486_ _hd-ids76480_)
                                    (_exprs76487_ _exprs76481_)
                                    (_pre76488_ '())
                                    (_bind76489_ '())
                                    (_post76490_ '()))
                      (let* ((_rest7649176505_ _rest76486_)
                             (_else7649476513_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner76374_
                                   _pre76488_
                                   _bind76489_
                                   _post76490_
                                   _body76482_)))))
                        (let ((_K7649976549_
                               (lambda (_rest76546_ _id76547_)
                                 (let ((__tmp78021 (cdr _exprs76487_))
                                       (__tmp78016
                                        (let ((__tmp78017
                                               (let ((__tmp78020
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76547_)))
                                                     (__tmp78018
                                                      (let ((__tmp78019
                                                             (car _exprs76487_)))
                                                        (declare (not safe))
                                                        (cons __tmp78019
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp78020
                                                       __tmp78018))))
                                          (declare (not safe))
                                          (cons __tmp78017 _bind76489_))))
                                   (declare (not safe))
                                   (_lp76484_
                                    _rest76546_
                                    __tmp78021
                                    _pre76488_
                                    __tmp78016
                                    _post76490_))))
                              (_K7649676531_
                               (lambda (_rest76517_ _hd76518_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76518_))
                                     (let ((__tmp78049 (cdr _exprs76487_))
                                           (__tmp78042
                                            (let ((__tmp78043
                                                   (let ((__tmp78048
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76518_)))
                                                         (__tmp78044
                                                          (let ((__tmp78045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78046
                                (let ((__tmp78047 (car _exprs76487_)))
                                  (declare (not safe))
                                  (cons __tmp78047 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78046))))
                    (declare (not safe))
                    (cons __tmp78045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78048
                                                           __tmp78044))))
                                              (declare (not safe))
                                              (cons __tmp78043 _bind76489_))))
                                       (declare (not safe))
                                       (_lp76484_
                                        _rest76517_
                                        __tmp78049
                                        _pre76488_
                                        __tmp78042
                                        _post76490_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76518_))
                                         (let* ((_len76520_ (length _hd76518_))
                                                (_tmp76522_
                                                 (let ((__tmp78022 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp78022))))
                                           (let ((__tmp78041
                                                  (cdr _exprs76487_))
                                                 (__tmp78034
                                                  (let ((__tmp78035
                                                         (lambda (_id76525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76526_)
                   (if (let () (declare (not safe)) (__AST-e _id76525_))
                       (let ((__tmp78036
                              (let ((__tmp78040
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id76525_)))
                                    (__tmp78037
                                     (let ((__tmp78038
                                            (let ((__tmp78039
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp78039))))
                                       (declare (not safe))
                                       (cons __tmp78038 '()))))
                                (declare (not safe))
                                (cons __tmp78040 __tmp78037))))
                         (declare (not safe))
                         (cons __tmp78036 _r76526_))
                       _r76526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp78035
                                                            _pre76488_
                                                            _hd76518_)))
                                                 (__tmp78030
                                                  (let ((__tmp78031
                                                         (let ((__tmp78032
                                                                (let ((__tmp78033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76487_)))
                          (declare (not safe))
                          (cons __tmp78033 '()))))
                   (declare (not safe))
                   (cons _tmp76522_ __tmp78032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78031
                                                          _bind76489_)))
                                                 (__tmp78023
                                                  (let ((__tmp78024
                                                         (let ((__tmp78025
                                                                (let ((__tmp78026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78028
                                      (lambda (_id76528_ _k76529_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76528_))
                                            (let ((__tmp78029
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76528_))))
                                              (declare (not safe))
                                              (cons __tmp78029 _k76529_))
                                            '#f)))
                                     (__tmp78027
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76520_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp78028
                                  _hd76518_
                                  __tmp78027))))
                          (declare (not safe))
                          (cons _len76520_ __tmp78026))))
                   (declare (not safe))
                   (cons _tmp76522_ __tmp78025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78024
                                                          _post76490_))))
                                             (declare (not safe))
                                             (_lp76484_
                                              _rest76517_
                                              __tmp78041
                                              __tmp78034
                                              __tmp78030
                                              __tmp78023)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76370_
                                            _hd76518_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7649176505_))
                              (let ((_tl7650176554_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7649176505_)))
                                    (_hd7650076552_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7649176505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7650076552_))
                                    (let ((_tl7650376559_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7650076552_)))
                                          (_hd7650276557_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7650076552_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7650376559_))
                                          (let ((_id76562_ _hd7650276557_)
                                                (_rest76564_ _tl7650176554_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7649976549_
                                               _rest76564_
                                               _id76562_)))
                                          (let ((_hd76539_ _hd7650076552_)
                                                (_rest76541_ _tl7650176554_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7649676531_
                                               _rest76541_
                                               _hd76539_)))))
                                    (let ((_hd76539_ _hd7650076552_)
                                          (_rest76541_ _tl7650176554_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7649676531_
                                         _rest76541_
                                         _hd76539_)))))
                              (let ()
                                (declare (not safe))
                                (_else7649476513_))))))))
                 (_compile-inner76374_
                  (lambda (_pre76475_ _bind76476_ _post76477_ _body76478_)
                    (if (let () (declare (not safe)) (null? _pre76475_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind76375_
                           _bind76476_
                           _post76477_
                           _body76478_))
                        (let ((__tmp78050
                               (let ((__tmp78051
                                      (let ((__tmp78054 (reverse _pre76475_))
                                            (__tmp78052
                                             (let ((__tmp78053
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind76375_
                                                       _bind76476_
                                                       _post76477_
                                                       _body76478_))))
                                               (declare (not safe))
                                               (cons __tmp78053 '()))))
                                        (declare (not safe))
                                        (cons __tmp78054 __tmp78052))))
                                 (declare (not safe))
                                 (cons 'let __tmp78051))))
                          (declare (not safe))
                          (__SRC__% __tmp78050 _stx76370_)))))
                 (_compile-bind76375_
                  (lambda (_bind76471_ _post76472_ _body76473_)
                    (let ((__tmp78055
                           (let ((__tmp78056
                                  (let ((__tmp78059 (reverse _bind76471_))
                                        (__tmp78057
                                         (let ((__tmp78058
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76376_
                                                   _post76472_
                                                   _body76473_))))
                                           (declare (not safe))
                                           (cons __tmp78058 '()))))
                                    (declare (not safe))
                                    (cons __tmp78059 __tmp78057))))
                             (declare (not safe))
                             (cons 'letrec __tmp78056))))
                      (declare (not safe))
                      (__SRC__% __tmp78055 _stx76370_))))
                 (_compile-post76376_
                  (lambda (_post76378_ _body76379_)
                    (let _lp76381_ ((_rest76383_ _post76378_)
                                    (_check76384_ '())
                                    (_bind76385_ '()))
                      (let* ((_rest7638676398_ _rest76383_)
                             (_else7638876406_
                              (lambda ()
                                (let ((__tmp78060
                                       (let ((__tmp78061
                                              (let ((__tmp78062
                                                     (let ((__tmp78063
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body76379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp78063 _bind76385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78062
                                                        _check76384_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78061))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78060 _stx76370_))))
                             (_K7639076445_
                              (lambda (_rest76409_
                                       _init76410_
                                       _len76411_
                                       _tmp76412_)
                                (let ((__tmp78072
                                       (let ((__tmp78073
                                              (let ((__tmp78074
                                                     (let ((__tmp78075
                                                            (let ((__tmp78076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76411_ '()))))
                      (declare (not safe))
                      (cons _tmp76412_ __tmp78076))))
               (declare (not safe))
               (cons '__check-values __tmp78075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78074
                                                 _stx76370_))))
                                         (declare (not safe))
                                         (cons __tmp78073 _check76384_)))
                                      (__tmp78064
                                       (let ((__tmp78065
                                              (lambda (_hd76414_ _r76415_)
                                                (let* ((_hd7641676423_
                                                        _hd76414_)
                                                       (_E7641876427_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7641676423_))))
               (_K7641976433_
                (lambda (_k76430_ _id76431_)
                  (let ((__tmp78066
                         (let ((__tmp78067
                                (let ((__tmp78068
                                       (let ((__tmp78069
                                              (let ((__tmp78070
                                                     (let ((__tmp78071
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k76430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp76412_ __tmp78071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp78070))))
                                         (declare (not safe))
                                         (cons __tmp78069 '()))))
                                  (declare (not safe))
                                  (cons _id76431_ __tmp78068))))
                           (declare (not safe))
                           (cons 'set! __tmp78067))))
                    (declare (not safe))
                    (cons __tmp78066 _r76415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7641676423_))
                                                      (let ((_hd7642076436_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7641676423_)))
                    (_tl7642176438_
                     (let () (declare (not safe)) (##cdr _hd7641676423_))))
                (let* ((_id76441_ _hd7642076436_) (_k76443_ _tl7642176438_))
                  (declare (not safe))
                  (_K7641976433_ _k76443_ _id76441_)))
              (let () (declare (not safe)) (_E7641876427_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78065
                                                 _bind76385_
                                                 _init76410_))))
                                  (declare (not safe))
                                  (_lp76381_
                                   _rest76409_
                                   __tmp78072
                                   __tmp78064)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7638676398_))
                            (let ((_hd7639176448_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7638676398_)))
                                  (_tl7639276450_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7638676398_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7639176448_))
                                  (let ((_hd7639376453_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7639176448_)))
                                        (_tl7639476455_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7639176448_))))
                                    (let ((_tmp76458_ _hd7639376453_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7639476455_))
                                          (let ((_hd7639576460_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7639476455_)))
                                                (_tl7639676462_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7639476455_))))
                                            (let* ((_len76465_ _hd7639576460_)
                                                   (_init76467_ _tl7639676462_)
                                                   (_rest76469_
                                                    _tl7639276450_))
                                              (declare (not safe))
                                              (_K7639076445_
                                               _rest76469_
                                               _init76467_
                                               _len76465_
                                               _tmp76458_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7638876406_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7638876406_))))
                            (let ()
                              (declare (not safe))
                              (_else7638876406_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76370_
             _compile-simple76372_
             _compile-values76373_)))))
    (define __compile-letrec*-values%
      (lambda (_stx76125_)
        (letrec ((_compile-simple76127_
                  (lambda (_hd-ids76366_ _exprs76367_ _body76368_)
                    (let ((__tmp78077
                           (let ((__tmp78078
                                  (let ((__tmp78080
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76366_)
                                              _exprs76367_))
                                        (__tmp78079
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76368_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78080 __tmp78079))))
                             (declare (not safe))
                             (cons 'letrec* __tmp78078))))
                      (declare (not safe))
                      (__SRC__% __tmp78077 _stx76125_))))
                 (_compile-values76128_
                  (lambda (_hd-ids76277_ _exprs76278_ _body76279_)
                    (let _lp76281_ ((_rest76283_ _hd-ids76277_)
                                    (_exprs76284_ _exprs76278_)
                                    (_bind76285_ '())
                                    (_post76286_ '()))
                      (let* ((_rest7628776301_ _rest76283_)
                             (_else7629076309_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind76129_
                                   _bind76285_
                                   _post76286_
                                   _body76279_)))))
                        (let ((_K7629576349_
                               (lambda (_rest76344_ _hd76345_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76345_))
                                     (let ((_id76347_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76345_))))
                                       (let ((__tmp78095 (cdr _exprs76284_))
                                             (__tmp78090
                                              (let ((__tmp78091
                                                     (let ((__tmp78092
                                                            (let ((__tmp78093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78094
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78094))))
                      (declare (not safe))
                      (cons __tmp78093 '()))))
               (declare (not safe))
               (cons _id76347_ __tmp78092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78091 _bind76285_)))
                                             (__tmp78086
                                              (let ((__tmp78087
                                                     (let ((__tmp78088
                                                            (let ((__tmp78089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs76284_)))
                      (declare (not safe))
                      (cons __tmp78089 '()))))
               (declare (not safe))
               (cons _id76347_ __tmp78088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78087
                                                      _post76286_))))
                                         (declare (not safe))
                                         (_lp76281_
                                          _rest76344_
                                          __tmp78095
                                          __tmp78090
                                          __tmp78086)))
                                     (let ((__tmp78085 (cdr _exprs76284_))
                                           (__tmp78081
                                            (let ((__tmp78082
                                                   (let ((__tmp78083
                                                          (let ((__tmp78084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs76284_)))
                    (declare (not safe))
                    (cons __tmp78084 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp78083))))
                                              (declare (not safe))
                                              (cons __tmp78082 _post76286_))))
                                       (declare (not safe))
                                       (_lp76281_
                                        _rest76344_
                                        __tmp78085
                                        _bind76285_
                                        __tmp78081)))))
                              (_K7629276329_
                               (lambda (_rest76313_ _hd76314_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76314_))
                                     (let ((_id76316_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76314_))))
                                       (let ((__tmp78131 (cdr _exprs76284_))
                                             (__tmp78126
                                              (let ((__tmp78127
                                                     (let ((__tmp78128
                                                            (let ((__tmp78129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78130
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78130))))
                      (declare (not safe))
                      (cons __tmp78129 '()))))
               (declare (not safe))
               (cons _id76316_ __tmp78128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78127 _bind76285_)))
                                             (__tmp78120
                                              (let ((__tmp78121
                                                     (let ((__tmp78122
                                                            (let ((__tmp78123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78124
                                  (let ((__tmp78125 (car _exprs76284_)))
                                    (declare (not safe))
                                    (cons __tmp78125 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp78124))))
                      (declare (not safe))
                      (cons __tmp78123 '()))))
               (declare (not safe))
               (cons _id76316_ __tmp78122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78121
                                                      _post76286_))))
                                         (declare (not safe))
                                         (_lp76281_
                                          _rest76313_
                                          __tmp78131
                                          __tmp78126
                                          __tmp78120)))
                                     (if (let ((__tmp78119
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd76314_))))
                                           (declare (not safe))
                                           (not __tmp78119))
                                         (let ((__tmp78118 (cdr _exprs76284_))
                                               (__tmp78114
                                                (let ((__tmp78115
                                                       (let ((__tmp78116
                                                              (let ((__tmp78117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs76284_)))
                        (declare (not safe))
                        (cons __tmp78117 '()))))
                 (declare (not safe))
                 (cons '#f __tmp78116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78115
                                                        _post76286_))))
                                           (declare (not safe))
                                           (_lp76281_
                                            _rest76313_
                                            __tmp78118
                                            _bind76285_
                                            __tmp78114))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd76314_))
                                             (let* ((_len76318_
                                                     (length _hd76314_))
                                                    (_tmp76320_
                                                     (let ((__tmp78096
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp78096))))
                                               (let ((__tmp78113
                                                      (cdr _exprs76284_))
                                                     (__tmp78106
                                                      (let ((__tmp78107
                                                             (lambda (_id76323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r76324_)
                       (if (let () (declare (not safe)) (__AST-e _id76323_))
                           (let ((__tmp78108
                                  (let ((__tmp78112
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76323_)))
                                        (__tmp78109
                                         (let ((__tmp78110
                                                (let ((__tmp78111
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp78111))))
                                           (declare (not safe))
                                           (cons __tmp78110 '()))))
                                    (declare (not safe))
                                    (cons __tmp78112 __tmp78109))))
                             (declare (not safe))
                             (cons __tmp78108 _r76324_))
                           _r76324_))))
                (declare (not safe))
                (foldl1 __tmp78107 _bind76285_ _hd76314_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp78097
                                                      (let ((__tmp78098
                                                             (let ((__tmp78099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78105 (car _exprs76284_))
                                  (__tmp78100
                                   (let ((__tmp78101
                                          (let ((__tmp78103
                                                 (lambda (_id76326_ _k76327_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id76326_))
                                                       (let ((__tmp78104
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id76326_))))
                 (declare (not safe))
                 (cons __tmp78104 _k76327_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp78102
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len76318_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp78103
                                             _hd76314_
                                             __tmp78102))))
                                     (declare (not safe))
                                     (cons _len76318_ __tmp78101))))
                              (declare (not safe))
                              (cons __tmp78105 __tmp78100))))
                       (declare (not safe))
                       (cons _tmp76320_ __tmp78099))))
                (declare (not safe))
                (cons __tmp78098 _post76286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp76281_
                                                  _rest76313_
                                                  __tmp78113
                                                  __tmp78106
                                                  __tmp78097)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx76125_
                                                _hd76314_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7628776301_))
                              (let ((_tl7629776354_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7628776301_)))
                                    (_hd7629676352_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7628776301_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7629676352_))
                                    (let ((_tl7629976359_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7629676352_)))
                                          (_hd7629876357_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7629676352_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7629976359_))
                                          (let ((_hd76362_ _hd7629876357_)
                                                (_rest76364_ _tl7629776354_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7629576349_
                                               _rest76364_
                                               _hd76362_)))
                                          (let ((_hd76337_ _hd7629676352_)
                                                (_rest76339_ _tl7629776354_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7629276329_
                                               _rest76339_
                                               _hd76337_)))))
                                    (let ((_hd76337_ _hd7629676352_)
                                          (_rest76339_ _tl7629776354_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7629276329_
                                         _rest76339_
                                         _hd76337_)))))
                              (let ()
                                (declare (not safe))
                                (_else7629076309_))))))))
                 (_compile-bind76129_
                  (lambda (_bind76273_ _post76274_ _body76275_)
                    (let ((__tmp78132
                           (let ((__tmp78133
                                  (let ((__tmp78136 (reverse _bind76273_))
                                        (__tmp78134
                                         (let ((__tmp78135
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76130_
                                                   _post76274_
                                                   _body76275_))))
                                           (declare (not safe))
                                           (cons __tmp78135 '()))))
                                    (declare (not safe))
                                    (cons __tmp78136 __tmp78134))))
                             (declare (not safe))
                             (cons 'let __tmp78133))))
                      (declare (not safe))
                      (__SRC__% __tmp78132 _stx76125_))))
                 (_compile-post76130_
                  (lambda (_post76132_ _body76133_)
                    (let ((__tmp78137
                           (let ((__tmp78138
                                  (let ((__tmp78139
                                         (let ((__tmp78141
                                                (lambda (_hd76135_ _r76136_)
                                                  (let* ((_hd7613776160_
                                                          _hd76135_)
                                                         (_E7614176164_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7613776160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7615476258_
                                                           (lambda (_expr76256_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr76256_ _r76136_))))
                  (_K7614976236_
                   (lambda (_expr76233_ _id76234_)
                     (let ((__tmp78142
                            (let ((__tmp78143
                                   (let ((__tmp78144
                                          (let ((__tmp78145
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr76233_ '()))))
                                            (declare (not safe))
                                            (cons _id76234_ __tmp78145))))
                                     (declare (not safe))
                                     (cons 'set! __tmp78144))))
                              (declare (not safe))
                              (__SRC__% __tmp78143 _stx76125_))))
                       (declare (not safe))
                       (cons __tmp78142 _r76136_))))
                  (_K7614276203_
                   (lambda (_init76168_ _len76169_ _expr76170_ _tmp76171_)
                     (let ((__tmp78146
                            (let ((__tmp78147
                                   (let ((__tmp78148
                                          (let ((__tmp78162
                                                 (let ((__tmp78163
                                                        (let ((__tmp78164
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr76170_ '()))))
                  (declare (not safe))
                  (cons _tmp76171_ __tmp78164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78163 '())))
                                                (__tmp78149
                                                 (let ((__tmp78158
                                                        (let ((__tmp78159
                                                               (let ((__tmp78160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp78161
                                     (let ()
                                       (declare (not safe))
                                       (cons _len76169_ '()))))
                                (declare (not safe))
                                (cons _tmp76171_ __tmp78161))))
                         (declare (not safe))
                         (cons '__check-values __tmp78160))))
                  (declare (not safe))
                  (__SRC__% __tmp78159 _stx76125_)))
               (__tmp78150
                (let ((__tmp78151
                       (map (lambda (_hd76173_)
                              (let* ((_hd7617476181_ _hd76173_)
                                     (_E7617676185_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7617476181_))))
                                     (_K7617776191_
                                      (lambda (_k76188_ _id76189_)
                                        (let ((__tmp78152
                                               (let ((__tmp78153
                                                      (let ((__tmp78154
                                                             (let ((__tmp78155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78156
                                   (let ((__tmp78157
                                          (let ()
                                            (declare (not safe))
                                            (cons _k76188_ '()))))
                                     (declare (not safe))
                                     (cons _tmp76171_ __tmp78157))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp78156))))
                       (declare (not safe))
                       (cons __tmp78155 '()))))
                (declare (not safe))
                (cons _id76189_ __tmp78154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp78153))))
                                          (declare (not safe))
                                          (__SRC__% __tmp78152 _stx76125_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7617476181_))
                                    (let ((_hd7617876194_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7617476181_)))
                                          (_tl7617976196_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7617476181_))))
                                      (let* ((_id76199_ _hd7617876194_)
                                             (_k76201_ _tl7617976196_))
                                        (declare (not safe))
                                        (_K7617776191_ _k76201_ _id76199_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7617676185_)))))
                            _init76168_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp78151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78158
                                                         __tmp78150))))
                                            (declare (not safe))
                                            (cons __tmp78162 __tmp78149))))
                                     (declare (not safe))
                                     (cons 'let __tmp78148))))
                              (declare (not safe))
                              (__SRC__% __tmp78147 _stx76125_))))
                       (declare (not safe))
                       (cons __tmp78146 _r76136_)))))
              (if (let () (declare (not safe)) (##pair? _hd7613776160_))
                  (let ((_tl7615676263_
                         (let () (declare (not safe)) (##cdr _hd7613776160_)))
                        (_hd7615576261_
                         (let () (declare (not safe)) (##car _hd7613776160_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7615576261_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7615676263_))
                            (let ((_tl7615876268_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7615676263_)))
                                  (_hd7615776266_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7615676263_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7615876268_))
                                  (let ((_expr76271_ _hd7615776266_))
                                    (declare (not safe))
                                    (_K7615476258_ _expr76271_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7615876268_))
                                      (let ((_tl7614876222_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7615876268_)))
                                            (_hd7614776220_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7615876268_))))
                                        (let ((_tmp76211_ _hd7615576261_)
                                              (_expr76218_ _hd7615776266_)
                                              (_len76225_ _hd7614776220_)
                                              (_init76227_ _tl7614876222_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7614276203_
                                             _init76227_
                                             _len76225_
                                             _expr76218_
                                             _tmp76211_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7614176164_)))))
                            (let () (declare (not safe)) (_E7614176164_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7615676263_))
                            (let ((_tl7615376248_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7615676263_)))
                                  (_hd7615276246_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7615676263_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7615376248_))
                                  (let ((_id76244_ _hd7615576261_)
                                        (_expr76251_ _hd7615276246_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7614976236_ _expr76251_ _id76244_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7615376248_))
                                      (let ((_tl7614876222_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7615376248_)))
                                            (_hd7614776220_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7615376248_))))
                                        (let ((_tmp76211_ _hd7615576261_)
                                              (_expr76218_ _hd7615276246_)
                                              (_len76225_ _hd7614776220_)
                                              (_init76227_ _tl7614876222_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7614276203_
                                             _init76227_
                                             _len76225_
                                             _expr76218_
                                             _tmp76211_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7614176164_)))))
                            (let () (declare (not safe)) (_E7614176164_)))))
                  (let () (declare (not safe)) (_E7614176164_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp78140 (list _body76133_)))
                                           (declare (not safe))
                                           (foldl1 __tmp78141
                                                   __tmp78140
                                                   _post76132_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp78139))))
                             (declare (not safe))
                             (cons 'begin __tmp78138))))
                      (declare (not safe))
                      (__SRC__% __tmp78137 _stx76125_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76125_
             _compile-simple76127_
             _compile-values76128_)))))
    (define __compile-call%
      (lambda (_stx76085_)
        (let* ((_$e76087_ _stx76085_)
               (_$E7608976098_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76087_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76087_))
              (let* ((_$tgt7609076101_
                      (let () (declare (not safe)) (__AST-e _$e76087_)))
                     (_$hd7609176104_
                      (let () (declare (not safe)) (##car _$tgt7609076101_)))
                     (_$tl7609276107_
                      (let () (declare (not safe)) (##cdr _$tgt7609076101_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7609276107_))
                    (let* ((_$tgt7609376111_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7609276107_)))
                           (_$hd7609476114_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7609376111_)))
                           (_$tl7609576117_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7609376111_))))
                      (let* ((_rator76121_ _$hd7609476114_)
                             (_rands76123_ _$tl7609576117_)
                             (__tmp78165
                              (let ((__tmp78167
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator76121_)))
                                    (__tmp78166 (map __compile _rands76123_)))
                                (declare (not safe))
                                (cons __tmp78167 __tmp78166))))
                        (declare (not safe))
                        (__SRC__% __tmp78165 _stx76085_)))
                    (let () (declare (not safe)) (_$E7608976098_))))
              (let () (declare (not safe)) (_$E7608976098_))))))
    (define __compile-ref%
      (lambda (_stx76047_)
        (let* ((_$e76049_ _stx76047_)
               (_$E7605176060_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76049_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76049_))
              (let* ((_$tgt7605276063_
                      (let () (declare (not safe)) (__AST-e _$e76049_)))
                     (_$hd7605376066_
                      (let () (declare (not safe)) (##car _$tgt7605276063_)))
                     (_$tl7605476069_
                      (let () (declare (not safe)) (##cdr _$tgt7605276063_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7605476069_))
                    (let* ((_$tgt7605576073_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7605476069_)))
                           (_$hd7605676076_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7605576073_)))
                           (_$tl7605776079_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7605576073_))))
                      (let ((_id76083_ _$hd7605676076_))
                        (if (let ((__tmp78168
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7605776079_))))
                              (declare (not safe))
                              (equal? __tmp78168 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id76083_ _stx76047_))
                            (let () (declare (not safe)) (_$E7605176060_)))))
                    (let () (declare (not safe)) (_$E7605176060_))))
              (let () (declare (not safe)) (_$E7605176060_))))))
    (define __compile-setq%
      (lambda (_stx75994_)
        (let* ((_$e75996_ _stx75994_)
               (_$E7599876010_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75996_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75996_))
              (let* ((_$tgt7599976013_
                      (let () (declare (not safe)) (__AST-e _$e75996_)))
                     (_$hd7600076016_
                      (let () (declare (not safe)) (##car _$tgt7599976013_)))
                     (_$tl7600176019_
                      (let () (declare (not safe)) (##cdr _$tgt7599976013_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7600176019_))
                    (let* ((_$tgt7600276023_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7600176019_)))
                           (_$hd7600376026_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7600276023_)))
                           (_$tl7600476029_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7600276023_))))
                      (let ((_id76033_ _$hd7600376026_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7600476029_))
                            (let* ((_$tgt7600576035_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7600476029_)))
                                   (_$hd7600676038_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7600576035_)))
                                   (_$tl7600776041_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7600576035_))))
                              (let ((_expr76045_ _$hd7600676038_))
                                (if (let ((__tmp78174
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7600776041_))))
                                      (declare (not safe))
                                      (equal? __tmp78174 '()))
                                    (let ((__tmp78169
                                           (let ((__tmp78170
                                                  (let ((__tmp78173
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id76033_
                                                            _stx75994_)))
                                                        (__tmp78171
                                                         (let ((__tmp78172
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr76045_))))
                   (declare (not safe))
                   (cons __tmp78172 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78173
                                                          __tmp78171))))
                                             (declare (not safe))
                                             (cons 'set! __tmp78170))))
                                      (declare (not safe))
                                      (__SRC__% __tmp78169 _stx75994_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7599876010_)))))
                            (let () (declare (not safe)) (_$E7599876010_)))))
                    (let () (declare (not safe)) (_$E7599876010_))))
              (let () (declare (not safe)) (_$E7599876010_))))))
    (define __compile-if%
      (lambda (_stx75926_)
        (let* ((_$e75928_ _stx75926_)
               (_$E7593075945_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75928_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75928_))
              (let* ((_$tgt7593175948_
                      (let () (declare (not safe)) (__AST-e _$e75928_)))
                     (_$hd7593275951_
                      (let () (declare (not safe)) (##car _$tgt7593175948_)))
                     (_$tl7593375954_
                      (let () (declare (not safe)) (##cdr _$tgt7593175948_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7593375954_))
                    (let* ((_$tgt7593475958_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7593375954_)))
                           (_$hd7593575961_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7593475958_)))
                           (_$tl7593675964_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7593475958_))))
                      (let ((_p75968_ _$hd7593575961_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7593675964_))
                            (let* ((_$tgt7593775970_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7593675964_)))
                                   (_$hd7593875973_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7593775970_)))
                                   (_$tl7593975976_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7593775970_))))
                              (let ((_t75980_ _$hd7593875973_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7593975976_))
                                    (let* ((_$tgt7594075982_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7593975976_)))
                                           (_$hd7594175985_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7594075982_)))
                                           (_$tl7594275988_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7594075982_))))
                                      (let ((_f75992_ _$hd7594175985_))
                                        (if (let ((__tmp78182
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7594275988_))))
                                              (declare (not safe))
                                              (equal? __tmp78182 '()))
                                            (let ((__tmp78175
                                                   (let ((__tmp78176
                                                          (let ((__tmp78181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p75968_)))
                        (__tmp78177
                         (let ((__tmp78180
                                (let ()
                                  (declare (not safe))
                                  (__compile _t75980_)))
                               (__tmp78178
                                (let ((__tmp78179
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f75992_))))
                                  (declare (not safe))
                                  (cons __tmp78179 '()))))
                           (declare (not safe))
                           (cons __tmp78180 __tmp78178))))
                    (declare (not safe))
                    (cons __tmp78181 __tmp78177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp78176))))
                                              (declare (not safe))
                                              (__SRC__% __tmp78175 _stx75926_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7593075945_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7593075945_)))))
                            (let () (declare (not safe)) (_$E7593075945_)))))
                    (let () (declare (not safe)) (_$E7593075945_))))
              (let () (declare (not safe)) (_$E7593075945_))))))
    (define __compile-quote%
      (lambda (_stx75888_)
        (let* ((_$e75890_ _stx75888_)
               (_$E7589275901_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75890_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75890_))
              (let* ((_$tgt7589375904_
                      (let () (declare (not safe)) (__AST-e _$e75890_)))
                     (_$hd7589475907_
                      (let () (declare (not safe)) (##car _$tgt7589375904_)))
                     (_$tl7589575910_
                      (let () (declare (not safe)) (##cdr _$tgt7589375904_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7589575910_))
                    (let* ((_$tgt7589675914_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7589575910_)))
                           (_$hd7589775917_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7589675914_)))
                           (_$tl7589875920_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7589675914_))))
                      (let ((_e75924_ _$hd7589775917_))
                        (if (let ((__tmp78186
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7589875920_))))
                              (declare (not safe))
                              (equal? __tmp78186 '()))
                            (let ((__tmp78183
                                   (let ((__tmp78184
                                          (let ((__tmp78185
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e75924_))))
                                            (declare (not safe))
                                            (cons __tmp78185 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78184))))
                              (declare (not safe))
                              (__SRC__% __tmp78183 _stx75888_))
                            (let () (declare (not safe)) (_$E7589275901_)))))
                    (let () (declare (not safe)) (_$E7589275901_))))
              (let () (declare (not safe)) (_$E7589275901_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75850_)
        (let* ((_$e75852_ _stx75850_)
               (_$E7585475863_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75852_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75852_))
              (let* ((_$tgt7585575866_
                      (let () (declare (not safe)) (__AST-e _$e75852_)))
                     (_$hd7585675869_
                      (let () (declare (not safe)) (##car _$tgt7585575866_)))
                     (_$tl7585775872_
                      (let () (declare (not safe)) (##cdr _$tgt7585575866_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7585775872_))
                    (let* ((_$tgt7585875876_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7585775872_)))
                           (_$hd7585975879_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7585875876_)))
                           (_$tl7586075882_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7585875876_))))
                      (let ((_e75886_ _$hd7585975879_))
                        (if (let ((__tmp78189
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7586075882_))))
                              (declare (not safe))
                              (equal? __tmp78189 '()))
                            (let ((__tmp78187
                                   (let ((__tmp78188
                                          (let ()
                                            (declare (not safe))
                                            (cons _e75886_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78188))))
                              (declare (not safe))
                              (__SRC__% __tmp78187 _stx75850_))
                            (let () (declare (not safe)) (_$E7585475863_)))))
                    (let () (declare (not safe)) (_$E7585475863_))))
              (let () (declare (not safe)) (_$E7585475863_))))))
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
