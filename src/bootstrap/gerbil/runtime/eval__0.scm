(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1709038441)
  (begin
    (define __syntax::t
      (let ((__tmp77185 (list))
            (__tmp77183
             (let ((__tmp77184
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77184 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77185
         '(e id)
         __tmp77183
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args76994_ (apply make-instance __syntax::t _$args76994_)))
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
      (let ((__tmp77188 (list __syntax::t))
            (__tmp77186
             (let ((__tmp77187
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77187 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77188
         '()
         __tmp77186
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args76991_ (apply make-instance __core-form::t _$args76991_)))
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
      (let ((__tmp77191 (list __core-form::t))
            (__tmp77189
             (let ((__tmp77190
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77190 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77191
         '()
         __tmp77189
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args76988_
        (apply make-instance __core-expression::t _$args76988_)))
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
      (let ((__tmp77194 (list __core-form::t))
            (__tmp77192
             (let ((__tmp77193
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77193 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77194
         '()
         __tmp77192
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args76985_
        (apply make-instance __core-special-form::t _$args76985_)))
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
      (lambda (_id76983_)
        (let ((__tmp77195 (let () (declare (not safe)) (__AST-e _id76983_))))
          (declare (not safe))
          (hash-get __core __tmp77195))))
    (define __core-bound-id?__%
      (lambda (_id76967_ _is?76968_)
        (let ((_$e76970_
               (let () (declare (not safe)) (__core-resolve _id76967_))))
          (if _$e76970_ (_is?76968_ _$e76970_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id76976_)
        (let ((_is?76978_ true))
          (declare (not safe))
          (__core-bound-id?__% _id76976_ _is?76978_))))
    (define __core-bound-id?
      (lambda _g77197_
        (let ((_g77196_ (let () (declare (not safe)) (##length _g77197_))))
          (cond ((let () (declare (not safe)) (##fx= _g77196_ 1))
                 (apply (lambda (_id76976_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id76976_)))
                        _g77197_))
                ((let () (declare (not safe)) (##fx= _g77196_ 2))
                 (apply (lambda (_id76980_ _is?76981_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id76980_ _is?76981_)))
                        _g77197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77197_))))))
    (define __core-bind-syntax!__%
      (lambda (_id76950_ _e76951_ _make76952_)
        (let ((__tmp77198
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e76951_
                      'gerbil/runtime/eval#__syntax::t))
                   _e76951_
                   (_make76952_ _e76951_ _id76950_))))
          (declare (not safe))
          (hash-put! __core _id76950_ __tmp77198))))
    (define __core-bind-syntax!__0
      (lambda (_id76957_ _e76958_)
        (let ((_make76960_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id76957_ _e76958_ _make76960_))))
    (define __core-bind-syntax!
      (lambda _g77200_
        (let ((_g77199_ (let () (declare (not safe)) (##length _g77200_))))
          (cond ((let () (declare (not safe)) (##fx= _g77199_ 2))
                 (apply (lambda (_id76957_ _e76958_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id76957_ _e76958_)))
                        _g77200_))
                ((let () (declare (not safe)) (##fx= _g77199_ 3))
                 (apply (lambda (_id76962_ _e76963_ _make76964_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id76962_
                             _e76963_
                             _make76964_)))
                        _g77200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77200_))))))
    (define __SRC__%
      (lambda (_e76933_ _src-stx76934_)
        (if (or (let () (declare (not safe)) (pair? _e76933_))
                (let () (declare (not safe)) (symbol? _e76933_)))
            (let ((__tmp77204
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx76934_
                          'gerbil#AST::t))
                       (let ((__tmp77205
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx76934_))))
                         (declare (not safe))
                         (__locat __tmp77205))
                       '#f)))
              (declare (not safe))
              (##make-source _e76933_ __tmp77204))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e76933_ 'gerbil#AST::t))
                (let ((__tmp77203
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e76933_ '1 AST::t '#f)))
                      (__tmp77201
                       (let ((__tmp77202
                              (let ()
                                (declare (not safe))
                                (__AST-source _e76933_))))
                         (declare (not safe))
                         (__locat __tmp77202))))
                  (declare (not safe))
                  (##make-source __tmp77203 __tmp77201))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e76933_))))))
    (define __SRC__0
      (lambda (_e76942_)
        (let ((_src-stx76944_ '#f))
          (declare (not safe))
          (__SRC__% _e76942_ _src-stx76944_))))
    (define __SRC
      (lambda _g77207_
        (let ((_g77206_ (let () (declare (not safe)) (##length _g77207_))))
          (cond ((let () (declare (not safe)) (##fx= _g77206_ 1))
                 (apply (lambda (_e76942_)
                          (let () (declare (not safe)) (__SRC__0 _e76942_)))
                        _g77207_))
                ((let () (declare (not safe)) (##fx= _g77206_ 2))
                 (apply (lambda (_e76946_ _src-stx76947_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e76946_ _src-stx76947_)))
                        _g77207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77207_))))))
    (define __locat
      (lambda (_loc76930_)
        (if (let () (declare (not safe)) (##locat? _loc76930_))
            _loc76930_
            '#f)))
    (define __check-values
      (lambda (_obj76925_ _k76926_)
        (let ((_count76928_
               (if (let () (declare (not safe)) (##values? _obj76925_))
                   (let () (declare (not safe)) (##vector-length _obj76925_))
                   '1)))
          (if (fx= _count76928_ _k76926_)
              '#!void
              (let ((__tmp77209
                     (if (fx< _count76928_ _k76926_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77208
                     (if (let () (declare (not safe)) (##values? _obj76925_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj76925_))
                         _obj76925_)))
                (declare (not safe))
                (error __tmp77209 __tmp77208 _k76926_))))))
    (define __compile
      (lambda (_stx76895_)
        (let* ((_$e76897_ _stx76895_)
               (_$E7689976905_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76897_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76897_))
              (let* ((_$tgt7690076908_
                      (let () (declare (not safe)) (__AST-e _$e76897_)))
                     (_$hd7690176911_
                      (let () (declare (not safe)) (##car _$tgt7690076908_)))
                     (_$tl7690276914_
                      (let () (declare (not safe)) (##cdr _$tgt7690076908_))))
                (let* ((_form76918_ _$hd7690176911_)
                       (_$e76920_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form76918_))))
                  (if _$e76920_
                      ((lambda (_bind76923_)
                         ((##structure-ref _bind76923_ '1 __syntax::t '#f)
                          _stx76895_))
                       _$e76920_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx76895_
                         _form76918_)))))
              (let () (declare (not safe)) (_$E7689976905_))))))
    (define __compile-error__%
      (lambda (_stx76882_ _detail76883_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx76882_
           _detail76883_))))
    (define __compile-error__0
      (lambda (_stx76888_)
        (let ((_detail76890_ '#f))
          (declare (not safe))
          (__compile-error__% _stx76888_ _detail76890_))))
    (define __compile-error
      (lambda _g77211_
        (let ((_g77210_ (let () (declare (not safe)) (##length _g77211_))))
          (cond ((let () (declare (not safe)) (##fx= _g77210_ 1))
                 (apply (lambda (_stx76888_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx76888_)))
                        _g77211_))
                ((let () (declare (not safe)) (##fx= _g77210_ 2))
                 (apply (lambda (_stx76892_ _detail76893_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx76892_ _detail76893_)))
                        _g77211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77211_))))))
    (define __compile-ignore%
      (lambda (_stx76879_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx76879_))))
    (define __compile-begin%
      (lambda (_stx76854_)
        (let* ((_$e76856_ _stx76854_)
               (_$E7685876864_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76856_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76856_))
              (let* ((_$tgt7685976867_
                      (let () (declare (not safe)) (__AST-e _$e76856_)))
                     (_$hd7686076870_
                      (let () (declare (not safe)) (##car _$tgt7685976867_)))
                     (_$tl7686176873_
                      (let () (declare (not safe)) (##cdr _$tgt7685976867_))))
                (let* ((_body76877_ _$tl7686176873_)
                       (__tmp77212
                        (let ((__tmp77213 (map __compile _body76877_)))
                          (declare (not safe))
                          (cons 'begin __tmp77213))))
                  (declare (not safe))
                  (__SRC__% __tmp77212 _stx76854_)))
              (let () (declare (not safe)) (_$E7685876864_))))))
    (define __compile-begin-foreign%
      (lambda (_stx76829_)
        (let* ((_$e76831_ _stx76829_)
               (_$E7683376839_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76831_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76831_))
              (let* ((_$tgt7683476842_
                      (let () (declare (not safe)) (__AST-e _$e76831_)))
                     (_$hd7683576845_
                      (let () (declare (not safe)) (##car _$tgt7683476842_)))
                     (_$tl7683676848_
                      (let () (declare (not safe)) (##cdr _$tgt7683476842_))))
                (let* ((_body76852_ _$tl7683676848_)
                       (__tmp77214
                        (let ((__tmp77215
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body76852_))))
                          (declare (not safe))
                          (cons 'begin __tmp77215))))
                  (declare (not safe))
                  (__SRC__% __tmp77214 _stx76829_)))
              (let () (declare (not safe)) (_$E7683376839_))))))
    (define __compile-import%
      (lambda (_stx76804_)
        (let* ((_$e76806_ _stx76804_)
               (_$E7680876814_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76806_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76806_))
              (let* ((_$tgt7680976817_
                      (let () (declare (not safe)) (__AST-e _$e76806_)))
                     (_$hd7681076820_
                      (let () (declare (not safe)) (##car _$tgt7680976817_)))
                     (_$tl7681176823_
                      (let () (declare (not safe)) (##cdr _$tgt7680976817_))))
                (let* ((_body76827_ _$tl7681176823_)
                       (__tmp77216
                        (let ((__tmp77217
                               (let ((__tmp77218
                                      (let ((__tmp77219
                                             (let ()
                                               (declare (not safe))
                                               (cons _body76827_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp77219))))
                                 (declare (not safe))
                                 (cons __tmp77218 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp77217))))
                  (declare (not safe))
                  (__SRC__% __tmp77216 _stx76804_)))
              (let () (declare (not safe)) (_$E7680876814_))))))
    (define __compile-begin-annotation%
      (lambda (_stx76751_)
        (let* ((_$e76753_ _stx76751_)
               (_$E7675576767_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76753_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76753_))
              (let* ((_$tgt7675676770_
                      (let () (declare (not safe)) (__AST-e _$e76753_)))
                     (_$hd7675776773_
                      (let () (declare (not safe)) (##car _$tgt7675676770_)))
                     (_$tl7675876776_
                      (let () (declare (not safe)) (##cdr _$tgt7675676770_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7675876776_))
                    (let* ((_$tgt7675976780_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7675876776_)))
                           (_$hd7676076783_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7675976780_)))
                           (_$tl7676176786_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7675976780_))))
                      (let ((_ann76790_ _$hd7676076783_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7676176786_))
                            (let* ((_$tgt7676276792_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7676176786_)))
                                   (_$hd7676376795_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7676276792_)))
                                   (_$tl7676476798_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7676276792_))))
                              (let ((_expr76802_ _$hd7676376795_))
                                (if (let ((__tmp77220
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7676476798_))))
                                      (declare (not safe))
                                      (equal? __tmp77220 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr76802_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7675576767_)))))
                            (let () (declare (not safe)) (_$E7675576767_)))))
                    (let () (declare (not safe)) (_$E7675576767_))))
              (let () (declare (not safe)) (_$E7675576767_))))))
    (define __compile-define-values%
      (lambda (_stx76642_)
        (let* ((_$e76644_ _stx76642_)
               (_$E7664676658_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76644_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76644_))
              (let* ((_$tgt7664776661_
                      (let () (declare (not safe)) (__AST-e _$e76644_)))
                     (_$hd7664876664_
                      (let () (declare (not safe)) (##car _$tgt7664776661_)))
                     (_$tl7664976667_
                      (let () (declare (not safe)) (##cdr _$tgt7664776661_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7664976667_))
                    (let* ((_$tgt7665076671_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7664976667_)))
                           (_$hd7665176674_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7665076671_)))
                           (_$tl7665276677_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7665076671_))))
                      (let ((_hd76681_ _$hd7665176674_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7665276677_))
                            (let* ((_$tgt7665376683_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7665276677_)))
                                   (_$hd7665476686_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7665376683_)))
                                   (_$tl7665576689_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7665376683_))))
                              (let ((_expr76693_ _$hd7665476686_))
                                (if (let ((__tmp77253
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7665576689_))))
                                      (declare (not safe))
                                      (equal? __tmp77253 '()))
                                    (let* ((_$e76695_ _hd76681_)
                                           (_$E7669776738_
                                            (lambda ()
                                              (let ((_$E7669876723_
                                                     (lambda ()
                                                       (let* ((_$E7669976710_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e76695_))))
                      (_ids76713_ _hd76681_)
                      (_len76715_ (length _ids76713_))
                      (_tmp76717_
                       (let ((__tmp77221 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp77221))))
                 (let ((__tmp77222
                        (let ((__tmp77223
                               (let ((__tmp77240
                                      (let ((__tmp77241
                                             (let ((__tmp77242
                                                    (let ((__tmp77243
                                                           (let ((__tmp77244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr76693_))))
                     (declare (not safe))
                     (cons __tmp77244 '()))))
              (declare (not safe))
              (cons _tmp76717_ __tmp77243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp77242))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77241 _stx76642_)))
                                     (__tmp77224
                                      (let ((__tmp77236
                                             (let ((__tmp77237
                                                    (let ((__tmp77238
                                                           (let ((__tmp77239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len76715_ '()))))
                     (declare (not safe))
                     (cons _tmp76717_ __tmp77239))))
              (declare (not safe))
              (cons '__check-values __tmp77238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77237
                                                _stx76642_)))
                                            (__tmp77225
                                             (let ((__tmp77226
                                                    (let ((__tmp77228
                                                           (lambda (_id76720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k76721_)
                     (if (let () (declare (not safe)) (__AST-e _id76720_))
                         (let ((__tmp77229
                                (let ((__tmp77230
                                       (let ((__tmp77235
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id76720_)))
                                             (__tmp77231
                                              (let ((__tmp77232
                                                     (let ((__tmp77233
                                                            (let ((__tmp77234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k76721_ '()))))
                      (declare (not safe))
                      (cons _tmp76717_ __tmp77234))))
               (declare (not safe))
               (cons '##vector-ref __tmp77233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77232 '()))))
                                         (declare (not safe))
                                         (cons __tmp77235 __tmp77231))))
                                  (declare (not safe))
                                  (cons 'define __tmp77230))))
                           (declare (not safe))
                           (__SRC__% __tmp77229 _stx76642_))
                         '#f)))
                  (__tmp77227
                   (let () (declare (not safe)) (iota__0 _len76715_))))
              (declare (not safe))
              (filter-map2 __tmp77228 _ids76713_ __tmp77227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp77226))))
                                        (declare (not safe))
                                        (cons __tmp77236 __tmp77225))))
                                 (declare (not safe))
                                 (cons __tmp77240 __tmp77224))))
                          (declare (not safe))
                          (cons 'begin __tmp77223))))
                   (declare (not safe))
                   (__SRC__% __tmp77222 _stx76642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e76695_))
                                                    (let* ((_$tgt7670076726_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e76695_)))
                                                           (_$hd7670176729_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7670076726_)))
                                                           (_$tl7670276732_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7670076726_))))
                                                      (let ((_id76736_
                                                             _$hd7670176729_))
                                                        (if (let ((__tmp77250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7670276732_))))
                      (declare (not safe))
                      (equal? __tmp77250 '()))
                    (let ((__tmp77245
                           (let ((__tmp77246
                                  (let ((__tmp77249
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76736_)))
                                        (__tmp77247
                                         (let ((__tmp77248
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr76693_))))
                                           (declare (not safe))
                                           (cons __tmp77248 '()))))
                                    (declare (not safe))
                                    (cons __tmp77249 __tmp77247))))
                             (declare (not safe))
                             (cons 'define __tmp77246))))
                      (declare (not safe))
                      (__SRC__% __tmp77245 _stx76642_))
                    (let () (declare (not safe)) (_$E7669876723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7669876723_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e76695_))
                                          (let* ((_$tgt7670376741_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e76695_)))
                                                 (_$hd7670476744_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7670376741_)))
                                                 (_$tl7670576747_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7670376741_))))
                                            (if (let ((__tmp77252
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7670476744_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77252 '#f))
                                                (if (let ((__tmp77251
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7670576747_))))
                                                      (declare (not safe))
                                                      (equal? __tmp77251 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr76693_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7669776738_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7669776738_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7669776738_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7664676658_)))))
                            (let () (declare (not safe)) (_$E7664676658_)))))
                    (let () (declare (not safe)) (_$E7664676658_))))
              (let () (declare (not safe)) (_$E7664676658_))))))
    (define __compile-head-id
      (lambda (_e76640_)
        (let ((__tmp77254
               (if (let () (declare (not safe)) (__AST-e _e76640_))
                   _e76640_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp77254))))
    (define __compile-lambda-head
      (lambda (_hd76597_)
        (let _recur76599_ ((_rest76601_ _hd76597_))
          (let* ((_$e76603_ _rest76601_)
                 (_$E7660576623_
                  (lambda ()
                    (let ((_$E7660676620_
                           (lambda ()
                             (let* ((_$E7660776615_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e76603_))))
                                    (_tail76618_ _$e76603_))
                               (declare (not safe))
                               (__compile-head-id _tail76618_)))))
                      (if (let ((__tmp77255
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e76603_))))
                            (declare (not safe))
                            (equal? __tmp77255 '()))
                          '()
                          (let () (declare (not safe)) (_$E7660676620_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76603_))
                (let* ((_$tgt7660876626_
                        (let () (declare (not safe)) (__AST-e _$e76603_)))
                       (_$hd7660976629_
                        (let () (declare (not safe)) (##car _$tgt7660876626_)))
                       (_$tl7661076632_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7660876626_))))
                  (let* ((_hd76636_ _$hd7660976629_)
                         (_rest76638_ _$tl7661076632_))
                    (let ((__tmp77257
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd76636_)))
                          (__tmp77256
                           (let ()
                             (declare (not safe))
                             (_recur76599_ _rest76638_))))
                      (declare (not safe))
                      (cons __tmp77257 __tmp77256))))
                (let () (declare (not safe)) (_$E7660576623_)))))))
    (define __compile-lambda%
      (lambda (_stx76544_)
        (let* ((_$e76546_ _stx76544_)
               (_$E7654876560_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76546_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76546_))
              (let* ((_$tgt7654976563_
                      (let () (declare (not safe)) (__AST-e _$e76546_)))
                     (_$hd7655076566_
                      (let () (declare (not safe)) (##car _$tgt7654976563_)))
                     (_$tl7655176569_
                      (let () (declare (not safe)) (##cdr _$tgt7654976563_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7655176569_))
                    (let* ((_$tgt7655276573_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7655176569_)))
                           (_$hd7655376576_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7655276573_)))
                           (_$tl7655476579_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7655276573_))))
                      (let ((_hd76583_ _$hd7655376576_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7655476579_))
                            (let* ((_$tgt7655576585_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7655476579_)))
                                   (_$hd7655676588_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7655576585_)))
                                   (_$tl7655776591_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7655576585_))))
                              (let ((_body76595_ _$hd7655676588_))
                                (if (let ((__tmp77263
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7655776591_))))
                                      (declare (not safe))
                                      (equal? __tmp77263 '()))
                                    (let ((__tmp77258
                                           (let ((__tmp77259
                                                  (let ((__tmp77262
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd76583_)))
                                                        (__tmp77260
                                                         (let ((__tmp77261
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body76595_))))
                   (declare (not safe))
                   (cons __tmp77261 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77262
                                                          __tmp77260))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp77259))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77258 _stx76544_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7654876560_)))))
                            (let () (declare (not safe)) (_$E7654876560_)))))
                    (let () (declare (not safe)) (_$E7654876560_))))
              (let () (declare (not safe)) (_$E7654876560_))))))
    (define __compile-case-lambda%
      (lambda (_stx76336_)
        (letrec ((_variadic?76338_
                  (lambda (_hd76509_)
                    (let* ((_$e76511_ _hd76509_)
                           (_$E7651376529_
                            (lambda ()
                              (let ((_$E7651476526_
                                     (lambda ()
                                       (let ((_$E7651576523_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e76511_)))))
                                         '#t))))
                                (if (let ((__tmp77264
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e76511_))))
                                      (declare (not safe))
                                      (equal? __tmp77264 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7651476526_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76511_))
                          (let* ((_$tgt7651676532_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76511_)))
                                 (_$hd7651776535_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7651676532_)))
                                 (_$tl7651876538_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7651676532_))))
                            (let ((_rest76542_ _$tl7651876538_))
                              (declare (not safe))
                              (_variadic?76338_ _rest76542_)))
                          (let () (declare (not safe)) (_$E7651376529_))))))
                 (_arity76339_
                  (lambda (_hd76474_)
                    (let _lp76476_ ((_rest76478_ _hd76474_) (_k76479_ '0))
                      (let* ((_$e76481_ _rest76478_)
                             (_$E7648376494_
                              (lambda ()
                                (let ((_$E7648476491_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e76481_)))))
                                  _k76479_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e76481_))
                            (let* ((_$tgt7648576497_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e76481_)))
                                   (_$hd7648676500_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7648576497_)))
                                   (_$tl7648776503_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7648576497_))))
                              (let* ((_rest76507_ _$tl7648776503_)
                                     (__tmp77265
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k76479_ '1))))
                                (declare (not safe))
                                (_lp76476_ _rest76507_ __tmp77265)))
                            (let () (declare (not safe)) (_$E7648376494_)))))))
                 (_generate76340_
                  (lambda (_rest76401_ _args76402_ _len76403_)
                    (let* ((_$e76405_ _rest76401_)
                           (_$E7640776418_
                            (lambda ()
                              (let* ((_$E7640876415_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e76405_))))
                                     (__tmp77266
                                      (let ((__tmp77267
                                             (let ((__tmp77268
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args76402_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp77268))))
                                        (declare (not safe))
                                        (cons 'error __tmp77267))))
                                (declare (not safe))
                                (__SRC__% __tmp77266 _stx76336_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76405_))
                          (let* ((_$tgt7640976421_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76405_)))
                                 (_$hd7641076424_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7640976421_)))
                                 (_$tl7641176427_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7640976421_))))
                            (let* ((_clause76431_ _$hd7641076424_)
                                   (_rest76433_ _$tl7641176427_)
                                   (_$e76435_ _clause76431_)
                                   (_$E7643776446_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e76435_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e76435_))
                                  (let* ((_$tgt7643876449_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e76435_)))
                                         (_$hd7643976452_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7643876449_)))
                                         (_$tl7644076455_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7643876449_))))
                                    (let ((_hd76459_ _$hd7643976452_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7644076455_))
                                          (let* ((_$tgt7644176461_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7644076455_)))
                                                 (_$hd7644276464_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7644176461_)))
                                                 (_$tl7644376467_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7644176461_))))
                                            (if (let ((__tmp77283
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7644376467_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77283 '()))
                                                (let ((_clen76471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity76339_
                                                          _hd76459_)))
                                                      (_cmp76472_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?76338_
                                                              _hd76459_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77269
                                                         (let ((__tmp77270
                                                                (let ((__tmp77280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77281
                                      (let ((__tmp77282
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen76471_ '()))))
                                        (declare (not safe))
                                        (cons _len76403_ __tmp77282))))
                                 (declare (not safe))
                                 (cons _cmp76472_ __tmp77281)))
                              (__tmp77271
                               (let ((__tmp77274
                                      (let ((__tmp77275
                                             (let ((__tmp77276
                                                    (let ((__tmp77278
                                                           (let ((__tmp77279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause76431_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp77279)))
                  (__tmp77277
                   (let () (declare (not safe)) (cons _args76402_ '()))))
              (declare (not safe))
              (cons __tmp77278 __tmp77277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp77276))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77275 _stx76336_)))
                                     (__tmp77272
                                      (let ((__tmp77273
                                             (let ()
                                               (declare (not safe))
                                               (_generate76340_
                                                _rest76433_
                                                _args76402_
                                                _len76403_))))
                                        (declare (not safe))
                                        (cons __tmp77273 '()))))
                                 (declare (not safe))
                                 (cons __tmp77274 __tmp77272))))
                          (declare (not safe))
                          (cons __tmp77280 __tmp77271))))
                   (declare (not safe))
                   (cons 'if __tmp77270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77269
                                                     _stx76336_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7643776446_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7643776446_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7643776446_)))))
                          (let () (declare (not safe)) (_$E7640776418_)))))))
          (let* ((_$e76342_ _stx76336_)
                 (_$E7634476376_
                  (lambda ()
                    (let ((_$E7634576358_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76342_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76342_))
                          (let* ((_$tgt7634676361_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76342_)))
                                 (_$hd7634776364_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7634676361_)))
                                 (_$tl7634876367_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7634676361_))))
                            (let ((_clauses76371_ _$tl7634876367_))
                              (let ((_args76373_
                                     (let ((__tmp77284 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77284 _stx76336_)))
                                    (_len76374_
                                     (let ((__tmp77285 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77285 _stx76336_))))
                                (let ((__tmp77286
                                       (let ((__tmp77287
                                              (let ((__tmp77288
                                                     (let ((__tmp77289
                                                            (let ((__tmp77290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77291
                                  (let ((__tmp77294
                                         (let ((__tmp77295
                                                (let ((__tmp77296
                                                       (let ((__tmp77297
                                                              (let ((__tmp77298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77299
                                    (let ()
                                      (declare (not safe))
                                      (cons _args76373_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp77299))))
                        (declare (not safe))
                        (__SRC__% __tmp77298 _stx76336_))))
                 (declare (not safe))
                 (cons __tmp77297 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len76374_
                                                        __tmp77296))))
                                           (declare (not safe))
                                           (cons __tmp77295 '())))
                                        (__tmp77292
                                         (let ((__tmp77293
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate76340_
                                                   _clauses76371_
                                                   _args76373_
                                                   _len76374_))))
                                           (declare (not safe))
                                           (cons __tmp77293 '()))))
                                    (declare (not safe))
                                    (cons __tmp77294 __tmp77292))))
                             (declare (not safe))
                             (cons 'let __tmp77291))))
                      (declare (not safe))
                      (__SRC__% __tmp77290 _stx76336_))))
               (declare (not safe))
               (cons __tmp77289 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args76373_
                                                      __tmp77288))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp77287))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77286 _stx76336_)))))
                          (let () (declare (not safe)) (_$E7634576358_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76342_))
                (let* ((_$tgt7634976379_
                        (let () (declare (not safe)) (__AST-e _$e76342_)))
                       (_$hd7635076382_
                        (let () (declare (not safe)) (##car _$tgt7634976379_)))
                       (_$tl7635176385_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7634976379_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7635176385_))
                      (let* ((_$tgt7635276389_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7635176385_)))
                             (_$hd7635376392_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7635276389_)))
                             (_$tl7635476395_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7635276389_))))
                        (let ((_clause76399_ _$hd7635376392_))
                          (if (let ((__tmp77301
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7635476395_))))
                                (declare (not safe))
                                (equal? __tmp77301 '()))
                              (let ((__tmp77300
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause76399_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp77300))
                              (let () (declare (not safe)) (_$E7634476376_)))))
                      (let () (declare (not safe)) (_$E7634476376_))))
                (let () (declare (not safe)) (_$E7634476376_)))))))
    (define __compile-let-form
      (lambda (_stx76105_ _compile-simple76106_ _compile-values76107_)
        (letrec ((_simple-bind?76109_
                  (lambda (_hd76294_)
                    (let* ((_hd7629576305_ _hd76294_)
                           (_else7629876313_ (lambda () '#f)))
                      (let ((_K7630176326_ (lambda (_id76324_) '#t))
                            (_K7630076318_ (lambda () '#t)))
                        (let ((_try-match7629776321_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7629576305_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7630076318_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7629876313_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7629576305_))
                              (let ((_tl7630376331_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7629576305_)))
                                    (_hd7630276329_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7629576305_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7630376331_))
                                    (let ((_id76334_ _hd7630276329_))
                                      (declare (not safe))
                                      (_K7630176326_ _id76334_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7629776321_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7629776321_))))))))
                 (_car-e76110_
                  (lambda (_hd76292_)
                    (if (let () (declare (not safe)) (pair? _hd76292_))
                        (car _hd76292_)
                        _hd76292_))))
          (let* ((_$e76112_ _stx76105_)
                 (_$E7611476257_
                  (lambda ()
                    (let ((_$E7611576137_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76112_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76112_))
                          (let* ((_$tgt7611676140_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76112_)))
                                 (_$hd7611776143_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7611676140_)))
                                 (_$tl7611876146_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7611676140_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7611876146_))
                                (let* ((_$tgt7611976150_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7611876146_)))
                                       (_$hd7612076153_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7611976150_)))
                                       (_$tl7612176156_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7611976150_))))
                                  (let ((_hd76160_ _$hd7612076153_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7612176156_))
                                        (let* ((_$tgt7612276162_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7612176156_)))
                                               (_$hd7612376165_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7612276162_)))
                                               (_$tl7612476168_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7612276162_))))
                                          (let ((_body76172_ _$hd7612376165_))
                                            (if (let ((__tmp77304
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7612476168_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77304 '()))
                                                (let* ((_hd-ids76212_
                                                        (map (lambda (_bind76174_)
                                                               (let* ((_$e76176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76174_)
                              (_$E7617876187_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76176_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76176_))
                             (let* ((_$tgt7617976190_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76176_)))
                                    (_$hd7618076193_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7617976190_)))
                                    (_$tl7618176196_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7617976190_))))
                               (let ((_ids76200_ _$hd7618076193_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7618176196_))
                                     (let* ((_$tgt7618276202_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7618176196_)))
                                            (_$hd7618376205_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7618276202_)))
                                            (_$tl7618476208_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7618276202_))))
                                       (if (let ((__tmp77302
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7618476208_))))
                                             (declare (not safe))
                                             (equal? __tmp77302 '()))
                                           _ids76200_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7617876187_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7617876187_)))))
                             (let () (declare (not safe)) (_$E7617876187_)))))
                     _hd76160_))
               (_exprs76252_
                (map (lambda (_bind76214_)
                       (let* ((_$e76216_ _bind76214_)
                              (_$E7621876227_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76216_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76216_))
                             (let* ((_$tgt7621976230_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76216_)))
                                    (_$hd7622076233_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7621976230_)))
                                    (_$tl7622176236_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7621976230_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7622176236_))
                                   (let* ((_$tgt7622276240_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7622176236_)))
                                          (_$hd7622376243_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7622276240_)))
                                          (_$tl7622476246_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7622276240_))))
                                     (let ((_expr76250_ _$hd7622376243_))
                                       (if (let ((__tmp77303
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7622476246_))))
                                             (declare (not safe))
                                             (equal? __tmp77303 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76250_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7621876227_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7621876227_))))
                             (let () (declare (not safe)) (_$E7621876227_)))))
                     _hd76160_))
               (_body76254_
                (let () (declare (not safe)) (__compile _body76172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?76109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids76212_))
              (_compile-simple76106_
               (map _car-e76110_ _hd-ids76212_)
               _exprs76252_
               _body76254_)
              (_compile-values76107_ _hd-ids76212_ _exprs76252_ _body76254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7611576137_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7611576137_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7611576137_))))
                          (let () (declare (not safe)) (_$E7611576137_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76112_))
                (let* ((_$tgt7612576260_
                        (let () (declare (not safe)) (__AST-e _$e76112_)))
                       (_$hd7612676263_
                        (let () (declare (not safe)) (##car _$tgt7612576260_)))
                       (_$tl7612776266_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7612576260_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7612776266_))
                      (let* ((_$tgt7612876270_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7612776266_)))
                             (_$hd7612976273_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7612876270_)))
                             (_$tl7613076276_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7612876270_))))
                        (if (let ((__tmp77306
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7612976273_))))
                              (declare (not safe))
                              (equal? __tmp77306 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7613076276_))
                                (let* ((_$tgt7613176280_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7613076276_)))
                                       (_$hd7613276283_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7613176280_)))
                                       (_$tl7613376286_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7613176280_))))
                                  (let ((_body76290_ _$hd7613276283_))
                                    (if (let ((__tmp77305
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7613376286_))))
                                          (declare (not safe))
                                          (equal? __tmp77305 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76290_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7611476257_)))))
                                (let () (declare (not safe)) (_$E7611476257_)))
                            (let () (declare (not safe)) (_$E7611476257_))))
                      (let () (declare (not safe)) (_$E7611476257_))))
                (let () (declare (not safe)) (_$E7611476257_)))))))
    (define __compile-let-values%
      (lambda (_stx75920_)
        (letrec ((_compile-simple75922_
                  (lambda (_hd-ids76101_ _exprs76102_ _body76103_)
                    (let ((__tmp77307
                           (let ((__tmp77308
                                  (let ((__tmp77310
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76101_)
                                              _exprs76102_))
                                        (__tmp77309
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76103_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77310 __tmp77309))))
                             (declare (not safe))
                             (cons 'let __tmp77308))))
                      (declare (not safe))
                      (__SRC__% __tmp77307 _stx75920_))))
                 (_compile-values75923_
                  (lambda (_hd-ids76019_ _exprs76020_ _body76021_)
                    (let _lp76023_ ((_rest76025_ _hd-ids76019_)
                                    (_exprs76026_ _exprs76020_)
                                    (_bind76027_ '())
                                    (_post76028_ '()))
                      (let* ((_rest7602976043_ _rest76025_)
                             (_else7603276051_
                              (lambda ()
                                (let ((__tmp77311
                                       (let ((__tmp77312
                                              (let ((__tmp77315
                                                     (reverse _bind76027_))
                                                    (__tmp77313
                                                     (let ((__tmp77314
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post75924_
                                                               _post76028_
                                                               _body76021_))))
                                                       (declare (not safe))
                                                       (cons __tmp77314 '()))))
                                                (declare (not safe))
                                                (cons __tmp77315 __tmp77313))))
                                         (declare (not safe))
                                         (cons 'let __tmp77312))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77311 _stx75920_)))))
                        (let ((_K7603776084_
                               (lambda (_rest76081_ _id76082_)
                                 (let ((__tmp77321 (cdr _exprs76026_))
                                       (__tmp77316
                                        (let ((__tmp77317
                                               (let ((__tmp77320
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76082_)))
                                                     (__tmp77318
                                                      (let ((__tmp77319
                                                             (car _exprs76026_)))
                                                        (declare (not safe))
                                                        (cons __tmp77319
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77320
                                                       __tmp77318))))
                                          (declare (not safe))
                                          (cons __tmp77317 _bind76027_))))
                                   (declare (not safe))
                                   (_lp76023_
                                    _rest76081_
                                    __tmp77321
                                    __tmp77316
                                    _post76028_))))
                              (_K7603476066_
                               (lambda (_rest76055_ _hd76056_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76056_))
                                     (let ((__tmp77342 (cdr _exprs76026_))
                                           (__tmp77335
                                            (let ((__tmp77336
                                                   (let ((__tmp77341
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76056_)))
                                                         (__tmp77337
                                                          (let ((__tmp77338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77339
                                (let ((__tmp77340 (car _exprs76026_)))
                                  (declare (not safe))
                                  (cons __tmp77340 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77339))))
                    (declare (not safe))
                    (cons __tmp77338 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77341
                                                           __tmp77337))))
                                              (declare (not safe))
                                              (cons __tmp77336 _bind76027_))))
                                       (declare (not safe))
                                       (_lp76023_
                                        _rest76055_
                                        __tmp77342
                                        __tmp77335
                                        _post76028_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76056_))
                                         (let* ((_len76058_ (length _hd76056_))
                                                (_tmp76060_
                                                 (let ((__tmp77322 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77322))))
                                           (let ((__tmp77334
                                                  (cdr _exprs76026_))
                                                 (__tmp77330
                                                  (let ((__tmp77331
                                                         (let ((__tmp77332
                                                                (let ((__tmp77333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76026_)))
                          (declare (not safe))
                          (cons __tmp77333 '()))))
                   (declare (not safe))
                   (cons _tmp76060_ __tmp77332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77331
                                                          _bind76027_)))
                                                 (__tmp77323
                                                  (let ((__tmp77324
                                                         (let ((__tmp77325
                                                                (let ((__tmp77326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77328
                                      (lambda (_id76063_ _k76064_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76063_))
                                            (let ((__tmp77329
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76063_))))
                                              (declare (not safe))
                                              (cons __tmp77329 _k76064_))
                                            '#f)))
                                     (__tmp77327
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76058_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77328
                                  _hd76056_
                                  __tmp77327))))
                          (declare (not safe))
                          (cons _len76058_ __tmp77326))))
                   (declare (not safe))
                   (cons _tmp76060_ __tmp77325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77324
                                                          _post76028_))))
                                             (declare (not safe))
                                             (_lp76023_
                                              _rest76055_
                                              __tmp77334
                                              __tmp77330
                                              __tmp77323)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75920_
                                            _hd76056_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7602976043_))
                              (let ((_tl7603976089_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7602976043_)))
                                    (_hd7603876087_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7602976043_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7603876087_))
                                    (let ((_tl7604176094_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7603876087_)))
                                          (_hd7604076092_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7603876087_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7604176094_))
                                          (let ((_id76097_ _hd7604076092_)
                                                (_rest76099_ _tl7603976089_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7603776084_
                                               _rest76099_
                                               _id76097_)))
                                          (let ((_hd76074_ _hd7603876087_)
                                                (_rest76076_ _tl7603976089_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7603476066_
                                               _rest76076_
                                               _hd76074_)))))
                                    (let ((_hd76074_ _hd7603876087_)
                                          (_rest76076_ _tl7603976089_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7603476066_
                                         _rest76076_
                                         _hd76074_)))))
                              (let ()
                                (declare (not safe))
                                (_else7603276051_))))))))
                 (_compile-post75924_
                  (lambda (_post75926_ _body75927_)
                    (let _lp75929_ ((_rest75931_ _post75926_)
                                    (_check75932_ '())
                                    (_bind75933_ '()))
                      (let* ((_rest7593475946_ _rest75931_)
                             (_else7593675954_
                              (lambda ()
                                (let ((__tmp77343
                                       (let ((__tmp77344
                                              (let ((__tmp77345
                                                     (let ((__tmp77346
                                                            (let ((__tmp77347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77348
                                  (let ((__tmp77349
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75927_ '()))))
                                    (declare (not safe))
                                    (cons _bind75933_ __tmp77349))))
                             (declare (not safe))
                             (cons 'let __tmp77348))))
                      (declare (not safe))
                      (__SRC__% __tmp77347 _stx75920_))))
               (declare (not safe))
               (cons __tmp77346 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77345
                                                        _check75932_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77344))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77343 _stx75920_))))
                             (_K7593875993_
                              (lambda (_rest75957_
                                       _init75958_
                                       _len75959_
                                       _tmp75960_)
                                (let ((__tmp77357
                                       (let ((__tmp77358
                                              (let ((__tmp77359
                                                     (let ((__tmp77360
                                                            (let ((__tmp77361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75959_ '()))))
                      (declare (not safe))
                      (cons _tmp75960_ __tmp77361))))
               (declare (not safe))
               (cons '__check-values __tmp77360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77359
                                                 _stx75920_))))
                                         (declare (not safe))
                                         (cons __tmp77358 _check75932_)))
                                      (__tmp77350
                                       (let ((__tmp77351
                                              (lambda (_hd75962_ _r75963_)
                                                (let* ((_hd7596475971_
                                                        _hd75962_)
                                                       (_E7596675975_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7596475971_))))
               (_K7596775981_
                (lambda (_k75978_ _id75979_)
                  (let ((__tmp77352
                         (let ((__tmp77353
                                (let ((__tmp77354
                                       (let ((__tmp77355
                                              (let ((__tmp77356
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k75978_ '()))))
                                                (declare (not safe))
                                                (cons _tmp75960_ __tmp77356))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp77355))))
                                  (declare (not safe))
                                  (cons __tmp77354 '()))))
                           (declare (not safe))
                           (cons _id75979_ __tmp77353))))
                    (declare (not safe))
                    (cons __tmp77352 _r75963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7596475971_))
                                                      (let ((_hd7596875984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7596475971_)))
                    (_tl7596975986_
                     (let () (declare (not safe)) (##cdr _hd7596475971_))))
                (let* ((_id75989_ _hd7596875984_) (_k75991_ _tl7596975986_))
                  (declare (not safe))
                  (_K7596775981_ _k75991_ _id75989_)))
              (let () (declare (not safe)) (_E7596675975_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77351
                                                 _bind75933_
                                                 _init75958_))))
                                  (declare (not safe))
                                  (_lp75929_
                                   _rest75957_
                                   __tmp77357
                                   __tmp77350)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7593475946_))
                            (let ((_hd7593975996_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7593475946_)))
                                  (_tl7594075998_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7593475946_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7593975996_))
                                  (let ((_hd7594176001_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7593975996_)))
                                        (_tl7594276003_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7593975996_))))
                                    (let ((_tmp76006_ _hd7594176001_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7594276003_))
                                          (let ((_hd7594376008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7594276003_)))
                                                (_tl7594476010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7594276003_))))
                                            (let* ((_len76013_ _hd7594376008_)
                                                   (_init76015_ _tl7594476010_)
                                                   (_rest76017_
                                                    _tl7594075998_))
                                              (declare (not safe))
                                              (_K7593875993_
                                               _rest76017_
                                               _init76015_
                                               _len76013_
                                               _tmp76006_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7593675954_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7593675954_))))
                            (let ()
                              (declare (not safe))
                              (_else7593675954_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75920_
             _compile-simple75922_
             _compile-values75923_)))))
    (define __compile-letrec-values%
      (lambda (_stx75720_)
        (letrec ((_compile-simple75722_
                  (lambda (_hd-ids75916_ _exprs75917_ _body75918_)
                    (let ((__tmp77362
                           (let ((__tmp77363
                                  (let ((__tmp77365
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75916_)
                                              _exprs75917_))
                                        (__tmp77364
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75918_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77365 __tmp77364))))
                             (declare (not safe))
                             (cons 'letrec __tmp77363))))
                      (declare (not safe))
                      (__SRC__% __tmp77362 _stx75720_))))
                 (_compile-values75723_
                  (lambda (_hd-ids75830_ _exprs75831_ _body75832_)
                    (let _lp75834_ ((_rest75836_ _hd-ids75830_)
                                    (_exprs75837_ _exprs75831_)
                                    (_pre75838_ '())
                                    (_bind75839_ '())
                                    (_post75840_ '()))
                      (let* ((_rest7584175855_ _rest75836_)
                             (_else7584475863_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner75724_
                                   _pre75838_
                                   _bind75839_
                                   _post75840_
                                   _body75832_)))))
                        (let ((_K7584975899_
                               (lambda (_rest75896_ _id75897_)
                                 (let ((__tmp77371 (cdr _exprs75837_))
                                       (__tmp77366
                                        (let ((__tmp77367
                                               (let ((__tmp77370
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75897_)))
                                                     (__tmp77368
                                                      (let ((__tmp77369
                                                             (car _exprs75837_)))
                                                        (declare (not safe))
                                                        (cons __tmp77369
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77370
                                                       __tmp77368))))
                                          (declare (not safe))
                                          (cons __tmp77367 _bind75839_))))
                                   (declare (not safe))
                                   (_lp75834_
                                    _rest75896_
                                    __tmp77371
                                    _pre75838_
                                    __tmp77366
                                    _post75840_))))
                              (_K7584675881_
                               (lambda (_rest75867_ _hd75868_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75868_))
                                     (let ((__tmp77399 (cdr _exprs75837_))
                                           (__tmp77392
                                            (let ((__tmp77393
                                                   (let ((__tmp77398
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75868_)))
                                                         (__tmp77394
                                                          (let ((__tmp77395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77396
                                (let ((__tmp77397 (car _exprs75837_)))
                                  (declare (not safe))
                                  (cons __tmp77397 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77396))))
                    (declare (not safe))
                    (cons __tmp77395 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77398
                                                           __tmp77394))))
                                              (declare (not safe))
                                              (cons __tmp77393 _bind75839_))))
                                       (declare (not safe))
                                       (_lp75834_
                                        _rest75867_
                                        __tmp77399
                                        _pre75838_
                                        __tmp77392
                                        _post75840_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75868_))
                                         (let* ((_len75870_ (length _hd75868_))
                                                (_tmp75872_
                                                 (let ((__tmp77372 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77372))))
                                           (let ((__tmp77391
                                                  (cdr _exprs75837_))
                                                 (__tmp77384
                                                  (let ((__tmp77385
                                                         (lambda (_id75875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r75876_)
                   (if (let () (declare (not safe)) (__AST-e _id75875_))
                       (let ((__tmp77386
                              (let ((__tmp77390
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id75875_)))
                                    (__tmp77387
                                     (let ((__tmp77388
                                            (let ((__tmp77389
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp77389))))
                                       (declare (not safe))
                                       (cons __tmp77388 '()))))
                                (declare (not safe))
                                (cons __tmp77390 __tmp77387))))
                         (declare (not safe))
                         (cons __tmp77386 _r75876_))
                       _r75876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp77385
                                                            _pre75838_
                                                            _hd75868_)))
                                                 (__tmp77380
                                                  (let ((__tmp77381
                                                         (let ((__tmp77382
                                                                (let ((__tmp77383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75837_)))
                          (declare (not safe))
                          (cons __tmp77383 '()))))
                   (declare (not safe))
                   (cons _tmp75872_ __tmp77382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77381
                                                          _bind75839_)))
                                                 (__tmp77373
                                                  (let ((__tmp77374
                                                         (let ((__tmp77375
                                                                (let ((__tmp77376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77378
                                      (lambda (_id75878_ _k75879_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75878_))
                                            (let ((__tmp77379
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75878_))))
                                              (declare (not safe))
                                              (cons __tmp77379 _k75879_))
                                            '#f)))
                                     (__tmp77377
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75870_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77378
                                  _hd75868_
                                  __tmp77377))))
                          (declare (not safe))
                          (cons _len75870_ __tmp77376))))
                   (declare (not safe))
                   (cons _tmp75872_ __tmp77375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77374
                                                          _post75840_))))
                                             (declare (not safe))
                                             (_lp75834_
                                              _rest75867_
                                              __tmp77391
                                              __tmp77384
                                              __tmp77380
                                              __tmp77373)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75720_
                                            _hd75868_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7584175855_))
                              (let ((_tl7585175904_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7584175855_)))
                                    (_hd7585075902_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7584175855_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7585075902_))
                                    (let ((_tl7585375909_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7585075902_)))
                                          (_hd7585275907_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7585075902_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7585375909_))
                                          (let ((_id75912_ _hd7585275907_)
                                                (_rest75914_ _tl7585175904_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7584975899_
                                               _rest75914_
                                               _id75912_)))
                                          (let ((_hd75889_ _hd7585075902_)
                                                (_rest75891_ _tl7585175904_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7584675881_
                                               _rest75891_
                                               _hd75889_)))))
                                    (let ((_hd75889_ _hd7585075902_)
                                          (_rest75891_ _tl7585175904_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7584675881_
                                         _rest75891_
                                         _hd75889_)))))
                              (let ()
                                (declare (not safe))
                                (_else7584475863_))))))))
                 (_compile-inner75724_
                  (lambda (_pre75825_ _bind75826_ _post75827_ _body75828_)
                    (if (let () (declare (not safe)) (null? _pre75825_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind75725_
                           _bind75826_
                           _post75827_
                           _body75828_))
                        (let ((__tmp77400
                               (let ((__tmp77401
                                      (let ((__tmp77404 (reverse _pre75825_))
                                            (__tmp77402
                                             (let ((__tmp77403
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind75725_
                                                       _bind75826_
                                                       _post75827_
                                                       _body75828_))))
                                               (declare (not safe))
                                               (cons __tmp77403 '()))))
                                        (declare (not safe))
                                        (cons __tmp77404 __tmp77402))))
                                 (declare (not safe))
                                 (cons 'let __tmp77401))))
                          (declare (not safe))
                          (__SRC__% __tmp77400 _stx75720_)))))
                 (_compile-bind75725_
                  (lambda (_bind75821_ _post75822_ _body75823_)
                    (let ((__tmp77405
                           (let ((__tmp77406
                                  (let ((__tmp77409 (reverse _bind75821_))
                                        (__tmp77407
                                         (let ((__tmp77408
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75726_
                                                   _post75822_
                                                   _body75823_))))
                                           (declare (not safe))
                                           (cons __tmp77408 '()))))
                                    (declare (not safe))
                                    (cons __tmp77409 __tmp77407))))
                             (declare (not safe))
                             (cons 'letrec __tmp77406))))
                      (declare (not safe))
                      (__SRC__% __tmp77405 _stx75720_))))
                 (_compile-post75726_
                  (lambda (_post75728_ _body75729_)
                    (let _lp75731_ ((_rest75733_ _post75728_)
                                    (_check75734_ '())
                                    (_bind75735_ '()))
                      (let* ((_rest7573675748_ _rest75733_)
                             (_else7573875756_
                              (lambda ()
                                (let ((__tmp77410
                                       (let ((__tmp77411
                                              (let ((__tmp77412
                                                     (let ((__tmp77413
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body75729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp77413 _bind75735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77412
                                                        _check75734_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77411))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77410 _stx75720_))))
                             (_K7574075795_
                              (lambda (_rest75759_
                                       _init75760_
                                       _len75761_
                                       _tmp75762_)
                                (let ((__tmp77422
                                       (let ((__tmp77423
                                              (let ((__tmp77424
                                                     (let ((__tmp77425
                                                            (let ((__tmp77426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75761_ '()))))
                      (declare (not safe))
                      (cons _tmp75762_ __tmp77426))))
               (declare (not safe))
               (cons '__check-values __tmp77425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77424
                                                 _stx75720_))))
                                         (declare (not safe))
                                         (cons __tmp77423 _check75734_)))
                                      (__tmp77414
                                       (let ((__tmp77415
                                              (lambda (_hd75764_ _r75765_)
                                                (let* ((_hd7576675773_
                                                        _hd75764_)
                                                       (_E7576875777_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7576675773_))))
               (_K7576975783_
                (lambda (_k75780_ _id75781_)
                  (let ((__tmp77416
                         (let ((__tmp77417
                                (let ((__tmp77418
                                       (let ((__tmp77419
                                              (let ((__tmp77420
                                                     (let ((__tmp77421
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k75780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp75762_ __tmp77421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp77420))))
                                         (declare (not safe))
                                         (cons __tmp77419 '()))))
                                  (declare (not safe))
                                  (cons _id75781_ __tmp77418))))
                           (declare (not safe))
                           (cons 'set! __tmp77417))))
                    (declare (not safe))
                    (cons __tmp77416 _r75765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7576675773_))
                                                      (let ((_hd7577075786_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7576675773_)))
                    (_tl7577175788_
                     (let () (declare (not safe)) (##cdr _hd7576675773_))))
                (let* ((_id75791_ _hd7577075786_) (_k75793_ _tl7577175788_))
                  (declare (not safe))
                  (_K7576975783_ _k75793_ _id75791_)))
              (let () (declare (not safe)) (_E7576875777_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77415
                                                 _bind75735_
                                                 _init75760_))))
                                  (declare (not safe))
                                  (_lp75731_
                                   _rest75759_
                                   __tmp77422
                                   __tmp77414)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7573675748_))
                            (let ((_hd7574175798_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7573675748_)))
                                  (_tl7574275800_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7573675748_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7574175798_))
                                  (let ((_hd7574375803_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7574175798_)))
                                        (_tl7574475805_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7574175798_))))
                                    (let ((_tmp75808_ _hd7574375803_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7574475805_))
                                          (let ((_hd7574575810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7574475805_)))
                                                (_tl7574675812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7574475805_))))
                                            (let* ((_len75815_ _hd7574575810_)
                                                   (_init75817_ _tl7574675812_)
                                                   (_rest75819_
                                                    _tl7574275800_))
                                              (declare (not safe))
                                              (_K7574075795_
                                               _rest75819_
                                               _init75817_
                                               _len75815_
                                               _tmp75808_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7573875756_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7573875756_))))
                            (let ()
                              (declare (not safe))
                              (_else7573875756_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75720_
             _compile-simple75722_
             _compile-values75723_)))))
    (define __compile-letrec*-values%
      (lambda (_stx75475_)
        (letrec ((_compile-simple75477_
                  (lambda (_hd-ids75716_ _exprs75717_ _body75718_)
                    (let ((__tmp77427
                           (let ((__tmp77428
                                  (let ((__tmp77430
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75716_)
                                              _exprs75717_))
                                        (__tmp77429
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75718_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77430 __tmp77429))))
                             (declare (not safe))
                             (cons 'letrec* __tmp77428))))
                      (declare (not safe))
                      (__SRC__% __tmp77427 _stx75475_))))
                 (_compile-values75478_
                  (lambda (_hd-ids75627_ _exprs75628_ _body75629_)
                    (let _lp75631_ ((_rest75633_ _hd-ids75627_)
                                    (_exprs75634_ _exprs75628_)
                                    (_bind75635_ '())
                                    (_post75636_ '()))
                      (let* ((_rest7563775651_ _rest75633_)
                             (_else7564075659_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind75479_
                                   _bind75635_
                                   _post75636_
                                   _body75629_)))))
                        (let ((_K7564575699_
                               (lambda (_rest75694_ _hd75695_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75695_))
                                     (let ((_id75697_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75695_))))
                                       (let ((__tmp77445 (cdr _exprs75634_))
                                             (__tmp77440
                                              (let ((__tmp77441
                                                     (let ((__tmp77442
                                                            (let ((__tmp77443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77444
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77444))))
                      (declare (not safe))
                      (cons __tmp77443 '()))))
               (declare (not safe))
               (cons _id75697_ __tmp77442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77441 _bind75635_)))
                                             (__tmp77436
                                              (let ((__tmp77437
                                                     (let ((__tmp77438
                                                            (let ((__tmp77439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs75634_)))
                      (declare (not safe))
                      (cons __tmp77439 '()))))
               (declare (not safe))
               (cons _id75697_ __tmp77438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77437
                                                      _post75636_))))
                                         (declare (not safe))
                                         (_lp75631_
                                          _rest75694_
                                          __tmp77445
                                          __tmp77440
                                          __tmp77436)))
                                     (let ((__tmp77435 (cdr _exprs75634_))
                                           (__tmp77431
                                            (let ((__tmp77432
                                                   (let ((__tmp77433
                                                          (let ((__tmp77434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs75634_)))
                    (declare (not safe))
                    (cons __tmp77434 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp77433))))
                                              (declare (not safe))
                                              (cons __tmp77432 _post75636_))))
                                       (declare (not safe))
                                       (_lp75631_
                                        _rest75694_
                                        __tmp77435
                                        _bind75635_
                                        __tmp77431)))))
                              (_K7564275679_
                               (lambda (_rest75663_ _hd75664_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75664_))
                                     (let ((_id75666_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75664_))))
                                       (let ((__tmp77481 (cdr _exprs75634_))
                                             (__tmp77476
                                              (let ((__tmp77477
                                                     (let ((__tmp77478
                                                            (let ((__tmp77479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77480
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77480))))
                      (declare (not safe))
                      (cons __tmp77479 '()))))
               (declare (not safe))
               (cons _id75666_ __tmp77478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77477 _bind75635_)))
                                             (__tmp77470
                                              (let ((__tmp77471
                                                     (let ((__tmp77472
                                                            (let ((__tmp77473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77474
                                  (let ((__tmp77475 (car _exprs75634_)))
                                    (declare (not safe))
                                    (cons __tmp77475 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp77474))))
                      (declare (not safe))
                      (cons __tmp77473 '()))))
               (declare (not safe))
               (cons _id75666_ __tmp77472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77471
                                                      _post75636_))))
                                         (declare (not safe))
                                         (_lp75631_
                                          _rest75663_
                                          __tmp77481
                                          __tmp77476
                                          __tmp77470)))
                                     (if (let ((__tmp77469
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd75664_))))
                                           (declare (not safe))
                                           (not __tmp77469))
                                         (let ((__tmp77468 (cdr _exprs75634_))
                                               (__tmp77464
                                                (let ((__tmp77465
                                                       (let ((__tmp77466
                                                              (let ((__tmp77467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs75634_)))
                        (declare (not safe))
                        (cons __tmp77467 '()))))
                 (declare (not safe))
                 (cons '#f __tmp77466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77465
                                                        _post75636_))))
                                           (declare (not safe))
                                           (_lp75631_
                                            _rest75663_
                                            __tmp77468
                                            _bind75635_
                                            __tmp77464))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd75664_))
                                             (let* ((_len75668_
                                                     (length _hd75664_))
                                                    (_tmp75670_
                                                     (let ((__tmp77446
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp77446))))
                                               (let ((__tmp77463
                                                      (cdr _exprs75634_))
                                                     (__tmp77456
                                                      (let ((__tmp77457
                                                             (lambda (_id75673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r75674_)
                       (if (let () (declare (not safe)) (__AST-e _id75673_))
                           (let ((__tmp77458
                                  (let ((__tmp77462
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75673_)))
                                        (__tmp77459
                                         (let ((__tmp77460
                                                (let ((__tmp77461
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp77461))))
                                           (declare (not safe))
                                           (cons __tmp77460 '()))))
                                    (declare (not safe))
                                    (cons __tmp77462 __tmp77459))))
                             (declare (not safe))
                             (cons __tmp77458 _r75674_))
                           _r75674_))))
                (declare (not safe))
                (foldl1 __tmp77457 _bind75635_ _hd75664_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp77447
                                                      (let ((__tmp77448
                                                             (let ((__tmp77449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77455 (car _exprs75634_))
                                  (__tmp77450
                                   (let ((__tmp77451
                                          (let ((__tmp77453
                                                 (lambda (_id75676_ _k75677_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id75676_))
                                                       (let ((__tmp77454
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id75676_))))
                 (declare (not safe))
                 (cons __tmp77454 _k75677_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp77452
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len75668_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp77453
                                             _hd75664_
                                             __tmp77452))))
                                     (declare (not safe))
                                     (cons _len75668_ __tmp77451))))
                              (declare (not safe))
                              (cons __tmp77455 __tmp77450))))
                       (declare (not safe))
                       (cons _tmp75670_ __tmp77449))))
                (declare (not safe))
                (cons __tmp77448 _post75636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp75631_
                                                  _rest75663_
                                                  __tmp77463
                                                  __tmp77456
                                                  __tmp77447)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx75475_
                                                _hd75664_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7563775651_))
                              (let ((_tl7564775704_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7563775651_)))
                                    (_hd7564675702_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7563775651_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7564675702_))
                                    (let ((_tl7564975709_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7564675702_)))
                                          (_hd7564875707_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7564675702_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7564975709_))
                                          (let ((_hd75712_ _hd7564875707_)
                                                (_rest75714_ _tl7564775704_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7564575699_
                                               _rest75714_
                                               _hd75712_)))
                                          (let ((_hd75687_ _hd7564675702_)
                                                (_rest75689_ _tl7564775704_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7564275679_
                                               _rest75689_
                                               _hd75687_)))))
                                    (let ((_hd75687_ _hd7564675702_)
                                          (_rest75689_ _tl7564775704_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7564275679_
                                         _rest75689_
                                         _hd75687_)))))
                              (let ()
                                (declare (not safe))
                                (_else7564075659_))))))))
                 (_compile-bind75479_
                  (lambda (_bind75623_ _post75624_ _body75625_)
                    (let ((__tmp77482
                           (let ((__tmp77483
                                  (let ((__tmp77486 (reverse _bind75623_))
                                        (__tmp77484
                                         (let ((__tmp77485
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75480_
                                                   _post75624_
                                                   _body75625_))))
                                           (declare (not safe))
                                           (cons __tmp77485 '()))))
                                    (declare (not safe))
                                    (cons __tmp77486 __tmp77484))))
                             (declare (not safe))
                             (cons 'let __tmp77483))))
                      (declare (not safe))
                      (__SRC__% __tmp77482 _stx75475_))))
                 (_compile-post75480_
                  (lambda (_post75482_ _body75483_)
                    (let ((__tmp77487
                           (let ((__tmp77488
                                  (let ((__tmp77489
                                         (let ((__tmp77491
                                                (lambda (_hd75485_ _r75486_)
                                                  (let* ((_hd7548775510_
                                                          _hd75485_)
                                                         (_E7549175514_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7548775510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7550475608_
                                                           (lambda (_expr75606_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr75606_ _r75486_))))
                  (_K7549975586_
                   (lambda (_expr75583_ _id75584_)
                     (let ((__tmp77492
                            (let ((__tmp77493
                                   (let ((__tmp77494
                                          (let ((__tmp77495
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr75583_ '()))))
                                            (declare (not safe))
                                            (cons _id75584_ __tmp77495))))
                                     (declare (not safe))
                                     (cons 'set! __tmp77494))))
                              (declare (not safe))
                              (__SRC__% __tmp77493 _stx75475_))))
                       (declare (not safe))
                       (cons __tmp77492 _r75486_))))
                  (_K7549275553_
                   (lambda (_init75518_ _len75519_ _expr75520_ _tmp75521_)
                     (let ((__tmp77496
                            (let ((__tmp77497
                                   (let ((__tmp77498
                                          (let ((__tmp77512
                                                 (let ((__tmp77513
                                                        (let ((__tmp77514
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr75520_ '()))))
                  (declare (not safe))
                  (cons _tmp75521_ __tmp77514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77513 '())))
                                                (__tmp77499
                                                 (let ((__tmp77508
                                                        (let ((__tmp77509
                                                               (let ((__tmp77510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77511
                                     (let ()
                                       (declare (not safe))
                                       (cons _len75519_ '()))))
                                (declare (not safe))
                                (cons _tmp75521_ __tmp77511))))
                         (declare (not safe))
                         (cons '__check-values __tmp77510))))
                  (declare (not safe))
                  (__SRC__% __tmp77509 _stx75475_)))
               (__tmp77500
                (let ((__tmp77501
                       (map (lambda (_hd75523_)
                              (let* ((_hd7552475531_ _hd75523_)
                                     (_E7552675535_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7552475531_))))
                                     (_K7552775541_
                                      (lambda (_k75538_ _id75539_)
                                        (let ((__tmp77502
                                               (let ((__tmp77503
                                                      (let ((__tmp77504
                                                             (let ((__tmp77505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77506
                                   (let ((__tmp77507
                                          (let ()
                                            (declare (not safe))
                                            (cons _k75538_ '()))))
                                     (declare (not safe))
                                     (cons _tmp75521_ __tmp77507))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp77506))))
                       (declare (not safe))
                       (cons __tmp77505 '()))))
                (declare (not safe))
                (cons _id75539_ __tmp77504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp77503))))
                                          (declare (not safe))
                                          (__SRC__% __tmp77502 _stx75475_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7552475531_))
                                    (let ((_hd7552875544_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7552475531_)))
                                          (_tl7552975546_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7552475531_))))
                                      (let* ((_id75549_ _hd7552875544_)
                                             (_k75551_ _tl7552975546_))
                                        (declare (not safe))
                                        (_K7552775541_ _k75551_ _id75549_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7552675535_)))))
                            _init75518_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp77501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77508
                                                         __tmp77500))))
                                            (declare (not safe))
                                            (cons __tmp77512 __tmp77499))))
                                     (declare (not safe))
                                     (cons 'let __tmp77498))))
                              (declare (not safe))
                              (__SRC__% __tmp77497 _stx75475_))))
                       (declare (not safe))
                       (cons __tmp77496 _r75486_)))))
              (if (let () (declare (not safe)) (##pair? _hd7548775510_))
                  (let ((_tl7550675613_
                         (let () (declare (not safe)) (##cdr _hd7548775510_)))
                        (_hd7550575611_
                         (let () (declare (not safe)) (##car _hd7548775510_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7550575611_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7550675613_))
                            (let ((_tl7550875618_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7550675613_)))
                                  (_hd7550775616_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7550675613_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7550875618_))
                                  (let ((_expr75621_ _hd7550775616_))
                                    (declare (not safe))
                                    (_K7550475608_ _expr75621_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7550875618_))
                                      (let ((_tl7549875572_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7550875618_)))
                                            (_hd7549775570_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7550875618_))))
                                        (let ((_tmp75561_ _hd7550575611_)
                                              (_expr75568_ _hd7550775616_)
                                              (_len75575_ _hd7549775570_)
                                              (_init75577_ _tl7549875572_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7549275553_
                                             _init75577_
                                             _len75575_
                                             _expr75568_
                                             _tmp75561_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7549175514_)))))
                            (let () (declare (not safe)) (_E7549175514_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7550675613_))
                            (let ((_tl7550375598_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7550675613_)))
                                  (_hd7550275596_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7550675613_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7550375598_))
                                  (let ((_id75594_ _hd7550575611_)
                                        (_expr75601_ _hd7550275596_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7549975586_ _expr75601_ _id75594_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7550375598_))
                                      (let ((_tl7549875572_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7550375598_)))
                                            (_hd7549775570_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7550375598_))))
                                        (let ((_tmp75561_ _hd7550575611_)
                                              (_expr75568_ _hd7550275596_)
                                              (_len75575_ _hd7549775570_)
                                              (_init75577_ _tl7549875572_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7549275553_
                                             _init75577_
                                             _len75575_
                                             _expr75568_
                                             _tmp75561_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7549175514_)))))
                            (let () (declare (not safe)) (_E7549175514_)))))
                  (let () (declare (not safe)) (_E7549175514_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp77490 (list _body75483_)))
                                           (declare (not safe))
                                           (foldl1 __tmp77491
                                                   __tmp77490
                                                   _post75482_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp77489))))
                             (declare (not safe))
                             (cons 'begin __tmp77488))))
                      (declare (not safe))
                      (__SRC__% __tmp77487 _stx75475_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75475_
             _compile-simple75477_
             _compile-values75478_)))))
    (define __compile-call%
      (lambda (_stx75435_)
        (let* ((_$e75437_ _stx75435_)
               (_$E7543975448_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75437_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75437_))
              (let* ((_$tgt7544075451_
                      (let () (declare (not safe)) (__AST-e _$e75437_)))
                     (_$hd7544175454_
                      (let () (declare (not safe)) (##car _$tgt7544075451_)))
                     (_$tl7544275457_
                      (let () (declare (not safe)) (##cdr _$tgt7544075451_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7544275457_))
                    (let* ((_$tgt7544375461_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7544275457_)))
                           (_$hd7544475464_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7544375461_)))
                           (_$tl7544575467_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7544375461_))))
                      (let* ((_rator75471_ _$hd7544475464_)
                             (_rands75473_ _$tl7544575467_)
                             (__tmp77515
                              (let ((__tmp77517
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator75471_)))
                                    (__tmp77516 (map __compile _rands75473_)))
                                (declare (not safe))
                                (cons __tmp77517 __tmp77516))))
                        (declare (not safe))
                        (__SRC__% __tmp77515 _stx75435_)))
                    (let () (declare (not safe)) (_$E7543975448_))))
              (let () (declare (not safe)) (_$E7543975448_))))))
    (define __compile-ref%
      (lambda (_stx75397_)
        (let* ((_$e75399_ _stx75397_)
               (_$E7540175410_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75399_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75399_))
              (let* ((_$tgt7540275413_
                      (let () (declare (not safe)) (__AST-e _$e75399_)))
                     (_$hd7540375416_
                      (let () (declare (not safe)) (##car _$tgt7540275413_)))
                     (_$tl7540475419_
                      (let () (declare (not safe)) (##cdr _$tgt7540275413_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7540475419_))
                    (let* ((_$tgt7540575423_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7540475419_)))
                           (_$hd7540675426_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7540575423_)))
                           (_$tl7540775429_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7540575423_))))
                      (let ((_id75433_ _$hd7540675426_))
                        (if (let ((__tmp77518
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7540775429_))))
                              (declare (not safe))
                              (equal? __tmp77518 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id75433_ _stx75397_))
                            (let () (declare (not safe)) (_$E7540175410_)))))
                    (let () (declare (not safe)) (_$E7540175410_))))
              (let () (declare (not safe)) (_$E7540175410_))))))
    (define __compile-setq%
      (lambda (_stx75344_)
        (let* ((_$e75346_ _stx75344_)
               (_$E7534875360_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75346_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75346_))
              (let* ((_$tgt7534975363_
                      (let () (declare (not safe)) (__AST-e _$e75346_)))
                     (_$hd7535075366_
                      (let () (declare (not safe)) (##car _$tgt7534975363_)))
                     (_$tl7535175369_
                      (let () (declare (not safe)) (##cdr _$tgt7534975363_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7535175369_))
                    (let* ((_$tgt7535275373_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7535175369_)))
                           (_$hd7535375376_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7535275373_)))
                           (_$tl7535475379_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7535275373_))))
                      (let ((_id75383_ _$hd7535375376_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7535475379_))
                            (let* ((_$tgt7535575385_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7535475379_)))
                                   (_$hd7535675388_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7535575385_)))
                                   (_$tl7535775391_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7535575385_))))
                              (let ((_expr75395_ _$hd7535675388_))
                                (if (let ((__tmp77524
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7535775391_))))
                                      (declare (not safe))
                                      (equal? __tmp77524 '()))
                                    (let ((__tmp77519
                                           (let ((__tmp77520
                                                  (let ((__tmp77523
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id75383_
                                                            _stx75344_)))
                                                        (__tmp77521
                                                         (let ((__tmp77522
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr75395_))))
                   (declare (not safe))
                   (cons __tmp77522 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77523
                                                          __tmp77521))))
                                             (declare (not safe))
                                             (cons 'set! __tmp77520))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77519 _stx75344_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7534875360_)))))
                            (let () (declare (not safe)) (_$E7534875360_)))))
                    (let () (declare (not safe)) (_$E7534875360_))))
              (let () (declare (not safe)) (_$E7534875360_))))))
    (define __compile-if%
      (lambda (_stx75276_)
        (let* ((_$e75278_ _stx75276_)
               (_$E7528075295_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75278_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75278_))
              (let* ((_$tgt7528175298_
                      (let () (declare (not safe)) (__AST-e _$e75278_)))
                     (_$hd7528275301_
                      (let () (declare (not safe)) (##car _$tgt7528175298_)))
                     (_$tl7528375304_
                      (let () (declare (not safe)) (##cdr _$tgt7528175298_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7528375304_))
                    (let* ((_$tgt7528475308_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7528375304_)))
                           (_$hd7528575311_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7528475308_)))
                           (_$tl7528675314_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7528475308_))))
                      (let ((_p75318_ _$hd7528575311_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7528675314_))
                            (let* ((_$tgt7528775320_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7528675314_)))
                                   (_$hd7528875323_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7528775320_)))
                                   (_$tl7528975326_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7528775320_))))
                              (let ((_t75330_ _$hd7528875323_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7528975326_))
                                    (let* ((_$tgt7529075332_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7528975326_)))
                                           (_$hd7529175335_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7529075332_)))
                                           (_$tl7529275338_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7529075332_))))
                                      (let ((_f75342_ _$hd7529175335_))
                                        (if (let ((__tmp77532
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7529275338_))))
                                              (declare (not safe))
                                              (equal? __tmp77532 '()))
                                            (let ((__tmp77525
                                                   (let ((__tmp77526
                                                          (let ((__tmp77531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p75318_)))
                        (__tmp77527
                         (let ((__tmp77530
                                (let ()
                                  (declare (not safe))
                                  (__compile _t75330_)))
                               (__tmp77528
                                (let ((__tmp77529
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f75342_))))
                                  (declare (not safe))
                                  (cons __tmp77529 '()))))
                           (declare (not safe))
                           (cons __tmp77530 __tmp77528))))
                    (declare (not safe))
                    (cons __tmp77531 __tmp77527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp77526))))
                                              (declare (not safe))
                                              (__SRC__% __tmp77525 _stx75276_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7528075295_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7528075295_)))))
                            (let () (declare (not safe)) (_$E7528075295_)))))
                    (let () (declare (not safe)) (_$E7528075295_))))
              (let () (declare (not safe)) (_$E7528075295_))))))
    (define __compile-quote%
      (lambda (_stx75238_)
        (let* ((_$e75240_ _stx75238_)
               (_$E7524275251_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75240_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75240_))
              (let* ((_$tgt7524375254_
                      (let () (declare (not safe)) (__AST-e _$e75240_)))
                     (_$hd7524475257_
                      (let () (declare (not safe)) (##car _$tgt7524375254_)))
                     (_$tl7524575260_
                      (let () (declare (not safe)) (##cdr _$tgt7524375254_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7524575260_))
                    (let* ((_$tgt7524675264_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7524575260_)))
                           (_$hd7524775267_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7524675264_)))
                           (_$tl7524875270_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7524675264_))))
                      (let ((_e75274_ _$hd7524775267_))
                        (if (let ((__tmp77536
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7524875270_))))
                              (declare (not safe))
                              (equal? __tmp77536 '()))
                            (let ((__tmp77533
                                   (let ((__tmp77534
                                          (let ((__tmp77535
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e75274_))))
                                            (declare (not safe))
                                            (cons __tmp77535 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77534))))
                              (declare (not safe))
                              (__SRC__% __tmp77533 _stx75238_))
                            (let () (declare (not safe)) (_$E7524275251_)))))
                    (let () (declare (not safe)) (_$E7524275251_))))
              (let () (declare (not safe)) (_$E7524275251_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75200_)
        (let* ((_$e75202_ _stx75200_)
               (_$E7520475213_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75202_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75202_))
              (let* ((_$tgt7520575216_
                      (let () (declare (not safe)) (__AST-e _$e75202_)))
                     (_$hd7520675219_
                      (let () (declare (not safe)) (##car _$tgt7520575216_)))
                     (_$tl7520775222_
                      (let () (declare (not safe)) (##cdr _$tgt7520575216_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7520775222_))
                    (let* ((_$tgt7520875226_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7520775222_)))
                           (_$hd7520975229_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7520875226_)))
                           (_$tl7521075232_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7520875226_))))
                      (let ((_e75236_ _$hd7520975229_))
                        (if (let ((__tmp77539
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7521075232_))))
                              (declare (not safe))
                              (equal? __tmp77539 '()))
                            (let ((__tmp77537
                                   (let ((__tmp77538
                                          (let ()
                                            (declare (not safe))
                                            (cons _e75236_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77538))))
                              (declare (not safe))
                              (__SRC__% __tmp77537 _stx75200_))
                            (let () (declare (not safe)) (_$E7520475213_)))))
                    (let () (declare (not safe)) (_$E7520475213_))))
              (let () (declare (not safe)) (_$E7520475213_))))))
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
