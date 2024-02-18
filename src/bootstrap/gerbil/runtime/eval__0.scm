(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708289480)
  (begin
    (define __syntax::t
      (let ((__tmp126934 (list))
            (__tmp126932
             (let ((__tmp126933
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp126933 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp126934
         '(e id)
         __tmp126932
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args122676_ (apply make-instance __syntax::t _$args122676_)))
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
      (let ((__tmp126937 (list __syntax::t))
            (__tmp126935
             (let ((__tmp126936
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp126936 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp126937
         '()
         __tmp126935
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args122673_
        (apply make-instance __core-form::t _$args122673_)))
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
      (let ((__tmp126940 (list __core-form::t))
            (__tmp126938
             (let ((__tmp126939
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp126939 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp126940
         '()
         __tmp126938
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args122670_
        (apply make-instance __core-expression::t _$args122670_)))
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
      (let ((__tmp126943 (list __core-form::t))
            (__tmp126941
             (let ((__tmp126942
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp126942 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp126943
         '()
         __tmp126941
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args122667_
        (apply make-instance __core-special-form::t _$args122667_)))
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
      (lambda (_id122665_)
        (let ((__tmp126944 (let () (declare (not safe)) (__AST-e _id122665_))))
          (declare (not safe))
          (hash-get __core __tmp126944))))
    (define __core-bound-id?__%
      (lambda (_id122649_ _is?122650_)
        (let ((_$e122652_
               (let () (declare (not safe)) (__core-resolve _id122649_))))
          (if _$e122652_ (_is?122650_ _$e122652_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id122658_)
        (let ((_is?122660_ true))
          (declare (not safe))
          (__core-bound-id?__% _id122658_ _is?122660_))))
    (define __core-bound-id?
      (lambda _g126946_
        (let ((_g126945_ (let () (declare (not safe)) (##length _g126946_))))
          (cond ((let () (declare (not safe)) (##fx= _g126945_ 1))
                 (apply (lambda (_id122658_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id122658_)))
                        _g126946_))
                ((let () (declare (not safe)) (##fx= _g126945_ 2))
                 (apply (lambda (_id122662_ _is?122663_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id122662_ _is?122663_)))
                        _g126946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g126946_))))))
    (define __core-bind-syntax!__%
      (lambda (_id122632_ _e122633_ _make122634_)
        (let ((__tmp126947
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e122633_
                      'gerbil/runtime/eval#__syntax::t))
                   _e122633_
                   (_make122634_ _e122633_ _id122632_))))
          (declare (not safe))
          (hash-put! __core _id122632_ __tmp126947))))
    (define __core-bind-syntax!__0
      (lambda (_id122639_ _e122640_)
        (let ((_make122642_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id122639_ _e122640_ _make122642_))))
    (define __core-bind-syntax!
      (lambda _g126949_
        (let ((_g126948_ (let () (declare (not safe)) (##length _g126949_))))
          (cond ((let () (declare (not safe)) (##fx= _g126948_ 2))
                 (apply (lambda (_id122639_ _e122640_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id122639_ _e122640_)))
                        _g126949_))
                ((let () (declare (not safe)) (##fx= _g126948_ 3))
                 (apply (lambda (_id122644_ _e122645_ _make122646_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id122644_
                             _e122645_
                             _make122646_)))
                        _g126949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g126949_))))))
    (define __SRC__%
      (lambda (_e122615_ _src-stx122616_)
        (if (or (let () (declare (not safe)) (pair? _e122615_))
                (let () (declare (not safe)) (symbol? _e122615_)))
            (let ((__tmp126953
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx122616_
                          'gerbil#AST::t))
                       (let ((__tmp126954
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx122616_))))
                         (declare (not safe))
                         (__locat __tmp126954))
                       '#f)))
              (declare (not safe))
              (##make-source _e122615_ __tmp126953))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e122615_ 'gerbil#AST::t))
                (let ((__tmp126952
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e122615_ '1 AST::t '#f)))
                      (__tmp126950
                       (let ((__tmp126951
                              (let ()
                                (declare (not safe))
                                (__AST-source _e122615_))))
                         (declare (not safe))
                         (__locat __tmp126951))))
                  (declare (not safe))
                  (##make-source __tmp126952 __tmp126950))
                (error '"BUG! Cannot sourcify object" _e122615_)))))
    (define __SRC__0
      (lambda (_e122624_)
        (let ((_src-stx122626_ '#f))
          (declare (not safe))
          (__SRC__% _e122624_ _src-stx122626_))))
    (define __SRC
      (lambda _g126956_
        (let ((_g126955_ (let () (declare (not safe)) (##length _g126956_))))
          (cond ((let () (declare (not safe)) (##fx= _g126955_ 1))
                 (apply (lambda (_e122624_)
                          (let () (declare (not safe)) (__SRC__0 _e122624_)))
                        _g126956_))
                ((let () (declare (not safe)) (##fx= _g126955_ 2))
                 (apply (lambda (_e122628_ _src-stx122629_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e122628_ _src-stx122629_)))
                        _g126956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g126956_))))))
    (define __locat
      (lambda (_loc122612_)
        (if (let () (declare (not safe)) (##locat? _loc122612_))
            _loc122612_
            '#f)))
    (define __check-values
      (lambda (_obj122607_ _k122608_)
        (let ((_count122610_
               (if (let () (declare (not safe)) (##values? _obj122607_))
                   (let () (declare (not safe)) (##vector-length _obj122607_))
                   '1)))
          (if (fx= _count122610_ _k122608_)
              '#!void
              (error (if (fx< _count122610_ _k122608_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj122607_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj122607_))
                         _obj122607_)
                     _k122608_)))))
    (define __compile
      (lambda (_stx122577_)
        (let* ((_$e122579_ _stx122577_)
               (_$E122581122587_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122579_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122579_))
              (let* ((_$tgt122582122590_
                      (let () (declare (not safe)) (__AST-e _$e122579_)))
                     (_$hd122583122593_
                      (let () (declare (not safe)) (##car _$tgt122582122590_)))
                     (_$tl122584122596_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122582122590_))))
                (let* ((_form122600_ _$hd122583122593_)
                       (_$e122602_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form122600_))))
                  (if _$e122602_
                      ((lambda (_bind122605_)
                         ((##structure-ref _bind122605_ '1 __syntax::t '#f)
                          _stx122577_))
                       _$e122602_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx122577_
                         _form122600_)))))
              (let () (declare (not safe)) (_$E122581122587_))))))
    (define __compile-error__%
      (lambda (_stx122564_ _detail122565_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx122564_
           _detail122565_))))
    (define __compile-error__0
      (lambda (_stx122570_)
        (let ((_detail122572_ '#f))
          (declare (not safe))
          (__compile-error__% _stx122570_ _detail122572_))))
    (define __compile-error
      (lambda _g126958_
        (let ((_g126957_ (let () (declare (not safe)) (##length _g126958_))))
          (cond ((let () (declare (not safe)) (##fx= _g126957_ 1))
                 (apply (lambda (_stx122570_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx122570_)))
                        _g126958_))
                ((let () (declare (not safe)) (##fx= _g126957_ 2))
                 (apply (lambda (_stx122574_ _detail122575_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx122574_ _detail122575_)))
                        _g126958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g126958_))))))
    (define __compile-ignore%
      (lambda (_stx122561_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx122561_))))
    (define __compile-begin%
      (lambda (_stx122536_)
        (let* ((_$e122538_ _stx122536_)
               (_$E122540122546_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122538_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122538_))
              (let* ((_$tgt122541122549_
                      (let () (declare (not safe)) (__AST-e _$e122538_)))
                     (_$hd122542122552_
                      (let () (declare (not safe)) (##car _$tgt122541122549_)))
                     (_$tl122543122555_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122541122549_))))
                (let* ((_body122559_ _$tl122543122555_)
                       (__tmp126959
                        (let ((__tmp126960 (map __compile _body122559_)))
                          (declare (not safe))
                          (cons 'begin __tmp126960))))
                  (declare (not safe))
                  (__SRC__% __tmp126959 _stx122536_)))
              (let () (declare (not safe)) (_$E122540122546_))))))
    (define __compile-begin-foreign%
      (lambda (_stx122511_)
        (let* ((_$e122513_ _stx122511_)
               (_$E122515122521_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122513_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122513_))
              (let* ((_$tgt122516122524_
                      (let () (declare (not safe)) (__AST-e _$e122513_)))
                     (_$hd122517122527_
                      (let () (declare (not safe)) (##car _$tgt122516122524_)))
                     (_$tl122518122530_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122516122524_))))
                (let* ((_body122534_ _$tl122518122530_)
                       (__tmp126961
                        (let ((__tmp126962
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body122534_))))
                          (declare (not safe))
                          (cons 'begin __tmp126962))))
                  (declare (not safe))
                  (__SRC__% __tmp126961 _stx122511_)))
              (let () (declare (not safe)) (_$E122515122521_))))))
    (define __compile-import%
      (lambda (_stx122486_)
        (let* ((_$e122488_ _stx122486_)
               (_$E122490122496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122488_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122488_))
              (let* ((_$tgt122491122499_
                      (let () (declare (not safe)) (__AST-e _$e122488_)))
                     (_$hd122492122502_
                      (let () (declare (not safe)) (##car _$tgt122491122499_)))
                     (_$tl122493122505_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122491122499_))))
                (let* ((_body122509_ _$tl122493122505_)
                       (__tmp126963
                        (let ((__tmp126964
                               (let ((__tmp126965
                                      (let ((__tmp126966
                                             (let ()
                                               (declare (not safe))
                                               (cons _body122509_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp126966))))
                                 (declare (not safe))
                                 (cons __tmp126965 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp126964))))
                  (declare (not safe))
                  (__SRC__% __tmp126963 _stx122486_)))
              (let () (declare (not safe)) (_$E122490122496_))))))
    (define __compile-begin-annotation%
      (lambda (_stx122433_)
        (let* ((_$e122435_ _stx122433_)
               (_$E122437122449_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122435_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122435_))
              (let* ((_$tgt122438122452_
                      (let () (declare (not safe)) (__AST-e _$e122435_)))
                     (_$hd122439122455_
                      (let () (declare (not safe)) (##car _$tgt122438122452_)))
                     (_$tl122440122458_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122438122452_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl122440122458_))
                    (let* ((_$tgt122441122462_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl122440122458_)))
                           (_$hd122442122465_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt122441122462_)))
                           (_$tl122443122468_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt122441122462_))))
                      (let ((_ann122472_ _$hd122442122465_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl122443122468_))
                            (let* ((_$tgt122444122474_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl122443122468_)))
                                   (_$hd122445122477_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt122444122474_)))
                                   (_$tl122446122480_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt122444122474_))))
                              (let ((_expr122484_ _$hd122445122477_))
                                (if (let ((__tmp126967
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl122446122480_))))
                                      (declare (not safe))
                                      (equal? __tmp126967 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr122484_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E122437122449_)))))
                            (let () (declare (not safe)) (_$E122437122449_)))))
                    (let () (declare (not safe)) (_$E122437122449_))))
              (let () (declare (not safe)) (_$E122437122449_))))))
    (define __compile-define-values%
      (lambda (_stx122324_)
        (let* ((_$e122326_ _stx122324_)
               (_$E122328122340_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122326_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122326_))
              (let* ((_$tgt122329122343_
                      (let () (declare (not safe)) (__AST-e _$e122326_)))
                     (_$hd122330122346_
                      (let () (declare (not safe)) (##car _$tgt122329122343_)))
                     (_$tl122331122349_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122329122343_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl122331122349_))
                    (let* ((_$tgt122332122353_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl122331122349_)))
                           (_$hd122333122356_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt122332122353_)))
                           (_$tl122334122359_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt122332122353_))))
                      (let ((_hd122363_ _$hd122333122356_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl122334122359_))
                            (let* ((_$tgt122335122365_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl122334122359_)))
                                   (_$hd122336122368_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt122335122365_)))
                                   (_$tl122337122371_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt122335122365_))))
                              (let ((_expr122375_ _$hd122336122368_))
                                (if (let ((__tmp127000
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl122337122371_))))
                                      (declare (not safe))
                                      (equal? __tmp127000 '()))
                                    (let* ((_$e122377_ _hd122363_)
                                           (_$E122379122420_
                                            (lambda ()
                                              (let ((_$E122380122405_
                                                     (lambda ()
                                                       (let* ((_$E122381122392_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e122377_))))
                      (_ids122395_ _hd122363_)
                      (_len122397_ (length _ids122395_))
                      (_tmp122399_
                       (let ((__tmp126968 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp126968))))
                 (let ((__tmp126969
                        (let ((__tmp126970
                               (let ((__tmp126987
                                      (let ((__tmp126988
                                             (let ((__tmp126989
                                                    (let ((__tmp126990
                                                           (let ((__tmp126991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr122375_))))
                     (declare (not safe))
                     (cons __tmp126991 '()))))
              (declare (not safe))
              (cons _tmp122399_ __tmp126990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp126989))))
                                        (declare (not safe))
                                        (__SRC__% __tmp126988 _stx122324_)))
                                     (__tmp126971
                                      (let ((__tmp126983
                                             (let ((__tmp126984
                                                    (let ((__tmp126985
                                                           (let ((__tmp126986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len122397_ '()))))
                     (declare (not safe))
                     (cons _tmp122399_ __tmp126986))))
              (declare (not safe))
              (cons '__check-values __tmp126985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp126984
                                                _stx122324_)))
                                            (__tmp126972
                                             (let ((__tmp126973
                                                    (let ((__tmp126975
                                                           (lambda (_id122402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k122403_)
                     (if (let () (declare (not safe)) (__AST-e _id122402_))
                         (let ((__tmp126976
                                (let ((__tmp126977
                                       (let ((__tmp126982
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id122402_)))
                                             (__tmp126978
                                              (let ((__tmp126979
                                                     (let ((__tmp126980
                                                            (let ((__tmp126981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k122403_ '()))))
                      (declare (not safe))
                      (cons _tmp122399_ __tmp126981))))
               (declare (not safe))
               (cons '##vector-ref __tmp126980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp126979 '()))))
                                         (declare (not safe))
                                         (cons __tmp126982 __tmp126978))))
                                  (declare (not safe))
                                  (cons 'define __tmp126977))))
                           (declare (not safe))
                           (__SRC__% __tmp126976 _stx122324_))
                         '#f)))
                  (__tmp126974
                   (let () (declare (not safe)) (iota _len122397_))))
              (declare (not safe))
              (filter-map2 __tmp126975 _ids122395_ __tmp126974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp126973))))
                                        (declare (not safe))
                                        (cons __tmp126983 __tmp126972))))
                                 (declare (not safe))
                                 (cons __tmp126987 __tmp126971))))
                          (declare (not safe))
                          (cons 'begin __tmp126970))))
                   (declare (not safe))
                   (__SRC__% __tmp126969 _stx122324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e122377_))
                                                    (let* ((_$tgt122382122408_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e122377_)))
                                                           (_$hd122383122411_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt122382122408_)))
                                                           (_$tl122384122414_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt122382122408_))))
                                                      (let ((_id122418_
                                                             _$hd122383122411_))
                                                        (if (let ((__tmp126997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl122384122414_))))
                      (declare (not safe))
                      (equal? __tmp126997 '()))
                    (let ((__tmp126992
                           (let ((__tmp126993
                                  (let ((__tmp126996
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id122418_)))
                                        (__tmp126994
                                         (let ((__tmp126995
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr122375_))))
                                           (declare (not safe))
                                           (cons __tmp126995 '()))))
                                    (declare (not safe))
                                    (cons __tmp126996 __tmp126994))))
                             (declare (not safe))
                             (cons 'define __tmp126993))))
                      (declare (not safe))
                      (__SRC__% __tmp126992 _stx122324_))
                    (let () (declare (not safe)) (_$E122380122405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E122380122405_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e122377_))
                                          (let* ((_$tgt122385122423_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e122377_)))
                                                 (_$hd122386122426_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt122385122423_)))
                                                 (_$tl122387122429_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt122385122423_))))
                                            (if (let ((__tmp126999
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd122386122426_))))
                                                  (declare (not safe))
                                                  (equal? __tmp126999 '#f))
                                                (if (let ((__tmp126998
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl122387122429_))))
                                                      (declare (not safe))
                                                      (equal? __tmp126998 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr122375_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E122379122420_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E122379122420_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E122379122420_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E122328122340_)))))
                            (let () (declare (not safe)) (_$E122328122340_)))))
                    (let () (declare (not safe)) (_$E122328122340_))))
              (let () (declare (not safe)) (_$E122328122340_))))))
    (define __compile-head-id
      (lambda (_e122322_)
        (let ((__tmp127001
               (if (let () (declare (not safe)) (__AST-e _e122322_))
                   _e122322_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp127001))))
    (define __compile-lambda-head
      (lambda (_hd122279_)
        (let _recur122281_ ((_rest122283_ _hd122279_))
          (let* ((_$e122285_ _rest122283_)
                 (_$E122287122305_
                  (lambda ()
                    (let ((_$E122288122302_
                           (lambda ()
                             (let* ((_$E122289122297_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e122285_))))
                                    (_tail122300_ _$e122285_))
                               (declare (not safe))
                               (__compile-head-id _tail122300_)))))
                      (if (let ((__tmp127002
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e122285_))))
                            (declare (not safe))
                            (equal? __tmp127002 '()))
                          '()
                          (let () (declare (not safe)) (_$E122288122302_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e122285_))
                (let* ((_$tgt122290122308_
                        (let () (declare (not safe)) (__AST-e _$e122285_)))
                       (_$hd122291122311_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt122290122308_)))
                       (_$tl122292122314_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt122290122308_))))
                  (let* ((_hd122318_ _$hd122291122311_)
                         (_rest122320_ _$tl122292122314_))
                    (let ((__tmp127004
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd122318_)))
                          (__tmp127003
                           (let ()
                             (declare (not safe))
                             (_recur122281_ _rest122320_))))
                      (declare (not safe))
                      (cons __tmp127004 __tmp127003))))
                (let () (declare (not safe)) (_$E122287122305_)))))))
    (define __compile-lambda%
      (lambda (_stx122226_)
        (let* ((_$e122228_ _stx122226_)
               (_$E122230122242_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e122228_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e122228_))
              (let* ((_$tgt122231122245_
                      (let () (declare (not safe)) (__AST-e _$e122228_)))
                     (_$hd122232122248_
                      (let () (declare (not safe)) (##car _$tgt122231122245_)))
                     (_$tl122233122251_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt122231122245_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl122233122251_))
                    (let* ((_$tgt122234122255_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl122233122251_)))
                           (_$hd122235122258_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt122234122255_)))
                           (_$tl122236122261_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt122234122255_))))
                      (let ((_hd122265_ _$hd122235122258_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl122236122261_))
                            (let* ((_$tgt122237122267_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl122236122261_)))
                                   (_$hd122238122270_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt122237122267_)))
                                   (_$tl122239122273_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt122237122267_))))
                              (let ((_body122277_ _$hd122238122270_))
                                (if (let ((__tmp127010
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl122239122273_))))
                                      (declare (not safe))
                                      (equal? __tmp127010 '()))
                                    (let ((__tmp127005
                                           (let ((__tmp127006
                                                  (let ((__tmp127009
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd122265_)))
                                                        (__tmp127007
                                                         (let ((__tmp127008
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body122277_))))
                   (declare (not safe))
                   (cons __tmp127008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127009
                                                          __tmp127007))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp127006))))
                                      (declare (not safe))
                                      (__SRC__% __tmp127005 _stx122226_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E122230122242_)))))
                            (let () (declare (not safe)) (_$E122230122242_)))))
                    (let () (declare (not safe)) (_$E122230122242_))))
              (let () (declare (not safe)) (_$E122230122242_))))))
    (define __compile-case-lambda%
      (lambda (_stx122018_)
        (letrec ((_variadic?122020_
                  (lambda (_hd122191_)
                    (let* ((_$e122193_ _hd122191_)
                           (_$E122195122211_
                            (lambda ()
                              (let ((_$E122196122208_
                                     (lambda ()
                                       (let ((_$E122197122205_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e122193_)))))
                                         '#t))))
                                (if (let ((__tmp127011
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e122193_))))
                                      (declare (not safe))
                                      (equal? __tmp127011 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E122196122208_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e122193_))
                          (let* ((_$tgt122198122214_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e122193_)))
                                 (_$hd122199122217_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt122198122214_)))
                                 (_$tl122200122220_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt122198122214_))))
                            (let ((_rest122224_ _$tl122200122220_))
                              (declare (not safe))
                              (_variadic?122020_ _rest122224_)))
                          (let () (declare (not safe)) (_$E122195122211_))))))
                 (_arity122021_
                  (lambda (_hd122156_)
                    (let _lp122158_ ((_rest122160_ _hd122156_) (_k122161_ '0))
                      (let* ((_$e122163_ _rest122160_)
                             (_$E122165122176_
                              (lambda ()
                                (let ((_$E122166122173_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e122163_)))))
                                  _k122161_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e122163_))
                            (let* ((_$tgt122167122179_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e122163_)))
                                   (_$hd122168122182_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt122167122179_)))
                                   (_$tl122169122185_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt122167122179_))))
                              (let* ((_rest122189_ _$tl122169122185_)
                                     (__tmp127012
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k122161_ '1))))
                                (declare (not safe))
                                (_lp122158_ _rest122189_ __tmp127012)))
                            (let ()
                              (declare (not safe))
                              (_$E122165122176_)))))))
                 (_generate122022_
                  (lambda (_rest122083_ _args122084_ _len122085_)
                    (let* ((_$e122087_ _rest122083_)
                           (_$E122089122100_
                            (lambda ()
                              (let* ((_$E122090122097_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e122087_))))
                                     (__tmp127013
                                      (let ((__tmp127014
                                             (let ((__tmp127015
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args122084_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp127015))))
                                        (declare (not safe))
                                        (cons 'error __tmp127014))))
                                (declare (not safe))
                                (__SRC__% __tmp127013 _stx122018_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e122087_))
                          (let* ((_$tgt122091122103_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e122087_)))
                                 (_$hd122092122106_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt122091122103_)))
                                 (_$tl122093122109_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt122091122103_))))
                            (let* ((_clause122113_ _$hd122092122106_)
                                   (_rest122115_ _$tl122093122109_)
                                   (_$e122117_ _clause122113_)
                                   (_$E122119122128_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e122117_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e122117_))
                                  (let* ((_$tgt122120122131_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e122117_)))
                                         (_$hd122121122134_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt122120122131_)))
                                         (_$tl122122122137_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt122120122131_))))
                                    (let ((_hd122141_ _$hd122121122134_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl122122122137_))
                                          (let* ((_$tgt122123122143_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl122122122137_)))
                                                 (_$hd122124122146_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt122123122143_)))
                                                 (_$tl122125122149_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt122123122143_))))
                                            (if (let ((__tmp127030
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl122125122149_))))
                                                  (declare (not safe))
                                                  (equal? __tmp127030 '()))
                                                (let ((_clen122153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity122021_
                                                          _hd122141_)))
                                                      (_cmp122154_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?122020_
                                                              _hd122141_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp127016
                                                         (let ((__tmp127017
                                                                (let ((__tmp127027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp127028
                                      (let ((__tmp127029
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen122153_ '()))))
                                        (declare (not safe))
                                        (cons _len122085_ __tmp127029))))
                                 (declare (not safe))
                                 (cons _cmp122154_ __tmp127028)))
                              (__tmp127018
                               (let ((__tmp127021
                                      (let ((__tmp127022
                                             (let ((__tmp127023
                                                    (let ((__tmp127025
                                                           (let ((__tmp127026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause122113_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp127026)))
                  (__tmp127024
                   (let () (declare (not safe)) (cons _args122084_ '()))))
              (declare (not safe))
              (cons __tmp127025 __tmp127024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp127023))))
                                        (declare (not safe))
                                        (__SRC__% __tmp127022 _stx122018_)))
                                     (__tmp127019
                                      (let ((__tmp127020
                                             (let ()
                                               (declare (not safe))
                                               (_generate122022_
                                                _rest122115_
                                                _args122084_
                                                _len122085_))))
                                        (declare (not safe))
                                        (cons __tmp127020 '()))))
                                 (declare (not safe))
                                 (cons __tmp127021 __tmp127019))))
                          (declare (not safe))
                          (cons __tmp127027 __tmp127018))))
                   (declare (not safe))
                   (cons 'if __tmp127017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp127016
                                                     _stx122018_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E122119122128_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E122119122128_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E122119122128_)))))
                          (let () (declare (not safe)) (_$E122089122100_)))))))
          (let* ((_$e122024_ _stx122018_)
                 (_$E122026122058_
                  (lambda ()
                    (let ((_$E122027122040_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e122024_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e122024_))
                          (let* ((_$tgt122028122043_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e122024_)))
                                 (_$hd122029122046_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt122028122043_)))
                                 (_$tl122030122049_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt122028122043_))))
                            (let ((_clauses122053_ _$tl122030122049_))
                              (let ((_args122055_
                                     (let ((__tmp127031 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp127031 _stx122018_)))
                                    (_len122056_
                                     (let ((__tmp127032 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp127032 _stx122018_))))
                                (let ((__tmp127033
                                       (let ((__tmp127034
                                              (let ((__tmp127035
                                                     (let ((__tmp127036
                                                            (let ((__tmp127037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127038
                                  (let ((__tmp127041
                                         (let ((__tmp127042
                                                (let ((__tmp127043
                                                       (let ((__tmp127044
                                                              (let ((__tmp127045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp127046
                                    (let ()
                                      (declare (not safe))
                                      (cons _args122055_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp127046))))
                        (declare (not safe))
                        (__SRC__% __tmp127045 _stx122018_))))
                 (declare (not safe))
                 (cons __tmp127044 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len122056_
                                                        __tmp127043))))
                                           (declare (not safe))
                                           (cons __tmp127042 '())))
                                        (__tmp127039
                                         (let ((__tmp127040
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate122022_
                                                   _clauses122053_
                                                   _args122055_
                                                   _len122056_))))
                                           (declare (not safe))
                                           (cons __tmp127040 '()))))
                                    (declare (not safe))
                                    (cons __tmp127041 __tmp127039))))
                             (declare (not safe))
                             (cons 'let __tmp127038))))
                      (declare (not safe))
                      (__SRC__% __tmp127037 _stx122018_))))
               (declare (not safe))
               (cons __tmp127036 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args122055_
                                                      __tmp127035))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp127034))))
                                  (declare (not safe))
                                  (__SRC__% __tmp127033 _stx122018_)))))
                          (let () (declare (not safe)) (_$E122027122040_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e122024_))
                (let* ((_$tgt122031122061_
                        (let () (declare (not safe)) (__AST-e _$e122024_)))
                       (_$hd122032122064_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt122031122061_)))
                       (_$tl122033122067_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt122031122061_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl122033122067_))
                      (let* ((_$tgt122034122071_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl122033122067_)))
                             (_$hd122035122074_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt122034122071_)))
                             (_$tl122036122077_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt122034122071_))))
                        (let ((_clause122081_ _$hd122035122074_))
                          (if (let ((__tmp127048
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl122036122077_))))
                                (declare (not safe))
                                (equal? __tmp127048 '()))
                              (let ((__tmp127047
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause122081_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp127047))
                              (let ()
                                (declare (not safe))
                                (_$E122026122058_)))))
                      (let () (declare (not safe)) (_$E122026122058_))))
                (let () (declare (not safe)) (_$E122026122058_)))))))
    (define __compile-let-form
      (lambda (_stx121787_ _compile-simple121788_ _compile-values121789_)
        (letrec ((_simple-bind?121791_
                  (lambda (_hd121976_)
                    (let* ((_hd121977121987_ _hd121976_)
                           (_else121980121995_ (lambda () '#f)))
                      (let ((_K121983122008_ (lambda (_id122006_) '#t))
                            (_K121982122000_ (lambda () '#t)))
                        (let ((_try-match121979122003_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd121977121987_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K121982122000_))
                                     (let ()
                                       (declare (not safe))
                                       (_else121980121995_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd121977121987_))
                              (let ((_tl121985122013_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd121977121987_)))
                                    (_hd121984122011_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd121977121987_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl121985122013_))
                                    (let ((_id122016_ _hd121984122011_))
                                      (declare (not safe))
                                      (_K121983122008_ _id122016_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match121979122003_))))
                              (let ()
                                (declare (not safe))
                                (_try-match121979122003_))))))))
                 (_car-e121792_
                  (lambda (_hd121974_)
                    (if (let () (declare (not safe)) (pair? _hd121974_))
                        (car _hd121974_)
                        _hd121974_))))
          (let* ((_$e121794_ _stx121787_)
                 (_$E121796121939_
                  (lambda ()
                    (let ((_$E121797121819_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e121794_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e121794_))
                          (let* ((_$tgt121798121822_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e121794_)))
                                 (_$hd121799121825_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt121798121822_)))
                                 (_$tl121800121828_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt121798121822_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl121800121828_))
                                (let* ((_$tgt121801121832_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl121800121828_)))
                                       (_$hd121802121835_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt121801121832_)))
                                       (_$tl121803121838_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt121801121832_))))
                                  (let ((_hd121842_ _$hd121802121835_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl121803121838_))
                                        (let* ((_$tgt121804121844_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl121803121838_)))
                                               (_$hd121805121847_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt121804121844_)))
                                               (_$tl121806121850_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt121804121844_))))
                                          (let ((_body121854_
                                                 _$hd121805121847_))
                                            (if (let ((__tmp127051
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl121806121850_))))
                                                  (declare (not safe))
                                                  (equal? __tmp127051 '()))
                                                (let* ((_hd-ids121894_
                                                        (map (lambda (_bind121856_)
                                                               (let* ((_$e121858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind121856_)
                              (_$E121860121869_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e121858_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e121858_))
                             (let* ((_$tgt121861121872_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e121858_)))
                                    (_$hd121862121875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt121861121872_)))
                                    (_$tl121863121878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt121861121872_))))
                               (let ((_ids121882_ _$hd121862121875_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl121863121878_))
                                     (let* ((_$tgt121864121884_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl121863121878_)))
                                            (_$hd121865121887_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt121864121884_)))
                                            (_$tl121866121890_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt121864121884_))))
                                       (if (let ((__tmp127049
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl121866121890_))))
                                             (declare (not safe))
                                             (equal? __tmp127049 '()))
                                           _ids121882_
                                           (let ()
                                             (declare (not safe))
                                             (_$E121860121869_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E121860121869_)))))
                             (let ()
                               (declare (not safe))
                               (_$E121860121869_)))))
                     _hd121842_))
               (_exprs121934_
                (map (lambda (_bind121896_)
                       (let* ((_$e121898_ _bind121896_)
                              (_$E121900121909_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e121898_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e121898_))
                             (let* ((_$tgt121901121912_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e121898_)))
                                    (_$hd121902121915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt121901121912_)))
                                    (_$tl121903121918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt121901121912_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl121903121918_))
                                   (let* ((_$tgt121904121922_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl121903121918_)))
                                          (_$hd121905121925_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt121904121922_)))
                                          (_$tl121906121928_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt121904121922_))))
                                     (let ((_expr121932_ _$hd121905121925_))
                                       (if (let ((__tmp127050
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl121906121928_))))
                                             (declare (not safe))
                                             (equal? __tmp127050 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr121932_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E121900121909_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E121900121909_))))
                             (let ()
                               (declare (not safe))
                               (_$E121900121909_)))))
                     _hd121842_))
               (_body121936_
                (let () (declare (not safe)) (__compile _body121854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?121791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids121894_))
              (_compile-simple121788_
               (map _car-e121792_ _hd-ids121894_)
               _exprs121934_
               _body121936_)
              (_compile-values121789_
               _hd-ids121894_
               _exprs121934_
               _body121936_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E121797121819_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E121797121819_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E121797121819_))))
                          (let () (declare (not safe)) (_$E121797121819_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e121794_))
                (let* ((_$tgt121807121942_
                        (let () (declare (not safe)) (__AST-e _$e121794_)))
                       (_$hd121808121945_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt121807121942_)))
                       (_$tl121809121948_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt121807121942_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl121809121948_))
                      (let* ((_$tgt121810121952_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl121809121948_)))
                             (_$hd121811121955_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt121810121952_)))
                             (_$tl121812121958_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt121810121952_))))
                        (if (let ((__tmp127053
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd121811121955_))))
                              (declare (not safe))
                              (equal? __tmp127053 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl121812121958_))
                                (let* ((_$tgt121813121962_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl121812121958_)))
                                       (_$hd121814121965_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt121813121962_)))
                                       (_$tl121815121968_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt121813121962_))))
                                  (let ((_body121972_ _$hd121814121965_))
                                    (if (let ((__tmp127052
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl121815121968_))))
                                          (declare (not safe))
                                          (equal? __tmp127052 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body121972_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E121796121939_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E121796121939_)))
                            (let () (declare (not safe)) (_$E121796121939_))))
                      (let () (declare (not safe)) (_$E121796121939_))))
                (let () (declare (not safe)) (_$E121796121939_)))))))
    (define __compile-let-values%
      (lambda (_stx121602_)
        (letrec ((_compile-simple121604_
                  (lambda (_hd-ids121783_ _exprs121784_ _body121785_)
                    (let ((__tmp127054
                           (let ((__tmp127055
                                  (let ((__tmp127057
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids121783_)
                                              _exprs121784_))
                                        (__tmp127056
                                         (let ()
                                           (declare (not safe))
                                           (cons _body121785_ '()))))
                                    (declare (not safe))
                                    (cons __tmp127057 __tmp127056))))
                             (declare (not safe))
                             (cons 'let __tmp127055))))
                      (declare (not safe))
                      (__SRC__% __tmp127054 _stx121602_))))
                 (_compile-values121605_
                  (lambda (_hd-ids121701_ _exprs121702_ _body121703_)
                    (let _lp121705_ ((_rest121707_ _hd-ids121701_)
                                     (_exprs121708_ _exprs121702_)
                                     (_bind121709_ '())
                                     (_post121710_ '()))
                      (let* ((_rest121711121725_ _rest121707_)
                             (_else121714121733_
                              (lambda ()
                                (let ((__tmp127058
                                       (let ((__tmp127059
                                              (let ((__tmp127062
                                                     (reverse _bind121709_))
                                                    (__tmp127060
                                                     (let ((__tmp127061
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post121606_
                                                               _post121710_
                                                               _body121703_))))
                                                       (declare (not safe))
                                                       (cons __tmp127061
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp127062
                                                      __tmp127060))))
                                         (declare (not safe))
                                         (cons 'let __tmp127059))))
                                  (declare (not safe))
                                  (__SRC__% __tmp127058 _stx121602_)))))
                        (let ((_K121719121766_
                               (lambda (_rest121763_ _id121764_)
                                 (let ((__tmp127068 (cdr _exprs121708_))
                                       (__tmp127063
                                        (let ((__tmp127064
                                               (let ((__tmp127067
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id121764_)))
                                                     (__tmp127065
                                                      (let ((__tmp127066
                                                             (car _exprs121708_)))
                                                        (declare (not safe))
                                                        (cons __tmp127066
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp127067
                                                       __tmp127065))))
                                          (declare (not safe))
                                          (cons __tmp127064 _bind121709_))))
                                   (declare (not safe))
                                   (_lp121705_
                                    _rest121763_
                                    __tmp127068
                                    __tmp127063
                                    _post121710_))))
                              (_K121716121748_
                               (lambda (_rest121737_ _hd121738_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd121738_))
                                     (let ((__tmp127089 (cdr _exprs121708_))
                                           (__tmp127082
                                            (let ((__tmp127083
                                                   (let ((__tmp127088
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd121738_)))
                                                         (__tmp127084
                                                          (let ((__tmp127085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp127086
                                (let ((__tmp127087 (car _exprs121708_)))
                                  (declare (not safe))
                                  (cons __tmp127087 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp127086))))
                    (declare (not safe))
                    (cons __tmp127085 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127088
                                                           __tmp127084))))
                                              (declare (not safe))
                                              (cons __tmp127083
                                                    _bind121709_))))
                                       (declare (not safe))
                                       (_lp121705_
                                        _rest121737_
                                        __tmp127089
                                        __tmp127082
                                        _post121710_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd121738_))
                                         (let* ((_len121740_
                                                 (length _hd121738_))
                                                (_tmp121742_
                                                 (let ((__tmp127069 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp127069))))
                                           (let ((__tmp127081
                                                  (cdr _exprs121708_))
                                                 (__tmp127077
                                                  (let ((__tmp127078
                                                         (let ((__tmp127079
                                                                (let ((__tmp127080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs121708_)))
                          (declare (not safe))
                          (cons __tmp127080 '()))))
                   (declare (not safe))
                   (cons _tmp121742_ __tmp127079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127078
                                                          _bind121709_)))
                                                 (__tmp127070
                                                  (let ((__tmp127071
                                                         (let ((__tmp127072
                                                                (let ((__tmp127073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp127075
                                      (lambda (_id121745_ _k121746_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id121745_))
                                            (let ((__tmp127076
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id121745_))))
                                              (declare (not safe))
                                              (cons __tmp127076 _k121746_))
                                            '#f)))
                                     (__tmp127074
                                      (let ()
                                        (declare (not safe))
                                        (iota _len121740_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp127075
                                  _hd121738_
                                  __tmp127074))))
                          (declare (not safe))
                          (cons _len121740_ __tmp127073))))
                   (declare (not safe))
                   (cons _tmp121742_ __tmp127072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127071
                                                          _post121710_))))
                                             (declare (not safe))
                                             (_lp121705_
                                              _rest121737_
                                              __tmp127081
                                              __tmp127077
                                              __tmp127070)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx121602_
                                            _hd121738_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121711121725_))
                              (let ((_tl121721121771_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121711121725_)))
                                    (_hd121720121769_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121711121725_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd121720121769_))
                                    (let ((_tl121723121776_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd121720121769_)))
                                          (_hd121722121774_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd121720121769_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl121723121776_))
                                          (let ((_id121779_ _hd121722121774_)
                                                (_rest121781_
                                                 _tl121721121771_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121719121766_
                                               _rest121781_
                                               _id121779_)))
                                          (let ((_hd121756_ _hd121720121769_)
                                                (_rest121758_
                                                 _tl121721121771_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121716121748_
                                               _rest121758_
                                               _hd121756_)))))
                                    (let ((_hd121756_ _hd121720121769_)
                                          (_rest121758_ _tl121721121771_))
                                      (let ()
                                        (declare (not safe))
                                        (_K121716121748_
                                         _rest121758_
                                         _hd121756_)))))
                              (let ()
                                (declare (not safe))
                                (_else121714121733_))))))))
                 (_compile-post121606_
                  (lambda (_post121608_ _body121609_)
                    (let _lp121611_ ((_rest121613_ _post121608_)
                                     (_check121614_ '())
                                     (_bind121615_ '()))
                      (let* ((_rest121616121628_ _rest121613_)
                             (_else121618121636_
                              (lambda ()
                                (let ((__tmp127090
                                       (let ((__tmp127091
                                              (let ((__tmp127092
                                                     (let ((__tmp127093
                                                            (let ((__tmp127094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127095
                                  (let ((__tmp127096
                                         (let ()
                                           (declare (not safe))
                                           (cons _body121609_ '()))))
                                    (declare (not safe))
                                    (cons _bind121615_ __tmp127096))))
                             (declare (not safe))
                             (cons 'let __tmp127095))))
                      (declare (not safe))
                      (__SRC__% __tmp127094 _stx121602_))))
               (declare (not safe))
               (cons __tmp127093 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp127092
                                                        _check121614_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp127091))))
                                  (declare (not safe))
                                  (__SRC__% __tmp127090 _stx121602_))))
                             (_K121620121675_
                              (lambda (_rest121639_
                                       _init121640_
                                       _len121641_
                                       _tmp121642_)
                                (let ((__tmp127104
                                       (let ((__tmp127105
                                              (let ((__tmp127106
                                                     (let ((__tmp127107
                                                            (let ((__tmp127108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len121641_ '()))))
                      (declare (not safe))
                      (cons _tmp121642_ __tmp127108))))
               (declare (not safe))
               (cons '__check-values __tmp127107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp127106
                                                 _stx121602_))))
                                         (declare (not safe))
                                         (cons __tmp127105 _check121614_)))
                                      (__tmp127097
                                       (let ((__tmp127098
                                              (lambda (_hd121644_ _r121645_)
                                                (let* ((_hd121646121653_
                                                        _hd121644_)
                                                       (_E121648121657_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd121646121653_)))
               (_K121649121663_
                (lambda (_k121660_ _id121661_)
                  (let ((__tmp127099
                         (let ((__tmp127100
                                (let ((__tmp127101
                                       (let ((__tmp127102
                                              (let ((__tmp127103
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k121660_ '()))))
                                                (declare (not safe))
                                                (cons _tmp121642_
                                                      __tmp127103))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp127102))))
                                  (declare (not safe))
                                  (cons __tmp127101 '()))))
                           (declare (not safe))
                           (cons _id121661_ __tmp127100))))
                    (declare (not safe))
                    (cons __tmp127099 _r121645_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd121646121653_))
                                                      (let ((_hd121650121666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd121646121653_)))
                    (_tl121651121668_
                     (let () (declare (not safe)) (##cdr _hd121646121653_))))
                (let* ((_id121671_ _hd121650121666_)
                       (_k121673_ _tl121651121668_))
                  (declare (not safe))
                  (_K121649121663_ _k121673_ _id121671_)))
              (let () (declare (not safe)) (_E121648121657_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp127098
                                                 _bind121615_
                                                 _init121640_))))
                                  (declare (not safe))
                                  (_lp121611_
                                   _rest121639_
                                   __tmp127104
                                   __tmp127097)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest121616121628_))
                            (let ((_hd121621121678_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest121616121628_)))
                                  (_tl121622121680_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest121616121628_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd121621121678_))
                                  (let ((_hd121623121683_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd121621121678_)))
                                        (_tl121624121685_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd121621121678_))))
                                    (let ((_tmp121688_ _hd121623121683_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl121624121685_))
                                          (let ((_hd121625121690_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl121624121685_)))
                                                (_tl121626121692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl121624121685_))))
                                            (let* ((_len121695_
                                                    _hd121625121690_)
                                                   (_init121697_
                                                    _tl121626121692_)
                                                   (_rest121699_
                                                    _tl121622121680_))
                                              (declare (not safe))
                                              (_K121620121675_
                                               _rest121699_
                                               _init121697_
                                               _len121695_
                                               _tmp121688_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else121618121636_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else121618121636_))))
                            (let ()
                              (declare (not safe))
                              (_else121618121636_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx121602_
             _compile-simple121604_
             _compile-values121605_)))))
    (define __compile-letrec-values%
      (lambda (_stx121402_)
        (letrec ((_compile-simple121404_
                  (lambda (_hd-ids121598_ _exprs121599_ _body121600_)
                    (let ((__tmp127109
                           (let ((__tmp127110
                                  (let ((__tmp127112
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids121598_)
                                              _exprs121599_))
                                        (__tmp127111
                                         (let ()
                                           (declare (not safe))
                                           (cons _body121600_ '()))))
                                    (declare (not safe))
                                    (cons __tmp127112 __tmp127111))))
                             (declare (not safe))
                             (cons 'letrec __tmp127110))))
                      (declare (not safe))
                      (__SRC__% __tmp127109 _stx121402_))))
                 (_compile-values121405_
                  (lambda (_hd-ids121512_ _exprs121513_ _body121514_)
                    (let _lp121516_ ((_rest121518_ _hd-ids121512_)
                                     (_exprs121519_ _exprs121513_)
                                     (_pre121520_ '())
                                     (_bind121521_ '())
                                     (_post121522_ '()))
                      (let* ((_rest121523121537_ _rest121518_)
                             (_else121526121545_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner121406_
                                   _pre121520_
                                   _bind121521_
                                   _post121522_
                                   _body121514_)))))
                        (let ((_K121531121581_
                               (lambda (_rest121578_ _id121579_)
                                 (let ((__tmp127118 (cdr _exprs121519_))
                                       (__tmp127113
                                        (let ((__tmp127114
                                               (let ((__tmp127117
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id121579_)))
                                                     (__tmp127115
                                                      (let ((__tmp127116
                                                             (car _exprs121519_)))
                                                        (declare (not safe))
                                                        (cons __tmp127116
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp127117
                                                       __tmp127115))))
                                          (declare (not safe))
                                          (cons __tmp127114 _bind121521_))))
                                   (declare (not safe))
                                   (_lp121516_
                                    _rest121578_
                                    __tmp127118
                                    _pre121520_
                                    __tmp127113
                                    _post121522_))))
                              (_K121528121563_
                               (lambda (_rest121549_ _hd121550_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd121550_))
                                     (let ((__tmp127146 (cdr _exprs121519_))
                                           (__tmp127139
                                            (let ((__tmp127140
                                                   (let ((__tmp127145
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd121550_)))
                                                         (__tmp127141
                                                          (let ((__tmp127142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp127143
                                (let ((__tmp127144 (car _exprs121519_)))
                                  (declare (not safe))
                                  (cons __tmp127144 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp127143))))
                    (declare (not safe))
                    (cons __tmp127142 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127145
                                                           __tmp127141))))
                                              (declare (not safe))
                                              (cons __tmp127140
                                                    _bind121521_))))
                                       (declare (not safe))
                                       (_lp121516_
                                        _rest121549_
                                        __tmp127146
                                        _pre121520_
                                        __tmp127139
                                        _post121522_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd121550_))
                                         (let* ((_len121552_
                                                 (length _hd121550_))
                                                (_tmp121554_
                                                 (let ((__tmp127119 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp127119))))
                                           (let ((__tmp127138
                                                  (cdr _exprs121519_))
                                                 (__tmp127131
                                                  (let ((__tmp127132
                                                         (lambda (_id121557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r121558_)
                   (if (let () (declare (not safe)) (__AST-e _id121557_))
                       (let ((__tmp127133
                              (let ((__tmp127137
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id121557_)))
                                    (__tmp127134
                                     (let ((__tmp127135
                                            (let ((__tmp127136
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp127136))))
                                       (declare (not safe))
                                       (cons __tmp127135 '()))))
                                (declare (not safe))
                                (cons __tmp127137 __tmp127134))))
                         (declare (not safe))
                         (cons __tmp127133 _r121558_))
                       _r121558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp127132
                                                            _pre121520_
                                                            _hd121550_)))
                                                 (__tmp127127
                                                  (let ((__tmp127128
                                                         (let ((__tmp127129
                                                                (let ((__tmp127130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs121519_)))
                          (declare (not safe))
                          (cons __tmp127130 '()))))
                   (declare (not safe))
                   (cons _tmp121554_ __tmp127129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127128
                                                          _bind121521_)))
                                                 (__tmp127120
                                                  (let ((__tmp127121
                                                         (let ((__tmp127122
                                                                (let ((__tmp127123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp127125
                                      (lambda (_id121560_ _k121561_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id121560_))
                                            (let ((__tmp127126
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id121560_))))
                                              (declare (not safe))
                                              (cons __tmp127126 _k121561_))
                                            '#f)))
                                     (__tmp127124
                                      (let ()
                                        (declare (not safe))
                                        (iota _len121552_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp127125
                                  _hd121550_
                                  __tmp127124))))
                          (declare (not safe))
                          (cons _len121552_ __tmp127123))))
                   (declare (not safe))
                   (cons _tmp121554_ __tmp127122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127121
                                                          _post121522_))))
                                             (declare (not safe))
                                             (_lp121516_
                                              _rest121549_
                                              __tmp127138
                                              __tmp127131
                                              __tmp127127
                                              __tmp127120)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx121402_
                                            _hd121550_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121523121537_))
                              (let ((_tl121533121586_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121523121537_)))
                                    (_hd121532121584_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121523121537_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd121532121584_))
                                    (let ((_tl121535121591_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd121532121584_)))
                                          (_hd121534121589_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd121532121584_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl121535121591_))
                                          (let ((_id121594_ _hd121534121589_)
                                                (_rest121596_
                                                 _tl121533121586_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121531121581_
                                               _rest121596_
                                               _id121594_)))
                                          (let ((_hd121571_ _hd121532121584_)
                                                (_rest121573_
                                                 _tl121533121586_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121528121563_
                                               _rest121573_
                                               _hd121571_)))))
                                    (let ((_hd121571_ _hd121532121584_)
                                          (_rest121573_ _tl121533121586_))
                                      (let ()
                                        (declare (not safe))
                                        (_K121528121563_
                                         _rest121573_
                                         _hd121571_)))))
                              (let ()
                                (declare (not safe))
                                (_else121526121545_))))))))
                 (_compile-inner121406_
                  (lambda (_pre121507_ _bind121508_ _post121509_ _body121510_)
                    (if (let () (declare (not safe)) (null? _pre121507_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind121407_
                           _bind121508_
                           _post121509_
                           _body121510_))
                        (let ((__tmp127147
                               (let ((__tmp127148
                                      (let ((__tmp127151 (reverse _pre121507_))
                                            (__tmp127149
                                             (let ((__tmp127150
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind121407_
                                                       _bind121508_
                                                       _post121509_
                                                       _body121510_))))
                                               (declare (not safe))
                                               (cons __tmp127150 '()))))
                                        (declare (not safe))
                                        (cons __tmp127151 __tmp127149))))
                                 (declare (not safe))
                                 (cons 'let __tmp127148))))
                          (declare (not safe))
                          (__SRC__% __tmp127147 _stx121402_)))))
                 (_compile-bind121407_
                  (lambda (_bind121503_ _post121504_ _body121505_)
                    (let ((__tmp127152
                           (let ((__tmp127153
                                  (let ((__tmp127156 (reverse _bind121503_))
                                        (__tmp127154
                                         (let ((__tmp127155
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post121408_
                                                   _post121504_
                                                   _body121505_))))
                                           (declare (not safe))
                                           (cons __tmp127155 '()))))
                                    (declare (not safe))
                                    (cons __tmp127156 __tmp127154))))
                             (declare (not safe))
                             (cons 'letrec __tmp127153))))
                      (declare (not safe))
                      (__SRC__% __tmp127152 _stx121402_))))
                 (_compile-post121408_
                  (lambda (_post121410_ _body121411_)
                    (let _lp121413_ ((_rest121415_ _post121410_)
                                     (_check121416_ '())
                                     (_bind121417_ '()))
                      (let* ((_rest121418121430_ _rest121415_)
                             (_else121420121438_
                              (lambda ()
                                (let ((__tmp127157
                                       (let ((__tmp127158
                                              (let ((__tmp127159
                                                     (let ((__tmp127160
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body121411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp127160 _bind121417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp127159
                                                        _check121416_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp127158))))
                                  (declare (not safe))
                                  (__SRC__% __tmp127157 _stx121402_))))
                             (_K121422121477_
                              (lambda (_rest121441_
                                       _init121442_
                                       _len121443_
                                       _tmp121444_)
                                (let ((__tmp127169
                                       (let ((__tmp127170
                                              (let ((__tmp127171
                                                     (let ((__tmp127172
                                                            (let ((__tmp127173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len121443_ '()))))
                      (declare (not safe))
                      (cons _tmp121444_ __tmp127173))))
               (declare (not safe))
               (cons '__check-values __tmp127172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp127171
                                                 _stx121402_))))
                                         (declare (not safe))
                                         (cons __tmp127170 _check121416_)))
                                      (__tmp127161
                                       (let ((__tmp127162
                                              (lambda (_hd121446_ _r121447_)
                                                (let* ((_hd121448121455_
                                                        _hd121446_)
                                                       (_E121450121459_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd121448121455_)))
               (_K121451121465_
                (lambda (_k121462_ _id121463_)
                  (let ((__tmp127163
                         (let ((__tmp127164
                                (let ((__tmp127165
                                       (let ((__tmp127166
                                              (let ((__tmp127167
                                                     (let ((__tmp127168
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k121462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp121444_ __tmp127168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp127167))))
                                         (declare (not safe))
                                         (cons __tmp127166 '()))))
                                  (declare (not safe))
                                  (cons _id121463_ __tmp127165))))
                           (declare (not safe))
                           (cons 'set! __tmp127164))))
                    (declare (not safe))
                    (cons __tmp127163 _r121447_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd121448121455_))
                                                      (let ((_hd121452121468_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd121448121455_)))
                    (_tl121453121470_
                     (let () (declare (not safe)) (##cdr _hd121448121455_))))
                (let* ((_id121473_ _hd121452121468_)
                       (_k121475_ _tl121453121470_))
                  (declare (not safe))
                  (_K121451121465_ _k121475_ _id121473_)))
              (let () (declare (not safe)) (_E121450121459_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp127162
                                                 _bind121417_
                                                 _init121442_))))
                                  (declare (not safe))
                                  (_lp121413_
                                   _rest121441_
                                   __tmp127169
                                   __tmp127161)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest121418121430_))
                            (let ((_hd121423121480_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest121418121430_)))
                                  (_tl121424121482_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest121418121430_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd121423121480_))
                                  (let ((_hd121425121485_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd121423121480_)))
                                        (_tl121426121487_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd121423121480_))))
                                    (let ((_tmp121490_ _hd121425121485_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl121426121487_))
                                          (let ((_hd121427121492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl121426121487_)))
                                                (_tl121428121494_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl121426121487_))))
                                            (let* ((_len121497_
                                                    _hd121427121492_)
                                                   (_init121499_
                                                    _tl121428121494_)
                                                   (_rest121501_
                                                    _tl121424121482_))
                                              (declare (not safe))
                                              (_K121422121477_
                                               _rest121501_
                                               _init121499_
                                               _len121497_
                                               _tmp121490_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else121420121438_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else121420121438_))))
                            (let ()
                              (declare (not safe))
                              (_else121420121438_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx121402_
             _compile-simple121404_
             _compile-values121405_)))))
    (define __compile-letrec*-values%
      (lambda (_stx121157_)
        (letrec ((_compile-simple121159_
                  (lambda (_hd-ids121398_ _exprs121399_ _body121400_)
                    (let ((__tmp127174
                           (let ((__tmp127175
                                  (let ((__tmp127177
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids121398_)
                                              _exprs121399_))
                                        (__tmp127176
                                         (let ()
                                           (declare (not safe))
                                           (cons _body121400_ '()))))
                                    (declare (not safe))
                                    (cons __tmp127177 __tmp127176))))
                             (declare (not safe))
                             (cons 'letrec* __tmp127175))))
                      (declare (not safe))
                      (__SRC__% __tmp127174 _stx121157_))))
                 (_compile-values121160_
                  (lambda (_hd-ids121309_ _exprs121310_ _body121311_)
                    (let _lp121313_ ((_rest121315_ _hd-ids121309_)
                                     (_exprs121316_ _exprs121310_)
                                     (_bind121317_ '())
                                     (_post121318_ '()))
                      (let* ((_rest121319121333_ _rest121315_)
                             (_else121322121341_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind121161_
                                   _bind121317_
                                   _post121318_
                                   _body121311_)))))
                        (let ((_K121327121381_
                               (lambda (_rest121376_ _hd121377_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd121377_))
                                     (let ((_id121379_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd121377_))))
                                       (let ((__tmp127192 (cdr _exprs121316_))
                                             (__tmp127187
                                              (let ((__tmp127188
                                                     (let ((__tmp127189
                                                            (let ((__tmp127190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127191
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp127191))))
                      (declare (not safe))
                      (cons __tmp127190 '()))))
               (declare (not safe))
               (cons _id121379_ __tmp127189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127188
                                                      _bind121317_)))
                                             (__tmp127183
                                              (let ((__tmp127184
                                                     (let ((__tmp127185
                                                            (let ((__tmp127186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs121316_)))
                      (declare (not safe))
                      (cons __tmp127186 '()))))
               (declare (not safe))
               (cons _id121379_ __tmp127185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127184
                                                      _post121318_))))
                                         (declare (not safe))
                                         (_lp121313_
                                          _rest121376_
                                          __tmp127192
                                          __tmp127187
                                          __tmp127183)))
                                     (let ((__tmp127182 (cdr _exprs121316_))
                                           (__tmp127178
                                            (let ((__tmp127179
                                                   (let ((__tmp127180
                                                          (let ((__tmp127181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs121316_)))
                    (declare (not safe))
                    (cons __tmp127181 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp127180))))
                                              (declare (not safe))
                                              (cons __tmp127179
                                                    _post121318_))))
                                       (declare (not safe))
                                       (_lp121313_
                                        _rest121376_
                                        __tmp127182
                                        _bind121317_
                                        __tmp127178)))))
                              (_K121324121361_
                               (lambda (_rest121345_ _hd121346_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd121346_))
                                     (let ((_id121348_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd121346_))))
                                       (let ((__tmp127228 (cdr _exprs121316_))
                                             (__tmp127223
                                              (let ((__tmp127224
                                                     (let ((__tmp127225
                                                            (let ((__tmp127226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127227
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp127227))))
                      (declare (not safe))
                      (cons __tmp127226 '()))))
               (declare (not safe))
               (cons _id121348_ __tmp127225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127224
                                                      _bind121317_)))
                                             (__tmp127217
                                              (let ((__tmp127218
                                                     (let ((__tmp127219
                                                            (let ((__tmp127220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp127221
                                  (let ((__tmp127222 (car _exprs121316_)))
                                    (declare (not safe))
                                    (cons __tmp127222 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp127221))))
                      (declare (not safe))
                      (cons __tmp127220 '()))))
               (declare (not safe))
               (cons _id121348_ __tmp127219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp127218
                                                      _post121318_))))
                                         (declare (not safe))
                                         (_lp121313_
                                          _rest121345_
                                          __tmp127228
                                          __tmp127223
                                          __tmp127217)))
                                     (if (let ((__tmp127216
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd121346_))))
                                           (declare (not safe))
                                           (not __tmp127216))
                                         (let ((__tmp127215
                                                (cdr _exprs121316_))
                                               (__tmp127211
                                                (let ((__tmp127212
                                                       (let ((__tmp127213
                                                              (let ((__tmp127214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs121316_)))
                        (declare (not safe))
                        (cons __tmp127214 '()))))
                 (declare (not safe))
                 (cons '#f __tmp127213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp127212
                                                        _post121318_))))
                                           (declare (not safe))
                                           (_lp121313_
                                            _rest121345_
                                            __tmp127215
                                            _bind121317_
                                            __tmp127211))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd121346_))
                                             (let* ((_len121350_
                                                     (length _hd121346_))
                                                    (_tmp121352_
                                                     (let ((__tmp127193
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp127193))))
                                               (let ((__tmp127210
                                                      (cdr _exprs121316_))
                                                     (__tmp127203
                                                      (let ((__tmp127204
                                                             (lambda (_id121355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r121356_)
                       (if (let () (declare (not safe)) (__AST-e _id121355_))
                           (let ((__tmp127205
                                  (let ((__tmp127209
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id121355_)))
                                        (__tmp127206
                                         (let ((__tmp127207
                                                (let ((__tmp127208
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp127208))))
                                           (declare (not safe))
                                           (cons __tmp127207 '()))))
                                    (declare (not safe))
                                    (cons __tmp127209 __tmp127206))))
                             (declare (not safe))
                             (cons __tmp127205 _r121356_))
                           _r121356_))))
                (declare (not safe))
                (foldl1 __tmp127204 _bind121317_ _hd121346_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp127194
                                                      (let ((__tmp127195
                                                             (let ((__tmp127196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127202 (car _exprs121316_))
                                  (__tmp127197
                                   (let ((__tmp127198
                                          (let ((__tmp127200
                                                 (lambda (_id121358_ _k121359_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id121358_))
                                                       (let ((__tmp127201
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id121358_))))
                 (declare (not safe))
                 (cons __tmp127201 _k121359_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp127199
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len121350_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp127200
                                             _hd121346_
                                             __tmp127199))))
                                     (declare (not safe))
                                     (cons _len121350_ __tmp127198))))
                              (declare (not safe))
                              (cons __tmp127202 __tmp127197))))
                       (declare (not safe))
                       (cons _tmp121352_ __tmp127196))))
                (declare (not safe))
                (cons __tmp127195 _post121318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp121313_
                                                  _rest121345_
                                                  __tmp127210
                                                  __tmp127203
                                                  __tmp127194)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx121157_
                                                _hd121346_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121319121333_))
                              (let ((_tl121329121386_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121319121333_)))
                                    (_hd121328121384_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121319121333_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd121328121384_))
                                    (let ((_tl121331121391_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd121328121384_)))
                                          (_hd121330121389_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd121328121384_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl121331121391_))
                                          (let ((_hd121394_ _hd121330121389_)
                                                (_rest121396_
                                                 _tl121329121386_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121327121381_
                                               _rest121396_
                                               _hd121394_)))
                                          (let ((_hd121369_ _hd121328121384_)
                                                (_rest121371_
                                                 _tl121329121386_))
                                            (let ()
                                              (declare (not safe))
                                              (_K121324121361_
                                               _rest121371_
                                               _hd121369_)))))
                                    (let ((_hd121369_ _hd121328121384_)
                                          (_rest121371_ _tl121329121386_))
                                      (let ()
                                        (declare (not safe))
                                        (_K121324121361_
                                         _rest121371_
                                         _hd121369_)))))
                              (let ()
                                (declare (not safe))
                                (_else121322121341_))))))))
                 (_compile-bind121161_
                  (lambda (_bind121305_ _post121306_ _body121307_)
                    (let ((__tmp127229
                           (let ((__tmp127230
                                  (let ((__tmp127233 (reverse _bind121305_))
                                        (__tmp127231
                                         (let ((__tmp127232
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post121162_
                                                   _post121306_
                                                   _body121307_))))
                                           (declare (not safe))
                                           (cons __tmp127232 '()))))
                                    (declare (not safe))
                                    (cons __tmp127233 __tmp127231))))
                             (declare (not safe))
                             (cons 'let __tmp127230))))
                      (declare (not safe))
                      (__SRC__% __tmp127229 _stx121157_))))
                 (_compile-post121162_
                  (lambda (_post121164_ _body121165_)
                    (let ((__tmp127234
                           (let ((__tmp127235
                                  (let ((__tmp127236
                                         (let ((__tmp127238
                                                (lambda (_hd121167_ _r121168_)
                                                  (let* ((_hd121169121192_
                                                          _hd121167_)
                                                         (_E121173121196_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd121169121192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K121186121290_
                                                           (lambda (_expr121288_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr121288_ _r121168_))))
                  (_K121181121268_
                   (lambda (_expr121265_ _id121266_)
                     (let ((__tmp127239
                            (let ((__tmp127240
                                   (let ((__tmp127241
                                          (let ((__tmp127242
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr121265_ '()))))
                                            (declare (not safe))
                                            (cons _id121266_ __tmp127242))))
                                     (declare (not safe))
                                     (cons 'set! __tmp127241))))
                              (declare (not safe))
                              (__SRC__% __tmp127240 _stx121157_))))
                       (declare (not safe))
                       (cons __tmp127239 _r121168_))))
                  (_K121174121235_
                   (lambda (_init121200_ _len121201_ _expr121202_ _tmp121203_)
                     (let ((__tmp127243
                            (let ((__tmp127244
                                   (let ((__tmp127245
                                          (let ((__tmp127259
                                                 (let ((__tmp127260
                                                        (let ((__tmp127261
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr121202_ '()))))
                  (declare (not safe))
                  (cons _tmp121203_ __tmp127261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127260 '())))
                                                (__tmp127246
                                                 (let ((__tmp127255
                                                        (let ((__tmp127256
                                                               (let ((__tmp127257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp127258
                                     (let ()
                                       (declare (not safe))
                                       (cons _len121201_ '()))))
                                (declare (not safe))
                                (cons _tmp121203_ __tmp127258))))
                         (declare (not safe))
                         (cons '__check-values __tmp127257))))
                  (declare (not safe))
                  (__SRC__% __tmp127256 _stx121157_)))
               (__tmp127247
                (let ((__tmp127248
                       (map (lambda (_hd121205_)
                              (let* ((_hd121206121213_ _hd121205_)
                                     (_E121208121217_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd121206121213_)))
                                     (_K121209121223_
                                      (lambda (_k121220_ _id121221_)
                                        (let ((__tmp127249
                                               (let ((__tmp127250
                                                      (let ((__tmp127251
                                                             (let ((__tmp127252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127253
                                   (let ((__tmp127254
                                          (let ()
                                            (declare (not safe))
                                            (cons _k121220_ '()))))
                                     (declare (not safe))
                                     (cons _tmp121203_ __tmp127254))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp127253))))
                       (declare (not safe))
                       (cons __tmp127252 '()))))
                (declare (not safe))
                (cons _id121221_ __tmp127251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp127250))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp127249
                                           _stx121157_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd121206121213_))
                                    (let ((_hd121210121226_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd121206121213_)))
                                          (_tl121211121228_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd121206121213_))))
                                      (let* ((_id121231_ _hd121210121226_)
                                             (_k121233_ _tl121211121228_))
                                        (declare (not safe))
                                        (_K121209121223_
                                         _k121233_
                                         _id121231_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E121208121217_)))))
                            _init121200_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp127248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127255
                                                         __tmp127247))))
                                            (declare (not safe))
                                            (cons __tmp127259 __tmp127246))))
                                     (declare (not safe))
                                     (cons 'let __tmp127245))))
                              (declare (not safe))
                              (__SRC__% __tmp127244 _stx121157_))))
                       (declare (not safe))
                       (cons __tmp127243 _r121168_)))))
              (if (let () (declare (not safe)) (##pair? _hd121169121192_))
                  (let ((_tl121188121295_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd121169121192_)))
                        (_hd121187121293_
                         (let ()
                           (declare (not safe))
                           (##car _hd121169121192_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd121187121293_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl121188121295_))
                            (let ((_tl121190121300_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl121188121295_)))
                                  (_hd121189121298_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl121188121295_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl121190121300_))
                                  (let ((_expr121303_ _hd121189121298_))
                                    (declare (not safe))
                                    (_K121186121290_ _expr121303_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl121190121300_))
                                      (let ((_tl121180121254_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl121190121300_)))
                                            (_hd121179121252_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl121190121300_))))
                                        (let ((_tmp121243_ _hd121187121293_)
                                              (_expr121250_ _hd121189121298_)
                                              (_len121257_ _hd121179121252_)
                                              (_init121259_ _tl121180121254_))
                                          (let ()
                                            (declare (not safe))
                                            (_K121174121235_
                                             _init121259_
                                             _len121257_
                                             _expr121250_
                                             _tmp121243_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E121173121196_)))))
                            (let () (declare (not safe)) (_E121173121196_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl121188121295_))
                            (let ((_tl121185121280_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl121188121295_)))
                                  (_hd121184121278_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl121188121295_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl121185121280_))
                                  (let ((_id121276_ _hd121187121293_)
                                        (_expr121283_ _hd121184121278_))
                                    (let ()
                                      (declare (not safe))
                                      (_K121181121268_
                                       _expr121283_
                                       _id121276_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl121185121280_))
                                      (let ((_tl121180121254_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl121185121280_)))
                                            (_hd121179121252_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl121185121280_))))
                                        (let ((_tmp121243_ _hd121187121293_)
                                              (_expr121250_ _hd121184121278_)
                                              (_len121257_ _hd121179121252_)
                                              (_init121259_ _tl121180121254_))
                                          (let ()
                                            (declare (not safe))
                                            (_K121174121235_
                                             _init121259_
                                             _len121257_
                                             _expr121250_
                                             _tmp121243_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E121173121196_)))))
                            (let () (declare (not safe)) (_E121173121196_)))))
                  (let () (declare (not safe)) (_E121173121196_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp127237
                                                (list _body121165_)))
                                           (declare (not safe))
                                           (foldl1 __tmp127238
                                                   __tmp127237
                                                   _post121164_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp127236))))
                             (declare (not safe))
                             (cons 'begin __tmp127235))))
                      (declare (not safe))
                      (__SRC__% __tmp127234 _stx121157_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx121157_
             _compile-simple121159_
             _compile-values121160_)))))
    (define __compile-call%
      (lambda (_stx121117_)
        (let* ((_$e121119_ _stx121117_)
               (_$E121121121130_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121119_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121119_))
              (let* ((_$tgt121122121133_
                      (let () (declare (not safe)) (__AST-e _$e121119_)))
                     (_$hd121123121136_
                      (let () (declare (not safe)) (##car _$tgt121122121133_)))
                     (_$tl121124121139_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121122121133_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121124121139_))
                    (let* ((_$tgt121125121143_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121124121139_)))
                           (_$hd121126121146_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121125121143_)))
                           (_$tl121127121149_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121125121143_))))
                      (let* ((_rator121153_ _$hd121126121146_)
                             (_rands121155_ _$tl121127121149_)
                             (__tmp127262
                              (let ((__tmp127264
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator121153_)))
                                    (__tmp127263
                                     (map __compile _rands121155_)))
                                (declare (not safe))
                                (cons __tmp127264 __tmp127263))))
                        (declare (not safe))
                        (__SRC__% __tmp127262 _stx121117_)))
                    (let () (declare (not safe)) (_$E121121121130_))))
              (let () (declare (not safe)) (_$E121121121130_))))))
    (define __compile-ref%
      (lambda (_stx121079_)
        (let* ((_$e121081_ _stx121079_)
               (_$E121083121092_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121081_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121081_))
              (let* ((_$tgt121084121095_
                      (let () (declare (not safe)) (__AST-e _$e121081_)))
                     (_$hd121085121098_
                      (let () (declare (not safe)) (##car _$tgt121084121095_)))
                     (_$tl121086121101_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121084121095_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121086121101_))
                    (let* ((_$tgt121087121105_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121086121101_)))
                           (_$hd121088121108_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121087121105_)))
                           (_$tl121089121111_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121087121105_))))
                      (let ((_id121115_ _$hd121088121108_))
                        (if (let ((__tmp127265
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl121089121111_))))
                              (declare (not safe))
                              (equal? __tmp127265 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id121115_ _stx121079_))
                            (let () (declare (not safe)) (_$E121083121092_)))))
                    (let () (declare (not safe)) (_$E121083121092_))))
              (let () (declare (not safe)) (_$E121083121092_))))))
    (define __compile-setq%
      (lambda (_stx121026_)
        (let* ((_$e121028_ _stx121026_)
               (_$E121030121042_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121028_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121028_))
              (let* ((_$tgt121031121045_
                      (let () (declare (not safe)) (__AST-e _$e121028_)))
                     (_$hd121032121048_
                      (let () (declare (not safe)) (##car _$tgt121031121045_)))
                     (_$tl121033121051_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121031121045_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl121033121051_))
                    (let* ((_$tgt121034121055_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl121033121051_)))
                           (_$hd121035121058_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt121034121055_)))
                           (_$tl121036121061_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt121034121055_))))
                      (let ((_id121065_ _$hd121035121058_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl121036121061_))
                            (let* ((_$tgt121037121067_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl121036121061_)))
                                   (_$hd121038121070_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt121037121067_)))
                                   (_$tl121039121073_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt121037121067_))))
                              (let ((_expr121077_ _$hd121038121070_))
                                (if (let ((__tmp127271
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl121039121073_))))
                                      (declare (not safe))
                                      (equal? __tmp127271 '()))
                                    (let ((__tmp127266
                                           (let ((__tmp127267
                                                  (let ((__tmp127270
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id121065_
                                                            _stx121026_)))
                                                        (__tmp127268
                                                         (let ((__tmp127269
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr121077_))))
                   (declare (not safe))
                   (cons __tmp127269 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127270
                                                          __tmp127268))))
                                             (declare (not safe))
                                             (cons 'set! __tmp127267))))
                                      (declare (not safe))
                                      (__SRC__% __tmp127266 _stx121026_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E121030121042_)))))
                            (let () (declare (not safe)) (_$E121030121042_)))))
                    (let () (declare (not safe)) (_$E121030121042_))))
              (let () (declare (not safe)) (_$E121030121042_))))))
    (define __compile-if%
      (lambda (_stx120958_)
        (let* ((_$e120960_ _stx120958_)
               (_$E120962120977_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120960_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120960_))
              (let* ((_$tgt120963120980_
                      (let () (declare (not safe)) (__AST-e _$e120960_)))
                     (_$hd120964120983_
                      (let () (declare (not safe)) (##car _$tgt120963120980_)))
                     (_$tl120965120986_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120963120980_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120965120986_))
                    (let* ((_$tgt120966120990_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120965120986_)))
                           (_$hd120967120993_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120966120990_)))
                           (_$tl120968120996_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120966120990_))))
                      (let ((_p121000_ _$hd120967120993_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120968120996_))
                            (let* ((_$tgt120969121002_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120968120996_)))
                                   (_$hd120970121005_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120969121002_)))
                                   (_$tl120971121008_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120969121002_))))
                              (let ((_t121012_ _$hd120970121005_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl120971121008_))
                                    (let* ((_$tgt120972121014_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl120971121008_)))
                                           (_$hd120973121017_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt120972121014_)))
                                           (_$tl120974121020_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt120972121014_))))
                                      (let ((_f121024_ _$hd120973121017_))
                                        (if (let ((__tmp127279
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl120974121020_))))
                                              (declare (not safe))
                                              (equal? __tmp127279 '()))
                                            (let ((__tmp127272
                                                   (let ((__tmp127273
                                                          (let ((__tmp127278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p121000_)))
                        (__tmp127274
                         (let ((__tmp127277
                                (let ()
                                  (declare (not safe))
                                  (__compile _t121012_)))
                               (__tmp127275
                                (let ((__tmp127276
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f121024_))))
                                  (declare (not safe))
                                  (cons __tmp127276 '()))))
                           (declare (not safe))
                           (cons __tmp127277 __tmp127275))))
                    (declare (not safe))
                    (cons __tmp127278 __tmp127274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp127273))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp127272
                                               _stx120958_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E120962120977_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E120962120977_)))))
                            (let () (declare (not safe)) (_$E120962120977_)))))
                    (let () (declare (not safe)) (_$E120962120977_))))
              (let () (declare (not safe)) (_$E120962120977_))))))
    (define __compile-quote%
      (lambda (_stx120920_)
        (let* ((_$e120922_ _stx120920_)
               (_$E120924120933_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120922_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120922_))
              (let* ((_$tgt120925120936_
                      (let () (declare (not safe)) (__AST-e _$e120922_)))
                     (_$hd120926120939_
                      (let () (declare (not safe)) (##car _$tgt120925120936_)))
                     (_$tl120927120942_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120925120936_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120927120942_))
                    (let* ((_$tgt120928120946_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120927120942_)))
                           (_$hd120929120949_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120928120946_)))
                           (_$tl120930120952_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120928120946_))))
                      (let ((_e120956_ _$hd120929120949_))
                        (if (let ((__tmp127283
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl120930120952_))))
                              (declare (not safe))
                              (equal? __tmp127283 '()))
                            (let ((__tmp127280
                                   (let ((__tmp127281
                                          (let ((__tmp127282
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e120956_))))
                                            (declare (not safe))
                                            (cons __tmp127282 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp127281))))
                              (declare (not safe))
                              (__SRC__% __tmp127280 _stx120920_))
                            (let () (declare (not safe)) (_$E120924120933_)))))
                    (let () (declare (not safe)) (_$E120924120933_))))
              (let () (declare (not safe)) (_$E120924120933_))))))
    (define __compile-quote-syntax%
      (lambda (_stx120882_)
        (let* ((_$e120884_ _stx120882_)
               (_$E120886120895_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120884_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120884_))
              (let* ((_$tgt120887120898_
                      (let () (declare (not safe)) (__AST-e _$e120884_)))
                     (_$hd120888120901_
                      (let () (declare (not safe)) (##car _$tgt120887120898_)))
                     (_$tl120889120904_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120887120898_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120889120904_))
                    (let* ((_$tgt120890120908_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120889120904_)))
                           (_$hd120891120911_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120890120908_)))
                           (_$tl120892120914_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120890120908_))))
                      (let ((_e120918_ _$hd120891120911_))
                        (if (let ((__tmp127286
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl120892120914_))))
                              (declare (not safe))
                              (equal? __tmp127286 '()))
                            (let ((__tmp127284
                                   (let ((__tmp127285
                                          (let ()
                                            (declare (not safe))
                                            (cons _e120918_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp127285))))
                              (declare (not safe))
                              (__SRC__% __tmp127284 _stx120882_))
                            (let () (declare (not safe)) (_$E120886120895_)))))
                    (let () (declare (not safe)) (_$E120886120895_))))
              (let () (declare (not safe)) (_$E120886120895_))))))
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
