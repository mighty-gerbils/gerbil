(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710677337)
  (begin
    (define __syntax::t
      (let ((__tmp78941 (list))
            (__tmp78939
             (let ((__tmp78940
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78940 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp78941
         '(e id)
         __tmp78939
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args78750_ (apply make-instance __syntax::t _$args78750_)))
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
      (let ((__tmp78944 (list __syntax::t))
            (__tmp78942
             (let ((__tmp78943
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78943 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp78944
         '()
         __tmp78942
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args78747_ (apply make-instance __core-form::t _$args78747_)))
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
      (let ((__tmp78947 (list __core-form::t))
            (__tmp78945
             (let ((__tmp78946
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78946 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp78947
         '()
         __tmp78945
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args78744_
        (apply make-instance __core-expression::t _$args78744_)))
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
      (let ((__tmp78950 (list __core-form::t))
            (__tmp78948
             (let ((__tmp78949
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78949 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp78950
         '()
         __tmp78948
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args78741_
        (apply make-instance __core-special-form::t _$args78741_)))
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
      (lambda (_id78739_)
        (let ((__tmp78951 (let () (declare (not safe)) (__AST-e _id78739_))))
          (declare (not safe))
          (hash-get __core __tmp78951))))
    (define __core-bound-id?__%
      (lambda (_id78723_ _is?78724_)
        (let ((_$e78726_
               (let () (declare (not safe)) (__core-resolve _id78723_))))
          (if _$e78726_ (_is?78724_ _$e78726_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id78732_)
        (let ((_is?78734_ true))
          (declare (not safe))
          (__core-bound-id?__% _id78732_ _is?78734_))))
    (define __core-bound-id?
      (lambda _g78953_
        (let ((_g78952_ (let () (declare (not safe)) (##length _g78953_))))
          (cond ((let () (declare (not safe)) (##fx= _g78952_ 1))
                 (apply (lambda (_id78732_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id78732_)))
                        _g78953_))
                ((let () (declare (not safe)) (##fx= _g78952_ 2))
                 (apply (lambda (_id78736_ _is?78737_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id78736_ _is?78737_)))
                        _g78953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g78953_))))))
    (define __core-bind-syntax!__%
      (lambda (_id78706_ _e78707_ _make78708_)
        (let ((__tmp78954
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e78707_
                      'gerbil/runtime/eval#__syntax::t))
                   _e78707_
                   (_make78708_ _e78707_ _id78706_))))
          (declare (not safe))
          (hash-put! __core _id78706_ __tmp78954))))
    (define __core-bind-syntax!__0
      (lambda (_id78713_ _e78714_)
        (let ((_make78716_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id78713_ _e78714_ _make78716_))))
    (define __core-bind-syntax!
      (lambda _g78956_
        (let ((_g78955_ (let () (declare (not safe)) (##length _g78956_))))
          (cond ((let () (declare (not safe)) (##fx= _g78955_ 2))
                 (apply (lambda (_id78713_ _e78714_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id78713_ _e78714_)))
                        _g78956_))
                ((let () (declare (not safe)) (##fx= _g78955_ 3))
                 (apply (lambda (_id78718_ _e78719_ _make78720_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id78718_
                             _e78719_
                             _make78720_)))
                        _g78956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g78956_))))))
    (define __SRC__%
      (lambda (_e78689_ _src-stx78690_)
        (if (or (let () (declare (not safe)) (pair? _e78689_))
                (let () (declare (not safe)) (symbol? _e78689_)))
            (let ((__tmp78960
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx78690_
                          'gerbil#AST::t))
                       (let ((__tmp78961
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx78690_))))
                         (declare (not safe))
                         (__locat __tmp78961))
                       '#f)))
              (declare (not safe))
              (##make-source _e78689_ __tmp78960))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e78689_ 'gerbil#AST::t))
                (let ((__tmp78959
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e78689_ '1 AST::t '#f)))
                      (__tmp78957
                       (let ((__tmp78958
                              (let ()
                                (declare (not safe))
                                (__AST-source _e78689_))))
                         (declare (not safe))
                         (__locat __tmp78958))))
                  (declare (not safe))
                  (##make-source __tmp78959 __tmp78957))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e78689_))))))
    (define __SRC__0
      (lambda (_e78698_)
        (let ((_src-stx78700_ '#f))
          (declare (not safe))
          (__SRC__% _e78698_ _src-stx78700_))))
    (define __SRC
      (lambda _g78963_
        (let ((_g78962_ (let () (declare (not safe)) (##length _g78963_))))
          (cond ((let () (declare (not safe)) (##fx= _g78962_ 1))
                 (apply (lambda (_e78698_)
                          (let () (declare (not safe)) (__SRC__0 _e78698_)))
                        _g78963_))
                ((let () (declare (not safe)) (##fx= _g78962_ 2))
                 (apply (lambda (_e78702_ _src-stx78703_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e78702_ _src-stx78703_)))
                        _g78963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g78963_))))))
    (define __locat
      (lambda (_loc78686_)
        (if (let () (declare (not safe)) (##locat? _loc78686_))
            _loc78686_
            '#f)))
    (define __check-values
      (lambda (_obj78681_ _k78682_)
        (let ((_count78684_
               (if (let () (declare (not safe)) (##values? _obj78681_))
                   (let () (declare (not safe)) (##vector-length _obj78681_))
                   '1)))
          (if (fx= _count78684_ _k78682_)
              '#!void
              (let ((__tmp78965
                     (if (fx< _count78684_ _k78682_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp78964
                     (if (let () (declare (not safe)) (##values? _obj78681_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj78681_))
                         _obj78681_)))
                (declare (not safe))
                (error __tmp78965 __tmp78964 _k78682_))))))
    (define __compile
      (lambda (_stx78651_)
        (let* ((_$e78653_ _stx78651_)
               (_$E7865578661_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78653_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78653_))
              (let* ((_$tgt7865678664_
                      (let () (declare (not safe)) (__AST-e _$e78653_)))
                     (_$hd7865778667_
                      (let () (declare (not safe)) (##car _$tgt7865678664_)))
                     (_$tl7865878670_
                      (let () (declare (not safe)) (##cdr _$tgt7865678664_))))
                (let* ((_form78674_ _$hd7865778667_)
                       (_$e78676_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form78674_))))
                  (if _$e78676_
                      ((lambda (_bind78679_)
                         ((##structure-ref _bind78679_ '1 __syntax::t '#f)
                          _stx78651_))
                       _$e78676_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx78651_
                         _form78674_)))))
              (let () (declare (not safe)) (_$E7865578661_))))))
    (define __compile-error__%
      (lambda (_stx78638_ _detail78639_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx78638_
           _detail78639_))))
    (define __compile-error__0
      (lambda (_stx78644_)
        (let ((_detail78646_ '#f))
          (declare (not safe))
          (__compile-error__% _stx78644_ _detail78646_))))
    (define __compile-error
      (lambda _g78967_
        (let ((_g78966_ (let () (declare (not safe)) (##length _g78967_))))
          (cond ((let () (declare (not safe)) (##fx= _g78966_ 1))
                 (apply (lambda (_stx78644_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx78644_)))
                        _g78967_))
                ((let () (declare (not safe)) (##fx= _g78966_ 2))
                 (apply (lambda (_stx78648_ _detail78649_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx78648_ _detail78649_)))
                        _g78967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g78967_))))))
    (define __compile-ignore%
      (lambda (_stx78635_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx78635_))))
    (define __compile-begin%
      (lambda (_stx78610_)
        (let* ((_$e78612_ _stx78610_)
               (_$E7861478620_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78612_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78612_))
              (let* ((_$tgt7861578623_
                      (let () (declare (not safe)) (__AST-e _$e78612_)))
                     (_$hd7861678626_
                      (let () (declare (not safe)) (##car _$tgt7861578623_)))
                     (_$tl7861778629_
                      (let () (declare (not safe)) (##cdr _$tgt7861578623_))))
                (let* ((_body78633_ _$tl7861778629_)
                       (__tmp78968
                        (let ((__tmp78969 (map __compile _body78633_)))
                          (declare (not safe))
                          (cons 'begin __tmp78969))))
                  (declare (not safe))
                  (__SRC__% __tmp78968 _stx78610_)))
              (let () (declare (not safe)) (_$E7861478620_))))))
    (define __compile-begin-foreign%
      (lambda (_stx78585_)
        (let* ((_$e78587_ _stx78585_)
               (_$E7858978595_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78587_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78587_))
              (let* ((_$tgt7859078598_
                      (let () (declare (not safe)) (__AST-e _$e78587_)))
                     (_$hd7859178601_
                      (let () (declare (not safe)) (##car _$tgt7859078598_)))
                     (_$tl7859278604_
                      (let () (declare (not safe)) (##cdr _$tgt7859078598_))))
                (let* ((_body78608_ _$tl7859278604_)
                       (__tmp78970
                        (let ((__tmp78971
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body78608_))))
                          (declare (not safe))
                          (cons 'begin __tmp78971))))
                  (declare (not safe))
                  (__SRC__% __tmp78970 _stx78585_)))
              (let () (declare (not safe)) (_$E7858978595_))))))
    (define __compile-import%
      (lambda (_stx78560_)
        (let* ((_$e78562_ _stx78560_)
               (_$E7856478570_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78562_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78562_))
              (let* ((_$tgt7856578573_
                      (let () (declare (not safe)) (__AST-e _$e78562_)))
                     (_$hd7856678576_
                      (let () (declare (not safe)) (##car _$tgt7856578573_)))
                     (_$tl7856778579_
                      (let () (declare (not safe)) (##cdr _$tgt7856578573_))))
                (let* ((_body78583_ _$tl7856778579_)
                       (__tmp78972
                        (let ((__tmp78973
                               (let ((__tmp78974
                                      (let ((__tmp78975
                                             (let ()
                                               (declare (not safe))
                                               (cons _body78583_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp78975))))
                                 (declare (not safe))
                                 (cons __tmp78974 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp78973))))
                  (declare (not safe))
                  (__SRC__% __tmp78972 _stx78560_)))
              (let () (declare (not safe)) (_$E7856478570_))))))
    (define __compile-begin-annotation%
      (lambda (_stx78507_)
        (let* ((_$e78509_ _stx78507_)
               (_$E7851178523_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78509_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78509_))
              (let* ((_$tgt7851278526_
                      (let () (declare (not safe)) (__AST-e _$e78509_)))
                     (_$hd7851378529_
                      (let () (declare (not safe)) (##car _$tgt7851278526_)))
                     (_$tl7851478532_
                      (let () (declare (not safe)) (##cdr _$tgt7851278526_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7851478532_))
                    (let* ((_$tgt7851578536_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7851478532_)))
                           (_$hd7851678539_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7851578536_)))
                           (_$tl7851778542_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7851578536_))))
                      (let ((_ann78546_ _$hd7851678539_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7851778542_))
                            (let* ((_$tgt7851878548_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7851778542_)))
                                   (_$hd7851978551_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7851878548_)))
                                   (_$tl7852078554_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7851878548_))))
                              (let ((_expr78558_ _$hd7851978551_))
                                (if (let ((__tmp78976
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7852078554_))))
                                      (declare (not safe))
                                      (equal? __tmp78976 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr78558_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7851178523_)))))
                            (let () (declare (not safe)) (_$E7851178523_)))))
                    (let () (declare (not safe)) (_$E7851178523_))))
              (let () (declare (not safe)) (_$E7851178523_))))))
    (define __compile-define-values%
      (lambda (_stx78398_)
        (let* ((_$e78400_ _stx78398_)
               (_$E7840278414_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78400_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78400_))
              (let* ((_$tgt7840378417_
                      (let () (declare (not safe)) (__AST-e _$e78400_)))
                     (_$hd7840478420_
                      (let () (declare (not safe)) (##car _$tgt7840378417_)))
                     (_$tl7840578423_
                      (let () (declare (not safe)) (##cdr _$tgt7840378417_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7840578423_))
                    (let* ((_$tgt7840678427_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7840578423_)))
                           (_$hd7840778430_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7840678427_)))
                           (_$tl7840878433_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7840678427_))))
                      (let ((_hd78437_ _$hd7840778430_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7840878433_))
                            (let* ((_$tgt7840978439_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7840878433_)))
                                   (_$hd7841078442_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7840978439_)))
                                   (_$tl7841178445_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7840978439_))))
                              (let ((_expr78449_ _$hd7841078442_))
                                (if (let ((__tmp79009
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7841178445_))))
                                      (declare (not safe))
                                      (equal? __tmp79009 '()))
                                    (let* ((_$e78451_ _hd78437_)
                                           (_$E7845378494_
                                            (lambda ()
                                              (let ((_$E7845478479_
                                                     (lambda ()
                                                       (let* ((_$E7845578466_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e78451_))))
                      (_ids78469_ _hd78437_)
                      (_len78471_ (length _ids78469_))
                      (_tmp78473_
                       (let ((__tmp78977 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp78977))))
                 (let ((__tmp78978
                        (let ((__tmp78979
                               (let ((__tmp78996
                                      (let ((__tmp78997
                                             (let ((__tmp78998
                                                    (let ((__tmp78999
                                                           (let ((__tmp79000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr78449_))))
                     (declare (not safe))
                     (cons __tmp79000 '()))))
              (declare (not safe))
              (cons _tmp78473_ __tmp78999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp78998))))
                                        (declare (not safe))
                                        (__SRC__% __tmp78997 _stx78398_)))
                                     (__tmp78980
                                      (let ((__tmp78992
                                             (let ((__tmp78993
                                                    (let ((__tmp78994
                                                           (let ((__tmp78995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len78471_ '()))))
                     (declare (not safe))
                     (cons _tmp78473_ __tmp78995))))
              (declare (not safe))
              (cons '__check-values __tmp78994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp78993
                                                _stx78398_)))
                                            (__tmp78981
                                             (let ((__tmp78982
                                                    (let ((__tmp78984
                                                           (lambda (_id78476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k78477_)
                     (if (let () (declare (not safe)) (__AST-e _id78476_))
                         (let ((__tmp78985
                                (let ((__tmp78986
                                       (let ((__tmp78991
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id78476_)))
                                             (__tmp78987
                                              (let ((__tmp78988
                                                     (let ((__tmp78989
                                                            (let ((__tmp78990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k78477_ '()))))
                      (declare (not safe))
                      (cons _tmp78473_ __tmp78990))))
               (declare (not safe))
               (cons '##vector-ref __tmp78989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78988 '()))))
                                         (declare (not safe))
                                         (cons __tmp78991 __tmp78987))))
                                  (declare (not safe))
                                  (cons 'define __tmp78986))))
                           (declare (not safe))
                           (__SRC__% __tmp78985 _stx78398_))
                         '#f)))
                  (__tmp78983 (iota _len78471_)))
              (declare (not safe))
              (filter-map2 __tmp78984 _ids78469_ __tmp78983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp78982))))
                                        (declare (not safe))
                                        (cons __tmp78992 __tmp78981))))
                                 (declare (not safe))
                                 (cons __tmp78996 __tmp78980))))
                          (declare (not safe))
                          (cons 'begin __tmp78979))))
                   (declare (not safe))
                   (__SRC__% __tmp78978 _stx78398_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e78451_))
                                                    (let* ((_$tgt7845678482_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e78451_)))
                                                           (_$hd7845778485_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7845678482_)))
                                                           (_$tl7845878488_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7845678482_))))
                                                      (let ((_id78492_
                                                             _$hd7845778485_))
                                                        (if (let ((__tmp79006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7845878488_))))
                      (declare (not safe))
                      (equal? __tmp79006 '()))
                    (let ((__tmp79001
                           (let ((__tmp79002
                                  (let ((__tmp79005
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id78492_)))
                                        (__tmp79003
                                         (let ((__tmp79004
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr78449_))))
                                           (declare (not safe))
                                           (cons __tmp79004 '()))))
                                    (declare (not safe))
                                    (cons __tmp79005 __tmp79003))))
                             (declare (not safe))
                             (cons 'define __tmp79002))))
                      (declare (not safe))
                      (__SRC__% __tmp79001 _stx78398_))
                    (let () (declare (not safe)) (_$E7845478479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7845478479_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e78451_))
                                          (let* ((_$tgt7845978497_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e78451_)))
                                                 (_$hd7846078500_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7845978497_)))
                                                 (_$tl7846178503_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7845978497_))))
                                            (if (let ((__tmp79008
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7846078500_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79008 '#f))
                                                (if (let ((__tmp79007
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7846178503_))))
                                                      (declare (not safe))
                                                      (equal? __tmp79007 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr78449_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7845378494_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7845378494_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7845378494_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7840278414_)))))
                            (let () (declare (not safe)) (_$E7840278414_)))))
                    (let () (declare (not safe)) (_$E7840278414_))))
              (let () (declare (not safe)) (_$E7840278414_))))))
    (define __compile-head-id
      (lambda (_e78396_)
        (let ((__tmp79010
               (if (let () (declare (not safe)) (__AST-e _e78396_))
                   _e78396_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp79010))))
    (define __compile-lambda-head
      (lambda (_hd78353_)
        (let _recur78355_ ((_rest78357_ _hd78353_))
          (let* ((_$e78359_ _rest78357_)
                 (_$E7836178379_
                  (lambda ()
                    (let ((_$E7836278376_
                           (lambda ()
                             (let* ((_$E7836378371_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e78359_))))
                                    (_tail78374_ _$e78359_))
                               (declare (not safe))
                               (__compile-head-id _tail78374_)))))
                      (if (let ((__tmp79011
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e78359_))))
                            (declare (not safe))
                            (equal? __tmp79011 '()))
                          '()
                          (let () (declare (not safe)) (_$E7836278376_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78359_))
                (let* ((_$tgt7836478382_
                        (let () (declare (not safe)) (__AST-e _$e78359_)))
                       (_$hd7836578385_
                        (let () (declare (not safe)) (##car _$tgt7836478382_)))
                       (_$tl7836678388_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7836478382_))))
                  (let* ((_hd78392_ _$hd7836578385_)
                         (_rest78394_ _$tl7836678388_))
                    (let ((__tmp79013
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd78392_)))
                          (__tmp79012
                           (let ()
                             (declare (not safe))
                             (_recur78355_ _rest78394_))))
                      (declare (not safe))
                      (cons __tmp79013 __tmp79012))))
                (let () (declare (not safe)) (_$E7836178379_)))))))
    (define __compile-lambda%
      (lambda (_stx78300_)
        (let* ((_$e78302_ _stx78300_)
               (_$E7830478316_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78302_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78302_))
              (let* ((_$tgt7830578319_
                      (let () (declare (not safe)) (__AST-e _$e78302_)))
                     (_$hd7830678322_
                      (let () (declare (not safe)) (##car _$tgt7830578319_)))
                     (_$tl7830778325_
                      (let () (declare (not safe)) (##cdr _$tgt7830578319_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7830778325_))
                    (let* ((_$tgt7830878329_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7830778325_)))
                           (_$hd7830978332_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7830878329_)))
                           (_$tl7831078335_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7830878329_))))
                      (let ((_hd78339_ _$hd7830978332_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7831078335_))
                            (let* ((_$tgt7831178341_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7831078335_)))
                                   (_$hd7831278344_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7831178341_)))
                                   (_$tl7831378347_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7831178341_))))
                              (let ((_body78351_ _$hd7831278344_))
                                (if (let ((__tmp79019
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7831378347_))))
                                      (declare (not safe))
                                      (equal? __tmp79019 '()))
                                    (let ((__tmp79014
                                           (let ((__tmp79015
                                                  (let ((__tmp79018
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd78339_)))
                                                        (__tmp79016
                                                         (let ((__tmp79017
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body78351_))))
                   (declare (not safe))
                   (cons __tmp79017 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79018
                                                          __tmp79016))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp79015))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79014 _stx78300_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7830478316_)))))
                            (let () (declare (not safe)) (_$E7830478316_)))))
                    (let () (declare (not safe)) (_$E7830478316_))))
              (let () (declare (not safe)) (_$E7830478316_))))))
    (define __compile-case-lambda%
      (lambda (_stx78092_)
        (letrec ((_variadic?78094_
                  (lambda (_hd78265_)
                    (let* ((_$e78267_ _hd78265_)
                           (_$E7826978285_
                            (lambda ()
                              (let ((_$E7827078282_
                                     (lambda ()
                                       (let ((_$E7827178279_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e78267_)))))
                                         '#t))))
                                (if (let ((__tmp79020
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e78267_))))
                                      (declare (not safe))
                                      (equal? __tmp79020 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7827078282_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78267_))
                          (let* ((_$tgt7827278288_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78267_)))
                                 (_$hd7827378291_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7827278288_)))
                                 (_$tl7827478294_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7827278288_))))
                            (let ((_rest78298_ _$tl7827478294_))
                              (declare (not safe))
                              (_variadic?78094_ _rest78298_)))
                          (let () (declare (not safe)) (_$E7826978285_))))))
                 (_arity78095_
                  (lambda (_hd78230_)
                    (let _lp78232_ ((_rest78234_ _hd78230_) (_k78235_ '0))
                      (let* ((_$e78237_ _rest78234_)
                             (_$E7823978250_
                              (lambda ()
                                (let ((_$E7824078247_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e78237_)))))
                                  _k78235_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e78237_))
                            (let* ((_$tgt7824178253_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e78237_)))
                                   (_$hd7824278256_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7824178253_)))
                                   (_$tl7824378259_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7824178253_))))
                              (let* ((_rest78263_ _$tl7824378259_)
                                     (__tmp79021
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k78235_ '1))))
                                (declare (not safe))
                                (_lp78232_ _rest78263_ __tmp79021)))
                            (let () (declare (not safe)) (_$E7823978250_)))))))
                 (_generate78096_
                  (lambda (_rest78157_ _args78158_ _len78159_)
                    (let* ((_$e78161_ _rest78157_)
                           (_$E7816378174_
                            (lambda ()
                              (let* ((_$E7816478171_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e78161_))))
                                     (__tmp79022
                                      (let ((__tmp79023
                                             (let ((__tmp79024
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args78158_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp79024))))
                                        (declare (not safe))
                                        (cons 'error __tmp79023))))
                                (declare (not safe))
                                (__SRC__% __tmp79022 _stx78092_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78161_))
                          (let* ((_$tgt7816578177_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78161_)))
                                 (_$hd7816678180_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7816578177_)))
                                 (_$tl7816778183_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7816578177_))))
                            (let* ((_clause78187_ _$hd7816678180_)
                                   (_rest78189_ _$tl7816778183_)
                                   (_$e78191_ _clause78187_)
                                   (_$E7819378202_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e78191_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e78191_))
                                  (let* ((_$tgt7819478205_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e78191_)))
                                         (_$hd7819578208_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7819478205_)))
                                         (_$tl7819678211_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7819478205_))))
                                    (let ((_hd78215_ _$hd7819578208_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7819678211_))
                                          (let* ((_$tgt7819778217_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7819678211_)))
                                                 (_$hd7819878220_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7819778217_)))
                                                 (_$tl7819978223_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7819778217_))))
                                            (if (let ((__tmp79039
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7819978223_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79039 '()))
                                                (let ((_clen78227_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity78095_
                                                          _hd78215_)))
                                                      (_cmp78228_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?78094_
                                                              _hd78215_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp79025
                                                         (let ((__tmp79026
                                                                (let ((__tmp79036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79037
                                      (let ((__tmp79038
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen78227_ '()))))
                                        (declare (not safe))
                                        (cons _len78159_ __tmp79038))))
                                 (declare (not safe))
                                 (cons _cmp78228_ __tmp79037)))
                              (__tmp79027
                               (let ((__tmp79030
                                      (let ((__tmp79031
                                             (let ((__tmp79032
                                                    (let ((__tmp79034
                                                           (let ((__tmp79035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause78187_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp79035)))
                  (__tmp79033
                   (let () (declare (not safe)) (cons _args78158_ '()))))
              (declare (not safe))
              (cons __tmp79034 __tmp79033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp79032))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79031 _stx78092_)))
                                     (__tmp79028
                                      (let ((__tmp79029
                                             (let ()
                                               (declare (not safe))
                                               (_generate78096_
                                                _rest78189_
                                                _args78158_
                                                _len78159_))))
                                        (declare (not safe))
                                        (cons __tmp79029 '()))))
                                 (declare (not safe))
                                 (cons __tmp79030 __tmp79028))))
                          (declare (not safe))
                          (cons __tmp79036 __tmp79027))))
                   (declare (not safe))
                   (cons 'if __tmp79026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp79025
                                                     _stx78092_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7819378202_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7819378202_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7819378202_)))))
                          (let () (declare (not safe)) (_$E7816378174_)))))))
          (let* ((_$e78098_ _stx78092_)
                 (_$E7810078132_
                  (lambda ()
                    (let ((_$E7810178114_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78098_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78098_))
                          (let* ((_$tgt7810278117_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78098_)))
                                 (_$hd7810378120_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7810278117_)))
                                 (_$tl7810478123_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7810278117_))))
                            (let ((_clauses78127_ _$tl7810478123_))
                              (let ((_args78129_
                                     (let ((__tmp79040 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79040 _stx78092_)))
                                    (_len78130_
                                     (let ((__tmp79041 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79041 _stx78092_))))
                                (let ((__tmp79042
                                       (let ((__tmp79043
                                              (let ((__tmp79044
                                                     (let ((__tmp79045
                                                            (let ((__tmp79046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79047
                                  (let ((__tmp79050
                                         (let ((__tmp79051
                                                (let ((__tmp79052
                                                       (let ((__tmp79053
                                                              (let ((__tmp79054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79055
                                    (let ()
                                      (declare (not safe))
                                      (cons _args78129_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp79055))))
                        (declare (not safe))
                        (__SRC__% __tmp79054 _stx78092_))))
                 (declare (not safe))
                 (cons __tmp79053 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len78130_
                                                        __tmp79052))))
                                           (declare (not safe))
                                           (cons __tmp79051 '())))
                                        (__tmp79048
                                         (let ((__tmp79049
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate78096_
                                                   _clauses78127_
                                                   _args78129_
                                                   _len78130_))))
                                           (declare (not safe))
                                           (cons __tmp79049 '()))))
                                    (declare (not safe))
                                    (cons __tmp79050 __tmp79048))))
                             (declare (not safe))
                             (cons 'let __tmp79047))))
                      (declare (not safe))
                      (__SRC__% __tmp79046 _stx78092_))))
               (declare (not safe))
               (cons __tmp79045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args78129_
                                                      __tmp79044))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp79043))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79042 _stx78092_)))))
                          (let () (declare (not safe)) (_$E7810178114_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78098_))
                (let* ((_$tgt7810578135_
                        (let () (declare (not safe)) (__AST-e _$e78098_)))
                       (_$hd7810678138_
                        (let () (declare (not safe)) (##car _$tgt7810578135_)))
                       (_$tl7810778141_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7810578135_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7810778141_))
                      (let* ((_$tgt7810878145_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7810778141_)))
                             (_$hd7810978148_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7810878145_)))
                             (_$tl7811078151_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7810878145_))))
                        (let ((_clause78155_ _$hd7810978148_))
                          (if (let ((__tmp79057
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7811078151_))))
                                (declare (not safe))
                                (equal? __tmp79057 '()))
                              (let ((__tmp79056
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause78155_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp79056))
                              (let () (declare (not safe)) (_$E7810078132_)))))
                      (let () (declare (not safe)) (_$E7810078132_))))
                (let () (declare (not safe)) (_$E7810078132_)))))))
    (define __compile-let-form
      (lambda (_stx77861_ _compile-simple77862_ _compile-values77863_)
        (letrec ((_simple-bind?77865_
                  (lambda (_hd78050_)
                    (let* ((_hd7805178061_ _hd78050_)
                           (_else7805478069_ (lambda () '#f)))
                      (let ((_K7805778082_ (lambda (_id78080_) '#t))
                            (_K7805678074_ (lambda () '#t)))
                        (let ((_try-match7805378077_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7805178061_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7805678074_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7805478069_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7805178061_))
                              (let ((_tl7805978087_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7805178061_)))
                                    (_hd7805878085_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7805178061_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7805978087_))
                                    (let ((_id78090_ _hd7805878085_))
                                      (declare (not safe))
                                      (_K7805778082_ _id78090_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7805378077_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7805378077_))))))))
                 (_car-e77866_
                  (lambda (_hd78048_)
                    (if (let () (declare (not safe)) (pair? _hd78048_))
                        (car _hd78048_)
                        _hd78048_))))
          (let* ((_$e77868_ _stx77861_)
                 (_$E7787078013_
                  (lambda ()
                    (let ((_$E7787177893_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e77868_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77868_))
                          (let* ((_$tgt7787277896_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77868_)))
                                 (_$hd7787377899_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7787277896_)))
                                 (_$tl7787477902_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7787277896_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7787477902_))
                                (let* ((_$tgt7787577906_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7787477902_)))
                                       (_$hd7787677909_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7787577906_)))
                                       (_$tl7787777912_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7787577906_))))
                                  (let ((_hd77916_ _$hd7787677909_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7787777912_))
                                        (let* ((_$tgt7787877918_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7787777912_)))
                                               (_$hd7787977921_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7787877918_)))
                                               (_$tl7788077924_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7787877918_))))
                                          (let ((_body77928_ _$hd7787977921_))
                                            (if (let ((__tmp79060
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7788077924_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79060 '()))
                                                (let* ((_hd-ids77968_
                                                        (map (lambda (_bind77930_)
                                                               (let* ((_$e77932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind77930_)
                              (_$E7793477943_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e77932_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e77932_))
                             (let* ((_$tgt7793577946_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e77932_)))
                                    (_$hd7793677949_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7793577946_)))
                                    (_$tl7793777952_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7793577946_))))
                               (let ((_ids77956_ _$hd7793677949_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7793777952_))
                                     (let* ((_$tgt7793877958_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7793777952_)))
                                            (_$hd7793977961_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7793877958_)))
                                            (_$tl7794077964_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7793877958_))))
                                       (if (let ((__tmp79058
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7794077964_))))
                                             (declare (not safe))
                                             (equal? __tmp79058 '()))
                                           _ids77956_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7793477943_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7793477943_)))))
                             (let () (declare (not safe)) (_$E7793477943_)))))
                     _hd77916_))
               (_exprs78008_
                (map (lambda (_bind77970_)
                       (let* ((_$e77972_ _bind77970_)
                              (_$E7797477983_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e77972_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e77972_))
                             (let* ((_$tgt7797577986_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e77972_)))
                                    (_$hd7797677989_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7797577986_)))
                                    (_$tl7797777992_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7797577986_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7797777992_))
                                   (let* ((_$tgt7797877996_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7797777992_)))
                                          (_$hd7797977999_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7797877996_)))
                                          (_$tl7798078002_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7797877996_))))
                                     (let ((_expr78006_ _$hd7797977999_))
                                       (if (let ((__tmp79059
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7798078002_))))
                                             (declare (not safe))
                                             (equal? __tmp79059 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr78006_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7797477983_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7797477983_))))
                             (let () (declare (not safe)) (_$E7797477983_)))))
                     _hd77916_))
               (_body78010_
                (let () (declare (not safe)) (__compile _body77928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?77865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids77968_))
              (_compile-simple77862_
               (map _car-e77866_ _hd-ids77968_)
               _exprs78008_
               _body78010_)
              (_compile-values77863_ _hd-ids77968_ _exprs78008_ _body78010_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7787177893_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7787177893_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7787177893_))))
                          (let () (declare (not safe)) (_$E7787177893_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77868_))
                (let* ((_$tgt7788178016_
                        (let () (declare (not safe)) (__AST-e _$e77868_)))
                       (_$hd7788278019_
                        (let () (declare (not safe)) (##car _$tgt7788178016_)))
                       (_$tl7788378022_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7788178016_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7788378022_))
                      (let* ((_$tgt7788478026_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7788378022_)))
                             (_$hd7788578029_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7788478026_)))
                             (_$tl7788678032_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7788478026_))))
                        (if (let ((__tmp79062
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7788578029_))))
                              (declare (not safe))
                              (equal? __tmp79062 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7788678032_))
                                (let* ((_$tgt7788778036_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7788678032_)))
                                       (_$hd7788878039_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7788778036_)))
                                       (_$tl7788978042_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7788778036_))))
                                  (let ((_body78046_ _$hd7788878039_))
                                    (if (let ((__tmp79061
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7788978042_))))
                                          (declare (not safe))
                                          (equal? __tmp79061 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body78046_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7787078013_)))))
                                (let () (declare (not safe)) (_$E7787078013_)))
                            (let () (declare (not safe)) (_$E7787078013_))))
                      (let () (declare (not safe)) (_$E7787078013_))))
                (let () (declare (not safe)) (_$E7787078013_)))))))
    (define __compile-let-values%
      (lambda (_stx77676_)
        (letrec ((_compile-simple77678_
                  (lambda (_hd-ids77857_ _exprs77858_ _body77859_)
                    (let ((__tmp79063
                           (let ((__tmp79064
                                  (let ((__tmp79066
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77857_)
                                              _exprs77858_))
                                        (__tmp79065
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77859_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79066 __tmp79065))))
                             (declare (not safe))
                             (cons 'let __tmp79064))))
                      (declare (not safe))
                      (__SRC__% __tmp79063 _stx77676_))))
                 (_compile-values77679_
                  (lambda (_hd-ids77775_ _exprs77776_ _body77777_)
                    (let _lp77779_ ((_rest77781_ _hd-ids77775_)
                                    (_exprs77782_ _exprs77776_)
                                    (_bind77783_ '())
                                    (_post77784_ '()))
                      (let* ((_rest7778577799_ _rest77781_)
                             (_else7778877807_
                              (lambda ()
                                (let ((__tmp79067
                                       (let ((__tmp79068
                                              (let ((__tmp79071
                                                     (reverse _bind77783_))
                                                    (__tmp79069
                                                     (let ((__tmp79070
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post77680_
                                                               _post77784_
                                                               _body77777_))))
                                                       (declare (not safe))
                                                       (cons __tmp79070 '()))))
                                                (declare (not safe))
                                                (cons __tmp79071 __tmp79069))))
                                         (declare (not safe))
                                         (cons 'let __tmp79068))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79067 _stx77676_)))))
                        (let ((_K7779377840_
                               (lambda (_rest77837_ _id77838_)
                                 (let ((__tmp79077 (cdr _exprs77782_))
                                       (__tmp79072
                                        (let ((__tmp79073
                                               (let ((__tmp79076
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id77838_)))
                                                     (__tmp79074
                                                      (let ((__tmp79075
                                                             (car _exprs77782_)))
                                                        (declare (not safe))
                                                        (cons __tmp79075
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79076
                                                       __tmp79074))))
                                          (declare (not safe))
                                          (cons __tmp79073 _bind77783_))))
                                   (declare (not safe))
                                   (_lp77779_
                                    _rest77837_
                                    __tmp79077
                                    __tmp79072
                                    _post77784_))))
                              (_K7779077822_
                               (lambda (_rest77811_ _hd77812_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77812_))
                                     (let ((__tmp79098 (cdr _exprs77782_))
                                           (__tmp79091
                                            (let ((__tmp79092
                                                   (let ((__tmp79097
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd77812_)))
                                                         (__tmp79093
                                                          (let ((__tmp79094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79095
                                (let ((__tmp79096 (car _exprs77782_)))
                                  (declare (not safe))
                                  (cons __tmp79096 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79095))))
                    (declare (not safe))
                    (cons __tmp79094 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79097
                                                           __tmp79093))))
                                              (declare (not safe))
                                              (cons __tmp79092 _bind77783_))))
                                       (declare (not safe))
                                       (_lp77779_
                                        _rest77811_
                                        __tmp79098
                                        __tmp79091
                                        _post77784_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd77812_))
                                         (let* ((_len77814_ (length _hd77812_))
                                                (_tmp77816_
                                                 (let ((__tmp79078 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79078))))
                                           (let ((__tmp79090
                                                  (cdr _exprs77782_))
                                                 (__tmp79086
                                                  (let ((__tmp79087
                                                         (let ((__tmp79088
                                                                (let ((__tmp79089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77782_)))
                          (declare (not safe))
                          (cons __tmp79089 '()))))
                   (declare (not safe))
                   (cons _tmp77816_ __tmp79088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79087
                                                          _bind77783_)))
                                                 (__tmp79079
                                                  (let ((__tmp79080
                                                         (let ((__tmp79081
                                                                (let ((__tmp79082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79084
                                      (lambda (_id77819_ _k77820_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id77819_))
                                            (let ((__tmp79085
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id77819_))))
                                              (declare (not safe))
                                              (cons __tmp79085 _k77820_))
                                            '#f)))
                                     (__tmp79083 (iota _len77814_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79084
                                  _hd77812_
                                  __tmp79083))))
                          (declare (not safe))
                          (cons _len77814_ __tmp79082))))
                   (declare (not safe))
                   (cons _tmp77816_ __tmp79081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79080
                                                          _post77784_))))
                                             (declare (not safe))
                                             (_lp77779_
                                              _rest77811_
                                              __tmp79090
                                              __tmp79086
                                              __tmp79079)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77676_
                                            _hd77812_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7778577799_))
                              (let ((_tl7779577845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7778577799_)))
                                    (_hd7779477843_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7778577799_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7779477843_))
                                    (let ((_tl7779777850_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7779477843_)))
                                          (_hd7779677848_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7779477843_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7779777850_))
                                          (let ((_id77853_ _hd7779677848_)
                                                (_rest77855_ _tl7779577845_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7779377840_
                                               _rest77855_
                                               _id77853_)))
                                          (let ((_hd77830_ _hd7779477843_)
                                                (_rest77832_ _tl7779577845_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7779077822_
                                               _rest77832_
                                               _hd77830_)))))
                                    (let ((_hd77830_ _hd7779477843_)
                                          (_rest77832_ _tl7779577845_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7779077822_
                                         _rest77832_
                                         _hd77830_)))))
                              (let ()
                                (declare (not safe))
                                (_else7778877807_))))))))
                 (_compile-post77680_
                  (lambda (_post77682_ _body77683_)
                    (let _lp77685_ ((_rest77687_ _post77682_)
                                    (_check77688_ '())
                                    (_bind77689_ '()))
                      (let* ((_rest7769077702_ _rest77687_)
                             (_else7769277710_
                              (lambda ()
                                (let ((__tmp79099
                                       (let ((__tmp79100
                                              (let ((__tmp79101
                                                     (let ((__tmp79102
                                                            (let ((__tmp79103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79104
                                  (let ((__tmp79105
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77683_ '()))))
                                    (declare (not safe))
                                    (cons _bind77689_ __tmp79105))))
                             (declare (not safe))
                             (cons 'let __tmp79104))))
                      (declare (not safe))
                      (__SRC__% __tmp79103 _stx77676_))))
               (declare (not safe))
               (cons __tmp79102 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79101
                                                        _check77688_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79100))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79099 _stx77676_))))
                             (_K7769477749_
                              (lambda (_rest77713_
                                       _init77714_
                                       _len77715_
                                       _tmp77716_)
                                (let ((__tmp79113
                                       (let ((__tmp79114
                                              (let ((__tmp79115
                                                     (let ((__tmp79116
                                                            (let ((__tmp79117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77715_ '()))))
                      (declare (not safe))
                      (cons _tmp77716_ __tmp79117))))
               (declare (not safe))
               (cons '__check-values __tmp79116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79115
                                                 _stx77676_))))
                                         (declare (not safe))
                                         (cons __tmp79114 _check77688_)))
                                      (__tmp79106
                                       (let ((__tmp79107
                                              (lambda (_hd77718_ _r77719_)
                                                (let* ((_hd7772077727_
                                                        _hd77718_)
                                                       (_E7772277731_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7772077727_))))
               (_K7772377737_
                (lambda (_k77734_ _id77735_)
                  (let ((__tmp79108
                         (let ((__tmp79109
                                (let ((__tmp79110
                                       (let ((__tmp79111
                                              (let ((__tmp79112
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k77734_ '()))))
                                                (declare (not safe))
                                                (cons _tmp77716_ __tmp79112))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp79111))))
                                  (declare (not safe))
                                  (cons __tmp79110 '()))))
                           (declare (not safe))
                           (cons _id77735_ __tmp79109))))
                    (declare (not safe))
                    (cons __tmp79108 _r77719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7772077727_))
                                                      (let ((_hd7772477740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7772077727_)))
                    (_tl7772577742_
                     (let () (declare (not safe)) (##cdr _hd7772077727_))))
                (let* ((_id77745_ _hd7772477740_) (_k77747_ _tl7772577742_))
                  (declare (not safe))
                  (_K7772377737_ _k77747_ _id77745_)))
              (let () (declare (not safe)) (_E7772277731_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79107
                                                 _bind77689_
                                                 _init77714_))))
                                  (declare (not safe))
                                  (_lp77685_
                                   _rest77713_
                                   __tmp79113
                                   __tmp79106)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7769077702_))
                            (let ((_hd7769577752_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7769077702_)))
                                  (_tl7769677754_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7769077702_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7769577752_))
                                  (let ((_hd7769777757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7769577752_)))
                                        (_tl7769877759_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7769577752_))))
                                    (let ((_tmp77762_ _hd7769777757_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7769877759_))
                                          (let ((_hd7769977764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7769877759_)))
                                                (_tl7770077766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7769877759_))))
                                            (let* ((_len77769_ _hd7769977764_)
                                                   (_init77771_ _tl7770077766_)
                                                   (_rest77773_
                                                    _tl7769677754_))
                                              (declare (not safe))
                                              (_K7769477749_
                                               _rest77773_
                                               _init77771_
                                               _len77769_
                                               _tmp77762_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7769277710_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7769277710_))))
                            (let ()
                              (declare (not safe))
                              (_else7769277710_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77676_
             _compile-simple77678_
             _compile-values77679_)))))
    (define __compile-letrec-values%
      (lambda (_stx77476_)
        (letrec ((_compile-simple77478_
                  (lambda (_hd-ids77672_ _exprs77673_ _body77674_)
                    (let ((__tmp79118
                           (let ((__tmp79119
                                  (let ((__tmp79121
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77672_)
                                              _exprs77673_))
                                        (__tmp79120
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77674_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79121 __tmp79120))))
                             (declare (not safe))
                             (cons 'letrec __tmp79119))))
                      (declare (not safe))
                      (__SRC__% __tmp79118 _stx77476_))))
                 (_compile-values77479_
                  (lambda (_hd-ids77586_ _exprs77587_ _body77588_)
                    (let _lp77590_ ((_rest77592_ _hd-ids77586_)
                                    (_exprs77593_ _exprs77587_)
                                    (_pre77594_ '())
                                    (_bind77595_ '())
                                    (_post77596_ '()))
                      (let* ((_rest7759777611_ _rest77592_)
                             (_else7760077619_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner77480_
                                   _pre77594_
                                   _bind77595_
                                   _post77596_
                                   _body77588_)))))
                        (let ((_K7760577655_
                               (lambda (_rest77652_ _id77653_)
                                 (let ((__tmp79127 (cdr _exprs77593_))
                                       (__tmp79122
                                        (let ((__tmp79123
                                               (let ((__tmp79126
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id77653_)))
                                                     (__tmp79124
                                                      (let ((__tmp79125
                                                             (car _exprs77593_)))
                                                        (declare (not safe))
                                                        (cons __tmp79125
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79126
                                                       __tmp79124))))
                                          (declare (not safe))
                                          (cons __tmp79123 _bind77595_))))
                                   (declare (not safe))
                                   (_lp77590_
                                    _rest77652_
                                    __tmp79127
                                    _pre77594_
                                    __tmp79122
                                    _post77596_))))
                              (_K7760277637_
                               (lambda (_rest77623_ _hd77624_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77624_))
                                     (let ((__tmp79155 (cdr _exprs77593_))
                                           (__tmp79148
                                            (let ((__tmp79149
                                                   (let ((__tmp79154
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd77624_)))
                                                         (__tmp79150
                                                          (let ((__tmp79151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79152
                                (let ((__tmp79153 (car _exprs77593_)))
                                  (declare (not safe))
                                  (cons __tmp79153 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79152))))
                    (declare (not safe))
                    (cons __tmp79151 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79154
                                                           __tmp79150))))
                                              (declare (not safe))
                                              (cons __tmp79149 _bind77595_))))
                                       (declare (not safe))
                                       (_lp77590_
                                        _rest77623_
                                        __tmp79155
                                        _pre77594_
                                        __tmp79148
                                        _post77596_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd77624_))
                                         (let* ((_len77626_ (length _hd77624_))
                                                (_tmp77628_
                                                 (let ((__tmp79128 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79128))))
                                           (let ((__tmp79147
                                                  (cdr _exprs77593_))
                                                 (__tmp79140
                                                  (let ((__tmp79141
                                                         (lambda (_id77631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r77632_)
                   (if (let () (declare (not safe)) (__AST-e _id77631_))
                       (let ((__tmp79142
                              (let ((__tmp79146
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id77631_)))
                                    (__tmp79143
                                     (let ((__tmp79144
                                            (let ((__tmp79145
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp79145))))
                                       (declare (not safe))
                                       (cons __tmp79144 '()))))
                                (declare (not safe))
                                (cons __tmp79146 __tmp79143))))
                         (declare (not safe))
                         (cons __tmp79142 _r77632_))
                       _r77632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp79141
                                                            _pre77594_
                                                            _hd77624_)))
                                                 (__tmp79136
                                                  (let ((__tmp79137
                                                         (let ((__tmp79138
                                                                (let ((__tmp79139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77593_)))
                          (declare (not safe))
                          (cons __tmp79139 '()))))
                   (declare (not safe))
                   (cons _tmp77628_ __tmp79138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79137
                                                          _bind77595_)))
                                                 (__tmp79129
                                                  (let ((__tmp79130
                                                         (let ((__tmp79131
                                                                (let ((__tmp79132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79134
                                      (lambda (_id77634_ _k77635_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id77634_))
                                            (let ((__tmp79135
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id77634_))))
                                              (declare (not safe))
                                              (cons __tmp79135 _k77635_))
                                            '#f)))
                                     (__tmp79133 (iota _len77626_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79134
                                  _hd77624_
                                  __tmp79133))))
                          (declare (not safe))
                          (cons _len77626_ __tmp79132))))
                   (declare (not safe))
                   (cons _tmp77628_ __tmp79131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79130
                                                          _post77596_))))
                                             (declare (not safe))
                                             (_lp77590_
                                              _rest77623_
                                              __tmp79147
                                              __tmp79140
                                              __tmp79136
                                              __tmp79129)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77476_
                                            _hd77624_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7759777611_))
                              (let ((_tl7760777660_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7759777611_)))
                                    (_hd7760677658_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7759777611_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7760677658_))
                                    (let ((_tl7760977665_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7760677658_)))
                                          (_hd7760877663_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7760677658_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7760977665_))
                                          (let ((_id77668_ _hd7760877663_)
                                                (_rest77670_ _tl7760777660_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7760577655_
                                               _rest77670_
                                               _id77668_)))
                                          (let ((_hd77645_ _hd7760677658_)
                                                (_rest77647_ _tl7760777660_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7760277637_
                                               _rest77647_
                                               _hd77645_)))))
                                    (let ((_hd77645_ _hd7760677658_)
                                          (_rest77647_ _tl7760777660_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7760277637_
                                         _rest77647_
                                         _hd77645_)))))
                              (let ()
                                (declare (not safe))
                                (_else7760077619_))))))))
                 (_compile-inner77480_
                  (lambda (_pre77581_ _bind77582_ _post77583_ _body77584_)
                    (if (let () (declare (not safe)) (null? _pre77581_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind77481_
                           _bind77582_
                           _post77583_
                           _body77584_))
                        (let ((__tmp79156
                               (let ((__tmp79157
                                      (let ((__tmp79160 (reverse _pre77581_))
                                            (__tmp79158
                                             (let ((__tmp79159
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind77481_
                                                       _bind77582_
                                                       _post77583_
                                                       _body77584_))))
                                               (declare (not safe))
                                               (cons __tmp79159 '()))))
                                        (declare (not safe))
                                        (cons __tmp79160 __tmp79158))))
                                 (declare (not safe))
                                 (cons 'let __tmp79157))))
                          (declare (not safe))
                          (__SRC__% __tmp79156 _stx77476_)))))
                 (_compile-bind77481_
                  (lambda (_bind77577_ _post77578_ _body77579_)
                    (let ((__tmp79161
                           (let ((__tmp79162
                                  (let ((__tmp79165 (reverse _bind77577_))
                                        (__tmp79163
                                         (let ((__tmp79164
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77482_
                                                   _post77578_
                                                   _body77579_))))
                                           (declare (not safe))
                                           (cons __tmp79164 '()))))
                                    (declare (not safe))
                                    (cons __tmp79165 __tmp79163))))
                             (declare (not safe))
                             (cons 'letrec __tmp79162))))
                      (declare (not safe))
                      (__SRC__% __tmp79161 _stx77476_))))
                 (_compile-post77482_
                  (lambda (_post77484_ _body77485_)
                    (let _lp77487_ ((_rest77489_ _post77484_)
                                    (_check77490_ '())
                                    (_bind77491_ '()))
                      (let* ((_rest7749277504_ _rest77489_)
                             (_else7749477512_
                              (lambda ()
                                (let ((__tmp79166
                                       (let ((__tmp79167
                                              (let ((__tmp79168
                                                     (let ((__tmp79169
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body77485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp79169 _bind77491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79168
                                                        _check77490_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79167))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79166 _stx77476_))))
                             (_K7749677551_
                              (lambda (_rest77515_
                                       _init77516_
                                       _len77517_
                                       _tmp77518_)
                                (let ((__tmp79178
                                       (let ((__tmp79179
                                              (let ((__tmp79180
                                                     (let ((__tmp79181
                                                            (let ((__tmp79182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77517_ '()))))
                      (declare (not safe))
                      (cons _tmp77518_ __tmp79182))))
               (declare (not safe))
               (cons '__check-values __tmp79181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79180
                                                 _stx77476_))))
                                         (declare (not safe))
                                         (cons __tmp79179 _check77490_)))
                                      (__tmp79170
                                       (let ((__tmp79171
                                              (lambda (_hd77520_ _r77521_)
                                                (let* ((_hd7752277529_
                                                        _hd77520_)
                                                       (_E7752477533_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7752277529_))))
               (_K7752577539_
                (lambda (_k77536_ _id77537_)
                  (let ((__tmp79172
                         (let ((__tmp79173
                                (let ((__tmp79174
                                       (let ((__tmp79175
                                              (let ((__tmp79176
                                                     (let ((__tmp79177
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k77536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp77518_ __tmp79177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp79176))))
                                         (declare (not safe))
                                         (cons __tmp79175 '()))))
                                  (declare (not safe))
                                  (cons _id77537_ __tmp79174))))
                           (declare (not safe))
                           (cons 'set! __tmp79173))))
                    (declare (not safe))
                    (cons __tmp79172 _r77521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7752277529_))
                                                      (let ((_hd7752677542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7752277529_)))
                    (_tl7752777544_
                     (let () (declare (not safe)) (##cdr _hd7752277529_))))
                (let* ((_id77547_ _hd7752677542_) (_k77549_ _tl7752777544_))
                  (declare (not safe))
                  (_K7752577539_ _k77549_ _id77547_)))
              (let () (declare (not safe)) (_E7752477533_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79171
                                                 _bind77491_
                                                 _init77516_))))
                                  (declare (not safe))
                                  (_lp77487_
                                   _rest77515_
                                   __tmp79178
                                   __tmp79170)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7749277504_))
                            (let ((_hd7749777554_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7749277504_)))
                                  (_tl7749877556_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7749277504_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7749777554_))
                                  (let ((_hd7749977559_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7749777554_)))
                                        (_tl7750077561_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7749777554_))))
                                    (let ((_tmp77564_ _hd7749977559_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7750077561_))
                                          (let ((_hd7750177566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7750077561_)))
                                                (_tl7750277568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7750077561_))))
                                            (let* ((_len77571_ _hd7750177566_)
                                                   (_init77573_ _tl7750277568_)
                                                   (_rest77575_
                                                    _tl7749877556_))
                                              (declare (not safe))
                                              (_K7749677551_
                                               _rest77575_
                                               _init77573_
                                               _len77571_
                                               _tmp77564_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7749477512_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7749477512_))))
                            (let ()
                              (declare (not safe))
                              (_else7749477512_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77476_
             _compile-simple77478_
             _compile-values77479_)))))
    (define __compile-letrec*-values%
      (lambda (_stx77231_)
        (letrec ((_compile-simple77233_
                  (lambda (_hd-ids77472_ _exprs77473_ _body77474_)
                    (let ((__tmp79183
                           (let ((__tmp79184
                                  (let ((__tmp79186
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77472_)
                                              _exprs77473_))
                                        (__tmp79185
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77474_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79186 __tmp79185))))
                             (declare (not safe))
                             (cons 'letrec* __tmp79184))))
                      (declare (not safe))
                      (__SRC__% __tmp79183 _stx77231_))))
                 (_compile-values77234_
                  (lambda (_hd-ids77383_ _exprs77384_ _body77385_)
                    (let _lp77387_ ((_rest77389_ _hd-ids77383_)
                                    (_exprs77390_ _exprs77384_)
                                    (_bind77391_ '())
                                    (_post77392_ '()))
                      (let* ((_rest7739377407_ _rest77389_)
                             (_else7739677415_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind77235_
                                   _bind77391_
                                   _post77392_
                                   _body77385_)))))
                        (let ((_K7740177455_
                               (lambda (_rest77450_ _hd77451_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77451_))
                                     (let ((_id77453_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77451_))))
                                       (let ((__tmp79201 (cdr _exprs77390_))
                                             (__tmp79196
                                              (let ((__tmp79197
                                                     (let ((__tmp79198
                                                            (let ((__tmp79199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79200
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79200))))
                      (declare (not safe))
                      (cons __tmp79199 '()))))
               (declare (not safe))
               (cons _id77453_ __tmp79198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79197 _bind77391_)))
                                             (__tmp79192
                                              (let ((__tmp79193
                                                     (let ((__tmp79194
                                                            (let ((__tmp79195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs77390_)))
                      (declare (not safe))
                      (cons __tmp79195 '()))))
               (declare (not safe))
               (cons _id77453_ __tmp79194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79193
                                                      _post77392_))))
                                         (declare (not safe))
                                         (_lp77387_
                                          _rest77450_
                                          __tmp79201
                                          __tmp79196
                                          __tmp79192)))
                                     (let ((__tmp79191 (cdr _exprs77390_))
                                           (__tmp79187
                                            (let ((__tmp79188
                                                   (let ((__tmp79189
                                                          (let ((__tmp79190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs77390_)))
                    (declare (not safe))
                    (cons __tmp79190 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp79189))))
                                              (declare (not safe))
                                              (cons __tmp79188 _post77392_))))
                                       (declare (not safe))
                                       (_lp77387_
                                        _rest77450_
                                        __tmp79191
                                        _bind77391_
                                        __tmp79187)))))
                              (_K7739877435_
                               (lambda (_rest77419_ _hd77420_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77420_))
                                     (let ((_id77422_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77420_))))
                                       (let ((__tmp79237 (cdr _exprs77390_))
                                             (__tmp79232
                                              (let ((__tmp79233
                                                     (let ((__tmp79234
                                                            (let ((__tmp79235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79236
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79236))))
                      (declare (not safe))
                      (cons __tmp79235 '()))))
               (declare (not safe))
               (cons _id77422_ __tmp79234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79233 _bind77391_)))
                                             (__tmp79226
                                              (let ((__tmp79227
                                                     (let ((__tmp79228
                                                            (let ((__tmp79229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79230
                                  (let ((__tmp79231 (car _exprs77390_)))
                                    (declare (not safe))
                                    (cons __tmp79231 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp79230))))
                      (declare (not safe))
                      (cons __tmp79229 '()))))
               (declare (not safe))
               (cons _id77422_ __tmp79228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79227
                                                      _post77392_))))
                                         (declare (not safe))
                                         (_lp77387_
                                          _rest77419_
                                          __tmp79237
                                          __tmp79232
                                          __tmp79226)))
                                     (if (let ((__tmp79225
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd77420_))))
                                           (declare (not safe))
                                           (not __tmp79225))
                                         (let ((__tmp79224 (cdr _exprs77390_))
                                               (__tmp79220
                                                (let ((__tmp79221
                                                       (let ((__tmp79222
                                                              (let ((__tmp79223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs77390_)))
                        (declare (not safe))
                        (cons __tmp79223 '()))))
                 (declare (not safe))
                 (cons '#f __tmp79222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79221
                                                        _post77392_))))
                                           (declare (not safe))
                                           (_lp77387_
                                            _rest77419_
                                            __tmp79224
                                            _bind77391_
                                            __tmp79220))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd77420_))
                                             (let* ((_len77424_
                                                     (length _hd77420_))
                                                    (_tmp77426_
                                                     (let ((__tmp79202
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp79202))))
                                               (let ((__tmp79219
                                                      (cdr _exprs77390_))
                                                     (__tmp79212
                                                      (let ((__tmp79213
                                                             (lambda (_id77429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r77430_)
                       (if (let () (declare (not safe)) (__AST-e _id77429_))
                           (let ((__tmp79214
                                  (let ((__tmp79218
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77429_)))
                                        (__tmp79215
                                         (let ((__tmp79216
                                                (let ((__tmp79217
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp79217))))
                                           (declare (not safe))
                                           (cons __tmp79216 '()))))
                                    (declare (not safe))
                                    (cons __tmp79218 __tmp79215))))
                             (declare (not safe))
                             (cons __tmp79214 _r77430_))
                           _r77430_))))
                (declare (not safe))
                (foldl1 __tmp79213 _bind77391_ _hd77420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79203
                                                      (let ((__tmp79204
                                                             (let ((__tmp79205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79211 (car _exprs77390_))
                                  (__tmp79206
                                   (let ((__tmp79207
                                          (let ((__tmp79209
                                                 (lambda (_id77432_ _k77433_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id77432_))
                                                       (let ((__tmp79210
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id77432_))))
                 (declare (not safe))
                 (cons __tmp79210 _k77433_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp79208 (iota _len77424_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp79209
                                             _hd77420_
                                             __tmp79208))))
                                     (declare (not safe))
                                     (cons _len77424_ __tmp79207))))
                              (declare (not safe))
                              (cons __tmp79211 __tmp79206))))
                       (declare (not safe))
                       (cons _tmp77426_ __tmp79205))))
                (declare (not safe))
                (cons __tmp79204 _post77392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp77387_
                                                  _rest77419_
                                                  __tmp79219
                                                  __tmp79212
                                                  __tmp79203)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx77231_
                                                _hd77420_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7739377407_))
                              (let ((_tl7740377460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7739377407_)))
                                    (_hd7740277458_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7739377407_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7740277458_))
                                    (let ((_tl7740577465_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7740277458_)))
                                          (_hd7740477463_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7740277458_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7740577465_))
                                          (let ((_hd77468_ _hd7740477463_)
                                                (_rest77470_ _tl7740377460_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7740177455_
                                               _rest77470_
                                               _hd77468_)))
                                          (let ((_hd77443_ _hd7740277458_)
                                                (_rest77445_ _tl7740377460_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7739877435_
                                               _rest77445_
                                               _hd77443_)))))
                                    (let ((_hd77443_ _hd7740277458_)
                                          (_rest77445_ _tl7740377460_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7739877435_
                                         _rest77445_
                                         _hd77443_)))))
                              (let ()
                                (declare (not safe))
                                (_else7739677415_))))))))
                 (_compile-bind77235_
                  (lambda (_bind77379_ _post77380_ _body77381_)
                    (let ((__tmp79238
                           (let ((__tmp79239
                                  (let ((__tmp79242 (reverse _bind77379_))
                                        (__tmp79240
                                         (let ((__tmp79241
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77236_
                                                   _post77380_
                                                   _body77381_))))
                                           (declare (not safe))
                                           (cons __tmp79241 '()))))
                                    (declare (not safe))
                                    (cons __tmp79242 __tmp79240))))
                             (declare (not safe))
                             (cons 'let __tmp79239))))
                      (declare (not safe))
                      (__SRC__% __tmp79238 _stx77231_))))
                 (_compile-post77236_
                  (lambda (_post77238_ _body77239_)
                    (let ((__tmp79243
                           (let ((__tmp79244
                                  (let ((__tmp79245
                                         (let ((__tmp79247
                                                (lambda (_hd77241_ _r77242_)
                                                  (let* ((_hd7724377266_
                                                          _hd77241_)
                                                         (_E7724777270_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7724377266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7726077364_
                                                           (lambda (_expr77362_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr77362_ _r77242_))))
                  (_K7725577342_
                   (lambda (_expr77339_ _id77340_)
                     (let ((__tmp79248
                            (let ((__tmp79249
                                   (let ((__tmp79250
                                          (let ((__tmp79251
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr77339_ '()))))
                                            (declare (not safe))
                                            (cons _id77340_ __tmp79251))))
                                     (declare (not safe))
                                     (cons 'set! __tmp79250))))
                              (declare (not safe))
                              (__SRC__% __tmp79249 _stx77231_))))
                       (declare (not safe))
                       (cons __tmp79248 _r77242_))))
                  (_K7724877309_
                   (lambda (_init77274_ _len77275_ _expr77276_ _tmp77277_)
                     (let ((__tmp79252
                            (let ((__tmp79253
                                   (let ((__tmp79254
                                          (let ((__tmp79268
                                                 (let ((__tmp79269
                                                        (let ((__tmp79270
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr77276_ '()))))
                  (declare (not safe))
                  (cons _tmp77277_ __tmp79270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79269 '())))
                                                (__tmp79255
                                                 (let ((__tmp79264
                                                        (let ((__tmp79265
                                                               (let ((__tmp79266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp79267
                                     (let ()
                                       (declare (not safe))
                                       (cons _len77275_ '()))))
                                (declare (not safe))
                                (cons _tmp77277_ __tmp79267))))
                         (declare (not safe))
                         (cons '__check-values __tmp79266))))
                  (declare (not safe))
                  (__SRC__% __tmp79265 _stx77231_)))
               (__tmp79256
                (let ((__tmp79257
                       (map (lambda (_hd77279_)
                              (let* ((_hd7728077287_ _hd77279_)
                                     (_E7728277291_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7728077287_))))
                                     (_K7728377297_
                                      (lambda (_k77294_ _id77295_)
                                        (let ((__tmp79258
                                               (let ((__tmp79259
                                                      (let ((__tmp79260
                                                             (let ((__tmp79261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79262
                                   (let ((__tmp79263
                                          (let ()
                                            (declare (not safe))
                                            (cons _k77294_ '()))))
                                     (declare (not safe))
                                     (cons _tmp77277_ __tmp79263))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp79262))))
                       (declare (not safe))
                       (cons __tmp79261 '()))))
                (declare (not safe))
                (cons _id77295_ __tmp79260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp79259))))
                                          (declare (not safe))
                                          (__SRC__% __tmp79258 _stx77231_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7728077287_))
                                    (let ((_hd7728477300_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7728077287_)))
                                          (_tl7728577302_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7728077287_))))
                                      (let* ((_id77305_ _hd7728477300_)
                                             (_k77307_ _tl7728577302_))
                                        (declare (not safe))
                                        (_K7728377297_ _k77307_ _id77305_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7728277291_)))))
                            _init77274_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp79257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79264
                                                         __tmp79256))))
                                            (declare (not safe))
                                            (cons __tmp79268 __tmp79255))))
                                     (declare (not safe))
                                     (cons 'let __tmp79254))))
                              (declare (not safe))
                              (__SRC__% __tmp79253 _stx77231_))))
                       (declare (not safe))
                       (cons __tmp79252 _r77242_)))))
              (if (let () (declare (not safe)) (##pair? _hd7724377266_))
                  (let ((_tl7726277369_
                         (let () (declare (not safe)) (##cdr _hd7724377266_)))
                        (_hd7726177367_
                         (let () (declare (not safe)) (##car _hd7724377266_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7726177367_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7726277369_))
                            (let ((_tl7726477374_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7726277369_)))
                                  (_hd7726377372_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7726277369_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7726477374_))
                                  (let ((_expr77377_ _hd7726377372_))
                                    (declare (not safe))
                                    (_K7726077364_ _expr77377_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7726477374_))
                                      (let ((_tl7725477328_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7726477374_)))
                                            (_hd7725377326_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7726477374_))))
                                        (let ((_tmp77317_ _hd7726177367_)
                                              (_expr77324_ _hd7726377372_)
                                              (_len77331_ _hd7725377326_)
                                              (_init77333_ _tl7725477328_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7724877309_
                                             _init77333_
                                             _len77331_
                                             _expr77324_
                                             _tmp77317_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7724777270_)))))
                            (let () (declare (not safe)) (_E7724777270_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7726277369_))
                            (let ((_tl7725977354_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7726277369_)))
                                  (_hd7725877352_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7726277369_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7725977354_))
                                  (let ((_id77350_ _hd7726177367_)
                                        (_expr77357_ _hd7725877352_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7725577342_ _expr77357_ _id77350_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7725977354_))
                                      (let ((_tl7725477328_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7725977354_)))
                                            (_hd7725377326_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7725977354_))))
                                        (let ((_tmp77317_ _hd7726177367_)
                                              (_expr77324_ _hd7725877352_)
                                              (_len77331_ _hd7725377326_)
                                              (_init77333_ _tl7725477328_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7724877309_
                                             _init77333_
                                             _len77331_
                                             _expr77324_
                                             _tmp77317_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7724777270_)))))
                            (let () (declare (not safe)) (_E7724777270_)))))
                  (let () (declare (not safe)) (_E7724777270_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp79246 (list _body77239_)))
                                           (declare (not safe))
                                           (foldl1 __tmp79247
                                                   __tmp79246
                                                   _post77238_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp79245))))
                             (declare (not safe))
                             (cons 'begin __tmp79244))))
                      (declare (not safe))
                      (__SRC__% __tmp79243 _stx77231_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77231_
             _compile-simple77233_
             _compile-values77234_)))))
    (define __compile-call%
      (lambda (_stx77191_)
        (let* ((_$e77193_ _stx77191_)
               (_$E7719577204_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77193_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77193_))
              (let* ((_$tgt7719677207_
                      (let () (declare (not safe)) (__AST-e _$e77193_)))
                     (_$hd7719777210_
                      (let () (declare (not safe)) (##car _$tgt7719677207_)))
                     (_$tl7719877213_
                      (let () (declare (not safe)) (##cdr _$tgt7719677207_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7719877213_))
                    (let* ((_$tgt7719977217_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7719877213_)))
                           (_$hd7720077220_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7719977217_)))
                           (_$tl7720177223_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7719977217_))))
                      (let* ((_rator77227_ _$hd7720077220_)
                             (_rands77229_ _$tl7720177223_)
                             (__tmp79271
                              (let ((__tmp79273
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator77227_)))
                                    (__tmp79272 (map __compile _rands77229_)))
                                (declare (not safe))
                                (cons __tmp79273 __tmp79272))))
                        (declare (not safe))
                        (__SRC__% __tmp79271 _stx77191_)))
                    (let () (declare (not safe)) (_$E7719577204_))))
              (let () (declare (not safe)) (_$E7719577204_))))))
    (define __compile-ref%
      (lambda (_stx77153_)
        (let* ((_$e77155_ _stx77153_)
               (_$E7715777166_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77155_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77155_))
              (let* ((_$tgt7715877169_
                      (let () (declare (not safe)) (__AST-e _$e77155_)))
                     (_$hd7715977172_
                      (let () (declare (not safe)) (##car _$tgt7715877169_)))
                     (_$tl7716077175_
                      (let () (declare (not safe)) (##cdr _$tgt7715877169_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7716077175_))
                    (let* ((_$tgt7716177179_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7716077175_)))
                           (_$hd7716277182_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7716177179_)))
                           (_$tl7716377185_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7716177179_))))
                      (let ((_id77189_ _$hd7716277182_))
                        (if (let ((__tmp79274
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7716377185_))))
                              (declare (not safe))
                              (equal? __tmp79274 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id77189_ _stx77153_))
                            (let () (declare (not safe)) (_$E7715777166_)))))
                    (let () (declare (not safe)) (_$E7715777166_))))
              (let () (declare (not safe)) (_$E7715777166_))))))
    (define __compile-setq%
      (lambda (_stx77100_)
        (let* ((_$e77102_ _stx77100_)
               (_$E7710477116_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77102_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77102_))
              (let* ((_$tgt7710577119_
                      (let () (declare (not safe)) (__AST-e _$e77102_)))
                     (_$hd7710677122_
                      (let () (declare (not safe)) (##car _$tgt7710577119_)))
                     (_$tl7710777125_
                      (let () (declare (not safe)) (##cdr _$tgt7710577119_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7710777125_))
                    (let* ((_$tgt7710877129_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7710777125_)))
                           (_$hd7710977132_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7710877129_)))
                           (_$tl7711077135_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7710877129_))))
                      (let ((_id77139_ _$hd7710977132_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7711077135_))
                            (let* ((_$tgt7711177141_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7711077135_)))
                                   (_$hd7711277144_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7711177141_)))
                                   (_$tl7711377147_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7711177141_))))
                              (let ((_expr77151_ _$hd7711277144_))
                                (if (let ((__tmp79280
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7711377147_))))
                                      (declare (not safe))
                                      (equal? __tmp79280 '()))
                                    (let ((__tmp79275
                                           (let ((__tmp79276
                                                  (let ((__tmp79279
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id77139_
                                                            _stx77100_)))
                                                        (__tmp79277
                                                         (let ((__tmp79278
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr77151_))))
                   (declare (not safe))
                   (cons __tmp79278 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79279
                                                          __tmp79277))))
                                             (declare (not safe))
                                             (cons 'set! __tmp79276))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79275 _stx77100_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7710477116_)))))
                            (let () (declare (not safe)) (_$E7710477116_)))))
                    (let () (declare (not safe)) (_$E7710477116_))))
              (let () (declare (not safe)) (_$E7710477116_))))))
    (define __compile-if%
      (lambda (_stx77032_)
        (let* ((_$e77034_ _stx77032_)
               (_$E7703677051_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77034_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77034_))
              (let* ((_$tgt7703777054_
                      (let () (declare (not safe)) (__AST-e _$e77034_)))
                     (_$hd7703877057_
                      (let () (declare (not safe)) (##car _$tgt7703777054_)))
                     (_$tl7703977060_
                      (let () (declare (not safe)) (##cdr _$tgt7703777054_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7703977060_))
                    (let* ((_$tgt7704077064_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7703977060_)))
                           (_$hd7704177067_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7704077064_)))
                           (_$tl7704277070_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7704077064_))))
                      (let ((_p77074_ _$hd7704177067_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7704277070_))
                            (let* ((_$tgt7704377076_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7704277070_)))
                                   (_$hd7704477079_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7704377076_)))
                                   (_$tl7704577082_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7704377076_))))
                              (let ((_t77086_ _$hd7704477079_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7704577082_))
                                    (let* ((_$tgt7704677088_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7704577082_)))
                                           (_$hd7704777091_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7704677088_)))
                                           (_$tl7704877094_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7704677088_))))
                                      (let ((_f77098_ _$hd7704777091_))
                                        (if (let ((__tmp79288
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7704877094_))))
                                              (declare (not safe))
                                              (equal? __tmp79288 '()))
                                            (let ((__tmp79281
                                                   (let ((__tmp79282
                                                          (let ((__tmp79287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p77074_)))
                        (__tmp79283
                         (let ((__tmp79286
                                (let ()
                                  (declare (not safe))
                                  (__compile _t77086_)))
                               (__tmp79284
                                (let ((__tmp79285
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f77098_))))
                                  (declare (not safe))
                                  (cons __tmp79285 '()))))
                           (declare (not safe))
                           (cons __tmp79286 __tmp79284))))
                    (declare (not safe))
                    (cons __tmp79287 __tmp79283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp79282))))
                                              (declare (not safe))
                                              (__SRC__% __tmp79281 _stx77032_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7703677051_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7703677051_)))))
                            (let () (declare (not safe)) (_$E7703677051_)))))
                    (let () (declare (not safe)) (_$E7703677051_))))
              (let () (declare (not safe)) (_$E7703677051_))))))
    (define __compile-quote%
      (lambda (_stx76994_)
        (let* ((_$e76996_ _stx76994_)
               (_$E7699877007_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76996_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76996_))
              (let* ((_$tgt7699977010_
                      (let () (declare (not safe)) (__AST-e _$e76996_)))
                     (_$hd7700077013_
                      (let () (declare (not safe)) (##car _$tgt7699977010_)))
                     (_$tl7700177016_
                      (let () (declare (not safe)) (##cdr _$tgt7699977010_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7700177016_))
                    (let* ((_$tgt7700277020_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7700177016_)))
                           (_$hd7700377023_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7700277020_)))
                           (_$tl7700477026_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7700277020_))))
                      (let ((_e77030_ _$hd7700377023_))
                        (if (let ((__tmp79292
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7700477026_))))
                              (declare (not safe))
                              (equal? __tmp79292 '()))
                            (let ((__tmp79289
                                   (let ((__tmp79290
                                          (let ((__tmp79291
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e77030_))))
                                            (declare (not safe))
                                            (cons __tmp79291 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79290))))
                              (declare (not safe))
                              (__SRC__% __tmp79289 _stx76994_))
                            (let () (declare (not safe)) (_$E7699877007_)))))
                    (let () (declare (not safe)) (_$E7699877007_))))
              (let () (declare (not safe)) (_$E7699877007_))))))
    (define __compile-quote-syntax%
      (lambda (_stx76956_)
        (let* ((_$e76958_ _stx76956_)
               (_$E7696076969_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76958_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76958_))
              (let* ((_$tgt7696176972_
                      (let () (declare (not safe)) (__AST-e _$e76958_)))
                     (_$hd7696276975_
                      (let () (declare (not safe)) (##car _$tgt7696176972_)))
                     (_$tl7696376978_
                      (let () (declare (not safe)) (##cdr _$tgt7696176972_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7696376978_))
                    (let* ((_$tgt7696476982_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7696376978_)))
                           (_$hd7696576985_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7696476982_)))
                           (_$tl7696676988_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7696476982_))))
                      (let ((_e76992_ _$hd7696576985_))
                        (if (let ((__tmp79295
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7696676988_))))
                              (declare (not safe))
                              (equal? __tmp79295 '()))
                            (let ((__tmp79293
                                   (let ((__tmp79294
                                          (let ()
                                            (declare (not safe))
                                            (cons _e76992_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79294))))
                              (declare (not safe))
                              (__SRC__% __tmp79293 _stx76956_))
                            (let () (declare (not safe)) (_$E7696076969_)))))
                    (let () (declare (not safe)) (_$E7696076969_))))
              (let () (declare (not safe)) (_$E7696076969_))))))
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
