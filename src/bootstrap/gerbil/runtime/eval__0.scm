(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708343715)
  (begin
    (define __syntax::t
      (let ((__tmp76776 (list))
            (__tmp76774
             (let ((__tmp76775
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76775 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp76776
         '(e id)
         __tmp76774
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args76585_ (apply make-instance __syntax::t _$args76585_)))
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
      (let ((__tmp76779 (list __syntax::t))
            (__tmp76777
             (let ((__tmp76778
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76778 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp76779
         '()
         __tmp76777
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args76582_ (apply make-instance __core-form::t _$args76582_)))
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
      (let ((__tmp76782 (list __core-form::t))
            (__tmp76780
             (let ((__tmp76781
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76781 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp76782
         '()
         __tmp76780
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args76579_
        (apply make-instance __core-expression::t _$args76579_)))
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
      (let ((__tmp76785 (list __core-form::t))
            (__tmp76783
             (let ((__tmp76784
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76784 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp76785
         '()
         __tmp76783
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args76576_
        (apply make-instance __core-special-form::t _$args76576_)))
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
      (lambda (_id76574_)
        (let ((__tmp76786 (let () (declare (not safe)) (__AST-e _id76574_))))
          (declare (not safe))
          (hash-get __core __tmp76786))))
    (define __core-bound-id?__%
      (lambda (_id76558_ _is?76559_)
        (let ((_$e76561_
               (let () (declare (not safe)) (__core-resolve _id76558_))))
          (if _$e76561_ (_is?76559_ _$e76561_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id76567_)
        (let ((_is?76569_ true))
          (declare (not safe))
          (__core-bound-id?__% _id76567_ _is?76569_))))
    (define __core-bound-id?
      (lambda _g76788_
        (let ((_g76787_ (let () (declare (not safe)) (##length _g76788_))))
          (cond ((let () (declare (not safe)) (##fx= _g76787_ 1))
                 (apply (lambda (_id76567_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id76567_)))
                        _g76788_))
                ((let () (declare (not safe)) (##fx= _g76787_ 2))
                 (apply (lambda (_id76571_ _is?76572_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id76571_ _is?76572_)))
                        _g76788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g76788_))))))
    (define __core-bind-syntax!__%
      (lambda (_id76541_ _e76542_ _make76543_)
        (let ((__tmp76789
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e76542_
                      'gerbil/runtime/eval#__syntax::t))
                   _e76542_
                   (_make76543_ _e76542_ _id76541_))))
          (declare (not safe))
          (hash-put! __core _id76541_ __tmp76789))))
    (define __core-bind-syntax!__0
      (lambda (_id76548_ _e76549_)
        (let ((_make76551_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id76548_ _e76549_ _make76551_))))
    (define __core-bind-syntax!
      (lambda _g76791_
        (let ((_g76790_ (let () (declare (not safe)) (##length _g76791_))))
          (cond ((let () (declare (not safe)) (##fx= _g76790_ 2))
                 (apply (lambda (_id76548_ _e76549_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id76548_ _e76549_)))
                        _g76791_))
                ((let () (declare (not safe)) (##fx= _g76790_ 3))
                 (apply (lambda (_id76553_ _e76554_ _make76555_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id76553_
                             _e76554_
                             _make76555_)))
                        _g76791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g76791_))))))
    (define __SRC__%
      (lambda (_e76524_ _src-stx76525_)
        (if (or (let () (declare (not safe)) (pair? _e76524_))
                (let () (declare (not safe)) (symbol? _e76524_)))
            (let ((__tmp76795
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx76525_
                          'gerbil#AST::t))
                       (let ((__tmp76796
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx76525_))))
                         (declare (not safe))
                         (__locat __tmp76796))
                       '#f)))
              (declare (not safe))
              (##make-source _e76524_ __tmp76795))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e76524_ 'gerbil#AST::t))
                (let ((__tmp76794
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e76524_ '1 AST::t '#f)))
                      (__tmp76792
                       (let ((__tmp76793
                              (let ()
                                (declare (not safe))
                                (__AST-source _e76524_))))
                         (declare (not safe))
                         (__locat __tmp76793))))
                  (declare (not safe))
                  (##make-source __tmp76794 __tmp76792))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e76524_))))))
    (define __SRC__0
      (lambda (_e76533_)
        (let ((_src-stx76535_ '#f))
          (declare (not safe))
          (__SRC__% _e76533_ _src-stx76535_))))
    (define __SRC
      (lambda _g76798_
        (let ((_g76797_ (let () (declare (not safe)) (##length _g76798_))))
          (cond ((let () (declare (not safe)) (##fx= _g76797_ 1))
                 (apply (lambda (_e76533_)
                          (let () (declare (not safe)) (__SRC__0 _e76533_)))
                        _g76798_))
                ((let () (declare (not safe)) (##fx= _g76797_ 2))
                 (apply (lambda (_e76537_ _src-stx76538_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e76537_ _src-stx76538_)))
                        _g76798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g76798_))))))
    (define __locat
      (lambda (_loc76521_)
        (if (let () (declare (not safe)) (##locat? _loc76521_))
            _loc76521_
            '#f)))
    (define __check-values
      (lambda (_obj76516_ _k76517_)
        (let ((_count76519_
               (if (let () (declare (not safe)) (##values? _obj76516_))
                   (let () (declare (not safe)) (##vector-length _obj76516_))
                   '1)))
          (if (fx= _count76519_ _k76517_)
              '#!void
              (let ((__tmp76800
                     (if (fx< _count76519_ _k76517_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp76799
                     (if (let () (declare (not safe)) (##values? _obj76516_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj76516_))
                         _obj76516_)))
                (declare (not safe))
                (error __tmp76800 __tmp76799 _k76517_))))))
    (define __compile
      (lambda (_stx76486_)
        (let* ((_$e76488_ _stx76486_)
               (_$E7649076496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76488_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76488_))
              (let* ((_$tgt7649176499_
                      (let () (declare (not safe)) (__AST-e _$e76488_)))
                     (_$hd7649276502_
                      (let () (declare (not safe)) (##car _$tgt7649176499_)))
                     (_$tl7649376505_
                      (let () (declare (not safe)) (##cdr _$tgt7649176499_))))
                (let* ((_form76509_ _$hd7649276502_)
                       (_$e76511_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form76509_))))
                  (if _$e76511_
                      ((lambda (_bind76514_)
                         ((##structure-ref _bind76514_ '1 __syntax::t '#f)
                          _stx76486_))
                       _$e76511_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx76486_
                         _form76509_)))))
              (let () (declare (not safe)) (_$E7649076496_))))))
    (define __compile-error__%
      (lambda (_stx76473_ _detail76474_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx76473_
           _detail76474_))))
    (define __compile-error__0
      (lambda (_stx76479_)
        (let ((_detail76481_ '#f))
          (declare (not safe))
          (__compile-error__% _stx76479_ _detail76481_))))
    (define __compile-error
      (lambda _g76802_
        (let ((_g76801_ (let () (declare (not safe)) (##length _g76802_))))
          (cond ((let () (declare (not safe)) (##fx= _g76801_ 1))
                 (apply (lambda (_stx76479_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx76479_)))
                        _g76802_))
                ((let () (declare (not safe)) (##fx= _g76801_ 2))
                 (apply (lambda (_stx76483_ _detail76484_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx76483_ _detail76484_)))
                        _g76802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g76802_))))))
    (define __compile-ignore%
      (lambda (_stx76470_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx76470_))))
    (define __compile-begin%
      (lambda (_stx76445_)
        (let* ((_$e76447_ _stx76445_)
               (_$E7644976455_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76447_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76447_))
              (let* ((_$tgt7645076458_
                      (let () (declare (not safe)) (__AST-e _$e76447_)))
                     (_$hd7645176461_
                      (let () (declare (not safe)) (##car _$tgt7645076458_)))
                     (_$tl7645276464_
                      (let () (declare (not safe)) (##cdr _$tgt7645076458_))))
                (let* ((_body76468_ _$tl7645276464_)
                       (__tmp76803
                        (let ((__tmp76804 (map __compile _body76468_)))
                          (declare (not safe))
                          (cons 'begin __tmp76804))))
                  (declare (not safe))
                  (__SRC__% __tmp76803 _stx76445_)))
              (let () (declare (not safe)) (_$E7644976455_))))))
    (define __compile-begin-foreign%
      (lambda (_stx76420_)
        (let* ((_$e76422_ _stx76420_)
               (_$E7642476430_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76422_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76422_))
              (let* ((_$tgt7642576433_
                      (let () (declare (not safe)) (__AST-e _$e76422_)))
                     (_$hd7642676436_
                      (let () (declare (not safe)) (##car _$tgt7642576433_)))
                     (_$tl7642776439_
                      (let () (declare (not safe)) (##cdr _$tgt7642576433_))))
                (let* ((_body76443_ _$tl7642776439_)
                       (__tmp76805
                        (let ((__tmp76806
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body76443_))))
                          (declare (not safe))
                          (cons 'begin __tmp76806))))
                  (declare (not safe))
                  (__SRC__% __tmp76805 _stx76420_)))
              (let () (declare (not safe)) (_$E7642476430_))))))
    (define __compile-import%
      (lambda (_stx76395_)
        (let* ((_$e76397_ _stx76395_)
               (_$E7639976405_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76397_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76397_))
              (let* ((_$tgt7640076408_
                      (let () (declare (not safe)) (__AST-e _$e76397_)))
                     (_$hd7640176411_
                      (let () (declare (not safe)) (##car _$tgt7640076408_)))
                     (_$tl7640276414_
                      (let () (declare (not safe)) (##cdr _$tgt7640076408_))))
                (let* ((_body76418_ _$tl7640276414_)
                       (__tmp76807
                        (let ((__tmp76808
                               (let ((__tmp76809
                                      (let ((__tmp76810
                                             (let ()
                                               (declare (not safe))
                                               (cons _body76418_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp76810))))
                                 (declare (not safe))
                                 (cons __tmp76809 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp76808))))
                  (declare (not safe))
                  (__SRC__% __tmp76807 _stx76395_)))
              (let () (declare (not safe)) (_$E7639976405_))))))
    (define __compile-begin-annotation%
      (lambda (_stx76342_)
        (let* ((_$e76344_ _stx76342_)
               (_$E7634676358_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76344_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76344_))
              (let* ((_$tgt7634776361_
                      (let () (declare (not safe)) (__AST-e _$e76344_)))
                     (_$hd7634876364_
                      (let () (declare (not safe)) (##car _$tgt7634776361_)))
                     (_$tl7634976367_
                      (let () (declare (not safe)) (##cdr _$tgt7634776361_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7634976367_))
                    (let* ((_$tgt7635076371_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7634976367_)))
                           (_$hd7635176374_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7635076371_)))
                           (_$tl7635276377_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7635076371_))))
                      (let ((_ann76381_ _$hd7635176374_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7635276377_))
                            (let* ((_$tgt7635376383_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7635276377_)))
                                   (_$hd7635476386_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7635376383_)))
                                   (_$tl7635576389_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7635376383_))))
                              (let ((_expr76393_ _$hd7635476386_))
                                (if (let ((__tmp76811
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7635576389_))))
                                      (declare (not safe))
                                      (equal? __tmp76811 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr76393_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7634676358_)))))
                            (let () (declare (not safe)) (_$E7634676358_)))))
                    (let () (declare (not safe)) (_$E7634676358_))))
              (let () (declare (not safe)) (_$E7634676358_))))))
    (define __compile-define-values%
      (lambda (_stx76233_)
        (let* ((_$e76235_ _stx76233_)
               (_$E7623776249_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76235_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76235_))
              (let* ((_$tgt7623876252_
                      (let () (declare (not safe)) (__AST-e _$e76235_)))
                     (_$hd7623976255_
                      (let () (declare (not safe)) (##car _$tgt7623876252_)))
                     (_$tl7624076258_
                      (let () (declare (not safe)) (##cdr _$tgt7623876252_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7624076258_))
                    (let* ((_$tgt7624176262_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7624076258_)))
                           (_$hd7624276265_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7624176262_)))
                           (_$tl7624376268_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7624176262_))))
                      (let ((_hd76272_ _$hd7624276265_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7624376268_))
                            (let* ((_$tgt7624476274_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7624376268_)))
                                   (_$hd7624576277_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7624476274_)))
                                   (_$tl7624676280_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7624476274_))))
                              (let ((_expr76284_ _$hd7624576277_))
                                (if (let ((__tmp76844
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7624676280_))))
                                      (declare (not safe))
                                      (equal? __tmp76844 '()))
                                    (let* ((_$e76286_ _hd76272_)
                                           (_$E7628876329_
                                            (lambda ()
                                              (let ((_$E7628976314_
                                                     (lambda ()
                                                       (let* ((_$E7629076301_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e76286_))))
                      (_ids76304_ _hd76272_)
                      (_len76306_ (length _ids76304_))
                      (_tmp76308_
                       (let ((__tmp76812 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp76812))))
                 (let ((__tmp76813
                        (let ((__tmp76814
                               (let ((__tmp76831
                                      (let ((__tmp76832
                                             (let ((__tmp76833
                                                    (let ((__tmp76834
                                                           (let ((__tmp76835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr76284_))))
                     (declare (not safe))
                     (cons __tmp76835 '()))))
              (declare (not safe))
              (cons _tmp76308_ __tmp76834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp76833))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76832 _stx76233_)))
                                     (__tmp76815
                                      (let ((__tmp76827
                                             (let ((__tmp76828
                                                    (let ((__tmp76829
                                                           (let ((__tmp76830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len76306_ '()))))
                     (declare (not safe))
                     (cons _tmp76308_ __tmp76830))))
              (declare (not safe))
              (cons '__check-values __tmp76829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp76828
                                                _stx76233_)))
                                            (__tmp76816
                                             (let ((__tmp76817
                                                    (let ((__tmp76819
                                                           (lambda (_id76311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k76312_)
                     (if (let () (declare (not safe)) (__AST-e _id76311_))
                         (let ((__tmp76820
                                (let ((__tmp76821
                                       (let ((__tmp76826
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id76311_)))
                                             (__tmp76822
                                              (let ((__tmp76823
                                                     (let ((__tmp76824
                                                            (let ((__tmp76825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k76312_ '()))))
                      (declare (not safe))
                      (cons _tmp76308_ __tmp76825))))
               (declare (not safe))
               (cons '##vector-ref __tmp76824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76823 '()))))
                                         (declare (not safe))
                                         (cons __tmp76826 __tmp76822))))
                                  (declare (not safe))
                                  (cons 'define __tmp76821))))
                           (declare (not safe))
                           (__SRC__% __tmp76820 _stx76233_))
                         '#f)))
                  (__tmp76818
                   (let () (declare (not safe)) (iota__0 _len76306_))))
              (declare (not safe))
              (filter-map2 __tmp76819 _ids76304_ __tmp76818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp76817))))
                                        (declare (not safe))
                                        (cons __tmp76827 __tmp76816))))
                                 (declare (not safe))
                                 (cons __tmp76831 __tmp76815))))
                          (declare (not safe))
                          (cons 'begin __tmp76814))))
                   (declare (not safe))
                   (__SRC__% __tmp76813 _stx76233_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e76286_))
                                                    (let* ((_$tgt7629176317_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e76286_)))
                                                           (_$hd7629276320_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7629176317_)))
                                                           (_$tl7629376323_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7629176317_))))
                                                      (let ((_id76327_
                                                             _$hd7629276320_))
                                                        (if (let ((__tmp76841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7629376323_))))
                      (declare (not safe))
                      (equal? __tmp76841 '()))
                    (let ((__tmp76836
                           (let ((__tmp76837
                                  (let ((__tmp76840
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76327_)))
                                        (__tmp76838
                                         (let ((__tmp76839
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr76284_))))
                                           (declare (not safe))
                                           (cons __tmp76839 '()))))
                                    (declare (not safe))
                                    (cons __tmp76840 __tmp76838))))
                             (declare (not safe))
                             (cons 'define __tmp76837))))
                      (declare (not safe))
                      (__SRC__% __tmp76836 _stx76233_))
                    (let () (declare (not safe)) (_$E7628976314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7628976314_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e76286_))
                                          (let* ((_$tgt7629476332_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e76286_)))
                                                 (_$hd7629576335_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7629476332_)))
                                                 (_$tl7629676338_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7629476332_))))
                                            (if (let ((__tmp76843
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7629576335_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76843 '#f))
                                                (if (let ((__tmp76842
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7629676338_))))
                                                      (declare (not safe))
                                                      (equal? __tmp76842 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr76284_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7628876329_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7628876329_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7628876329_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7623776249_)))))
                            (let () (declare (not safe)) (_$E7623776249_)))))
                    (let () (declare (not safe)) (_$E7623776249_))))
              (let () (declare (not safe)) (_$E7623776249_))))))
    (define __compile-head-id
      (lambda (_e76231_)
        (let ((__tmp76845
               (if (let () (declare (not safe)) (__AST-e _e76231_))
                   _e76231_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp76845))))
    (define __compile-lambda-head
      (lambda (_hd76188_)
        (let _recur76190_ ((_rest76192_ _hd76188_))
          (let* ((_$e76194_ _rest76192_)
                 (_$E7619676214_
                  (lambda ()
                    (let ((_$E7619776211_
                           (lambda ()
                             (let* ((_$E7619876206_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e76194_))))
                                    (_tail76209_ _$e76194_))
                               (declare (not safe))
                               (__compile-head-id _tail76209_)))))
                      (if (let ((__tmp76846
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e76194_))))
                            (declare (not safe))
                            (equal? __tmp76846 '()))
                          '()
                          (let () (declare (not safe)) (_$E7619776211_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76194_))
                (let* ((_$tgt7619976217_
                        (let () (declare (not safe)) (__AST-e _$e76194_)))
                       (_$hd7620076220_
                        (let () (declare (not safe)) (##car _$tgt7619976217_)))
                       (_$tl7620176223_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7619976217_))))
                  (let* ((_hd76227_ _$hd7620076220_)
                         (_rest76229_ _$tl7620176223_))
                    (let ((__tmp76848
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd76227_)))
                          (__tmp76847
                           (let ()
                             (declare (not safe))
                             (_recur76190_ _rest76229_))))
                      (declare (not safe))
                      (cons __tmp76848 __tmp76847))))
                (let () (declare (not safe)) (_$E7619676214_)))))))
    (define __compile-lambda%
      (lambda (_stx76135_)
        (let* ((_$e76137_ _stx76135_)
               (_$E7613976151_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76137_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76137_))
              (let* ((_$tgt7614076154_
                      (let () (declare (not safe)) (__AST-e _$e76137_)))
                     (_$hd7614176157_
                      (let () (declare (not safe)) (##car _$tgt7614076154_)))
                     (_$tl7614276160_
                      (let () (declare (not safe)) (##cdr _$tgt7614076154_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7614276160_))
                    (let* ((_$tgt7614376164_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7614276160_)))
                           (_$hd7614476167_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7614376164_)))
                           (_$tl7614576170_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7614376164_))))
                      (let ((_hd76174_ _$hd7614476167_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7614576170_))
                            (let* ((_$tgt7614676176_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7614576170_)))
                                   (_$hd7614776179_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7614676176_)))
                                   (_$tl7614876182_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7614676176_))))
                              (let ((_body76186_ _$hd7614776179_))
                                (if (let ((__tmp76854
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7614876182_))))
                                      (declare (not safe))
                                      (equal? __tmp76854 '()))
                                    (let ((__tmp76849
                                           (let ((__tmp76850
                                                  (let ((__tmp76853
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd76174_)))
                                                        (__tmp76851
                                                         (let ((__tmp76852
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body76186_))))
                   (declare (not safe))
                   (cons __tmp76852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76853
                                                          __tmp76851))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp76850))))
                                      (declare (not safe))
                                      (__SRC__% __tmp76849 _stx76135_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7613976151_)))))
                            (let () (declare (not safe)) (_$E7613976151_)))))
                    (let () (declare (not safe)) (_$E7613976151_))))
              (let () (declare (not safe)) (_$E7613976151_))))))
    (define __compile-case-lambda%
      (lambda (_stx75927_)
        (letrec ((_variadic?75929_
                  (lambda (_hd76100_)
                    (let* ((_$e76102_ _hd76100_)
                           (_$E7610476120_
                            (lambda ()
                              (let ((_$E7610576117_
                                     (lambda ()
                                       (let ((_$E7610676114_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e76102_)))))
                                         '#t))))
                                (if (let ((__tmp76855
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e76102_))))
                                      (declare (not safe))
                                      (equal? __tmp76855 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7610576117_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76102_))
                          (let* ((_$tgt7610776123_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76102_)))
                                 (_$hd7610876126_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7610776123_)))
                                 (_$tl7610976129_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7610776123_))))
                            (let ((_rest76133_ _$tl7610976129_))
                              (declare (not safe))
                              (_variadic?75929_ _rest76133_)))
                          (let () (declare (not safe)) (_$E7610476120_))))))
                 (_arity75930_
                  (lambda (_hd76065_)
                    (let _lp76067_ ((_rest76069_ _hd76065_) (_k76070_ '0))
                      (let* ((_$e76072_ _rest76069_)
                             (_$E7607476085_
                              (lambda ()
                                (let ((_$E7607576082_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e76072_)))))
                                  _k76070_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e76072_))
                            (let* ((_$tgt7607676088_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e76072_)))
                                   (_$hd7607776091_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7607676088_)))
                                   (_$tl7607876094_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7607676088_))))
                              (let* ((_rest76098_ _$tl7607876094_)
                                     (__tmp76856
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k76070_ '1))))
                                (declare (not safe))
                                (_lp76067_ _rest76098_ __tmp76856)))
                            (let () (declare (not safe)) (_$E7607476085_)))))))
                 (_generate75931_
                  (lambda (_rest75992_ _args75993_ _len75994_)
                    (let* ((_$e75996_ _rest75992_)
                           (_$E7599876009_
                            (lambda ()
                              (let* ((_$E7599976006_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e75996_))))
                                     (__tmp76857
                                      (let ((__tmp76858
                                             (let ((__tmp76859
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args75993_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp76859))))
                                        (declare (not safe))
                                        (cons 'error __tmp76858))))
                                (declare (not safe))
                                (__SRC__% __tmp76857 _stx75927_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75996_))
                          (let* ((_$tgt7600076012_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75996_)))
                                 (_$hd7600176015_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7600076012_)))
                                 (_$tl7600276018_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7600076012_))))
                            (let* ((_clause76022_ _$hd7600176015_)
                                   (_rest76024_ _$tl7600276018_)
                                   (_$e76026_ _clause76022_)
                                   (_$E7602876037_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e76026_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e76026_))
                                  (let* ((_$tgt7602976040_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e76026_)))
                                         (_$hd7603076043_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7602976040_)))
                                         (_$tl7603176046_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7602976040_))))
                                    (let ((_hd76050_ _$hd7603076043_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7603176046_))
                                          (let* ((_$tgt7603276052_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7603176046_)))
                                                 (_$hd7603376055_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7603276052_)))
                                                 (_$tl7603476058_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7603276052_))))
                                            (if (let ((__tmp76874
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7603476058_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76874 '()))
                                                (let ((_clen76062_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity75930_
                                                          _hd76050_)))
                                                      (_cmp76063_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?75929_
                                                              _hd76050_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp76860
                                                         (let ((__tmp76861
                                                                (let ((__tmp76871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76872
                                      (let ((__tmp76873
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen76062_ '()))))
                                        (declare (not safe))
                                        (cons _len75994_ __tmp76873))))
                                 (declare (not safe))
                                 (cons _cmp76063_ __tmp76872)))
                              (__tmp76862
                               (let ((__tmp76865
                                      (let ((__tmp76866
                                             (let ((__tmp76867
                                                    (let ((__tmp76869
                                                           (let ((__tmp76870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause76022_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp76870)))
                  (__tmp76868
                   (let () (declare (not safe)) (cons _args75993_ '()))))
              (declare (not safe))
              (cons __tmp76869 __tmp76868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp76867))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76866 _stx75927_)))
                                     (__tmp76863
                                      (let ((__tmp76864
                                             (let ()
                                               (declare (not safe))
                                               (_generate75931_
                                                _rest76024_
                                                _args75993_
                                                _len75994_))))
                                        (declare (not safe))
                                        (cons __tmp76864 '()))))
                                 (declare (not safe))
                                 (cons __tmp76865 __tmp76863))))
                          (declare (not safe))
                          (cons __tmp76871 __tmp76862))))
                   (declare (not safe))
                   (cons 'if __tmp76861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp76860
                                                     _stx75927_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7602876037_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7602876037_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7602876037_)))))
                          (let () (declare (not safe)) (_$E7599876009_)))))))
          (let* ((_$e75933_ _stx75927_)
                 (_$E7593575967_
                  (lambda ()
                    (let ((_$E7593675949_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75933_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75933_))
                          (let* ((_$tgt7593775952_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75933_)))
                                 (_$hd7593875955_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7593775952_)))
                                 (_$tl7593975958_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7593775952_))))
                            (let ((_clauses75962_ _$tl7593975958_))
                              (let ((_args75964_
                                     (let ((__tmp76875 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76875 _stx75927_)))
                                    (_len75965_
                                     (let ((__tmp76876 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76876 _stx75927_))))
                                (let ((__tmp76877
                                       (let ((__tmp76878
                                              (let ((__tmp76879
                                                     (let ((__tmp76880
                                                            (let ((__tmp76881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76882
                                  (let ((__tmp76885
                                         (let ((__tmp76886
                                                (let ((__tmp76887
                                                       (let ((__tmp76888
                                                              (let ((__tmp76889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp76890
                                    (let ()
                                      (declare (not safe))
                                      (cons _args75964_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp76890))))
                        (declare (not safe))
                        (__SRC__% __tmp76889 _stx75927_))))
                 (declare (not safe))
                 (cons __tmp76888 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len75965_
                                                        __tmp76887))))
                                           (declare (not safe))
                                           (cons __tmp76886 '())))
                                        (__tmp76883
                                         (let ((__tmp76884
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate75931_
                                                   _clauses75962_
                                                   _args75964_
                                                   _len75965_))))
                                           (declare (not safe))
                                           (cons __tmp76884 '()))))
                                    (declare (not safe))
                                    (cons __tmp76885 __tmp76883))))
                             (declare (not safe))
                             (cons 'let __tmp76882))))
                      (declare (not safe))
                      (__SRC__% __tmp76881 _stx75927_))))
               (declare (not safe))
               (cons __tmp76880 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args75964_
                                                      __tmp76879))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp76878))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76877 _stx75927_)))))
                          (let () (declare (not safe)) (_$E7593675949_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75933_))
                (let* ((_$tgt7594075970_
                        (let () (declare (not safe)) (__AST-e _$e75933_)))
                       (_$hd7594175973_
                        (let () (declare (not safe)) (##car _$tgt7594075970_)))
                       (_$tl7594275976_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7594075970_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7594275976_))
                      (let* ((_$tgt7594375980_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7594275976_)))
                             (_$hd7594475983_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7594375980_)))
                             (_$tl7594575986_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7594375980_))))
                        (let ((_clause75990_ _$hd7594475983_))
                          (if (let ((__tmp76892
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7594575986_))))
                                (declare (not safe))
                                (equal? __tmp76892 '()))
                              (let ((__tmp76891
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause75990_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp76891))
                              (let () (declare (not safe)) (_$E7593575967_)))))
                      (let () (declare (not safe)) (_$E7593575967_))))
                (let () (declare (not safe)) (_$E7593575967_)))))))
    (define __compile-let-form
      (lambda (_stx75696_ _compile-simple75697_ _compile-values75698_)
        (letrec ((_simple-bind?75700_
                  (lambda (_hd75885_)
                    (let* ((_hd7588675896_ _hd75885_)
                           (_else7588975904_ (lambda () '#f)))
                      (let ((_K7589275917_ (lambda (_id75915_) '#t))
                            (_K7589175909_ (lambda () '#t)))
                        (let ((_try-match7588875912_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7588675896_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7589175909_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7588975904_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7588675896_))
                              (let ((_tl7589475922_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7588675896_)))
                                    (_hd7589375920_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7588675896_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7589475922_))
                                    (let ((_id75925_ _hd7589375920_))
                                      (declare (not safe))
                                      (_K7589275917_ _id75925_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7588875912_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7588875912_))))))))
                 (_car-e75701_
                  (lambda (_hd75883_)
                    (if (let () (declare (not safe)) (pair? _hd75883_))
                        (car _hd75883_)
                        _hd75883_))))
          (let* ((_$e75703_ _stx75696_)
                 (_$E7570575848_
                  (lambda ()
                    (let ((_$E7570675728_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75703_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75703_))
                          (let* ((_$tgt7570775731_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75703_)))
                                 (_$hd7570875734_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7570775731_)))
                                 (_$tl7570975737_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7570775731_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7570975737_))
                                (let* ((_$tgt7571075741_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7570975737_)))
                                       (_$hd7571175744_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7571075741_)))
                                       (_$tl7571275747_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7571075741_))))
                                  (let ((_hd75751_ _$hd7571175744_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7571275747_))
                                        (let* ((_$tgt7571375753_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7571275747_)))
                                               (_$hd7571475756_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7571375753_)))
                                               (_$tl7571575759_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7571375753_))))
                                          (let ((_body75763_ _$hd7571475756_))
                                            (if (let ((__tmp76895
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7571575759_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76895 '()))
                                                (let* ((_hd-ids75803_
                                                        (map (lambda (_bind75765_)
                                                               (let* ((_$e75767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind75765_)
                              (_$E7576975778_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75767_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75767_))
                             (let* ((_$tgt7577075781_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75767_)))
                                    (_$hd7577175784_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7577075781_)))
                                    (_$tl7577275787_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7577075781_))))
                               (let ((_ids75791_ _$hd7577175784_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7577275787_))
                                     (let* ((_$tgt7577375793_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7577275787_)))
                                            (_$hd7577475796_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7577375793_)))
                                            (_$tl7577575799_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7577375793_))))
                                       (if (let ((__tmp76893
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7577575799_))))
                                             (declare (not safe))
                                             (equal? __tmp76893 '()))
                                           _ids75791_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7576975778_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7576975778_)))))
                             (let () (declare (not safe)) (_$E7576975778_)))))
                     _hd75751_))
               (_exprs75843_
                (map (lambda (_bind75805_)
                       (let* ((_$e75807_ _bind75805_)
                              (_$E7580975818_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75807_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75807_))
                             (let* ((_$tgt7581075821_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75807_)))
                                    (_$hd7581175824_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7581075821_)))
                                    (_$tl7581275827_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7581075821_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7581275827_))
                                   (let* ((_$tgt7581375831_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7581275827_)))
                                          (_$hd7581475834_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7581375831_)))
                                          (_$tl7581575837_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7581375831_))))
                                     (let ((_expr75841_ _$hd7581475834_))
                                       (if (let ((__tmp76894
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7581575837_))))
                                             (declare (not safe))
                                             (equal? __tmp76894 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr75841_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7580975818_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7580975818_))))
                             (let () (declare (not safe)) (_$E7580975818_)))))
                     _hd75751_))
               (_body75845_
                (let () (declare (not safe)) (__compile _body75763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?75700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids75803_))
              (_compile-simple75697_
               (map _car-e75701_ _hd-ids75803_)
               _exprs75843_
               _body75845_)
              (_compile-values75698_ _hd-ids75803_ _exprs75843_ _body75845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7570675728_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7570675728_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7570675728_))))
                          (let () (declare (not safe)) (_$E7570675728_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75703_))
                (let* ((_$tgt7571675851_
                        (let () (declare (not safe)) (__AST-e _$e75703_)))
                       (_$hd7571775854_
                        (let () (declare (not safe)) (##car _$tgt7571675851_)))
                       (_$tl7571875857_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7571675851_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7571875857_))
                      (let* ((_$tgt7571975861_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7571875857_)))
                             (_$hd7572075864_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7571975861_)))
                             (_$tl7572175867_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7571975861_))))
                        (if (let ((__tmp76897
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7572075864_))))
                              (declare (not safe))
                              (equal? __tmp76897 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7572175867_))
                                (let* ((_$tgt7572275871_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7572175867_)))
                                       (_$hd7572375874_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7572275871_)))
                                       (_$tl7572475877_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7572275871_))))
                                  (let ((_body75881_ _$hd7572375874_))
                                    (if (let ((__tmp76896
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7572475877_))))
                                          (declare (not safe))
                                          (equal? __tmp76896 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body75881_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7570575848_)))))
                                (let () (declare (not safe)) (_$E7570575848_)))
                            (let () (declare (not safe)) (_$E7570575848_))))
                      (let () (declare (not safe)) (_$E7570575848_))))
                (let () (declare (not safe)) (_$E7570575848_)))))))
    (define __compile-let-values%
      (lambda (_stx75511_)
        (letrec ((_compile-simple75513_
                  (lambda (_hd-ids75692_ _exprs75693_ _body75694_)
                    (let ((__tmp76898
                           (let ((__tmp76899
                                  (let ((__tmp76901
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75692_)
                                              _exprs75693_))
                                        (__tmp76900
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75694_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76901 __tmp76900))))
                             (declare (not safe))
                             (cons 'let __tmp76899))))
                      (declare (not safe))
                      (__SRC__% __tmp76898 _stx75511_))))
                 (_compile-values75514_
                  (lambda (_hd-ids75610_ _exprs75611_ _body75612_)
                    (let _lp75614_ ((_rest75616_ _hd-ids75610_)
                                    (_exprs75617_ _exprs75611_)
                                    (_bind75618_ '())
                                    (_post75619_ '()))
                      (let* ((_rest7562075634_ _rest75616_)
                             (_else7562375642_
                              (lambda ()
                                (let ((__tmp76902
                                       (let ((__tmp76903
                                              (let ((__tmp76906
                                                     (reverse _bind75618_))
                                                    (__tmp76904
                                                     (let ((__tmp76905
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post75515_
                                                               _post75619_
                                                               _body75612_))))
                                                       (declare (not safe))
                                                       (cons __tmp76905 '()))))
                                                (declare (not safe))
                                                (cons __tmp76906 __tmp76904))))
                                         (declare (not safe))
                                         (cons 'let __tmp76903))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76902 _stx75511_)))))
                        (let ((_K7562875675_
                               (lambda (_rest75672_ _id75673_)
                                 (let ((__tmp76912 (cdr _exprs75617_))
                                       (__tmp76907
                                        (let ((__tmp76908
                                               (let ((__tmp76911
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75673_)))
                                                     (__tmp76909
                                                      (let ((__tmp76910
                                                             (car _exprs75617_)))
                                                        (declare (not safe))
                                                        (cons __tmp76910
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76911
                                                       __tmp76909))))
                                          (declare (not safe))
                                          (cons __tmp76908 _bind75618_))))
                                   (declare (not safe))
                                   (_lp75614_
                                    _rest75672_
                                    __tmp76912
                                    __tmp76907
                                    _post75619_))))
                              (_K7562575657_
                               (lambda (_rest75646_ _hd75647_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75647_))
                                     (let ((__tmp76933 (cdr _exprs75617_))
                                           (__tmp76926
                                            (let ((__tmp76927
                                                   (let ((__tmp76932
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75647_)))
                                                         (__tmp76928
                                                          (let ((__tmp76929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76930
                                (let ((__tmp76931 (car _exprs75617_)))
                                  (declare (not safe))
                                  (cons __tmp76931 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76930))))
                    (declare (not safe))
                    (cons __tmp76929 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76932
                                                           __tmp76928))))
                                              (declare (not safe))
                                              (cons __tmp76927 _bind75618_))))
                                       (declare (not safe))
                                       (_lp75614_
                                        _rest75646_
                                        __tmp76933
                                        __tmp76926
                                        _post75619_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75647_))
                                         (let* ((_len75649_ (length _hd75647_))
                                                (_tmp75651_
                                                 (let ((__tmp76913 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76913))))
                                           (let ((__tmp76925
                                                  (cdr _exprs75617_))
                                                 (__tmp76921
                                                  (let ((__tmp76922
                                                         (let ((__tmp76923
                                                                (let ((__tmp76924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75617_)))
                          (declare (not safe))
                          (cons __tmp76924 '()))))
                   (declare (not safe))
                   (cons _tmp75651_ __tmp76923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76922
                                                          _bind75618_)))
                                                 (__tmp76914
                                                  (let ((__tmp76915
                                                         (let ((__tmp76916
                                                                (let ((__tmp76917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76919
                                      (lambda (_id75654_ _k75655_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75654_))
                                            (let ((__tmp76920
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75654_))))
                                              (declare (not safe))
                                              (cons __tmp76920 _k75655_))
                                            '#f)))
                                     (__tmp76918
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75649_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76919
                                  _hd75647_
                                  __tmp76918))))
                          (declare (not safe))
                          (cons _len75649_ __tmp76917))))
                   (declare (not safe))
                   (cons _tmp75651_ __tmp76916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76915
                                                          _post75619_))))
                                             (declare (not safe))
                                             (_lp75614_
                                              _rest75646_
                                              __tmp76925
                                              __tmp76921
                                              __tmp76914)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75511_
                                            _hd75647_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7562075634_))
                              (let ((_tl7563075680_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7562075634_)))
                                    (_hd7562975678_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7562075634_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7562975678_))
                                    (let ((_tl7563275685_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7562975678_)))
                                          (_hd7563175683_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7562975678_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7563275685_))
                                          (let ((_id75688_ _hd7563175683_)
                                                (_rest75690_ _tl7563075680_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7562875675_
                                               _rest75690_
                                               _id75688_)))
                                          (let ((_hd75665_ _hd7562975678_)
                                                (_rest75667_ _tl7563075680_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7562575657_
                                               _rest75667_
                                               _hd75665_)))))
                                    (let ((_hd75665_ _hd7562975678_)
                                          (_rest75667_ _tl7563075680_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7562575657_
                                         _rest75667_
                                         _hd75665_)))))
                              (let ()
                                (declare (not safe))
                                (_else7562375642_))))))))
                 (_compile-post75515_
                  (lambda (_post75517_ _body75518_)
                    (let _lp75520_ ((_rest75522_ _post75517_)
                                    (_check75523_ '())
                                    (_bind75524_ '()))
                      (let* ((_rest7552575537_ _rest75522_)
                             (_else7552775545_
                              (lambda ()
                                (let ((__tmp76934
                                       (let ((__tmp76935
                                              (let ((__tmp76936
                                                     (let ((__tmp76937
                                                            (let ((__tmp76938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76939
                                  (let ((__tmp76940
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75518_ '()))))
                                    (declare (not safe))
                                    (cons _bind75524_ __tmp76940))))
                             (declare (not safe))
                             (cons 'let __tmp76939))))
                      (declare (not safe))
                      (__SRC__% __tmp76938 _stx75511_))))
               (declare (not safe))
               (cons __tmp76937 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp76936
                                                        _check75523_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp76935))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76934 _stx75511_))))
                             (_K7552975584_
                              (lambda (_rest75548_
                                       _init75549_
                                       _len75550_
                                       _tmp75551_)
                                (let ((__tmp76948
                                       (let ((__tmp76949
                                              (let ((__tmp76950
                                                     (let ((__tmp76951
                                                            (let ((__tmp76952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75550_ '()))))
                      (declare (not safe))
                      (cons _tmp75551_ __tmp76952))))
               (declare (not safe))
               (cons '__check-values __tmp76951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp76950
                                                 _stx75511_))))
                                         (declare (not safe))
                                         (cons __tmp76949 _check75523_)))
                                      (__tmp76941
                                       (let ((__tmp76942
                                              (lambda (_hd75553_ _r75554_)
                                                (let* ((_hd7555575562_
                                                        _hd75553_)
                                                       (_E7555775566_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7555575562_))))
               (_K7555875572_
                (lambda (_k75569_ _id75570_)
                  (let ((__tmp76943
                         (let ((__tmp76944
                                (let ((__tmp76945
                                       (let ((__tmp76946
                                              (let ((__tmp76947
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k75569_ '()))))
                                                (declare (not safe))
                                                (cons _tmp75551_ __tmp76947))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp76946))))
                                  (declare (not safe))
                                  (cons __tmp76945 '()))))
                           (declare (not safe))
                           (cons _id75570_ __tmp76944))))
                    (declare (not safe))
                    (cons __tmp76943 _r75554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7555575562_))
                                                      (let ((_hd7555975575_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7555575562_)))
                    (_tl7556075577_
                     (let () (declare (not safe)) (##cdr _hd7555575562_))))
                (let* ((_id75580_ _hd7555975575_) (_k75582_ _tl7556075577_))
                  (declare (not safe))
                  (_K7555875572_ _k75582_ _id75580_)))
              (let () (declare (not safe)) (_E7555775566_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp76942
                                                 _bind75524_
                                                 _init75549_))))
                                  (declare (not safe))
                                  (_lp75520_
                                   _rest75548_
                                   __tmp76948
                                   __tmp76941)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7552575537_))
                            (let ((_hd7553075587_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7552575537_)))
                                  (_tl7553175589_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7552575537_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7553075587_))
                                  (let ((_hd7553275592_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7553075587_)))
                                        (_tl7553375594_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7553075587_))))
                                    (let ((_tmp75597_ _hd7553275592_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7553375594_))
                                          (let ((_hd7553475599_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7553375594_)))
                                                (_tl7553575601_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7553375594_))))
                                            (let* ((_len75604_ _hd7553475599_)
                                                   (_init75606_ _tl7553575601_)
                                                   (_rest75608_
                                                    _tl7553175589_))
                                              (declare (not safe))
                                              (_K7552975584_
                                               _rest75608_
                                               _init75606_
                                               _len75604_
                                               _tmp75597_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7552775545_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7552775545_))))
                            (let ()
                              (declare (not safe))
                              (_else7552775545_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75511_
             _compile-simple75513_
             _compile-values75514_)))))
    (define __compile-letrec-values%
      (lambda (_stx75311_)
        (letrec ((_compile-simple75313_
                  (lambda (_hd-ids75507_ _exprs75508_ _body75509_)
                    (let ((__tmp76953
                           (let ((__tmp76954
                                  (let ((__tmp76956
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75507_)
                                              _exprs75508_))
                                        (__tmp76955
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75509_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76956 __tmp76955))))
                             (declare (not safe))
                             (cons 'letrec __tmp76954))))
                      (declare (not safe))
                      (__SRC__% __tmp76953 _stx75311_))))
                 (_compile-values75314_
                  (lambda (_hd-ids75421_ _exprs75422_ _body75423_)
                    (let _lp75425_ ((_rest75427_ _hd-ids75421_)
                                    (_exprs75428_ _exprs75422_)
                                    (_pre75429_ '())
                                    (_bind75430_ '())
                                    (_post75431_ '()))
                      (let* ((_rest7543275446_ _rest75427_)
                             (_else7543575454_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner75315_
                                   _pre75429_
                                   _bind75430_
                                   _post75431_
                                   _body75423_)))))
                        (let ((_K7544075490_
                               (lambda (_rest75487_ _id75488_)
                                 (let ((__tmp76962 (cdr _exprs75428_))
                                       (__tmp76957
                                        (let ((__tmp76958
                                               (let ((__tmp76961
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75488_)))
                                                     (__tmp76959
                                                      (let ((__tmp76960
                                                             (car _exprs75428_)))
                                                        (declare (not safe))
                                                        (cons __tmp76960
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76961
                                                       __tmp76959))))
                                          (declare (not safe))
                                          (cons __tmp76958 _bind75430_))))
                                   (declare (not safe))
                                   (_lp75425_
                                    _rest75487_
                                    __tmp76962
                                    _pre75429_
                                    __tmp76957
                                    _post75431_))))
                              (_K7543775472_
                               (lambda (_rest75458_ _hd75459_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75459_))
                                     (let ((__tmp76990 (cdr _exprs75428_))
                                           (__tmp76983
                                            (let ((__tmp76984
                                                   (let ((__tmp76989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75459_)))
                                                         (__tmp76985
                                                          (let ((__tmp76986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76987
                                (let ((__tmp76988 (car _exprs75428_)))
                                  (declare (not safe))
                                  (cons __tmp76988 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76987))))
                    (declare (not safe))
                    (cons __tmp76986 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76989
                                                           __tmp76985))))
                                              (declare (not safe))
                                              (cons __tmp76984 _bind75430_))))
                                       (declare (not safe))
                                       (_lp75425_
                                        _rest75458_
                                        __tmp76990
                                        _pre75429_
                                        __tmp76983
                                        _post75431_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75459_))
                                         (let* ((_len75461_ (length _hd75459_))
                                                (_tmp75463_
                                                 (let ((__tmp76963 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76963))))
                                           (let ((__tmp76982
                                                  (cdr _exprs75428_))
                                                 (__tmp76975
                                                  (let ((__tmp76976
                                                         (lambda (_id75466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r75467_)
                   (if (let () (declare (not safe)) (__AST-e _id75466_))
                       (let ((__tmp76977
                              (let ((__tmp76981
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id75466_)))
                                    (__tmp76978
                                     (let ((__tmp76979
                                            (let ((__tmp76980
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp76980))))
                                       (declare (not safe))
                                       (cons __tmp76979 '()))))
                                (declare (not safe))
                                (cons __tmp76981 __tmp76978))))
                         (declare (not safe))
                         (cons __tmp76977 _r75467_))
                       _r75467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp76976
                                                            _pre75429_
                                                            _hd75459_)))
                                                 (__tmp76971
                                                  (let ((__tmp76972
                                                         (let ((__tmp76973
                                                                (let ((__tmp76974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75428_)))
                          (declare (not safe))
                          (cons __tmp76974 '()))))
                   (declare (not safe))
                   (cons _tmp75463_ __tmp76973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76972
                                                          _bind75430_)))
                                                 (__tmp76964
                                                  (let ((__tmp76965
                                                         (let ((__tmp76966
                                                                (let ((__tmp76967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76969
                                      (lambda (_id75469_ _k75470_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75469_))
                                            (let ((__tmp76970
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75469_))))
                                              (declare (not safe))
                                              (cons __tmp76970 _k75470_))
                                            '#f)))
                                     (__tmp76968
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75461_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76969
                                  _hd75459_
                                  __tmp76968))))
                          (declare (not safe))
                          (cons _len75461_ __tmp76967))))
                   (declare (not safe))
                   (cons _tmp75463_ __tmp76966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76965
                                                          _post75431_))))
                                             (declare (not safe))
                                             (_lp75425_
                                              _rest75458_
                                              __tmp76982
                                              __tmp76975
                                              __tmp76971
                                              __tmp76964)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75311_
                                            _hd75459_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7543275446_))
                              (let ((_tl7544275495_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7543275446_)))
                                    (_hd7544175493_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7543275446_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7544175493_))
                                    (let ((_tl7544475500_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7544175493_)))
                                          (_hd7544375498_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7544175493_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7544475500_))
                                          (let ((_id75503_ _hd7544375498_)
                                                (_rest75505_ _tl7544275495_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7544075490_
                                               _rest75505_
                                               _id75503_)))
                                          (let ((_hd75480_ _hd7544175493_)
                                                (_rest75482_ _tl7544275495_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7543775472_
                                               _rest75482_
                                               _hd75480_)))))
                                    (let ((_hd75480_ _hd7544175493_)
                                          (_rest75482_ _tl7544275495_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7543775472_
                                         _rest75482_
                                         _hd75480_)))))
                              (let ()
                                (declare (not safe))
                                (_else7543575454_))))))))
                 (_compile-inner75315_
                  (lambda (_pre75416_ _bind75417_ _post75418_ _body75419_)
                    (if (let () (declare (not safe)) (null? _pre75416_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind75316_
                           _bind75417_
                           _post75418_
                           _body75419_))
                        (let ((__tmp76991
                               (let ((__tmp76992
                                      (let ((__tmp76995 (reverse _pre75416_))
                                            (__tmp76993
                                             (let ((__tmp76994
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind75316_
                                                       _bind75417_
                                                       _post75418_
                                                       _body75419_))))
                                               (declare (not safe))
                                               (cons __tmp76994 '()))))
                                        (declare (not safe))
                                        (cons __tmp76995 __tmp76993))))
                                 (declare (not safe))
                                 (cons 'let __tmp76992))))
                          (declare (not safe))
                          (__SRC__% __tmp76991 _stx75311_)))))
                 (_compile-bind75316_
                  (lambda (_bind75412_ _post75413_ _body75414_)
                    (let ((__tmp76996
                           (let ((__tmp76997
                                  (let ((__tmp77000 (reverse _bind75412_))
                                        (__tmp76998
                                         (let ((__tmp76999
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75317_
                                                   _post75413_
                                                   _body75414_))))
                                           (declare (not safe))
                                           (cons __tmp76999 '()))))
                                    (declare (not safe))
                                    (cons __tmp77000 __tmp76998))))
                             (declare (not safe))
                             (cons 'letrec __tmp76997))))
                      (declare (not safe))
                      (__SRC__% __tmp76996 _stx75311_))))
                 (_compile-post75317_
                  (lambda (_post75319_ _body75320_)
                    (let _lp75322_ ((_rest75324_ _post75319_)
                                    (_check75325_ '())
                                    (_bind75326_ '()))
                      (let* ((_rest7532775339_ _rest75324_)
                             (_else7532975347_
                              (lambda ()
                                (let ((__tmp77001
                                       (let ((__tmp77002
                                              (let ((__tmp77003
                                                     (let ((__tmp77004
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body75320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp77004 _bind75326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77003
                                                        _check75325_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77002))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77001 _stx75311_))))
                             (_K7533175386_
                              (lambda (_rest75350_
                                       _init75351_
                                       _len75352_
                                       _tmp75353_)
                                (let ((__tmp77013
                                       (let ((__tmp77014
                                              (let ((__tmp77015
                                                     (let ((__tmp77016
                                                            (let ((__tmp77017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75352_ '()))))
                      (declare (not safe))
                      (cons _tmp75353_ __tmp77017))))
               (declare (not safe))
               (cons '__check-values __tmp77016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77015
                                                 _stx75311_))))
                                         (declare (not safe))
                                         (cons __tmp77014 _check75325_)))
                                      (__tmp77005
                                       (let ((__tmp77006
                                              (lambda (_hd75355_ _r75356_)
                                                (let* ((_hd7535775364_
                                                        _hd75355_)
                                                       (_E7535975368_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7535775364_))))
               (_K7536075374_
                (lambda (_k75371_ _id75372_)
                  (let ((__tmp77007
                         (let ((__tmp77008
                                (let ((__tmp77009
                                       (let ((__tmp77010
                                              (let ((__tmp77011
                                                     (let ((__tmp77012
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k75371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp75353_ __tmp77012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp77011))))
                                         (declare (not safe))
                                         (cons __tmp77010 '()))))
                                  (declare (not safe))
                                  (cons _id75372_ __tmp77009))))
                           (declare (not safe))
                           (cons 'set! __tmp77008))))
                    (declare (not safe))
                    (cons __tmp77007 _r75356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7535775364_))
                                                      (let ((_hd7536175377_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7535775364_)))
                    (_tl7536275379_
                     (let () (declare (not safe)) (##cdr _hd7535775364_))))
                (let* ((_id75382_ _hd7536175377_) (_k75384_ _tl7536275379_))
                  (declare (not safe))
                  (_K7536075374_ _k75384_ _id75382_)))
              (let () (declare (not safe)) (_E7535975368_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77006
                                                 _bind75326_
                                                 _init75351_))))
                                  (declare (not safe))
                                  (_lp75322_
                                   _rest75350_
                                   __tmp77013
                                   __tmp77005)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7532775339_))
                            (let ((_hd7533275389_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7532775339_)))
                                  (_tl7533375391_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7532775339_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7533275389_))
                                  (let ((_hd7533475394_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7533275389_)))
                                        (_tl7533575396_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7533275389_))))
                                    (let ((_tmp75399_ _hd7533475394_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7533575396_))
                                          (let ((_hd7533675401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7533575396_)))
                                                (_tl7533775403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7533575396_))))
                                            (let* ((_len75406_ _hd7533675401_)
                                                   (_init75408_ _tl7533775403_)
                                                   (_rest75410_
                                                    _tl7533375391_))
                                              (declare (not safe))
                                              (_K7533175386_
                                               _rest75410_
                                               _init75408_
                                               _len75406_
                                               _tmp75399_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7532975347_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7532975347_))))
                            (let ()
                              (declare (not safe))
                              (_else7532975347_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75311_
             _compile-simple75313_
             _compile-values75314_)))))
    (define __compile-letrec*-values%
      (lambda (_stx75066_)
        (letrec ((_compile-simple75068_
                  (lambda (_hd-ids75307_ _exprs75308_ _body75309_)
                    (let ((__tmp77018
                           (let ((__tmp77019
                                  (let ((__tmp77021
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75307_)
                                              _exprs75308_))
                                        (__tmp77020
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75309_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77021 __tmp77020))))
                             (declare (not safe))
                             (cons 'letrec* __tmp77019))))
                      (declare (not safe))
                      (__SRC__% __tmp77018 _stx75066_))))
                 (_compile-values75069_
                  (lambda (_hd-ids75218_ _exprs75219_ _body75220_)
                    (let _lp75222_ ((_rest75224_ _hd-ids75218_)
                                    (_exprs75225_ _exprs75219_)
                                    (_bind75226_ '())
                                    (_post75227_ '()))
                      (let* ((_rest7522875242_ _rest75224_)
                             (_else7523175250_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind75070_
                                   _bind75226_
                                   _post75227_
                                   _body75220_)))))
                        (let ((_K7523675290_
                               (lambda (_rest75285_ _hd75286_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75286_))
                                     (let ((_id75288_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75286_))))
                                       (let ((__tmp77036 (cdr _exprs75225_))
                                             (__tmp77031
                                              (let ((__tmp77032
                                                     (let ((__tmp77033
                                                            (let ((__tmp77034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77035
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77035))))
                      (declare (not safe))
                      (cons __tmp77034 '()))))
               (declare (not safe))
               (cons _id75288_ __tmp77033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77032 _bind75226_)))
                                             (__tmp77027
                                              (let ((__tmp77028
                                                     (let ((__tmp77029
                                                            (let ((__tmp77030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs75225_)))
                      (declare (not safe))
                      (cons __tmp77030 '()))))
               (declare (not safe))
               (cons _id75288_ __tmp77029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77028
                                                      _post75227_))))
                                         (declare (not safe))
                                         (_lp75222_
                                          _rest75285_
                                          __tmp77036
                                          __tmp77031
                                          __tmp77027)))
                                     (let ((__tmp77026 (cdr _exprs75225_))
                                           (__tmp77022
                                            (let ((__tmp77023
                                                   (let ((__tmp77024
                                                          (let ((__tmp77025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs75225_)))
                    (declare (not safe))
                    (cons __tmp77025 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp77024))))
                                              (declare (not safe))
                                              (cons __tmp77023 _post75227_))))
                                       (declare (not safe))
                                       (_lp75222_
                                        _rest75285_
                                        __tmp77026
                                        _bind75226_
                                        __tmp77022)))))
                              (_K7523375270_
                               (lambda (_rest75254_ _hd75255_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75255_))
                                     (let ((_id75257_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75255_))))
                                       (let ((__tmp77072 (cdr _exprs75225_))
                                             (__tmp77067
                                              (let ((__tmp77068
                                                     (let ((__tmp77069
                                                            (let ((__tmp77070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77071
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77071))))
                      (declare (not safe))
                      (cons __tmp77070 '()))))
               (declare (not safe))
               (cons _id75257_ __tmp77069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77068 _bind75226_)))
                                             (__tmp77061
                                              (let ((__tmp77062
                                                     (let ((__tmp77063
                                                            (let ((__tmp77064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77065
                                  (let ((__tmp77066 (car _exprs75225_)))
                                    (declare (not safe))
                                    (cons __tmp77066 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp77065))))
                      (declare (not safe))
                      (cons __tmp77064 '()))))
               (declare (not safe))
               (cons _id75257_ __tmp77063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77062
                                                      _post75227_))))
                                         (declare (not safe))
                                         (_lp75222_
                                          _rest75254_
                                          __tmp77072
                                          __tmp77067
                                          __tmp77061)))
                                     (if (let ((__tmp77060
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd75255_))))
                                           (declare (not safe))
                                           (not __tmp77060))
                                         (let ((__tmp77059 (cdr _exprs75225_))
                                               (__tmp77055
                                                (let ((__tmp77056
                                                       (let ((__tmp77057
                                                              (let ((__tmp77058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs75225_)))
                        (declare (not safe))
                        (cons __tmp77058 '()))))
                 (declare (not safe))
                 (cons '#f __tmp77057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77056
                                                        _post75227_))))
                                           (declare (not safe))
                                           (_lp75222_
                                            _rest75254_
                                            __tmp77059
                                            _bind75226_
                                            __tmp77055))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd75255_))
                                             (let* ((_len75259_
                                                     (length _hd75255_))
                                                    (_tmp75261_
                                                     (let ((__tmp77037
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp77037))))
                                               (let ((__tmp77054
                                                      (cdr _exprs75225_))
                                                     (__tmp77047
                                                      (let ((__tmp77048
                                                             (lambda (_id75264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r75265_)
                       (if (let () (declare (not safe)) (__AST-e _id75264_))
                           (let ((__tmp77049
                                  (let ((__tmp77053
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75264_)))
                                        (__tmp77050
                                         (let ((__tmp77051
                                                (let ((__tmp77052
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp77052))))
                                           (declare (not safe))
                                           (cons __tmp77051 '()))))
                                    (declare (not safe))
                                    (cons __tmp77053 __tmp77050))))
                             (declare (not safe))
                             (cons __tmp77049 _r75265_))
                           _r75265_))))
                (declare (not safe))
                (foldl1 __tmp77048 _bind75226_ _hd75255_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp77038
                                                      (let ((__tmp77039
                                                             (let ((__tmp77040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77046 (car _exprs75225_))
                                  (__tmp77041
                                   (let ((__tmp77042
                                          (let ((__tmp77044
                                                 (lambda (_id75267_ _k75268_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id75267_))
                                                       (let ((__tmp77045
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id75267_))))
                 (declare (not safe))
                 (cons __tmp77045 _k75268_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp77043
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len75259_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp77044
                                             _hd75255_
                                             __tmp77043))))
                                     (declare (not safe))
                                     (cons _len75259_ __tmp77042))))
                              (declare (not safe))
                              (cons __tmp77046 __tmp77041))))
                       (declare (not safe))
                       (cons _tmp75261_ __tmp77040))))
                (declare (not safe))
                (cons __tmp77039 _post75227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp75222_
                                                  _rest75254_
                                                  __tmp77054
                                                  __tmp77047
                                                  __tmp77038)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx75066_
                                                _hd75255_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7522875242_))
                              (let ((_tl7523875295_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7522875242_)))
                                    (_hd7523775293_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7522875242_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7523775293_))
                                    (let ((_tl7524075300_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7523775293_)))
                                          (_hd7523975298_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7523775293_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7524075300_))
                                          (let ((_hd75303_ _hd7523975298_)
                                                (_rest75305_ _tl7523875295_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7523675290_
                                               _rest75305_
                                               _hd75303_)))
                                          (let ((_hd75278_ _hd7523775293_)
                                                (_rest75280_ _tl7523875295_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7523375270_
                                               _rest75280_
                                               _hd75278_)))))
                                    (let ((_hd75278_ _hd7523775293_)
                                          (_rest75280_ _tl7523875295_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7523375270_
                                         _rest75280_
                                         _hd75278_)))))
                              (let ()
                                (declare (not safe))
                                (_else7523175250_))))))))
                 (_compile-bind75070_
                  (lambda (_bind75214_ _post75215_ _body75216_)
                    (let ((__tmp77073
                           (let ((__tmp77074
                                  (let ((__tmp77077 (reverse _bind75214_))
                                        (__tmp77075
                                         (let ((__tmp77076
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75071_
                                                   _post75215_
                                                   _body75216_))))
                                           (declare (not safe))
                                           (cons __tmp77076 '()))))
                                    (declare (not safe))
                                    (cons __tmp77077 __tmp77075))))
                             (declare (not safe))
                             (cons 'let __tmp77074))))
                      (declare (not safe))
                      (__SRC__% __tmp77073 _stx75066_))))
                 (_compile-post75071_
                  (lambda (_post75073_ _body75074_)
                    (let ((__tmp77078
                           (let ((__tmp77079
                                  (let ((__tmp77080
                                         (let ((__tmp77082
                                                (lambda (_hd75076_ _r75077_)
                                                  (let* ((_hd7507875101_
                                                          _hd75076_)
                                                         (_E7508275105_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7507875101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7509575199_
                                                           (lambda (_expr75197_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr75197_ _r75077_))))
                  (_K7509075177_
                   (lambda (_expr75174_ _id75175_)
                     (let ((__tmp77083
                            (let ((__tmp77084
                                   (let ((__tmp77085
                                          (let ((__tmp77086
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr75174_ '()))))
                                            (declare (not safe))
                                            (cons _id75175_ __tmp77086))))
                                     (declare (not safe))
                                     (cons 'set! __tmp77085))))
                              (declare (not safe))
                              (__SRC__% __tmp77084 _stx75066_))))
                       (declare (not safe))
                       (cons __tmp77083 _r75077_))))
                  (_K7508375144_
                   (lambda (_init75109_ _len75110_ _expr75111_ _tmp75112_)
                     (let ((__tmp77087
                            (let ((__tmp77088
                                   (let ((__tmp77089
                                          (let ((__tmp77103
                                                 (let ((__tmp77104
                                                        (let ((__tmp77105
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr75111_ '()))))
                  (declare (not safe))
                  (cons _tmp75112_ __tmp77105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77104 '())))
                                                (__tmp77090
                                                 (let ((__tmp77099
                                                        (let ((__tmp77100
                                                               (let ((__tmp77101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77102
                                     (let ()
                                       (declare (not safe))
                                       (cons _len75110_ '()))))
                                (declare (not safe))
                                (cons _tmp75112_ __tmp77102))))
                         (declare (not safe))
                         (cons '__check-values __tmp77101))))
                  (declare (not safe))
                  (__SRC__% __tmp77100 _stx75066_)))
               (__tmp77091
                (let ((__tmp77092
                       (map (lambda (_hd75114_)
                              (let* ((_hd7511575122_ _hd75114_)
                                     (_E7511775126_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7511575122_))))
                                     (_K7511875132_
                                      (lambda (_k75129_ _id75130_)
                                        (let ((__tmp77093
                                               (let ((__tmp77094
                                                      (let ((__tmp77095
                                                             (let ((__tmp77096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77097
                                   (let ((__tmp77098
                                          (let ()
                                            (declare (not safe))
                                            (cons _k75129_ '()))))
                                     (declare (not safe))
                                     (cons _tmp75112_ __tmp77098))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp77097))))
                       (declare (not safe))
                       (cons __tmp77096 '()))))
                (declare (not safe))
                (cons _id75130_ __tmp77095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp77094))))
                                          (declare (not safe))
                                          (__SRC__% __tmp77093 _stx75066_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7511575122_))
                                    (let ((_hd7511975135_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7511575122_)))
                                          (_tl7512075137_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7511575122_))))
                                      (let* ((_id75140_ _hd7511975135_)
                                             (_k75142_ _tl7512075137_))
                                        (declare (not safe))
                                        (_K7511875132_ _k75142_ _id75140_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7511775126_)))))
                            _init75109_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp77092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77099
                                                         __tmp77091))))
                                            (declare (not safe))
                                            (cons __tmp77103 __tmp77090))))
                                     (declare (not safe))
                                     (cons 'let __tmp77089))))
                              (declare (not safe))
                              (__SRC__% __tmp77088 _stx75066_))))
                       (declare (not safe))
                       (cons __tmp77087 _r75077_)))))
              (if (let () (declare (not safe)) (##pair? _hd7507875101_))
                  (let ((_tl7509775204_
                         (let () (declare (not safe)) (##cdr _hd7507875101_)))
                        (_hd7509675202_
                         (let () (declare (not safe)) (##car _hd7507875101_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7509675202_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7509775204_))
                            (let ((_tl7509975209_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7509775204_)))
                                  (_hd7509875207_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7509775204_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7509975209_))
                                  (let ((_expr75212_ _hd7509875207_))
                                    (declare (not safe))
                                    (_K7509575199_ _expr75212_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7509975209_))
                                      (let ((_tl7508975163_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7509975209_)))
                                            (_hd7508875161_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7509975209_))))
                                        (let ((_tmp75152_ _hd7509675202_)
                                              (_expr75159_ _hd7509875207_)
                                              (_len75166_ _hd7508875161_)
                                              (_init75168_ _tl7508975163_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7508375144_
                                             _init75168_
                                             _len75166_
                                             _expr75159_
                                             _tmp75152_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7508275105_)))))
                            (let () (declare (not safe)) (_E7508275105_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7509775204_))
                            (let ((_tl7509475189_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7509775204_)))
                                  (_hd7509375187_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7509775204_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7509475189_))
                                  (let ((_id75185_ _hd7509675202_)
                                        (_expr75192_ _hd7509375187_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7509075177_ _expr75192_ _id75185_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7509475189_))
                                      (let ((_tl7508975163_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7509475189_)))
                                            (_hd7508875161_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7509475189_))))
                                        (let ((_tmp75152_ _hd7509675202_)
                                              (_expr75159_ _hd7509375187_)
                                              (_len75166_ _hd7508875161_)
                                              (_init75168_ _tl7508975163_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7508375144_
                                             _init75168_
                                             _len75166_
                                             _expr75159_
                                             _tmp75152_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7508275105_)))))
                            (let () (declare (not safe)) (_E7508275105_)))))
                  (let () (declare (not safe)) (_E7508275105_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp77081 (list _body75074_)))
                                           (declare (not safe))
                                           (foldl1 __tmp77082
                                                   __tmp77081
                                                   _post75073_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp77080))))
                             (declare (not safe))
                             (cons 'begin __tmp77079))))
                      (declare (not safe))
                      (__SRC__% __tmp77078 _stx75066_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75066_
             _compile-simple75068_
             _compile-values75069_)))))
    (define __compile-call%
      (lambda (_stx75026_)
        (let* ((_$e75028_ _stx75026_)
               (_$E7503075039_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75028_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75028_))
              (let* ((_$tgt7503175042_
                      (let () (declare (not safe)) (__AST-e _$e75028_)))
                     (_$hd7503275045_
                      (let () (declare (not safe)) (##car _$tgt7503175042_)))
                     (_$tl7503375048_
                      (let () (declare (not safe)) (##cdr _$tgt7503175042_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7503375048_))
                    (let* ((_$tgt7503475052_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7503375048_)))
                           (_$hd7503575055_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7503475052_)))
                           (_$tl7503675058_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7503475052_))))
                      (let* ((_rator75062_ _$hd7503575055_)
                             (_rands75064_ _$tl7503675058_)
                             (__tmp77106
                              (let ((__tmp77108
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator75062_)))
                                    (__tmp77107 (map __compile _rands75064_)))
                                (declare (not safe))
                                (cons __tmp77108 __tmp77107))))
                        (declare (not safe))
                        (__SRC__% __tmp77106 _stx75026_)))
                    (let () (declare (not safe)) (_$E7503075039_))))
              (let () (declare (not safe)) (_$E7503075039_))))))
    (define __compile-ref%
      (lambda (_stx74988_)
        (let* ((_$e74990_ _stx74988_)
               (_$E7499275001_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74990_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74990_))
              (let* ((_$tgt7499375004_
                      (let () (declare (not safe)) (__AST-e _$e74990_)))
                     (_$hd7499475007_
                      (let () (declare (not safe)) (##car _$tgt7499375004_)))
                     (_$tl7499575010_
                      (let () (declare (not safe)) (##cdr _$tgt7499375004_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7499575010_))
                    (let* ((_$tgt7499675014_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7499575010_)))
                           (_$hd7499775017_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7499675014_)))
                           (_$tl7499875020_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7499675014_))))
                      (let ((_id75024_ _$hd7499775017_))
                        (if (let ((__tmp77109
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7499875020_))))
                              (declare (not safe))
                              (equal? __tmp77109 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id75024_ _stx74988_))
                            (let () (declare (not safe)) (_$E7499275001_)))))
                    (let () (declare (not safe)) (_$E7499275001_))))
              (let () (declare (not safe)) (_$E7499275001_))))))
    (define __compile-setq%
      (lambda (_stx74935_)
        (let* ((_$e74937_ _stx74935_)
               (_$E7493974951_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74937_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74937_))
              (let* ((_$tgt7494074954_
                      (let () (declare (not safe)) (__AST-e _$e74937_)))
                     (_$hd7494174957_
                      (let () (declare (not safe)) (##car _$tgt7494074954_)))
                     (_$tl7494274960_
                      (let () (declare (not safe)) (##cdr _$tgt7494074954_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7494274960_))
                    (let* ((_$tgt7494374964_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7494274960_)))
                           (_$hd7494474967_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7494374964_)))
                           (_$tl7494574970_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7494374964_))))
                      (let ((_id74974_ _$hd7494474967_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7494574970_))
                            (let* ((_$tgt7494674976_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7494574970_)))
                                   (_$hd7494774979_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7494674976_)))
                                   (_$tl7494874982_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7494674976_))))
                              (let ((_expr74986_ _$hd7494774979_))
                                (if (let ((__tmp77115
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7494874982_))))
                                      (declare (not safe))
                                      (equal? __tmp77115 '()))
                                    (let ((__tmp77110
                                           (let ((__tmp77111
                                                  (let ((__tmp77114
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id74974_
                                                            _stx74935_)))
                                                        (__tmp77112
                                                         (let ((__tmp77113
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr74986_))))
                   (declare (not safe))
                   (cons __tmp77113 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77114
                                                          __tmp77112))))
                                             (declare (not safe))
                                             (cons 'set! __tmp77111))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77110 _stx74935_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7493974951_)))))
                            (let () (declare (not safe)) (_$E7493974951_)))))
                    (let () (declare (not safe)) (_$E7493974951_))))
              (let () (declare (not safe)) (_$E7493974951_))))))
    (define __compile-if%
      (lambda (_stx74867_)
        (let* ((_$e74869_ _stx74867_)
               (_$E7487174886_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74869_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74869_))
              (let* ((_$tgt7487274889_
                      (let () (declare (not safe)) (__AST-e _$e74869_)))
                     (_$hd7487374892_
                      (let () (declare (not safe)) (##car _$tgt7487274889_)))
                     (_$tl7487474895_
                      (let () (declare (not safe)) (##cdr _$tgt7487274889_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7487474895_))
                    (let* ((_$tgt7487574899_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7487474895_)))
                           (_$hd7487674902_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7487574899_)))
                           (_$tl7487774905_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7487574899_))))
                      (let ((_p74909_ _$hd7487674902_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7487774905_))
                            (let* ((_$tgt7487874911_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7487774905_)))
                                   (_$hd7487974914_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7487874911_)))
                                   (_$tl7488074917_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7487874911_))))
                              (let ((_t74921_ _$hd7487974914_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7488074917_))
                                    (let* ((_$tgt7488174923_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7488074917_)))
                                           (_$hd7488274926_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7488174923_)))
                                           (_$tl7488374929_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7488174923_))))
                                      (let ((_f74933_ _$hd7488274926_))
                                        (if (let ((__tmp77123
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7488374929_))))
                                              (declare (not safe))
                                              (equal? __tmp77123 '()))
                                            (let ((__tmp77116
                                                   (let ((__tmp77117
                                                          (let ((__tmp77122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p74909_)))
                        (__tmp77118
                         (let ((__tmp77121
                                (let ()
                                  (declare (not safe))
                                  (__compile _t74921_)))
                               (__tmp77119
                                (let ((__tmp77120
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f74933_))))
                                  (declare (not safe))
                                  (cons __tmp77120 '()))))
                           (declare (not safe))
                           (cons __tmp77121 __tmp77119))))
                    (declare (not safe))
                    (cons __tmp77122 __tmp77118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp77117))))
                                              (declare (not safe))
                                              (__SRC__% __tmp77116 _stx74867_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7487174886_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7487174886_)))))
                            (let () (declare (not safe)) (_$E7487174886_)))))
                    (let () (declare (not safe)) (_$E7487174886_))))
              (let () (declare (not safe)) (_$E7487174886_))))))
    (define __compile-quote%
      (lambda (_stx74829_)
        (let* ((_$e74831_ _stx74829_)
               (_$E7483374842_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74831_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74831_))
              (let* ((_$tgt7483474845_
                      (let () (declare (not safe)) (__AST-e _$e74831_)))
                     (_$hd7483574848_
                      (let () (declare (not safe)) (##car _$tgt7483474845_)))
                     (_$tl7483674851_
                      (let () (declare (not safe)) (##cdr _$tgt7483474845_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7483674851_))
                    (let* ((_$tgt7483774855_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7483674851_)))
                           (_$hd7483874858_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7483774855_)))
                           (_$tl7483974861_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7483774855_))))
                      (let ((_e74865_ _$hd7483874858_))
                        (if (let ((__tmp77127
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7483974861_))))
                              (declare (not safe))
                              (equal? __tmp77127 '()))
                            (let ((__tmp77124
                                   (let ((__tmp77125
                                          (let ((__tmp77126
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e74865_))))
                                            (declare (not safe))
                                            (cons __tmp77126 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77125))))
                              (declare (not safe))
                              (__SRC__% __tmp77124 _stx74829_))
                            (let () (declare (not safe)) (_$E7483374842_)))))
                    (let () (declare (not safe)) (_$E7483374842_))))
              (let () (declare (not safe)) (_$E7483374842_))))))
    (define __compile-quote-syntax%
      (lambda (_stx74791_)
        (let* ((_$e74793_ _stx74791_)
               (_$E7479574804_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74793_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74793_))
              (let* ((_$tgt7479674807_
                      (let () (declare (not safe)) (__AST-e _$e74793_)))
                     (_$hd7479774810_
                      (let () (declare (not safe)) (##car _$tgt7479674807_)))
                     (_$tl7479874813_
                      (let () (declare (not safe)) (##cdr _$tgt7479674807_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7479874813_))
                    (let* ((_$tgt7479974817_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7479874813_)))
                           (_$hd7480074820_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7479974817_)))
                           (_$tl7480174823_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7479974817_))))
                      (let ((_e74827_ _$hd7480074820_))
                        (if (let ((__tmp77130
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7480174823_))))
                              (declare (not safe))
                              (equal? __tmp77130 '()))
                            (let ((__tmp77128
                                   (let ((__tmp77129
                                          (let ()
                                            (declare (not safe))
                                            (cons _e74827_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77129))))
                              (declare (not safe))
                              (__SRC__% __tmp77128 _stx74791_))
                            (let () (declare (not safe)) (_$E7479574804_)))))
                    (let () (declare (not safe)) (_$E7479574804_))))
              (let () (declare (not safe)) (_$E7479574804_))))))
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
