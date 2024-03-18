(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710715075)
  (begin
    (define __syntax::t
      (let ((__tmp78948 (list))
            (__tmp78946
             (let ((__tmp78947
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78947 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp78948
         '(e id)
         __tmp78946
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args78757_ (apply make-instance __syntax::t _$args78757_)))
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
      (let ((__tmp78951 (list __syntax::t))
            (__tmp78949
             (let ((__tmp78950
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78950 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp78951
         '()
         __tmp78949
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args78754_ (apply make-instance __core-form::t _$args78754_)))
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
      (let ((__tmp78954 (list __core-form::t))
            (__tmp78952
             (let ((__tmp78953
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78953 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp78954
         '()
         __tmp78952
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args78751_
        (apply make-instance __core-expression::t _$args78751_)))
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
      (let ((__tmp78957 (list __core-form::t))
            (__tmp78955
             (let ((__tmp78956
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78956 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp78957
         '()
         __tmp78955
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args78748_
        (apply make-instance __core-special-form::t _$args78748_)))
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
      (lambda (_id78746_)
        (let ((__tmp78958 (let () (declare (not safe)) (__AST-e _id78746_))))
          (declare (not safe))
          (hash-get __core __tmp78958))))
    (define __core-bound-id?__%
      (lambda (_id78730_ _is?78731_)
        (let ((_$e78733_
               (let () (declare (not safe)) (__core-resolve _id78730_))))
          (if _$e78733_ (_is?78731_ _$e78733_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id78739_)
        (let ((_is?78741_ true))
          (declare (not safe))
          (__core-bound-id?__% _id78739_ _is?78741_))))
    (define __core-bound-id?
      (lambda _g78960_
        (let ((_g78959_ (let () (declare (not safe)) (##length _g78960_))))
          (cond ((let () (declare (not safe)) (##fx= _g78959_ 1))
                 (apply (lambda (_id78739_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id78739_)))
                        _g78960_))
                ((let () (declare (not safe)) (##fx= _g78959_ 2))
                 (apply (lambda (_id78743_ _is?78744_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id78743_ _is?78744_)))
                        _g78960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g78960_))))))
    (define __core-bind-syntax!__%
      (lambda (_id78713_ _e78714_ _make78715_)
        (let ((__tmp78961
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e78714_
                      'gerbil/runtime/eval#__syntax::t))
                   _e78714_
                   (_make78715_ _e78714_ _id78713_))))
          (declare (not safe))
          (hash-put! __core _id78713_ __tmp78961))))
    (define __core-bind-syntax!__0
      (lambda (_id78720_ _e78721_)
        (let ((_make78723_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id78720_ _e78721_ _make78723_))))
    (define __core-bind-syntax!
      (lambda _g78963_
        (let ((_g78962_ (let () (declare (not safe)) (##length _g78963_))))
          (cond ((let () (declare (not safe)) (##fx= _g78962_ 2))
                 (apply (lambda (_id78720_ _e78721_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id78720_ _e78721_)))
                        _g78963_))
                ((let () (declare (not safe)) (##fx= _g78962_ 3))
                 (apply (lambda (_id78725_ _e78726_ _make78727_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id78725_
                             _e78726_
                             _make78727_)))
                        _g78963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g78963_))))))
    (define __SRC__%
      (lambda (_e78696_ _src-stx78697_)
        (if (or (let () (declare (not safe)) (pair? _e78696_))
                (let () (declare (not safe)) (symbol? _e78696_)))
            (let ((__tmp78967
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx78697_
                          'gerbil#AST::t))
                       (let ((__tmp78968
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx78697_))))
                         (declare (not safe))
                         (__locat __tmp78968))
                       '#f)))
              (declare (not safe))
              (##make-source _e78696_ __tmp78967))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e78696_ 'gerbil#AST::t))
                (let ((__tmp78966
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e78696_ '1 AST::t '#f)))
                      (__tmp78964
                       (let ((__tmp78965
                              (let ()
                                (declare (not safe))
                                (__AST-source _e78696_))))
                         (declare (not safe))
                         (__locat __tmp78965))))
                  (declare (not safe))
                  (##make-source __tmp78966 __tmp78964))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e78696_))))))
    (define __SRC__0
      (lambda (_e78705_)
        (let ((_src-stx78707_ '#f))
          (declare (not safe))
          (__SRC__% _e78705_ _src-stx78707_))))
    (define __SRC
      (lambda _g78970_
        (let ((_g78969_ (let () (declare (not safe)) (##length _g78970_))))
          (cond ((let () (declare (not safe)) (##fx= _g78969_ 1))
                 (apply (lambda (_e78705_)
                          (let () (declare (not safe)) (__SRC__0 _e78705_)))
                        _g78970_))
                ((let () (declare (not safe)) (##fx= _g78969_ 2))
                 (apply (lambda (_e78709_ _src-stx78710_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e78709_ _src-stx78710_)))
                        _g78970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g78970_))))))
    (define __locat
      (lambda (_loc78693_)
        (if (let () (declare (not safe)) (##locat? _loc78693_))
            _loc78693_
            '#f)))
    (define __check-values
      (lambda (_obj78688_ _k78689_)
        (let ((_count78691_
               (if (let () (declare (not safe)) (##values? _obj78688_))
                   (let () (declare (not safe)) (##vector-length _obj78688_))
                   '1)))
          (if (fx= _count78691_ _k78689_)
              '#!void
              (let ((__tmp78972
                     (if (fx< _count78691_ _k78689_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp78971
                     (if (let () (declare (not safe)) (##values? _obj78688_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj78688_))
                         _obj78688_)))
                (declare (not safe))
                (error __tmp78972 __tmp78971 _k78689_))))))
    (define __compile
      (lambda (_stx78658_)
        (let* ((_$e78660_ _stx78658_)
               (_$E7866278668_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78660_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78660_))
              (let* ((_$tgt7866378671_
                      (let () (declare (not safe)) (__AST-e _$e78660_)))
                     (_$hd7866478674_
                      (let () (declare (not safe)) (##car _$tgt7866378671_)))
                     (_$tl7866578677_
                      (let () (declare (not safe)) (##cdr _$tgt7866378671_))))
                (let* ((_form78681_ _$hd7866478674_)
                       (_$e78683_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form78681_))))
                  (if _$e78683_
                      ((lambda (_bind78686_)
                         ((##structure-ref _bind78686_ '1 __syntax::t '#f)
                          _stx78658_))
                       _$e78683_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx78658_
                         _form78681_)))))
              (let () (declare (not safe)) (_$E7866278668_))))))
    (define __compile-error__%
      (lambda (_stx78645_ _detail78646_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx78645_
           _detail78646_))))
    (define __compile-error__0
      (lambda (_stx78651_)
        (let ((_detail78653_ '#f))
          (declare (not safe))
          (__compile-error__% _stx78651_ _detail78653_))))
    (define __compile-error
      (lambda _g78974_
        (let ((_g78973_ (let () (declare (not safe)) (##length _g78974_))))
          (cond ((let () (declare (not safe)) (##fx= _g78973_ 1))
                 (apply (lambda (_stx78651_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx78651_)))
                        _g78974_))
                ((let () (declare (not safe)) (##fx= _g78973_ 2))
                 (apply (lambda (_stx78655_ _detail78656_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx78655_ _detail78656_)))
                        _g78974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g78974_))))))
    (define __compile-ignore%
      (lambda (_stx78642_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx78642_))))
    (define __compile-begin%
      (lambda (_stx78617_)
        (let* ((_$e78619_ _stx78617_)
               (_$E7862178627_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78619_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78619_))
              (let* ((_$tgt7862278630_
                      (let () (declare (not safe)) (__AST-e _$e78619_)))
                     (_$hd7862378633_
                      (let () (declare (not safe)) (##car _$tgt7862278630_)))
                     (_$tl7862478636_
                      (let () (declare (not safe)) (##cdr _$tgt7862278630_))))
                (let* ((_body78640_ _$tl7862478636_)
                       (__tmp78975
                        (let ((__tmp78976 (map __compile _body78640_)))
                          (declare (not safe))
                          (cons 'begin __tmp78976))))
                  (declare (not safe))
                  (__SRC__% __tmp78975 _stx78617_)))
              (let () (declare (not safe)) (_$E7862178627_))))))
    (define __compile-begin-foreign%
      (lambda (_stx78592_)
        (let* ((_$e78594_ _stx78592_)
               (_$E7859678602_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78594_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78594_))
              (let* ((_$tgt7859778605_
                      (let () (declare (not safe)) (__AST-e _$e78594_)))
                     (_$hd7859878608_
                      (let () (declare (not safe)) (##car _$tgt7859778605_)))
                     (_$tl7859978611_
                      (let () (declare (not safe)) (##cdr _$tgt7859778605_))))
                (let* ((_body78615_ _$tl7859978611_)
                       (__tmp78977
                        (let ((__tmp78978
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body78615_))))
                          (declare (not safe))
                          (cons 'begin __tmp78978))))
                  (declare (not safe))
                  (__SRC__% __tmp78977 _stx78592_)))
              (let () (declare (not safe)) (_$E7859678602_))))))
    (define __compile-import%
      (lambda (_stx78567_)
        (let* ((_$e78569_ _stx78567_)
               (_$E7857178577_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78569_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78569_))
              (let* ((_$tgt7857278580_
                      (let () (declare (not safe)) (__AST-e _$e78569_)))
                     (_$hd7857378583_
                      (let () (declare (not safe)) (##car _$tgt7857278580_)))
                     (_$tl7857478586_
                      (let () (declare (not safe)) (##cdr _$tgt7857278580_))))
                (let* ((_body78590_ _$tl7857478586_)
                       (__tmp78979
                        (let ((__tmp78980
                               (let ((__tmp78981
                                      (let ((__tmp78982
                                             (let ()
                                               (declare (not safe))
                                               (cons _body78590_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp78982))))
                                 (declare (not safe))
                                 (cons __tmp78981 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp78980))))
                  (declare (not safe))
                  (__SRC__% __tmp78979 _stx78567_)))
              (let () (declare (not safe)) (_$E7857178577_))))))
    (define __compile-begin-annotation%
      (lambda (_stx78514_)
        (let* ((_$e78516_ _stx78514_)
               (_$E7851878530_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78516_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78516_))
              (let* ((_$tgt7851978533_
                      (let () (declare (not safe)) (__AST-e _$e78516_)))
                     (_$hd7852078536_
                      (let () (declare (not safe)) (##car _$tgt7851978533_)))
                     (_$tl7852178539_
                      (let () (declare (not safe)) (##cdr _$tgt7851978533_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7852178539_))
                    (let* ((_$tgt7852278543_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7852178539_)))
                           (_$hd7852378546_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7852278543_)))
                           (_$tl7852478549_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7852278543_))))
                      (let ((_ann78553_ _$hd7852378546_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7852478549_))
                            (let* ((_$tgt7852578555_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7852478549_)))
                                   (_$hd7852678558_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7852578555_)))
                                   (_$tl7852778561_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7852578555_))))
                              (let ((_expr78565_ _$hd7852678558_))
                                (if (let ((__tmp78983
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7852778561_))))
                                      (declare (not safe))
                                      (equal? __tmp78983 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr78565_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7851878530_)))))
                            (let () (declare (not safe)) (_$E7851878530_)))))
                    (let () (declare (not safe)) (_$E7851878530_))))
              (let () (declare (not safe)) (_$E7851878530_))))))
    (define __compile-define-values%
      (lambda (_stx78405_)
        (let* ((_$e78407_ _stx78405_)
               (_$E7840978421_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78407_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78407_))
              (let* ((_$tgt7841078424_
                      (let () (declare (not safe)) (__AST-e _$e78407_)))
                     (_$hd7841178427_
                      (let () (declare (not safe)) (##car _$tgt7841078424_)))
                     (_$tl7841278430_
                      (let () (declare (not safe)) (##cdr _$tgt7841078424_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7841278430_))
                    (let* ((_$tgt7841378434_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7841278430_)))
                           (_$hd7841478437_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7841378434_)))
                           (_$tl7841578440_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7841378434_))))
                      (let ((_hd78444_ _$hd7841478437_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7841578440_))
                            (let* ((_$tgt7841678446_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7841578440_)))
                                   (_$hd7841778449_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7841678446_)))
                                   (_$tl7841878452_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7841678446_))))
                              (let ((_expr78456_ _$hd7841778449_))
                                (if (let ((__tmp79016
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7841878452_))))
                                      (declare (not safe))
                                      (equal? __tmp79016 '()))
                                    (let* ((_$e78458_ _hd78444_)
                                           (_$E7846078501_
                                            (lambda ()
                                              (let ((_$E7846178486_
                                                     (lambda ()
                                                       (let* ((_$E7846278473_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e78458_))))
                      (_ids78476_ _hd78444_)
                      (_len78478_ (length _ids78476_))
                      (_tmp78480_
                       (let ((__tmp78984 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp78984))))
                 (let ((__tmp78985
                        (let ((__tmp78986
                               (let ((__tmp79003
                                      (let ((__tmp79004
                                             (let ((__tmp79005
                                                    (let ((__tmp79006
                                                           (let ((__tmp79007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr78456_))))
                     (declare (not safe))
                     (cons __tmp79007 '()))))
              (declare (not safe))
              (cons _tmp78480_ __tmp79006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp79005))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79004 _stx78405_)))
                                     (__tmp78987
                                      (let ((__tmp78999
                                             (let ((__tmp79000
                                                    (let ((__tmp79001
                                                           (let ((__tmp79002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len78478_ '()))))
                     (declare (not safe))
                     (cons _tmp78480_ __tmp79002))))
              (declare (not safe))
              (cons '__check-values __tmp79001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp79000
                                                _stx78405_)))
                                            (__tmp78988
                                             (let ((__tmp78989
                                                    (let ((__tmp78991
                                                           (lambda (_id78483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k78484_)
                     (if (let () (declare (not safe)) (__AST-e _id78483_))
                         (let ((__tmp78992
                                (let ((__tmp78993
                                       (let ((__tmp78998
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id78483_)))
                                             (__tmp78994
                                              (let ((__tmp78995
                                                     (let ((__tmp78996
                                                            (let ((__tmp78997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k78484_ '()))))
                      (declare (not safe))
                      (cons _tmp78480_ __tmp78997))))
               (declare (not safe))
               (cons '##vector-ref __tmp78996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78995 '()))))
                                         (declare (not safe))
                                         (cons __tmp78998 __tmp78994))))
                                  (declare (not safe))
                                  (cons 'define __tmp78993))))
                           (declare (not safe))
                           (__SRC__% __tmp78992 _stx78405_))
                         '#f)))
                  (__tmp78990 (iota _len78478_)))
              (declare (not safe))
              (filter-map2 __tmp78991 _ids78476_ __tmp78990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp78989))))
                                        (declare (not safe))
                                        (cons __tmp78999 __tmp78988))))
                                 (declare (not safe))
                                 (cons __tmp79003 __tmp78987))))
                          (declare (not safe))
                          (cons 'begin __tmp78986))))
                   (declare (not safe))
                   (__SRC__% __tmp78985 _stx78405_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e78458_))
                                                    (let* ((_$tgt7846378489_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e78458_)))
                                                           (_$hd7846478492_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7846378489_)))
                                                           (_$tl7846578495_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7846378489_))))
                                                      (let ((_id78499_
                                                             _$hd7846478492_))
                                                        (if (let ((__tmp79013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7846578495_))))
                      (declare (not safe))
                      (equal? __tmp79013 '()))
                    (let ((__tmp79008
                           (let ((__tmp79009
                                  (let ((__tmp79012
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id78499_)))
                                        (__tmp79010
                                         (let ((__tmp79011
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr78456_))))
                                           (declare (not safe))
                                           (cons __tmp79011 '()))))
                                    (declare (not safe))
                                    (cons __tmp79012 __tmp79010))))
                             (declare (not safe))
                             (cons 'define __tmp79009))))
                      (declare (not safe))
                      (__SRC__% __tmp79008 _stx78405_))
                    (let () (declare (not safe)) (_$E7846178486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7846178486_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e78458_))
                                          (let* ((_$tgt7846678504_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e78458_)))
                                                 (_$hd7846778507_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7846678504_)))
                                                 (_$tl7846878510_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7846678504_))))
                                            (if (let ((__tmp79015
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7846778507_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79015 '#f))
                                                (if (let ((__tmp79014
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7846878510_))))
                                                      (declare (not safe))
                                                      (equal? __tmp79014 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr78456_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7846078501_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7846078501_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7846078501_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7840978421_)))))
                            (let () (declare (not safe)) (_$E7840978421_)))))
                    (let () (declare (not safe)) (_$E7840978421_))))
              (let () (declare (not safe)) (_$E7840978421_))))))
    (define __compile-head-id
      (lambda (_e78403_)
        (let ((__tmp79017
               (if (let () (declare (not safe)) (__AST-e _e78403_))
                   _e78403_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp79017))))
    (define __compile-lambda-head
      (lambda (_hd78360_)
        (let _recur78362_ ((_rest78364_ _hd78360_))
          (let* ((_$e78366_ _rest78364_)
                 (_$E7836878386_
                  (lambda ()
                    (let ((_$E7836978383_
                           (lambda ()
                             (let* ((_$E7837078378_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e78366_))))
                                    (_tail78381_ _$e78366_))
                               (declare (not safe))
                               (__compile-head-id _tail78381_)))))
                      (if (let ((__tmp79018
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e78366_))))
                            (declare (not safe))
                            (equal? __tmp79018 '()))
                          '()
                          (let () (declare (not safe)) (_$E7836978383_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78366_))
                (let* ((_$tgt7837178389_
                        (let () (declare (not safe)) (__AST-e _$e78366_)))
                       (_$hd7837278392_
                        (let () (declare (not safe)) (##car _$tgt7837178389_)))
                       (_$tl7837378395_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7837178389_))))
                  (let* ((_hd78399_ _$hd7837278392_)
                         (_rest78401_ _$tl7837378395_))
                    (let ((__tmp79020
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd78399_)))
                          (__tmp79019
                           (let ()
                             (declare (not safe))
                             (_recur78362_ _rest78401_))))
                      (declare (not safe))
                      (cons __tmp79020 __tmp79019))))
                (let () (declare (not safe)) (_$E7836878386_)))))))
    (define __compile-lambda%
      (lambda (_stx78307_)
        (let* ((_$e78309_ _stx78307_)
               (_$E7831178323_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78309_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78309_))
              (let* ((_$tgt7831278326_
                      (let () (declare (not safe)) (__AST-e _$e78309_)))
                     (_$hd7831378329_
                      (let () (declare (not safe)) (##car _$tgt7831278326_)))
                     (_$tl7831478332_
                      (let () (declare (not safe)) (##cdr _$tgt7831278326_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7831478332_))
                    (let* ((_$tgt7831578336_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7831478332_)))
                           (_$hd7831678339_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7831578336_)))
                           (_$tl7831778342_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7831578336_))))
                      (let ((_hd78346_ _$hd7831678339_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7831778342_))
                            (let* ((_$tgt7831878348_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7831778342_)))
                                   (_$hd7831978351_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7831878348_)))
                                   (_$tl7832078354_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7831878348_))))
                              (let ((_body78358_ _$hd7831978351_))
                                (if (let ((__tmp79026
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7832078354_))))
                                      (declare (not safe))
                                      (equal? __tmp79026 '()))
                                    (let ((__tmp79021
                                           (let ((__tmp79022
                                                  (let ((__tmp79025
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd78346_)))
                                                        (__tmp79023
                                                         (let ((__tmp79024
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body78358_))))
                   (declare (not safe))
                   (cons __tmp79024 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79025
                                                          __tmp79023))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp79022))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79021 _stx78307_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7831178323_)))))
                            (let () (declare (not safe)) (_$E7831178323_)))))
                    (let () (declare (not safe)) (_$E7831178323_))))
              (let () (declare (not safe)) (_$E7831178323_))))))
    (define __compile-case-lambda%
      (lambda (_stx78099_)
        (letrec ((_variadic?78101_
                  (lambda (_hd78272_)
                    (let* ((_$e78274_ _hd78272_)
                           (_$E7827678292_
                            (lambda ()
                              (let ((_$E7827778289_
                                     (lambda ()
                                       (let ((_$E7827878286_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e78274_)))))
                                         '#t))))
                                (if (let ((__tmp79027
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e78274_))))
                                      (declare (not safe))
                                      (equal? __tmp79027 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7827778289_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78274_))
                          (let* ((_$tgt7827978295_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78274_)))
                                 (_$hd7828078298_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7827978295_)))
                                 (_$tl7828178301_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7827978295_))))
                            (let ((_rest78305_ _$tl7828178301_))
                              (declare (not safe))
                              (_variadic?78101_ _rest78305_)))
                          (let () (declare (not safe)) (_$E7827678292_))))))
                 (_arity78102_
                  (lambda (_hd78237_)
                    (let _lp78239_ ((_rest78241_ _hd78237_) (_k78242_ '0))
                      (let* ((_$e78244_ _rest78241_)
                             (_$E7824678257_
                              (lambda ()
                                (let ((_$E7824778254_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e78244_)))))
                                  _k78242_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e78244_))
                            (let* ((_$tgt7824878260_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e78244_)))
                                   (_$hd7824978263_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7824878260_)))
                                   (_$tl7825078266_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7824878260_))))
                              (let* ((_rest78270_ _$tl7825078266_)
                                     (__tmp79028
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k78242_ '1))))
                                (declare (not safe))
                                (_lp78239_ _rest78270_ __tmp79028)))
                            (let () (declare (not safe)) (_$E7824678257_)))))))
                 (_generate78103_
                  (lambda (_rest78164_ _args78165_ _len78166_)
                    (let* ((_$e78168_ _rest78164_)
                           (_$E7817078181_
                            (lambda ()
                              (let* ((_$E7817178178_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e78168_))))
                                     (__tmp79029
                                      (let ((__tmp79030
                                             (let ((__tmp79031
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args78165_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp79031))))
                                        (declare (not safe))
                                        (cons 'error __tmp79030))))
                                (declare (not safe))
                                (__SRC__% __tmp79029 _stx78099_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78168_))
                          (let* ((_$tgt7817278184_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78168_)))
                                 (_$hd7817378187_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7817278184_)))
                                 (_$tl7817478190_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7817278184_))))
                            (let* ((_clause78194_ _$hd7817378187_)
                                   (_rest78196_ _$tl7817478190_)
                                   (_$e78198_ _clause78194_)
                                   (_$E7820078209_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e78198_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e78198_))
                                  (let* ((_$tgt7820178212_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e78198_)))
                                         (_$hd7820278215_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7820178212_)))
                                         (_$tl7820378218_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7820178212_))))
                                    (let ((_hd78222_ _$hd7820278215_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7820378218_))
                                          (let* ((_$tgt7820478224_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7820378218_)))
                                                 (_$hd7820578227_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7820478224_)))
                                                 (_$tl7820678230_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7820478224_))))
                                            (if (let ((__tmp79046
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7820678230_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79046 '()))
                                                (let ((_clen78234_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity78102_
                                                          _hd78222_)))
                                                      (_cmp78235_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?78101_
                                                              _hd78222_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp79032
                                                         (let ((__tmp79033
                                                                (let ((__tmp79043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79044
                                      (let ((__tmp79045
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen78234_ '()))))
                                        (declare (not safe))
                                        (cons _len78166_ __tmp79045))))
                                 (declare (not safe))
                                 (cons _cmp78235_ __tmp79044)))
                              (__tmp79034
                               (let ((__tmp79037
                                      (let ((__tmp79038
                                             (let ((__tmp79039
                                                    (let ((__tmp79041
                                                           (let ((__tmp79042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause78194_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp79042)))
                  (__tmp79040
                   (let () (declare (not safe)) (cons _args78165_ '()))))
              (declare (not safe))
              (cons __tmp79041 __tmp79040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp79039))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79038 _stx78099_)))
                                     (__tmp79035
                                      (let ((__tmp79036
                                             (let ()
                                               (declare (not safe))
                                               (_generate78103_
                                                _rest78196_
                                                _args78165_
                                                _len78166_))))
                                        (declare (not safe))
                                        (cons __tmp79036 '()))))
                                 (declare (not safe))
                                 (cons __tmp79037 __tmp79035))))
                          (declare (not safe))
                          (cons __tmp79043 __tmp79034))))
                   (declare (not safe))
                   (cons 'if __tmp79033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp79032
                                                     _stx78099_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7820078209_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7820078209_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7820078209_)))))
                          (let () (declare (not safe)) (_$E7817078181_)))))))
          (let* ((_$e78105_ _stx78099_)
                 (_$E7810778139_
                  (lambda ()
                    (let ((_$E7810878121_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78105_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78105_))
                          (let* ((_$tgt7810978124_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78105_)))
                                 (_$hd7811078127_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7810978124_)))
                                 (_$tl7811178130_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7810978124_))))
                            (let ((_clauses78134_ _$tl7811178130_))
                              (let ((_args78136_
                                     (let ((__tmp79047 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79047 _stx78099_)))
                                    (_len78137_
                                     (let ((__tmp79048 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79048 _stx78099_))))
                                (let ((__tmp79049
                                       (let ((__tmp79050
                                              (let ((__tmp79051
                                                     (let ((__tmp79052
                                                            (let ((__tmp79053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79054
                                  (let ((__tmp79057
                                         (let ((__tmp79058
                                                (let ((__tmp79059
                                                       (let ((__tmp79060
                                                              (let ((__tmp79061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79062
                                    (let ()
                                      (declare (not safe))
                                      (cons _args78136_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp79062))))
                        (declare (not safe))
                        (__SRC__% __tmp79061 _stx78099_))))
                 (declare (not safe))
                 (cons __tmp79060 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len78137_
                                                        __tmp79059))))
                                           (declare (not safe))
                                           (cons __tmp79058 '())))
                                        (__tmp79055
                                         (let ((__tmp79056
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate78103_
                                                   _clauses78134_
                                                   _args78136_
                                                   _len78137_))))
                                           (declare (not safe))
                                           (cons __tmp79056 '()))))
                                    (declare (not safe))
                                    (cons __tmp79057 __tmp79055))))
                             (declare (not safe))
                             (cons 'let __tmp79054))))
                      (declare (not safe))
                      (__SRC__% __tmp79053 _stx78099_))))
               (declare (not safe))
               (cons __tmp79052 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args78136_
                                                      __tmp79051))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp79050))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79049 _stx78099_)))))
                          (let () (declare (not safe)) (_$E7810878121_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78105_))
                (let* ((_$tgt7811278142_
                        (let () (declare (not safe)) (__AST-e _$e78105_)))
                       (_$hd7811378145_
                        (let () (declare (not safe)) (##car _$tgt7811278142_)))
                       (_$tl7811478148_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7811278142_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7811478148_))
                      (let* ((_$tgt7811578152_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7811478148_)))
                             (_$hd7811678155_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7811578152_)))
                             (_$tl7811778158_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7811578152_))))
                        (let ((_clause78162_ _$hd7811678155_))
                          (if (let ((__tmp79064
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7811778158_))))
                                (declare (not safe))
                                (equal? __tmp79064 '()))
                              (let ((__tmp79063
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause78162_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp79063))
                              (let () (declare (not safe)) (_$E7810778139_)))))
                      (let () (declare (not safe)) (_$E7810778139_))))
                (let () (declare (not safe)) (_$E7810778139_)))))))
    (define __compile-let-form
      (lambda (_stx77868_ _compile-simple77869_ _compile-values77870_)
        (letrec ((_simple-bind?77872_
                  (lambda (_hd78057_)
                    (let* ((_hd7805878068_ _hd78057_)
                           (_else7806178076_ (lambda () '#f)))
                      (let ((_K7806478089_ (lambda (_id78087_) '#t))
                            (_K7806378081_ (lambda () '#t)))
                        (let ((_try-match7806078084_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7805878068_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7806378081_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7806178076_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7805878068_))
                              (let ((_tl7806678094_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7805878068_)))
                                    (_hd7806578092_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7805878068_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7806678094_))
                                    (let ((_id78097_ _hd7806578092_))
                                      (declare (not safe))
                                      (_K7806478089_ _id78097_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7806078084_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7806078084_))))))))
                 (_car-e77873_
                  (lambda (_hd78055_)
                    (if (let () (declare (not safe)) (pair? _hd78055_))
                        (car _hd78055_)
                        _hd78055_))))
          (let* ((_$e77875_ _stx77868_)
                 (_$E7787778020_
                  (lambda ()
                    (let ((_$E7787877900_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e77875_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77875_))
                          (let* ((_$tgt7787977903_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77875_)))
                                 (_$hd7788077906_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7787977903_)))
                                 (_$tl7788177909_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7787977903_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7788177909_))
                                (let* ((_$tgt7788277913_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7788177909_)))
                                       (_$hd7788377916_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7788277913_)))
                                       (_$tl7788477919_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7788277913_))))
                                  (let ((_hd77923_ _$hd7788377916_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7788477919_))
                                        (let* ((_$tgt7788577925_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7788477919_)))
                                               (_$hd7788677928_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7788577925_)))
                                               (_$tl7788777931_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7788577925_))))
                                          (let ((_body77935_ _$hd7788677928_))
                                            (if (let ((__tmp79067
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7788777931_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79067 '()))
                                                (let* ((_hd-ids77975_
                                                        (map (lambda (_bind77937_)
                                                               (let* ((_$e77939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind77937_)
                              (_$E7794177950_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e77939_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e77939_))
                             (let* ((_$tgt7794277953_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e77939_)))
                                    (_$hd7794377956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7794277953_)))
                                    (_$tl7794477959_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7794277953_))))
                               (let ((_ids77963_ _$hd7794377956_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7794477959_))
                                     (let* ((_$tgt7794577965_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7794477959_)))
                                            (_$hd7794677968_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7794577965_)))
                                            (_$tl7794777971_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7794577965_))))
                                       (if (let ((__tmp79065
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7794777971_))))
                                             (declare (not safe))
                                             (equal? __tmp79065 '()))
                                           _ids77963_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7794177950_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7794177950_)))))
                             (let () (declare (not safe)) (_$E7794177950_)))))
                     _hd77923_))
               (_exprs78015_
                (map (lambda (_bind77977_)
                       (let* ((_$e77979_ _bind77977_)
                              (_$E7798177990_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e77979_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e77979_))
                             (let* ((_$tgt7798277993_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e77979_)))
                                    (_$hd7798377996_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7798277993_)))
                                    (_$tl7798477999_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7798277993_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7798477999_))
                                   (let* ((_$tgt7798578003_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7798477999_)))
                                          (_$hd7798678006_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7798578003_)))
                                          (_$tl7798778009_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7798578003_))))
                                     (let ((_expr78013_ _$hd7798678006_))
                                       (if (let ((__tmp79066
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7798778009_))))
                                             (declare (not safe))
                                             (equal? __tmp79066 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr78013_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7798177990_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7798177990_))))
                             (let () (declare (not safe)) (_$E7798177990_)))))
                     _hd77923_))
               (_body78017_
                (let () (declare (not safe)) (__compile _body77935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?77872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids77975_))
              (_compile-simple77869_
               (map _car-e77873_ _hd-ids77975_)
               _exprs78015_
               _body78017_)
              (_compile-values77870_ _hd-ids77975_ _exprs78015_ _body78017_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7787877900_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7787877900_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7787877900_))))
                          (let () (declare (not safe)) (_$E7787877900_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77875_))
                (let* ((_$tgt7788878023_
                        (let () (declare (not safe)) (__AST-e _$e77875_)))
                       (_$hd7788978026_
                        (let () (declare (not safe)) (##car _$tgt7788878023_)))
                       (_$tl7789078029_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7788878023_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7789078029_))
                      (let* ((_$tgt7789178033_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7789078029_)))
                             (_$hd7789278036_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7789178033_)))
                             (_$tl7789378039_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7789178033_))))
                        (if (let ((__tmp79069
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7789278036_))))
                              (declare (not safe))
                              (equal? __tmp79069 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7789378039_))
                                (let* ((_$tgt7789478043_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7789378039_)))
                                       (_$hd7789578046_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7789478043_)))
                                       (_$tl7789678049_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7789478043_))))
                                  (let ((_body78053_ _$hd7789578046_))
                                    (if (let ((__tmp79068
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7789678049_))))
                                          (declare (not safe))
                                          (equal? __tmp79068 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body78053_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7787778020_)))))
                                (let () (declare (not safe)) (_$E7787778020_)))
                            (let () (declare (not safe)) (_$E7787778020_))))
                      (let () (declare (not safe)) (_$E7787778020_))))
                (let () (declare (not safe)) (_$E7787778020_)))))))
    (define __compile-let-values%
      (lambda (_stx77683_)
        (letrec ((_compile-simple77685_
                  (lambda (_hd-ids77864_ _exprs77865_ _body77866_)
                    (let ((__tmp79070
                           (let ((__tmp79071
                                  (let ((__tmp79073
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77864_)
                                              _exprs77865_))
                                        (__tmp79072
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77866_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79073 __tmp79072))))
                             (declare (not safe))
                             (cons 'let __tmp79071))))
                      (declare (not safe))
                      (__SRC__% __tmp79070 _stx77683_))))
                 (_compile-values77686_
                  (lambda (_hd-ids77782_ _exprs77783_ _body77784_)
                    (let _lp77786_ ((_rest77788_ _hd-ids77782_)
                                    (_exprs77789_ _exprs77783_)
                                    (_bind77790_ '())
                                    (_post77791_ '()))
                      (let* ((_rest7779277806_ _rest77788_)
                             (_else7779577814_
                              (lambda ()
                                (let ((__tmp79074
                                       (let ((__tmp79075
                                              (let ((__tmp79078
                                                     (reverse _bind77790_))
                                                    (__tmp79076
                                                     (let ((__tmp79077
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post77687_
                                                               _post77791_
                                                               _body77784_))))
                                                       (declare (not safe))
                                                       (cons __tmp79077 '()))))
                                                (declare (not safe))
                                                (cons __tmp79078 __tmp79076))))
                                         (declare (not safe))
                                         (cons 'let __tmp79075))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79074 _stx77683_)))))
                        (let ((_K7780077847_
                               (lambda (_rest77844_ _id77845_)
                                 (let ((__tmp79084 (cdr _exprs77789_))
                                       (__tmp79079
                                        (let ((__tmp79080
                                               (let ((__tmp79083
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id77845_)))
                                                     (__tmp79081
                                                      (let ((__tmp79082
                                                             (car _exprs77789_)))
                                                        (declare (not safe))
                                                        (cons __tmp79082
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79083
                                                       __tmp79081))))
                                          (declare (not safe))
                                          (cons __tmp79080 _bind77790_))))
                                   (declare (not safe))
                                   (_lp77786_
                                    _rest77844_
                                    __tmp79084
                                    __tmp79079
                                    _post77791_))))
                              (_K7779777829_
                               (lambda (_rest77818_ _hd77819_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77819_))
                                     (let ((__tmp79105 (cdr _exprs77789_))
                                           (__tmp79098
                                            (let ((__tmp79099
                                                   (let ((__tmp79104
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd77819_)))
                                                         (__tmp79100
                                                          (let ((__tmp79101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79102
                                (let ((__tmp79103 (car _exprs77789_)))
                                  (declare (not safe))
                                  (cons __tmp79103 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79102))))
                    (declare (not safe))
                    (cons __tmp79101 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79104
                                                           __tmp79100))))
                                              (declare (not safe))
                                              (cons __tmp79099 _bind77790_))))
                                       (declare (not safe))
                                       (_lp77786_
                                        _rest77818_
                                        __tmp79105
                                        __tmp79098
                                        _post77791_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd77819_))
                                         (let* ((_len77821_ (length _hd77819_))
                                                (_tmp77823_
                                                 (let ((__tmp79085 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79085))))
                                           (let ((__tmp79097
                                                  (cdr _exprs77789_))
                                                 (__tmp79093
                                                  (let ((__tmp79094
                                                         (let ((__tmp79095
                                                                (let ((__tmp79096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77789_)))
                          (declare (not safe))
                          (cons __tmp79096 '()))))
                   (declare (not safe))
                   (cons _tmp77823_ __tmp79095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79094
                                                          _bind77790_)))
                                                 (__tmp79086
                                                  (let ((__tmp79087
                                                         (let ((__tmp79088
                                                                (let ((__tmp79089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79091
                                      (lambda (_id77826_ _k77827_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id77826_))
                                            (let ((__tmp79092
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id77826_))))
                                              (declare (not safe))
                                              (cons __tmp79092 _k77827_))
                                            '#f)))
                                     (__tmp79090 (iota _len77821_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79091
                                  _hd77819_
                                  __tmp79090))))
                          (declare (not safe))
                          (cons _len77821_ __tmp79089))))
                   (declare (not safe))
                   (cons _tmp77823_ __tmp79088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79087
                                                          _post77791_))))
                                             (declare (not safe))
                                             (_lp77786_
                                              _rest77818_
                                              __tmp79097
                                              __tmp79093
                                              __tmp79086)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77683_
                                            _hd77819_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7779277806_))
                              (let ((_tl7780277852_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7779277806_)))
                                    (_hd7780177850_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7779277806_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7780177850_))
                                    (let ((_tl7780477857_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7780177850_)))
                                          (_hd7780377855_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7780177850_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7780477857_))
                                          (let ((_id77860_ _hd7780377855_)
                                                (_rest77862_ _tl7780277852_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7780077847_
                                               _rest77862_
                                               _id77860_)))
                                          (let ((_hd77837_ _hd7780177850_)
                                                (_rest77839_ _tl7780277852_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7779777829_
                                               _rest77839_
                                               _hd77837_)))))
                                    (let ((_hd77837_ _hd7780177850_)
                                          (_rest77839_ _tl7780277852_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7779777829_
                                         _rest77839_
                                         _hd77837_)))))
                              (let ()
                                (declare (not safe))
                                (_else7779577814_))))))))
                 (_compile-post77687_
                  (lambda (_post77689_ _body77690_)
                    (let _lp77692_ ((_rest77694_ _post77689_)
                                    (_check77695_ '())
                                    (_bind77696_ '()))
                      (let* ((_rest7769777709_ _rest77694_)
                             (_else7769977717_
                              (lambda ()
                                (let ((__tmp79106
                                       (let ((__tmp79107
                                              (let ((__tmp79108
                                                     (let ((__tmp79109
                                                            (let ((__tmp79110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79111
                                  (let ((__tmp79112
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77690_ '()))))
                                    (declare (not safe))
                                    (cons _bind77696_ __tmp79112))))
                             (declare (not safe))
                             (cons 'let __tmp79111))))
                      (declare (not safe))
                      (__SRC__% __tmp79110 _stx77683_))))
               (declare (not safe))
               (cons __tmp79109 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79108
                                                        _check77695_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79107))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79106 _stx77683_))))
                             (_K7770177756_
                              (lambda (_rest77720_
                                       _init77721_
                                       _len77722_
                                       _tmp77723_)
                                (let ((__tmp79120
                                       (let ((__tmp79121
                                              (let ((__tmp79122
                                                     (let ((__tmp79123
                                                            (let ((__tmp79124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77722_ '()))))
                      (declare (not safe))
                      (cons _tmp77723_ __tmp79124))))
               (declare (not safe))
               (cons '__check-values __tmp79123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79122
                                                 _stx77683_))))
                                         (declare (not safe))
                                         (cons __tmp79121 _check77695_)))
                                      (__tmp79113
                                       (let ((__tmp79114
                                              (lambda (_hd77725_ _r77726_)
                                                (let* ((_hd7772777734_
                                                        _hd77725_)
                                                       (_E7772977738_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7772777734_))))
               (_K7773077744_
                (lambda (_k77741_ _id77742_)
                  (let ((__tmp79115
                         (let ((__tmp79116
                                (let ((__tmp79117
                                       (let ((__tmp79118
                                              (let ((__tmp79119
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k77741_ '()))))
                                                (declare (not safe))
                                                (cons _tmp77723_ __tmp79119))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp79118))))
                                  (declare (not safe))
                                  (cons __tmp79117 '()))))
                           (declare (not safe))
                           (cons _id77742_ __tmp79116))))
                    (declare (not safe))
                    (cons __tmp79115 _r77726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7772777734_))
                                                      (let ((_hd7773177747_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7772777734_)))
                    (_tl7773277749_
                     (let () (declare (not safe)) (##cdr _hd7772777734_))))
                (let* ((_id77752_ _hd7773177747_) (_k77754_ _tl7773277749_))
                  (declare (not safe))
                  (_K7773077744_ _k77754_ _id77752_)))
              (let () (declare (not safe)) (_E7772977738_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79114
                                                 _bind77696_
                                                 _init77721_))))
                                  (declare (not safe))
                                  (_lp77692_
                                   _rest77720_
                                   __tmp79120
                                   __tmp79113)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7769777709_))
                            (let ((_hd7770277759_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7769777709_)))
                                  (_tl7770377761_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7769777709_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7770277759_))
                                  (let ((_hd7770477764_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7770277759_)))
                                        (_tl7770577766_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7770277759_))))
                                    (let ((_tmp77769_ _hd7770477764_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7770577766_))
                                          (let ((_hd7770677771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7770577766_)))
                                                (_tl7770777773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7770577766_))))
                                            (let* ((_len77776_ _hd7770677771_)
                                                   (_init77778_ _tl7770777773_)
                                                   (_rest77780_
                                                    _tl7770377761_))
                                              (declare (not safe))
                                              (_K7770177756_
                                               _rest77780_
                                               _init77778_
                                               _len77776_
                                               _tmp77769_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7769977717_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7769977717_))))
                            (let ()
                              (declare (not safe))
                              (_else7769977717_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77683_
             _compile-simple77685_
             _compile-values77686_)))))
    (define __compile-letrec-values%
      (lambda (_stx77483_)
        (letrec ((_compile-simple77485_
                  (lambda (_hd-ids77679_ _exprs77680_ _body77681_)
                    (let ((__tmp79125
                           (let ((__tmp79126
                                  (let ((__tmp79128
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77679_)
                                              _exprs77680_))
                                        (__tmp79127
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77681_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79128 __tmp79127))))
                             (declare (not safe))
                             (cons 'letrec __tmp79126))))
                      (declare (not safe))
                      (__SRC__% __tmp79125 _stx77483_))))
                 (_compile-values77486_
                  (lambda (_hd-ids77593_ _exprs77594_ _body77595_)
                    (let _lp77597_ ((_rest77599_ _hd-ids77593_)
                                    (_exprs77600_ _exprs77594_)
                                    (_pre77601_ '())
                                    (_bind77602_ '())
                                    (_post77603_ '()))
                      (let* ((_rest7760477618_ _rest77599_)
                             (_else7760777626_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner77487_
                                   _pre77601_
                                   _bind77602_
                                   _post77603_
                                   _body77595_)))))
                        (let ((_K7761277662_
                               (lambda (_rest77659_ _id77660_)
                                 (let ((__tmp79134 (cdr _exprs77600_))
                                       (__tmp79129
                                        (let ((__tmp79130
                                               (let ((__tmp79133
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id77660_)))
                                                     (__tmp79131
                                                      (let ((__tmp79132
                                                             (car _exprs77600_)))
                                                        (declare (not safe))
                                                        (cons __tmp79132
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79133
                                                       __tmp79131))))
                                          (declare (not safe))
                                          (cons __tmp79130 _bind77602_))))
                                   (declare (not safe))
                                   (_lp77597_
                                    _rest77659_
                                    __tmp79134
                                    _pre77601_
                                    __tmp79129
                                    _post77603_))))
                              (_K7760977644_
                               (lambda (_rest77630_ _hd77631_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77631_))
                                     (let ((__tmp79162 (cdr _exprs77600_))
                                           (__tmp79155
                                            (let ((__tmp79156
                                                   (let ((__tmp79161
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd77631_)))
                                                         (__tmp79157
                                                          (let ((__tmp79158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79159
                                (let ((__tmp79160 (car _exprs77600_)))
                                  (declare (not safe))
                                  (cons __tmp79160 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79159))))
                    (declare (not safe))
                    (cons __tmp79158 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79161
                                                           __tmp79157))))
                                              (declare (not safe))
                                              (cons __tmp79156 _bind77602_))))
                                       (declare (not safe))
                                       (_lp77597_
                                        _rest77630_
                                        __tmp79162
                                        _pre77601_
                                        __tmp79155
                                        _post77603_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd77631_))
                                         (let* ((_len77633_ (length _hd77631_))
                                                (_tmp77635_
                                                 (let ((__tmp79135 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79135))))
                                           (let ((__tmp79154
                                                  (cdr _exprs77600_))
                                                 (__tmp79147
                                                  (let ((__tmp79148
                                                         (lambda (_id77638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r77639_)
                   (if (let () (declare (not safe)) (__AST-e _id77638_))
                       (let ((__tmp79149
                              (let ((__tmp79153
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id77638_)))
                                    (__tmp79150
                                     (let ((__tmp79151
                                            (let ((__tmp79152
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp79152))))
                                       (declare (not safe))
                                       (cons __tmp79151 '()))))
                                (declare (not safe))
                                (cons __tmp79153 __tmp79150))))
                         (declare (not safe))
                         (cons __tmp79149 _r77639_))
                       _r77639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp79148
                                                            _pre77601_
                                                            _hd77631_)))
                                                 (__tmp79143
                                                  (let ((__tmp79144
                                                         (let ((__tmp79145
                                                                (let ((__tmp79146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77600_)))
                          (declare (not safe))
                          (cons __tmp79146 '()))))
                   (declare (not safe))
                   (cons _tmp77635_ __tmp79145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79144
                                                          _bind77602_)))
                                                 (__tmp79136
                                                  (let ((__tmp79137
                                                         (let ((__tmp79138
                                                                (let ((__tmp79139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79141
                                      (lambda (_id77641_ _k77642_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id77641_))
                                            (let ((__tmp79142
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id77641_))))
                                              (declare (not safe))
                                              (cons __tmp79142 _k77642_))
                                            '#f)))
                                     (__tmp79140 (iota _len77633_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79141
                                  _hd77631_
                                  __tmp79140))))
                          (declare (not safe))
                          (cons _len77633_ __tmp79139))))
                   (declare (not safe))
                   (cons _tmp77635_ __tmp79138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79137
                                                          _post77603_))))
                                             (declare (not safe))
                                             (_lp77597_
                                              _rest77630_
                                              __tmp79154
                                              __tmp79147
                                              __tmp79143
                                              __tmp79136)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77483_
                                            _hd77631_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7760477618_))
                              (let ((_tl7761477667_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7760477618_)))
                                    (_hd7761377665_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7760477618_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7761377665_))
                                    (let ((_tl7761677672_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7761377665_)))
                                          (_hd7761577670_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7761377665_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7761677672_))
                                          (let ((_id77675_ _hd7761577670_)
                                                (_rest77677_ _tl7761477667_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7761277662_
                                               _rest77677_
                                               _id77675_)))
                                          (let ((_hd77652_ _hd7761377665_)
                                                (_rest77654_ _tl7761477667_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7760977644_
                                               _rest77654_
                                               _hd77652_)))))
                                    (let ((_hd77652_ _hd7761377665_)
                                          (_rest77654_ _tl7761477667_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7760977644_
                                         _rest77654_
                                         _hd77652_)))))
                              (let ()
                                (declare (not safe))
                                (_else7760777626_))))))))
                 (_compile-inner77487_
                  (lambda (_pre77588_ _bind77589_ _post77590_ _body77591_)
                    (if (let () (declare (not safe)) (null? _pre77588_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind77488_
                           _bind77589_
                           _post77590_
                           _body77591_))
                        (let ((__tmp79163
                               (let ((__tmp79164
                                      (let ((__tmp79167 (reverse _pre77588_))
                                            (__tmp79165
                                             (let ((__tmp79166
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind77488_
                                                       _bind77589_
                                                       _post77590_
                                                       _body77591_))))
                                               (declare (not safe))
                                               (cons __tmp79166 '()))))
                                        (declare (not safe))
                                        (cons __tmp79167 __tmp79165))))
                                 (declare (not safe))
                                 (cons 'let __tmp79164))))
                          (declare (not safe))
                          (__SRC__% __tmp79163 _stx77483_)))))
                 (_compile-bind77488_
                  (lambda (_bind77584_ _post77585_ _body77586_)
                    (let ((__tmp79168
                           (let ((__tmp79169
                                  (let ((__tmp79172 (reverse _bind77584_))
                                        (__tmp79170
                                         (let ((__tmp79171
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77489_
                                                   _post77585_
                                                   _body77586_))))
                                           (declare (not safe))
                                           (cons __tmp79171 '()))))
                                    (declare (not safe))
                                    (cons __tmp79172 __tmp79170))))
                             (declare (not safe))
                             (cons 'letrec __tmp79169))))
                      (declare (not safe))
                      (__SRC__% __tmp79168 _stx77483_))))
                 (_compile-post77489_
                  (lambda (_post77491_ _body77492_)
                    (let _lp77494_ ((_rest77496_ _post77491_)
                                    (_check77497_ '())
                                    (_bind77498_ '()))
                      (let* ((_rest7749977511_ _rest77496_)
                             (_else7750177519_
                              (lambda ()
                                (let ((__tmp79173
                                       (let ((__tmp79174
                                              (let ((__tmp79175
                                                     (let ((__tmp79176
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body77492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp79176 _bind77498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79175
                                                        _check77497_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79174))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79173 _stx77483_))))
                             (_K7750377558_
                              (lambda (_rest77522_
                                       _init77523_
                                       _len77524_
                                       _tmp77525_)
                                (let ((__tmp79185
                                       (let ((__tmp79186
                                              (let ((__tmp79187
                                                     (let ((__tmp79188
                                                            (let ((__tmp79189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77524_ '()))))
                      (declare (not safe))
                      (cons _tmp77525_ __tmp79189))))
               (declare (not safe))
               (cons '__check-values __tmp79188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79187
                                                 _stx77483_))))
                                         (declare (not safe))
                                         (cons __tmp79186 _check77497_)))
                                      (__tmp79177
                                       (let ((__tmp79178
                                              (lambda (_hd77527_ _r77528_)
                                                (let* ((_hd7752977536_
                                                        _hd77527_)
                                                       (_E7753177540_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7752977536_))))
               (_K7753277546_
                (lambda (_k77543_ _id77544_)
                  (let ((__tmp79179
                         (let ((__tmp79180
                                (let ((__tmp79181
                                       (let ((__tmp79182
                                              (let ((__tmp79183
                                                     (let ((__tmp79184
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k77543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp77525_ __tmp79184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp79183))))
                                         (declare (not safe))
                                         (cons __tmp79182 '()))))
                                  (declare (not safe))
                                  (cons _id77544_ __tmp79181))))
                           (declare (not safe))
                           (cons 'set! __tmp79180))))
                    (declare (not safe))
                    (cons __tmp79179 _r77528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7752977536_))
                                                      (let ((_hd7753377549_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7752977536_)))
                    (_tl7753477551_
                     (let () (declare (not safe)) (##cdr _hd7752977536_))))
                (let* ((_id77554_ _hd7753377549_) (_k77556_ _tl7753477551_))
                  (declare (not safe))
                  (_K7753277546_ _k77556_ _id77554_)))
              (let () (declare (not safe)) (_E7753177540_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79178
                                                 _bind77498_
                                                 _init77523_))))
                                  (declare (not safe))
                                  (_lp77494_
                                   _rest77522_
                                   __tmp79185
                                   __tmp79177)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7749977511_))
                            (let ((_hd7750477561_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7749977511_)))
                                  (_tl7750577563_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7749977511_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7750477561_))
                                  (let ((_hd7750677566_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7750477561_)))
                                        (_tl7750777568_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7750477561_))))
                                    (let ((_tmp77571_ _hd7750677566_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7750777568_))
                                          (let ((_hd7750877573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7750777568_)))
                                                (_tl7750977575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7750777568_))))
                                            (let* ((_len77578_ _hd7750877573_)
                                                   (_init77580_ _tl7750977575_)
                                                   (_rest77582_
                                                    _tl7750577563_))
                                              (declare (not safe))
                                              (_K7750377558_
                                               _rest77582_
                                               _init77580_
                                               _len77578_
                                               _tmp77571_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7750177519_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7750177519_))))
                            (let ()
                              (declare (not safe))
                              (_else7750177519_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77483_
             _compile-simple77485_
             _compile-values77486_)))))
    (define __compile-letrec*-values%
      (lambda (_stx77238_)
        (letrec ((_compile-simple77240_
                  (lambda (_hd-ids77479_ _exprs77480_ _body77481_)
                    (let ((__tmp79190
                           (let ((__tmp79191
                                  (let ((__tmp79193
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77479_)
                                              _exprs77480_))
                                        (__tmp79192
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77481_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79193 __tmp79192))))
                             (declare (not safe))
                             (cons 'letrec* __tmp79191))))
                      (declare (not safe))
                      (__SRC__% __tmp79190 _stx77238_))))
                 (_compile-values77241_
                  (lambda (_hd-ids77390_ _exprs77391_ _body77392_)
                    (let _lp77394_ ((_rest77396_ _hd-ids77390_)
                                    (_exprs77397_ _exprs77391_)
                                    (_bind77398_ '())
                                    (_post77399_ '()))
                      (let* ((_rest7740077414_ _rest77396_)
                             (_else7740377422_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind77242_
                                   _bind77398_
                                   _post77399_
                                   _body77392_)))))
                        (let ((_K7740877462_
                               (lambda (_rest77457_ _hd77458_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77458_))
                                     (let ((_id77460_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77458_))))
                                       (let ((__tmp79208 (cdr _exprs77397_))
                                             (__tmp79203
                                              (let ((__tmp79204
                                                     (let ((__tmp79205
                                                            (let ((__tmp79206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79207
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79207))))
                      (declare (not safe))
                      (cons __tmp79206 '()))))
               (declare (not safe))
               (cons _id77460_ __tmp79205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79204 _bind77398_)))
                                             (__tmp79199
                                              (let ((__tmp79200
                                                     (let ((__tmp79201
                                                            (let ((__tmp79202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs77397_)))
                      (declare (not safe))
                      (cons __tmp79202 '()))))
               (declare (not safe))
               (cons _id77460_ __tmp79201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79200
                                                      _post77399_))))
                                         (declare (not safe))
                                         (_lp77394_
                                          _rest77457_
                                          __tmp79208
                                          __tmp79203
                                          __tmp79199)))
                                     (let ((__tmp79198 (cdr _exprs77397_))
                                           (__tmp79194
                                            (let ((__tmp79195
                                                   (let ((__tmp79196
                                                          (let ((__tmp79197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs77397_)))
                    (declare (not safe))
                    (cons __tmp79197 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp79196))))
                                              (declare (not safe))
                                              (cons __tmp79195 _post77399_))))
                                       (declare (not safe))
                                       (_lp77394_
                                        _rest77457_
                                        __tmp79198
                                        _bind77398_
                                        __tmp79194)))))
                              (_K7740577442_
                               (lambda (_rest77426_ _hd77427_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77427_))
                                     (let ((_id77429_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77427_))))
                                       (let ((__tmp79244 (cdr _exprs77397_))
                                             (__tmp79239
                                              (let ((__tmp79240
                                                     (let ((__tmp79241
                                                            (let ((__tmp79242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79243
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79243))))
                      (declare (not safe))
                      (cons __tmp79242 '()))))
               (declare (not safe))
               (cons _id77429_ __tmp79241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79240 _bind77398_)))
                                             (__tmp79233
                                              (let ((__tmp79234
                                                     (let ((__tmp79235
                                                            (let ((__tmp79236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79237
                                  (let ((__tmp79238 (car _exprs77397_)))
                                    (declare (not safe))
                                    (cons __tmp79238 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp79237))))
                      (declare (not safe))
                      (cons __tmp79236 '()))))
               (declare (not safe))
               (cons _id77429_ __tmp79235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79234
                                                      _post77399_))))
                                         (declare (not safe))
                                         (_lp77394_
                                          _rest77426_
                                          __tmp79244
                                          __tmp79239
                                          __tmp79233)))
                                     (if (let ((__tmp79232
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd77427_))))
                                           (declare (not safe))
                                           (not __tmp79232))
                                         (let ((__tmp79231 (cdr _exprs77397_))
                                               (__tmp79227
                                                (let ((__tmp79228
                                                       (let ((__tmp79229
                                                              (let ((__tmp79230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs77397_)))
                        (declare (not safe))
                        (cons __tmp79230 '()))))
                 (declare (not safe))
                 (cons '#f __tmp79229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79228
                                                        _post77399_))))
                                           (declare (not safe))
                                           (_lp77394_
                                            _rest77426_
                                            __tmp79231
                                            _bind77398_
                                            __tmp79227))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd77427_))
                                             (let* ((_len77431_
                                                     (length _hd77427_))
                                                    (_tmp77433_
                                                     (let ((__tmp79209
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp79209))))
                                               (let ((__tmp79226
                                                      (cdr _exprs77397_))
                                                     (__tmp79219
                                                      (let ((__tmp79220
                                                             (lambda (_id77436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r77437_)
                       (if (let () (declare (not safe)) (__AST-e _id77436_))
                           (let ((__tmp79221
                                  (let ((__tmp79225
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77436_)))
                                        (__tmp79222
                                         (let ((__tmp79223
                                                (let ((__tmp79224
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp79224))))
                                           (declare (not safe))
                                           (cons __tmp79223 '()))))
                                    (declare (not safe))
                                    (cons __tmp79225 __tmp79222))))
                             (declare (not safe))
                             (cons __tmp79221 _r77437_))
                           _r77437_))))
                (declare (not safe))
                (foldl1 __tmp79220 _bind77398_ _hd77427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79210
                                                      (let ((__tmp79211
                                                             (let ((__tmp79212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79218 (car _exprs77397_))
                                  (__tmp79213
                                   (let ((__tmp79214
                                          (let ((__tmp79216
                                                 (lambda (_id77439_ _k77440_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id77439_))
                                                       (let ((__tmp79217
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id77439_))))
                 (declare (not safe))
                 (cons __tmp79217 _k77440_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp79215 (iota _len77431_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp79216
                                             _hd77427_
                                             __tmp79215))))
                                     (declare (not safe))
                                     (cons _len77431_ __tmp79214))))
                              (declare (not safe))
                              (cons __tmp79218 __tmp79213))))
                       (declare (not safe))
                       (cons _tmp77433_ __tmp79212))))
                (declare (not safe))
                (cons __tmp79211 _post77399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp77394_
                                                  _rest77426_
                                                  __tmp79226
                                                  __tmp79219
                                                  __tmp79210)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx77238_
                                                _hd77427_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7740077414_))
                              (let ((_tl7741077467_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7740077414_)))
                                    (_hd7740977465_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7740077414_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7740977465_))
                                    (let ((_tl7741277472_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7740977465_)))
                                          (_hd7741177470_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7740977465_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7741277472_))
                                          (let ((_hd77475_ _hd7741177470_)
                                                (_rest77477_ _tl7741077467_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7740877462_
                                               _rest77477_
                                               _hd77475_)))
                                          (let ((_hd77450_ _hd7740977465_)
                                                (_rest77452_ _tl7741077467_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7740577442_
                                               _rest77452_
                                               _hd77450_)))))
                                    (let ((_hd77450_ _hd7740977465_)
                                          (_rest77452_ _tl7741077467_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7740577442_
                                         _rest77452_
                                         _hd77450_)))))
                              (let ()
                                (declare (not safe))
                                (_else7740377422_))))))))
                 (_compile-bind77242_
                  (lambda (_bind77386_ _post77387_ _body77388_)
                    (let ((__tmp79245
                           (let ((__tmp79246
                                  (let ((__tmp79249 (reverse _bind77386_))
                                        (__tmp79247
                                         (let ((__tmp79248
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77243_
                                                   _post77387_
                                                   _body77388_))))
                                           (declare (not safe))
                                           (cons __tmp79248 '()))))
                                    (declare (not safe))
                                    (cons __tmp79249 __tmp79247))))
                             (declare (not safe))
                             (cons 'let __tmp79246))))
                      (declare (not safe))
                      (__SRC__% __tmp79245 _stx77238_))))
                 (_compile-post77243_
                  (lambda (_post77245_ _body77246_)
                    (let ((__tmp79250
                           (let ((__tmp79251
                                  (let ((__tmp79252
                                         (let ((__tmp79254
                                                (lambda (_hd77248_ _r77249_)
                                                  (let* ((_hd7725077273_
                                                          _hd77248_)
                                                         (_E7725477277_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7725077273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7726777371_
                                                           (lambda (_expr77369_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr77369_ _r77249_))))
                  (_K7726277349_
                   (lambda (_expr77346_ _id77347_)
                     (let ((__tmp79255
                            (let ((__tmp79256
                                   (let ((__tmp79257
                                          (let ((__tmp79258
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr77346_ '()))))
                                            (declare (not safe))
                                            (cons _id77347_ __tmp79258))))
                                     (declare (not safe))
                                     (cons 'set! __tmp79257))))
                              (declare (not safe))
                              (__SRC__% __tmp79256 _stx77238_))))
                       (declare (not safe))
                       (cons __tmp79255 _r77249_))))
                  (_K7725577316_
                   (lambda (_init77281_ _len77282_ _expr77283_ _tmp77284_)
                     (let ((__tmp79259
                            (let ((__tmp79260
                                   (let ((__tmp79261
                                          (let ((__tmp79275
                                                 (let ((__tmp79276
                                                        (let ((__tmp79277
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr77283_ '()))))
                  (declare (not safe))
                  (cons _tmp77284_ __tmp79277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79276 '())))
                                                (__tmp79262
                                                 (let ((__tmp79271
                                                        (let ((__tmp79272
                                                               (let ((__tmp79273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp79274
                                     (let ()
                                       (declare (not safe))
                                       (cons _len77282_ '()))))
                                (declare (not safe))
                                (cons _tmp77284_ __tmp79274))))
                         (declare (not safe))
                         (cons '__check-values __tmp79273))))
                  (declare (not safe))
                  (__SRC__% __tmp79272 _stx77238_)))
               (__tmp79263
                (let ((__tmp79264
                       (map (lambda (_hd77286_)
                              (let* ((_hd7728777294_ _hd77286_)
                                     (_E7728977298_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7728777294_))))
                                     (_K7729077304_
                                      (lambda (_k77301_ _id77302_)
                                        (let ((__tmp79265
                                               (let ((__tmp79266
                                                      (let ((__tmp79267
                                                             (let ((__tmp79268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79269
                                   (let ((__tmp79270
                                          (let ()
                                            (declare (not safe))
                                            (cons _k77301_ '()))))
                                     (declare (not safe))
                                     (cons _tmp77284_ __tmp79270))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp79269))))
                       (declare (not safe))
                       (cons __tmp79268 '()))))
                (declare (not safe))
                (cons _id77302_ __tmp79267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp79266))))
                                          (declare (not safe))
                                          (__SRC__% __tmp79265 _stx77238_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7728777294_))
                                    (let ((_hd7729177307_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7728777294_)))
                                          (_tl7729277309_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7728777294_))))
                                      (let* ((_id77312_ _hd7729177307_)
                                             (_k77314_ _tl7729277309_))
                                        (declare (not safe))
                                        (_K7729077304_ _k77314_ _id77312_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7728977298_)))))
                            _init77281_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp79264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79271
                                                         __tmp79263))))
                                            (declare (not safe))
                                            (cons __tmp79275 __tmp79262))))
                                     (declare (not safe))
                                     (cons 'let __tmp79261))))
                              (declare (not safe))
                              (__SRC__% __tmp79260 _stx77238_))))
                       (declare (not safe))
                       (cons __tmp79259 _r77249_)))))
              (if (let () (declare (not safe)) (##pair? _hd7725077273_))
                  (let ((_tl7726977376_
                         (let () (declare (not safe)) (##cdr _hd7725077273_)))
                        (_hd7726877374_
                         (let () (declare (not safe)) (##car _hd7725077273_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7726877374_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7726977376_))
                            (let ((_tl7727177381_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7726977376_)))
                                  (_hd7727077379_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7726977376_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7727177381_))
                                  (let ((_expr77384_ _hd7727077379_))
                                    (declare (not safe))
                                    (_K7726777371_ _expr77384_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7727177381_))
                                      (let ((_tl7726177335_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7727177381_)))
                                            (_hd7726077333_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7727177381_))))
                                        (let ((_tmp77324_ _hd7726877374_)
                                              (_expr77331_ _hd7727077379_)
                                              (_len77338_ _hd7726077333_)
                                              (_init77340_ _tl7726177335_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7725577316_
                                             _init77340_
                                             _len77338_
                                             _expr77331_
                                             _tmp77324_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7725477277_)))))
                            (let () (declare (not safe)) (_E7725477277_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7726977376_))
                            (let ((_tl7726677361_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7726977376_)))
                                  (_hd7726577359_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7726977376_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7726677361_))
                                  (let ((_id77357_ _hd7726877374_)
                                        (_expr77364_ _hd7726577359_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7726277349_ _expr77364_ _id77357_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7726677361_))
                                      (let ((_tl7726177335_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7726677361_)))
                                            (_hd7726077333_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7726677361_))))
                                        (let ((_tmp77324_ _hd7726877374_)
                                              (_expr77331_ _hd7726577359_)
                                              (_len77338_ _hd7726077333_)
                                              (_init77340_ _tl7726177335_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7725577316_
                                             _init77340_
                                             _len77338_
                                             _expr77331_
                                             _tmp77324_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7725477277_)))))
                            (let () (declare (not safe)) (_E7725477277_)))))
                  (let () (declare (not safe)) (_E7725477277_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp79253 (list _body77246_)))
                                           (declare (not safe))
                                           (foldl1 __tmp79254
                                                   __tmp79253
                                                   _post77245_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp79252))))
                             (declare (not safe))
                             (cons 'begin __tmp79251))))
                      (declare (not safe))
                      (__SRC__% __tmp79250 _stx77238_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77238_
             _compile-simple77240_
             _compile-values77241_)))))
    (define __compile-call%
      (lambda (_stx77198_)
        (let* ((_$e77200_ _stx77198_)
               (_$E7720277211_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77200_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77200_))
              (let* ((_$tgt7720377214_
                      (let () (declare (not safe)) (__AST-e _$e77200_)))
                     (_$hd7720477217_
                      (let () (declare (not safe)) (##car _$tgt7720377214_)))
                     (_$tl7720577220_
                      (let () (declare (not safe)) (##cdr _$tgt7720377214_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7720577220_))
                    (let* ((_$tgt7720677224_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7720577220_)))
                           (_$hd7720777227_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7720677224_)))
                           (_$tl7720877230_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7720677224_))))
                      (let* ((_rator77234_ _$hd7720777227_)
                             (_rands77236_ _$tl7720877230_)
                             (__tmp79278
                              (let ((__tmp79280
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator77234_)))
                                    (__tmp79279 (map __compile _rands77236_)))
                                (declare (not safe))
                                (cons __tmp79280 __tmp79279))))
                        (declare (not safe))
                        (__SRC__% __tmp79278 _stx77198_)))
                    (let () (declare (not safe)) (_$E7720277211_))))
              (let () (declare (not safe)) (_$E7720277211_))))))
    (define __compile-ref%
      (lambda (_stx77160_)
        (let* ((_$e77162_ _stx77160_)
               (_$E7716477173_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77162_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77162_))
              (let* ((_$tgt7716577176_
                      (let () (declare (not safe)) (__AST-e _$e77162_)))
                     (_$hd7716677179_
                      (let () (declare (not safe)) (##car _$tgt7716577176_)))
                     (_$tl7716777182_
                      (let () (declare (not safe)) (##cdr _$tgt7716577176_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7716777182_))
                    (let* ((_$tgt7716877186_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7716777182_)))
                           (_$hd7716977189_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7716877186_)))
                           (_$tl7717077192_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7716877186_))))
                      (let ((_id77196_ _$hd7716977189_))
                        (if (let ((__tmp79281
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7717077192_))))
                              (declare (not safe))
                              (equal? __tmp79281 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id77196_ _stx77160_))
                            (let () (declare (not safe)) (_$E7716477173_)))))
                    (let () (declare (not safe)) (_$E7716477173_))))
              (let () (declare (not safe)) (_$E7716477173_))))))
    (define __compile-setq%
      (lambda (_stx77107_)
        (let* ((_$e77109_ _stx77107_)
               (_$E7711177123_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77109_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77109_))
              (let* ((_$tgt7711277126_
                      (let () (declare (not safe)) (__AST-e _$e77109_)))
                     (_$hd7711377129_
                      (let () (declare (not safe)) (##car _$tgt7711277126_)))
                     (_$tl7711477132_
                      (let () (declare (not safe)) (##cdr _$tgt7711277126_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7711477132_))
                    (let* ((_$tgt7711577136_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7711477132_)))
                           (_$hd7711677139_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7711577136_)))
                           (_$tl7711777142_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7711577136_))))
                      (let ((_id77146_ _$hd7711677139_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7711777142_))
                            (let* ((_$tgt7711877148_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7711777142_)))
                                   (_$hd7711977151_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7711877148_)))
                                   (_$tl7712077154_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7711877148_))))
                              (let ((_expr77158_ _$hd7711977151_))
                                (if (let ((__tmp79287
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7712077154_))))
                                      (declare (not safe))
                                      (equal? __tmp79287 '()))
                                    (let ((__tmp79282
                                           (let ((__tmp79283
                                                  (let ((__tmp79286
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id77146_
                                                            _stx77107_)))
                                                        (__tmp79284
                                                         (let ((__tmp79285
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr77158_))))
                   (declare (not safe))
                   (cons __tmp79285 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79286
                                                          __tmp79284))))
                                             (declare (not safe))
                                             (cons 'set! __tmp79283))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79282 _stx77107_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7711177123_)))))
                            (let () (declare (not safe)) (_$E7711177123_)))))
                    (let () (declare (not safe)) (_$E7711177123_))))
              (let () (declare (not safe)) (_$E7711177123_))))))
    (define __compile-if%
      (lambda (_stx77039_)
        (let* ((_$e77041_ _stx77039_)
               (_$E7704377058_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77041_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77041_))
              (let* ((_$tgt7704477061_
                      (let () (declare (not safe)) (__AST-e _$e77041_)))
                     (_$hd7704577064_
                      (let () (declare (not safe)) (##car _$tgt7704477061_)))
                     (_$tl7704677067_
                      (let () (declare (not safe)) (##cdr _$tgt7704477061_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7704677067_))
                    (let* ((_$tgt7704777071_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7704677067_)))
                           (_$hd7704877074_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7704777071_)))
                           (_$tl7704977077_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7704777071_))))
                      (let ((_p77081_ _$hd7704877074_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7704977077_))
                            (let* ((_$tgt7705077083_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7704977077_)))
                                   (_$hd7705177086_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7705077083_)))
                                   (_$tl7705277089_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7705077083_))))
                              (let ((_t77093_ _$hd7705177086_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7705277089_))
                                    (let* ((_$tgt7705377095_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7705277089_)))
                                           (_$hd7705477098_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7705377095_)))
                                           (_$tl7705577101_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7705377095_))))
                                      (let ((_f77105_ _$hd7705477098_))
                                        (if (let ((__tmp79295
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7705577101_))))
                                              (declare (not safe))
                                              (equal? __tmp79295 '()))
                                            (let ((__tmp79288
                                                   (let ((__tmp79289
                                                          (let ((__tmp79294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p77081_)))
                        (__tmp79290
                         (let ((__tmp79293
                                (let ()
                                  (declare (not safe))
                                  (__compile _t77093_)))
                               (__tmp79291
                                (let ((__tmp79292
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f77105_))))
                                  (declare (not safe))
                                  (cons __tmp79292 '()))))
                           (declare (not safe))
                           (cons __tmp79293 __tmp79291))))
                    (declare (not safe))
                    (cons __tmp79294 __tmp79290))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp79289))))
                                              (declare (not safe))
                                              (__SRC__% __tmp79288 _stx77039_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7704377058_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7704377058_)))))
                            (let () (declare (not safe)) (_$E7704377058_)))))
                    (let () (declare (not safe)) (_$E7704377058_))))
              (let () (declare (not safe)) (_$E7704377058_))))))
    (define __compile-quote%
      (lambda (_stx77001_)
        (let* ((_$e77003_ _stx77001_)
               (_$E7700577014_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77003_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77003_))
              (let* ((_$tgt7700677017_
                      (let () (declare (not safe)) (__AST-e _$e77003_)))
                     (_$hd7700777020_
                      (let () (declare (not safe)) (##car _$tgt7700677017_)))
                     (_$tl7700877023_
                      (let () (declare (not safe)) (##cdr _$tgt7700677017_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7700877023_))
                    (let* ((_$tgt7700977027_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7700877023_)))
                           (_$hd7701077030_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7700977027_)))
                           (_$tl7701177033_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7700977027_))))
                      (let ((_e77037_ _$hd7701077030_))
                        (if (let ((__tmp79299
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7701177033_))))
                              (declare (not safe))
                              (equal? __tmp79299 '()))
                            (let ((__tmp79296
                                   (let ((__tmp79297
                                          (let ((__tmp79298
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e77037_))))
                                            (declare (not safe))
                                            (cons __tmp79298 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79297))))
                              (declare (not safe))
                              (__SRC__% __tmp79296 _stx77001_))
                            (let () (declare (not safe)) (_$E7700577014_)))))
                    (let () (declare (not safe)) (_$E7700577014_))))
              (let () (declare (not safe)) (_$E7700577014_))))))
    (define __compile-quote-syntax%
      (lambda (_stx76963_)
        (let* ((_$e76965_ _stx76963_)
               (_$E7696776976_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76965_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76965_))
              (let* ((_$tgt7696876979_
                      (let () (declare (not safe)) (__AST-e _$e76965_)))
                     (_$hd7696976982_
                      (let () (declare (not safe)) (##car _$tgt7696876979_)))
                     (_$tl7697076985_
                      (let () (declare (not safe)) (##cdr _$tgt7696876979_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7697076985_))
                    (let* ((_$tgt7697176989_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7697076985_)))
                           (_$hd7697276992_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7697176989_)))
                           (_$tl7697376995_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7697176989_))))
                      (let ((_e76999_ _$hd7697276992_))
                        (if (let ((__tmp79302
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7697376995_))))
                              (declare (not safe))
                              (equal? __tmp79302 '()))
                            (let ((__tmp79300
                                   (let ((__tmp79301
                                          (let ()
                                            (declare (not safe))
                                            (cons _e76999_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79301))))
                              (declare (not safe))
                              (__SRC__% __tmp79300 _stx76963_))
                            (let () (declare (not safe)) (_$E7696776976_)))))
                    (let () (declare (not safe)) (_$E7696776976_))))
              (let () (declare (not safe)) (_$E7696776976_))))))
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
