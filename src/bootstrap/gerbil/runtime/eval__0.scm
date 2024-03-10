(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710064746)
  (begin
    (define __syntax::t
      (let ((__tmp74805 (list))
            (__tmp74803
             (let ((__tmp74804
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74804 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp74805
         '(e id)
         __tmp74803
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args74614_ (apply make-instance __syntax::t _$args74614_)))
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
      (let ((__tmp74808 (list __syntax::t))
            (__tmp74806
             (let ((__tmp74807
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74807 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp74808
         '()
         __tmp74806
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args74611_ (apply make-instance __core-form::t _$args74611_)))
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
      (let ((__tmp74811 (list __core-form::t))
            (__tmp74809
             (let ((__tmp74810
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74810 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp74811
         '()
         __tmp74809
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args74608_
        (apply make-instance __core-expression::t _$args74608_)))
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
      (let ((__tmp74814 (list __core-form::t))
            (__tmp74812
             (let ((__tmp74813
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp74813 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp74814
         '()
         __tmp74812
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args74605_
        (apply make-instance __core-special-form::t _$args74605_)))
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
      (lambda (_id74603_)
        (let ((__tmp74815 (let () (declare (not safe)) (__AST-e _id74603_))))
          (declare (not safe))
          (hash-get __core __tmp74815))))
    (define __core-bound-id?__%
      (lambda (_id74587_ _is?74588_)
        (let ((_$e74590_
               (let () (declare (not safe)) (__core-resolve _id74587_))))
          (if _$e74590_ (_is?74588_ _$e74590_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id74596_)
        (let ((_is?74598_ true))
          (declare (not safe))
          (__core-bound-id?__% _id74596_ _is?74598_))))
    (define __core-bound-id?
      (lambda _g74817_
        (let ((_g74816_ (let () (declare (not safe)) (##length _g74817_))))
          (cond ((let () (declare (not safe)) (##fx= _g74816_ 1))
                 (apply (lambda (_id74596_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id74596_)))
                        _g74817_))
                ((let () (declare (not safe)) (##fx= _g74816_ 2))
                 (apply (lambda (_id74600_ _is?74601_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id74600_ _is?74601_)))
                        _g74817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g74817_))))))
    (define __core-bind-syntax!__%
      (lambda (_id74570_ _e74571_ _make74572_)
        (let ((__tmp74818
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e74571_
                      'gerbil/runtime/eval#__syntax::t))
                   _e74571_
                   (_make74572_ _e74571_ _id74570_))))
          (declare (not safe))
          (hash-put! __core _id74570_ __tmp74818))))
    (define __core-bind-syntax!__0
      (lambda (_id74577_ _e74578_)
        (let ((_make74580_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id74577_ _e74578_ _make74580_))))
    (define __core-bind-syntax!
      (lambda _g74820_
        (let ((_g74819_ (let () (declare (not safe)) (##length _g74820_))))
          (cond ((let () (declare (not safe)) (##fx= _g74819_ 2))
                 (apply (lambda (_id74577_ _e74578_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id74577_ _e74578_)))
                        _g74820_))
                ((let () (declare (not safe)) (##fx= _g74819_ 3))
                 (apply (lambda (_id74582_ _e74583_ _make74584_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id74582_
                             _e74583_
                             _make74584_)))
                        _g74820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g74820_))))))
    (define __SRC__%
      (lambda (_e74553_ _src-stx74554_)
        (if (or (let () (declare (not safe)) (pair? _e74553_))
                (let () (declare (not safe)) (symbol? _e74553_)))
            (let ((__tmp74821
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx74554_
                          'gerbil#AST::t))
                       (let ((__tmp74822
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx74554_))))
                         (declare (not safe))
                         (__locat __tmp74822))
                       '#f)))
              (declare (not safe))
              (##make-source _e74553_ __tmp74821))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e74553_ 'gerbil#AST::t))
                (let ((__tmp74825
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e74553_ '1 AST::t '#f)))
                      (__tmp74823
                       (let ((__tmp74824
                              (let ()
                                (declare (not safe))
                                (__AST-source _e74553_))))
                         (declare (not safe))
                         (__locat __tmp74824))))
                  (declare (not safe))
                  (##make-source __tmp74825 __tmp74823))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e74553_))))))
    (define __SRC__0
      (lambda (_e74562_)
        (let ((_src-stx74564_ '#f))
          (declare (not safe))
          (__SRC__% _e74562_ _src-stx74564_))))
    (define __SRC
      (lambda _g74827_
        (let ((_g74826_ (let () (declare (not safe)) (##length _g74827_))))
          (cond ((let () (declare (not safe)) (##fx= _g74826_ 1))
                 (apply (lambda (_e74562_)
                          (let () (declare (not safe)) (__SRC__0 _e74562_)))
                        _g74827_))
                ((let () (declare (not safe)) (##fx= _g74826_ 2))
                 (apply (lambda (_e74566_ _src-stx74567_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e74566_ _src-stx74567_)))
                        _g74827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g74827_))))))
    (define __locat
      (lambda (_loc74550_)
        (if (let () (declare (not safe)) (##locat? _loc74550_))
            _loc74550_
            '#f)))
    (define __check-values
      (lambda (_obj74545_ _k74546_)
        (let ((_count74548_
               (if (let () (declare (not safe)) (##values? _obj74545_))
                   (let () (declare (not safe)) (##vector-length _obj74545_))
                   '1)))
          (if (fx= _count74548_ _k74546_)
              '#!void
              (let ((__tmp74829
                     (if (fx< _count74548_ _k74546_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp74828
                     (if (let () (declare (not safe)) (##values? _obj74545_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj74545_))
                         _obj74545_)))
                (declare (not safe))
                (error __tmp74829 __tmp74828 _k74546_))))))
    (define __compile
      (lambda (_stx74515_)
        (let* ((_$e74517_ _stx74515_)
               (_$E7451974525_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74517_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74517_))
              (let* ((_$tgt7452074528_
                      (let () (declare (not safe)) (__AST-e _$e74517_)))
                     (_$hd7452174531_
                      (let () (declare (not safe)) (##car _$tgt7452074528_)))
                     (_$tl7452274534_
                      (let () (declare (not safe)) (##cdr _$tgt7452074528_))))
                (let* ((_form74538_ _$hd7452174531_)
                       (_$e74540_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form74538_))))
                  (if _$e74540_
                      ((lambda (_bind74543_)
                         ((##structure-ref _bind74543_ '1 __syntax::t '#f)
                          _stx74515_))
                       _$e74540_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx74515_
                         _form74538_)))))
              (let () (declare (not safe)) (_$E7451974525_))))))
    (define __compile-error__%
      (lambda (_stx74502_ _detail74503_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx74502_
           _detail74503_))))
    (define __compile-error__0
      (lambda (_stx74508_)
        (let ((_detail74510_ '#f))
          (declare (not safe))
          (__compile-error__% _stx74508_ _detail74510_))))
    (define __compile-error
      (lambda _g74831_
        (let ((_g74830_ (let () (declare (not safe)) (##length _g74831_))))
          (cond ((let () (declare (not safe)) (##fx= _g74830_ 1))
                 (apply (lambda (_stx74508_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx74508_)))
                        _g74831_))
                ((let () (declare (not safe)) (##fx= _g74830_ 2))
                 (apply (lambda (_stx74512_ _detail74513_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx74512_ _detail74513_)))
                        _g74831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g74831_))))))
    (define __compile-ignore%
      (lambda (_stx74499_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx74499_))))
    (define __compile-begin%
      (lambda (_stx74474_)
        (let* ((_$e74476_ _stx74474_)
               (_$E7447874484_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74476_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74476_))
              (let* ((_$tgt7447974487_
                      (let () (declare (not safe)) (__AST-e _$e74476_)))
                     (_$hd7448074490_
                      (let () (declare (not safe)) (##car _$tgt7447974487_)))
                     (_$tl7448174493_
                      (let () (declare (not safe)) (##cdr _$tgt7447974487_))))
                (let* ((_body74497_ _$tl7448174493_)
                       (__tmp74832
                        (let ((__tmp74833 (map __compile _body74497_)))
                          (declare (not safe))
                          (cons 'begin __tmp74833))))
                  (declare (not safe))
                  (__SRC__% __tmp74832 _stx74474_)))
              (let () (declare (not safe)) (_$E7447874484_))))))
    (define __compile-begin-foreign%
      (lambda (_stx74449_)
        (let* ((_$e74451_ _stx74449_)
               (_$E7445374459_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74451_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74451_))
              (let* ((_$tgt7445474462_
                      (let () (declare (not safe)) (__AST-e _$e74451_)))
                     (_$hd7445574465_
                      (let () (declare (not safe)) (##car _$tgt7445474462_)))
                     (_$tl7445674468_
                      (let () (declare (not safe)) (##cdr _$tgt7445474462_))))
                (let* ((_body74472_ _$tl7445674468_)
                       (__tmp74834
                        (let ((__tmp74835
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body74472_))))
                          (declare (not safe))
                          (cons 'begin __tmp74835))))
                  (declare (not safe))
                  (__SRC__% __tmp74834 _stx74449_)))
              (let () (declare (not safe)) (_$E7445374459_))))))
    (define __compile-import%
      (lambda (_stx74424_)
        (let* ((_$e74426_ _stx74424_)
               (_$E7442874434_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74426_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74426_))
              (let* ((_$tgt7442974437_
                      (let () (declare (not safe)) (__AST-e _$e74426_)))
                     (_$hd7443074440_
                      (let () (declare (not safe)) (##car _$tgt7442974437_)))
                     (_$tl7443174443_
                      (let () (declare (not safe)) (##cdr _$tgt7442974437_))))
                (let* ((_body74447_ _$tl7443174443_)
                       (__tmp74836
                        (let ((__tmp74837
                               (let ((__tmp74838
                                      (let ((__tmp74839
                                             (let ()
                                               (declare (not safe))
                                               (cons _body74447_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp74839))))
                                 (declare (not safe))
                                 (cons __tmp74838 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp74837))))
                  (declare (not safe))
                  (__SRC__% __tmp74836 _stx74424_)))
              (let () (declare (not safe)) (_$E7442874434_))))))
    (define __compile-begin-annotation%
      (lambda (_stx74371_)
        (let* ((_$e74373_ _stx74371_)
               (_$E7437574387_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74373_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74373_))
              (let* ((_$tgt7437674390_
                      (let () (declare (not safe)) (__AST-e _$e74373_)))
                     (_$hd7437774393_
                      (let () (declare (not safe)) (##car _$tgt7437674390_)))
                     (_$tl7437874396_
                      (let () (declare (not safe)) (##cdr _$tgt7437674390_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7437874396_))
                    (let* ((_$tgt7437974400_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7437874396_)))
                           (_$hd7438074403_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7437974400_)))
                           (_$tl7438174406_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7437974400_))))
                      (let ((_ann74410_ _$hd7438074403_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7438174406_))
                            (let* ((_$tgt7438274412_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7438174406_)))
                                   (_$hd7438374415_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7438274412_)))
                                   (_$tl7438474418_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7438274412_))))
                              (let ((_expr74422_ _$hd7438374415_))
                                (if (let ((__tmp74840
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7438474418_))))
                                      (declare (not safe))
                                      (equal? __tmp74840 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr74422_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7437574387_)))))
                            (let () (declare (not safe)) (_$E7437574387_)))))
                    (let () (declare (not safe)) (_$E7437574387_))))
              (let () (declare (not safe)) (_$E7437574387_))))))
    (define __compile-define-values%
      (lambda (_stx74262_)
        (let* ((_$e74264_ _stx74262_)
               (_$E7426674278_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74264_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74264_))
              (let* ((_$tgt7426774281_
                      (let () (declare (not safe)) (__AST-e _$e74264_)))
                     (_$hd7426874284_
                      (let () (declare (not safe)) (##car _$tgt7426774281_)))
                     (_$tl7426974287_
                      (let () (declare (not safe)) (##cdr _$tgt7426774281_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7426974287_))
                    (let* ((_$tgt7427074291_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7426974287_)))
                           (_$hd7427174294_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7427074291_)))
                           (_$tl7427274297_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7427074291_))))
                      (let ((_hd74301_ _$hd7427174294_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7427274297_))
                            (let* ((_$tgt7427374303_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7427274297_)))
                                   (_$hd7427474306_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7427374303_)))
                                   (_$tl7427574309_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7427374303_))))
                              (let ((_expr74313_ _$hd7427474306_))
                                (if (let ((__tmp74841
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7427574309_))))
                                      (declare (not safe))
                                      (equal? __tmp74841 '()))
                                    (let* ((_$e74315_ _hd74301_)
                                           (_$E7431774358_
                                            (lambda ()
                                              (let ((_$E7431874343_
                                                     (lambda ()
                                                       (let* ((_$E7431974330_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e74315_))))
                      (_ids74333_ _hd74301_)
                      (_len74335_ (length _ids74333_))
                      (_tmp74337_
                       (let ((__tmp74842 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp74842))))
                 (let ((__tmp74843
                        (let ((__tmp74844
                               (let ((__tmp74861
                                      (let ((__tmp74862
                                             (let ((__tmp74863
                                                    (let ((__tmp74864
                                                           (let ((__tmp74865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr74313_))))
                     (declare (not safe))
                     (cons __tmp74865 '()))))
              (declare (not safe))
              (cons _tmp74337_ __tmp74864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp74863))))
                                        (declare (not safe))
                                        (__SRC__% __tmp74862 _stx74262_)))
                                     (__tmp74845
                                      (let ((__tmp74857
                                             (let ((__tmp74858
                                                    (let ((__tmp74859
                                                           (let ((__tmp74860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len74335_ '()))))
                     (declare (not safe))
                     (cons _tmp74337_ __tmp74860))))
              (declare (not safe))
              (cons '__check-values __tmp74859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp74858
                                                _stx74262_)))
                                            (__tmp74846
                                             (let ((__tmp74847
                                                    (let ((__tmp74849
                                                           (lambda (_id74340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k74341_)
                     (if (let () (declare (not safe)) (__AST-e _id74340_))
                         (let ((__tmp74850
                                (let ((__tmp74851
                                       (let ((__tmp74856
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id74340_)))
                                             (__tmp74852
                                              (let ((__tmp74853
                                                     (let ((__tmp74854
                                                            (let ((__tmp74855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k74341_ '()))))
                      (declare (not safe))
                      (cons _tmp74337_ __tmp74855))))
               (declare (not safe))
               (cons '##vector-ref __tmp74854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74853 '()))))
                                         (declare (not safe))
                                         (cons __tmp74856 __tmp74852))))
                                  (declare (not safe))
                                  (cons 'define __tmp74851))))
                           (declare (not safe))
                           (__SRC__% __tmp74850 _stx74262_))
                         '#f)))
                  (__tmp74848 (iota _len74335_)))
              (declare (not safe))
              (filter-map2 __tmp74849 _ids74333_ __tmp74848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp74847))))
                                        (declare (not safe))
                                        (cons __tmp74857 __tmp74846))))
                                 (declare (not safe))
                                 (cons __tmp74861 __tmp74845))))
                          (declare (not safe))
                          (cons 'begin __tmp74844))))
                   (declare (not safe))
                   (__SRC__% __tmp74843 _stx74262_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e74315_))
                                                    (let* ((_$tgt7432074346_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e74315_)))
                                                           (_$hd7432174349_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7432074346_)))
                                                           (_$tl7432274352_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7432074346_))))
                                                      (let ((_id74356_
                                                             _$hd7432174349_))
                                                        (if (let ((__tmp74866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7432274352_))))
                      (declare (not safe))
                      (equal? __tmp74866 '()))
                    (let ((__tmp74867
                           (let ((__tmp74868
                                  (let ((__tmp74871
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id74356_)))
                                        (__tmp74869
                                         (let ((__tmp74870
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr74313_))))
                                           (declare (not safe))
                                           (cons __tmp74870 '()))))
                                    (declare (not safe))
                                    (cons __tmp74871 __tmp74869))))
                             (declare (not safe))
                             (cons 'define __tmp74868))))
                      (declare (not safe))
                      (__SRC__% __tmp74867 _stx74262_))
                    (let () (declare (not safe)) (_$E7431874343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7431874343_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e74315_))
                                          (let* ((_$tgt7432374361_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e74315_)))
                                                 (_$hd7432474364_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7432374361_)))
                                                 (_$tl7432574367_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7432374361_))))
                                            (if (let ((__tmp74872
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7432474364_))))
                                                  (declare (not safe))
                                                  (equal? __tmp74872 '#f))
                                                (if (let ((__tmp74873
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7432574367_))))
                                                      (declare (not safe))
                                                      (equal? __tmp74873 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr74313_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7431774358_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7431774358_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7431774358_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7426674278_)))))
                            (let () (declare (not safe)) (_$E7426674278_)))))
                    (let () (declare (not safe)) (_$E7426674278_))))
              (let () (declare (not safe)) (_$E7426674278_))))))
    (define __compile-head-id
      (lambda (_e74260_)
        (let ((__tmp74874
               (if (let () (declare (not safe)) (__AST-e _e74260_))
                   _e74260_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp74874))))
    (define __compile-lambda-head
      (lambda (_hd74217_)
        (let _recur74219_ ((_rest74221_ _hd74217_))
          (let* ((_$e74223_ _rest74221_)
                 (_$E7422574243_
                  (lambda ()
                    (let ((_$E7422674240_
                           (lambda ()
                             (let* ((_$E7422774235_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e74223_))))
                                    (_tail74238_ _$e74223_))
                               (declare (not safe))
                               (__compile-head-id _tail74238_)))))
                      (if (let ((__tmp74875
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e74223_))))
                            (declare (not safe))
                            (equal? __tmp74875 '()))
                          '()
                          (let () (declare (not safe)) (_$E7422674240_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e74223_))
                (let* ((_$tgt7422874246_
                        (let () (declare (not safe)) (__AST-e _$e74223_)))
                       (_$hd7422974249_
                        (let () (declare (not safe)) (##car _$tgt7422874246_)))
                       (_$tl7423074252_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7422874246_))))
                  (let* ((_hd74256_ _$hd7422974249_)
                         (_rest74258_ _$tl7423074252_))
                    (let ((__tmp74877
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd74256_)))
                          (__tmp74876
                           (let ()
                             (declare (not safe))
                             (_recur74219_ _rest74258_))))
                      (declare (not safe))
                      (cons __tmp74877 __tmp74876))))
                (let () (declare (not safe)) (_$E7422574243_)))))))
    (define __compile-lambda%
      (lambda (_stx74164_)
        (let* ((_$e74166_ _stx74164_)
               (_$E7416874180_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74166_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74166_))
              (let* ((_$tgt7416974183_
                      (let () (declare (not safe)) (__AST-e _$e74166_)))
                     (_$hd7417074186_
                      (let () (declare (not safe)) (##car _$tgt7416974183_)))
                     (_$tl7417174189_
                      (let () (declare (not safe)) (##cdr _$tgt7416974183_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7417174189_))
                    (let* ((_$tgt7417274193_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7417174189_)))
                           (_$hd7417374196_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7417274193_)))
                           (_$tl7417474199_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7417274193_))))
                      (let ((_hd74203_ _$hd7417374196_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7417474199_))
                            (let* ((_$tgt7417574205_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7417474199_)))
                                   (_$hd7417674208_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7417574205_)))
                                   (_$tl7417774211_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7417574205_))))
                              (let ((_body74215_ _$hd7417674208_))
                                (if (let ((__tmp74878
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7417774211_))))
                                      (declare (not safe))
                                      (equal? __tmp74878 '()))
                                    (let ((__tmp74879
                                           (let ((__tmp74880
                                                  (let ((__tmp74883
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd74203_)))
                                                        (__tmp74881
                                                         (let ((__tmp74882
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body74215_))))
                   (declare (not safe))
                   (cons __tmp74882 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74883
                                                          __tmp74881))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp74880))))
                                      (declare (not safe))
                                      (__SRC__% __tmp74879 _stx74164_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7416874180_)))))
                            (let () (declare (not safe)) (_$E7416874180_)))))
                    (let () (declare (not safe)) (_$E7416874180_))))
              (let () (declare (not safe)) (_$E7416874180_))))))
    (define __compile-case-lambda%
      (lambda (_stx73956_)
        (letrec ((_variadic?73958_
                  (lambda (_hd74129_)
                    (let* ((_$e74131_ _hd74129_)
                           (_$E7413374149_
                            (lambda ()
                              (let ((_$E7413474146_
                                     (lambda ()
                                       (let ((_$E7413574143_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e74131_)))))
                                         '#t))))
                                (if (let ((__tmp74884
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e74131_))))
                                      (declare (not safe))
                                      (equal? __tmp74884 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7413474146_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e74131_))
                          (let* ((_$tgt7413674152_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e74131_)))
                                 (_$hd7413774155_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7413674152_)))
                                 (_$tl7413874158_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7413674152_))))
                            (let ((_rest74162_ _$tl7413874158_))
                              (declare (not safe))
                              (_variadic?73958_ _rest74162_)))
                          (let () (declare (not safe)) (_$E7413374149_))))))
                 (_arity73959_
                  (lambda (_hd74094_)
                    (let _lp74096_ ((_rest74098_ _hd74094_) (_k74099_ '0))
                      (let* ((_$e74101_ _rest74098_)
                             (_$E7410374114_
                              (lambda ()
                                (let ((_$E7410474111_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e74101_)))))
                                  _k74099_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e74101_))
                            (let* ((_$tgt7410574117_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e74101_)))
                                   (_$hd7410674120_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7410574117_)))
                                   (_$tl7410774123_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7410574117_))))
                              (let* ((_rest74127_ _$tl7410774123_)
                                     (__tmp74885
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k74099_ '1))))
                                (declare (not safe))
                                (_lp74096_ _rest74127_ __tmp74885)))
                            (let () (declare (not safe)) (_$E7410374114_)))))))
                 (_generate73960_
                  (lambda (_rest74021_ _args74022_ _len74023_)
                    (let* ((_$e74025_ _rest74021_)
                           (_$E7402774038_
                            (lambda ()
                              (let* ((_$E7402874035_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e74025_))))
                                     (__tmp74886
                                      (let ((__tmp74887
                                             (let ((__tmp74888
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args74022_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp74888))))
                                        (declare (not safe))
                                        (cons 'error __tmp74887))))
                                (declare (not safe))
                                (__SRC__% __tmp74886 _stx73956_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e74025_))
                          (let* ((_$tgt7402974041_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e74025_)))
                                 (_$hd7403074044_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7402974041_)))
                                 (_$tl7403174047_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7402974041_))))
                            (let* ((_clause74051_ _$hd7403074044_)
                                   (_rest74053_ _$tl7403174047_)
                                   (_$e74055_ _clause74051_)
                                   (_$E7405774066_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e74055_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e74055_))
                                  (let* ((_$tgt7405874069_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e74055_)))
                                         (_$hd7405974072_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7405874069_)))
                                         (_$tl7406074075_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7405874069_))))
                                    (let ((_hd74079_ _$hd7405974072_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7406074075_))
                                          (let* ((_$tgt7406174081_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7406074075_)))
                                                 (_$hd7406274084_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7406174081_)))
                                                 (_$tl7406374087_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7406174081_))))
                                            (if (let ((__tmp74889
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7406374087_))))
                                                  (declare (not safe))
                                                  (equal? __tmp74889 '()))
                                                (let ((_clen74091_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity73959_
                                                          _hd74079_)))
                                                      (_cmp74092_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?73958_
                                                              _hd74079_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp74890
                                                         (let ((__tmp74891
                                                                (let ((__tmp74901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74902
                                      (let ((__tmp74903
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen74091_ '()))))
                                        (declare (not safe))
                                        (cons _len74023_ __tmp74903))))
                                 (declare (not safe))
                                 (cons _cmp74092_ __tmp74902)))
                              (__tmp74892
                               (let ((__tmp74895
                                      (let ((__tmp74896
                                             (let ((__tmp74897
                                                    (let ((__tmp74899
                                                           (let ((__tmp74900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause74051_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp74900)))
                  (__tmp74898
                   (let () (declare (not safe)) (cons _args74022_ '()))))
              (declare (not safe))
              (cons __tmp74899 __tmp74898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp74897))))
                                        (declare (not safe))
                                        (__SRC__% __tmp74896 _stx73956_)))
                                     (__tmp74893
                                      (let ((__tmp74894
                                             (let ()
                                               (declare (not safe))
                                               (_generate73960_
                                                _rest74053_
                                                _args74022_
                                                _len74023_))))
                                        (declare (not safe))
                                        (cons __tmp74894 '()))))
                                 (declare (not safe))
                                 (cons __tmp74895 __tmp74893))))
                          (declare (not safe))
                          (cons __tmp74901 __tmp74892))))
                   (declare (not safe))
                   (cons 'if __tmp74891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp74890
                                                     _stx73956_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7405774066_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7405774066_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7405774066_)))))
                          (let () (declare (not safe)) (_$E7402774038_)))))))
          (let* ((_$e73962_ _stx73956_)
                 (_$E7396473996_
                  (lambda ()
                    (let ((_$E7396573978_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e73962_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e73962_))
                          (let* ((_$tgt7396673981_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e73962_)))
                                 (_$hd7396773984_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7396673981_)))
                                 (_$tl7396873987_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7396673981_))))
                            (let ((_clauses73991_ _$tl7396873987_))
                              (let ((_args73993_
                                     (let ((__tmp74904 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp74904 _stx73956_)))
                                    (_len73994_
                                     (let ((__tmp74905 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp74905 _stx73956_))))
                                (let ((__tmp74906
                                       (let ((__tmp74907
                                              (let ((__tmp74908
                                                     (let ((__tmp74909
                                                            (let ((__tmp74910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp74911
                                  (let ((__tmp74914
                                         (let ((__tmp74915
                                                (let ((__tmp74916
                                                       (let ((__tmp74917
                                                              (let ((__tmp74918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp74919
                                    (let ()
                                      (declare (not safe))
                                      (cons _args73993_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp74919))))
                        (declare (not safe))
                        (__SRC__% __tmp74918 _stx73956_))))
                 (declare (not safe))
                 (cons __tmp74917 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len73994_
                                                        __tmp74916))))
                                           (declare (not safe))
                                           (cons __tmp74915 '())))
                                        (__tmp74912
                                         (let ((__tmp74913
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate73960_
                                                   _clauses73991_
                                                   _args73993_
                                                   _len73994_))))
                                           (declare (not safe))
                                           (cons __tmp74913 '()))))
                                    (declare (not safe))
                                    (cons __tmp74914 __tmp74912))))
                             (declare (not safe))
                             (cons 'let __tmp74911))))
                      (declare (not safe))
                      (__SRC__% __tmp74910 _stx73956_))))
               (declare (not safe))
               (cons __tmp74909 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args73993_
                                                      __tmp74908))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp74907))))
                                  (declare (not safe))
                                  (__SRC__% __tmp74906 _stx73956_)))))
                          (let () (declare (not safe)) (_$E7396573978_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e73962_))
                (let* ((_$tgt7396973999_
                        (let () (declare (not safe)) (__AST-e _$e73962_)))
                       (_$hd7397074002_
                        (let () (declare (not safe)) (##car _$tgt7396973999_)))
                       (_$tl7397174005_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7396973999_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7397174005_))
                      (let* ((_$tgt7397274009_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7397174005_)))
                             (_$hd7397374012_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7397274009_)))
                             (_$tl7397474015_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7397274009_))))
                        (let ((_clause74019_ _$hd7397374012_))
                          (if (let ((__tmp74920
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7397474015_))))
                                (declare (not safe))
                                (equal? __tmp74920 '()))
                              (let ((__tmp74921
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause74019_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp74921))
                              (let () (declare (not safe)) (_$E7396473996_)))))
                      (let () (declare (not safe)) (_$E7396473996_))))
                (let () (declare (not safe)) (_$E7396473996_)))))))
    (define __compile-let-form
      (lambda (_stx73725_ _compile-simple73726_ _compile-values73727_)
        (letrec ((_simple-bind?73729_
                  (lambda (_hd73914_)
                    (let* ((_hd7391573925_ _hd73914_)
                           (_else7391873933_ (lambda () '#f)))
                      (let ((_K7392173946_ (lambda (_id73944_) '#t))
                            (_K7392073938_ (lambda () '#t)))
                        (let ((_try-match7391773941_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7391573925_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7392073938_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7391873933_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7391573925_))
                              (let ((_tl7392373951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7391573925_)))
                                    (_hd7392273949_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7391573925_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7392373951_))
                                    (let ((_id73954_ _hd7392273949_))
                                      (declare (not safe))
                                      (_K7392173946_ _id73954_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7391773941_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7391773941_))))))))
                 (_car-e73730_
                  (lambda (_hd73912_)
                    (if (let () (declare (not safe)) (pair? _hd73912_))
                        (car _hd73912_)
                        _hd73912_))))
          (let* ((_$e73732_ _stx73725_)
                 (_$E7373473877_
                  (lambda ()
                    (let ((_$E7373573757_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e73732_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e73732_))
                          (let* ((_$tgt7373673760_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e73732_)))
                                 (_$hd7373773763_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7373673760_)))
                                 (_$tl7373873766_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7373673760_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7373873766_))
                                (let* ((_$tgt7373973770_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7373873766_)))
                                       (_$hd7374073773_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7373973770_)))
                                       (_$tl7374173776_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7373973770_))))
                                  (let ((_hd73780_ _$hd7374073773_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7374173776_))
                                        (let* ((_$tgt7374273782_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7374173776_)))
                                               (_$hd7374373785_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7374273782_)))
                                               (_$tl7374473788_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7374273782_))))
                                          (let ((_body73792_ _$hd7374373785_))
                                            (if (let ((__tmp74922
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7374473788_))))
                                                  (declare (not safe))
                                                  (equal? __tmp74922 '()))
                                                (let* ((_hd-ids73832_
                                                        (map (lambda (_bind73794_)
                                                               (let* ((_$e73796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind73794_)
                              (_$E7379873807_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e73796_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e73796_))
                             (let* ((_$tgt7379973810_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e73796_)))
                                    (_$hd7380073813_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7379973810_)))
                                    (_$tl7380173816_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7379973810_))))
                               (let ((_ids73820_ _$hd7380073813_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7380173816_))
                                     (let* ((_$tgt7380273822_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7380173816_)))
                                            (_$hd7380373825_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7380273822_)))
                                            (_$tl7380473828_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7380273822_))))
                                       (if (let ((__tmp74923
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7380473828_))))
                                             (declare (not safe))
                                             (equal? __tmp74923 '()))
                                           _ids73820_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7379873807_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7379873807_)))))
                             (let () (declare (not safe)) (_$E7379873807_)))))
                     _hd73780_))
               (_exprs73872_
                (map (lambda (_bind73834_)
                       (let* ((_$e73836_ _bind73834_)
                              (_$E7383873847_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e73836_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e73836_))
                             (let* ((_$tgt7383973850_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e73836_)))
                                    (_$hd7384073853_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7383973850_)))
                                    (_$tl7384173856_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7383973850_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7384173856_))
                                   (let* ((_$tgt7384273860_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7384173856_)))
                                          (_$hd7384373863_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7384273860_)))
                                          (_$tl7384473866_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7384273860_))))
                                     (let ((_expr73870_ _$hd7384373863_))
                                       (if (let ((__tmp74924
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7384473866_))))
                                             (declare (not safe))
                                             (equal? __tmp74924 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr73870_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7383873847_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7383873847_))))
                             (let () (declare (not safe)) (_$E7383873847_)))))
                     _hd73780_))
               (_body73874_
                (let () (declare (not safe)) (__compile _body73792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?73729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids73832_))
              (_compile-simple73726_
               (map _car-e73730_ _hd-ids73832_)
               _exprs73872_
               _body73874_)
              (_compile-values73727_ _hd-ids73832_ _exprs73872_ _body73874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7373573757_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7373573757_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7373573757_))))
                          (let () (declare (not safe)) (_$E7373573757_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e73732_))
                (let* ((_$tgt7374573880_
                        (let () (declare (not safe)) (__AST-e _$e73732_)))
                       (_$hd7374673883_
                        (let () (declare (not safe)) (##car _$tgt7374573880_)))
                       (_$tl7374773886_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7374573880_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7374773886_))
                      (let* ((_$tgt7374873890_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7374773886_)))
                             (_$hd7374973893_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7374873890_)))
                             (_$tl7375073896_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7374873890_))))
                        (if (let ((__tmp74925
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7374973893_))))
                              (declare (not safe))
                              (equal? __tmp74925 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7375073896_))
                                (let* ((_$tgt7375173900_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7375073896_)))
                                       (_$hd7375273903_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7375173900_)))
                                       (_$tl7375373906_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7375173900_))))
                                  (let ((_body73910_ _$hd7375273903_))
                                    (if (let ((__tmp74926
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7375373906_))))
                                          (declare (not safe))
                                          (equal? __tmp74926 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body73910_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7373473877_)))))
                                (let () (declare (not safe)) (_$E7373473877_)))
                            (let () (declare (not safe)) (_$E7373473877_))))
                      (let () (declare (not safe)) (_$E7373473877_))))
                (let () (declare (not safe)) (_$E7373473877_)))))))
    (define __compile-let-values%
      (lambda (_stx73540_)
        (letrec ((_compile-simple73542_
                  (lambda (_hd-ids73721_ _exprs73722_ _body73723_)
                    (let ((__tmp74927
                           (let ((__tmp74928
                                  (let ((__tmp74930
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids73721_)
                                              _exprs73722_))
                                        (__tmp74929
                                         (let ()
                                           (declare (not safe))
                                           (cons _body73723_ '()))))
                                    (declare (not safe))
                                    (cons __tmp74930 __tmp74929))))
                             (declare (not safe))
                             (cons 'let __tmp74928))))
                      (declare (not safe))
                      (__SRC__% __tmp74927 _stx73540_))))
                 (_compile-values73543_
                  (lambda (_hd-ids73639_ _exprs73640_ _body73641_)
                    (let _lp73643_ ((_rest73645_ _hd-ids73639_)
                                    (_exprs73646_ _exprs73640_)
                                    (_bind73647_ '())
                                    (_post73648_ '()))
                      (let* ((_rest7364973663_ _rest73645_)
                             (_else7365273671_
                              (lambda ()
                                (let ((__tmp74931
                                       (let ((__tmp74932
                                              (let ((__tmp74935
                                                     (reverse _bind73647_))
                                                    (__tmp74933
                                                     (let ((__tmp74934
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post73544_
                                                               _post73648_
                                                               _body73641_))))
                                                       (declare (not safe))
                                                       (cons __tmp74934 '()))))
                                                (declare (not safe))
                                                (cons __tmp74935 __tmp74933))))
                                         (declare (not safe))
                                         (cons 'let __tmp74932))))
                                  (declare (not safe))
                                  (__SRC__% __tmp74931 _stx73540_)))))
                        (let ((_K7365773704_
                               (lambda (_rest73701_ _id73702_)
                                 (let ((__tmp74941 (cdr _exprs73646_))
                                       (__tmp74936
                                        (let ((__tmp74937
                                               (let ((__tmp74940
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id73702_)))
                                                     (__tmp74938
                                                      (let ((__tmp74939
                                                             (car _exprs73646_)))
                                                        (declare (not safe))
                                                        (cons __tmp74939
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp74940
                                                       __tmp74938))))
                                          (declare (not safe))
                                          (cons __tmp74937 _bind73647_))))
                                   (declare (not safe))
                                   (_lp73643_
                                    _rest73701_
                                    __tmp74941
                                    __tmp74936
                                    _post73648_))))
                              (_K7365473686_
                               (lambda (_rest73675_ _hd73676_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd73676_))
                                     (let ((__tmp74949 (cdr _exprs73646_))
                                           (__tmp74942
                                            (let ((__tmp74943
                                                   (let ((__tmp74948
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd73676_)))
                                                         (__tmp74944
                                                          (let ((__tmp74945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74946
                                (let ((__tmp74947 (car _exprs73646_)))
                                  (declare (not safe))
                                  (cons __tmp74947 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp74946))))
                    (declare (not safe))
                    (cons __tmp74945 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp74948
                                                           __tmp74944))))
                                              (declare (not safe))
                                              (cons __tmp74943 _bind73647_))))
                                       (declare (not safe))
                                       (_lp73643_
                                        _rest73675_
                                        __tmp74949
                                        __tmp74942
                                        _post73648_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd73676_))
                                         (let* ((_len73678_ (length _hd73676_))
                                                (_tmp73680_
                                                 (let ((__tmp74950 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp74950))))
                                           (let ((__tmp74962
                                                  (cdr _exprs73646_))
                                                 (__tmp74958
                                                  (let ((__tmp74959
                                                         (let ((__tmp74960
                                                                (let ((__tmp74961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs73646_)))
                          (declare (not safe))
                          (cons __tmp74961 '()))))
                   (declare (not safe))
                   (cons _tmp73680_ __tmp74960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74959
                                                          _bind73647_)))
                                                 (__tmp74951
                                                  (let ((__tmp74952
                                                         (let ((__tmp74953
                                                                (let ((__tmp74954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74956
                                      (lambda (_id73683_ _k73684_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id73683_))
                                            (let ((__tmp74957
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id73683_))))
                                              (declare (not safe))
                                              (cons __tmp74957 _k73684_))
                                            '#f)))
                                     (__tmp74955 (iota _len73678_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp74956
                                  _hd73676_
                                  __tmp74955))))
                          (declare (not safe))
                          (cons _len73678_ __tmp74954))))
                   (declare (not safe))
                   (cons _tmp73680_ __tmp74953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74952
                                                          _post73648_))))
                                             (declare (not safe))
                                             (_lp73643_
                                              _rest73675_
                                              __tmp74962
                                              __tmp74958
                                              __tmp74951)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx73540_
                                            _hd73676_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7364973663_))
                              (let ((_tl7365973709_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7364973663_)))
                                    (_hd7365873707_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7364973663_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7365873707_))
                                    (let ((_tl7366173714_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7365873707_)))
                                          (_hd7366073712_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7365873707_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7366173714_))
                                          (let ((_id73717_ _hd7366073712_)
                                                (_rest73719_ _tl7365973709_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7365773704_
                                               _rest73719_
                                               _id73717_)))
                                          (let ((_hd73694_ _hd7365873707_)
                                                (_rest73696_ _tl7365973709_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7365473686_
                                               _rest73696_
                                               _hd73694_)))))
                                    (let ((_hd73694_ _hd7365873707_)
                                          (_rest73696_ _tl7365973709_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7365473686_
                                         _rest73696_
                                         _hd73694_)))))
                              (let ()
                                (declare (not safe))
                                (_else7365273671_))))))))
                 (_compile-post73544_
                  (lambda (_post73546_ _body73547_)
                    (let _lp73549_ ((_rest73551_ _post73546_)
                                    (_check73552_ '())
                                    (_bind73553_ '()))
                      (let* ((_rest7355473566_ _rest73551_)
                             (_else7355673574_
                              (lambda ()
                                (let ((__tmp74963
                                       (let ((__tmp74964
                                              (let ((__tmp74965
                                                     (let ((__tmp74966
                                                            (let ((__tmp74967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp74968
                                  (let ((__tmp74969
                                         (let ()
                                           (declare (not safe))
                                           (cons _body73547_ '()))))
                                    (declare (not safe))
                                    (cons _bind73553_ __tmp74969))))
                             (declare (not safe))
                             (cons 'let __tmp74968))))
                      (declare (not safe))
                      (__SRC__% __tmp74967 _stx73540_))))
               (declare (not safe))
               (cons __tmp74966 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp74965
                                                        _check73552_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp74964))))
                                  (declare (not safe))
                                  (__SRC__% __tmp74963 _stx73540_))))
                             (_K7355873613_
                              (lambda (_rest73577_
                                       _init73578_
                                       _len73579_
                                       _tmp73580_)
                                (let ((__tmp74977
                                       (let ((__tmp74978
                                              (let ((__tmp74979
                                                     (let ((__tmp74980
                                                            (let ((__tmp74981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len73579_ '()))))
                      (declare (not safe))
                      (cons _tmp73580_ __tmp74981))))
               (declare (not safe))
               (cons '__check-values __tmp74980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp74979
                                                 _stx73540_))))
                                         (declare (not safe))
                                         (cons __tmp74978 _check73552_)))
                                      (__tmp74970
                                       (let ((__tmp74971
                                              (lambda (_hd73582_ _r73583_)
                                                (let* ((_hd7358473591_
                                                        _hd73582_)
                                                       (_E7358673595_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7358473591_))))
               (_K7358773601_
                (lambda (_k73598_ _id73599_)
                  (let ((__tmp74972
                         (let ((__tmp74973
                                (let ((__tmp74974
                                       (let ((__tmp74975
                                              (let ((__tmp74976
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k73598_ '()))))
                                                (declare (not safe))
                                                (cons _tmp73580_ __tmp74976))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp74975))))
                                  (declare (not safe))
                                  (cons __tmp74974 '()))))
                           (declare (not safe))
                           (cons _id73599_ __tmp74973))))
                    (declare (not safe))
                    (cons __tmp74972 _r73583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7358473591_))
                                                      (let ((_hd7358873604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7358473591_)))
                    (_tl7358973606_
                     (let () (declare (not safe)) (##cdr _hd7358473591_))))
                (let* ((_id73609_ _hd7358873604_) (_k73611_ _tl7358973606_))
                  (declare (not safe))
                  (_K7358773601_ _k73611_ _id73609_)))
              (let () (declare (not safe)) (_E7358673595_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp74971
                                                 _bind73553_
                                                 _init73578_))))
                                  (declare (not safe))
                                  (_lp73549_
                                   _rest73577_
                                   __tmp74977
                                   __tmp74970)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7355473566_))
                            (let ((_hd7355973616_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7355473566_)))
                                  (_tl7356073618_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7355473566_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7355973616_))
                                  (let ((_hd7356173621_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7355973616_)))
                                        (_tl7356273623_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7355973616_))))
                                    (let ((_tmp73626_ _hd7356173621_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7356273623_))
                                          (let ((_hd7356373628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7356273623_)))
                                                (_tl7356473630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7356273623_))))
                                            (let* ((_len73633_ _hd7356373628_)
                                                   (_init73635_ _tl7356473630_)
                                                   (_rest73637_
                                                    _tl7356073618_))
                                              (declare (not safe))
                                              (_K7355873613_
                                               _rest73637_
                                               _init73635_
                                               _len73633_
                                               _tmp73626_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7355673574_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7355673574_))))
                            (let ()
                              (declare (not safe))
                              (_else7355673574_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx73540_
             _compile-simple73542_
             _compile-values73543_)))))
    (define __compile-letrec-values%
      (lambda (_stx73340_)
        (letrec ((_compile-simple73342_
                  (lambda (_hd-ids73536_ _exprs73537_ _body73538_)
                    (let ((__tmp74982
                           (let ((__tmp74983
                                  (let ((__tmp74985
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids73536_)
                                              _exprs73537_))
                                        (__tmp74984
                                         (let ()
                                           (declare (not safe))
                                           (cons _body73538_ '()))))
                                    (declare (not safe))
                                    (cons __tmp74985 __tmp74984))))
                             (declare (not safe))
                             (cons 'letrec __tmp74983))))
                      (declare (not safe))
                      (__SRC__% __tmp74982 _stx73340_))))
                 (_compile-values73343_
                  (lambda (_hd-ids73450_ _exprs73451_ _body73452_)
                    (let _lp73454_ ((_rest73456_ _hd-ids73450_)
                                    (_exprs73457_ _exprs73451_)
                                    (_pre73458_ '())
                                    (_bind73459_ '())
                                    (_post73460_ '()))
                      (let* ((_rest7346173475_ _rest73456_)
                             (_else7346473483_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner73344_
                                   _pre73458_
                                   _bind73459_
                                   _post73460_
                                   _body73452_)))))
                        (let ((_K7346973519_
                               (lambda (_rest73516_ _id73517_)
                                 (let ((__tmp74991 (cdr _exprs73457_))
                                       (__tmp74986
                                        (let ((__tmp74987
                                               (let ((__tmp74990
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id73517_)))
                                                     (__tmp74988
                                                      (let ((__tmp74989
                                                             (car _exprs73457_)))
                                                        (declare (not safe))
                                                        (cons __tmp74989
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp74990
                                                       __tmp74988))))
                                          (declare (not safe))
                                          (cons __tmp74987 _bind73459_))))
                                   (declare (not safe))
                                   (_lp73454_
                                    _rest73516_
                                    __tmp74991
                                    _pre73458_
                                    __tmp74986
                                    _post73460_))))
                              (_K7346673501_
                               (lambda (_rest73487_ _hd73488_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd73488_))
                                     (let ((__tmp74999 (cdr _exprs73457_))
                                           (__tmp74992
                                            (let ((__tmp74993
                                                   (let ((__tmp74998
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd73488_)))
                                                         (__tmp74994
                                                          (let ((__tmp74995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74996
                                (let ((__tmp74997 (car _exprs73457_)))
                                  (declare (not safe))
                                  (cons __tmp74997 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp74996))))
                    (declare (not safe))
                    (cons __tmp74995 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp74998
                                                           __tmp74994))))
                                              (declare (not safe))
                                              (cons __tmp74993 _bind73459_))))
                                       (declare (not safe))
                                       (_lp73454_
                                        _rest73487_
                                        __tmp74999
                                        _pre73458_
                                        __tmp74992
                                        _post73460_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd73488_))
                                         (let* ((_len73490_ (length _hd73488_))
                                                (_tmp73492_
                                                 (let ((__tmp75000 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp75000))))
                                           (let ((__tmp75019
                                                  (cdr _exprs73457_))
                                                 (__tmp75012
                                                  (let ((__tmp75013
                                                         (lambda (_id73495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r73496_)
                   (if (let () (declare (not safe)) (__AST-e _id73495_))
                       (let ((__tmp75014
                              (let ((__tmp75018
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id73495_)))
                                    (__tmp75015
                                     (let ((__tmp75016
                                            (let ((__tmp75017
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp75017))))
                                       (declare (not safe))
                                       (cons __tmp75016 '()))))
                                (declare (not safe))
                                (cons __tmp75018 __tmp75015))))
                         (declare (not safe))
                         (cons __tmp75014 _r73496_))
                       _r73496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp75013
                                                            _pre73458_
                                                            _hd73488_)))
                                                 (__tmp75008
                                                  (let ((__tmp75009
                                                         (let ((__tmp75010
                                                                (let ((__tmp75011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs73457_)))
                          (declare (not safe))
                          (cons __tmp75011 '()))))
                   (declare (not safe))
                   (cons _tmp73492_ __tmp75010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp75009
                                                          _bind73459_)))
                                                 (__tmp75001
                                                  (let ((__tmp75002
                                                         (let ((__tmp75003
                                                                (let ((__tmp75004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp75006
                                      (lambda (_id73498_ _k73499_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id73498_))
                                            (let ((__tmp75007
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id73498_))))
                                              (declare (not safe))
                                              (cons __tmp75007 _k73499_))
                                            '#f)))
                                     (__tmp75005 (iota _len73490_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp75006
                                  _hd73488_
                                  __tmp75005))))
                          (declare (not safe))
                          (cons _len73490_ __tmp75004))))
                   (declare (not safe))
                   (cons _tmp73492_ __tmp75003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp75002
                                                          _post73460_))))
                                             (declare (not safe))
                                             (_lp73454_
                                              _rest73487_
                                              __tmp75019
                                              __tmp75012
                                              __tmp75008
                                              __tmp75001)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx73340_
                                            _hd73488_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7346173475_))
                              (let ((_tl7347173524_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7346173475_)))
                                    (_hd7347073522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7346173475_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7347073522_))
                                    (let ((_tl7347373529_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7347073522_)))
                                          (_hd7347273527_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7347073522_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7347373529_))
                                          (let ((_id73532_ _hd7347273527_)
                                                (_rest73534_ _tl7347173524_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7346973519_
                                               _rest73534_
                                               _id73532_)))
                                          (let ((_hd73509_ _hd7347073522_)
                                                (_rest73511_ _tl7347173524_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7346673501_
                                               _rest73511_
                                               _hd73509_)))))
                                    (let ((_hd73509_ _hd7347073522_)
                                          (_rest73511_ _tl7347173524_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7346673501_
                                         _rest73511_
                                         _hd73509_)))))
                              (let ()
                                (declare (not safe))
                                (_else7346473483_))))))))
                 (_compile-inner73344_
                  (lambda (_pre73445_ _bind73446_ _post73447_ _body73448_)
                    (if (let () (declare (not safe)) (null? _pre73445_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind73345_
                           _bind73446_
                           _post73447_
                           _body73448_))
                        (let ((__tmp75020
                               (let ((__tmp75021
                                      (let ((__tmp75024 (reverse _pre73445_))
                                            (__tmp75022
                                             (let ((__tmp75023
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind73345_
                                                       _bind73446_
                                                       _post73447_
                                                       _body73448_))))
                                               (declare (not safe))
                                               (cons __tmp75023 '()))))
                                        (declare (not safe))
                                        (cons __tmp75024 __tmp75022))))
                                 (declare (not safe))
                                 (cons 'let __tmp75021))))
                          (declare (not safe))
                          (__SRC__% __tmp75020 _stx73340_)))))
                 (_compile-bind73345_
                  (lambda (_bind73441_ _post73442_ _body73443_)
                    (let ((__tmp75025
                           (let ((__tmp75026
                                  (let ((__tmp75029 (reverse _bind73441_))
                                        (__tmp75027
                                         (let ((__tmp75028
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post73346_
                                                   _post73442_
                                                   _body73443_))))
                                           (declare (not safe))
                                           (cons __tmp75028 '()))))
                                    (declare (not safe))
                                    (cons __tmp75029 __tmp75027))))
                             (declare (not safe))
                             (cons 'letrec __tmp75026))))
                      (declare (not safe))
                      (__SRC__% __tmp75025 _stx73340_))))
                 (_compile-post73346_
                  (lambda (_post73348_ _body73349_)
                    (let _lp73351_ ((_rest73353_ _post73348_)
                                    (_check73354_ '())
                                    (_bind73355_ '()))
                      (let* ((_rest7335673368_ _rest73353_)
                             (_else7335873376_
                              (lambda ()
                                (let ((__tmp75030
                                       (let ((__tmp75031
                                              (let ((__tmp75032
                                                     (let ((__tmp75033
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body73349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp75033 _bind73355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp75032
                                                        _check73354_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp75031))))
                                  (declare (not safe))
                                  (__SRC__% __tmp75030 _stx73340_))))
                             (_K7336073415_
                              (lambda (_rest73379_
                                       _init73380_
                                       _len73381_
                                       _tmp73382_)
                                (let ((__tmp75042
                                       (let ((__tmp75043
                                              (let ((__tmp75044
                                                     (let ((__tmp75045
                                                            (let ((__tmp75046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len73381_ '()))))
                      (declare (not safe))
                      (cons _tmp73382_ __tmp75046))))
               (declare (not safe))
               (cons '__check-values __tmp75045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp75044
                                                 _stx73340_))))
                                         (declare (not safe))
                                         (cons __tmp75043 _check73354_)))
                                      (__tmp75034
                                       (let ((__tmp75035
                                              (lambda (_hd73384_ _r73385_)
                                                (let* ((_hd7338673393_
                                                        _hd73384_)
                                                       (_E7338873397_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7338673393_))))
               (_K7338973403_
                (lambda (_k73400_ _id73401_)
                  (let ((__tmp75036
                         (let ((__tmp75037
                                (let ((__tmp75038
                                       (let ((__tmp75039
                                              (let ((__tmp75040
                                                     (let ((__tmp75041
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k73400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp73382_ __tmp75041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp75040))))
                                         (declare (not safe))
                                         (cons __tmp75039 '()))))
                                  (declare (not safe))
                                  (cons _id73401_ __tmp75038))))
                           (declare (not safe))
                           (cons 'set! __tmp75037))))
                    (declare (not safe))
                    (cons __tmp75036 _r73385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7338673393_))
                                                      (let ((_hd7339073406_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7338673393_)))
                    (_tl7339173408_
                     (let () (declare (not safe)) (##cdr _hd7338673393_))))
                (let* ((_id73411_ _hd7339073406_) (_k73413_ _tl7339173408_))
                  (declare (not safe))
                  (_K7338973403_ _k73413_ _id73411_)))
              (let () (declare (not safe)) (_E7338873397_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp75035
                                                 _bind73355_
                                                 _init73380_))))
                                  (declare (not safe))
                                  (_lp73351_
                                   _rest73379_
                                   __tmp75042
                                   __tmp75034)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7335673368_))
                            (let ((_hd7336173418_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7335673368_)))
                                  (_tl7336273420_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7335673368_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7336173418_))
                                  (let ((_hd7336373423_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7336173418_)))
                                        (_tl7336473425_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7336173418_))))
                                    (let ((_tmp73428_ _hd7336373423_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7336473425_))
                                          (let ((_hd7336573430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7336473425_)))
                                                (_tl7336673432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7336473425_))))
                                            (let* ((_len73435_ _hd7336573430_)
                                                   (_init73437_ _tl7336673432_)
                                                   (_rest73439_
                                                    _tl7336273420_))
                                              (declare (not safe))
                                              (_K7336073415_
                                               _rest73439_
                                               _init73437_
                                               _len73435_
                                               _tmp73428_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7335873376_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7335873376_))))
                            (let ()
                              (declare (not safe))
                              (_else7335873376_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx73340_
             _compile-simple73342_
             _compile-values73343_)))))
    (define __compile-letrec*-values%
      (lambda (_stx73095_)
        (letrec ((_compile-simple73097_
                  (lambda (_hd-ids73336_ _exprs73337_ _body73338_)
                    (let ((__tmp75047
                           (let ((__tmp75048
                                  (let ((__tmp75050
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids73336_)
                                              _exprs73337_))
                                        (__tmp75049
                                         (let ()
                                           (declare (not safe))
                                           (cons _body73338_ '()))))
                                    (declare (not safe))
                                    (cons __tmp75050 __tmp75049))))
                             (declare (not safe))
                             (cons 'letrec* __tmp75048))))
                      (declare (not safe))
                      (__SRC__% __tmp75047 _stx73095_))))
                 (_compile-values73098_
                  (lambda (_hd-ids73247_ _exprs73248_ _body73249_)
                    (let _lp73251_ ((_rest73253_ _hd-ids73247_)
                                    (_exprs73254_ _exprs73248_)
                                    (_bind73255_ '())
                                    (_post73256_ '()))
                      (let* ((_rest7325773271_ _rest73253_)
                             (_else7326073279_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind73099_
                                   _bind73255_
                                   _post73256_
                                   _body73249_)))))
                        (let ((_K7326573319_
                               (lambda (_rest73314_ _hd73315_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd73315_))
                                     (let ((_id73317_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd73315_))))
                                       (let ((__tmp75060 (cdr _exprs73254_))
                                             (__tmp75055
                                              (let ((__tmp75056
                                                     (let ((__tmp75057
                                                            (let ((__tmp75058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp75059
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp75059))))
                      (declare (not safe))
                      (cons __tmp75058 '()))))
               (declare (not safe))
               (cons _id73317_ __tmp75057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75056 _bind73255_)))
                                             (__tmp75051
                                              (let ((__tmp75052
                                                     (let ((__tmp75053
                                                            (let ((__tmp75054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs73254_)))
                      (declare (not safe))
                      (cons __tmp75054 '()))))
               (declare (not safe))
               (cons _id73317_ __tmp75053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75052
                                                      _post73256_))))
                                         (declare (not safe))
                                         (_lp73251_
                                          _rest73314_
                                          __tmp75060
                                          __tmp75055
                                          __tmp75051)))
                                     (let ((__tmp75065 (cdr _exprs73254_))
                                           (__tmp75061
                                            (let ((__tmp75062
                                                   (let ((__tmp75063
                                                          (let ((__tmp75064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs73254_)))
                    (declare (not safe))
                    (cons __tmp75064 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp75063))))
                                              (declare (not safe))
                                              (cons __tmp75062 _post73256_))))
                                       (declare (not safe))
                                       (_lp73251_
                                        _rest73314_
                                        __tmp75065
                                        _bind73255_
                                        __tmp75061)))))
                              (_K7326273299_
                               (lambda (_rest73283_ _hd73284_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd73284_))
                                     (let ((_id73286_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd73284_))))
                                       (let ((__tmp75077 (cdr _exprs73254_))
                                             (__tmp75072
                                              (let ((__tmp75073
                                                     (let ((__tmp75074
                                                            (let ((__tmp75075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp75076
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp75076))))
                      (declare (not safe))
                      (cons __tmp75075 '()))))
               (declare (not safe))
               (cons _id73286_ __tmp75074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75073 _bind73255_)))
                                             (__tmp75066
                                              (let ((__tmp75067
                                                     (let ((__tmp75068
                                                            (let ((__tmp75069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp75070
                                  (let ((__tmp75071 (car _exprs73254_)))
                                    (declare (not safe))
                                    (cons __tmp75071 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp75070))))
                      (declare (not safe))
                      (cons __tmp75069 '()))))
               (declare (not safe))
               (cons _id73286_ __tmp75068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp75067
                                                      _post73256_))))
                                         (declare (not safe))
                                         (_lp73251_
                                          _rest73283_
                                          __tmp75077
                                          __tmp75072
                                          __tmp75066)))
                                     (if (let ((__tmp75078
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd73284_))))
                                           (declare (not safe))
                                           (not __tmp75078))
                                         (let ((__tmp75083 (cdr _exprs73254_))
                                               (__tmp75079
                                                (let ((__tmp75080
                                                       (let ((__tmp75081
                                                              (let ((__tmp75082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs73254_)))
                        (declare (not safe))
                        (cons __tmp75082 '()))))
                 (declare (not safe))
                 (cons '#f __tmp75081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp75080
                                                        _post73256_))))
                                           (declare (not safe))
                                           (_lp73251_
                                            _rest73283_
                                            __tmp75083
                                            _bind73255_
                                            __tmp75079))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd73284_))
                                             (let* ((_len73288_
                                                     (length _hd73284_))
                                                    (_tmp73290_
                                                     (let ((__tmp75084
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp75084))))
                                               (let ((__tmp75101
                                                      (cdr _exprs73254_))
                                                     (__tmp75094
                                                      (let ((__tmp75095
                                                             (lambda (_id73293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r73294_)
                       (if (let () (declare (not safe)) (__AST-e _id73293_))
                           (let ((__tmp75096
                                  (let ((__tmp75100
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id73293_)))
                                        (__tmp75097
                                         (let ((__tmp75098
                                                (let ((__tmp75099
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp75099))))
                                           (declare (not safe))
                                           (cons __tmp75098 '()))))
                                    (declare (not safe))
                                    (cons __tmp75100 __tmp75097))))
                             (declare (not safe))
                             (cons __tmp75096 _r73294_))
                           _r73294_))))
                (declare (not safe))
                (foldl1 __tmp75095 _bind73255_ _hd73284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp75085
                                                      (let ((__tmp75086
                                                             (let ((__tmp75087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp75093 (car _exprs73254_))
                                  (__tmp75088
                                   (let ((__tmp75089
                                          (let ((__tmp75091
                                                 (lambda (_id73296_ _k73297_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id73296_))
                                                       (let ((__tmp75092
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id73296_))))
                 (declare (not safe))
                 (cons __tmp75092 _k73297_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp75090 (iota _len73288_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp75091
                                             _hd73284_
                                             __tmp75090))))
                                     (declare (not safe))
                                     (cons _len73288_ __tmp75089))))
                              (declare (not safe))
                              (cons __tmp75093 __tmp75088))))
                       (declare (not safe))
                       (cons _tmp73290_ __tmp75087))))
                (declare (not safe))
                (cons __tmp75086 _post73256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp73251_
                                                  _rest73283_
                                                  __tmp75101
                                                  __tmp75094
                                                  __tmp75085)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx73095_
                                                _hd73284_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7325773271_))
                              (let ((_tl7326773324_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7325773271_)))
                                    (_hd7326673322_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7325773271_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7326673322_))
                                    (let ((_tl7326973329_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7326673322_)))
                                          (_hd7326873327_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7326673322_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7326973329_))
                                          (let ((_hd73332_ _hd7326873327_)
                                                (_rest73334_ _tl7326773324_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7326573319_
                                               _rest73334_
                                               _hd73332_)))
                                          (let ((_hd73307_ _hd7326673322_)
                                                (_rest73309_ _tl7326773324_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7326273299_
                                               _rest73309_
                                               _hd73307_)))))
                                    (let ((_hd73307_ _hd7326673322_)
                                          (_rest73309_ _tl7326773324_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7326273299_
                                         _rest73309_
                                         _hd73307_)))))
                              (let ()
                                (declare (not safe))
                                (_else7326073279_))))))))
                 (_compile-bind73099_
                  (lambda (_bind73243_ _post73244_ _body73245_)
                    (let ((__tmp75102
                           (let ((__tmp75103
                                  (let ((__tmp75106 (reverse _bind73243_))
                                        (__tmp75104
                                         (let ((__tmp75105
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post73100_
                                                   _post73244_
                                                   _body73245_))))
                                           (declare (not safe))
                                           (cons __tmp75105 '()))))
                                    (declare (not safe))
                                    (cons __tmp75106 __tmp75104))))
                             (declare (not safe))
                             (cons 'let __tmp75103))))
                      (declare (not safe))
                      (__SRC__% __tmp75102 _stx73095_))))
                 (_compile-post73100_
                  (lambda (_post73102_ _body73103_)
                    (let ((__tmp75107
                           (let ((__tmp75108
                                  (let ((__tmp75109
                                         (let ((__tmp75111
                                                (lambda (_hd73105_ _r73106_)
                                                  (let* ((_hd7310773130_
                                                          _hd73105_)
                                                         (_E7311173134_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7310773130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7312473228_
                                                           (lambda (_expr73226_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr73226_ _r73106_))))
                  (_K7311973206_
                   (lambda (_expr73203_ _id73204_)
                     (let ((__tmp75112
                            (let ((__tmp75113
                                   (let ((__tmp75114
                                          (let ((__tmp75115
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr73203_ '()))))
                                            (declare (not safe))
                                            (cons _id73204_ __tmp75115))))
                                     (declare (not safe))
                                     (cons 'set! __tmp75114))))
                              (declare (not safe))
                              (__SRC__% __tmp75113 _stx73095_))))
                       (declare (not safe))
                       (cons __tmp75112 _r73106_))))
                  (_K7311273173_
                   (lambda (_init73138_ _len73139_ _expr73140_ _tmp73141_)
                     (let ((__tmp75116
                            (let ((__tmp75117
                                   (let ((__tmp75118
                                          (let ((__tmp75132
                                                 (let ((__tmp75133
                                                        (let ((__tmp75134
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr73140_ '()))))
                  (declare (not safe))
                  (cons _tmp73141_ __tmp75134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp75133 '())))
                                                (__tmp75119
                                                 (let ((__tmp75128
                                                        (let ((__tmp75129
                                                               (let ((__tmp75130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp75131
                                     (let ()
                                       (declare (not safe))
                                       (cons _len73139_ '()))))
                                (declare (not safe))
                                (cons _tmp73141_ __tmp75131))))
                         (declare (not safe))
                         (cons '__check-values __tmp75130))))
                  (declare (not safe))
                  (__SRC__% __tmp75129 _stx73095_)))
               (__tmp75120
                (let ((__tmp75121
                       (map (lambda (_hd73143_)
                              (let* ((_hd7314473151_ _hd73143_)
                                     (_E7314673155_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7314473151_))))
                                     (_K7314773161_
                                      (lambda (_k73158_ _id73159_)
                                        (let ((__tmp75122
                                               (let ((__tmp75123
                                                      (let ((__tmp75124
                                                             (let ((__tmp75125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp75126
                                   (let ((__tmp75127
                                          (let ()
                                            (declare (not safe))
                                            (cons _k73158_ '()))))
                                     (declare (not safe))
                                     (cons _tmp73141_ __tmp75127))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp75126))))
                       (declare (not safe))
                       (cons __tmp75125 '()))))
                (declare (not safe))
                (cons _id73159_ __tmp75124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp75123))))
                                          (declare (not safe))
                                          (__SRC__% __tmp75122 _stx73095_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7314473151_))
                                    (let ((_hd7314873164_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7314473151_)))
                                          (_tl7314973166_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7314473151_))))
                                      (let* ((_id73169_ _hd7314873164_)
                                             (_k73171_ _tl7314973166_))
                                        (declare (not safe))
                                        (_K7314773161_ _k73171_ _id73169_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7314673155_)))))
                            _init73138_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp75121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp75128
                                                         __tmp75120))))
                                            (declare (not safe))
                                            (cons __tmp75132 __tmp75119))))
                                     (declare (not safe))
                                     (cons 'let __tmp75118))))
                              (declare (not safe))
                              (__SRC__% __tmp75117 _stx73095_))))
                       (declare (not safe))
                       (cons __tmp75116 _r73106_)))))
              (if (let () (declare (not safe)) (##pair? _hd7310773130_))
                  (let ((_tl7312673233_
                         (let () (declare (not safe)) (##cdr _hd7310773130_)))
                        (_hd7312573231_
                         (let () (declare (not safe)) (##car _hd7310773130_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7312573231_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7312673233_))
                            (let ((_tl7312873238_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7312673233_)))
                                  (_hd7312773236_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7312673233_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7312873238_))
                                  (let ((_expr73241_ _hd7312773236_))
                                    (declare (not safe))
                                    (_K7312473228_ _expr73241_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7312873238_))
                                      (let ((_tl7311873192_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7312873238_)))
                                            (_hd7311773190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7312873238_))))
                                        (let ((_tmp73181_ _hd7312573231_)
                                              (_expr73188_ _hd7312773236_)
                                              (_len73195_ _hd7311773190_)
                                              (_init73197_ _tl7311873192_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7311273173_
                                             _init73197_
                                             _len73195_
                                             _expr73188_
                                             _tmp73181_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7311173134_)))))
                            (let () (declare (not safe)) (_E7311173134_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7312673233_))
                            (let ((_tl7312373218_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7312673233_)))
                                  (_hd7312273216_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7312673233_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7312373218_))
                                  (let ((_id73214_ _hd7312573231_)
                                        (_expr73221_ _hd7312273216_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7311973206_ _expr73221_ _id73214_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7312373218_))
                                      (let ((_tl7311873192_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7312373218_)))
                                            (_hd7311773190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7312373218_))))
                                        (let ((_tmp73181_ _hd7312573231_)
                                              (_expr73188_ _hd7312273216_)
                                              (_len73195_ _hd7311773190_)
                                              (_init73197_ _tl7311873192_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7311273173_
                                             _init73197_
                                             _len73195_
                                             _expr73188_
                                             _tmp73181_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7311173134_)))))
                            (let () (declare (not safe)) (_E7311173134_)))))
                  (let () (declare (not safe)) (_E7311173134_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp75110 (list _body73103_)))
                                           (declare (not safe))
                                           (foldl1 __tmp75111
                                                   __tmp75110
                                                   _post73102_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp75109))))
                             (declare (not safe))
                             (cons 'begin __tmp75108))))
                      (declare (not safe))
                      (__SRC__% __tmp75107 _stx73095_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx73095_
             _compile-simple73097_
             _compile-values73098_)))))
    (define __compile-call%
      (lambda (_stx73055_)
        (let* ((_$e73057_ _stx73055_)
               (_$E7305973068_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e73057_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e73057_))
              (let* ((_$tgt7306073071_
                      (let () (declare (not safe)) (__AST-e _$e73057_)))
                     (_$hd7306173074_
                      (let () (declare (not safe)) (##car _$tgt7306073071_)))
                     (_$tl7306273077_
                      (let () (declare (not safe)) (##cdr _$tgt7306073071_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7306273077_))
                    (let* ((_$tgt7306373081_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7306273077_)))
                           (_$hd7306473084_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7306373081_)))
                           (_$tl7306573087_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7306373081_))))
                      (let* ((_rator73091_ _$hd7306473084_)
                             (_rands73093_ _$tl7306573087_)
                             (__tmp75135
                              (let ((__tmp75137
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator73091_)))
                                    (__tmp75136 (map __compile _rands73093_)))
                                (declare (not safe))
                                (cons __tmp75137 __tmp75136))))
                        (declare (not safe))
                        (__SRC__% __tmp75135 _stx73055_)))
                    (let () (declare (not safe)) (_$E7305973068_))))
              (let () (declare (not safe)) (_$E7305973068_))))))
    (define __compile-ref%
      (lambda (_stx73017_)
        (let* ((_$e73019_ _stx73017_)
               (_$E7302173030_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e73019_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e73019_))
              (let* ((_$tgt7302273033_
                      (let () (declare (not safe)) (__AST-e _$e73019_)))
                     (_$hd7302373036_
                      (let () (declare (not safe)) (##car _$tgt7302273033_)))
                     (_$tl7302473039_
                      (let () (declare (not safe)) (##cdr _$tgt7302273033_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7302473039_))
                    (let* ((_$tgt7302573043_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7302473039_)))
                           (_$hd7302673046_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7302573043_)))
                           (_$tl7302773049_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7302573043_))))
                      (let ((_id73053_ _$hd7302673046_))
                        (if (let ((__tmp75138
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7302773049_))))
                              (declare (not safe))
                              (equal? __tmp75138 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id73053_ _stx73017_))
                            (let () (declare (not safe)) (_$E7302173030_)))))
                    (let () (declare (not safe)) (_$E7302173030_))))
              (let () (declare (not safe)) (_$E7302173030_))))))
    (define __compile-setq%
      (lambda (_stx72964_)
        (let* ((_$e72966_ _stx72964_)
               (_$E7296872980_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72966_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72966_))
              (let* ((_$tgt7296972983_
                      (let () (declare (not safe)) (__AST-e _$e72966_)))
                     (_$hd7297072986_
                      (let () (declare (not safe)) (##car _$tgt7296972983_)))
                     (_$tl7297172989_
                      (let () (declare (not safe)) (##cdr _$tgt7296972983_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7297172989_))
                    (let* ((_$tgt7297272993_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7297172989_)))
                           (_$hd7297372996_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7297272993_)))
                           (_$tl7297472999_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7297272993_))))
                      (let ((_id73003_ _$hd7297372996_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7297472999_))
                            (let* ((_$tgt7297573005_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7297472999_)))
                                   (_$hd7297673008_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7297573005_)))
                                   (_$tl7297773011_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7297573005_))))
                              (let ((_expr73015_ _$hd7297673008_))
                                (if (let ((__tmp75139
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7297773011_))))
                                      (declare (not safe))
                                      (equal? __tmp75139 '()))
                                    (let ((__tmp75140
                                           (let ((__tmp75141
                                                  (let ((__tmp75144
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id73003_
                                                            _stx72964_)))
                                                        (__tmp75142
                                                         (let ((__tmp75143
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr73015_))))
                   (declare (not safe))
                   (cons __tmp75143 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp75144
                                                          __tmp75142))))
                                             (declare (not safe))
                                             (cons 'set! __tmp75141))))
                                      (declare (not safe))
                                      (__SRC__% __tmp75140 _stx72964_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7296872980_)))))
                            (let () (declare (not safe)) (_$E7296872980_)))))
                    (let () (declare (not safe)) (_$E7296872980_))))
              (let () (declare (not safe)) (_$E7296872980_))))))
    (define __compile-if%
      (lambda (_stx72896_)
        (let* ((_$e72898_ _stx72896_)
               (_$E7290072915_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72898_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72898_))
              (let* ((_$tgt7290172918_
                      (let () (declare (not safe)) (__AST-e _$e72898_)))
                     (_$hd7290272921_
                      (let () (declare (not safe)) (##car _$tgt7290172918_)))
                     (_$tl7290372924_
                      (let () (declare (not safe)) (##cdr _$tgt7290172918_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7290372924_))
                    (let* ((_$tgt7290472928_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7290372924_)))
                           (_$hd7290572931_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7290472928_)))
                           (_$tl7290672934_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7290472928_))))
                      (let ((_p72938_ _$hd7290572931_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7290672934_))
                            (let* ((_$tgt7290772940_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7290672934_)))
                                   (_$hd7290872943_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7290772940_)))
                                   (_$tl7290972946_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7290772940_))))
                              (let ((_t72950_ _$hd7290872943_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7290972946_))
                                    (let* ((_$tgt7291072952_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7290972946_)))
                                           (_$hd7291172955_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7291072952_)))
                                           (_$tl7291272958_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7291072952_))))
                                      (let ((_f72962_ _$hd7291172955_))
                                        (if (let ((__tmp75145
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7291272958_))))
                                              (declare (not safe))
                                              (equal? __tmp75145 '()))
                                            (let ((__tmp75146
                                                   (let ((__tmp75147
                                                          (let ((__tmp75152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p72938_)))
                        (__tmp75148
                         (let ((__tmp75151
                                (let ()
                                  (declare (not safe))
                                  (__compile _t72950_)))
                               (__tmp75149
                                (let ((__tmp75150
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f72962_))))
                                  (declare (not safe))
                                  (cons __tmp75150 '()))))
                           (declare (not safe))
                           (cons __tmp75151 __tmp75149))))
                    (declare (not safe))
                    (cons __tmp75152 __tmp75148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp75147))))
                                              (declare (not safe))
                                              (__SRC__% __tmp75146 _stx72896_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7290072915_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7290072915_)))))
                            (let () (declare (not safe)) (_$E7290072915_)))))
                    (let () (declare (not safe)) (_$E7290072915_))))
              (let () (declare (not safe)) (_$E7290072915_))))))
    (define __compile-quote%
      (lambda (_stx72858_)
        (let* ((_$e72860_ _stx72858_)
               (_$E7286272871_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72860_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72860_))
              (let* ((_$tgt7286372874_
                      (let () (declare (not safe)) (__AST-e _$e72860_)))
                     (_$hd7286472877_
                      (let () (declare (not safe)) (##car _$tgt7286372874_)))
                     (_$tl7286572880_
                      (let () (declare (not safe)) (##cdr _$tgt7286372874_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7286572880_))
                    (let* ((_$tgt7286672884_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7286572880_)))
                           (_$hd7286772887_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7286672884_)))
                           (_$tl7286872890_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7286672884_))))
                      (let ((_e72894_ _$hd7286772887_))
                        (if (let ((__tmp75153
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7286872890_))))
                              (declare (not safe))
                              (equal? __tmp75153 '()))
                            (let ((__tmp75154
                                   (let ((__tmp75155
                                          (let ((__tmp75156
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e72894_))))
                                            (declare (not safe))
                                            (cons __tmp75156 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp75155))))
                              (declare (not safe))
                              (__SRC__% __tmp75154 _stx72858_))
                            (let () (declare (not safe)) (_$E7286272871_)))))
                    (let () (declare (not safe)) (_$E7286272871_))))
              (let () (declare (not safe)) (_$E7286272871_))))))
    (define __compile-quote-syntax%
      (lambda (_stx72820_)
        (let* ((_$e72822_ _stx72820_)
               (_$E7282472833_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e72822_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e72822_))
              (let* ((_$tgt7282572836_
                      (let () (declare (not safe)) (__AST-e _$e72822_)))
                     (_$hd7282672839_
                      (let () (declare (not safe)) (##car _$tgt7282572836_)))
                     (_$tl7282772842_
                      (let () (declare (not safe)) (##cdr _$tgt7282572836_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7282772842_))
                    (let* ((_$tgt7282872846_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7282772842_)))
                           (_$hd7282972849_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7282872846_)))
                           (_$tl7283072852_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7282872846_))))
                      (let ((_e72856_ _$hd7282972849_))
                        (if (let ((__tmp75157
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7283072852_))))
                              (declare (not safe))
                              (equal? __tmp75157 '()))
                            (let ((__tmp75158
                                   (let ((__tmp75159
                                          (let ()
                                            (declare (not safe))
                                            (cons _e72856_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp75159))))
                              (declare (not safe))
                              (__SRC__% __tmp75158 _stx72820_))
                            (let () (declare (not safe)) (_$E7282472833_)))))
                    (let () (declare (not safe)) (_$E7282472833_))))
              (let () (declare (not safe)) (_$E7282472833_))))))
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
