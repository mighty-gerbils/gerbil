(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1709213449)
  (begin
    (define __syntax::t
      (let ((__tmp77855 (list))
            (__tmp77853
             (let ((__tmp77854
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77854 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77855
         '(e id)
         __tmp77853
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77664_ (apply make-instance __syntax::t _$args77664_)))
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
      (let ((__tmp77858 (list __syntax::t))
            (__tmp77856
             (let ((__tmp77857
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77857 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77858
         '()
         __tmp77856
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77661_ (apply make-instance __core-form::t _$args77661_)))
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
      (let ((__tmp77861 (list __core-form::t))
            (__tmp77859
             (let ((__tmp77860
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77860 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77861
         '()
         __tmp77859
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77658_
        (apply make-instance __core-expression::t _$args77658_)))
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
      (let ((__tmp77864 (list __core-form::t))
            (__tmp77862
             (let ((__tmp77863
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77863 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77864
         '()
         __tmp77862
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77655_
        (apply make-instance __core-special-form::t _$args77655_)))
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
      (lambda (_id77653_)
        (let ((__tmp77865 (let () (declare (not safe)) (__AST-e _id77653_))))
          (declare (not safe))
          (hash-get __core __tmp77865))))
    (define __core-bound-id?__%
      (lambda (_id77637_ _is?77638_)
        (let ((_$e77640_
               (let () (declare (not safe)) (__core-resolve _id77637_))))
          (if _$e77640_ (_is?77638_ _$e77640_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77646_)
        (let ((_is?77648_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77646_ _is?77648_))))
    (define __core-bound-id?
      (lambda _g77867_
        (let ((_g77866_ (let () (declare (not safe)) (##length _g77867_))))
          (cond ((let () (declare (not safe)) (##fx= _g77866_ 1))
                 (apply (lambda (_id77646_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77646_)))
                        _g77867_))
                ((let () (declare (not safe)) (##fx= _g77866_ 2))
                 (apply (lambda (_id77650_ _is?77651_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77650_ _is?77651_)))
                        _g77867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77867_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77620_ _e77621_ _make77622_)
        (let ((__tmp77868
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77621_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77621_
                   (_make77622_ _e77621_ _id77620_))))
          (declare (not safe))
          (hash-put! __core _id77620_ __tmp77868))))
    (define __core-bind-syntax!__0
      (lambda (_id77627_ _e77628_)
        (let ((_make77630_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77627_ _e77628_ _make77630_))))
    (define __core-bind-syntax!
      (lambda _g77870_
        (let ((_g77869_ (let () (declare (not safe)) (##length _g77870_))))
          (cond ((let () (declare (not safe)) (##fx= _g77869_ 2))
                 (apply (lambda (_id77627_ _e77628_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77627_ _e77628_)))
                        _g77870_))
                ((let () (declare (not safe)) (##fx= _g77869_ 3))
                 (apply (lambda (_id77632_ _e77633_ _make77634_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77632_
                             _e77633_
                             _make77634_)))
                        _g77870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77870_))))))
    (define __SRC__%
      (lambda (_e77603_ _src-stx77604_)
        (if (or (let () (declare (not safe)) (pair? _e77603_))
                (let () (declare (not safe)) (symbol? _e77603_)))
            (let ((__tmp77874
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77604_
                          'gerbil#AST::t))
                       (let ((__tmp77875
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77604_))))
                         (declare (not safe))
                         (__locat __tmp77875))
                       '#f)))
              (declare (not safe))
              (##make-source _e77603_ __tmp77874))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77603_ 'gerbil#AST::t))
                (let ((__tmp77873
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77603_ '1 AST::t '#f)))
                      (__tmp77871
                       (let ((__tmp77872
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77603_))))
                         (declare (not safe))
                         (__locat __tmp77872))))
                  (declare (not safe))
                  (##make-source __tmp77873 __tmp77871))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77603_))))))
    (define __SRC__0
      (lambda (_e77612_)
        (let ((_src-stx77614_ '#f))
          (declare (not safe))
          (__SRC__% _e77612_ _src-stx77614_))))
    (define __SRC
      (lambda _g77877_
        (let ((_g77876_ (let () (declare (not safe)) (##length _g77877_))))
          (cond ((let () (declare (not safe)) (##fx= _g77876_ 1))
                 (apply (lambda (_e77612_)
                          (let () (declare (not safe)) (__SRC__0 _e77612_)))
                        _g77877_))
                ((let () (declare (not safe)) (##fx= _g77876_ 2))
                 (apply (lambda (_e77616_ _src-stx77617_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77616_ _src-stx77617_)))
                        _g77877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77877_))))))
    (define __locat
      (lambda (_loc77600_)
        (if (let () (declare (not safe)) (##locat? _loc77600_))
            _loc77600_
            '#f)))
    (define __check-values
      (lambda (_obj77595_ _k77596_)
        (let ((_count77598_
               (if (let () (declare (not safe)) (##values? _obj77595_))
                   (let () (declare (not safe)) (##vector-length _obj77595_))
                   '1)))
          (if (fx= _count77598_ _k77596_)
              '#!void
              (let ((__tmp77879
                     (if (fx< _count77598_ _k77596_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77878
                     (if (let () (declare (not safe)) (##values? _obj77595_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77595_))
                         _obj77595_)))
                (declare (not safe))
                (error __tmp77879 __tmp77878 _k77596_))))))
    (define __compile
      (lambda (_stx77565_)
        (let* ((_$e77567_ _stx77565_)
               (_$E7756977575_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77567_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77567_))
              (let* ((_$tgt7757077578_
                      (let () (declare (not safe)) (__AST-e _$e77567_)))
                     (_$hd7757177581_
                      (let () (declare (not safe)) (##car _$tgt7757077578_)))
                     (_$tl7757277584_
                      (let () (declare (not safe)) (##cdr _$tgt7757077578_))))
                (let* ((_form77588_ _$hd7757177581_)
                       (_$e77590_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77588_))))
                  (if _$e77590_
                      ((lambda (_bind77593_)
                         ((##structure-ref _bind77593_ '1 __syntax::t '#f)
                          _stx77565_))
                       _$e77590_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77565_
                         _form77588_)))))
              (let () (declare (not safe)) (_$E7756977575_))))))
    (define __compile-error__%
      (lambda (_stx77552_ _detail77553_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77552_
           _detail77553_))))
    (define __compile-error__0
      (lambda (_stx77558_)
        (let ((_detail77560_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77558_ _detail77560_))))
    (define __compile-error
      (lambda _g77881_
        (let ((_g77880_ (let () (declare (not safe)) (##length _g77881_))))
          (cond ((let () (declare (not safe)) (##fx= _g77880_ 1))
                 (apply (lambda (_stx77558_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77558_)))
                        _g77881_))
                ((let () (declare (not safe)) (##fx= _g77880_ 2))
                 (apply (lambda (_stx77562_ _detail77563_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77562_ _detail77563_)))
                        _g77881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77881_))))))
    (define __compile-ignore%
      (lambda (_stx77549_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77549_))))
    (define __compile-begin%
      (lambda (_stx77524_)
        (let* ((_$e77526_ _stx77524_)
               (_$E7752877534_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77526_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77526_))
              (let* ((_$tgt7752977537_
                      (let () (declare (not safe)) (__AST-e _$e77526_)))
                     (_$hd7753077540_
                      (let () (declare (not safe)) (##car _$tgt7752977537_)))
                     (_$tl7753177543_
                      (let () (declare (not safe)) (##cdr _$tgt7752977537_))))
                (let* ((_body77547_ _$tl7753177543_)
                       (__tmp77882
                        (let ((__tmp77883 (map __compile _body77547_)))
                          (declare (not safe))
                          (cons 'begin __tmp77883))))
                  (declare (not safe))
                  (__SRC__% __tmp77882 _stx77524_)))
              (let () (declare (not safe)) (_$E7752877534_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77499_)
        (let* ((_$e77501_ _stx77499_)
               (_$E7750377509_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77501_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77501_))
              (let* ((_$tgt7750477512_
                      (let () (declare (not safe)) (__AST-e _$e77501_)))
                     (_$hd7750577515_
                      (let () (declare (not safe)) (##car _$tgt7750477512_)))
                     (_$tl7750677518_
                      (let () (declare (not safe)) (##cdr _$tgt7750477512_))))
                (let* ((_body77522_ _$tl7750677518_)
                       (__tmp77884
                        (let ((__tmp77885
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body77522_))))
                          (declare (not safe))
                          (cons 'begin __tmp77885))))
                  (declare (not safe))
                  (__SRC__% __tmp77884 _stx77499_)))
              (let () (declare (not safe)) (_$E7750377509_))))))
    (define __compile-import%
      (lambda (_stx77474_)
        (let* ((_$e77476_ _stx77474_)
               (_$E7747877484_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77476_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77476_))
              (let* ((_$tgt7747977487_
                      (let () (declare (not safe)) (__AST-e _$e77476_)))
                     (_$hd7748077490_
                      (let () (declare (not safe)) (##car _$tgt7747977487_)))
                     (_$tl7748177493_
                      (let () (declare (not safe)) (##cdr _$tgt7747977487_))))
                (let* ((_body77497_ _$tl7748177493_)
                       (__tmp77886
                        (let ((__tmp77887
                               (let ((__tmp77888
                                      (let ((__tmp77889
                                             (let ()
                                               (declare (not safe))
                                               (cons _body77497_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp77889))))
                                 (declare (not safe))
                                 (cons __tmp77888 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp77887))))
                  (declare (not safe))
                  (__SRC__% __tmp77886 _stx77474_)))
              (let () (declare (not safe)) (_$E7747877484_))))))
    (define __compile-begin-annotation%
      (lambda (_stx77421_)
        (let* ((_$e77423_ _stx77421_)
               (_$E7742577437_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77423_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77423_))
              (let* ((_$tgt7742677440_
                      (let () (declare (not safe)) (__AST-e _$e77423_)))
                     (_$hd7742777443_
                      (let () (declare (not safe)) (##car _$tgt7742677440_)))
                     (_$tl7742877446_
                      (let () (declare (not safe)) (##cdr _$tgt7742677440_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7742877446_))
                    (let* ((_$tgt7742977450_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7742877446_)))
                           (_$hd7743077453_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7742977450_)))
                           (_$tl7743177456_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7742977450_))))
                      (let ((_ann77460_ _$hd7743077453_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7743177456_))
                            (let* ((_$tgt7743277462_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7743177456_)))
                                   (_$hd7743377465_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7743277462_)))
                                   (_$tl7743477468_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7743277462_))))
                              (let ((_expr77472_ _$hd7743377465_))
                                (if (let ((__tmp77890
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7743477468_))))
                                      (declare (not safe))
                                      (equal? __tmp77890 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77472_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7742577437_)))))
                            (let () (declare (not safe)) (_$E7742577437_)))))
                    (let () (declare (not safe)) (_$E7742577437_))))
              (let () (declare (not safe)) (_$E7742577437_))))))
    (define __compile-define-values%
      (lambda (_stx77312_)
        (let* ((_$e77314_ _stx77312_)
               (_$E7731677328_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77314_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77314_))
              (let* ((_$tgt7731777331_
                      (let () (declare (not safe)) (__AST-e _$e77314_)))
                     (_$hd7731877334_
                      (let () (declare (not safe)) (##car _$tgt7731777331_)))
                     (_$tl7731977337_
                      (let () (declare (not safe)) (##cdr _$tgt7731777331_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7731977337_))
                    (let* ((_$tgt7732077341_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7731977337_)))
                           (_$hd7732177344_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7732077341_)))
                           (_$tl7732277347_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7732077341_))))
                      (let ((_hd77351_ _$hd7732177344_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7732277347_))
                            (let* ((_$tgt7732377353_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7732277347_)))
                                   (_$hd7732477356_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7732377353_)))
                                   (_$tl7732577359_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7732377353_))))
                              (let ((_expr77363_ _$hd7732477356_))
                                (if (let ((__tmp77923
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7732577359_))))
                                      (declare (not safe))
                                      (equal? __tmp77923 '()))
                                    (let* ((_$e77365_ _hd77351_)
                                           (_$E7736777408_
                                            (lambda ()
                                              (let ((_$E7736877393_
                                                     (lambda ()
                                                       (let* ((_$E7736977380_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e77365_))))
                      (_ids77383_ _hd77351_)
                      (_len77385_ (length _ids77383_))
                      (_tmp77387_
                       (let ((__tmp77891 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp77891))))
                 (let ((__tmp77892
                        (let ((__tmp77893
                               (let ((__tmp77910
                                      (let ((__tmp77911
                                             (let ((__tmp77912
                                                    (let ((__tmp77913
                                                           (let ((__tmp77914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr77363_))))
                     (declare (not safe))
                     (cons __tmp77914 '()))))
              (declare (not safe))
              (cons _tmp77387_ __tmp77913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp77912))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77911 _stx77312_)))
                                     (__tmp77894
                                      (let ((__tmp77906
                                             (let ((__tmp77907
                                                    (let ((__tmp77908
                                                           (let ((__tmp77909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len77385_ '()))))
                     (declare (not safe))
                     (cons _tmp77387_ __tmp77909))))
              (declare (not safe))
              (cons '__check-values __tmp77908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77907
                                                _stx77312_)))
                                            (__tmp77895
                                             (let ((__tmp77896
                                                    (let ((__tmp77898
                                                           (lambda (_id77390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k77391_)
                     (if (let () (declare (not safe)) (__AST-e _id77390_))
                         (let ((__tmp77899
                                (let ((__tmp77900
                                       (let ((__tmp77905
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id77390_)))
                                             (__tmp77901
                                              (let ((__tmp77902
                                                     (let ((__tmp77903
                                                            (let ((__tmp77904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k77391_ '()))))
                      (declare (not safe))
                      (cons _tmp77387_ __tmp77904))))
               (declare (not safe))
               (cons '##vector-ref __tmp77903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77902 '()))))
                                         (declare (not safe))
                                         (cons __tmp77905 __tmp77901))))
                                  (declare (not safe))
                                  (cons 'define __tmp77900))))
                           (declare (not safe))
                           (__SRC__% __tmp77899 _stx77312_))
                         '#f)))
                  (__tmp77897
                   (let () (declare (not safe)) (iota__0 _len77385_))))
              (declare (not safe))
              (filter-map2 __tmp77898 _ids77383_ __tmp77897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp77896))))
                                        (declare (not safe))
                                        (cons __tmp77906 __tmp77895))))
                                 (declare (not safe))
                                 (cons __tmp77910 __tmp77894))))
                          (declare (not safe))
                          (cons 'begin __tmp77893))))
                   (declare (not safe))
                   (__SRC__% __tmp77892 _stx77312_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e77365_))
                                                    (let* ((_$tgt7737077396_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e77365_)))
                                                           (_$hd7737177399_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7737077396_)))
                                                           (_$tl7737277402_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7737077396_))))
                                                      (let ((_id77406_
                                                             _$hd7737177399_))
                                                        (if (let ((__tmp77920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7737277402_))))
                      (declare (not safe))
                      (equal? __tmp77920 '()))
                    (let ((__tmp77915
                           (let ((__tmp77916
                                  (let ((__tmp77919
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77406_)))
                                        (__tmp77917
                                         (let ((__tmp77918
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr77363_))))
                                           (declare (not safe))
                                           (cons __tmp77918 '()))))
                                    (declare (not safe))
                                    (cons __tmp77919 __tmp77917))))
                             (declare (not safe))
                             (cons 'define __tmp77916))))
                      (declare (not safe))
                      (__SRC__% __tmp77915 _stx77312_))
                    (let () (declare (not safe)) (_$E7736877393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7736877393_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e77365_))
                                          (let* ((_$tgt7737377411_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e77365_)))
                                                 (_$hd7737477414_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7737377411_)))
                                                 (_$tl7737577417_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7737377411_))))
                                            (if (let ((__tmp77922
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7737477414_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77922 '#f))
                                                (if (let ((__tmp77921
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7737577417_))))
                                                      (declare (not safe))
                                                      (equal? __tmp77921 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr77363_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7736777408_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7736777408_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7736777408_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7731677328_)))))
                            (let () (declare (not safe)) (_$E7731677328_)))))
                    (let () (declare (not safe)) (_$E7731677328_))))
              (let () (declare (not safe)) (_$E7731677328_))))))
    (define __compile-head-id
      (lambda (_e77310_)
        (let ((__tmp77924
               (if (let () (declare (not safe)) (__AST-e _e77310_))
                   _e77310_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp77924))))
    (define __compile-lambda-head
      (lambda (_hd77267_)
        (let _recur77269_ ((_rest77271_ _hd77267_))
          (let* ((_$e77273_ _rest77271_)
                 (_$E7727577293_
                  (lambda ()
                    (let ((_$E7727677290_
                           (lambda ()
                             (let* ((_$E7727777285_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e77273_))))
                                    (_tail77288_ _$e77273_))
                               (declare (not safe))
                               (__compile-head-id _tail77288_)))))
                      (if (let ((__tmp77925
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e77273_))))
                            (declare (not safe))
                            (equal? __tmp77925 '()))
                          '()
                          (let () (declare (not safe)) (_$E7727677290_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77273_))
                (let* ((_$tgt7727877296_
                        (let () (declare (not safe)) (__AST-e _$e77273_)))
                       (_$hd7727977299_
                        (let () (declare (not safe)) (##car _$tgt7727877296_)))
                       (_$tl7728077302_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7727877296_))))
                  (let* ((_hd77306_ _$hd7727977299_)
                         (_rest77308_ _$tl7728077302_))
                    (let ((__tmp77927
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd77306_)))
                          (__tmp77926
                           (let ()
                             (declare (not safe))
                             (_recur77269_ _rest77308_))))
                      (declare (not safe))
                      (cons __tmp77927 __tmp77926))))
                (let () (declare (not safe)) (_$E7727577293_)))))))
    (define __compile-lambda%
      (lambda (_stx77214_)
        (let* ((_$e77216_ _stx77214_)
               (_$E7721877230_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77216_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77216_))
              (let* ((_$tgt7721977233_
                      (let () (declare (not safe)) (__AST-e _$e77216_)))
                     (_$hd7722077236_
                      (let () (declare (not safe)) (##car _$tgt7721977233_)))
                     (_$tl7722177239_
                      (let () (declare (not safe)) (##cdr _$tgt7721977233_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7722177239_))
                    (let* ((_$tgt7722277243_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7722177239_)))
                           (_$hd7722377246_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7722277243_)))
                           (_$tl7722477249_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7722277243_))))
                      (let ((_hd77253_ _$hd7722377246_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7722477249_))
                            (let* ((_$tgt7722577255_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7722477249_)))
                                   (_$hd7722677258_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7722577255_)))
                                   (_$tl7722777261_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7722577255_))))
                              (let ((_body77265_ _$hd7722677258_))
                                (if (let ((__tmp77933
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7722777261_))))
                                      (declare (not safe))
                                      (equal? __tmp77933 '()))
                                    (let ((__tmp77928
                                           (let ((__tmp77929
                                                  (let ((__tmp77932
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd77253_)))
                                                        (__tmp77930
                                                         (let ((__tmp77931
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body77265_))))
                   (declare (not safe))
                   (cons __tmp77931 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77932
                                                          __tmp77930))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp77929))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77928 _stx77214_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7721877230_)))))
                            (let () (declare (not safe)) (_$E7721877230_)))))
                    (let () (declare (not safe)) (_$E7721877230_))))
              (let () (declare (not safe)) (_$E7721877230_))))))
    (define __compile-case-lambda%
      (lambda (_stx77006_)
        (letrec ((_variadic?77008_
                  (lambda (_hd77179_)
                    (let* ((_$e77181_ _hd77179_)
                           (_$E7718377199_
                            (lambda ()
                              (let ((_$E7718477196_
                                     (lambda ()
                                       (let ((_$E7718577193_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e77181_)))))
                                         '#t))))
                                (if (let ((__tmp77934
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e77181_))))
                                      (declare (not safe))
                                      (equal? __tmp77934 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7718477196_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77181_))
                          (let* ((_$tgt7718677202_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77181_)))
                                 (_$hd7718777205_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7718677202_)))
                                 (_$tl7718877208_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7718677202_))))
                            (let ((_rest77212_ _$tl7718877208_))
                              (declare (not safe))
                              (_variadic?77008_ _rest77212_)))
                          (let () (declare (not safe)) (_$E7718377199_))))))
                 (_arity77009_
                  (lambda (_hd77144_)
                    (let _lp77146_ ((_rest77148_ _hd77144_) (_k77149_ '0))
                      (let* ((_$e77151_ _rest77148_)
                             (_$E7715377164_
                              (lambda ()
                                (let ((_$E7715477161_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e77151_)))))
                                  _k77149_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e77151_))
                            (let* ((_$tgt7715577167_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e77151_)))
                                   (_$hd7715677170_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7715577167_)))
                                   (_$tl7715777173_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7715577167_))))
                              (let* ((_rest77177_ _$tl7715777173_)
                                     (__tmp77935
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k77149_ '1))))
                                (declare (not safe))
                                (_lp77146_ _rest77177_ __tmp77935)))
                            (let () (declare (not safe)) (_$E7715377164_)))))))
                 (_generate77010_
                  (lambda (_rest77071_ _args77072_ _len77073_)
                    (let* ((_$e77075_ _rest77071_)
                           (_$E7707777088_
                            (lambda ()
                              (let* ((_$E7707877085_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e77075_))))
                                     (__tmp77936
                                      (let ((__tmp77937
                                             (let ((__tmp77938
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args77072_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp77938))))
                                        (declare (not safe))
                                        (cons 'error __tmp77937))))
                                (declare (not safe))
                                (__SRC__% __tmp77936 _stx77006_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77075_))
                          (let* ((_$tgt7707977091_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77075_)))
                                 (_$hd7708077094_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7707977091_)))
                                 (_$tl7708177097_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7707977091_))))
                            (let* ((_clause77101_ _$hd7708077094_)
                                   (_rest77103_ _$tl7708177097_)
                                   (_$e77105_ _clause77101_)
                                   (_$E7710777116_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e77105_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e77105_))
                                  (let* ((_$tgt7710877119_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e77105_)))
                                         (_$hd7710977122_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7710877119_)))
                                         (_$tl7711077125_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7710877119_))))
                                    (let ((_hd77129_ _$hd7710977122_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7711077125_))
                                          (let* ((_$tgt7711177131_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7711077125_)))
                                                 (_$hd7711277134_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7711177131_)))
                                                 (_$tl7711377137_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7711177131_))))
                                            (if (let ((__tmp77953
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7711377137_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77953 '()))
                                                (let ((_clen77141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity77009_
                                                          _hd77129_)))
                                                      (_cmp77142_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?77008_
                                                              _hd77129_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77939
                                                         (let ((__tmp77940
                                                                (let ((__tmp77950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77951
                                      (let ((__tmp77952
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen77141_ '()))))
                                        (declare (not safe))
                                        (cons _len77073_ __tmp77952))))
                                 (declare (not safe))
                                 (cons _cmp77142_ __tmp77951)))
                              (__tmp77941
                               (let ((__tmp77944
                                      (let ((__tmp77945
                                             (let ((__tmp77946
                                                    (let ((__tmp77948
                                                           (let ((__tmp77949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause77101_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp77949)))
                  (__tmp77947
                   (let () (declare (not safe)) (cons _args77072_ '()))))
              (declare (not safe))
              (cons __tmp77948 __tmp77947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp77946))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77945 _stx77006_)))
                                     (__tmp77942
                                      (let ((__tmp77943
                                             (let ()
                                               (declare (not safe))
                                               (_generate77010_
                                                _rest77103_
                                                _args77072_
                                                _len77073_))))
                                        (declare (not safe))
                                        (cons __tmp77943 '()))))
                                 (declare (not safe))
                                 (cons __tmp77944 __tmp77942))))
                          (declare (not safe))
                          (cons __tmp77950 __tmp77941))))
                   (declare (not safe))
                   (cons 'if __tmp77940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77939
                                                     _stx77006_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7710777116_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7710777116_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7710777116_)))))
                          (let () (declare (not safe)) (_$E7707777088_)))))))
          (let* ((_$e77012_ _stx77006_)
                 (_$E7701477046_
                  (lambda ()
                    (let ((_$E7701577028_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e77012_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77012_))
                          (let* ((_$tgt7701677031_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77012_)))
                                 (_$hd7701777034_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7701677031_)))
                                 (_$tl7701877037_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7701677031_))))
                            (let ((_clauses77041_ _$tl7701877037_))
                              (let ((_args77043_
                                     (let ((__tmp77954 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77954 _stx77006_)))
                                    (_len77044_
                                     (let ((__tmp77955 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77955 _stx77006_))))
                                (let ((__tmp77956
                                       (let ((__tmp77957
                                              (let ((__tmp77958
                                                     (let ((__tmp77959
                                                            (let ((__tmp77960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77961
                                  (let ((__tmp77964
                                         (let ((__tmp77965
                                                (let ((__tmp77966
                                                       (let ((__tmp77967
                                                              (let ((__tmp77968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77969
                                    (let ()
                                      (declare (not safe))
                                      (cons _args77043_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp77969))))
                        (declare (not safe))
                        (__SRC__% __tmp77968 _stx77006_))))
                 (declare (not safe))
                 (cons __tmp77967 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len77044_
                                                        __tmp77966))))
                                           (declare (not safe))
                                           (cons __tmp77965 '())))
                                        (__tmp77962
                                         (let ((__tmp77963
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate77010_
                                                   _clauses77041_
                                                   _args77043_
                                                   _len77044_))))
                                           (declare (not safe))
                                           (cons __tmp77963 '()))))
                                    (declare (not safe))
                                    (cons __tmp77964 __tmp77962))))
                             (declare (not safe))
                             (cons 'let __tmp77961))))
                      (declare (not safe))
                      (__SRC__% __tmp77960 _stx77006_))))
               (declare (not safe))
               (cons __tmp77959 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args77043_
                                                      __tmp77958))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp77957))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77956 _stx77006_)))))
                          (let () (declare (not safe)) (_$E7701577028_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77012_))
                (let* ((_$tgt7701977049_
                        (let () (declare (not safe)) (__AST-e _$e77012_)))
                       (_$hd7702077052_
                        (let () (declare (not safe)) (##car _$tgt7701977049_)))
                       (_$tl7702177055_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7701977049_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7702177055_))
                      (let* ((_$tgt7702277059_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7702177055_)))
                             (_$hd7702377062_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7702277059_)))
                             (_$tl7702477065_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7702277059_))))
                        (let ((_clause77069_ _$hd7702377062_))
                          (if (let ((__tmp77971
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7702477065_))))
                                (declare (not safe))
                                (equal? __tmp77971 '()))
                              (let ((__tmp77970
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause77069_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp77970))
                              (let () (declare (not safe)) (_$E7701477046_)))))
                      (let () (declare (not safe)) (_$E7701477046_))))
                (let () (declare (not safe)) (_$E7701477046_)))))))
    (define __compile-let-form
      (lambda (_stx76775_ _compile-simple76776_ _compile-values76777_)
        (letrec ((_simple-bind?76779_
                  (lambda (_hd76964_)
                    (let* ((_hd7696576975_ _hd76964_)
                           (_else7696876983_ (lambda () '#f)))
                      (let ((_K7697176996_ (lambda (_id76994_) '#t))
                            (_K7697076988_ (lambda () '#t)))
                        (let ((_try-match7696776991_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7696576975_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7697076988_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7696876983_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7696576975_))
                              (let ((_tl7697377001_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7696576975_)))
                                    (_hd7697276999_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7696576975_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7697377001_))
                                    (let ((_id77004_ _hd7697276999_))
                                      (declare (not safe))
                                      (_K7697176996_ _id77004_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7696776991_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7696776991_))))))))
                 (_car-e76780_
                  (lambda (_hd76962_)
                    (if (let () (declare (not safe)) (pair? _hd76962_))
                        (car _hd76962_)
                        _hd76962_))))
          (let* ((_$e76782_ _stx76775_)
                 (_$E7678476927_
                  (lambda ()
                    (let ((_$E7678576807_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76782_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76782_))
                          (let* ((_$tgt7678676810_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76782_)))
                                 (_$hd7678776813_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7678676810_)))
                                 (_$tl7678876816_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7678676810_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7678876816_))
                                (let* ((_$tgt7678976820_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7678876816_)))
                                       (_$hd7679076823_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7678976820_)))
                                       (_$tl7679176826_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7678976820_))))
                                  (let ((_hd76830_ _$hd7679076823_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7679176826_))
                                        (let* ((_$tgt7679276832_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7679176826_)))
                                               (_$hd7679376835_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7679276832_)))
                                               (_$tl7679476838_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7679276832_))))
                                          (let ((_body76842_ _$hd7679376835_))
                                            (if (let ((__tmp77974
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7679476838_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77974 '()))
                                                (let* ((_hd-ids76882_
                                                        (map (lambda (_bind76844_)
                                                               (let* ((_$e76846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76844_)
                              (_$E7684876857_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76846_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76846_))
                             (let* ((_$tgt7684976860_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76846_)))
                                    (_$hd7685076863_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7684976860_)))
                                    (_$tl7685176866_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7684976860_))))
                               (let ((_ids76870_ _$hd7685076863_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7685176866_))
                                     (let* ((_$tgt7685276872_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7685176866_)))
                                            (_$hd7685376875_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7685276872_)))
                                            (_$tl7685476878_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7685276872_))))
                                       (if (let ((__tmp77972
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7685476878_))))
                                             (declare (not safe))
                                             (equal? __tmp77972 '()))
                                           _ids76870_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7684876857_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7684876857_)))))
                             (let () (declare (not safe)) (_$E7684876857_)))))
                     _hd76830_))
               (_exprs76922_
                (map (lambda (_bind76884_)
                       (let* ((_$e76886_ _bind76884_)
                              (_$E7688876897_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76886_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76886_))
                             (let* ((_$tgt7688976900_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76886_)))
                                    (_$hd7689076903_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7688976900_)))
                                    (_$tl7689176906_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7688976900_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7689176906_))
                                   (let* ((_$tgt7689276910_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7689176906_)))
                                          (_$hd7689376913_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7689276910_)))
                                          (_$tl7689476916_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7689276910_))))
                                     (let ((_expr76920_ _$hd7689376913_))
                                       (if (let ((__tmp77973
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7689476916_))))
                                             (declare (not safe))
                                             (equal? __tmp77973 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76920_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7688876897_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7688876897_))))
                             (let () (declare (not safe)) (_$E7688876897_)))))
                     _hd76830_))
               (_body76924_
                (let () (declare (not safe)) (__compile _body76842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?76779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids76882_))
              (_compile-simple76776_
               (map _car-e76780_ _hd-ids76882_)
               _exprs76922_
               _body76924_)
              (_compile-values76777_ _hd-ids76882_ _exprs76922_ _body76924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7678576807_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7678576807_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7678576807_))))
                          (let () (declare (not safe)) (_$E7678576807_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76782_))
                (let* ((_$tgt7679576930_
                        (let () (declare (not safe)) (__AST-e _$e76782_)))
                       (_$hd7679676933_
                        (let () (declare (not safe)) (##car _$tgt7679576930_)))
                       (_$tl7679776936_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7679576930_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7679776936_))
                      (let* ((_$tgt7679876940_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7679776936_)))
                             (_$hd7679976943_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7679876940_)))
                             (_$tl7680076946_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7679876940_))))
                        (if (let ((__tmp77976
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7679976943_))))
                              (declare (not safe))
                              (equal? __tmp77976 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7680076946_))
                                (let* ((_$tgt7680176950_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7680076946_)))
                                       (_$hd7680276953_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7680176950_)))
                                       (_$tl7680376956_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7680176950_))))
                                  (let ((_body76960_ _$hd7680276953_))
                                    (if (let ((__tmp77975
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7680376956_))))
                                          (declare (not safe))
                                          (equal? __tmp77975 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76960_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7678476927_)))))
                                (let () (declare (not safe)) (_$E7678476927_)))
                            (let () (declare (not safe)) (_$E7678476927_))))
                      (let () (declare (not safe)) (_$E7678476927_))))
                (let () (declare (not safe)) (_$E7678476927_)))))))
    (define __compile-let-values%
      (lambda (_stx76590_)
        (letrec ((_compile-simple76592_
                  (lambda (_hd-ids76771_ _exprs76772_ _body76773_)
                    (let ((__tmp77977
                           (let ((__tmp77978
                                  (let ((__tmp77980
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76771_)
                                              _exprs76772_))
                                        (__tmp77979
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76773_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77980 __tmp77979))))
                             (declare (not safe))
                             (cons 'let __tmp77978))))
                      (declare (not safe))
                      (__SRC__% __tmp77977 _stx76590_))))
                 (_compile-values76593_
                  (lambda (_hd-ids76689_ _exprs76690_ _body76691_)
                    (let _lp76693_ ((_rest76695_ _hd-ids76689_)
                                    (_exprs76696_ _exprs76690_)
                                    (_bind76697_ '())
                                    (_post76698_ '()))
                      (let* ((_rest7669976713_ _rest76695_)
                             (_else7670276721_
                              (lambda ()
                                (let ((__tmp77981
                                       (let ((__tmp77982
                                              (let ((__tmp77985
                                                     (reverse _bind76697_))
                                                    (__tmp77983
                                                     (let ((__tmp77984
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post76594_
                                                               _post76698_
                                                               _body76691_))))
                                                       (declare (not safe))
                                                       (cons __tmp77984 '()))))
                                                (declare (not safe))
                                                (cons __tmp77985 __tmp77983))))
                                         (declare (not safe))
                                         (cons 'let __tmp77982))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77981 _stx76590_)))))
                        (let ((_K7670776754_
                               (lambda (_rest76751_ _id76752_)
                                 (let ((__tmp77991 (cdr _exprs76696_))
                                       (__tmp77986
                                        (let ((__tmp77987
                                               (let ((__tmp77990
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76752_)))
                                                     (__tmp77988
                                                      (let ((__tmp77989
                                                             (car _exprs76696_)))
                                                        (declare (not safe))
                                                        (cons __tmp77989
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77990
                                                       __tmp77988))))
                                          (declare (not safe))
                                          (cons __tmp77987 _bind76697_))))
                                   (declare (not safe))
                                   (_lp76693_
                                    _rest76751_
                                    __tmp77991
                                    __tmp77986
                                    _post76698_))))
                              (_K7670476736_
                               (lambda (_rest76725_ _hd76726_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76726_))
                                     (let ((__tmp78012 (cdr _exprs76696_))
                                           (__tmp78005
                                            (let ((__tmp78006
                                                   (let ((__tmp78011
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76726_)))
                                                         (__tmp78007
                                                          (let ((__tmp78008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78009
                                (let ((__tmp78010 (car _exprs76696_)))
                                  (declare (not safe))
                                  (cons __tmp78010 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78009))))
                    (declare (not safe))
                    (cons __tmp78008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78011
                                                           __tmp78007))))
                                              (declare (not safe))
                                              (cons __tmp78006 _bind76697_))))
                                       (declare (not safe))
                                       (_lp76693_
                                        _rest76725_
                                        __tmp78012
                                        __tmp78005
                                        _post76698_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76726_))
                                         (let* ((_len76728_ (length _hd76726_))
                                                (_tmp76730_
                                                 (let ((__tmp77992 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77992))))
                                           (let ((__tmp78004
                                                  (cdr _exprs76696_))
                                                 (__tmp78000
                                                  (let ((__tmp78001
                                                         (let ((__tmp78002
                                                                (let ((__tmp78003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76696_)))
                          (declare (not safe))
                          (cons __tmp78003 '()))))
                   (declare (not safe))
                   (cons _tmp76730_ __tmp78002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78001
                                                          _bind76697_)))
                                                 (__tmp77993
                                                  (let ((__tmp77994
                                                         (let ((__tmp77995
                                                                (let ((__tmp77996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77998
                                      (lambda (_id76733_ _k76734_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76733_))
                                            (let ((__tmp77999
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76733_))))
                                              (declare (not safe))
                                              (cons __tmp77999 _k76734_))
                                            '#f)))
                                     (__tmp77997
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76728_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77998
                                  _hd76726_
                                  __tmp77997))))
                          (declare (not safe))
                          (cons _len76728_ __tmp77996))))
                   (declare (not safe))
                   (cons _tmp76730_ __tmp77995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77994
                                                          _post76698_))))
                                             (declare (not safe))
                                             (_lp76693_
                                              _rest76725_
                                              __tmp78004
                                              __tmp78000
                                              __tmp77993)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76590_
                                            _hd76726_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7669976713_))
                              (let ((_tl7670976759_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7669976713_)))
                                    (_hd7670876757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7669976713_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7670876757_))
                                    (let ((_tl7671176764_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7670876757_)))
                                          (_hd7671076762_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7670876757_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7671176764_))
                                          (let ((_id76767_ _hd7671076762_)
                                                (_rest76769_ _tl7670976759_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7670776754_
                                               _rest76769_
                                               _id76767_)))
                                          (let ((_hd76744_ _hd7670876757_)
                                                (_rest76746_ _tl7670976759_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7670476736_
                                               _rest76746_
                                               _hd76744_)))))
                                    (let ((_hd76744_ _hd7670876757_)
                                          (_rest76746_ _tl7670976759_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7670476736_
                                         _rest76746_
                                         _hd76744_)))))
                              (let ()
                                (declare (not safe))
                                (_else7670276721_))))))))
                 (_compile-post76594_
                  (lambda (_post76596_ _body76597_)
                    (let _lp76599_ ((_rest76601_ _post76596_)
                                    (_check76602_ '())
                                    (_bind76603_ '()))
                      (let* ((_rest7660476616_ _rest76601_)
                             (_else7660676624_
                              (lambda ()
                                (let ((__tmp78013
                                       (let ((__tmp78014
                                              (let ((__tmp78015
                                                     (let ((__tmp78016
                                                            (let ((__tmp78017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78018
                                  (let ((__tmp78019
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76597_ '()))))
                                    (declare (not safe))
                                    (cons _bind76603_ __tmp78019))))
                             (declare (not safe))
                             (cons 'let __tmp78018))))
                      (declare (not safe))
                      (__SRC__% __tmp78017 _stx76590_))))
               (declare (not safe))
               (cons __tmp78016 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78015
                                                        _check76602_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78014))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78013 _stx76590_))))
                             (_K7660876663_
                              (lambda (_rest76627_
                                       _init76628_
                                       _len76629_
                                       _tmp76630_)
                                (let ((__tmp78027
                                       (let ((__tmp78028
                                              (let ((__tmp78029
                                                     (let ((__tmp78030
                                                            (let ((__tmp78031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76629_ '()))))
                      (declare (not safe))
                      (cons _tmp76630_ __tmp78031))))
               (declare (not safe))
               (cons '__check-values __tmp78030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78029
                                                 _stx76590_))))
                                         (declare (not safe))
                                         (cons __tmp78028 _check76602_)))
                                      (__tmp78020
                                       (let ((__tmp78021
                                              (lambda (_hd76632_ _r76633_)
                                                (let* ((_hd7663476641_
                                                        _hd76632_)
                                                       (_E7663676645_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7663476641_))))
               (_K7663776651_
                (lambda (_k76648_ _id76649_)
                  (let ((__tmp78022
                         (let ((__tmp78023
                                (let ((__tmp78024
                                       (let ((__tmp78025
                                              (let ((__tmp78026
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k76648_ '()))))
                                                (declare (not safe))
                                                (cons _tmp76630_ __tmp78026))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp78025))))
                                  (declare (not safe))
                                  (cons __tmp78024 '()))))
                           (declare (not safe))
                           (cons _id76649_ __tmp78023))))
                    (declare (not safe))
                    (cons __tmp78022 _r76633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7663476641_))
                                                      (let ((_hd7663876654_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7663476641_)))
                    (_tl7663976656_
                     (let () (declare (not safe)) (##cdr _hd7663476641_))))
                (let* ((_id76659_ _hd7663876654_) (_k76661_ _tl7663976656_))
                  (declare (not safe))
                  (_K7663776651_ _k76661_ _id76659_)))
              (let () (declare (not safe)) (_E7663676645_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78021
                                                 _bind76603_
                                                 _init76628_))))
                                  (declare (not safe))
                                  (_lp76599_
                                   _rest76627_
                                   __tmp78027
                                   __tmp78020)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7660476616_))
                            (let ((_hd7660976666_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7660476616_)))
                                  (_tl7661076668_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7660476616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7660976666_))
                                  (let ((_hd7661176671_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7660976666_)))
                                        (_tl7661276673_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7660976666_))))
                                    (let ((_tmp76676_ _hd7661176671_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7661276673_))
                                          (let ((_hd7661376678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7661276673_)))
                                                (_tl7661476680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7661276673_))))
                                            (let* ((_len76683_ _hd7661376678_)
                                                   (_init76685_ _tl7661476680_)
                                                   (_rest76687_
                                                    _tl7661076668_))
                                              (declare (not safe))
                                              (_K7660876663_
                                               _rest76687_
                                               _init76685_
                                               _len76683_
                                               _tmp76676_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7660676624_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7660676624_))))
                            (let ()
                              (declare (not safe))
                              (_else7660676624_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76590_
             _compile-simple76592_
             _compile-values76593_)))))
    (define __compile-letrec-values%
      (lambda (_stx76390_)
        (letrec ((_compile-simple76392_
                  (lambda (_hd-ids76586_ _exprs76587_ _body76588_)
                    (let ((__tmp78032
                           (let ((__tmp78033
                                  (let ((__tmp78035
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76586_)
                                              _exprs76587_))
                                        (__tmp78034
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76588_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78035 __tmp78034))))
                             (declare (not safe))
                             (cons 'letrec __tmp78033))))
                      (declare (not safe))
                      (__SRC__% __tmp78032 _stx76390_))))
                 (_compile-values76393_
                  (lambda (_hd-ids76500_ _exprs76501_ _body76502_)
                    (let _lp76504_ ((_rest76506_ _hd-ids76500_)
                                    (_exprs76507_ _exprs76501_)
                                    (_pre76508_ '())
                                    (_bind76509_ '())
                                    (_post76510_ '()))
                      (let* ((_rest7651176525_ _rest76506_)
                             (_else7651476533_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner76394_
                                   _pre76508_
                                   _bind76509_
                                   _post76510_
                                   _body76502_)))))
                        (let ((_K7651976569_
                               (lambda (_rest76566_ _id76567_)
                                 (let ((__tmp78041 (cdr _exprs76507_))
                                       (__tmp78036
                                        (let ((__tmp78037
                                               (let ((__tmp78040
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76567_)))
                                                     (__tmp78038
                                                      (let ((__tmp78039
                                                             (car _exprs76507_)))
                                                        (declare (not safe))
                                                        (cons __tmp78039
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp78040
                                                       __tmp78038))))
                                          (declare (not safe))
                                          (cons __tmp78037 _bind76509_))))
                                   (declare (not safe))
                                   (_lp76504_
                                    _rest76566_
                                    __tmp78041
                                    _pre76508_
                                    __tmp78036
                                    _post76510_))))
                              (_K7651676551_
                               (lambda (_rest76537_ _hd76538_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76538_))
                                     (let ((__tmp78069 (cdr _exprs76507_))
                                           (__tmp78062
                                            (let ((__tmp78063
                                                   (let ((__tmp78068
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76538_)))
                                                         (__tmp78064
                                                          (let ((__tmp78065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78066
                                (let ((__tmp78067 (car _exprs76507_)))
                                  (declare (not safe))
                                  (cons __tmp78067 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78066))))
                    (declare (not safe))
                    (cons __tmp78065 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78068
                                                           __tmp78064))))
                                              (declare (not safe))
                                              (cons __tmp78063 _bind76509_))))
                                       (declare (not safe))
                                       (_lp76504_
                                        _rest76537_
                                        __tmp78069
                                        _pre76508_
                                        __tmp78062
                                        _post76510_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76538_))
                                         (let* ((_len76540_ (length _hd76538_))
                                                (_tmp76542_
                                                 (let ((__tmp78042 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp78042))))
                                           (let ((__tmp78061
                                                  (cdr _exprs76507_))
                                                 (__tmp78054
                                                  (let ((__tmp78055
                                                         (lambda (_id76545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76546_)
                   (if (let () (declare (not safe)) (__AST-e _id76545_))
                       (let ((__tmp78056
                              (let ((__tmp78060
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id76545_)))
                                    (__tmp78057
                                     (let ((__tmp78058
                                            (let ((__tmp78059
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp78059))))
                                       (declare (not safe))
                                       (cons __tmp78058 '()))))
                                (declare (not safe))
                                (cons __tmp78060 __tmp78057))))
                         (declare (not safe))
                         (cons __tmp78056 _r76546_))
                       _r76546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp78055
                                                            _pre76508_
                                                            _hd76538_)))
                                                 (__tmp78050
                                                  (let ((__tmp78051
                                                         (let ((__tmp78052
                                                                (let ((__tmp78053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76507_)))
                          (declare (not safe))
                          (cons __tmp78053 '()))))
                   (declare (not safe))
                   (cons _tmp76542_ __tmp78052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78051
                                                          _bind76509_)))
                                                 (__tmp78043
                                                  (let ((__tmp78044
                                                         (let ((__tmp78045
                                                                (let ((__tmp78046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78048
                                      (lambda (_id76548_ _k76549_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76548_))
                                            (let ((__tmp78049
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76548_))))
                                              (declare (not safe))
                                              (cons __tmp78049 _k76549_))
                                            '#f)))
                                     (__tmp78047
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76540_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp78048
                                  _hd76538_
                                  __tmp78047))))
                          (declare (not safe))
                          (cons _len76540_ __tmp78046))))
                   (declare (not safe))
                   (cons _tmp76542_ __tmp78045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78044
                                                          _post76510_))))
                                             (declare (not safe))
                                             (_lp76504_
                                              _rest76537_
                                              __tmp78061
                                              __tmp78054
                                              __tmp78050
                                              __tmp78043)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76390_
                                            _hd76538_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7651176525_))
                              (let ((_tl7652176574_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7651176525_)))
                                    (_hd7652076572_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7651176525_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7652076572_))
                                    (let ((_tl7652376579_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7652076572_)))
                                          (_hd7652276577_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7652076572_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7652376579_))
                                          (let ((_id76582_ _hd7652276577_)
                                                (_rest76584_ _tl7652176574_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7651976569_
                                               _rest76584_
                                               _id76582_)))
                                          (let ((_hd76559_ _hd7652076572_)
                                                (_rest76561_ _tl7652176574_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7651676551_
                                               _rest76561_
                                               _hd76559_)))))
                                    (let ((_hd76559_ _hd7652076572_)
                                          (_rest76561_ _tl7652176574_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7651676551_
                                         _rest76561_
                                         _hd76559_)))))
                              (let ()
                                (declare (not safe))
                                (_else7651476533_))))))))
                 (_compile-inner76394_
                  (lambda (_pre76495_ _bind76496_ _post76497_ _body76498_)
                    (if (let () (declare (not safe)) (null? _pre76495_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind76395_
                           _bind76496_
                           _post76497_
                           _body76498_))
                        (let ((__tmp78070
                               (let ((__tmp78071
                                      (let ((__tmp78074 (reverse _pre76495_))
                                            (__tmp78072
                                             (let ((__tmp78073
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind76395_
                                                       _bind76496_
                                                       _post76497_
                                                       _body76498_))))
                                               (declare (not safe))
                                               (cons __tmp78073 '()))))
                                        (declare (not safe))
                                        (cons __tmp78074 __tmp78072))))
                                 (declare (not safe))
                                 (cons 'let __tmp78071))))
                          (declare (not safe))
                          (__SRC__% __tmp78070 _stx76390_)))))
                 (_compile-bind76395_
                  (lambda (_bind76491_ _post76492_ _body76493_)
                    (let ((__tmp78075
                           (let ((__tmp78076
                                  (let ((__tmp78079 (reverse _bind76491_))
                                        (__tmp78077
                                         (let ((__tmp78078
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76396_
                                                   _post76492_
                                                   _body76493_))))
                                           (declare (not safe))
                                           (cons __tmp78078 '()))))
                                    (declare (not safe))
                                    (cons __tmp78079 __tmp78077))))
                             (declare (not safe))
                             (cons 'letrec __tmp78076))))
                      (declare (not safe))
                      (__SRC__% __tmp78075 _stx76390_))))
                 (_compile-post76396_
                  (lambda (_post76398_ _body76399_)
                    (let _lp76401_ ((_rest76403_ _post76398_)
                                    (_check76404_ '())
                                    (_bind76405_ '()))
                      (let* ((_rest7640676418_ _rest76403_)
                             (_else7640876426_
                              (lambda ()
                                (let ((__tmp78080
                                       (let ((__tmp78081
                                              (let ((__tmp78082
                                                     (let ((__tmp78083
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body76399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp78083 _bind76405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78082
                                                        _check76404_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78081))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78080 _stx76390_))))
                             (_K7641076465_
                              (lambda (_rest76429_
                                       _init76430_
                                       _len76431_
                                       _tmp76432_)
                                (let ((__tmp78092
                                       (let ((__tmp78093
                                              (let ((__tmp78094
                                                     (let ((__tmp78095
                                                            (let ((__tmp78096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76431_ '()))))
                      (declare (not safe))
                      (cons _tmp76432_ __tmp78096))))
               (declare (not safe))
               (cons '__check-values __tmp78095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78094
                                                 _stx76390_))))
                                         (declare (not safe))
                                         (cons __tmp78093 _check76404_)))
                                      (__tmp78084
                                       (let ((__tmp78085
                                              (lambda (_hd76434_ _r76435_)
                                                (let* ((_hd7643676443_
                                                        _hd76434_)
                                                       (_E7643876447_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7643676443_))))
               (_K7643976453_
                (lambda (_k76450_ _id76451_)
                  (let ((__tmp78086
                         (let ((__tmp78087
                                (let ((__tmp78088
                                       (let ((__tmp78089
                                              (let ((__tmp78090
                                                     (let ((__tmp78091
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k76450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp76432_ __tmp78091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp78090))))
                                         (declare (not safe))
                                         (cons __tmp78089 '()))))
                                  (declare (not safe))
                                  (cons _id76451_ __tmp78088))))
                           (declare (not safe))
                           (cons 'set! __tmp78087))))
                    (declare (not safe))
                    (cons __tmp78086 _r76435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7643676443_))
                                                      (let ((_hd7644076456_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7643676443_)))
                    (_tl7644176458_
                     (let () (declare (not safe)) (##cdr _hd7643676443_))))
                (let* ((_id76461_ _hd7644076456_) (_k76463_ _tl7644176458_))
                  (declare (not safe))
                  (_K7643976453_ _k76463_ _id76461_)))
              (let () (declare (not safe)) (_E7643876447_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78085
                                                 _bind76405_
                                                 _init76430_))))
                                  (declare (not safe))
                                  (_lp76401_
                                   _rest76429_
                                   __tmp78092
                                   __tmp78084)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7640676418_))
                            (let ((_hd7641176468_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7640676418_)))
                                  (_tl7641276470_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7640676418_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7641176468_))
                                  (let ((_hd7641376473_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7641176468_)))
                                        (_tl7641476475_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7641176468_))))
                                    (let ((_tmp76478_ _hd7641376473_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7641476475_))
                                          (let ((_hd7641576480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7641476475_)))
                                                (_tl7641676482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7641476475_))))
                                            (let* ((_len76485_ _hd7641576480_)
                                                   (_init76487_ _tl7641676482_)
                                                   (_rest76489_
                                                    _tl7641276470_))
                                              (declare (not safe))
                                              (_K7641076465_
                                               _rest76489_
                                               _init76487_
                                               _len76485_
                                               _tmp76478_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7640876426_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7640876426_))))
                            (let ()
                              (declare (not safe))
                              (_else7640876426_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76390_
             _compile-simple76392_
             _compile-values76393_)))))
    (define __compile-letrec*-values%
      (lambda (_stx76145_)
        (letrec ((_compile-simple76147_
                  (lambda (_hd-ids76386_ _exprs76387_ _body76388_)
                    (let ((__tmp78097
                           (let ((__tmp78098
                                  (let ((__tmp78100
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76386_)
                                              _exprs76387_))
                                        (__tmp78099
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76388_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78100 __tmp78099))))
                             (declare (not safe))
                             (cons 'letrec* __tmp78098))))
                      (declare (not safe))
                      (__SRC__% __tmp78097 _stx76145_))))
                 (_compile-values76148_
                  (lambda (_hd-ids76297_ _exprs76298_ _body76299_)
                    (let _lp76301_ ((_rest76303_ _hd-ids76297_)
                                    (_exprs76304_ _exprs76298_)
                                    (_bind76305_ '())
                                    (_post76306_ '()))
                      (let* ((_rest7630776321_ _rest76303_)
                             (_else7631076329_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind76149_
                                   _bind76305_
                                   _post76306_
                                   _body76299_)))))
                        (let ((_K7631576369_
                               (lambda (_rest76364_ _hd76365_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76365_))
                                     (let ((_id76367_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76365_))))
                                       (let ((__tmp78115 (cdr _exprs76304_))
                                             (__tmp78110
                                              (let ((__tmp78111
                                                     (let ((__tmp78112
                                                            (let ((__tmp78113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78114
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78114))))
                      (declare (not safe))
                      (cons __tmp78113 '()))))
               (declare (not safe))
               (cons _id76367_ __tmp78112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78111 _bind76305_)))
                                             (__tmp78106
                                              (let ((__tmp78107
                                                     (let ((__tmp78108
                                                            (let ((__tmp78109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs76304_)))
                      (declare (not safe))
                      (cons __tmp78109 '()))))
               (declare (not safe))
               (cons _id76367_ __tmp78108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78107
                                                      _post76306_))))
                                         (declare (not safe))
                                         (_lp76301_
                                          _rest76364_
                                          __tmp78115
                                          __tmp78110
                                          __tmp78106)))
                                     (let ((__tmp78105 (cdr _exprs76304_))
                                           (__tmp78101
                                            (let ((__tmp78102
                                                   (let ((__tmp78103
                                                          (let ((__tmp78104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs76304_)))
                    (declare (not safe))
                    (cons __tmp78104 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp78103))))
                                              (declare (not safe))
                                              (cons __tmp78102 _post76306_))))
                                       (declare (not safe))
                                       (_lp76301_
                                        _rest76364_
                                        __tmp78105
                                        _bind76305_
                                        __tmp78101)))))
                              (_K7631276349_
                               (lambda (_rest76333_ _hd76334_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76334_))
                                     (let ((_id76336_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76334_))))
                                       (let ((__tmp78151 (cdr _exprs76304_))
                                             (__tmp78146
                                              (let ((__tmp78147
                                                     (let ((__tmp78148
                                                            (let ((__tmp78149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78150
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78150))))
                      (declare (not safe))
                      (cons __tmp78149 '()))))
               (declare (not safe))
               (cons _id76336_ __tmp78148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78147 _bind76305_)))
                                             (__tmp78140
                                              (let ((__tmp78141
                                                     (let ((__tmp78142
                                                            (let ((__tmp78143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78144
                                  (let ((__tmp78145 (car _exprs76304_)))
                                    (declare (not safe))
                                    (cons __tmp78145 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp78144))))
                      (declare (not safe))
                      (cons __tmp78143 '()))))
               (declare (not safe))
               (cons _id76336_ __tmp78142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78141
                                                      _post76306_))))
                                         (declare (not safe))
                                         (_lp76301_
                                          _rest76333_
                                          __tmp78151
                                          __tmp78146
                                          __tmp78140)))
                                     (if (let ((__tmp78139
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd76334_))))
                                           (declare (not safe))
                                           (not __tmp78139))
                                         (let ((__tmp78138 (cdr _exprs76304_))
                                               (__tmp78134
                                                (let ((__tmp78135
                                                       (let ((__tmp78136
                                                              (let ((__tmp78137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs76304_)))
                        (declare (not safe))
                        (cons __tmp78137 '()))))
                 (declare (not safe))
                 (cons '#f __tmp78136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78135
                                                        _post76306_))))
                                           (declare (not safe))
                                           (_lp76301_
                                            _rest76333_
                                            __tmp78138
                                            _bind76305_
                                            __tmp78134))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd76334_))
                                             (let* ((_len76338_
                                                     (length _hd76334_))
                                                    (_tmp76340_
                                                     (let ((__tmp78116
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp78116))))
                                               (let ((__tmp78133
                                                      (cdr _exprs76304_))
                                                     (__tmp78126
                                                      (let ((__tmp78127
                                                             (lambda (_id76343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r76344_)
                       (if (let () (declare (not safe)) (__AST-e _id76343_))
                           (let ((__tmp78128
                                  (let ((__tmp78132
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76343_)))
                                        (__tmp78129
                                         (let ((__tmp78130
                                                (let ((__tmp78131
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp78131))))
                                           (declare (not safe))
                                           (cons __tmp78130 '()))))
                                    (declare (not safe))
                                    (cons __tmp78132 __tmp78129))))
                             (declare (not safe))
                             (cons __tmp78128 _r76344_))
                           _r76344_))))
                (declare (not safe))
                (foldl1 __tmp78127 _bind76305_ _hd76334_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp78117
                                                      (let ((__tmp78118
                                                             (let ((__tmp78119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78125 (car _exprs76304_))
                                  (__tmp78120
                                   (let ((__tmp78121
                                          (let ((__tmp78123
                                                 (lambda (_id76346_ _k76347_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id76346_))
                                                       (let ((__tmp78124
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id76346_))))
                 (declare (not safe))
                 (cons __tmp78124 _k76347_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp78122
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len76338_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp78123
                                             _hd76334_
                                             __tmp78122))))
                                     (declare (not safe))
                                     (cons _len76338_ __tmp78121))))
                              (declare (not safe))
                              (cons __tmp78125 __tmp78120))))
                       (declare (not safe))
                       (cons _tmp76340_ __tmp78119))))
                (declare (not safe))
                (cons __tmp78118 _post76306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp76301_
                                                  _rest76333_
                                                  __tmp78133
                                                  __tmp78126
                                                  __tmp78117)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx76145_
                                                _hd76334_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7630776321_))
                              (let ((_tl7631776374_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7630776321_)))
                                    (_hd7631676372_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7630776321_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7631676372_))
                                    (let ((_tl7631976379_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7631676372_)))
                                          (_hd7631876377_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7631676372_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7631976379_))
                                          (let ((_hd76382_ _hd7631876377_)
                                                (_rest76384_ _tl7631776374_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7631576369_
                                               _rest76384_
                                               _hd76382_)))
                                          (let ((_hd76357_ _hd7631676372_)
                                                (_rest76359_ _tl7631776374_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7631276349_
                                               _rest76359_
                                               _hd76357_)))))
                                    (let ((_hd76357_ _hd7631676372_)
                                          (_rest76359_ _tl7631776374_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7631276349_
                                         _rest76359_
                                         _hd76357_)))))
                              (let ()
                                (declare (not safe))
                                (_else7631076329_))))))))
                 (_compile-bind76149_
                  (lambda (_bind76293_ _post76294_ _body76295_)
                    (let ((__tmp78152
                           (let ((__tmp78153
                                  (let ((__tmp78156 (reverse _bind76293_))
                                        (__tmp78154
                                         (let ((__tmp78155
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76150_
                                                   _post76294_
                                                   _body76295_))))
                                           (declare (not safe))
                                           (cons __tmp78155 '()))))
                                    (declare (not safe))
                                    (cons __tmp78156 __tmp78154))))
                             (declare (not safe))
                             (cons 'let __tmp78153))))
                      (declare (not safe))
                      (__SRC__% __tmp78152 _stx76145_))))
                 (_compile-post76150_
                  (lambda (_post76152_ _body76153_)
                    (let ((__tmp78157
                           (let ((__tmp78158
                                  (let ((__tmp78159
                                         (let ((__tmp78161
                                                (lambda (_hd76155_ _r76156_)
                                                  (let* ((_hd7615776180_
                                                          _hd76155_)
                                                         (_E7616176184_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7615776180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7617476278_
                                                           (lambda (_expr76276_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr76276_ _r76156_))))
                  (_K7616976256_
                   (lambda (_expr76253_ _id76254_)
                     (let ((__tmp78162
                            (let ((__tmp78163
                                   (let ((__tmp78164
                                          (let ((__tmp78165
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr76253_ '()))))
                                            (declare (not safe))
                                            (cons _id76254_ __tmp78165))))
                                     (declare (not safe))
                                     (cons 'set! __tmp78164))))
                              (declare (not safe))
                              (__SRC__% __tmp78163 _stx76145_))))
                       (declare (not safe))
                       (cons __tmp78162 _r76156_))))
                  (_K7616276223_
                   (lambda (_init76188_ _len76189_ _expr76190_ _tmp76191_)
                     (let ((__tmp78166
                            (let ((__tmp78167
                                   (let ((__tmp78168
                                          (let ((__tmp78182
                                                 (let ((__tmp78183
                                                        (let ((__tmp78184
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr76190_ '()))))
                  (declare (not safe))
                  (cons _tmp76191_ __tmp78184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78183 '())))
                                                (__tmp78169
                                                 (let ((__tmp78178
                                                        (let ((__tmp78179
                                                               (let ((__tmp78180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp78181
                                     (let ()
                                       (declare (not safe))
                                       (cons _len76189_ '()))))
                                (declare (not safe))
                                (cons _tmp76191_ __tmp78181))))
                         (declare (not safe))
                         (cons '__check-values __tmp78180))))
                  (declare (not safe))
                  (__SRC__% __tmp78179 _stx76145_)))
               (__tmp78170
                (let ((__tmp78171
                       (map (lambda (_hd76193_)
                              (let* ((_hd7619476201_ _hd76193_)
                                     (_E7619676205_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7619476201_))))
                                     (_K7619776211_
                                      (lambda (_k76208_ _id76209_)
                                        (let ((__tmp78172
                                               (let ((__tmp78173
                                                      (let ((__tmp78174
                                                             (let ((__tmp78175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78176
                                   (let ((__tmp78177
                                          (let ()
                                            (declare (not safe))
                                            (cons _k76208_ '()))))
                                     (declare (not safe))
                                     (cons _tmp76191_ __tmp78177))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp78176))))
                       (declare (not safe))
                       (cons __tmp78175 '()))))
                (declare (not safe))
                (cons _id76209_ __tmp78174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp78173))))
                                          (declare (not safe))
                                          (__SRC__% __tmp78172 _stx76145_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7619476201_))
                                    (let ((_hd7619876214_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7619476201_)))
                                          (_tl7619976216_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7619476201_))))
                                      (let* ((_id76219_ _hd7619876214_)
                                             (_k76221_ _tl7619976216_))
                                        (declare (not safe))
                                        (_K7619776211_ _k76221_ _id76219_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7619676205_)))))
                            _init76188_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp78171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78178
                                                         __tmp78170))))
                                            (declare (not safe))
                                            (cons __tmp78182 __tmp78169))))
                                     (declare (not safe))
                                     (cons 'let __tmp78168))))
                              (declare (not safe))
                              (__SRC__% __tmp78167 _stx76145_))))
                       (declare (not safe))
                       (cons __tmp78166 _r76156_)))))
              (if (let () (declare (not safe)) (##pair? _hd7615776180_))
                  (let ((_tl7617676283_
                         (let () (declare (not safe)) (##cdr _hd7615776180_)))
                        (_hd7617576281_
                         (let () (declare (not safe)) (##car _hd7615776180_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7617576281_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7617676283_))
                            (let ((_tl7617876288_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7617676283_)))
                                  (_hd7617776286_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7617676283_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7617876288_))
                                  (let ((_expr76291_ _hd7617776286_))
                                    (declare (not safe))
                                    (_K7617476278_ _expr76291_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7617876288_))
                                      (let ((_tl7616876242_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7617876288_)))
                                            (_hd7616776240_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7617876288_))))
                                        (let ((_tmp76231_ _hd7617576281_)
                                              (_expr76238_ _hd7617776286_)
                                              (_len76245_ _hd7616776240_)
                                              (_init76247_ _tl7616876242_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7616276223_
                                             _init76247_
                                             _len76245_
                                             _expr76238_
                                             _tmp76231_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7616176184_)))))
                            (let () (declare (not safe)) (_E7616176184_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7617676283_))
                            (let ((_tl7617376268_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7617676283_)))
                                  (_hd7617276266_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7617676283_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7617376268_))
                                  (let ((_id76264_ _hd7617576281_)
                                        (_expr76271_ _hd7617276266_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7616976256_ _expr76271_ _id76264_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7617376268_))
                                      (let ((_tl7616876242_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7617376268_)))
                                            (_hd7616776240_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7617376268_))))
                                        (let ((_tmp76231_ _hd7617576281_)
                                              (_expr76238_ _hd7617276266_)
                                              (_len76245_ _hd7616776240_)
                                              (_init76247_ _tl7616876242_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7616276223_
                                             _init76247_
                                             _len76245_
                                             _expr76238_
                                             _tmp76231_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7616176184_)))))
                            (let () (declare (not safe)) (_E7616176184_)))))
                  (let () (declare (not safe)) (_E7616176184_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp78160 (list _body76153_)))
                                           (declare (not safe))
                                           (foldl1 __tmp78161
                                                   __tmp78160
                                                   _post76152_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp78159))))
                             (declare (not safe))
                             (cons 'begin __tmp78158))))
                      (declare (not safe))
                      (__SRC__% __tmp78157 _stx76145_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76145_
             _compile-simple76147_
             _compile-values76148_)))))
    (define __compile-call%
      (lambda (_stx76105_)
        (let* ((_$e76107_ _stx76105_)
               (_$E7610976118_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76107_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76107_))
              (let* ((_$tgt7611076121_
                      (let () (declare (not safe)) (__AST-e _$e76107_)))
                     (_$hd7611176124_
                      (let () (declare (not safe)) (##car _$tgt7611076121_)))
                     (_$tl7611276127_
                      (let () (declare (not safe)) (##cdr _$tgt7611076121_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7611276127_))
                    (let* ((_$tgt7611376131_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7611276127_)))
                           (_$hd7611476134_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7611376131_)))
                           (_$tl7611576137_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7611376131_))))
                      (let* ((_rator76141_ _$hd7611476134_)
                             (_rands76143_ _$tl7611576137_)
                             (__tmp78185
                              (let ((__tmp78187
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator76141_)))
                                    (__tmp78186 (map __compile _rands76143_)))
                                (declare (not safe))
                                (cons __tmp78187 __tmp78186))))
                        (declare (not safe))
                        (__SRC__% __tmp78185 _stx76105_)))
                    (let () (declare (not safe)) (_$E7610976118_))))
              (let () (declare (not safe)) (_$E7610976118_))))))
    (define __compile-ref%
      (lambda (_stx76067_)
        (let* ((_$e76069_ _stx76067_)
               (_$E7607176080_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76069_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76069_))
              (let* ((_$tgt7607276083_
                      (let () (declare (not safe)) (__AST-e _$e76069_)))
                     (_$hd7607376086_
                      (let () (declare (not safe)) (##car _$tgt7607276083_)))
                     (_$tl7607476089_
                      (let () (declare (not safe)) (##cdr _$tgt7607276083_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7607476089_))
                    (let* ((_$tgt7607576093_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7607476089_)))
                           (_$hd7607676096_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7607576093_)))
                           (_$tl7607776099_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7607576093_))))
                      (let ((_id76103_ _$hd7607676096_))
                        (if (let ((__tmp78188
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7607776099_))))
                              (declare (not safe))
                              (equal? __tmp78188 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id76103_ _stx76067_))
                            (let () (declare (not safe)) (_$E7607176080_)))))
                    (let () (declare (not safe)) (_$E7607176080_))))
              (let () (declare (not safe)) (_$E7607176080_))))))
    (define __compile-setq%
      (lambda (_stx76014_)
        (let* ((_$e76016_ _stx76014_)
               (_$E7601876030_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76016_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76016_))
              (let* ((_$tgt7601976033_
                      (let () (declare (not safe)) (__AST-e _$e76016_)))
                     (_$hd7602076036_
                      (let () (declare (not safe)) (##car _$tgt7601976033_)))
                     (_$tl7602176039_
                      (let () (declare (not safe)) (##cdr _$tgt7601976033_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7602176039_))
                    (let* ((_$tgt7602276043_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7602176039_)))
                           (_$hd7602376046_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7602276043_)))
                           (_$tl7602476049_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7602276043_))))
                      (let ((_id76053_ _$hd7602376046_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7602476049_))
                            (let* ((_$tgt7602576055_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7602476049_)))
                                   (_$hd7602676058_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7602576055_)))
                                   (_$tl7602776061_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7602576055_))))
                              (let ((_expr76065_ _$hd7602676058_))
                                (if (let ((__tmp78194
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7602776061_))))
                                      (declare (not safe))
                                      (equal? __tmp78194 '()))
                                    (let ((__tmp78189
                                           (let ((__tmp78190
                                                  (let ((__tmp78193
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id76053_
                                                            _stx76014_)))
                                                        (__tmp78191
                                                         (let ((__tmp78192
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr76065_))))
                   (declare (not safe))
                   (cons __tmp78192 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78193
                                                          __tmp78191))))
                                             (declare (not safe))
                                             (cons 'set! __tmp78190))))
                                      (declare (not safe))
                                      (__SRC__% __tmp78189 _stx76014_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7601876030_)))))
                            (let () (declare (not safe)) (_$E7601876030_)))))
                    (let () (declare (not safe)) (_$E7601876030_))))
              (let () (declare (not safe)) (_$E7601876030_))))))
    (define __compile-if%
      (lambda (_stx75946_)
        (let* ((_$e75948_ _stx75946_)
               (_$E7595075965_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75948_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75948_))
              (let* ((_$tgt7595175968_
                      (let () (declare (not safe)) (__AST-e _$e75948_)))
                     (_$hd7595275971_
                      (let () (declare (not safe)) (##car _$tgt7595175968_)))
                     (_$tl7595375974_
                      (let () (declare (not safe)) (##cdr _$tgt7595175968_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7595375974_))
                    (let* ((_$tgt7595475978_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7595375974_)))
                           (_$hd7595575981_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7595475978_)))
                           (_$tl7595675984_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7595475978_))))
                      (let ((_p75988_ _$hd7595575981_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7595675984_))
                            (let* ((_$tgt7595775990_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7595675984_)))
                                   (_$hd7595875993_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7595775990_)))
                                   (_$tl7595975996_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7595775990_))))
                              (let ((_t76000_ _$hd7595875993_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7595975996_))
                                    (let* ((_$tgt7596076002_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7595975996_)))
                                           (_$hd7596176005_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7596076002_)))
                                           (_$tl7596276008_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7596076002_))))
                                      (let ((_f76012_ _$hd7596176005_))
                                        (if (let ((__tmp78202
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7596276008_))))
                                              (declare (not safe))
                                              (equal? __tmp78202 '()))
                                            (let ((__tmp78195
                                                   (let ((__tmp78196
                                                          (let ((__tmp78201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p75988_)))
                        (__tmp78197
                         (let ((__tmp78200
                                (let ()
                                  (declare (not safe))
                                  (__compile _t76000_)))
                               (__tmp78198
                                (let ((__tmp78199
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f76012_))))
                                  (declare (not safe))
                                  (cons __tmp78199 '()))))
                           (declare (not safe))
                           (cons __tmp78200 __tmp78198))))
                    (declare (not safe))
                    (cons __tmp78201 __tmp78197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp78196))))
                                              (declare (not safe))
                                              (__SRC__% __tmp78195 _stx75946_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7595075965_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7595075965_)))))
                            (let () (declare (not safe)) (_$E7595075965_)))))
                    (let () (declare (not safe)) (_$E7595075965_))))
              (let () (declare (not safe)) (_$E7595075965_))))))
    (define __compile-quote%
      (lambda (_stx75908_)
        (let* ((_$e75910_ _stx75908_)
               (_$E7591275921_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75910_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75910_))
              (let* ((_$tgt7591375924_
                      (let () (declare (not safe)) (__AST-e _$e75910_)))
                     (_$hd7591475927_
                      (let () (declare (not safe)) (##car _$tgt7591375924_)))
                     (_$tl7591575930_
                      (let () (declare (not safe)) (##cdr _$tgt7591375924_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7591575930_))
                    (let* ((_$tgt7591675934_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7591575930_)))
                           (_$hd7591775937_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7591675934_)))
                           (_$tl7591875940_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7591675934_))))
                      (let ((_e75944_ _$hd7591775937_))
                        (if (let ((__tmp78206
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7591875940_))))
                              (declare (not safe))
                              (equal? __tmp78206 '()))
                            (let ((__tmp78203
                                   (let ((__tmp78204
                                          (let ((__tmp78205
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e75944_))))
                                            (declare (not safe))
                                            (cons __tmp78205 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78204))))
                              (declare (not safe))
                              (__SRC__% __tmp78203 _stx75908_))
                            (let () (declare (not safe)) (_$E7591275921_)))))
                    (let () (declare (not safe)) (_$E7591275921_))))
              (let () (declare (not safe)) (_$E7591275921_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75870_)
        (let* ((_$e75872_ _stx75870_)
               (_$E7587475883_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75872_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75872_))
              (let* ((_$tgt7587575886_
                      (let () (declare (not safe)) (__AST-e _$e75872_)))
                     (_$hd7587675889_
                      (let () (declare (not safe)) (##car _$tgt7587575886_)))
                     (_$tl7587775892_
                      (let () (declare (not safe)) (##cdr _$tgt7587575886_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7587775892_))
                    (let* ((_$tgt7587875896_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7587775892_)))
                           (_$hd7587975899_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7587875896_)))
                           (_$tl7588075902_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7587875896_))))
                      (let ((_e75906_ _$hd7587975899_))
                        (if (let ((__tmp78209
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7588075902_))))
                              (declare (not safe))
                              (equal? __tmp78209 '()))
                            (let ((__tmp78207
                                   (let ((__tmp78208
                                          (let ()
                                            (declare (not safe))
                                            (cons _e75906_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78208))))
                              (declare (not safe))
                              (__SRC__% __tmp78207 _stx75870_))
                            (let () (declare (not safe)) (_$E7587475883_)))))
                    (let () (declare (not safe)) (_$E7587475883_))))
              (let () (declare (not safe)) (_$E7587475883_))))))
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
