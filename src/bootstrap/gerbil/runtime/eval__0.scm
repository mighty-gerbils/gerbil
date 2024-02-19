(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708337964)
  (begin
    (define __syntax::t
      (let ((__tmp125886 (list))
            (__tmp125884
             (let ((__tmp125885
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125885 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp125886
         '(e id)
         __tmp125884
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args121709_ (apply make-instance __syntax::t _$args121709_)))
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
      (let ((__tmp125889 (list __syntax::t))
            (__tmp125887
             (let ((__tmp125888
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125888 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp125889
         '()
         __tmp125887
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args121706_
        (apply make-instance __core-form::t _$args121706_)))
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
      (let ((__tmp125892 (list __core-form::t))
            (__tmp125890
             (let ((__tmp125891
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125891 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp125892
         '()
         __tmp125890
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args121703_
        (apply make-instance __core-expression::t _$args121703_)))
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
      (let ((__tmp125895 (list __core-form::t))
            (__tmp125893
             (let ((__tmp125894
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125894 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp125895
         '()
         __tmp125893
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args121700_
        (apply make-instance __core-special-form::t _$args121700_)))
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
      (lambda (_id121698_)
        (let ((__tmp125896 (let () (declare (not safe)) (__AST-e _id121698_))))
          (declare (not safe))
          (hash-get __core __tmp125896))))
    (define __core-bound-id?__%
      (lambda (_id121682_ _is?121683_)
        (let ((_$e121685_
               (let () (declare (not safe)) (__core-resolve _id121682_))))
          (if _$e121685_ (_is?121683_ _$e121685_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id121691_)
        (let ((_is?121693_ true))
          (declare (not safe))
          (__core-bound-id?__% _id121691_ _is?121693_))))
    (define __core-bound-id?
      (lambda _g125898_
        (let ((_g125897_ (let () (declare (not safe)) (##length _g125898_))))
          (cond ((let () (declare (not safe)) (##fx= _g125897_ 1))
                 (apply (lambda (_id121691_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id121691_)))
                        _g125898_))
                ((let () (declare (not safe)) (##fx= _g125897_ 2))
                 (apply (lambda (_id121695_ _is?121696_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id121695_ _is?121696_)))
                        _g125898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g125898_))))))
    (define __core-bind-syntax!__%
      (lambda (_id121665_ _e121666_ _make121667_)
        (let ((__tmp125899
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e121666_
                      'gerbil/runtime/eval#__syntax::t))
                   _e121666_
                   (_make121667_ _e121666_ _id121665_))))
          (declare (not safe))
          (hash-put! __core _id121665_ __tmp125899))))
    (define __core-bind-syntax!__0
      (lambda (_id121672_ _e121673_)
        (let ((_make121675_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id121672_ _e121673_ _make121675_))))
    (define __core-bind-syntax!
      (lambda _g125901_
        (let ((_g125900_ (let () (declare (not safe)) (##length _g125901_))))
          (cond ((let () (declare (not safe)) (##fx= _g125900_ 2))
                 (apply (lambda (_id121672_ _e121673_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id121672_ _e121673_)))
                        _g125901_))
                ((let () (declare (not safe)) (##fx= _g125900_ 3))
                 (apply (lambda (_id121677_ _e121678_ _make121679_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id121677_
                             _e121678_
                             _make121679_)))
                        _g125901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g125901_))))))
    (define __SRC__%
      (lambda (_e121648_ _src-stx121649_)
        (if (or (let () (declare (not safe)) (pair? _e121648_))
                (let () (declare (not safe)) (symbol? _e121648_)))
            (let ((__tmp125905
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx121649_
                          'gerbil#AST::t))
                       (let ((__tmp125906
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx121649_))))
                         (declare (not safe))
                         (__locat __tmp125906))
                       '#f)))
              (declare (not safe))
              (##make-source _e121648_ __tmp125905))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e121648_ 'gerbil#AST::t))
                (let ((__tmp125904
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e121648_ '1 AST::t '#f)))
                      (__tmp125902
                       (let ((__tmp125903
                              (let ()
                                (declare (not safe))
                                (__AST-source _e121648_))))
                         (declare (not safe))
                         (__locat __tmp125903))))
                  (declare (not safe))
                  (##make-source __tmp125904 __tmp125902))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e121648_))))))
    (define __SRC__0
      (lambda (_e121657_)
        (let ((_src-stx121659_ '#f))
          (declare (not safe))
          (__SRC__% _e121657_ _src-stx121659_))))
    (define __SRC
      (lambda _g125908_
        (let ((_g125907_ (let () (declare (not safe)) (##length _g125908_))))
          (cond ((let () (declare (not safe)) (##fx= _g125907_ 1))
                 (apply (lambda (_e121657_)
                          (let () (declare (not safe)) (__SRC__0 _e121657_)))
                        _g125908_))
                ((let () (declare (not safe)) (##fx= _g125907_ 2))
                 (apply (lambda (_e121661_ _src-stx121662_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e121661_ _src-stx121662_)))
                        _g125908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g125908_))))))
    (define __locat
      (lambda (_loc121645_)
        (if (let () (declare (not safe)) (##locat? _loc121645_))
            _loc121645_
            '#f)))
    (define __check-values
      (lambda (_obj121640_ _k121641_)
        (let ((_count121643_
               (if (let () (declare (not safe)) (##values? _obj121640_))
                   (let () (declare (not safe)) (##vector-length _obj121640_))
                   '1)))
          (if (fx= _count121643_ _k121641_)
              '#!void
              (let ((__tmp125910
                     (if (fx< _count121643_ _k121641_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp125909
                     (if (let () (declare (not safe)) (##values? _obj121640_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj121640_))
                         _obj121640_)))
                (declare (not safe))
                (error __tmp125910 __tmp125909 _k121641_))))))
    (define __compile
      (lambda (_stx121610_)
        (let* ((_$e121612_ _stx121610_)
               (_$E121614121620_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121612_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121612_))
              (let* ((_$tgt121615121623_
                      (let () (declare (not safe)) (__AST-e _$e121612_)))
                     (_$hd121616121626_
                      (let () (declare (not safe)) (##car _$tgt121615121623_)))
                     (_$tl121617121629_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121615121623_))))
                (let* ((_form121633_ _$hd121616121626_)
                       (_$e121635_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form121633_))))
                  (if _$e121635_
                      ((lambda (_bind121638_)
                         ((##structure-ref _bind121638_ '1 __syntax::t '#f)
                          _stx121610_))
                       _$e121635_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx121610_
                         _form121633_)))))
              (let () (declare (not safe)) (_$E121614121620_))))))
    (define __compile-error__%
      (lambda (_stx121597_ _detail121598_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx121597_
           _detail121598_))))
    (define __compile-error__0
      (lambda (_stx121603_)
        (let ((_detail121605_ '#f))
          (declare (not safe))
          (__compile-error__% _stx121603_ _detail121605_))))
    (define __compile-error
      (lambda _g125912_
        (let ((_g125911_ (let () (declare (not safe)) (##length _g125912_))))
          (cond ((let () (declare (not safe)) (##fx= _g125911_ 1))
                 (apply (lambda (_stx121603_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx121603_)))
                        _g125912_))
                ((let () (declare (not safe)) (##fx= _g125911_ 2))
                 (apply (lambda (_stx121607_ _detail121608_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx121607_ _detail121608_)))
                        _g125912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g125912_))))))
    (define __compile-ignore%
      (lambda (_stx121594_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx121594_))))
    (define __compile-begin%
      (lambda (_stx121569_)
        (let* ((_$e121571_ _stx121569_)
               (_$E121573121579_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121571_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121571_))
              (let* ((_$tgt121574121582_
                      (let () (declare (not safe)) (__AST-e _$e121571_)))
                     (_$hd121575121585_
                      (let () (declare (not safe)) (##car _$tgt121574121582_)))
                     (_$tl121576121588_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121574121582_))))
                (let* ((_body121592_ _$tl121576121588_)
                       (__tmp125913
                        (let ((__tmp125914 (map __compile _body121592_)))
                          (declare (not safe))
                          (cons 'begin __tmp125914))))
                  (declare (not safe))
                  (__SRC__% __tmp125913 _stx121569_)))
              (let () (declare (not safe)) (_$E121573121579_))))))
    (define __compile-begin-foreign%
      (lambda (_stx121544_)
        (let* ((_$e121546_ _stx121544_)
               (_$E121548121554_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121546_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121546_))
              (let* ((_$tgt121549121557_
                      (let () (declare (not safe)) (__AST-e _$e121546_)))
                     (_$hd121550121560_
                      (let () (declare (not safe)) (##car _$tgt121549121557_)))
                     (_$tl121551121563_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121549121557_))))
                (let* ((_body121567_ _$tl121551121563_)
                       (__tmp125915
                        (let ((__tmp125916
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body121567_))))
                          (declare (not safe))
                          (cons 'begin __tmp125916))))
                  (declare (not safe))
                  (__SRC__% __tmp125915 _stx121544_)))
              (let () (declare (not safe)) (_$E121548121554_))))))
    (define __compile-import%
      (lambda (_stx121519_)
        (let* ((_$e121521_ _stx121519_)
               (_$E121523121529_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121521_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121521_))
              (let* ((_$tgt121524121532_
                      (let () (declare (not safe)) (__AST-e _$e121521_)))
                     (_$hd121525121535_
                      (let () (declare (not safe)) (##car _$tgt121524121532_)))
                     (_$tl121526121538_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121524121532_))))
                (let* ((_body121542_ _$tl121526121538_)
                       (__tmp125917
                        (let ((__tmp125918
                               (let ((__tmp125919
                                      (let ((__tmp125920
                                             (let ()
                                               (declare (not safe))
                                               (cons _body121542_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp125920))))
                                 (declare (not safe))
                                 (cons __tmp125919 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp125918))))
                  (declare (not safe))
                  (__SRC__% __tmp125917 _stx121519_)))
              (let () (declare (not safe)) (_$E121523121529_))))))
    (define __compile-begin-annotation%
      (lambda (_stx121466_)
        (let* ((_$e121468_ _stx121466_)
               (_$E121470121482_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121468_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121468_))
              (let* ((_$tgt121471121485_
                      (let () (declare (not safe)) (__AST-e _$e121468_)))
                     (_$hd121472121488_
                      (let () (declare (not safe)) (##car _$tgt121471121485_)))
                     (_$tl121473121491_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121471121485_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121473121491_))
                    (let* ((_$tgt121474121495_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121473121491_)))
                           (_$hd121475121498_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121474121495_)))
                           (_$tl121476121501_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121474121495_))))
                      (let ((_ann121505_ _$hd121475121498_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl121476121501_))
                            (let* ((_$tgt121477121507_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl121476121501_)))
                                   (_$hd121478121510_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt121477121507_)))
                                   (_$tl121479121513_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt121477121507_))))
                              (let ((_expr121517_ _$hd121478121510_))
                                (if (let ((__tmp125921
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl121479121513_))))
                                      (declare (not safe))
                                      (equal? __tmp125921 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr121517_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E121470121482_)))))
                            (let () (declare (not safe)) (_$E121470121482_)))))
                    (let () (declare (not safe)) (_$E121470121482_))))
              (let () (declare (not safe)) (_$E121470121482_))))))
    (define __compile-define-values%
      (lambda (_stx121357_)
        (let* ((_$e121359_ _stx121357_)
               (_$E121361121373_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121359_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121359_))
              (let* ((_$tgt121362121376_
                      (let () (declare (not safe)) (__AST-e _$e121359_)))
                     (_$hd121363121379_
                      (let () (declare (not safe)) (##car _$tgt121362121376_)))
                     (_$tl121364121382_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121362121376_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121364121382_))
                    (let* ((_$tgt121365121386_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121364121382_)))
                           (_$hd121366121389_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121365121386_)))
                           (_$tl121367121392_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121365121386_))))
                      (let ((_hd121396_ _$hd121366121389_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl121367121392_))
                            (let* ((_$tgt121368121398_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl121367121392_)))
                                   (_$hd121369121401_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt121368121398_)))
                                   (_$tl121370121404_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt121368121398_))))
                              (let ((_expr121408_ _$hd121369121401_))
                                (if (let ((__tmp125954
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl121370121404_))))
                                      (declare (not safe))
                                      (equal? __tmp125954 '()))
                                    (let* ((_$e121410_ _hd121396_)
                                           (_$E121412121453_
                                            (lambda ()
                                              (let ((_$E121413121438_
                                                     (lambda ()
                                                       (let* ((_$E121414121425_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e121410_))))
                      (_ids121428_ _hd121396_)
                      (_len121430_ (length _ids121428_))
                      (_tmp121432_
                       (let ((__tmp125922 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp125922))))
                 (let ((__tmp125923
                        (let ((__tmp125924
                               (let ((__tmp125941
                                      (let ((__tmp125942
                                             (let ((__tmp125943
                                                    (let ((__tmp125944
                                                           (let ((__tmp125945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr121408_))))
                     (declare (not safe))
                     (cons __tmp125945 '()))))
              (declare (not safe))
              (cons _tmp121432_ __tmp125944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp125943))))
                                        (declare (not safe))
                                        (__SRC__% __tmp125942 _stx121357_)))
                                     (__tmp125925
                                      (let ((__tmp125937
                                             (let ((__tmp125938
                                                    (let ((__tmp125939
                                                           (let ((__tmp125940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len121430_ '()))))
                     (declare (not safe))
                     (cons _tmp121432_ __tmp125940))))
              (declare (not safe))
              (cons '__check-values __tmp125939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp125938
                                                _stx121357_)))
                                            (__tmp125926
                                             (let ((__tmp125927
                                                    (let ((__tmp125929
                                                           (lambda (_id121435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k121436_)
                     (if (let () (declare (not safe)) (__AST-e _id121435_))
                         (let ((__tmp125930
                                (let ((__tmp125931
                                       (let ((__tmp125936
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id121435_)))
                                             (__tmp125932
                                              (let ((__tmp125933
                                                     (let ((__tmp125934
                                                            (let ((__tmp125935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k121436_ '()))))
                      (declare (not safe))
                      (cons _tmp121432_ __tmp125935))))
               (declare (not safe))
               (cons '##vector-ref __tmp125934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125933 '()))))
                                         (declare (not safe))
                                         (cons __tmp125936 __tmp125932))))
                                  (declare (not safe))
                                  (cons 'define __tmp125931))))
                           (declare (not safe))
                           (__SRC__% __tmp125930 _stx121357_))
                         '#f)))
                  (__tmp125928
                   (let () (declare (not safe)) (iota__0 _len121430_))))
              (declare (not safe))
              (filter-map2 __tmp125929 _ids121428_ __tmp125928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp125927))))
                                        (declare (not safe))
                                        (cons __tmp125937 __tmp125926))))
                                 (declare (not safe))
                                 (cons __tmp125941 __tmp125925))))
                          (declare (not safe))
                          (cons 'begin __tmp125924))))
                   (declare (not safe))
                   (__SRC__% __tmp125923 _stx121357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e121410_))
                                                    (let* ((_$tgt121415121441_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e121410_)))
                                                           (_$hd121416121444_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt121415121441_)))
                                                           (_$tl121417121447_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt121415121441_))))
                                                      (let ((_id121451_
                                                             _$hd121416121444_))
                                                        (if (let ((__tmp125951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl121417121447_))))
                      (declare (not safe))
                      (equal? __tmp125951 '()))
                    (let ((__tmp125946
                           (let ((__tmp125947
                                  (let ((__tmp125950
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id121451_)))
                                        (__tmp125948
                                         (let ((__tmp125949
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr121408_))))
                                           (declare (not safe))
                                           (cons __tmp125949 '()))))
                                    (declare (not safe))
                                    (cons __tmp125950 __tmp125948))))
                             (declare (not safe))
                             (cons 'define __tmp125947))))
                      (declare (not safe))
                      (__SRC__% __tmp125946 _stx121357_))
                    (let () (declare (not safe)) (_$E121413121438_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E121413121438_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e121410_))
                                          (let* ((_$tgt121418121456_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e121410_)))
                                                 (_$hd121419121459_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt121418121456_)))
                                                 (_$tl121420121462_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt121418121456_))))
                                            (if (let ((__tmp125953
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd121419121459_))))
                                                  (declare (not safe))
                                                  (equal? __tmp125953 '#f))
                                                (if (let ((__tmp125952
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl121420121462_))))
                                                      (declare (not safe))
                                                      (equal? __tmp125952 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr121408_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E121412121453_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E121412121453_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E121412121453_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E121361121373_)))))
                            (let () (declare (not safe)) (_$E121361121373_)))))
                    (let () (declare (not safe)) (_$E121361121373_))))
              (let () (declare (not safe)) (_$E121361121373_))))))
    (define __compile-head-id
      (lambda (_e121355_)
        (let ((__tmp125955
               (if (let () (declare (not safe)) (__AST-e _e121355_))
                   _e121355_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp125955))))
    (define __compile-lambda-head
      (lambda (_hd121312_)
        (let _recur121314_ ((_rest121316_ _hd121312_))
          (let* ((_$e121318_ _rest121316_)
                 (_$E121320121338_
                  (lambda ()
                    (let ((_$E121321121335_
                           (lambda ()
                             (let* ((_$E121322121330_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e121318_))))
                                    (_tail121333_ _$e121318_))
                               (declare (not safe))
                               (__compile-head-id _tail121333_)))))
                      (if (let ((__tmp125956
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e121318_))))
                            (declare (not safe))
                            (equal? __tmp125956 '()))
                          '()
                          (let () (declare (not safe)) (_$E121321121335_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e121318_))
                (let* ((_$tgt121323121341_
                        (let () (declare (not safe)) (__AST-e _$e121318_)))
                       (_$hd121324121344_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt121323121341_)))
                       (_$tl121325121347_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt121323121341_))))
                  (let* ((_hd121351_ _$hd121324121344_)
                         (_rest121353_ _$tl121325121347_))
                    (let ((__tmp125958
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd121351_)))
                          (__tmp125957
                           (let ()
                             (declare (not safe))
                             (_recur121314_ _rest121353_))))
                      (declare (not safe))
                      (cons __tmp125958 __tmp125957))))
                (let () (declare (not safe)) (_$E121320121338_)))))))
    (define __compile-lambda%
      (lambda (_stx121259_)
        (let* ((_$e121261_ _stx121259_)
               (_$E121263121275_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121261_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121261_))
              (let* ((_$tgt121264121278_
                      (let () (declare (not safe)) (__AST-e _$e121261_)))
                     (_$hd121265121281_
                      (let () (declare (not safe)) (##car _$tgt121264121278_)))
                     (_$tl121266121284_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121264121278_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121266121284_))
                    (let* ((_$tgt121267121288_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121266121284_)))
                           (_$hd121268121291_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121267121288_)))
                           (_$tl121269121294_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121267121288_))))
                      (let ((_hd121298_ _$hd121268121291_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl121269121294_))
                            (let* ((_$tgt121270121300_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl121269121294_)))
                                   (_$hd121271121303_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt121270121300_)))
                                   (_$tl121272121306_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt121270121300_))))
                              (let ((_body121310_ _$hd121271121303_))
                                (if (let ((__tmp125964
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl121272121306_))))
                                      (declare (not safe))
                                      (equal? __tmp125964 '()))
                                    (let ((__tmp125959
                                           (let ((__tmp125960
                                                  (let ((__tmp125963
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd121298_)))
                                                        (__tmp125961
                                                         (let ((__tmp125962
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body121310_))))
                   (declare (not safe))
                   (cons __tmp125962 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125963
                                                          __tmp125961))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp125960))))
                                      (declare (not safe))
                                      (__SRC__% __tmp125959 _stx121259_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E121263121275_)))))
                            (let () (declare (not safe)) (_$E121263121275_)))))
                    (let () (declare (not safe)) (_$E121263121275_))))
              (let () (declare (not safe)) (_$E121263121275_))))))
    (define __compile-case-lambda%
      (lambda (_stx121051_)
        (letrec ((_variadic?121053_
                  (lambda (_hd121224_)
                    (let* ((_$e121226_ _hd121224_)
                           (_$E121228121244_
                            (lambda ()
                              (let ((_$E121229121241_
                                     (lambda ()
                                       (let ((_$E121230121238_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e121226_)))))
                                         '#t))))
                                (if (let ((__tmp125965
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e121226_))))
                                      (declare (not safe))
                                      (equal? __tmp125965 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E121229121241_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e121226_))
                          (let* ((_$tgt121231121247_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e121226_)))
                                 (_$hd121232121250_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt121231121247_)))
                                 (_$tl121233121253_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt121231121247_))))
                            (let ((_rest121257_ _$tl121233121253_))
                              (declare (not safe))
                              (_variadic?121053_ _rest121257_)))
                          (let () (declare (not safe)) (_$E121228121244_))))))
                 (_arity121054_
                  (lambda (_hd121189_)
                    (let _lp121191_ ((_rest121193_ _hd121189_) (_k121194_ '0))
                      (let* ((_$e121196_ _rest121193_)
                             (_$E121198121209_
                              (lambda ()
                                (let ((_$E121199121206_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e121196_)))))
                                  _k121194_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e121196_))
                            (let* ((_$tgt121200121212_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e121196_)))
                                   (_$hd121201121215_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt121200121212_)))
                                   (_$tl121202121218_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt121200121212_))))
                              (let* ((_rest121222_ _$tl121202121218_)
                                     (__tmp125966
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k121194_ '1))))
                                (declare (not safe))
                                (_lp121191_ _rest121222_ __tmp125966)))
                            (let ()
                              (declare (not safe))
                              (_$E121198121209_)))))))
                 (_generate121055_
                  (lambda (_rest121116_ _args121117_ _len121118_)
                    (let* ((_$e121120_ _rest121116_)
                           (_$E121122121133_
                            (lambda ()
                              (let* ((_$E121123121130_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e121120_))))
                                     (__tmp125967
                                      (let ((__tmp125968
                                             (let ((__tmp125969
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args121117_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp125969))))
                                        (declare (not safe))
                                        (cons 'error __tmp125968))))
                                (declare (not safe))
                                (__SRC__% __tmp125967 _stx121051_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e121120_))
                          (let* ((_$tgt121124121136_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e121120_)))
                                 (_$hd121125121139_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt121124121136_)))
                                 (_$tl121126121142_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt121124121136_))))
                            (let* ((_clause121146_ _$hd121125121139_)
                                   (_rest121148_ _$tl121126121142_)
                                   (_$e121150_ _clause121146_)
                                   (_$E121152121161_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e121150_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e121150_))
                                  (let* ((_$tgt121153121164_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e121150_)))
                                         (_$hd121154121167_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt121153121164_)))
                                         (_$tl121155121170_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt121153121164_))))
                                    (let ((_hd121174_ _$hd121154121167_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl121155121170_))
                                          (let* ((_$tgt121156121176_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl121155121170_)))
                                                 (_$hd121157121179_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt121156121176_)))
                                                 (_$tl121158121182_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt121156121176_))))
                                            (if (let ((__tmp125984
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl121158121182_))))
                                                  (declare (not safe))
                                                  (equal? __tmp125984 '()))
                                                (let ((_clen121186_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity121054_
                                                          _hd121174_)))
                                                      (_cmp121187_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?121053_
                                                              _hd121174_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp125970
                                                         (let ((__tmp125971
                                                                (let ((__tmp125981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp125982
                                      (let ((__tmp125983
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen121186_ '()))))
                                        (declare (not safe))
                                        (cons _len121118_ __tmp125983))))
                                 (declare (not safe))
                                 (cons _cmp121187_ __tmp125982)))
                              (__tmp125972
                               (let ((__tmp125975
                                      (let ((__tmp125976
                                             (let ((__tmp125977
                                                    (let ((__tmp125979
                                                           (let ((__tmp125980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause121146_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp125980)))
                  (__tmp125978
                   (let () (declare (not safe)) (cons _args121117_ '()))))
              (declare (not safe))
              (cons __tmp125979 __tmp125978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp125977))))
                                        (declare (not safe))
                                        (__SRC__% __tmp125976 _stx121051_)))
                                     (__tmp125973
                                      (let ((__tmp125974
                                             (let ()
                                               (declare (not safe))
                                               (_generate121055_
                                                _rest121148_
                                                _args121117_
                                                _len121118_))))
                                        (declare (not safe))
                                        (cons __tmp125974 '()))))
                                 (declare (not safe))
                                 (cons __tmp125975 __tmp125973))))
                          (declare (not safe))
                          (cons __tmp125981 __tmp125972))))
                   (declare (not safe))
                   (cons 'if __tmp125971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp125970
                                                     _stx121051_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E121152121161_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E121152121161_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E121152121161_)))))
                          (let () (declare (not safe)) (_$E121122121133_)))))))
          (let* ((_$e121057_ _stx121051_)
                 (_$E121059121091_
                  (lambda ()
                    (let ((_$E121060121073_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e121057_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e121057_))
                          (let* ((_$tgt121061121076_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e121057_)))
                                 (_$hd121062121079_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt121061121076_)))
                                 (_$tl121063121082_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt121061121076_))))
                            (let ((_clauses121086_ _$tl121063121082_))
                              (let ((_args121088_
                                     (let ((__tmp125985 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp125985 _stx121051_)))
                                    (_len121089_
                                     (let ((__tmp125986 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp125986 _stx121051_))))
                                (let ((__tmp125987
                                       (let ((__tmp125988
                                              (let ((__tmp125989
                                                     (let ((__tmp125990
                                                            (let ((__tmp125991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125992
                                  (let ((__tmp125995
                                         (let ((__tmp125996
                                                (let ((__tmp125997
                                                       (let ((__tmp125998
                                                              (let ((__tmp125999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp126000
                                    (let ()
                                      (declare (not safe))
                                      (cons _args121088_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp126000))))
                        (declare (not safe))
                        (__SRC__% __tmp125999 _stx121051_))))
                 (declare (not safe))
                 (cons __tmp125998 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len121089_
                                                        __tmp125997))))
                                           (declare (not safe))
                                           (cons __tmp125996 '())))
                                        (__tmp125993
                                         (let ((__tmp125994
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate121055_
                                                   _clauses121086_
                                                   _args121088_
                                                   _len121089_))))
                                           (declare (not safe))
                                           (cons __tmp125994 '()))))
                                    (declare (not safe))
                                    (cons __tmp125995 __tmp125993))))
                             (declare (not safe))
                             (cons 'let __tmp125992))))
                      (declare (not safe))
                      (__SRC__% __tmp125991 _stx121051_))))
               (declare (not safe))
               (cons __tmp125990 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args121088_
                                                      __tmp125989))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp125988))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125987 _stx121051_)))))
                          (let () (declare (not safe)) (_$E121060121073_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e121057_))
                (let* ((_$tgt121064121094_
                        (let () (declare (not safe)) (__AST-e _$e121057_)))
                       (_$hd121065121097_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt121064121094_)))
                       (_$tl121066121100_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt121064121094_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl121066121100_))
                      (let* ((_$tgt121067121104_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl121066121100_)))
                             (_$hd121068121107_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt121067121104_)))
                             (_$tl121069121110_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt121067121104_))))
                        (let ((_clause121114_ _$hd121068121107_))
                          (if (let ((__tmp126002
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl121069121110_))))
                                (declare (not safe))
                                (equal? __tmp126002 '()))
                              (let ((__tmp126001
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause121114_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp126001))
                              (let ()
                                (declare (not safe))
                                (_$E121059121091_)))))
                      (let () (declare (not safe)) (_$E121059121091_))))
                (let () (declare (not safe)) (_$E121059121091_)))))))
    (define __compile-let-form
      (lambda (_stx120820_ _compile-simple120821_ _compile-values120822_)
        (letrec ((_simple-bind?120824_
                  (lambda (_hd121009_)
                    (let* ((_hd121010121020_ _hd121009_)
                           (_else121013121028_ (lambda () '#f)))
                      (let ((_K121016121041_ (lambda (_id121039_) '#t))
                            (_K121015121033_ (lambda () '#t)))
                        (let ((_try-match121012121036_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd121010121020_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K121015121033_))
                                     (let ()
                                       (declare (not safe))
                                       (_else121013121028_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd121010121020_))
                              (let ((_tl121018121046_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd121010121020_)))
                                    (_hd121017121044_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd121010121020_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl121018121046_))
                                    (let ((_id121049_ _hd121017121044_))
                                      (declare (not safe))
                                      (_K121016121041_ _id121049_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match121012121036_))))
                              (let ()
                                (declare (not safe))
                                (_try-match121012121036_))))))))
                 (_car-e120825_
                  (lambda (_hd121007_)
                    (if (let () (declare (not safe)) (pair? _hd121007_))
                        (car _hd121007_)
                        _hd121007_))))
          (let* ((_$e120827_ _stx120820_)
                 (_$E120829120972_
                  (lambda ()
                    (let ((_$E120830120852_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e120827_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120827_))
                          (let* ((_$tgt120831120855_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120827_)))
                                 (_$hd120832120858_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120831120855_)))
                                 (_$tl120833120861_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120831120855_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl120833120861_))
                                (let* ((_$tgt120834120865_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl120833120861_)))
                                       (_$hd120835120868_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt120834120865_)))
                                       (_$tl120836120871_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt120834120865_))))
                                  (let ((_hd120875_ _$hd120835120868_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl120836120871_))
                                        (let* ((_$tgt120837120877_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl120836120871_)))
                                               (_$hd120838120880_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt120837120877_)))
                                               (_$tl120839120883_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt120837120877_))))
                                          (let ((_body120887_
                                                 _$hd120838120880_))
                                            (if (let ((__tmp126005
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl120839120883_))))
                                                  (declare (not safe))
                                                  (equal? __tmp126005 '()))
                                                (let* ((_hd-ids120927_
                                                        (map (lambda (_bind120889_)
                                                               (let* ((_$e120891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind120889_)
                              (_$E120893120902_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e120891_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e120891_))
                             (let* ((_$tgt120894120905_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e120891_)))
                                    (_$hd120895120908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt120894120905_)))
                                    (_$tl120896120911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt120894120905_))))
                               (let ((_ids120915_ _$hd120895120908_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl120896120911_))
                                     (let* ((_$tgt120897120917_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl120896120911_)))
                                            (_$hd120898120920_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt120897120917_)))
                                            (_$tl120899120923_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt120897120917_))))
                                       (if (let ((__tmp126003
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl120899120923_))))
                                             (declare (not safe))
                                             (equal? __tmp126003 '()))
                                           _ids120915_
                                           (let ()
                                             (declare (not safe))
                                             (_$E120893120902_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E120893120902_)))))
                             (let ()
                               (declare (not safe))
                               (_$E120893120902_)))))
                     _hd120875_))
               (_exprs120967_
                (map (lambda (_bind120929_)
                       (let* ((_$e120931_ _bind120929_)
                              (_$E120933120942_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e120931_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e120931_))
                             (let* ((_$tgt120934120945_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e120931_)))
                                    (_$hd120935120948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt120934120945_)))
                                    (_$tl120936120951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt120934120945_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl120936120951_))
                                   (let* ((_$tgt120937120955_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120936120951_)))
                                          (_$hd120938120958_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt120937120955_)))
                                          (_$tl120939120961_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt120937120955_))))
                                     (let ((_expr120965_ _$hd120938120958_))
                                       (if (let ((__tmp126004
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl120939120961_))))
                                             (declare (not safe))
                                             (equal? __tmp126004 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr120965_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E120933120942_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E120933120942_))))
                             (let ()
                               (declare (not safe))
                               (_$E120933120942_)))))
                     _hd120875_))
               (_body120969_
                (let () (declare (not safe)) (__compile _body120887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?120824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids120927_))
              (_compile-simple120821_
               (map _car-e120825_ _hd-ids120927_)
               _exprs120967_
               _body120969_)
              (_compile-values120822_
               _hd-ids120927_
               _exprs120967_
               _body120969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E120830120852_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E120830120852_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E120830120852_))))
                          (let () (declare (not safe)) (_$E120830120852_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e120827_))
                (let* ((_$tgt120840120975_
                        (let () (declare (not safe)) (__AST-e _$e120827_)))
                       (_$hd120841120978_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt120840120975_)))
                       (_$tl120842120981_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt120840120975_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl120842120981_))
                      (let* ((_$tgt120843120985_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl120842120981_)))
                             (_$hd120844120988_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt120843120985_)))
                             (_$tl120845120991_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt120843120985_))))
                        (if (let ((__tmp126007
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd120844120988_))))
                              (declare (not safe))
                              (equal? __tmp126007 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl120845120991_))
                                (let* ((_$tgt120846120995_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl120845120991_)))
                                       (_$hd120847120998_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt120846120995_)))
                                       (_$tl120848121001_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt120846120995_))))
                                  (let ((_body121005_ _$hd120847120998_))
                                    (if (let ((__tmp126006
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl120848121001_))))
                                          (declare (not safe))
                                          (equal? __tmp126006 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body121005_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E120829120972_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E120829120972_)))
                            (let () (declare (not safe)) (_$E120829120972_))))
                      (let () (declare (not safe)) (_$E120829120972_))))
                (let () (declare (not safe)) (_$E120829120972_)))))))
    (define __compile-let-values%
      (lambda (_stx120635_)
        (letrec ((_compile-simple120637_
                  (lambda (_hd-ids120816_ _exprs120817_ _body120818_)
                    (let ((__tmp126008
                           (let ((__tmp126009
                                  (let ((__tmp126011
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids120816_)
                                              _exprs120817_))
                                        (__tmp126010
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120818_ '()))))
                                    (declare (not safe))
                                    (cons __tmp126011 __tmp126010))))
                             (declare (not safe))
                             (cons 'let __tmp126009))))
                      (declare (not safe))
                      (__SRC__% __tmp126008 _stx120635_))))
                 (_compile-values120638_
                  (lambda (_hd-ids120734_ _exprs120735_ _body120736_)
                    (let _lp120738_ ((_rest120740_ _hd-ids120734_)
                                     (_exprs120741_ _exprs120735_)
                                     (_bind120742_ '())
                                     (_post120743_ '()))
                      (let* ((_rest120744120758_ _rest120740_)
                             (_else120747120766_
                              (lambda ()
                                (let ((__tmp126012
                                       (let ((__tmp126013
                                              (let ((__tmp126016
                                                     (reverse _bind120742_))
                                                    (__tmp126014
                                                     (let ((__tmp126015
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post120639_
                                                               _post120743_
                                                               _body120736_))))
                                                       (declare (not safe))
                                                       (cons __tmp126015
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp126016
                                                      __tmp126014))))
                                         (declare (not safe))
                                         (cons 'let __tmp126013))))
                                  (declare (not safe))
                                  (__SRC__% __tmp126012 _stx120635_)))))
                        (let ((_K120752120799_
                               (lambda (_rest120796_ _id120797_)
                                 (let ((__tmp126022 (cdr _exprs120741_))
                                       (__tmp126017
                                        (let ((__tmp126018
                                               (let ((__tmp126021
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id120797_)))
                                                     (__tmp126019
                                                      (let ((__tmp126020
                                                             (car _exprs120741_)))
                                                        (declare (not safe))
                                                        (cons __tmp126020
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp126021
                                                       __tmp126019))))
                                          (declare (not safe))
                                          (cons __tmp126018 _bind120742_))))
                                   (declare (not safe))
                                   (_lp120738_
                                    _rest120796_
                                    __tmp126022
                                    __tmp126017
                                    _post120743_))))
                              (_K120749120781_
                               (lambda (_rest120770_ _hd120771_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd120771_))
                                     (let ((__tmp126043 (cdr _exprs120741_))
                                           (__tmp126036
                                            (let ((__tmp126037
                                                   (let ((__tmp126042
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd120771_)))
                                                         (__tmp126038
                                                          (let ((__tmp126039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp126040
                                (let ((__tmp126041 (car _exprs120741_)))
                                  (declare (not safe))
                                  (cons __tmp126041 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp126040))))
                    (declare (not safe))
                    (cons __tmp126039 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp126042
                                                           __tmp126038))))
                                              (declare (not safe))
                                              (cons __tmp126037
                                                    _bind120742_))))
                                       (declare (not safe))
                                       (_lp120738_
                                        _rest120770_
                                        __tmp126043
                                        __tmp126036
                                        _post120743_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd120771_))
                                         (let* ((_len120773_
                                                 (length _hd120771_))
                                                (_tmp120775_
                                                 (let ((__tmp126023 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp126023))))
                                           (let ((__tmp126035
                                                  (cdr _exprs120741_))
                                                 (__tmp126031
                                                  (let ((__tmp126032
                                                         (let ((__tmp126033
                                                                (let ((__tmp126034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs120741_)))
                          (declare (not safe))
                          (cons __tmp126034 '()))))
                   (declare (not safe))
                   (cons _tmp120775_ __tmp126033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp126032
                                                          _bind120742_)))
                                                 (__tmp126024
                                                  (let ((__tmp126025
                                                         (let ((__tmp126026
                                                                (let ((__tmp126027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp126029
                                      (lambda (_id120778_ _k120779_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id120778_))
                                            (let ((__tmp126030
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id120778_))))
                                              (declare (not safe))
                                              (cons __tmp126030 _k120779_))
                                            '#f)))
                                     (__tmp126028
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len120773_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp126029
                                  _hd120771_
                                  __tmp126028))))
                          (declare (not safe))
                          (cons _len120773_ __tmp126027))))
                   (declare (not safe))
                   (cons _tmp120775_ __tmp126026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp126025
                                                          _post120743_))))
                                             (declare (not safe))
                                             (_lp120738_
                                              _rest120770_
                                              __tmp126035
                                              __tmp126031
                                              __tmp126024)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx120635_
                                            _hd120771_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120744120758_))
                              (let ((_tl120754120804_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120744120758_)))
                                    (_hd120753120802_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120744120758_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd120753120802_))
                                    (let ((_tl120756120809_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd120753120802_)))
                                          (_hd120755120807_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd120753120802_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl120756120809_))
                                          (let ((_id120812_ _hd120755120807_)
                                                (_rest120814_
                                                 _tl120754120804_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120752120799_
                                               _rest120814_
                                               _id120812_)))
                                          (let ((_hd120789_ _hd120753120802_)
                                                (_rest120791_
                                                 _tl120754120804_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120749120781_
                                               _rest120791_
                                               _hd120789_)))))
                                    (let ((_hd120789_ _hd120753120802_)
                                          (_rest120791_ _tl120754120804_))
                                      (let ()
                                        (declare (not safe))
                                        (_K120749120781_
                                         _rest120791_
                                         _hd120789_)))))
                              (let ()
                                (declare (not safe))
                                (_else120747120766_))))))))
                 (_compile-post120639_
                  (lambda (_post120641_ _body120642_)
                    (let _lp120644_ ((_rest120646_ _post120641_)
                                     (_check120647_ '())
                                     (_bind120648_ '()))
                      (let* ((_rest120649120661_ _rest120646_)
                             (_else120651120669_
                              (lambda ()
                                (let ((__tmp126044
                                       (let ((__tmp126045
                                              (let ((__tmp126046
                                                     (let ((__tmp126047
                                                            (let ((__tmp126048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp126049
                                  (let ((__tmp126050
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120642_ '()))))
                                    (declare (not safe))
                                    (cons _bind120648_ __tmp126050))))
                             (declare (not safe))
                             (cons 'let __tmp126049))))
                      (declare (not safe))
                      (__SRC__% __tmp126048 _stx120635_))))
               (declare (not safe))
               (cons __tmp126047 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp126046
                                                        _check120647_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp126045))))
                                  (declare (not safe))
                                  (__SRC__% __tmp126044 _stx120635_))))
                             (_K120653120708_
                              (lambda (_rest120672_
                                       _init120673_
                                       _len120674_
                                       _tmp120675_)
                                (let ((__tmp126058
                                       (let ((__tmp126059
                                              (let ((__tmp126060
                                                     (let ((__tmp126061
                                                            (let ((__tmp126062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len120674_ '()))))
                      (declare (not safe))
                      (cons _tmp120675_ __tmp126062))))
               (declare (not safe))
               (cons '__check-values __tmp126061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp126060
                                                 _stx120635_))))
                                         (declare (not safe))
                                         (cons __tmp126059 _check120647_)))
                                      (__tmp126051
                                       (let ((__tmp126052
                                              (lambda (_hd120677_ _r120678_)
                                                (let* ((_hd120679120686_
                                                        _hd120677_)
                                                       (_E120681120690_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd120679120686_))))
               (_K120682120696_
                (lambda (_k120693_ _id120694_)
                  (let ((__tmp126053
                         (let ((__tmp126054
                                (let ((__tmp126055
                                       (let ((__tmp126056
                                              (let ((__tmp126057
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k120693_ '()))))
                                                (declare (not safe))
                                                (cons _tmp120675_
                                                      __tmp126057))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp126056))))
                                  (declare (not safe))
                                  (cons __tmp126055 '()))))
                           (declare (not safe))
                           (cons _id120694_ __tmp126054))))
                    (declare (not safe))
                    (cons __tmp126053 _r120678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd120679120686_))
                                                      (let ((_hd120683120699_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd120679120686_)))
                    (_tl120684120701_
                     (let () (declare (not safe)) (##cdr _hd120679120686_))))
                (let* ((_id120704_ _hd120683120699_)
                       (_k120706_ _tl120684120701_))
                  (declare (not safe))
                  (_K120682120696_ _k120706_ _id120704_)))
              (let () (declare (not safe)) (_E120681120690_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp126052
                                                 _bind120648_
                                                 _init120673_))))
                                  (declare (not safe))
                                  (_lp120644_
                                   _rest120672_
                                   __tmp126058
                                   __tmp126051)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest120649120661_))
                            (let ((_hd120654120711_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest120649120661_)))
                                  (_tl120655120713_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest120649120661_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd120654120711_))
                                  (let ((_hd120656120716_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd120654120711_)))
                                        (_tl120657120718_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd120654120711_))))
                                    (let ((_tmp120721_ _hd120656120716_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl120657120718_))
                                          (let ((_hd120658120723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl120657120718_)))
                                                (_tl120659120725_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl120657120718_))))
                                            (let* ((_len120728_
                                                    _hd120658120723_)
                                                   (_init120730_
                                                    _tl120659120725_)
                                                   (_rest120732_
                                                    _tl120655120713_))
                                              (declare (not safe))
                                              (_K120653120708_
                                               _rest120732_
                                               _init120730_
                                               _len120728_
                                               _tmp120721_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else120651120669_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else120651120669_))))
                            (let ()
                              (declare (not safe))
                              (_else120651120669_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx120635_
             _compile-simple120637_
             _compile-values120638_)))))
    (define __compile-letrec-values%
      (lambda (_stx120435_)
        (letrec ((_compile-simple120437_
                  (lambda (_hd-ids120631_ _exprs120632_ _body120633_)
                    (let ((__tmp126063
                           (let ((__tmp126064
                                  (let ((__tmp126066
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids120631_)
                                              _exprs120632_))
                                        (__tmp126065
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120633_ '()))))
                                    (declare (not safe))
                                    (cons __tmp126066 __tmp126065))))
                             (declare (not safe))
                             (cons 'letrec __tmp126064))))
                      (declare (not safe))
                      (__SRC__% __tmp126063 _stx120435_))))
                 (_compile-values120438_
                  (lambda (_hd-ids120545_ _exprs120546_ _body120547_)
                    (let _lp120549_ ((_rest120551_ _hd-ids120545_)
                                     (_exprs120552_ _exprs120546_)
                                     (_pre120553_ '())
                                     (_bind120554_ '())
                                     (_post120555_ '()))
                      (let* ((_rest120556120570_ _rest120551_)
                             (_else120559120578_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner120439_
                                   _pre120553_
                                   _bind120554_
                                   _post120555_
                                   _body120547_)))))
                        (let ((_K120564120614_
                               (lambda (_rest120611_ _id120612_)
                                 (let ((__tmp126072 (cdr _exprs120552_))
                                       (__tmp126067
                                        (let ((__tmp126068
                                               (let ((__tmp126071
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id120612_)))
                                                     (__tmp126069
                                                      (let ((__tmp126070
                                                             (car _exprs120552_)))
                                                        (declare (not safe))
                                                        (cons __tmp126070
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp126071
                                                       __tmp126069))))
                                          (declare (not safe))
                                          (cons __tmp126068 _bind120554_))))
                                   (declare (not safe))
                                   (_lp120549_
                                    _rest120611_
                                    __tmp126072
                                    _pre120553_
                                    __tmp126067
                                    _post120555_))))
                              (_K120561120596_
                               (lambda (_rest120582_ _hd120583_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd120583_))
                                     (let ((__tmp126100 (cdr _exprs120552_))
                                           (__tmp126093
                                            (let ((__tmp126094
                                                   (let ((__tmp126099
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd120583_)))
                                                         (__tmp126095
                                                          (let ((__tmp126096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp126097
                                (let ((__tmp126098 (car _exprs120552_)))
                                  (declare (not safe))
                                  (cons __tmp126098 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp126097))))
                    (declare (not safe))
                    (cons __tmp126096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp126099
                                                           __tmp126095))))
                                              (declare (not safe))
                                              (cons __tmp126094
                                                    _bind120554_))))
                                       (declare (not safe))
                                       (_lp120549_
                                        _rest120582_
                                        __tmp126100
                                        _pre120553_
                                        __tmp126093
                                        _post120555_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd120583_))
                                         (let* ((_len120585_
                                                 (length _hd120583_))
                                                (_tmp120587_
                                                 (let ((__tmp126073 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp126073))))
                                           (let ((__tmp126092
                                                  (cdr _exprs120552_))
                                                 (__tmp126085
                                                  (let ((__tmp126086
                                                         (lambda (_id120590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r120591_)
                   (if (let () (declare (not safe)) (__AST-e _id120590_))
                       (let ((__tmp126087
                              (let ((__tmp126091
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id120590_)))
                                    (__tmp126088
                                     (let ((__tmp126089
                                            (let ((__tmp126090
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp126090))))
                                       (declare (not safe))
                                       (cons __tmp126089 '()))))
                                (declare (not safe))
                                (cons __tmp126091 __tmp126088))))
                         (declare (not safe))
                         (cons __tmp126087 _r120591_))
                       _r120591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp126086
                                                            _pre120553_
                                                            _hd120583_)))
                                                 (__tmp126081
                                                  (let ((__tmp126082
                                                         (let ((__tmp126083
                                                                (let ((__tmp126084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs120552_)))
                          (declare (not safe))
                          (cons __tmp126084 '()))))
                   (declare (not safe))
                   (cons _tmp120587_ __tmp126083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp126082
                                                          _bind120554_)))
                                                 (__tmp126074
                                                  (let ((__tmp126075
                                                         (let ((__tmp126076
                                                                (let ((__tmp126077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp126079
                                      (lambda (_id120593_ _k120594_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id120593_))
                                            (let ((__tmp126080
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id120593_))))
                                              (declare (not safe))
                                              (cons __tmp126080 _k120594_))
                                            '#f)))
                                     (__tmp126078
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len120585_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp126079
                                  _hd120583_
                                  __tmp126078))))
                          (declare (not safe))
                          (cons _len120585_ __tmp126077))))
                   (declare (not safe))
                   (cons _tmp120587_ __tmp126076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp126075
                                                          _post120555_))))
                                             (declare (not safe))
                                             (_lp120549_
                                              _rest120582_
                                              __tmp126092
                                              __tmp126085
                                              __tmp126081
                                              __tmp126074)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx120435_
                                            _hd120583_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120556120570_))
                              (let ((_tl120566120619_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120556120570_)))
                                    (_hd120565120617_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120556120570_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd120565120617_))
                                    (let ((_tl120568120624_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd120565120617_)))
                                          (_hd120567120622_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd120565120617_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl120568120624_))
                                          (let ((_id120627_ _hd120567120622_)
                                                (_rest120629_
                                                 _tl120566120619_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120564120614_
                                               _rest120629_
                                               _id120627_)))
                                          (let ((_hd120604_ _hd120565120617_)
                                                (_rest120606_
                                                 _tl120566120619_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120561120596_
                                               _rest120606_
                                               _hd120604_)))))
                                    (let ((_hd120604_ _hd120565120617_)
                                          (_rest120606_ _tl120566120619_))
                                      (let ()
                                        (declare (not safe))
                                        (_K120561120596_
                                         _rest120606_
                                         _hd120604_)))))
                              (let ()
                                (declare (not safe))
                                (_else120559120578_))))))))
                 (_compile-inner120439_
                  (lambda (_pre120540_ _bind120541_ _post120542_ _body120543_)
                    (if (let () (declare (not safe)) (null? _pre120540_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind120440_
                           _bind120541_
                           _post120542_
                           _body120543_))
                        (let ((__tmp126101
                               (let ((__tmp126102
                                      (let ((__tmp126105 (reverse _pre120540_))
                                            (__tmp126103
                                             (let ((__tmp126104
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind120440_
                                                       _bind120541_
                                                       _post120542_
                                                       _body120543_))))
                                               (declare (not safe))
                                               (cons __tmp126104 '()))))
                                        (declare (not safe))
                                        (cons __tmp126105 __tmp126103))))
                                 (declare (not safe))
                                 (cons 'let __tmp126102))))
                          (declare (not safe))
                          (__SRC__% __tmp126101 _stx120435_)))))
                 (_compile-bind120440_
                  (lambda (_bind120536_ _post120537_ _body120538_)
                    (let ((__tmp126106
                           (let ((__tmp126107
                                  (let ((__tmp126110 (reverse _bind120536_))
                                        (__tmp126108
                                         (let ((__tmp126109
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post120441_
                                                   _post120537_
                                                   _body120538_))))
                                           (declare (not safe))
                                           (cons __tmp126109 '()))))
                                    (declare (not safe))
                                    (cons __tmp126110 __tmp126108))))
                             (declare (not safe))
                             (cons 'letrec __tmp126107))))
                      (declare (not safe))
                      (__SRC__% __tmp126106 _stx120435_))))
                 (_compile-post120441_
                  (lambda (_post120443_ _body120444_)
                    (let _lp120446_ ((_rest120448_ _post120443_)
                                     (_check120449_ '())
                                     (_bind120450_ '()))
                      (let* ((_rest120451120463_ _rest120448_)
                             (_else120453120471_
                              (lambda ()
                                (let ((__tmp126111
                                       (let ((__tmp126112
                                              (let ((__tmp126113
                                                     (let ((__tmp126114
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body120444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp126114 _bind120450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp126113
                                                        _check120449_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp126112))))
                                  (declare (not safe))
                                  (__SRC__% __tmp126111 _stx120435_))))
                             (_K120455120510_
                              (lambda (_rest120474_
                                       _init120475_
                                       _len120476_
                                       _tmp120477_)
                                (let ((__tmp126123
                                       (let ((__tmp126124
                                              (let ((__tmp126125
                                                     (let ((__tmp126126
                                                            (let ((__tmp126127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len120476_ '()))))
                      (declare (not safe))
                      (cons _tmp120477_ __tmp126127))))
               (declare (not safe))
               (cons '__check-values __tmp126126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp126125
                                                 _stx120435_))))
                                         (declare (not safe))
                                         (cons __tmp126124 _check120449_)))
                                      (__tmp126115
                                       (let ((__tmp126116
                                              (lambda (_hd120479_ _r120480_)
                                                (let* ((_hd120481120488_
                                                        _hd120479_)
                                                       (_E120483120492_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd120481120488_))))
               (_K120484120498_
                (lambda (_k120495_ _id120496_)
                  (let ((__tmp126117
                         (let ((__tmp126118
                                (let ((__tmp126119
                                       (let ((__tmp126120
                                              (let ((__tmp126121
                                                     (let ((__tmp126122
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k120495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp120477_ __tmp126122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp126121))))
                                         (declare (not safe))
                                         (cons __tmp126120 '()))))
                                  (declare (not safe))
                                  (cons _id120496_ __tmp126119))))
                           (declare (not safe))
                           (cons 'set! __tmp126118))))
                    (declare (not safe))
                    (cons __tmp126117 _r120480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd120481120488_))
                                                      (let ((_hd120485120501_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd120481120488_)))
                    (_tl120486120503_
                     (let () (declare (not safe)) (##cdr _hd120481120488_))))
                (let* ((_id120506_ _hd120485120501_)
                       (_k120508_ _tl120486120503_))
                  (declare (not safe))
                  (_K120484120498_ _k120508_ _id120506_)))
              (let () (declare (not safe)) (_E120483120492_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp126116
                                                 _bind120450_
                                                 _init120475_))))
                                  (declare (not safe))
                                  (_lp120446_
                                   _rest120474_
                                   __tmp126123
                                   __tmp126115)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest120451120463_))
                            (let ((_hd120456120513_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest120451120463_)))
                                  (_tl120457120515_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest120451120463_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd120456120513_))
                                  (let ((_hd120458120518_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd120456120513_)))
                                        (_tl120459120520_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd120456120513_))))
                                    (let ((_tmp120523_ _hd120458120518_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl120459120520_))
                                          (let ((_hd120460120525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl120459120520_)))
                                                (_tl120461120527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl120459120520_))))
                                            (let* ((_len120530_
                                                    _hd120460120525_)
                                                   (_init120532_
                                                    _tl120461120527_)
                                                   (_rest120534_
                                                    _tl120457120515_))
                                              (declare (not safe))
                                              (_K120455120510_
                                               _rest120534_
                                               _init120532_
                                               _len120530_
                                               _tmp120523_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else120453120471_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else120453120471_))))
                            (let ()
                              (declare (not safe))
                              (_else120453120471_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx120435_
             _compile-simple120437_
             _compile-values120438_)))))
    (define __compile-letrec*-values%
      (lambda (_stx120190_)
        (letrec ((_compile-simple120192_
                  (lambda (_hd-ids120431_ _exprs120432_ _body120433_)
                    (let ((__tmp126128
                           (let ((__tmp126129
                                  (let ((__tmp126131
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids120431_)
                                              _exprs120432_))
                                        (__tmp126130
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120433_ '()))))
                                    (declare (not safe))
                                    (cons __tmp126131 __tmp126130))))
                             (declare (not safe))
                             (cons 'letrec* __tmp126129))))
                      (declare (not safe))
                      (__SRC__% __tmp126128 _stx120190_))))
                 (_compile-values120193_
                  (lambda (_hd-ids120342_ _exprs120343_ _body120344_)
                    (let _lp120346_ ((_rest120348_ _hd-ids120342_)
                                     (_exprs120349_ _exprs120343_)
                                     (_bind120350_ '())
                                     (_post120351_ '()))
                      (let* ((_rest120352120366_ _rest120348_)
                             (_else120355120374_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind120194_
                                   _bind120350_
                                   _post120351_
                                   _body120344_)))))
                        (let ((_K120360120414_
                               (lambda (_rest120409_ _hd120410_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd120410_))
                                     (let ((_id120412_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd120410_))))
                                       (let ((__tmp126146 (cdr _exprs120349_))
                                             (__tmp126141
                                              (let ((__tmp126142
                                                     (let ((__tmp126143
                                                            (let ((__tmp126144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp126145
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp126145))))
                      (declare (not safe))
                      (cons __tmp126144 '()))))
               (declare (not safe))
               (cons _id120412_ __tmp126143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp126142
                                                      _bind120350_)))
                                             (__tmp126137
                                              (let ((__tmp126138
                                                     (let ((__tmp126139
                                                            (let ((__tmp126140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs120349_)))
                      (declare (not safe))
                      (cons __tmp126140 '()))))
               (declare (not safe))
               (cons _id120412_ __tmp126139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp126138
                                                      _post120351_))))
                                         (declare (not safe))
                                         (_lp120346_
                                          _rest120409_
                                          __tmp126146
                                          __tmp126141
                                          __tmp126137)))
                                     (let ((__tmp126136 (cdr _exprs120349_))
                                           (__tmp126132
                                            (let ((__tmp126133
                                                   (let ((__tmp126134
                                                          (let ((__tmp126135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs120349_)))
                    (declare (not safe))
                    (cons __tmp126135 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp126134))))
                                              (declare (not safe))
                                              (cons __tmp126133
                                                    _post120351_))))
                                       (declare (not safe))
                                       (_lp120346_
                                        _rest120409_
                                        __tmp126136
                                        _bind120350_
                                        __tmp126132)))))
                              (_K120357120394_
                               (lambda (_rest120378_ _hd120379_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd120379_))
                                     (let ((_id120381_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd120379_))))
                                       (let ((__tmp126182 (cdr _exprs120349_))
                                             (__tmp126177
                                              (let ((__tmp126178
                                                     (let ((__tmp126179
                                                            (let ((__tmp126180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp126181
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp126181))))
                      (declare (not safe))
                      (cons __tmp126180 '()))))
               (declare (not safe))
               (cons _id120381_ __tmp126179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp126178
                                                      _bind120350_)))
                                             (__tmp126171
                                              (let ((__tmp126172
                                                     (let ((__tmp126173
                                                            (let ((__tmp126174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp126175
                                  (let ((__tmp126176 (car _exprs120349_)))
                                    (declare (not safe))
                                    (cons __tmp126176 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp126175))))
                      (declare (not safe))
                      (cons __tmp126174 '()))))
               (declare (not safe))
               (cons _id120381_ __tmp126173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp126172
                                                      _post120351_))))
                                         (declare (not safe))
                                         (_lp120346_
                                          _rest120378_
                                          __tmp126182
                                          __tmp126177
                                          __tmp126171)))
                                     (if (let ((__tmp126170
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd120379_))))
                                           (declare (not safe))
                                           (not __tmp126170))
                                         (let ((__tmp126169
                                                (cdr _exprs120349_))
                                               (__tmp126165
                                                (let ((__tmp126166
                                                       (let ((__tmp126167
                                                              (let ((__tmp126168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs120349_)))
                        (declare (not safe))
                        (cons __tmp126168 '()))))
                 (declare (not safe))
                 (cons '#f __tmp126167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp126166
                                                        _post120351_))))
                                           (declare (not safe))
                                           (_lp120346_
                                            _rest120378_
                                            __tmp126169
                                            _bind120350_
                                            __tmp126165))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd120379_))
                                             (let* ((_len120383_
                                                     (length _hd120379_))
                                                    (_tmp120385_
                                                     (let ((__tmp126147
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp126147))))
                                               (let ((__tmp126164
                                                      (cdr _exprs120349_))
                                                     (__tmp126157
                                                      (let ((__tmp126158
                                                             (lambda (_id120388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r120389_)
                       (if (let () (declare (not safe)) (__AST-e _id120388_))
                           (let ((__tmp126159
                                  (let ((__tmp126163
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id120388_)))
                                        (__tmp126160
                                         (let ((__tmp126161
                                                (let ((__tmp126162
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp126162))))
                                           (declare (not safe))
                                           (cons __tmp126161 '()))))
                                    (declare (not safe))
                                    (cons __tmp126163 __tmp126160))))
                             (declare (not safe))
                             (cons __tmp126159 _r120389_))
                           _r120389_))))
                (declare (not safe))
                (foldl1 __tmp126158 _bind120350_ _hd120379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp126148
                                                      (let ((__tmp126149
                                                             (let ((__tmp126150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp126156 (car _exprs120349_))
                                  (__tmp126151
                                   (let ((__tmp126152
                                          (let ((__tmp126154
                                                 (lambda (_id120391_ _k120392_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id120391_))
                                                       (let ((__tmp126155
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id120391_))))
                 (declare (not safe))
                 (cons __tmp126155 _k120392_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp126153
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len120383_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp126154
                                             _hd120379_
                                             __tmp126153))))
                                     (declare (not safe))
                                     (cons _len120383_ __tmp126152))))
                              (declare (not safe))
                              (cons __tmp126156 __tmp126151))))
                       (declare (not safe))
                       (cons _tmp120385_ __tmp126150))))
                (declare (not safe))
                (cons __tmp126149 _post120351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp120346_
                                                  _rest120378_
                                                  __tmp126164
                                                  __tmp126157
                                                  __tmp126148)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx120190_
                                                _hd120379_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120352120366_))
                              (let ((_tl120362120419_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120352120366_)))
                                    (_hd120361120417_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120352120366_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd120361120417_))
                                    (let ((_tl120364120424_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd120361120417_)))
                                          (_hd120363120422_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd120361120417_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl120364120424_))
                                          (let ((_hd120427_ _hd120363120422_)
                                                (_rest120429_
                                                 _tl120362120419_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120360120414_
                                               _rest120429_
                                               _hd120427_)))
                                          (let ((_hd120402_ _hd120361120417_)
                                                (_rest120404_
                                                 _tl120362120419_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120357120394_
                                               _rest120404_
                                               _hd120402_)))))
                                    (let ((_hd120402_ _hd120361120417_)
                                          (_rest120404_ _tl120362120419_))
                                      (let ()
                                        (declare (not safe))
                                        (_K120357120394_
                                         _rest120404_
                                         _hd120402_)))))
                              (let ()
                                (declare (not safe))
                                (_else120355120374_))))))))
                 (_compile-bind120194_
                  (lambda (_bind120338_ _post120339_ _body120340_)
                    (let ((__tmp126183
                           (let ((__tmp126184
                                  (let ((__tmp126187 (reverse _bind120338_))
                                        (__tmp126185
                                         (let ((__tmp126186
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post120195_
                                                   _post120339_
                                                   _body120340_))))
                                           (declare (not safe))
                                           (cons __tmp126186 '()))))
                                    (declare (not safe))
                                    (cons __tmp126187 __tmp126185))))
                             (declare (not safe))
                             (cons 'let __tmp126184))))
                      (declare (not safe))
                      (__SRC__% __tmp126183 _stx120190_))))
                 (_compile-post120195_
                  (lambda (_post120197_ _body120198_)
                    (let ((__tmp126188
                           (let ((__tmp126189
                                  (let ((__tmp126190
                                         (let ((__tmp126192
                                                (lambda (_hd120200_ _r120201_)
                                                  (let* ((_hd120202120225_
                                                          _hd120200_)
                                                         (_E120206120229_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd120202120225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K120219120323_
                                                           (lambda (_expr120321_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr120321_ _r120201_))))
                  (_K120214120301_
                   (lambda (_expr120298_ _id120299_)
                     (let ((__tmp126193
                            (let ((__tmp126194
                                   (let ((__tmp126195
                                          (let ((__tmp126196
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr120298_ '()))))
                                            (declare (not safe))
                                            (cons _id120299_ __tmp126196))))
                                     (declare (not safe))
                                     (cons 'set! __tmp126195))))
                              (declare (not safe))
                              (__SRC__% __tmp126194 _stx120190_))))
                       (declare (not safe))
                       (cons __tmp126193 _r120201_))))
                  (_K120207120268_
                   (lambda (_init120233_ _len120234_ _expr120235_ _tmp120236_)
                     (let ((__tmp126197
                            (let ((__tmp126198
                                   (let ((__tmp126199
                                          (let ((__tmp126213
                                                 (let ((__tmp126214
                                                        (let ((__tmp126215
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr120235_ '()))))
                  (declare (not safe))
                  (cons _tmp120236_ __tmp126215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp126214 '())))
                                                (__tmp126200
                                                 (let ((__tmp126209
                                                        (let ((__tmp126210
                                                               (let ((__tmp126211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp126212
                                     (let ()
                                       (declare (not safe))
                                       (cons _len120234_ '()))))
                                (declare (not safe))
                                (cons _tmp120236_ __tmp126212))))
                         (declare (not safe))
                         (cons '__check-values __tmp126211))))
                  (declare (not safe))
                  (__SRC__% __tmp126210 _stx120190_)))
               (__tmp126201
                (let ((__tmp126202
                       (map (lambda (_hd120238_)
                              (let* ((_hd120239120246_ _hd120238_)
                                     (_E120241120250_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd120239120246_))))
                                     (_K120242120256_
                                      (lambda (_k120253_ _id120254_)
                                        (let ((__tmp126203
                                               (let ((__tmp126204
                                                      (let ((__tmp126205
                                                             (let ((__tmp126206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp126207
                                   (let ((__tmp126208
                                          (let ()
                                            (declare (not safe))
                                            (cons _k120253_ '()))))
                                     (declare (not safe))
                                     (cons _tmp120236_ __tmp126208))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp126207))))
                       (declare (not safe))
                       (cons __tmp126206 '()))))
                (declare (not safe))
                (cons _id120254_ __tmp126205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp126204))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp126203
                                           _stx120190_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd120239120246_))
                                    (let ((_hd120243120259_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd120239120246_)))
                                          (_tl120244120261_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd120239120246_))))
                                      (let* ((_id120264_ _hd120243120259_)
                                             (_k120266_ _tl120244120261_))
                                        (declare (not safe))
                                        (_K120242120256_
                                         _k120266_
                                         _id120264_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E120241120250_)))))
                            _init120233_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp126202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp126209
                                                         __tmp126201))))
                                            (declare (not safe))
                                            (cons __tmp126213 __tmp126200))))
                                     (declare (not safe))
                                     (cons 'let __tmp126199))))
                              (declare (not safe))
                              (__SRC__% __tmp126198 _stx120190_))))
                       (declare (not safe))
                       (cons __tmp126197 _r120201_)))))
              (if (let () (declare (not safe)) (##pair? _hd120202120225_))
                  (let ((_tl120221120328_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd120202120225_)))
                        (_hd120220120326_
                         (let ()
                           (declare (not safe))
                           (##car _hd120202120225_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd120220120326_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl120221120328_))
                            (let ((_tl120223120333_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl120221120328_)))
                                  (_hd120222120331_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl120221120328_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl120223120333_))
                                  (let ((_expr120336_ _hd120222120331_))
                                    (declare (not safe))
                                    (_K120219120323_ _expr120336_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl120223120333_))
                                      (let ((_tl120213120287_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl120223120333_)))
                                            (_hd120212120285_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl120223120333_))))
                                        (let ((_tmp120276_ _hd120220120326_)
                                              (_expr120283_ _hd120222120331_)
                                              (_len120290_ _hd120212120285_)
                                              (_init120292_ _tl120213120287_))
                                          (let ()
                                            (declare (not safe))
                                            (_K120207120268_
                                             _init120292_
                                             _len120290_
                                             _expr120283_
                                             _tmp120276_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E120206120229_)))))
                            (let () (declare (not safe)) (_E120206120229_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl120221120328_))
                            (let ((_tl120218120313_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl120221120328_)))
                                  (_hd120217120311_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl120221120328_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl120218120313_))
                                  (let ((_id120309_ _hd120220120326_)
                                        (_expr120316_ _hd120217120311_))
                                    (let ()
                                      (declare (not safe))
                                      (_K120214120301_
                                       _expr120316_
                                       _id120309_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl120218120313_))
                                      (let ((_tl120213120287_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl120218120313_)))
                                            (_hd120212120285_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl120218120313_))))
                                        (let ((_tmp120276_ _hd120220120326_)
                                              (_expr120283_ _hd120217120311_)
                                              (_len120290_ _hd120212120285_)
                                              (_init120292_ _tl120213120287_))
                                          (let ()
                                            (declare (not safe))
                                            (_K120207120268_
                                             _init120292_
                                             _len120290_
                                             _expr120283_
                                             _tmp120276_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E120206120229_)))))
                            (let () (declare (not safe)) (_E120206120229_)))))
                  (let () (declare (not safe)) (_E120206120229_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp126191
                                                (list _body120198_)))
                                           (declare (not safe))
                                           (foldl1 __tmp126192
                                                   __tmp126191
                                                   _post120197_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp126190))))
                             (declare (not safe))
                             (cons 'begin __tmp126189))))
                      (declare (not safe))
                      (__SRC__% __tmp126188 _stx120190_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx120190_
             _compile-simple120192_
             _compile-values120193_)))))
    (define __compile-call%
      (lambda (_stx120150_)
        (let* ((_$e120152_ _stx120150_)
               (_$E120154120163_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120152_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120152_))
              (let* ((_$tgt120155120166_
                      (let () (declare (not safe)) (__AST-e _$e120152_)))
                     (_$hd120156120169_
                      (let () (declare (not safe)) (##car _$tgt120155120166_)))
                     (_$tl120157120172_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120155120166_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120157120172_))
                    (let* ((_$tgt120158120176_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120157120172_)))
                           (_$hd120159120179_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120158120176_)))
                           (_$tl120160120182_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120158120176_))))
                      (let* ((_rator120186_ _$hd120159120179_)
                             (_rands120188_ _$tl120160120182_)
                             (__tmp126216
                              (let ((__tmp126218
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator120186_)))
                                    (__tmp126217
                                     (map __compile _rands120188_)))
                                (declare (not safe))
                                (cons __tmp126218 __tmp126217))))
                        (declare (not safe))
                        (__SRC__% __tmp126216 _stx120150_)))
                    (let () (declare (not safe)) (_$E120154120163_))))
              (let () (declare (not safe)) (_$E120154120163_))))))
    (define __compile-ref%
      (lambda (_stx120112_)
        (let* ((_$e120114_ _stx120112_)
               (_$E120116120125_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120114_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120114_))
              (let* ((_$tgt120117120128_
                      (let () (declare (not safe)) (__AST-e _$e120114_)))
                     (_$hd120118120131_
                      (let () (declare (not safe)) (##car _$tgt120117120128_)))
                     (_$tl120119120134_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120117120128_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120119120134_))
                    (let* ((_$tgt120120120138_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120119120134_)))
                           (_$hd120121120141_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120120120138_)))
                           (_$tl120122120144_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120120120138_))))
                      (let ((_id120148_ _$hd120121120141_))
                        (if (let ((__tmp126219
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl120122120144_))))
                              (declare (not safe))
                              (equal? __tmp126219 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id120148_ _stx120112_))
                            (let () (declare (not safe)) (_$E120116120125_)))))
                    (let () (declare (not safe)) (_$E120116120125_))))
              (let () (declare (not safe)) (_$E120116120125_))))))
    (define __compile-setq%
      (lambda (_stx120059_)
        (let* ((_$e120061_ _stx120059_)
               (_$E120063120075_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120061_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120061_))
              (let* ((_$tgt120064120078_
                      (let () (declare (not safe)) (__AST-e _$e120061_)))
                     (_$hd120065120081_
                      (let () (declare (not safe)) (##car _$tgt120064120078_)))
                     (_$tl120066120084_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120064120078_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120066120084_))
                    (let* ((_$tgt120067120088_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120066120084_)))
                           (_$hd120068120091_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120067120088_)))
                           (_$tl120069120094_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120067120088_))))
                      (let ((_id120098_ _$hd120068120091_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120069120094_))
                            (let* ((_$tgt120070120100_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120069120094_)))
                                   (_$hd120071120103_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120070120100_)))
                                   (_$tl120072120106_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120070120100_))))
                              (let ((_expr120110_ _$hd120071120103_))
                                (if (let ((__tmp126225
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120072120106_))))
                                      (declare (not safe))
                                      (equal? __tmp126225 '()))
                                    (let ((__tmp126220
                                           (let ((__tmp126221
                                                  (let ((__tmp126224
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id120098_
                                                            _stx120059_)))
                                                        (__tmp126222
                                                         (let ((__tmp126223
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr120110_))))
                   (declare (not safe))
                   (cons __tmp126223 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp126224
                                                          __tmp126222))))
                                             (declare (not safe))
                                             (cons 'set! __tmp126221))))
                                      (declare (not safe))
                                      (__SRC__% __tmp126220 _stx120059_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E120063120075_)))))
                            (let () (declare (not safe)) (_$E120063120075_)))))
                    (let () (declare (not safe)) (_$E120063120075_))))
              (let () (declare (not safe)) (_$E120063120075_))))))
    (define __compile-if%
      (lambda (_stx119991_)
        (let* ((_$e119993_ _stx119991_)
               (_$E119995120010_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119993_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119993_))
              (let* ((_$tgt119996120013_
                      (let () (declare (not safe)) (__AST-e _$e119993_)))
                     (_$hd119997120016_
                      (let () (declare (not safe)) (##car _$tgt119996120013_)))
                     (_$tl119998120019_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119996120013_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119998120019_))
                    (let* ((_$tgt119999120023_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119998120019_)))
                           (_$hd120000120026_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119999120023_)))
                           (_$tl120001120029_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119999120023_))))
                      (let ((_p120033_ _$hd120000120026_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120001120029_))
                            (let* ((_$tgt120002120035_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120001120029_)))
                                   (_$hd120003120038_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120002120035_)))
                                   (_$tl120004120041_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120002120035_))))
                              (let ((_t120045_ _$hd120003120038_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl120004120041_))
                                    (let* ((_$tgt120005120047_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl120004120041_)))
                                           (_$hd120006120050_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt120005120047_)))
                                           (_$tl120007120053_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt120005120047_))))
                                      (let ((_f120057_ _$hd120006120050_))
                                        (if (let ((__tmp126233
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl120007120053_))))
                                              (declare (not safe))
                                              (equal? __tmp126233 '()))
                                            (let ((__tmp126226
                                                   (let ((__tmp126227
                                                          (let ((__tmp126232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p120033_)))
                        (__tmp126228
                         (let ((__tmp126231
                                (let ()
                                  (declare (not safe))
                                  (__compile _t120045_)))
                               (__tmp126229
                                (let ((__tmp126230
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f120057_))))
                                  (declare (not safe))
                                  (cons __tmp126230 '()))))
                           (declare (not safe))
                           (cons __tmp126231 __tmp126229))))
                    (declare (not safe))
                    (cons __tmp126232 __tmp126228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp126227))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp126226
                                               _stx119991_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E119995120010_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E119995120010_)))))
                            (let () (declare (not safe)) (_$E119995120010_)))))
                    (let () (declare (not safe)) (_$E119995120010_))))
              (let () (declare (not safe)) (_$E119995120010_))))))
    (define __compile-quote%
      (lambda (_stx119953_)
        (let* ((_$e119955_ _stx119953_)
               (_$E119957119966_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119955_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119955_))
              (let* ((_$tgt119958119969_
                      (let () (declare (not safe)) (__AST-e _$e119955_)))
                     (_$hd119959119972_
                      (let () (declare (not safe)) (##car _$tgt119958119969_)))
                     (_$tl119960119975_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119958119969_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119960119975_))
                    (let* ((_$tgt119961119979_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119960119975_)))
                           (_$hd119962119982_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119961119979_)))
                           (_$tl119963119985_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119961119979_))))
                      (let ((_e119989_ _$hd119962119982_))
                        (if (let ((__tmp126237
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl119963119985_))))
                              (declare (not safe))
                              (equal? __tmp126237 '()))
                            (let ((__tmp126234
                                   (let ((__tmp126235
                                          (let ((__tmp126236
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e119989_))))
                                            (declare (not safe))
                                            (cons __tmp126236 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp126235))))
                              (declare (not safe))
                              (__SRC__% __tmp126234 _stx119953_))
                            (let () (declare (not safe)) (_$E119957119966_)))))
                    (let () (declare (not safe)) (_$E119957119966_))))
              (let () (declare (not safe)) (_$E119957119966_))))))
    (define __compile-quote-syntax%
      (lambda (_stx119915_)
        (let* ((_$e119917_ _stx119915_)
               (_$E119919119928_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119917_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119917_))
              (let* ((_$tgt119920119931_
                      (let () (declare (not safe)) (__AST-e _$e119917_)))
                     (_$hd119921119934_
                      (let () (declare (not safe)) (##car _$tgt119920119931_)))
                     (_$tl119922119937_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119920119931_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119922119937_))
                    (let* ((_$tgt119923119941_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119922119937_)))
                           (_$hd119924119944_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119923119941_)))
                           (_$tl119925119947_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119923119941_))))
                      (let ((_e119951_ _$hd119924119944_))
                        (if (let ((__tmp126240
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl119925119947_))))
                              (declare (not safe))
                              (equal? __tmp126240 '()))
                            (let ((__tmp126238
                                   (let ((__tmp126239
                                          (let ()
                                            (declare (not safe))
                                            (cons _e119951_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp126239))))
                              (declare (not safe))
                              (__SRC__% __tmp126238 _stx119915_))
                            (let () (declare (not safe)) (_$E119919119928_)))))
                    (let () (declare (not safe)) (_$E119919119928_))))
              (let () (declare (not safe)) (_$E119919119928_))))))
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
