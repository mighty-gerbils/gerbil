(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1709159707)
  (begin
    (define __syntax::t
      (let ((__tmp77847 (list))
            (__tmp77845
             (let ((__tmp77846
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77846 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77847
         '(e id)
         __tmp77845
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77656_ (apply make-instance __syntax::t _$args77656_)))
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
      (let ((__tmp77850 (list __syntax::t))
            (__tmp77848
             (let ((__tmp77849
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77849 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77850
         '()
         __tmp77848
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77653_ (apply make-instance __core-form::t _$args77653_)))
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
      (let ((__tmp77853 (list __core-form::t))
            (__tmp77851
             (let ((__tmp77852
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77852 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77853
         '()
         __tmp77851
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77650_
        (apply make-instance __core-expression::t _$args77650_)))
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
      (let ((__tmp77856 (list __core-form::t))
            (__tmp77854
             (let ((__tmp77855
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77855 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77856
         '()
         __tmp77854
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77647_
        (apply make-instance __core-special-form::t _$args77647_)))
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
      (lambda (_id77645_)
        (let ((__tmp77857 (let () (declare (not safe)) (__AST-e _id77645_))))
          (declare (not safe))
          (hash-get __core __tmp77857))))
    (define __core-bound-id?__%
      (lambda (_id77629_ _is?77630_)
        (let ((_$e77632_
               (let () (declare (not safe)) (__core-resolve _id77629_))))
          (if _$e77632_ (_is?77630_ _$e77632_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77638_)
        (let ((_is?77640_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77638_ _is?77640_))))
    (define __core-bound-id?
      (lambda _g77859_
        (let ((_g77858_ (let () (declare (not safe)) (##length _g77859_))))
          (cond ((let () (declare (not safe)) (##fx= _g77858_ 1))
                 (apply (lambda (_id77638_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77638_)))
                        _g77859_))
                ((let () (declare (not safe)) (##fx= _g77858_ 2))
                 (apply (lambda (_id77642_ _is?77643_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77642_ _is?77643_)))
                        _g77859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77859_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77612_ _e77613_ _make77614_)
        (let ((__tmp77860
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77613_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77613_
                   (_make77614_ _e77613_ _id77612_))))
          (declare (not safe))
          (hash-put! __core _id77612_ __tmp77860))))
    (define __core-bind-syntax!__0
      (lambda (_id77619_ _e77620_)
        (let ((_make77622_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77619_ _e77620_ _make77622_))))
    (define __core-bind-syntax!
      (lambda _g77862_
        (let ((_g77861_ (let () (declare (not safe)) (##length _g77862_))))
          (cond ((let () (declare (not safe)) (##fx= _g77861_ 2))
                 (apply (lambda (_id77619_ _e77620_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77619_ _e77620_)))
                        _g77862_))
                ((let () (declare (not safe)) (##fx= _g77861_ 3))
                 (apply (lambda (_id77624_ _e77625_ _make77626_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77624_
                             _e77625_
                             _make77626_)))
                        _g77862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77862_))))))
    (define __SRC__%
      (lambda (_e77595_ _src-stx77596_)
        (if (or (let () (declare (not safe)) (pair? _e77595_))
                (let () (declare (not safe)) (symbol? _e77595_)))
            (let ((__tmp77866
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77596_
                          'gerbil#AST::t))
                       (let ((__tmp77867
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77596_))))
                         (declare (not safe))
                         (__locat __tmp77867))
                       '#f)))
              (declare (not safe))
              (##make-source _e77595_ __tmp77866))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77595_ 'gerbil#AST::t))
                (let ((__tmp77865
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77595_ '1 AST::t '#f)))
                      (__tmp77863
                       (let ((__tmp77864
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77595_))))
                         (declare (not safe))
                         (__locat __tmp77864))))
                  (declare (not safe))
                  (##make-source __tmp77865 __tmp77863))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77595_))))))
    (define __SRC__0
      (lambda (_e77604_)
        (let ((_src-stx77606_ '#f))
          (declare (not safe))
          (__SRC__% _e77604_ _src-stx77606_))))
    (define __SRC
      (lambda _g77869_
        (let ((_g77868_ (let () (declare (not safe)) (##length _g77869_))))
          (cond ((let () (declare (not safe)) (##fx= _g77868_ 1))
                 (apply (lambda (_e77604_)
                          (let () (declare (not safe)) (__SRC__0 _e77604_)))
                        _g77869_))
                ((let () (declare (not safe)) (##fx= _g77868_ 2))
                 (apply (lambda (_e77608_ _src-stx77609_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77608_ _src-stx77609_)))
                        _g77869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77869_))))))
    (define __locat
      (lambda (_loc77592_)
        (if (let () (declare (not safe)) (##locat? _loc77592_))
            _loc77592_
            '#f)))
    (define __check-values
      (lambda (_obj77587_ _k77588_)
        (let ((_count77590_
               (if (let () (declare (not safe)) (##values? _obj77587_))
                   (let () (declare (not safe)) (##vector-length _obj77587_))
                   '1)))
          (if (fx= _count77590_ _k77588_)
              '#!void
              (let ((__tmp77871
                     (if (fx< _count77590_ _k77588_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77870
                     (if (let () (declare (not safe)) (##values? _obj77587_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77587_))
                         _obj77587_)))
                (declare (not safe))
                (error __tmp77871 __tmp77870 _k77588_))))))
    (define __compile
      (lambda (_stx77557_)
        (let* ((_$e77559_ _stx77557_)
               (_$E7756177567_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77559_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77559_))
              (let* ((_$tgt7756277570_
                      (let () (declare (not safe)) (__AST-e _$e77559_)))
                     (_$hd7756377573_
                      (let () (declare (not safe)) (##car _$tgt7756277570_)))
                     (_$tl7756477576_
                      (let () (declare (not safe)) (##cdr _$tgt7756277570_))))
                (let* ((_form77580_ _$hd7756377573_)
                       (_$e77582_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77580_))))
                  (if _$e77582_
                      ((lambda (_bind77585_)
                         ((##structure-ref _bind77585_ '1 __syntax::t '#f)
                          _stx77557_))
                       _$e77582_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77557_
                         _form77580_)))))
              (let () (declare (not safe)) (_$E7756177567_))))))
    (define __compile-error__%
      (lambda (_stx77544_ _detail77545_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77544_
           _detail77545_))))
    (define __compile-error__0
      (lambda (_stx77550_)
        (let ((_detail77552_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77550_ _detail77552_))))
    (define __compile-error
      (lambda _g77873_
        (let ((_g77872_ (let () (declare (not safe)) (##length _g77873_))))
          (cond ((let () (declare (not safe)) (##fx= _g77872_ 1))
                 (apply (lambda (_stx77550_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77550_)))
                        _g77873_))
                ((let () (declare (not safe)) (##fx= _g77872_ 2))
                 (apply (lambda (_stx77554_ _detail77555_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77554_ _detail77555_)))
                        _g77873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77873_))))))
    (define __compile-ignore%
      (lambda (_stx77541_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77541_))))
    (define __compile-begin%
      (lambda (_stx77516_)
        (let* ((_$e77518_ _stx77516_)
               (_$E7752077526_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77518_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77518_))
              (let* ((_$tgt7752177529_
                      (let () (declare (not safe)) (__AST-e _$e77518_)))
                     (_$hd7752277532_
                      (let () (declare (not safe)) (##car _$tgt7752177529_)))
                     (_$tl7752377535_
                      (let () (declare (not safe)) (##cdr _$tgt7752177529_))))
                (let* ((_body77539_ _$tl7752377535_)
                       (__tmp77874
                        (let ((__tmp77875 (map __compile _body77539_)))
                          (declare (not safe))
                          (cons 'begin __tmp77875))))
                  (declare (not safe))
                  (__SRC__% __tmp77874 _stx77516_)))
              (let () (declare (not safe)) (_$E7752077526_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77491_)
        (let* ((_$e77493_ _stx77491_)
               (_$E7749577501_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77493_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77493_))
              (let* ((_$tgt7749677504_
                      (let () (declare (not safe)) (__AST-e _$e77493_)))
                     (_$hd7749777507_
                      (let () (declare (not safe)) (##car _$tgt7749677504_)))
                     (_$tl7749877510_
                      (let () (declare (not safe)) (##cdr _$tgt7749677504_))))
                (let* ((_body77514_ _$tl7749877510_)
                       (__tmp77876
                        (let ((__tmp77877
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body77514_))))
                          (declare (not safe))
                          (cons 'begin __tmp77877))))
                  (declare (not safe))
                  (__SRC__% __tmp77876 _stx77491_)))
              (let () (declare (not safe)) (_$E7749577501_))))))
    (define __compile-import%
      (lambda (_stx77466_)
        (let* ((_$e77468_ _stx77466_)
               (_$E7747077476_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77468_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77468_))
              (let* ((_$tgt7747177479_
                      (let () (declare (not safe)) (__AST-e _$e77468_)))
                     (_$hd7747277482_
                      (let () (declare (not safe)) (##car _$tgt7747177479_)))
                     (_$tl7747377485_
                      (let () (declare (not safe)) (##cdr _$tgt7747177479_))))
                (let* ((_body77489_ _$tl7747377485_)
                       (__tmp77878
                        (let ((__tmp77879
                               (let ((__tmp77880
                                      (let ((__tmp77881
                                             (let ()
                                               (declare (not safe))
                                               (cons _body77489_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp77881))))
                                 (declare (not safe))
                                 (cons __tmp77880 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp77879))))
                  (declare (not safe))
                  (__SRC__% __tmp77878 _stx77466_)))
              (let () (declare (not safe)) (_$E7747077476_))))))
    (define __compile-begin-annotation%
      (lambda (_stx77413_)
        (let* ((_$e77415_ _stx77413_)
               (_$E7741777429_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77415_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77415_))
              (let* ((_$tgt7741877432_
                      (let () (declare (not safe)) (__AST-e _$e77415_)))
                     (_$hd7741977435_
                      (let () (declare (not safe)) (##car _$tgt7741877432_)))
                     (_$tl7742077438_
                      (let () (declare (not safe)) (##cdr _$tgt7741877432_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7742077438_))
                    (let* ((_$tgt7742177442_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7742077438_)))
                           (_$hd7742277445_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7742177442_)))
                           (_$tl7742377448_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7742177442_))))
                      (let ((_ann77452_ _$hd7742277445_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7742377448_))
                            (let* ((_$tgt7742477454_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7742377448_)))
                                   (_$hd7742577457_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7742477454_)))
                                   (_$tl7742677460_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7742477454_))))
                              (let ((_expr77464_ _$hd7742577457_))
                                (if (let ((__tmp77882
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7742677460_))))
                                      (declare (not safe))
                                      (equal? __tmp77882 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77464_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7741777429_)))))
                            (let () (declare (not safe)) (_$E7741777429_)))))
                    (let () (declare (not safe)) (_$E7741777429_))))
              (let () (declare (not safe)) (_$E7741777429_))))))
    (define __compile-define-values%
      (lambda (_stx77304_)
        (let* ((_$e77306_ _stx77304_)
               (_$E7730877320_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77306_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77306_))
              (let* ((_$tgt7730977323_
                      (let () (declare (not safe)) (__AST-e _$e77306_)))
                     (_$hd7731077326_
                      (let () (declare (not safe)) (##car _$tgt7730977323_)))
                     (_$tl7731177329_
                      (let () (declare (not safe)) (##cdr _$tgt7730977323_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7731177329_))
                    (let* ((_$tgt7731277333_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7731177329_)))
                           (_$hd7731377336_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7731277333_)))
                           (_$tl7731477339_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7731277333_))))
                      (let ((_hd77343_ _$hd7731377336_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7731477339_))
                            (let* ((_$tgt7731577345_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7731477339_)))
                                   (_$hd7731677348_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7731577345_)))
                                   (_$tl7731777351_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7731577345_))))
                              (let ((_expr77355_ _$hd7731677348_))
                                (if (let ((__tmp77915
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7731777351_))))
                                      (declare (not safe))
                                      (equal? __tmp77915 '()))
                                    (let* ((_$e77357_ _hd77343_)
                                           (_$E7735977400_
                                            (lambda ()
                                              (let ((_$E7736077385_
                                                     (lambda ()
                                                       (let* ((_$E7736177372_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e77357_))))
                      (_ids77375_ _hd77343_)
                      (_len77377_ (length _ids77375_))
                      (_tmp77379_
                       (let ((__tmp77883 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp77883))))
                 (let ((__tmp77884
                        (let ((__tmp77885
                               (let ((__tmp77902
                                      (let ((__tmp77903
                                             (let ((__tmp77904
                                                    (let ((__tmp77905
                                                           (let ((__tmp77906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr77355_))))
                     (declare (not safe))
                     (cons __tmp77906 '()))))
              (declare (not safe))
              (cons _tmp77379_ __tmp77905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp77904))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77903 _stx77304_)))
                                     (__tmp77886
                                      (let ((__tmp77898
                                             (let ((__tmp77899
                                                    (let ((__tmp77900
                                                           (let ((__tmp77901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len77377_ '()))))
                     (declare (not safe))
                     (cons _tmp77379_ __tmp77901))))
              (declare (not safe))
              (cons '__check-values __tmp77900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77899
                                                _stx77304_)))
                                            (__tmp77887
                                             (let ((__tmp77888
                                                    (let ((__tmp77890
                                                           (lambda (_id77382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k77383_)
                     (if (let () (declare (not safe)) (__AST-e _id77382_))
                         (let ((__tmp77891
                                (let ((__tmp77892
                                       (let ((__tmp77897
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id77382_)))
                                             (__tmp77893
                                              (let ((__tmp77894
                                                     (let ((__tmp77895
                                                            (let ((__tmp77896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k77383_ '()))))
                      (declare (not safe))
                      (cons _tmp77379_ __tmp77896))))
               (declare (not safe))
               (cons '##vector-ref __tmp77895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77894 '()))))
                                         (declare (not safe))
                                         (cons __tmp77897 __tmp77893))))
                                  (declare (not safe))
                                  (cons 'define __tmp77892))))
                           (declare (not safe))
                           (__SRC__% __tmp77891 _stx77304_))
                         '#f)))
                  (__tmp77889
                   (let () (declare (not safe)) (iota__0 _len77377_))))
              (declare (not safe))
              (filter-map2 __tmp77890 _ids77375_ __tmp77889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp77888))))
                                        (declare (not safe))
                                        (cons __tmp77898 __tmp77887))))
                                 (declare (not safe))
                                 (cons __tmp77902 __tmp77886))))
                          (declare (not safe))
                          (cons 'begin __tmp77885))))
                   (declare (not safe))
                   (__SRC__% __tmp77884 _stx77304_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e77357_))
                                                    (let* ((_$tgt7736277388_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e77357_)))
                                                           (_$hd7736377391_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7736277388_)))
                                                           (_$tl7736477394_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7736277388_))))
                                                      (let ((_id77398_
                                                             _$hd7736377391_))
                                                        (if (let ((__tmp77912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7736477394_))))
                      (declare (not safe))
                      (equal? __tmp77912 '()))
                    (let ((__tmp77907
                           (let ((__tmp77908
                                  (let ((__tmp77911
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77398_)))
                                        (__tmp77909
                                         (let ((__tmp77910
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr77355_))))
                                           (declare (not safe))
                                           (cons __tmp77910 '()))))
                                    (declare (not safe))
                                    (cons __tmp77911 __tmp77909))))
                             (declare (not safe))
                             (cons 'define __tmp77908))))
                      (declare (not safe))
                      (__SRC__% __tmp77907 _stx77304_))
                    (let () (declare (not safe)) (_$E7736077385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7736077385_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e77357_))
                                          (let* ((_$tgt7736577403_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e77357_)))
                                                 (_$hd7736677406_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7736577403_)))
                                                 (_$tl7736777409_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7736577403_))))
                                            (if (let ((__tmp77914
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7736677406_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77914 '#f))
                                                (if (let ((__tmp77913
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7736777409_))))
                                                      (declare (not safe))
                                                      (equal? __tmp77913 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr77355_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7735977400_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7735977400_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7735977400_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7730877320_)))))
                            (let () (declare (not safe)) (_$E7730877320_)))))
                    (let () (declare (not safe)) (_$E7730877320_))))
              (let () (declare (not safe)) (_$E7730877320_))))))
    (define __compile-head-id
      (lambda (_e77302_)
        (let ((__tmp77916
               (if (let () (declare (not safe)) (__AST-e _e77302_))
                   _e77302_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp77916))))
    (define __compile-lambda-head
      (lambda (_hd77259_)
        (let _recur77261_ ((_rest77263_ _hd77259_))
          (let* ((_$e77265_ _rest77263_)
                 (_$E7726777285_
                  (lambda ()
                    (let ((_$E7726877282_
                           (lambda ()
                             (let* ((_$E7726977277_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e77265_))))
                                    (_tail77280_ _$e77265_))
                               (declare (not safe))
                               (__compile-head-id _tail77280_)))))
                      (if (let ((__tmp77917
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e77265_))))
                            (declare (not safe))
                            (equal? __tmp77917 '()))
                          '()
                          (let () (declare (not safe)) (_$E7726877282_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77265_))
                (let* ((_$tgt7727077288_
                        (let () (declare (not safe)) (__AST-e _$e77265_)))
                       (_$hd7727177291_
                        (let () (declare (not safe)) (##car _$tgt7727077288_)))
                       (_$tl7727277294_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7727077288_))))
                  (let* ((_hd77298_ _$hd7727177291_)
                         (_rest77300_ _$tl7727277294_))
                    (let ((__tmp77919
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd77298_)))
                          (__tmp77918
                           (let ()
                             (declare (not safe))
                             (_recur77261_ _rest77300_))))
                      (declare (not safe))
                      (cons __tmp77919 __tmp77918))))
                (let () (declare (not safe)) (_$E7726777285_)))))))
    (define __compile-lambda%
      (lambda (_stx77206_)
        (let* ((_$e77208_ _stx77206_)
               (_$E7721077222_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77208_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77208_))
              (let* ((_$tgt7721177225_
                      (let () (declare (not safe)) (__AST-e _$e77208_)))
                     (_$hd7721277228_
                      (let () (declare (not safe)) (##car _$tgt7721177225_)))
                     (_$tl7721377231_
                      (let () (declare (not safe)) (##cdr _$tgt7721177225_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7721377231_))
                    (let* ((_$tgt7721477235_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7721377231_)))
                           (_$hd7721577238_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7721477235_)))
                           (_$tl7721677241_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7721477235_))))
                      (let ((_hd77245_ _$hd7721577238_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7721677241_))
                            (let* ((_$tgt7721777247_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7721677241_)))
                                   (_$hd7721877250_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7721777247_)))
                                   (_$tl7721977253_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7721777247_))))
                              (let ((_body77257_ _$hd7721877250_))
                                (if (let ((__tmp77925
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7721977253_))))
                                      (declare (not safe))
                                      (equal? __tmp77925 '()))
                                    (let ((__tmp77920
                                           (let ((__tmp77921
                                                  (let ((__tmp77924
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd77245_)))
                                                        (__tmp77922
                                                         (let ((__tmp77923
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body77257_))))
                   (declare (not safe))
                   (cons __tmp77923 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77924
                                                          __tmp77922))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp77921))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77920 _stx77206_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7721077222_)))))
                            (let () (declare (not safe)) (_$E7721077222_)))))
                    (let () (declare (not safe)) (_$E7721077222_))))
              (let () (declare (not safe)) (_$E7721077222_))))))
    (define __compile-case-lambda%
      (lambda (_stx76998_)
        (letrec ((_variadic?77000_
                  (lambda (_hd77171_)
                    (let* ((_$e77173_ _hd77171_)
                           (_$E7717577191_
                            (lambda ()
                              (let ((_$E7717677188_
                                     (lambda ()
                                       (let ((_$E7717777185_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e77173_)))))
                                         '#t))))
                                (if (let ((__tmp77926
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e77173_))))
                                      (declare (not safe))
                                      (equal? __tmp77926 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7717677188_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77173_))
                          (let* ((_$tgt7717877194_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77173_)))
                                 (_$hd7717977197_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7717877194_)))
                                 (_$tl7718077200_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7717877194_))))
                            (let ((_rest77204_ _$tl7718077200_))
                              (declare (not safe))
                              (_variadic?77000_ _rest77204_)))
                          (let () (declare (not safe)) (_$E7717577191_))))))
                 (_arity77001_
                  (lambda (_hd77136_)
                    (let _lp77138_ ((_rest77140_ _hd77136_) (_k77141_ '0))
                      (let* ((_$e77143_ _rest77140_)
                             (_$E7714577156_
                              (lambda ()
                                (let ((_$E7714677153_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e77143_)))))
                                  _k77141_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e77143_))
                            (let* ((_$tgt7714777159_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e77143_)))
                                   (_$hd7714877162_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7714777159_)))
                                   (_$tl7714977165_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7714777159_))))
                              (let* ((_rest77169_ _$tl7714977165_)
                                     (__tmp77927
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k77141_ '1))))
                                (declare (not safe))
                                (_lp77138_ _rest77169_ __tmp77927)))
                            (let () (declare (not safe)) (_$E7714577156_)))))))
                 (_generate77002_
                  (lambda (_rest77063_ _args77064_ _len77065_)
                    (let* ((_$e77067_ _rest77063_)
                           (_$E7706977080_
                            (lambda ()
                              (let* ((_$E7707077077_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e77067_))))
                                     (__tmp77928
                                      (let ((__tmp77929
                                             (let ((__tmp77930
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args77064_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp77930))))
                                        (declare (not safe))
                                        (cons 'error __tmp77929))))
                                (declare (not safe))
                                (__SRC__% __tmp77928 _stx76998_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77067_))
                          (let* ((_$tgt7707177083_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77067_)))
                                 (_$hd7707277086_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7707177083_)))
                                 (_$tl7707377089_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7707177083_))))
                            (let* ((_clause77093_ _$hd7707277086_)
                                   (_rest77095_ _$tl7707377089_)
                                   (_$e77097_ _clause77093_)
                                   (_$E7709977108_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e77097_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e77097_))
                                  (let* ((_$tgt7710077111_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e77097_)))
                                         (_$hd7710177114_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7710077111_)))
                                         (_$tl7710277117_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7710077111_))))
                                    (let ((_hd77121_ _$hd7710177114_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7710277117_))
                                          (let* ((_$tgt7710377123_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7710277117_)))
                                                 (_$hd7710477126_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7710377123_)))
                                                 (_$tl7710577129_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7710377123_))))
                                            (if (let ((__tmp77945
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7710577129_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77945 '()))
                                                (let ((_clen77133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity77001_
                                                          _hd77121_)))
                                                      (_cmp77134_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?77000_
                                                              _hd77121_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77931
                                                         (let ((__tmp77932
                                                                (let ((__tmp77942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77943
                                      (let ((__tmp77944
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen77133_ '()))))
                                        (declare (not safe))
                                        (cons _len77065_ __tmp77944))))
                                 (declare (not safe))
                                 (cons _cmp77134_ __tmp77943)))
                              (__tmp77933
                               (let ((__tmp77936
                                      (let ((__tmp77937
                                             (let ((__tmp77938
                                                    (let ((__tmp77940
                                                           (let ((__tmp77941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause77093_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp77941)))
                  (__tmp77939
                   (let () (declare (not safe)) (cons _args77064_ '()))))
              (declare (not safe))
              (cons __tmp77940 __tmp77939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp77938))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77937 _stx76998_)))
                                     (__tmp77934
                                      (let ((__tmp77935
                                             (let ()
                                               (declare (not safe))
                                               (_generate77002_
                                                _rest77095_
                                                _args77064_
                                                _len77065_))))
                                        (declare (not safe))
                                        (cons __tmp77935 '()))))
                                 (declare (not safe))
                                 (cons __tmp77936 __tmp77934))))
                          (declare (not safe))
                          (cons __tmp77942 __tmp77933))))
                   (declare (not safe))
                   (cons 'if __tmp77932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77931
                                                     _stx76998_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7709977108_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7709977108_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7709977108_)))))
                          (let () (declare (not safe)) (_$E7706977080_)))))))
          (let* ((_$e77004_ _stx76998_)
                 (_$E7700677038_
                  (lambda ()
                    (let ((_$E7700777020_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e77004_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77004_))
                          (let* ((_$tgt7700877023_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77004_)))
                                 (_$hd7700977026_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7700877023_)))
                                 (_$tl7701077029_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7700877023_))))
                            (let ((_clauses77033_ _$tl7701077029_))
                              (let ((_args77035_
                                     (let ((__tmp77946 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77946 _stx76998_)))
                                    (_len77036_
                                     (let ((__tmp77947 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77947 _stx76998_))))
                                (let ((__tmp77948
                                       (let ((__tmp77949
                                              (let ((__tmp77950
                                                     (let ((__tmp77951
                                                            (let ((__tmp77952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77953
                                  (let ((__tmp77956
                                         (let ((__tmp77957
                                                (let ((__tmp77958
                                                       (let ((__tmp77959
                                                              (let ((__tmp77960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77961
                                    (let ()
                                      (declare (not safe))
                                      (cons _args77035_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp77961))))
                        (declare (not safe))
                        (__SRC__% __tmp77960 _stx76998_))))
                 (declare (not safe))
                 (cons __tmp77959 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len77036_
                                                        __tmp77958))))
                                           (declare (not safe))
                                           (cons __tmp77957 '())))
                                        (__tmp77954
                                         (let ((__tmp77955
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate77002_
                                                   _clauses77033_
                                                   _args77035_
                                                   _len77036_))))
                                           (declare (not safe))
                                           (cons __tmp77955 '()))))
                                    (declare (not safe))
                                    (cons __tmp77956 __tmp77954))))
                             (declare (not safe))
                             (cons 'let __tmp77953))))
                      (declare (not safe))
                      (__SRC__% __tmp77952 _stx76998_))))
               (declare (not safe))
               (cons __tmp77951 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args77035_
                                                      __tmp77950))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp77949))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77948 _stx76998_)))))
                          (let () (declare (not safe)) (_$E7700777020_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77004_))
                (let* ((_$tgt7701177041_
                        (let () (declare (not safe)) (__AST-e _$e77004_)))
                       (_$hd7701277044_
                        (let () (declare (not safe)) (##car _$tgt7701177041_)))
                       (_$tl7701377047_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7701177041_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7701377047_))
                      (let* ((_$tgt7701477051_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7701377047_)))
                             (_$hd7701577054_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7701477051_)))
                             (_$tl7701677057_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7701477051_))))
                        (let ((_clause77061_ _$hd7701577054_))
                          (if (let ((__tmp77963
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7701677057_))))
                                (declare (not safe))
                                (equal? __tmp77963 '()))
                              (let ((__tmp77962
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause77061_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp77962))
                              (let () (declare (not safe)) (_$E7700677038_)))))
                      (let () (declare (not safe)) (_$E7700677038_))))
                (let () (declare (not safe)) (_$E7700677038_)))))))
    (define __compile-let-form
      (lambda (_stx76767_ _compile-simple76768_ _compile-values76769_)
        (letrec ((_simple-bind?76771_
                  (lambda (_hd76956_)
                    (let* ((_hd7695776967_ _hd76956_)
                           (_else7696076975_ (lambda () '#f)))
                      (let ((_K7696376988_ (lambda (_id76986_) '#t))
                            (_K7696276980_ (lambda () '#t)))
                        (let ((_try-match7695976983_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7695776967_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7696276980_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7696076975_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7695776967_))
                              (let ((_tl7696576993_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7695776967_)))
                                    (_hd7696476991_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7695776967_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7696576993_))
                                    (let ((_id76996_ _hd7696476991_))
                                      (declare (not safe))
                                      (_K7696376988_ _id76996_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7695976983_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7695976983_))))))))
                 (_car-e76772_
                  (lambda (_hd76954_)
                    (if (let () (declare (not safe)) (pair? _hd76954_))
                        (car _hd76954_)
                        _hd76954_))))
          (let* ((_$e76774_ _stx76767_)
                 (_$E7677676919_
                  (lambda ()
                    (let ((_$E7677776799_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76774_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76774_))
                          (let* ((_$tgt7677876802_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76774_)))
                                 (_$hd7677976805_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7677876802_)))
                                 (_$tl7678076808_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7677876802_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7678076808_))
                                (let* ((_$tgt7678176812_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7678076808_)))
                                       (_$hd7678276815_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7678176812_)))
                                       (_$tl7678376818_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7678176812_))))
                                  (let ((_hd76822_ _$hd7678276815_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7678376818_))
                                        (let* ((_$tgt7678476824_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7678376818_)))
                                               (_$hd7678576827_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7678476824_)))
                                               (_$tl7678676830_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7678476824_))))
                                          (let ((_body76834_ _$hd7678576827_))
                                            (if (let ((__tmp77966
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7678676830_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77966 '()))
                                                (let* ((_hd-ids76874_
                                                        (map (lambda (_bind76836_)
                                                               (let* ((_$e76838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76836_)
                              (_$E7684076849_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76838_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76838_))
                             (let* ((_$tgt7684176852_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76838_)))
                                    (_$hd7684276855_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7684176852_)))
                                    (_$tl7684376858_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7684176852_))))
                               (let ((_ids76862_ _$hd7684276855_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7684376858_))
                                     (let* ((_$tgt7684476864_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7684376858_)))
                                            (_$hd7684576867_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7684476864_)))
                                            (_$tl7684676870_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7684476864_))))
                                       (if (let ((__tmp77964
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7684676870_))))
                                             (declare (not safe))
                                             (equal? __tmp77964 '()))
                                           _ids76862_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7684076849_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7684076849_)))))
                             (let () (declare (not safe)) (_$E7684076849_)))))
                     _hd76822_))
               (_exprs76914_
                (map (lambda (_bind76876_)
                       (let* ((_$e76878_ _bind76876_)
                              (_$E7688076889_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76878_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76878_))
                             (let* ((_$tgt7688176892_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76878_)))
                                    (_$hd7688276895_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7688176892_)))
                                    (_$tl7688376898_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7688176892_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7688376898_))
                                   (let* ((_$tgt7688476902_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7688376898_)))
                                          (_$hd7688576905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7688476902_)))
                                          (_$tl7688676908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7688476902_))))
                                     (let ((_expr76912_ _$hd7688576905_))
                                       (if (let ((__tmp77965
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7688676908_))))
                                             (declare (not safe))
                                             (equal? __tmp77965 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76912_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7688076889_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7688076889_))))
                             (let () (declare (not safe)) (_$E7688076889_)))))
                     _hd76822_))
               (_body76916_
                (let () (declare (not safe)) (__compile _body76834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?76771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids76874_))
              (_compile-simple76768_
               (map _car-e76772_ _hd-ids76874_)
               _exprs76914_
               _body76916_)
              (_compile-values76769_ _hd-ids76874_ _exprs76914_ _body76916_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7677776799_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7677776799_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7677776799_))))
                          (let () (declare (not safe)) (_$E7677776799_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76774_))
                (let* ((_$tgt7678776922_
                        (let () (declare (not safe)) (__AST-e _$e76774_)))
                       (_$hd7678876925_
                        (let () (declare (not safe)) (##car _$tgt7678776922_)))
                       (_$tl7678976928_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7678776922_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7678976928_))
                      (let* ((_$tgt7679076932_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7678976928_)))
                             (_$hd7679176935_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7679076932_)))
                             (_$tl7679276938_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7679076932_))))
                        (if (let ((__tmp77968
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7679176935_))))
                              (declare (not safe))
                              (equal? __tmp77968 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7679276938_))
                                (let* ((_$tgt7679376942_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7679276938_)))
                                       (_$hd7679476945_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7679376942_)))
                                       (_$tl7679576948_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7679376942_))))
                                  (let ((_body76952_ _$hd7679476945_))
                                    (if (let ((__tmp77967
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7679576948_))))
                                          (declare (not safe))
                                          (equal? __tmp77967 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76952_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7677676919_)))))
                                (let () (declare (not safe)) (_$E7677676919_)))
                            (let () (declare (not safe)) (_$E7677676919_))))
                      (let () (declare (not safe)) (_$E7677676919_))))
                (let () (declare (not safe)) (_$E7677676919_)))))))
    (define __compile-let-values%
      (lambda (_stx76582_)
        (letrec ((_compile-simple76584_
                  (lambda (_hd-ids76763_ _exprs76764_ _body76765_)
                    (let ((__tmp77969
                           (let ((__tmp77970
                                  (let ((__tmp77972
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76763_)
                                              _exprs76764_))
                                        (__tmp77971
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76765_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77972 __tmp77971))))
                             (declare (not safe))
                             (cons 'let __tmp77970))))
                      (declare (not safe))
                      (__SRC__% __tmp77969 _stx76582_))))
                 (_compile-values76585_
                  (lambda (_hd-ids76681_ _exprs76682_ _body76683_)
                    (let _lp76685_ ((_rest76687_ _hd-ids76681_)
                                    (_exprs76688_ _exprs76682_)
                                    (_bind76689_ '())
                                    (_post76690_ '()))
                      (let* ((_rest7669176705_ _rest76687_)
                             (_else7669476713_
                              (lambda ()
                                (let ((__tmp77973
                                       (let ((__tmp77974
                                              (let ((__tmp77977
                                                     (reverse _bind76689_))
                                                    (__tmp77975
                                                     (let ((__tmp77976
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post76586_
                                                               _post76690_
                                                               _body76683_))))
                                                       (declare (not safe))
                                                       (cons __tmp77976 '()))))
                                                (declare (not safe))
                                                (cons __tmp77977 __tmp77975))))
                                         (declare (not safe))
                                         (cons 'let __tmp77974))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77973 _stx76582_)))))
                        (let ((_K7669976746_
                               (lambda (_rest76743_ _id76744_)
                                 (let ((__tmp77983 (cdr _exprs76688_))
                                       (__tmp77978
                                        (let ((__tmp77979
                                               (let ((__tmp77982
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76744_)))
                                                     (__tmp77980
                                                      (let ((__tmp77981
                                                             (car _exprs76688_)))
                                                        (declare (not safe))
                                                        (cons __tmp77981
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77982
                                                       __tmp77980))))
                                          (declare (not safe))
                                          (cons __tmp77979 _bind76689_))))
                                   (declare (not safe))
                                   (_lp76685_
                                    _rest76743_
                                    __tmp77983
                                    __tmp77978
                                    _post76690_))))
                              (_K7669676728_
                               (lambda (_rest76717_ _hd76718_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76718_))
                                     (let ((__tmp78004 (cdr _exprs76688_))
                                           (__tmp77997
                                            (let ((__tmp77998
                                                   (let ((__tmp78003
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76718_)))
                                                         (__tmp77999
                                                          (let ((__tmp78000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78001
                                (let ((__tmp78002 (car _exprs76688_)))
                                  (declare (not safe))
                                  (cons __tmp78002 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78001))))
                    (declare (not safe))
                    (cons __tmp78000 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78003
                                                           __tmp77999))))
                                              (declare (not safe))
                                              (cons __tmp77998 _bind76689_))))
                                       (declare (not safe))
                                       (_lp76685_
                                        _rest76717_
                                        __tmp78004
                                        __tmp77997
                                        _post76690_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76718_))
                                         (let* ((_len76720_ (length _hd76718_))
                                                (_tmp76722_
                                                 (let ((__tmp77984 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77984))))
                                           (let ((__tmp77996
                                                  (cdr _exprs76688_))
                                                 (__tmp77992
                                                  (let ((__tmp77993
                                                         (let ((__tmp77994
                                                                (let ((__tmp77995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76688_)))
                          (declare (not safe))
                          (cons __tmp77995 '()))))
                   (declare (not safe))
                   (cons _tmp76722_ __tmp77994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77993
                                                          _bind76689_)))
                                                 (__tmp77985
                                                  (let ((__tmp77986
                                                         (let ((__tmp77987
                                                                (let ((__tmp77988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77990
                                      (lambda (_id76725_ _k76726_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76725_))
                                            (let ((__tmp77991
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76725_))))
                                              (declare (not safe))
                                              (cons __tmp77991 _k76726_))
                                            '#f)))
                                     (__tmp77989
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76720_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77990
                                  _hd76718_
                                  __tmp77989))))
                          (declare (not safe))
                          (cons _len76720_ __tmp77988))))
                   (declare (not safe))
                   (cons _tmp76722_ __tmp77987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77986
                                                          _post76690_))))
                                             (declare (not safe))
                                             (_lp76685_
                                              _rest76717_
                                              __tmp77996
                                              __tmp77992
                                              __tmp77985)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76582_
                                            _hd76718_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7669176705_))
                              (let ((_tl7670176751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7669176705_)))
                                    (_hd7670076749_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7669176705_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7670076749_))
                                    (let ((_tl7670376756_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7670076749_)))
                                          (_hd7670276754_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7670076749_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7670376756_))
                                          (let ((_id76759_ _hd7670276754_)
                                                (_rest76761_ _tl7670176751_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7669976746_
                                               _rest76761_
                                               _id76759_)))
                                          (let ((_hd76736_ _hd7670076749_)
                                                (_rest76738_ _tl7670176751_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7669676728_
                                               _rest76738_
                                               _hd76736_)))))
                                    (let ((_hd76736_ _hd7670076749_)
                                          (_rest76738_ _tl7670176751_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7669676728_
                                         _rest76738_
                                         _hd76736_)))))
                              (let ()
                                (declare (not safe))
                                (_else7669476713_))))))))
                 (_compile-post76586_
                  (lambda (_post76588_ _body76589_)
                    (let _lp76591_ ((_rest76593_ _post76588_)
                                    (_check76594_ '())
                                    (_bind76595_ '()))
                      (let* ((_rest7659676608_ _rest76593_)
                             (_else7659876616_
                              (lambda ()
                                (let ((__tmp78005
                                       (let ((__tmp78006
                                              (let ((__tmp78007
                                                     (let ((__tmp78008
                                                            (let ((__tmp78009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78010
                                  (let ((__tmp78011
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76589_ '()))))
                                    (declare (not safe))
                                    (cons _bind76595_ __tmp78011))))
                             (declare (not safe))
                             (cons 'let __tmp78010))))
                      (declare (not safe))
                      (__SRC__% __tmp78009 _stx76582_))))
               (declare (not safe))
               (cons __tmp78008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78007
                                                        _check76594_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78006))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78005 _stx76582_))))
                             (_K7660076655_
                              (lambda (_rest76619_
                                       _init76620_
                                       _len76621_
                                       _tmp76622_)
                                (let ((__tmp78019
                                       (let ((__tmp78020
                                              (let ((__tmp78021
                                                     (let ((__tmp78022
                                                            (let ((__tmp78023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76621_ '()))))
                      (declare (not safe))
                      (cons _tmp76622_ __tmp78023))))
               (declare (not safe))
               (cons '__check-values __tmp78022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78021
                                                 _stx76582_))))
                                         (declare (not safe))
                                         (cons __tmp78020 _check76594_)))
                                      (__tmp78012
                                       (let ((__tmp78013
                                              (lambda (_hd76624_ _r76625_)
                                                (let* ((_hd7662676633_
                                                        _hd76624_)
                                                       (_E7662876637_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7662676633_))))
               (_K7662976643_
                (lambda (_k76640_ _id76641_)
                  (let ((__tmp78014
                         (let ((__tmp78015
                                (let ((__tmp78016
                                       (let ((__tmp78017
                                              (let ((__tmp78018
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k76640_ '()))))
                                                (declare (not safe))
                                                (cons _tmp76622_ __tmp78018))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp78017))))
                                  (declare (not safe))
                                  (cons __tmp78016 '()))))
                           (declare (not safe))
                           (cons _id76641_ __tmp78015))))
                    (declare (not safe))
                    (cons __tmp78014 _r76625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7662676633_))
                                                      (let ((_hd7663076646_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7662676633_)))
                    (_tl7663176648_
                     (let () (declare (not safe)) (##cdr _hd7662676633_))))
                (let* ((_id76651_ _hd7663076646_) (_k76653_ _tl7663176648_))
                  (declare (not safe))
                  (_K7662976643_ _k76653_ _id76651_)))
              (let () (declare (not safe)) (_E7662876637_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78013
                                                 _bind76595_
                                                 _init76620_))))
                                  (declare (not safe))
                                  (_lp76591_
                                   _rest76619_
                                   __tmp78019
                                   __tmp78012)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7659676608_))
                            (let ((_hd7660176658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7659676608_)))
                                  (_tl7660276660_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7659676608_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7660176658_))
                                  (let ((_hd7660376663_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7660176658_)))
                                        (_tl7660476665_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7660176658_))))
                                    (let ((_tmp76668_ _hd7660376663_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7660476665_))
                                          (let ((_hd7660576670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7660476665_)))
                                                (_tl7660676672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7660476665_))))
                                            (let* ((_len76675_ _hd7660576670_)
                                                   (_init76677_ _tl7660676672_)
                                                   (_rest76679_
                                                    _tl7660276660_))
                                              (declare (not safe))
                                              (_K7660076655_
                                               _rest76679_
                                               _init76677_
                                               _len76675_
                                               _tmp76668_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7659876616_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7659876616_))))
                            (let ()
                              (declare (not safe))
                              (_else7659876616_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76582_
             _compile-simple76584_
             _compile-values76585_)))))
    (define __compile-letrec-values%
      (lambda (_stx76382_)
        (letrec ((_compile-simple76384_
                  (lambda (_hd-ids76578_ _exprs76579_ _body76580_)
                    (let ((__tmp78024
                           (let ((__tmp78025
                                  (let ((__tmp78027
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76578_)
                                              _exprs76579_))
                                        (__tmp78026
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76580_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78027 __tmp78026))))
                             (declare (not safe))
                             (cons 'letrec __tmp78025))))
                      (declare (not safe))
                      (__SRC__% __tmp78024 _stx76382_))))
                 (_compile-values76385_
                  (lambda (_hd-ids76492_ _exprs76493_ _body76494_)
                    (let _lp76496_ ((_rest76498_ _hd-ids76492_)
                                    (_exprs76499_ _exprs76493_)
                                    (_pre76500_ '())
                                    (_bind76501_ '())
                                    (_post76502_ '()))
                      (let* ((_rest7650376517_ _rest76498_)
                             (_else7650676525_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner76386_
                                   _pre76500_
                                   _bind76501_
                                   _post76502_
                                   _body76494_)))))
                        (let ((_K7651176561_
                               (lambda (_rest76558_ _id76559_)
                                 (let ((__tmp78033 (cdr _exprs76499_))
                                       (__tmp78028
                                        (let ((__tmp78029
                                               (let ((__tmp78032
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76559_)))
                                                     (__tmp78030
                                                      (let ((__tmp78031
                                                             (car _exprs76499_)))
                                                        (declare (not safe))
                                                        (cons __tmp78031
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp78032
                                                       __tmp78030))))
                                          (declare (not safe))
                                          (cons __tmp78029 _bind76501_))))
                                   (declare (not safe))
                                   (_lp76496_
                                    _rest76558_
                                    __tmp78033
                                    _pre76500_
                                    __tmp78028
                                    _post76502_))))
                              (_K7650876543_
                               (lambda (_rest76529_ _hd76530_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76530_))
                                     (let ((__tmp78061 (cdr _exprs76499_))
                                           (__tmp78054
                                            (let ((__tmp78055
                                                   (let ((__tmp78060
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76530_)))
                                                         (__tmp78056
                                                          (let ((__tmp78057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78058
                                (let ((__tmp78059 (car _exprs76499_)))
                                  (declare (not safe))
                                  (cons __tmp78059 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78058))))
                    (declare (not safe))
                    (cons __tmp78057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78060
                                                           __tmp78056))))
                                              (declare (not safe))
                                              (cons __tmp78055 _bind76501_))))
                                       (declare (not safe))
                                       (_lp76496_
                                        _rest76529_
                                        __tmp78061
                                        _pre76500_
                                        __tmp78054
                                        _post76502_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76530_))
                                         (let* ((_len76532_ (length _hd76530_))
                                                (_tmp76534_
                                                 (let ((__tmp78034 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp78034))))
                                           (let ((__tmp78053
                                                  (cdr _exprs76499_))
                                                 (__tmp78046
                                                  (let ((__tmp78047
                                                         (lambda (_id76537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76538_)
                   (if (let () (declare (not safe)) (__AST-e _id76537_))
                       (let ((__tmp78048
                              (let ((__tmp78052
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id76537_)))
                                    (__tmp78049
                                     (let ((__tmp78050
                                            (let ((__tmp78051
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp78051))))
                                       (declare (not safe))
                                       (cons __tmp78050 '()))))
                                (declare (not safe))
                                (cons __tmp78052 __tmp78049))))
                         (declare (not safe))
                         (cons __tmp78048 _r76538_))
                       _r76538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp78047
                                                            _pre76500_
                                                            _hd76530_)))
                                                 (__tmp78042
                                                  (let ((__tmp78043
                                                         (let ((__tmp78044
                                                                (let ((__tmp78045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76499_)))
                          (declare (not safe))
                          (cons __tmp78045 '()))))
                   (declare (not safe))
                   (cons _tmp76534_ __tmp78044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78043
                                                          _bind76501_)))
                                                 (__tmp78035
                                                  (let ((__tmp78036
                                                         (let ((__tmp78037
                                                                (let ((__tmp78038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78040
                                      (lambda (_id76540_ _k76541_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76540_))
                                            (let ((__tmp78041
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76540_))))
                                              (declare (not safe))
                                              (cons __tmp78041 _k76541_))
                                            '#f)))
                                     (__tmp78039
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76532_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp78040
                                  _hd76530_
                                  __tmp78039))))
                          (declare (not safe))
                          (cons _len76532_ __tmp78038))))
                   (declare (not safe))
                   (cons _tmp76534_ __tmp78037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78036
                                                          _post76502_))))
                                             (declare (not safe))
                                             (_lp76496_
                                              _rest76529_
                                              __tmp78053
                                              __tmp78046
                                              __tmp78042
                                              __tmp78035)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76382_
                                            _hd76530_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7650376517_))
                              (let ((_tl7651376566_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7650376517_)))
                                    (_hd7651276564_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7650376517_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7651276564_))
                                    (let ((_tl7651576571_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7651276564_)))
                                          (_hd7651476569_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7651276564_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7651576571_))
                                          (let ((_id76574_ _hd7651476569_)
                                                (_rest76576_ _tl7651376566_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7651176561_
                                               _rest76576_
                                               _id76574_)))
                                          (let ((_hd76551_ _hd7651276564_)
                                                (_rest76553_ _tl7651376566_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7650876543_
                                               _rest76553_
                                               _hd76551_)))))
                                    (let ((_hd76551_ _hd7651276564_)
                                          (_rest76553_ _tl7651376566_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7650876543_
                                         _rest76553_
                                         _hd76551_)))))
                              (let ()
                                (declare (not safe))
                                (_else7650676525_))))))))
                 (_compile-inner76386_
                  (lambda (_pre76487_ _bind76488_ _post76489_ _body76490_)
                    (if (let () (declare (not safe)) (null? _pre76487_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind76387_
                           _bind76488_
                           _post76489_
                           _body76490_))
                        (let ((__tmp78062
                               (let ((__tmp78063
                                      (let ((__tmp78066 (reverse _pre76487_))
                                            (__tmp78064
                                             (let ((__tmp78065
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind76387_
                                                       _bind76488_
                                                       _post76489_
                                                       _body76490_))))
                                               (declare (not safe))
                                               (cons __tmp78065 '()))))
                                        (declare (not safe))
                                        (cons __tmp78066 __tmp78064))))
                                 (declare (not safe))
                                 (cons 'let __tmp78063))))
                          (declare (not safe))
                          (__SRC__% __tmp78062 _stx76382_)))))
                 (_compile-bind76387_
                  (lambda (_bind76483_ _post76484_ _body76485_)
                    (let ((__tmp78067
                           (let ((__tmp78068
                                  (let ((__tmp78071 (reverse _bind76483_))
                                        (__tmp78069
                                         (let ((__tmp78070
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76388_
                                                   _post76484_
                                                   _body76485_))))
                                           (declare (not safe))
                                           (cons __tmp78070 '()))))
                                    (declare (not safe))
                                    (cons __tmp78071 __tmp78069))))
                             (declare (not safe))
                             (cons 'letrec __tmp78068))))
                      (declare (not safe))
                      (__SRC__% __tmp78067 _stx76382_))))
                 (_compile-post76388_
                  (lambda (_post76390_ _body76391_)
                    (let _lp76393_ ((_rest76395_ _post76390_)
                                    (_check76396_ '())
                                    (_bind76397_ '()))
                      (let* ((_rest7639876410_ _rest76395_)
                             (_else7640076418_
                              (lambda ()
                                (let ((__tmp78072
                                       (let ((__tmp78073
                                              (let ((__tmp78074
                                                     (let ((__tmp78075
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body76391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp78075 _bind76397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78074
                                                        _check76396_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78073))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78072 _stx76382_))))
                             (_K7640276457_
                              (lambda (_rest76421_
                                       _init76422_
                                       _len76423_
                                       _tmp76424_)
                                (let ((__tmp78084
                                       (let ((__tmp78085
                                              (let ((__tmp78086
                                                     (let ((__tmp78087
                                                            (let ((__tmp78088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76423_ '()))))
                      (declare (not safe))
                      (cons _tmp76424_ __tmp78088))))
               (declare (not safe))
               (cons '__check-values __tmp78087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78086
                                                 _stx76382_))))
                                         (declare (not safe))
                                         (cons __tmp78085 _check76396_)))
                                      (__tmp78076
                                       (let ((__tmp78077
                                              (lambda (_hd76426_ _r76427_)
                                                (let* ((_hd7642876435_
                                                        _hd76426_)
                                                       (_E7643076439_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7642876435_))))
               (_K7643176445_
                (lambda (_k76442_ _id76443_)
                  (let ((__tmp78078
                         (let ((__tmp78079
                                (let ((__tmp78080
                                       (let ((__tmp78081
                                              (let ((__tmp78082
                                                     (let ((__tmp78083
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k76442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp76424_ __tmp78083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp78082))))
                                         (declare (not safe))
                                         (cons __tmp78081 '()))))
                                  (declare (not safe))
                                  (cons _id76443_ __tmp78080))))
                           (declare (not safe))
                           (cons 'set! __tmp78079))))
                    (declare (not safe))
                    (cons __tmp78078 _r76427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7642876435_))
                                                      (let ((_hd7643276448_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7642876435_)))
                    (_tl7643376450_
                     (let () (declare (not safe)) (##cdr _hd7642876435_))))
                (let* ((_id76453_ _hd7643276448_) (_k76455_ _tl7643376450_))
                  (declare (not safe))
                  (_K7643176445_ _k76455_ _id76453_)))
              (let () (declare (not safe)) (_E7643076439_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78077
                                                 _bind76397_
                                                 _init76422_))))
                                  (declare (not safe))
                                  (_lp76393_
                                   _rest76421_
                                   __tmp78084
                                   __tmp78076)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7639876410_))
                            (let ((_hd7640376460_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7639876410_)))
                                  (_tl7640476462_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7639876410_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7640376460_))
                                  (let ((_hd7640576465_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7640376460_)))
                                        (_tl7640676467_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7640376460_))))
                                    (let ((_tmp76470_ _hd7640576465_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7640676467_))
                                          (let ((_hd7640776472_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7640676467_)))
                                                (_tl7640876474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7640676467_))))
                                            (let* ((_len76477_ _hd7640776472_)
                                                   (_init76479_ _tl7640876474_)
                                                   (_rest76481_
                                                    _tl7640476462_))
                                              (declare (not safe))
                                              (_K7640276457_
                                               _rest76481_
                                               _init76479_
                                               _len76477_
                                               _tmp76470_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7640076418_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7640076418_))))
                            (let ()
                              (declare (not safe))
                              (_else7640076418_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76382_
             _compile-simple76384_
             _compile-values76385_)))))
    (define __compile-letrec*-values%
      (lambda (_stx76137_)
        (letrec ((_compile-simple76139_
                  (lambda (_hd-ids76378_ _exprs76379_ _body76380_)
                    (let ((__tmp78089
                           (let ((__tmp78090
                                  (let ((__tmp78092
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76378_)
                                              _exprs76379_))
                                        (__tmp78091
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76380_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78092 __tmp78091))))
                             (declare (not safe))
                             (cons 'letrec* __tmp78090))))
                      (declare (not safe))
                      (__SRC__% __tmp78089 _stx76137_))))
                 (_compile-values76140_
                  (lambda (_hd-ids76289_ _exprs76290_ _body76291_)
                    (let _lp76293_ ((_rest76295_ _hd-ids76289_)
                                    (_exprs76296_ _exprs76290_)
                                    (_bind76297_ '())
                                    (_post76298_ '()))
                      (let* ((_rest7629976313_ _rest76295_)
                             (_else7630276321_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind76141_
                                   _bind76297_
                                   _post76298_
                                   _body76291_)))))
                        (let ((_K7630776361_
                               (lambda (_rest76356_ _hd76357_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76357_))
                                     (let ((_id76359_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76357_))))
                                       (let ((__tmp78107 (cdr _exprs76296_))
                                             (__tmp78102
                                              (let ((__tmp78103
                                                     (let ((__tmp78104
                                                            (let ((__tmp78105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78106
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78106))))
                      (declare (not safe))
                      (cons __tmp78105 '()))))
               (declare (not safe))
               (cons _id76359_ __tmp78104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78103 _bind76297_)))
                                             (__tmp78098
                                              (let ((__tmp78099
                                                     (let ((__tmp78100
                                                            (let ((__tmp78101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs76296_)))
                      (declare (not safe))
                      (cons __tmp78101 '()))))
               (declare (not safe))
               (cons _id76359_ __tmp78100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78099
                                                      _post76298_))))
                                         (declare (not safe))
                                         (_lp76293_
                                          _rest76356_
                                          __tmp78107
                                          __tmp78102
                                          __tmp78098)))
                                     (let ((__tmp78097 (cdr _exprs76296_))
                                           (__tmp78093
                                            (let ((__tmp78094
                                                   (let ((__tmp78095
                                                          (let ((__tmp78096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs76296_)))
                    (declare (not safe))
                    (cons __tmp78096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp78095))))
                                              (declare (not safe))
                                              (cons __tmp78094 _post76298_))))
                                       (declare (not safe))
                                       (_lp76293_
                                        _rest76356_
                                        __tmp78097
                                        _bind76297_
                                        __tmp78093)))))
                              (_K7630476341_
                               (lambda (_rest76325_ _hd76326_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76326_))
                                     (let ((_id76328_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76326_))))
                                       (let ((__tmp78143 (cdr _exprs76296_))
                                             (__tmp78138
                                              (let ((__tmp78139
                                                     (let ((__tmp78140
                                                            (let ((__tmp78141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78142
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78142))))
                      (declare (not safe))
                      (cons __tmp78141 '()))))
               (declare (not safe))
               (cons _id76328_ __tmp78140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78139 _bind76297_)))
                                             (__tmp78132
                                              (let ((__tmp78133
                                                     (let ((__tmp78134
                                                            (let ((__tmp78135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78136
                                  (let ((__tmp78137 (car _exprs76296_)))
                                    (declare (not safe))
                                    (cons __tmp78137 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp78136))))
                      (declare (not safe))
                      (cons __tmp78135 '()))))
               (declare (not safe))
               (cons _id76328_ __tmp78134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78133
                                                      _post76298_))))
                                         (declare (not safe))
                                         (_lp76293_
                                          _rest76325_
                                          __tmp78143
                                          __tmp78138
                                          __tmp78132)))
                                     (if (let ((__tmp78131
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd76326_))))
                                           (declare (not safe))
                                           (not __tmp78131))
                                         (let ((__tmp78130 (cdr _exprs76296_))
                                               (__tmp78126
                                                (let ((__tmp78127
                                                       (let ((__tmp78128
                                                              (let ((__tmp78129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs76296_)))
                        (declare (not safe))
                        (cons __tmp78129 '()))))
                 (declare (not safe))
                 (cons '#f __tmp78128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78127
                                                        _post76298_))))
                                           (declare (not safe))
                                           (_lp76293_
                                            _rest76325_
                                            __tmp78130
                                            _bind76297_
                                            __tmp78126))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd76326_))
                                             (let* ((_len76330_
                                                     (length _hd76326_))
                                                    (_tmp76332_
                                                     (let ((__tmp78108
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp78108))))
                                               (let ((__tmp78125
                                                      (cdr _exprs76296_))
                                                     (__tmp78118
                                                      (let ((__tmp78119
                                                             (lambda (_id76335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r76336_)
                       (if (let () (declare (not safe)) (__AST-e _id76335_))
                           (let ((__tmp78120
                                  (let ((__tmp78124
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76335_)))
                                        (__tmp78121
                                         (let ((__tmp78122
                                                (let ((__tmp78123
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp78123))))
                                           (declare (not safe))
                                           (cons __tmp78122 '()))))
                                    (declare (not safe))
                                    (cons __tmp78124 __tmp78121))))
                             (declare (not safe))
                             (cons __tmp78120 _r76336_))
                           _r76336_))))
                (declare (not safe))
                (foldl1 __tmp78119 _bind76297_ _hd76326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp78109
                                                      (let ((__tmp78110
                                                             (let ((__tmp78111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78117 (car _exprs76296_))
                                  (__tmp78112
                                   (let ((__tmp78113
                                          (let ((__tmp78115
                                                 (lambda (_id76338_ _k76339_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id76338_))
                                                       (let ((__tmp78116
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id76338_))))
                 (declare (not safe))
                 (cons __tmp78116 _k76339_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp78114
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len76330_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp78115
                                             _hd76326_
                                             __tmp78114))))
                                     (declare (not safe))
                                     (cons _len76330_ __tmp78113))))
                              (declare (not safe))
                              (cons __tmp78117 __tmp78112))))
                       (declare (not safe))
                       (cons _tmp76332_ __tmp78111))))
                (declare (not safe))
                (cons __tmp78110 _post76298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp76293_
                                                  _rest76325_
                                                  __tmp78125
                                                  __tmp78118
                                                  __tmp78109)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx76137_
                                                _hd76326_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7629976313_))
                              (let ((_tl7630976366_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7629976313_)))
                                    (_hd7630876364_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7629976313_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7630876364_))
                                    (let ((_tl7631176371_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7630876364_)))
                                          (_hd7631076369_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7630876364_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7631176371_))
                                          (let ((_hd76374_ _hd7631076369_)
                                                (_rest76376_ _tl7630976366_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7630776361_
                                               _rest76376_
                                               _hd76374_)))
                                          (let ((_hd76349_ _hd7630876364_)
                                                (_rest76351_ _tl7630976366_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7630476341_
                                               _rest76351_
                                               _hd76349_)))))
                                    (let ((_hd76349_ _hd7630876364_)
                                          (_rest76351_ _tl7630976366_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7630476341_
                                         _rest76351_
                                         _hd76349_)))))
                              (let ()
                                (declare (not safe))
                                (_else7630276321_))))))))
                 (_compile-bind76141_
                  (lambda (_bind76285_ _post76286_ _body76287_)
                    (let ((__tmp78144
                           (let ((__tmp78145
                                  (let ((__tmp78148 (reverse _bind76285_))
                                        (__tmp78146
                                         (let ((__tmp78147
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76142_
                                                   _post76286_
                                                   _body76287_))))
                                           (declare (not safe))
                                           (cons __tmp78147 '()))))
                                    (declare (not safe))
                                    (cons __tmp78148 __tmp78146))))
                             (declare (not safe))
                             (cons 'let __tmp78145))))
                      (declare (not safe))
                      (__SRC__% __tmp78144 _stx76137_))))
                 (_compile-post76142_
                  (lambda (_post76144_ _body76145_)
                    (let ((__tmp78149
                           (let ((__tmp78150
                                  (let ((__tmp78151
                                         (let ((__tmp78153
                                                (lambda (_hd76147_ _r76148_)
                                                  (let* ((_hd7614976172_
                                                          _hd76147_)
                                                         (_E7615376176_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7614976172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7616676270_
                                                           (lambda (_expr76268_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr76268_ _r76148_))))
                  (_K7616176248_
                   (lambda (_expr76245_ _id76246_)
                     (let ((__tmp78154
                            (let ((__tmp78155
                                   (let ((__tmp78156
                                          (let ((__tmp78157
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr76245_ '()))))
                                            (declare (not safe))
                                            (cons _id76246_ __tmp78157))))
                                     (declare (not safe))
                                     (cons 'set! __tmp78156))))
                              (declare (not safe))
                              (__SRC__% __tmp78155 _stx76137_))))
                       (declare (not safe))
                       (cons __tmp78154 _r76148_))))
                  (_K7615476215_
                   (lambda (_init76180_ _len76181_ _expr76182_ _tmp76183_)
                     (let ((__tmp78158
                            (let ((__tmp78159
                                   (let ((__tmp78160
                                          (let ((__tmp78174
                                                 (let ((__tmp78175
                                                        (let ((__tmp78176
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr76182_ '()))))
                  (declare (not safe))
                  (cons _tmp76183_ __tmp78176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78175 '())))
                                                (__tmp78161
                                                 (let ((__tmp78170
                                                        (let ((__tmp78171
                                                               (let ((__tmp78172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp78173
                                     (let ()
                                       (declare (not safe))
                                       (cons _len76181_ '()))))
                                (declare (not safe))
                                (cons _tmp76183_ __tmp78173))))
                         (declare (not safe))
                         (cons '__check-values __tmp78172))))
                  (declare (not safe))
                  (__SRC__% __tmp78171 _stx76137_)))
               (__tmp78162
                (let ((__tmp78163
                       (map (lambda (_hd76185_)
                              (let* ((_hd7618676193_ _hd76185_)
                                     (_E7618876197_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7618676193_))))
                                     (_K7618976203_
                                      (lambda (_k76200_ _id76201_)
                                        (let ((__tmp78164
                                               (let ((__tmp78165
                                                      (let ((__tmp78166
                                                             (let ((__tmp78167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78168
                                   (let ((__tmp78169
                                          (let ()
                                            (declare (not safe))
                                            (cons _k76200_ '()))))
                                     (declare (not safe))
                                     (cons _tmp76183_ __tmp78169))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp78168))))
                       (declare (not safe))
                       (cons __tmp78167 '()))))
                (declare (not safe))
                (cons _id76201_ __tmp78166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp78165))))
                                          (declare (not safe))
                                          (__SRC__% __tmp78164 _stx76137_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7618676193_))
                                    (let ((_hd7619076206_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7618676193_)))
                                          (_tl7619176208_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7618676193_))))
                                      (let* ((_id76211_ _hd7619076206_)
                                             (_k76213_ _tl7619176208_))
                                        (declare (not safe))
                                        (_K7618976203_ _k76213_ _id76211_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7618876197_)))))
                            _init76180_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp78163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78170
                                                         __tmp78162))))
                                            (declare (not safe))
                                            (cons __tmp78174 __tmp78161))))
                                     (declare (not safe))
                                     (cons 'let __tmp78160))))
                              (declare (not safe))
                              (__SRC__% __tmp78159 _stx76137_))))
                       (declare (not safe))
                       (cons __tmp78158 _r76148_)))))
              (if (let () (declare (not safe)) (##pair? _hd7614976172_))
                  (let ((_tl7616876275_
                         (let () (declare (not safe)) (##cdr _hd7614976172_)))
                        (_hd7616776273_
                         (let () (declare (not safe)) (##car _hd7614976172_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7616776273_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7616876275_))
                            (let ((_tl7617076280_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7616876275_)))
                                  (_hd7616976278_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7616876275_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7617076280_))
                                  (let ((_expr76283_ _hd7616976278_))
                                    (declare (not safe))
                                    (_K7616676270_ _expr76283_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7617076280_))
                                      (let ((_tl7616076234_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7617076280_)))
                                            (_hd7615976232_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7617076280_))))
                                        (let ((_tmp76223_ _hd7616776273_)
                                              (_expr76230_ _hd7616976278_)
                                              (_len76237_ _hd7615976232_)
                                              (_init76239_ _tl7616076234_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7615476215_
                                             _init76239_
                                             _len76237_
                                             _expr76230_
                                             _tmp76223_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7615376176_)))))
                            (let () (declare (not safe)) (_E7615376176_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7616876275_))
                            (let ((_tl7616576260_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7616876275_)))
                                  (_hd7616476258_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7616876275_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7616576260_))
                                  (let ((_id76256_ _hd7616776273_)
                                        (_expr76263_ _hd7616476258_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7616176248_ _expr76263_ _id76256_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7616576260_))
                                      (let ((_tl7616076234_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7616576260_)))
                                            (_hd7615976232_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7616576260_))))
                                        (let ((_tmp76223_ _hd7616776273_)
                                              (_expr76230_ _hd7616476258_)
                                              (_len76237_ _hd7615976232_)
                                              (_init76239_ _tl7616076234_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7615476215_
                                             _init76239_
                                             _len76237_
                                             _expr76230_
                                             _tmp76223_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7615376176_)))))
                            (let () (declare (not safe)) (_E7615376176_)))))
                  (let () (declare (not safe)) (_E7615376176_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp78152 (list _body76145_)))
                                           (declare (not safe))
                                           (foldl1 __tmp78153
                                                   __tmp78152
                                                   _post76144_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp78151))))
                             (declare (not safe))
                             (cons 'begin __tmp78150))))
                      (declare (not safe))
                      (__SRC__% __tmp78149 _stx76137_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76137_
             _compile-simple76139_
             _compile-values76140_)))))
    (define __compile-call%
      (lambda (_stx76097_)
        (let* ((_$e76099_ _stx76097_)
               (_$E7610176110_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76099_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76099_))
              (let* ((_$tgt7610276113_
                      (let () (declare (not safe)) (__AST-e _$e76099_)))
                     (_$hd7610376116_
                      (let () (declare (not safe)) (##car _$tgt7610276113_)))
                     (_$tl7610476119_
                      (let () (declare (not safe)) (##cdr _$tgt7610276113_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7610476119_))
                    (let* ((_$tgt7610576123_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7610476119_)))
                           (_$hd7610676126_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7610576123_)))
                           (_$tl7610776129_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7610576123_))))
                      (let* ((_rator76133_ _$hd7610676126_)
                             (_rands76135_ _$tl7610776129_)
                             (__tmp78177
                              (let ((__tmp78179
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator76133_)))
                                    (__tmp78178 (map __compile _rands76135_)))
                                (declare (not safe))
                                (cons __tmp78179 __tmp78178))))
                        (declare (not safe))
                        (__SRC__% __tmp78177 _stx76097_)))
                    (let () (declare (not safe)) (_$E7610176110_))))
              (let () (declare (not safe)) (_$E7610176110_))))))
    (define __compile-ref%
      (lambda (_stx76059_)
        (let* ((_$e76061_ _stx76059_)
               (_$E7606376072_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76061_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76061_))
              (let* ((_$tgt7606476075_
                      (let () (declare (not safe)) (__AST-e _$e76061_)))
                     (_$hd7606576078_
                      (let () (declare (not safe)) (##car _$tgt7606476075_)))
                     (_$tl7606676081_
                      (let () (declare (not safe)) (##cdr _$tgt7606476075_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7606676081_))
                    (let* ((_$tgt7606776085_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7606676081_)))
                           (_$hd7606876088_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7606776085_)))
                           (_$tl7606976091_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7606776085_))))
                      (let ((_id76095_ _$hd7606876088_))
                        (if (let ((__tmp78180
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7606976091_))))
                              (declare (not safe))
                              (equal? __tmp78180 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id76095_ _stx76059_))
                            (let () (declare (not safe)) (_$E7606376072_)))))
                    (let () (declare (not safe)) (_$E7606376072_))))
              (let () (declare (not safe)) (_$E7606376072_))))))
    (define __compile-setq%
      (lambda (_stx76006_)
        (let* ((_$e76008_ _stx76006_)
               (_$E7601076022_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76008_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76008_))
              (let* ((_$tgt7601176025_
                      (let () (declare (not safe)) (__AST-e _$e76008_)))
                     (_$hd7601276028_
                      (let () (declare (not safe)) (##car _$tgt7601176025_)))
                     (_$tl7601376031_
                      (let () (declare (not safe)) (##cdr _$tgt7601176025_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7601376031_))
                    (let* ((_$tgt7601476035_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7601376031_)))
                           (_$hd7601576038_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7601476035_)))
                           (_$tl7601676041_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7601476035_))))
                      (let ((_id76045_ _$hd7601576038_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7601676041_))
                            (let* ((_$tgt7601776047_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7601676041_)))
                                   (_$hd7601876050_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7601776047_)))
                                   (_$tl7601976053_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7601776047_))))
                              (let ((_expr76057_ _$hd7601876050_))
                                (if (let ((__tmp78186
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7601976053_))))
                                      (declare (not safe))
                                      (equal? __tmp78186 '()))
                                    (let ((__tmp78181
                                           (let ((__tmp78182
                                                  (let ((__tmp78185
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id76045_
                                                            _stx76006_)))
                                                        (__tmp78183
                                                         (let ((__tmp78184
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr76057_))))
                   (declare (not safe))
                   (cons __tmp78184 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78185
                                                          __tmp78183))))
                                             (declare (not safe))
                                             (cons 'set! __tmp78182))))
                                      (declare (not safe))
                                      (__SRC__% __tmp78181 _stx76006_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7601076022_)))))
                            (let () (declare (not safe)) (_$E7601076022_)))))
                    (let () (declare (not safe)) (_$E7601076022_))))
              (let () (declare (not safe)) (_$E7601076022_))))))
    (define __compile-if%
      (lambda (_stx75938_)
        (let* ((_$e75940_ _stx75938_)
               (_$E7594275957_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75940_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75940_))
              (let* ((_$tgt7594375960_
                      (let () (declare (not safe)) (__AST-e _$e75940_)))
                     (_$hd7594475963_
                      (let () (declare (not safe)) (##car _$tgt7594375960_)))
                     (_$tl7594575966_
                      (let () (declare (not safe)) (##cdr _$tgt7594375960_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7594575966_))
                    (let* ((_$tgt7594675970_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7594575966_)))
                           (_$hd7594775973_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7594675970_)))
                           (_$tl7594875976_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7594675970_))))
                      (let ((_p75980_ _$hd7594775973_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7594875976_))
                            (let* ((_$tgt7594975982_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7594875976_)))
                                   (_$hd7595075985_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7594975982_)))
                                   (_$tl7595175988_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7594975982_))))
                              (let ((_t75992_ _$hd7595075985_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7595175988_))
                                    (let* ((_$tgt7595275994_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7595175988_)))
                                           (_$hd7595375997_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7595275994_)))
                                           (_$tl7595476000_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7595275994_))))
                                      (let ((_f76004_ _$hd7595375997_))
                                        (if (let ((__tmp78194
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7595476000_))))
                                              (declare (not safe))
                                              (equal? __tmp78194 '()))
                                            (let ((__tmp78187
                                                   (let ((__tmp78188
                                                          (let ((__tmp78193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p75980_)))
                        (__tmp78189
                         (let ((__tmp78192
                                (let ()
                                  (declare (not safe))
                                  (__compile _t75992_)))
                               (__tmp78190
                                (let ((__tmp78191
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f76004_))))
                                  (declare (not safe))
                                  (cons __tmp78191 '()))))
                           (declare (not safe))
                           (cons __tmp78192 __tmp78190))))
                    (declare (not safe))
                    (cons __tmp78193 __tmp78189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp78188))))
                                              (declare (not safe))
                                              (__SRC__% __tmp78187 _stx75938_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7594275957_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7594275957_)))))
                            (let () (declare (not safe)) (_$E7594275957_)))))
                    (let () (declare (not safe)) (_$E7594275957_))))
              (let () (declare (not safe)) (_$E7594275957_))))))
    (define __compile-quote%
      (lambda (_stx75900_)
        (let* ((_$e75902_ _stx75900_)
               (_$E7590475913_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75902_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75902_))
              (let* ((_$tgt7590575916_
                      (let () (declare (not safe)) (__AST-e _$e75902_)))
                     (_$hd7590675919_
                      (let () (declare (not safe)) (##car _$tgt7590575916_)))
                     (_$tl7590775922_
                      (let () (declare (not safe)) (##cdr _$tgt7590575916_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7590775922_))
                    (let* ((_$tgt7590875926_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7590775922_)))
                           (_$hd7590975929_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7590875926_)))
                           (_$tl7591075932_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7590875926_))))
                      (let ((_e75936_ _$hd7590975929_))
                        (if (let ((__tmp78198
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7591075932_))))
                              (declare (not safe))
                              (equal? __tmp78198 '()))
                            (let ((__tmp78195
                                   (let ((__tmp78196
                                          (let ((__tmp78197
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e75936_))))
                                            (declare (not safe))
                                            (cons __tmp78197 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78196))))
                              (declare (not safe))
                              (__SRC__% __tmp78195 _stx75900_))
                            (let () (declare (not safe)) (_$E7590475913_)))))
                    (let () (declare (not safe)) (_$E7590475913_))))
              (let () (declare (not safe)) (_$E7590475913_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75862_)
        (let* ((_$e75864_ _stx75862_)
               (_$E7586675875_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75864_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75864_))
              (let* ((_$tgt7586775878_
                      (let () (declare (not safe)) (__AST-e _$e75864_)))
                     (_$hd7586875881_
                      (let () (declare (not safe)) (##car _$tgt7586775878_)))
                     (_$tl7586975884_
                      (let () (declare (not safe)) (##cdr _$tgt7586775878_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7586975884_))
                    (let* ((_$tgt7587075888_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7586975884_)))
                           (_$hd7587175891_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7587075888_)))
                           (_$tl7587275894_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7587075888_))))
                      (let ((_e75898_ _$hd7587175891_))
                        (if (let ((__tmp78201
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7587275894_))))
                              (declare (not safe))
                              (equal? __tmp78201 '()))
                            (let ((__tmp78199
                                   (let ((__tmp78200
                                          (let ()
                                            (declare (not safe))
                                            (cons _e75898_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78200))))
                              (declare (not safe))
                              (__SRC__% __tmp78199 _stx75862_))
                            (let () (declare (not safe)) (_$E7586675875_)))))
                    (let () (declare (not safe)) (_$E7586675875_))))
              (let () (declare (not safe)) (_$E7586675875_))))))
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
