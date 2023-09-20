(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1695201399)
  (begin
    (define __context::t
      (make-struct-type
       'gerbil/runtime/eval#__context::t
       '#f
       '4
       '__context
       '()
       '#f
       '(t ns super table)))
    (define __context? (make-struct-predicate __context::t))
    (define make-__context
      (lambda _$args9780_
        (apply make-struct-instance __context::t _$args9780_)))
    (define __context-t (make-struct-field-accessor __context::t '0))
    (define __context-ns (make-struct-field-accessor __context::t '1))
    (define __context-super (make-struct-field-accessor __context::t '2))
    (define __context-table (make-struct-field-accessor __context::t '3))
    (define __context-t-set! (make-struct-field-mutator __context::t '0))
    (define __context-ns-set! (make-struct-field-mutator __context::t '1))
    (define __context-super-set! (make-struct-field-mutator __context::t '2))
    (define __context-table-set! (make-struct-field-mutator __context::t '3))
    (define &__context-t
      (make-struct-field-unchecked-accessor __context::t '0))
    (define &__context-ns
      (make-struct-field-unchecked-accessor __context::t '1))
    (define &__context-super
      (make-struct-field-unchecked-accessor __context::t '2))
    (define &__context-table
      (make-struct-field-unchecked-accessor __context::t '3))
    (define &__context-t-set!
      (make-struct-field-unchecked-mutator __context::t '0))
    (define &__context-ns-set!
      (make-struct-field-unchecked-mutator __context::t '1))
    (define &__context-super-set!
      (make-struct-field-unchecked-mutator __context::t '2))
    (define &__context-table-set!
      (make-struct-field-unchecked-mutator __context::t '3))
    (define __runtime::t
      (make-struct-type
       'gerbil/runtime/eval#__runtime::t
       '#f
       '1
       '__runtime
       '()
       '#f
       '(id)))
    (define __runtime? (make-struct-predicate __runtime::t))
    (define make-__runtime
      (lambda _$args9777_
        (apply make-struct-instance __runtime::t _$args9777_)))
    (define __runtime-id (make-struct-field-accessor __runtime::t '0))
    (define __runtime-id-set! (make-struct-field-mutator __runtime::t '0))
    (define &__runtime-id
      (make-struct-field-unchecked-accessor __runtime::t '0))
    (define &__runtime-id-set!
      (make-struct-field-unchecked-mutator __runtime::t '0))
    (define __syntax::t
      (make-struct-type
       'gerbil/runtime/eval#__syntax::t
       '#f
       '2
       '__syntax
       '()
       '#f
       '(e id)))
    (define __syntax? (make-struct-predicate __syntax::t))
    (define make-__syntax
      (lambda _$args9774_
        (apply make-struct-instance __syntax::t _$args9774_)))
    (define __syntax-e (make-struct-field-accessor __syntax::t '0))
    (define __syntax-id (make-struct-field-accessor __syntax::t '1))
    (define __syntax-e-set! (make-struct-field-mutator __syntax::t '0))
    (define __syntax-id-set! (make-struct-field-mutator __syntax::t '1))
    (define &__syntax-e (make-struct-field-unchecked-accessor __syntax::t '0))
    (define &__syntax-id (make-struct-field-unchecked-accessor __syntax::t '1))
    (define &__syntax-e-set!
      (make-struct-field-unchecked-mutator __syntax::t '0))
    (define &__syntax-id-set!
      (make-struct-field-unchecked-mutator __syntax::t '1))
    (define __macro::t
      (make-struct-type
       'gerbil/runtime/eval#__macro::t
       __syntax::t
       '0
       '__macro
       '()
       '#f
       '()))
    (define __macro? (make-struct-predicate __macro::t))
    (define make-__macro
      (lambda _$args9771_ (apply make-struct-instance __macro::t _$args9771_)))
    (define __special-form::t
      (make-struct-type
       'gerbil/runtime/eval#__special-form::t
       __macro::t
       '0
       '__special-form
       '()
       '#f
       '()))
    (define __special-form? (make-struct-predicate __special-form::t))
    (define make-__special-form
      (lambda _$args9768_
        (apply make-struct-instance __special-form::t _$args9768_)))
    (define __core-form::t
      (make-struct-type
       'gerbil/runtime/eval#__core-form::t
       __syntax::t
       '0
       '__core-form
       '()
       '#f
       '()))
    (define __core-form? (make-struct-predicate __core-form::t))
    (define make-__core-form
      (lambda _$args9765_
        (apply make-struct-instance __core-form::t _$args9765_)))
    (define __core-expression::t
      (make-struct-type
       'gerbil/runtime/eval#__core-expression::t
       __core-form::t
       '0
       '__core-expression
       '()
       '#f
       '()))
    (define __core-expression? (make-struct-predicate __core-expression::t))
    (define make-__core-expression
      (lambda _$args9762_
        (apply make-struct-instance __core-expression::t _$args9762_)))
    (define __core-special-form::t
      (make-struct-type
       'gerbil/runtime/eval#__core-special-form::t
       __core-form::t
       '0
       '__core-special-form
       '()
       '#f
       '()))
    (define __core-special-form?
      (make-struct-predicate __core-special-form::t))
    (define make-__core-special-form
      (lambda _$args9759_
        (apply make-struct-instance __core-special-form::t _$args9759_)))
    (define __struct-info::t
      (make-struct-type
       'gerbil/runtime/eval#__struct-info::t
       __syntax::t
       '0
       '__struct-info
       '()
       '#f
       '()))
    (define __struct-info? (make-struct-predicate __struct-info::t))
    (define make-__struct-info
      (lambda _$args9756_
        (apply make-struct-instance __struct-info::t _$args9756_)))
    (define __feature::t
      (make-struct-type
       'gerbil/runtime/eval#__feature::t
       __syntax::t
       '0
       '__feature
       '()
       '#f
       '()))
    (define __feature? (make-struct-predicate __feature::t))
    (define make-__feature
      (lambda _$args9753_
        (apply make-struct-instance __feature::t _$args9753_)))
    (define __module::t
      (make-struct-type
       'gerbil/runtime/eval#__module::t
       __context::t
       '4
       '__module
       '()
       '#f
       '(id path import export)))
    (define __module? (make-struct-predicate __module::t))
    (define make-__module
      (lambda _$args9750_
        (apply make-struct-instance __module::t _$args9750_)))
    (define __module-id (make-struct-field-accessor __module::t '0))
    (define __module-path (make-struct-field-accessor __module::t '1))
    (define __module-import (make-struct-field-accessor __module::t '2))
    (define __module-export (make-struct-field-accessor __module::t '3))
    (define __module-id-set! (make-struct-field-mutator __module::t '0))
    (define __module-path-set! (make-struct-field-mutator __module::t '1))
    (define __module-import-set! (make-struct-field-mutator __module::t '2))
    (define __module-export-set! (make-struct-field-mutator __module::t '3))
    (define &__module-id (make-struct-field-unchecked-accessor __module::t '0))
    (define &__module-path
      (make-struct-field-unchecked-accessor __module::t '1))
    (define &__module-import
      (make-struct-field-unchecked-accessor __module::t '2))
    (define &__module-export
      (make-struct-field-unchecked-accessor __module::t '3))
    (define &__module-id-set!
      (make-struct-field-unchecked-mutator __module::t '0))
    (define &__module-path-set!
      (make-struct-field-unchecked-mutator __module::t '1))
    (define &__module-import-set!
      (make-struct-field-unchecked-mutator __module::t '2))
    (define &__module-export-set!
      (make-struct-field-unchecked-mutator __module::t '3))
    (define __*modules* (make-hash-table))
    (define __*core* (make-hash-table-eq))
    (define __*top*
      (make-__context
       'top
       '#f
       (make-__context 'root '#f '#f __*core*)
       (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (let ((_opt-lambda97239740_
             (lambda (_id9725_ _ctx9726_)
               (if _ctx9726_
                   (let ((_id9728_ (__AST-e _id9725_)))
                     (let _lp9730_ ((_ctx9732_ _ctx9726_))
                       (let ((_$e9734_
                              (table-ref
                               (__context-table _ctx9732_)
                               _id9728_
                               '#f)))
                         (if _$e9734_
                             (values _$e9734_)
                             (let ((_$e9737_ (__context-super _ctx9732_)))
                               (if _$e9737_ (_lp9730_ _$e9737_) '#f))))))
                   '#f))))
        (lambda _g9783_
          (let ((_g9782_ (let () (declare (not safe)) (##length _g9783_))))
            (cond ((let () (declare (not safe)) (##fx= _g9782_ 1))
                   (apply (lambda (_id9743_)
                            (let ((_ctx9745_ (__current-context)))
                              (_opt-lambda97239740_ _id9743_ _ctx9745_)))
                          _g9783_))
                  ((let () (declare (not safe)) (##fx= _g9782_ 2))
                   (apply _opt-lambda97239740_ _g9783_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __core-resolve
                    _g9783_)))))))
    (define __core-bound-id?
      (let ((_opt-lambda97069714_
             (lambda (_id9708_ _is?9709_)
               (let ((_$e9711_ (__core-resolve _id9708_)))
                 (if _$e9711_ (_is?9709_ _$e9711_) '#f)))))
        (lambda _g9785_
          (let ((_g9784_ (let () (declare (not safe)) (##length _g9785_))))
            (cond ((let () (declare (not safe)) (##fx= _g9784_ 1))
                   (apply (lambda (_id9717_)
                            (let ((_is?9719_ true))
                              (_opt-lambda97069714_ _id9717_ _is?9719_)))
                          _g9785_))
                  ((let () (declare (not safe)) (##fx= _g9784_ 2))
                   (apply _opt-lambda97069714_ _g9785_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __core-bound-id?
                    _g9785_)))))))
    (define __core-bind-runtime!
      (let ((_opt-lambda96899695_
             (lambda (_id9691_ _eid9692_ _ctx9693_)
               (if _eid9692_
                   (hash-put!
                    (__context-table _ctx9693_)
                    (__AST-e _id9691_)
                    (make-__runtime _eid9692_))
                   '#!void))))
        (lambda _g9787_
          (let ((_g9786_ (let () (declare (not safe)) (##length _g9787_))))
            (cond ((let () (declare (not safe)) (##fx= _g9786_ 2))
                   (apply (lambda (_id9698_ _eid9699_)
                            (let ((_ctx9701_ (__current-context)))
                              (_opt-lambda96899695_
                               _id9698_
                               _eid9699_
                               _ctx9701_)))
                          _g9787_))
                  ((let () (declare (not safe)) (##fx= _g9786_ 3))
                   (apply _opt-lambda96899695_ _g9787_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __core-bind-runtime!
                    _g9787_)))))))
    (define __core-bind-syntax!
      (let ((_opt-lambda96729678_
             (lambda (_id9674_ _e9675_ _make9676_)
               (hash-put!
                __*core*
                _id9674_
                (if (__syntax? _e9675_)
                    _e9675_
                    (_make9676_ _e9675_ _id9674_))))))
        (lambda _g9789_
          (let ((_g9788_ (let () (declare (not safe)) (##length _g9789_))))
            (cond ((let () (declare (not safe)) (##fx= _g9788_ 2))
                   (apply (lambda (_id9681_ _e9682_)
                            (let ((_make9684_ make-__syntax))
                              (_opt-lambda96729678_
                               _id9681_
                               _e9682_
                               _make9684_)))
                          _g9789_))
                  ((let () (declare (not safe)) (##fx= _g9788_ 3))
                   (apply _opt-lambda96729678_ _g9789_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __core-bind-syntax!
                    _g9789_)))))))
    (define __core-bind-macro!
      (lambda (_id9670_ _e9671_)
        (__core-bind-syntax! _id9670_ _e9671_ make-__macro)))
    (define __core-bind-special-form!
      (lambda (_id9667_ _e9668_)
        (__core-bind-syntax! _id9667_ _e9668_ make-__special-form)))
    (define __core-bind-user-syntax!
      (let ((_opt-lambda96499655_
             (lambda (_id9651_ _e9652_ _ctx9653_)
               (hash-put!
                (__context-table _ctx9653_)
                (__AST-e _id9651_)
                (if (__syntax? _e9652_)
                    _e9652_
                    (make-__syntax _e9652_ (__AST-e _id9651_)))))))
        (lambda _g9791_
          (let ((_g9790_ (let () (declare (not safe)) (##length _g9791_))))
            (cond ((let () (declare (not safe)) (##fx= _g9790_ 2))
                   (apply (lambda (_id9658_ _e9659_)
                            (let ((_ctx9661_ (__current-context)))
                              (_opt-lambda96499655_
                               _id9658_
                               _e9659_
                               _ctx9661_)))
                          _g9791_))
                  ((let () (declare (not safe)) (##fx= _g9790_ 3))
                   (apply _opt-lambda96499655_ _g9791_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __core-bind-user-syntax!
                    _g9791_)))))))
    (define make-__runtime-id
      (let ((_opt-lambda96309640_
             (lambda (_id9632_ _ctx9633_)
               (let ((_id9635_ (__AST-e _id9632_)))
                 (if (eq? _id9635_ '_)
                     '#f
                     (if (uninterned-symbol? _id9635_)
                         (gensym _id9635_)
                         (if (symbol? _id9635_)
                             (let ((_$e9637_ (__context-t _ctx9633_)))
                               (if (eq? 'local _$e9637_)
                                   (gensym _id9635_)
                                   (if (eq? 'module _$e9637_)
                                       (make-symbol
                                        (__context-ns _ctx9633_)
                                        '"#"
                                        _id9635_)
                                       _id9635_)))
                             (error '"Illegal runtime identifier"
                                    _id9635_))))))))
        (lambda _g9793_
          (let ((_g9792_ (let () (declare (not safe)) (##length _g9793_))))
            (cond ((let () (declare (not safe)) (##fx= _g9792_ 1))
                   (apply (lambda (_id9643_)
                            (let ((_ctx9645_ (__current-context)))
                              (_opt-lambda96309640_ _id9643_ _ctx9645_)))
                          _g9793_))
                  ((let () (declare (not safe)) (##fx= _g9792_ 2))
                   (apply _opt-lambda96309640_ _g9793_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-__runtime-id
                    _g9793_)))))))
    (define make-__context-local
      (let ((_opt-lambda96199623_
             (lambda (_super9621_)
               (make-__context 'local '#f _super9621_ (make-hash-table-eq)))))
        (lambda _g9795_
          (let ((_g9794_ (let () (declare (not safe)) (##length _g9795_))))
            (cond ((let () (declare (not safe)) (##fx= _g9794_ 0))
                   (apply (lambda ()
                            (let ((_super9627_ (__current-context)))
                              (_opt-lambda96199623_ _super9627_)))
                          _g9795_))
                  ((let () (declare (not safe)) (##fx= _g9794_ 1))
                   (apply _opt-lambda96199623_ _g9795_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-__context-local
                    _g9795_)))))))
    (define make-__context-module
      (let ((_opt-lambda95999606_
             (lambda (_id9601_ _ns9602_ _path9603_ _super9604_)
               (make-__module
                'module
                _ns9602_
                _super9604_
                (make-hash-table-eq)
                _id9601_
                _path9603_
                '#f
                '#f))))
        (lambda _g9797_
          (let ((_g9796_ (let () (declare (not safe)) (##length _g9797_))))
            (cond ((let () (declare (not safe)) (##fx= _g9796_ 3))
                   (apply (lambda (_id9609_ _ns9610_ _path9611_)
                            (let ((_super9613_ (__current-context)))
                              (_opt-lambda95999606_
                               _id9609_
                               _ns9610_
                               _path9611_
                               _super9613_)))
                          _g9797_))
                  ((let () (declare (not safe)) (##fx= _g9796_ 4))
                   (apply _opt-lambda95999606_ _g9797_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-__context-module
                    _g9797_)))))))
    (define __SRC
      (let ((_opt-lambda95829590_
             (lambda (_e9584_ _src-stx9585_)
               (if (or (pair? _e9584_) (symbol? _e9584_))
                   (let ((__tmp9798
                          (if (AST? _src-stx9585_)
                              (__locat (__AST-source _src-stx9585_))
                              '#f)))
                     (declare (not safe))
                     (##make-source _e9584_ __tmp9798))
                   (if (AST? _e9584_)
                       (let ((__tmp9800 (&AST-e _e9584_))
                             (__tmp9799 (__locat (__AST-source _e9584_))))
                         (declare (not safe))
                         (##make-source __tmp9800 __tmp9799))
                       (error '"BUG! Cannot sourcify object" _e9584_))))))
        (lambda _g9802_
          (let ((_g9801_ (let () (declare (not safe)) (##length _g9802_))))
            (cond ((let () (declare (not safe)) (##fx= _g9801_ 1))
                   (apply (lambda (_e9593_)
                            (let ((_src-stx9595_ '#f))
                              (_opt-lambda95829590_ _e9593_ _src-stx9595_)))
                          _g9802_))
                  ((let () (declare (not safe)) (##fx= _g9801_ 2))
                   (apply _opt-lambda95829590_ _g9802_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __SRC
                    _g9802_)))))))
    (define __locat
      (lambda (_loc9581_)
        (if (let () (declare (not safe)) (##locat? _loc9581_)) _loc9581_ '#f)))
    (define __check-values
      (lambda (_obj9576_ _k9577_)
        (let ((_count9579_ (values-count _obj9576_)))
          (if (fx= _count9579_ _k9577_)
              '#!void
              (error (if (fx< _count9579_ _k9577_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj9576_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj9576_))
                         _obj9576_)
                     _k9577_)))))
    (define __compile
      (lambda (_stx9546_)
        (let* ((_$e9548_ _stx9546_)
               (_$E95509556_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e9548_))))
          (if (__AST-pair? _$e9548_)
              (let* ((_$tgt95519559_ (__AST-e _$e9548_))
                     (_$hd95529562_
                      (let () (declare (not safe)) (##car _$tgt95519559_)))
                     (_$tl95539565_
                      (let () (declare (not safe)) (##cdr _$tgt95519559_))))
                (let* ((_form9569_ _$hd95529562_)
                       (_$e9571_ (__core-resolve _form9569_)))
                  (if _$e9571_
                      ((lambda (_bind9574_)
                         ((__syntax-e _bind9574_) _stx9546_))
                       _$e9571_)
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _stx9546_
                       _form9569_))))
              (_$E95509556_)))))
    (define __compile-error
      (let ((_opt-lambda95319536_
             (lambda (_stx9533_ _detail9534_)
               (__raise-syntax-error
                'compile
                '"Bad syntax; cannot compile"
                _stx9533_
                _detail9534_))))
        (lambda _g9804_
          (let ((_g9803_ (let () (declare (not safe)) (##length _g9804_))))
            (cond ((let () (declare (not safe)) (##fx= _g9803_ 1))
                   (apply (lambda (_stx9539_)
                            (let ((_detail9541_ '#f))
                              (_opt-lambda95319536_ _stx9539_ _detail9541_)))
                          _g9804_))
                  ((let () (declare (not safe)) (##fx= _g9803_ 2))
                   (apply _opt-lambda95319536_ _g9804_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __compile-error
                    _g9804_)))))))
    (define __compile-ignore% (lambda (_stx9530_) (__SRC ''#!void _stx9530_)))
    (define __compile-begin%
      (lambda (_stx9505_)
        (let* ((_$e9507_ _stx9505_)
               (_$E95099515_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e9507_))))
          (if (__AST-pair? _$e9507_)
              (let* ((_$tgt95109518_ (__AST-e _$e9507_))
                     (_$hd95119521_
                      (let () (declare (not safe)) (##car _$tgt95109518_)))
                     (_$tl95129524_
                      (let () (declare (not safe)) (##cdr _$tgt95109518_))))
                (let ((_body9528_ _$tl95129524_))
                  (__SRC (cons 'begin (map __compile _body9528_)) _stx9505_)))
              (_$E95099515_)))))
    (define __compile-begin-foreign%
      (lambda (_stx9480_)
        (let* ((_$e9482_ _stx9480_)
               (_$E94849490_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e9482_))))
          (if (__AST-pair? _$e9482_)
              (let* ((_$tgt94859493_ (__AST-e _$e9482_))
                     (_$hd94869496_
                      (let () (declare (not safe)) (##car _$tgt94859493_)))
                     (_$tl94879499_
                      (let () (declare (not safe)) (##cdr _$tgt94859493_))))
                (let ((_body9503_ _$tl94879499_))
                  (__SRC (cons 'begin (__AST->datum _body9503_)) _stx9480_)))
              (_$E94849490_)))))
    (define __compile-import%
      (lambda (_stx9455_)
        (let* ((_$e9457_ _stx9455_)
               (_$E94599465_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e9457_))))
          (if (__AST-pair? _$e9457_)
              (let* ((_$tgt94609468_ (__AST-e _$e9457_))
                     (_$hd94619471_
                      (let () (declare (not safe)) (##car _$tgt94609468_)))
                     (_$tl94629474_
                      (let () (declare (not safe)) (##cdr _$tgt94609468_))))
                (let ((_body9478_ _$tl94629474_))
                  (__SRC (cons '__eval-import
                               (cons (cons 'quote (cons _body9478_ '())) '()))
                         _stx9455_)))
              (_$E94599465_)))))
    (define __compile-begin-annotation%
      (lambda (_stx9402_)
        (let* ((_$e9404_ _stx9402_)
               (_$E94069418_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e9404_))))
          (if (__AST-pair? _$e9404_)
              (let* ((_$tgt94079421_ (__AST-e _$e9404_))
                     (_$hd94089424_
                      (let () (declare (not safe)) (##car _$tgt94079421_)))
                     (_$tl94099427_
                      (let () (declare (not safe)) (##cdr _$tgt94079421_))))
                (if (__AST-pair? _$tl94099427_)
                    (let* ((_$tgt94109431_ (__AST-e _$tl94099427_))
                           (_$hd94119434_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt94109431_)))
                           (_$tl94129437_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt94109431_))))
                      (let ((_ann9441_ _$hd94119434_))
                        (if (__AST-pair? _$tl94129437_)
                            (let* ((_$tgt94139443_ (__AST-e _$tl94129437_))
                                   (_$hd94149446_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt94139443_)))
                                   (_$tl94159449_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt94139443_))))
                              (let ((_expr9453_ _$hd94149446_))
                                (if (equal? (__AST-e _$tl94159449_) '())
                                    (__compile _expr9453_)
                                    (_$E94069418_))))
                            (_$E94069418_))))
                    (_$E94069418_)))
              (_$E94069418_)))))
    (define __compile-define-values%
      (lambda (_stx9293_)
        (let* ((_$e9295_ _stx9293_)
               (_$E92979309_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e9295_))))
          (if (__AST-pair? _$e9295_)
              (let* ((_$tgt92989312_ (__AST-e _$e9295_))
                     (_$hd92999315_
                      (let () (declare (not safe)) (##car _$tgt92989312_)))
                     (_$tl93009318_
                      (let () (declare (not safe)) (##cdr _$tgt92989312_))))
                (if (__AST-pair? _$tl93009318_)
                    (let* ((_$tgt93019322_ (__AST-e _$tl93009318_))
                           (_$hd93029325_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt93019322_)))
                           (_$tl93039328_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt93019322_))))
                      (let ((_hd9332_ _$hd93029325_))
                        (if (__AST-pair? _$tl93039328_)
                            (let* ((_$tgt93049334_ (__AST-e _$tl93039328_))
                                   (_$hd93059337_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt93049334_)))
                                   (_$tl93069340_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt93049334_))))
                              (let ((_expr9344_ _$hd93059337_))
                                (if (equal? (__AST-e _$tl93069340_) '())
                                    (let* ((_$e9346_ _hd9332_)
                                           (_$E93489389_
                                            (lambda ()
                                              (let ((_$E93499374_
                                                     (lambda ()
                                                       (let* ((_$E93509361_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (__raise-syntax-error '#f '"Bad syntax" _$e9346_)))
                      (_ids9364_ _hd9332_)
                      (_len9366_ (length _ids9364_))
                      (_tmp9368_ (__SRC (gensym))))
                 (__SRC (cons 'begin
                              (cons (__SRC (cons 'define
                                                 (cons _tmp9368_
                                                       (cons (__compile
                                                              _expr9344_)
                                                             '())))
                                           _stx9293_)
                                    (cons (__SRC (cons '__check-values
                                                       (cons _tmp9368_
                                                             (cons _len9366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx9293_)
                                          (foldr cons
                                                 '()
                                                 (filter-map
                                                  (lambda (_id9371_ _k9372_)
                                                    (if (__AST-e _id9371_)
                                                        (__SRC (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (__SRC _id9371_)
                                   (cons (cons '##vector-ref
                                               (cons _tmp9368_
                                                     (cons _k9372_ '())))
                                         '())))
                       _stx9293_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ids9364_
                                                  (iota _len9366_))))))
                        _stx9293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (__AST-pair? _$e9346_)
                                                    (let* ((_$tgt93519377_
                                                            (__AST-e _$e9346_))
                                                           (_$hd93529380_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt93519377_)))
                                                           (_$tl93539383_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt93519377_))))
                                                      (let ((_id9387_
                                                             _$hd93529380_))
                                                        (if (equal? (__AST-e _$tl93539383_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                    (__SRC (cons 'define
                                 (cons (__SRC _id9387_)
                                       (cons (__compile _expr9344_) '())))
                           _stx9293_)
                    (_$E93499374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_$E93499374_))))))
                                      (if (__AST-pair? _$e9346_)
                                          (let* ((_$tgt93549392_
                                                  (__AST-e _$e9346_))
                                                 (_$hd93559395_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt93549392_)))
                                                 (_$tl93569398_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt93549392_))))
                                            (if (equal? (__AST-e _$hd93559395_)
                                                        '#f)
                                                (if (equal? (__AST-e _$tl93569398_)
                                                            '())
                                                    (__compile _expr9344_)
                                                    (_$E93489389_))
                                                (_$E93489389_)))
                                          (_$E93489389_)))
                                    (_$E92979309_))))
                            (_$E92979309_))))
                    (_$E92979309_)))
              (_$E92979309_)))))
    (define __compile-head-id
      (lambda (_e9291_) (__SRC (if (__AST-e _e9291_) _e9291_ (gensym)))))
    (define __compile-lambda-head
      (lambda (_hd9248_)
        (let _recur9250_ ((_rest9252_ _hd9248_))
          (let* ((_$e9254_ _rest9252_)
                 (_$E92569274_
                  (lambda ()
                    (let ((_$E92579271_
                           (lambda ()
                             (let* ((_$E92589266_
                                     (lambda ()
                                       (__raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _$e9254_)))
                                    (_tail9269_ _$e9254_))
                               (__compile-head-id _tail9269_)))))
                      (if (equal? (__AST-e _$e9254_) '())
                          '()
                          (_$E92579271_))))))
            (if (__AST-pair? _$e9254_)
                (let* ((_$tgt92599277_ (__AST-e _$e9254_))
                       (_$hd92609280_
                        (let () (declare (not safe)) (##car _$tgt92599277_)))
                       (_$tl92619283_
                        (let () (declare (not safe)) (##cdr _$tgt92599277_))))
                  (let* ((_hd9287_ _$hd92609280_) (_rest9289_ _$tl92619283_))
                    (cons (__compile-head-id _hd9287_)
                          (_recur9250_ _rest9289_))))
                (_$E92569274_))))))
    (define __compile-lambda%
      (lambda (_stx9195_)
        (let* ((_$e9197_ _stx9195_)
               (_$E91999211_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e9197_))))
          (if (__AST-pair? _$e9197_)
              (let* ((_$tgt92009214_ (__AST-e _$e9197_))
                     (_$hd92019217_
                      (let () (declare (not safe)) (##car _$tgt92009214_)))
                     (_$tl92029220_
                      (let () (declare (not safe)) (##cdr _$tgt92009214_))))
                (if (__AST-pair? _$tl92029220_)
                    (let* ((_$tgt92039224_ (__AST-e _$tl92029220_))
                           (_$hd92049227_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt92039224_)))
                           (_$tl92059230_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt92039224_))))
                      (let ((_hd9234_ _$hd92049227_))
                        (if (__AST-pair? _$tl92059230_)
                            (let* ((_$tgt92069236_ (__AST-e _$tl92059230_))
                                   (_$hd92079239_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt92069236_)))
                                   (_$tl92089242_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt92069236_))))
                              (let ((_body9246_ _$hd92079239_))
                                (if (equal? (__AST-e _$tl92089242_) '())
                                    (__SRC (cons 'lambda
                                                 (cons (__compile-lambda-head
                                                        _hd9234_)
                                                       (cons (__compile
                                                              _body9246_)
                                                             '())))
                                           _stx9195_)
                                    (_$E91999211_))))
                            (_$E91999211_))))
                    (_$E91999211_)))
              (_$E91999211_)))))
    (define __compile-case-lambda%
      (lambda (_stx8987_)
        (letrec ((_variadic?8989_
                  (lambda (_hd9160_)
                    (let* ((_$e9162_ _hd9160_)
                           (_$E91649180_
                            (lambda ()
                              (let ((_$E91659177_
                                     (lambda ()
                                       (let ((_$E91669174_
                                              (lambda ()
                                                (__raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _$e9162_))))
                                         '#t))))
                                (if (equal? (__AST-e _$e9162_) '())
                                    '#f
                                    (_$E91659177_))))))
                      (if (__AST-pair? _$e9162_)
                          (let* ((_$tgt91679183_ (__AST-e _$e9162_))
                                 (_$hd91689186_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt91679183_)))
                                 (_$tl91699189_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt91679183_))))
                            (let ((_rest9193_ _$tl91699189_))
                              (_variadic?8989_ _rest9193_)))
                          (_$E91649180_)))))
                 (_arity8990_
                  (lambda (_hd9125_)
                    (let _lp9127_ ((_rest9129_ _hd9125_) (_k9130_ '0))
                      (let* ((_$e9132_ _rest9129_)
                             (_$E91349145_
                              (lambda ()
                                (let ((_$E91359142_
                                       (lambda ()
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _$e9132_))))
                                  _k9130_))))
                        (if (__AST-pair? _$e9132_)
                            (let* ((_$tgt91369148_ (__AST-e _$e9132_))
                                   (_$hd91379151_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt91369148_)))
                                   (_$tl91389154_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt91369148_))))
                              (let ((_rest9158_ _$tl91389154_))
                                (_lp9127_ _rest9158_ (fx1+ _k9130_))))
                            (_$E91349145_))))))
                 (_generate8991_
                  (lambda (_rest9052_ _args9053_ _len9054_)
                    (let* ((_$e9056_ _rest9052_)
                           (_$E90589069_
                            (lambda ()
                              (let ((_$E90599066_
                                     (lambda ()
                                       (__raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _$e9056_))))
                                (__SRC (cons 'error
                                             (cons '"No clause matching arguments"
                                                   (cons _args9053_ '())))
                                       _stx8987_)))))
                      (if (__AST-pair? _$e9056_)
                          (let* ((_$tgt90609072_ (__AST-e _$e9056_))
                                 (_$hd90619075_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt90609072_)))
                                 (_$tl90629078_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt90609072_))))
                            (let* ((_clause9082_ _$hd90619075_)
                                   (_rest9084_ _$tl90629078_)
                                   (_$e9086_ _clause9082_)
                                   (_$E90889097_
                                    (lambda ()
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _$e9086_))))
                              (if (__AST-pair? _$e9086_)
                                  (let* ((_$tgt90899100_ (__AST-e _$e9086_))
                                         (_$hd90909103_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt90899100_)))
                                         (_$tl90919106_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt90899100_))))
                                    (let ((_hd9110_ _$hd90909103_))
                                      (if (__AST-pair? _$tl90919106_)
                                          (let* ((_$tgt90929112_
                                                  (__AST-e _$tl90919106_))
                                                 (_$hd90939115_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt90929112_)))
                                                 (_$tl90949118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt90929112_))))
                                            (if (equal? (__AST-e _$tl90949118_)
                                                        '())
                                                (let ((_clen9122_
                                                       (_arity8990_ _hd9110_))
                                                      (_cmp9123_
                                                       (if (_variadic?8989_
                                                            _hd9110_)
                                                           'fx>=
                                                           'fx=)))
                                                  (__SRC (cons 'if
                                                               (cons (cons _cmp9123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _len9054_ (cons _clen9122_ '())))
                             (cons (__SRC (cons '##apply
                                                (cons (__compile-lambda%
                                                       (cons '%#lambda
                                                             _clause9082_))
                                                      (cons _args9053_ '())))
                                          _stx8987_)
                                   (cons (_generate8991_
                                          _rest9084_
                                          _args9053_
                                          _len9054_)
                                         '()))))
                 _stx8987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_$E90889097_)))
                                          (_$E90889097_))))
                                  (_$E90889097_))))
                          (_$E90589069_))))))
          (let* ((_$e8993_ _stx8987_)
                 (_$E89959027_
                  (lambda ()
                    (let ((_$E89969009_
                           (lambda ()
                             (__raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _$e8993_))))
                      (if (__AST-pair? _$e8993_)
                          (let* ((_$tgt89979012_ (__AST-e _$e8993_))
                                 (_$hd89989015_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt89979012_)))
                                 (_$tl89999018_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt89979012_))))
                            (let ((_clauses9022_ _$tl89999018_))
                              (let ((_args9024_ (__SRC (gensym) _stx8987_))
                                    (_len9025_ (__SRC (gensym) _stx8987_)))
                                (__SRC (cons 'lambda
                                             (cons _args9024_
                                                   (cons (__SRC (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (cons _len9025_
                                                (cons (__SRC (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9024_ '()))
                     _stx8987_)
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate8991_
                                           _clauses9022_
                                           _args9024_
                                           _len9025_)
                                          '())))
                        _stx8987_)
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx8987_))))
                          (_$E89969009_))))))
            (if (__AST-pair? _$e8993_)
                (let* ((_$tgt90009030_ (__AST-e _$e8993_))
                       (_$hd90019033_
                        (let () (declare (not safe)) (##car _$tgt90009030_)))
                       (_$tl90029036_
                        (let () (declare (not safe)) (##cdr _$tgt90009030_))))
                  (if (__AST-pair? _$tl90029036_)
                      (let* ((_$tgt90039040_ (__AST-e _$tl90029036_))
                             (_$hd90049043_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt90039040_)))
                             (_$tl90059046_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt90039040_))))
                        (let ((_clause9050_ _$hd90049043_))
                          (if (equal? (__AST-e _$tl90059046_) '())
                              (__compile-lambda% (cons '%#lambda _clause9050_))
                              (_$E89959027_))))
                      (_$E89959027_)))
                (_$E89959027_))))))
    (define __compile-let-form
      (lambda (_stx8756_ _compile-simple8757_ _compile-values8758_)
        (letrec ((_simple-bind?8760_
                  (lambda (_hd8945_)
                    (let* ((_hd89468956_ _hd8945_)
                           (_E89508960_
                            (lambda ()
                              (error '"No clause matching" _hd89468956_)))
                           (_else89498964_ (lambda () '#f))
                           (_try-match89488972_
                            (lambda ()
                              (let ((_K89518969_ (lambda () '#t)))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd89468956_ '#f))
                                    (_K89518969_)
                                    (_else89498964_)))))
                           (_K89528977_ (lambda (_id8975_) '#t)))
                      (if (let () (declare (not safe)) (##pair? _hd89468956_))
                          (let ((_hd89538980_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd89468956_)))
                                (_tl89548982_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd89468956_))))
                            (let ((_id8985_ _hd89538980_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl89548982_))
                                  (_K89528977_ _id8985_)
                                  (_try-match89488972_))))
                          (_try-match89488972_)))))
                 (_car-e8761_
                  (lambda (_hd8943_)
                    (if (pair? _hd8943_) (car _hd8943_) _hd8943_))))
          (let* ((_$e8763_ _stx8756_)
                 (_$E87658908_
                  (lambda ()
                    (let ((_$E87668788_
                           (lambda ()
                             (__raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _$e8763_))))
                      (if (__AST-pair? _$e8763_)
                          (let* ((_$tgt87678791_ (__AST-e _$e8763_))
                                 (_$hd87688794_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt87678791_)))
                                 (_$tl87698797_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt87678791_))))
                            (if (__AST-pair? _$tl87698797_)
                                (let* ((_$tgt87708801_ (__AST-e _$tl87698797_))
                                       (_$hd87718804_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt87708801_)))
                                       (_$tl87728807_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt87708801_))))
                                  (let ((_hd8811_ _$hd87718804_))
                                    (if (__AST-pair? _$tl87728807_)
                                        (let* ((_$tgt87738813_
                                                (__AST-e _$tl87728807_))
                                               (_$hd87748816_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt87738813_)))
                                               (_$tl87758819_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt87738813_))))
                                          (let ((_body8823_ _$hd87748816_))
                                            (if (equal? (__AST-e _$tl87758819_)
                                                        '())
                                                (let* ((_hd-ids8863_
                                                        (map (lambda (_bind8825_)
                                                               (let* ((_$e8827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind8825_)
                              (_$E88298838_
                               (lambda ()
                                 (__raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _$e8827_))))
                         (if (__AST-pair? _$e8827_)
                             (let* ((_$tgt88308841_ (__AST-e _$e8827_))
                                    (_$hd88318844_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt88308841_)))
                                    (_$tl88328847_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt88308841_))))
                               (let ((_ids8851_ _$hd88318844_))
                                 (if (__AST-pair? _$tl88328847_)
                                     (let* ((_$tgt88338853_
                                             (__AST-e _$tl88328847_))
                                            (_$hd88348856_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt88338853_)))
                                            (_$tl88358859_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt88338853_))))
                                       (if (equal? (__AST-e _$tl88358859_) '())
                                           _ids8851_
                                           (_$E88298838_)))
                                     (_$E88298838_))))
                             (_$E88298838_))))
                     _hd8811_))
               (_exprs8903_
                (map (lambda (_bind8865_)
                       (let* ((_$e8867_ _bind8865_)
                              (_$E88698878_
                               (lambda ()
                                 (__raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _$e8867_))))
                         (if (__AST-pair? _$e8867_)
                             (let* ((_$tgt88708881_ (__AST-e _$e8867_))
                                    (_$hd88718884_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt88708881_)))
                                    (_$tl88728887_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt88708881_))))
                               (if (__AST-pair? _$tl88728887_)
                                   (let* ((_$tgt88738891_
                                           (__AST-e _$tl88728887_))
                                          (_$hd88748894_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt88738891_)))
                                          (_$tl88758897_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt88738891_))))
                                     (let ((_expr8901_ _$hd88748894_))
                                       (if (equal? (__AST-e _$tl88758897_) '())
                                           (__compile _expr8901_)
                                           (_$E88698878_))))
                                   (_$E88698878_)))
                             (_$E88698878_))))
                     _hd8811_))
               (_body8905_ (__compile _body8823_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (andmap _simple-bind?8760_
                                                              _hd-ids8863_)
                                                      (_compile-simple8757_
                                                       (map _car-e8761_
                                                            _hd-ids8863_)
                                                       _exprs8903_
                                                       _body8905_)
                                                      (_compile-values8758_
                                                       _hd-ids8863_
                                                       _exprs8903_
                                                       _body8905_)))
                                                (_$E87668788_))))
                                        (_$E87668788_))))
                                (_$E87668788_)))
                          (_$E87668788_))))))
            (if (__AST-pair? _$e8763_)
                (let* ((_$tgt87768911_ (__AST-e _$e8763_))
                       (_$hd87778914_
                        (let () (declare (not safe)) (##car _$tgt87768911_)))
                       (_$tl87788917_
                        (let () (declare (not safe)) (##cdr _$tgt87768911_))))
                  (if (__AST-pair? _$tl87788917_)
                      (let* ((_$tgt87798921_ (__AST-e _$tl87788917_))
                             (_$hd87808924_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt87798921_)))
                             (_$tl87818927_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt87798921_))))
                        (if (equal? (__AST-e _$hd87808924_) '())
                            (if (__AST-pair? _$tl87818927_)
                                (let* ((_$tgt87828931_ (__AST-e _$tl87818927_))
                                       (_$hd87838934_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt87828931_)))
                                       (_$tl87848937_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt87828931_))))
                                  (let ((_body8941_ _$hd87838934_))
                                    (if (equal? (__AST-e _$tl87848937_) '())
                                        (__compile _body8941_)
                                        (_$E87658908_))))
                                (_$E87658908_))
                            (_$E87658908_)))
                      (_$E87658908_)))
                (_$E87658908_))))))
    (define __compile-let-values%
      (lambda (_stx8571_)
        (letrec ((_compile-simple8573_
                  (lambda (_hd-ids8752_ _exprs8753_ _body8754_)
                    (__SRC (cons 'let
                                 (cons (map list
                                            (map __compile-head-id
                                                 _hd-ids8752_)
                                            _exprs8753_)
                                       (cons _body8754_ '())))
                           _stx8571_)))
                 (_compile-values8574_
                  (lambda (_hd-ids8670_ _exprs8671_ _body8672_)
                    (let _lp8674_ ((_rest8676_ _hd-ids8670_)
                                   (_exprs8677_ _exprs8671_)
                                   (_bind8678_ '())
                                   (_post8679_ '()))
                      (let* ((_rest86808694_ _rest8676_)
                             (_E86848698_
                              (lambda ()
                                (error '"No clause matching" _rest86808694_)))
                             (_else86838702_
                              (lambda ()
                                (__SRC (cons 'let
                                             (cons (reverse _bind8678_)
                                                   (cons (_compile-post8575_
                                                          _post8679_
                                                          _body8672_)
                                                         '())))
                                       _stx8571_)))
                             (_try-match86828729_
                              (lambda ()
                                (let ((_K86858717_
                                       (lambda (_rest8706_ _hd8707_)
                                         (if (__AST-id? _hd8707_)
                                             (_lp8674_
                                              _rest8706_
                                              (cdr _exprs8677_)
                                              (cons (cons (__compile-head-id
                                                           _hd8707_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _exprs8677_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _bind8678_)
                                              _post8679_)
                                             (if (list? _hd8707_)
                                                 (let* ((_len8709_
                                                         (length _hd8707_))
                                                        (_tmp8711_
                                                         (__SRC (gensym))))
                                                   (_lp8674_
                                                    _rest8706_
                                                    (cdr _exprs8677_)
                                                    (cons (cons _tmp8711_
                                                                (cons (car _exprs8677_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _bind8678_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons* _tmp8711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _len8709_
                         (filter-map
                          (lambda (_id8714_ _k8715_)
                            (if (__AST-e _id8714_)
                                (cons (__SRC _id8714_) _k8715_)
                                '#f))
                          _hd8707_
                          (iota _len8709_)))
                  _post8679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__compile-error
                                                  _stx8571_
                                                  _hd8707_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest86808694_))
                                      (let ((_hd86868720_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest86808694_)))
                                            (_tl86878722_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest86808694_))))
                                        (let* ((_hd8725_ _hd86868720_)
                                               (_rest8727_ _tl86878722_))
                                          (_K86858717_ _rest8727_ _hd8725_)))
                                      (_else86838702_)))))
                             (_K86888735_
                              (lambda (_rest8732_ _id8733_)
                                (_lp8674_
                                 _rest8732_
                                 (cdr _exprs8677_)
                                 (cons (cons (__compile-head-id _id8733_)
                                             (cons (car _exprs8677_) '()))
                                       _bind8678_)
                                 _post8679_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest86808694_))
                            (let ((_hd86898738_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest86808694_)))
                                  (_tl86908740_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest86808694_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd86898738_))
                                  (let ((_hd86918743_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd86898738_)))
                                        (_tl86928745_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd86898738_))))
                                    (let ((_id8748_ _hd86918743_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl86928745_))
                                          (let ((_rest8750_ _tl86908740_))
                                            (_K86888735_ _rest8750_ _id8748_))
                                          (_try-match86828729_))))
                                  (_try-match86828729_)))
                            (_try-match86828729_))))))
                 (_compile-post8575_
                  (lambda (_post8577_ _body8578_)
                    (let _lp8580_ ((_rest8582_ _post8577_)
                                   (_check8583_ '())
                                   (_bind8584_ '()))
                      (let* ((_rest85858597_ _rest8582_)
                             (_E85888601_
                              (lambda ()
                                (error '"No clause matching" _rest85858597_)))
                             (_else85878605_
                              (lambda ()
                                (__SRC (cons 'begin
                                             (foldr cons
                                                    (cons (__SRC (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _bind8584_ (cons _body8578_ '())))
                         _stx8571_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _check8583_))
                                       _stx8571_)))
                             (_K85898644_
                              (lambda (_rest8608_
                                       _init8609_
                                       _len8610_
                                       _tmp8611_)
                                (_lp8580_
                                 _rest8608_
                                 (cons (__SRC (cons '__check-values
                                                    (cons _tmp8611_
                                                          (cons _len8610_
                                                                '())))
                                              _stx8571_)
                                       _check8583_)
                                 (foldr (lambda (_hd8613_ _r8614_)
                                          (let* ((_hd86158622_ _hd8613_)
                                                 (_E86178626_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _hd86158622_)))
                                                 (_K86188632_
                                                  (lambda (_k8629_ _id8630_)
                                                    (cons (cons _id8630_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _tmp8611_ (cons _k8629_ '())))
                              '()))
                  _r8614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd86158622_))
                                                (let ((_hd86198635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd86158622_)))
                                                      (_tl86208637_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd86158622_))))
                                                  (let* ((_id8640_
                                                          _hd86198635_)
                                                         (_k8642_ _tl86208637_))
                                                    (_K86188632_
                                                     _k8642_
                                                     _id8640_)))
                                                (_E86178626_))))
                                        _bind8584_
                                        _init8609_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest85858597_))
                            (let ((_hd85908647_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest85858597_)))
                                  (_tl85918649_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest85858597_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd85908647_))
                                  (let ((_hd85928652_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd85908647_)))
                                        (_tl85938654_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd85908647_))))
                                    (let ((_tmp8657_ _hd85928652_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl85938654_))
                                          (let ((_hd85948659_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl85938654_)))
                                                (_tl85958661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl85938654_))))
                                            (let* ((_len8664_ _hd85948659_)
                                                   (_init8666_ _tl85958661_)
                                                   (_rest8668_ _tl85918649_))
                                              (_K85898644_
                                               _rest8668_
                                               _init8666_
                                               _len8664_
                                               _tmp8657_)))
                                          (_else85878605_))))
                                  (_else85878605_)))
                            (_else85878605_)))))))
          (__compile-let-form
           _stx8571_
           _compile-simple8573_
           _compile-values8574_))))
    (define __compile-letrec-values%
      (lambda (_stx8371_)
        (letrec ((_compile-simple8373_
                  (lambda (_hd-ids8567_ _exprs8568_ _body8569_)
                    (__SRC (cons 'letrec
                                 (cons (map list
                                            (map __compile-head-id
                                                 _hd-ids8567_)
                                            _exprs8568_)
                                       (cons _body8569_ '())))
                           _stx8371_)))
                 (_compile-values8374_
                  (lambda (_hd-ids8481_ _exprs8482_ _body8483_)
                    (let _lp8485_ ((_rest8487_ _hd-ids8481_)
                                   (_exprs8488_ _exprs8482_)
                                   (_pre8489_ '())
                                   (_bind8490_ '())
                                   (_post8491_ '()))
                      (let* ((_rest84928506_ _rest8487_)
                             (_E84968510_
                              (lambda ()
                                (error '"No clause matching" _rest84928506_)))
                             (_else84958514_
                              (lambda ()
                                (_compile-inner8375_
                                 _pre8489_
                                 _bind8490_
                                 _post8491_
                                 _body8483_)))
                             (_try-match84948544_
                              (lambda ()
                                (let ((_K84978532_
                                       (lambda (_rest8518_ _hd8519_)
                                         (if (__AST-id? _hd8519_)
                                             (_lp8485_
                                              _rest8518_
                                              (cdr _exprs8488_)
                                              _pre8489_
                                              (cons (cons (__compile-head-id
                                                           _hd8519_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _exprs8488_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _bind8490_)
                                              _post8491_)
                                             (if (list? _hd8519_)
                                                 (let* ((_len8521_
                                                         (length _hd8519_))
                                                        (_tmp8523_
                                                         (__SRC (gensym))))
                                                   (_lp8485_
                                                    _rest8518_
                                                    (cdr _exprs8488_)
                                                    (foldl (lambda (_id8526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _r8527_)
                     (if (__AST-e _id8526_)
                         (cons (cons (__SRC _id8526_)
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _r8527_)
                         _r8527_))
                   _pre8489_
                   _hd8519_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _tmp8523_
                                                                (cons (car _exprs8488_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _bind8490_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons* _tmp8523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _len8521_
                         (filter-map
                          (lambda (_id8529_ _k8530_)
                            (if (__AST-e _id8529_)
                                (cons (__SRC _id8529_) _k8530_)
                                '#f))
                          _hd8519_
                          (iota _len8521_)))
                  _post8491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__compile-error
                                                  _stx8371_
                                                  _hd8519_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest84928506_))
                                      (let ((_hd84988535_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest84928506_)))
                                            (_tl84998537_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest84928506_))))
                                        (let* ((_hd8540_ _hd84988535_)
                                               (_rest8542_ _tl84998537_))
                                          (_K84978532_ _rest8542_ _hd8540_)))
                                      (_else84958514_)))))
                             (_K85008550_
                              (lambda (_rest8547_ _id8548_)
                                (_lp8485_
                                 _rest8547_
                                 (cdr _exprs8488_)
                                 _pre8489_
                                 (cons (cons (__compile-head-id _id8548_)
                                             (cons (car _exprs8488_) '()))
                                       _bind8490_)
                                 _post8491_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest84928506_))
                            (let ((_hd85018553_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest84928506_)))
                                  (_tl85028555_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest84928506_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd85018553_))
                                  (let ((_hd85038558_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd85018553_)))
                                        (_tl85048560_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd85018553_))))
                                    (let ((_id8563_ _hd85038558_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl85048560_))
                                          (let ((_rest8565_ _tl85028555_))
                                            (_K85008550_ _rest8565_ _id8563_))
                                          (_try-match84948544_))))
                                  (_try-match84948544_)))
                            (_try-match84948544_))))))
                 (_compile-inner8375_
                  (lambda (_pre8476_ _bind8477_ _post8478_ _body8479_)
                    (if (null? _pre8476_)
                        (_compile-bind8376_ _bind8477_ _post8478_ _body8479_)
                        (__SRC (cons 'let
                                     (cons (reverse _pre8476_)
                                           (cons (_compile-bind8376_
                                                  _bind8477_
                                                  _post8478_
                                                  _body8479_)
                                                 '())))
                               _stx8371_))))
                 (_compile-bind8376_
                  (lambda (_bind8472_ _post8473_ _body8474_)
                    (__SRC (cons 'letrec
                                 (cons (reverse _bind8472_)
                                       (cons (_compile-post8377_
                                              _post8473_
                                              _body8474_)
                                             '())))
                           _stx8371_)))
                 (_compile-post8377_
                  (lambda (_post8379_ _body8380_)
                    (let _lp8382_ ((_rest8384_ _post8379_)
                                   (_check8385_ '())
                                   (_bind8386_ '()))
                      (let* ((_rest83878399_ _rest8384_)
                             (_E83908403_
                              (lambda ()
                                (error '"No clause matching" _rest83878399_)))
                             (_else83898407_
                              (lambda ()
                                (__SRC (cons 'begin
                                             (foldr cons
                                                    (foldr cons
                                                           (cons _body8380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   _bind8386_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _check8385_))
                                       _stx8371_)))
                             (_K83918446_
                              (lambda (_rest8410_
                                       _init8411_
                                       _len8412_
                                       _tmp8413_)
                                (_lp8382_
                                 _rest8410_
                                 (cons (__SRC (cons '__check-values
                                                    (cons _tmp8413_
                                                          (cons _len8412_
                                                                '())))
                                              _stx8371_)
                                       _check8385_)
                                 (foldr (lambda (_hd8415_ _r8416_)
                                          (let* ((_hd84178424_ _hd8415_)
                                                 (_E84198428_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _hd84178424_)))
                                                 (_K84208434_
                                                  (lambda (_k8431_ _id8432_)
                                                    (cons (cons 'set!
                                                                (cons _id8432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _tmp8413_ (cons _k8431_ '())))
                                    '())))
                  _r8416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd84178424_))
                                                (let ((_hd84218437_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd84178424_)))
                                                      (_tl84228439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd84178424_))))
                                                  (let* ((_id8442_
                                                          _hd84218437_)
                                                         (_k8444_ _tl84228439_))
                                                    (_K84208434_
                                                     _k8444_
                                                     _id8442_)))
                                                (_E84198428_))))
                                        _bind8386_
                                        _init8411_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest83878399_))
                            (let ((_hd83928449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest83878399_)))
                                  (_tl83938451_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest83878399_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd83928449_))
                                  (let ((_hd83948454_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd83928449_)))
                                        (_tl83958456_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd83928449_))))
                                    (let ((_tmp8459_ _hd83948454_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl83958456_))
                                          (let ((_hd83968461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl83958456_)))
                                                (_tl83978463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl83958456_))))
                                            (let* ((_len8466_ _hd83968461_)
                                                   (_init8468_ _tl83978463_)
                                                   (_rest8470_ _tl83938451_))
                                              (_K83918446_
                                               _rest8470_
                                               _init8468_
                                               _len8466_
                                               _tmp8459_)))
                                          (_else83898407_))))
                                  (_else83898407_)))
                            (_else83898407_)))))))
          (__compile-let-form
           _stx8371_
           _compile-simple8373_
           _compile-values8374_))))
    (define __compile-letrec*-values%
      (lambda (_stx8126_)
        (letrec ((_compile-simple8128_
                  (lambda (_hd-ids8367_ _exprs8368_ _body8369_)
                    (__SRC (cons 'letrec*
                                 (cons (map list
                                            (map __compile-head-id
                                                 _hd-ids8367_)
                                            _exprs8368_)
                                       (cons _body8369_ '())))
                           _stx8126_)))
                 (_compile-values8129_
                  (lambda (_hd-ids8278_ _exprs8279_ _body8280_)
                    (let _lp8282_ ((_rest8284_ _hd-ids8278_)
                                   (_exprs8285_ _exprs8279_)
                                   (_bind8286_ '())
                                   (_post8287_ '()))
                      (let* ((_rest82888302_ _rest8284_)
                             (_E82928306_
                              (lambda ()
                                (error '"No clause matching" _rest82888302_)))
                             (_else82918310_
                              (lambda ()
                                (_compile-bind8130_
                                 _bind8286_
                                 _post8287_
                                 _body8280_)))
                             (_try-match82908342_
                              (lambda ()
                                (let ((_K82938330_
                                       (lambda (_rest8314_ _hd8315_)
                                         (if (__AST-id? _hd8315_)
                                             (let ((_id8317_ (__SRC _hd8315_)))
                                               (_lp8282_
                                                _rest8314_
                                                (cdr _exprs8285_)
                                                (cons (cons _id8317_
                                                            (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons '#!void '()))
                          '()))
              _bind8286_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _id8317_
                                                            (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (car _exprs8285_) '()))
                          '()))
              _post8287_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (not (__AST-e _hd8315_))
                                                 (_lp8282_
                                                  _rest8314_
                                                  (cdr _exprs8285_)
                                                  _bind8286_
                                                  (cons (cons '#f
                                                              (cons (car _exprs8285_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _post8287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (list? _hd8315_)
                                                     (let* ((_len8319_
                                                             (length _hd8315_))
                                                            (_tmp8321_
                                                             (__SRC (gensym))))
                                                       (_lp8282_
                                                        _rest8314_
                                                        (cdr _exprs8285_)
                                                        (foldl (lambda (_id8324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r8325_)
                         (if (__AST-e _id8324_)
                             (cons (cons (__SRC _id8324_)
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _r8325_)
                             _r8325_))
                       _bind8286_
                       _hd8315_)
                (cons (cons* _tmp8321_
                             (car _exprs8285_)
                             _len8319_
                             (filter-map
                              (lambda (_id8327_ _k8328_)
                                (if (__AST-e _id8327_)
                                    (cons (__SRC _id8327_) _k8328_)
                                    '#f))
                              _hd8315_
                              (iota _len8319_)))
                      _post8287_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__compile-error
                                                      _stx8126_
                                                      _hd8315_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest82888302_))
                                      (let ((_hd82948333_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest82888302_)))
                                            (_tl82958335_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest82888302_))))
                                        (let* ((_hd8338_ _hd82948333_)
                                               (_rest8340_ _tl82958335_))
                                          (_K82938330_ _rest8340_ _hd8338_)))
                                      (_else82918310_)))))
                             (_K82968350_
                              (lambda (_rest8345_ _hd8346_)
                                (if (__AST-id? _hd8346_)
                                    (let ((_id8348_ (__SRC _hd8346_)))
                                      (_lp8282_
                                       _rest8345_
                                       (cdr _exprs8285_)
                                       (cons (cons _id8348_
                                                   (cons (cons 'quote
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _bind8286_)
                                       (cons (cons _id8348_
                                                   (cons (car _exprs8285_)
                                                         '()))
                                             _post8287_)))
                                    (_lp8282_
                                     _rest8345_
                                     (cdr _exprs8285_)
                                     _bind8286_
                                     (cons (cons '#f
                                                 (cons (car _exprs8285_) '()))
                                           _post8287_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest82888302_))
                            (let ((_hd82978353_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest82888302_)))
                                  (_tl82988355_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest82888302_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd82978353_))
                                  (let ((_hd82998358_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd82978353_)))
                                        (_tl83008360_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd82978353_))))
                                    (let ((_hd8363_ _hd82998358_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl83008360_))
                                          (let ((_rest8365_ _tl82988355_))
                                            (_K82968350_ _rest8365_ _hd8363_))
                                          (_try-match82908342_))))
                                  (_try-match82908342_)))
                            (_try-match82908342_))))))
                 (_compile-bind8130_
                  (lambda (_bind8274_ _post8275_ _body8276_)
                    (__SRC (cons 'let
                                 (cons (reverse _bind8274_)
                                       (cons (_compile-post8131_
                                              _post8275_
                                              _body8276_)
                                             '())))
                           _stx8126_)))
                 (_compile-post8131_
                  (lambda (_post8133_ _body8134_)
                    (__SRC (cons 'begin
                                 (foldr cons
                                        '()
                                        (foldl (lambda (_hd8136_ _r8137_)
                                                 (let* ((_hd81388161_ _hd8136_)
                                                        (_E81428165_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd81388161_)))
                (_try-match81418230_
                 (lambda ()
                   (let ((_K81438204_
                          (lambda (_init8169_ _len8170_ _expr8171_ _tmp8172_)
                            (cons (__SRC (cons 'let
                                               (cons (cons (cons _tmp8172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr8171_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (__SRC (cons '__check-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _tmp8172_ (cons _len8170_ '())))
                          _stx8126_)
                   (foldr cons
                          '()
                          (map (lambda (_hd8174_)
                                 (let* ((_hd81758182_ _hd8174_)
                                        (_E81778186_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _hd81758182_)))
                                        (_K81788192_
                                         (lambda (_k8189_ _id8190_)
                                           (__SRC (cons 'set!
                                                        (cons _id8190_
                                                              (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _tmp8172_ (cons _k8189_ '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx8126_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd81758182_))
                                       (let ((_hd81798195_
                                              (let ()
                                                (declare (not safe))
                                                (##car _hd81758182_)))
                                             (_tl81808197_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _hd81758182_))))
                                         (let* ((_id8200_ _hd81798195_)
                                                (_k8202_ _tl81808197_))
                                           (_K81788192_ _k8202_ _id8200_)))
                                       (_E81778186_))))
                               _init8169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx8126_)
                                  _r8137_))))
                     (if (let () (declare (not safe)) (##pair? _hd81388161_))
                         (let ((_hd81448207_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd81388161_)))
                               (_tl81458209_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _hd81388161_))))
                           (let ((_tmp8212_ _hd81448207_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _tl81458209_))
                                 (let ((_hd81468214_
                                        (let ()
                                          (declare (not safe))
                                          (##car _tl81458209_)))
                                       (_tl81478216_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl81458209_))))
                                   (let ((_expr8219_ _hd81468214_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl81478216_))
                                         (let ((_hd81488221_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _tl81478216_)))
                                               (_tl81498223_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl81478216_))))
                                           (let* ((_len8226_ _hd81488221_)
                                                  (_init8228_ _tl81498223_))
                                             (_K81438204_
                                              _init8228_
                                              _len8226_
                                              _expr8219_
                                              _tmp8212_)))
                                         (_E81428165_))))
                                 (_E81428165_))))
                         (_E81428165_)))))
                (_try-match81408254_
                 (lambda ()
                   (let ((_K81508237_
                          (lambda (_expr8234_ _id8235_)
                            (cons (__SRC (cons 'set!
                                               (cons _id8235_
                                                     (cons _expr8234_ '())))
                                         _stx8126_)
                                  _r8137_))))
                     (if (let () (declare (not safe)) (##pair? _hd81388161_))
                         (let ((_hd81518240_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd81388161_)))
                               (_tl81528242_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _hd81388161_))))
                           (let ((_id8245_ _hd81518240_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _tl81528242_))
                                 (let ((_hd81538247_
                                        (let ()
                                          (declare (not safe))
                                          (##car _tl81528242_)))
                                       (_tl81548249_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl81528242_))))
                                   (let ((_expr8252_ _hd81538247_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl81548249_))
                                         (_K81508237_ _expr8252_ _id8245_)
                                         (_try-match81418230_))))
                                 (_try-match81418230_))))
                         (_try-match81418230_)))))
                (_K81558259_ (lambda (_expr8257_) (cons _expr8257_ _r8137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##pair? _hd81388161_))
                                                       (let ((_hd81568262_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _hd81388161_)))
                     (_tl81578264_
                      (let () (declare (not safe)) (##cdr _hd81388161_))))
                 (if (let () (declare (not safe)) (##eq? _hd81568262_ '#f))
                     (if (let () (declare (not safe)) (##pair? _tl81578264_))
                         (let ((_hd81588267_
                                (let ()
                                  (declare (not safe))
                                  (##car _tl81578264_)))
                               (_tl81598269_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _tl81578264_))))
                           (let ((_expr8272_ _hd81588267_))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl81598269_))
                                 (_K81558259_ _expr8272_)
                                 (_try-match81408254_))))
                         (_try-match81408254_))
                     (_try-match81408254_)))
               (_try-match81408254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (list _body8134_)
                                               _post8133_)))
                           _stx8126_))))
          (__compile-let-form
           _stx8126_
           _compile-simple8128_
           _compile-values8129_))))
    (define __compile-call%
      (lambda (_stx8086_)
        (let* ((_$e8088_ _stx8086_)
               (_$E80908099_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e8088_))))
          (if (__AST-pair? _$e8088_)
              (let* ((_$tgt80918102_ (__AST-e _$e8088_))
                     (_$hd80928105_
                      (let () (declare (not safe)) (##car _$tgt80918102_)))
                     (_$tl80938108_
                      (let () (declare (not safe)) (##cdr _$tgt80918102_))))
                (if (__AST-pair? _$tl80938108_)
                    (let* ((_$tgt80948112_ (__AST-e _$tl80938108_))
                           (_$hd80958115_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt80948112_)))
                           (_$tl80968118_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt80948112_))))
                      (let* ((_rator8122_ _$hd80958115_)
                             (_rands8124_ _$tl80968118_))
                        (__SRC (cons (__compile _rator8122_)
                                     (map __compile _rands8124_))
                               _stx8086_)))
                    (_$E80908099_)))
              (_$E80908099_)))))
    (define __compile-ref%
      (lambda (_stx8048_)
        (let* ((_$e8050_ _stx8048_)
               (_$E80528061_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e8050_))))
          (if (__AST-pair? _$e8050_)
              (let* ((_$tgt80538064_ (__AST-e _$e8050_))
                     (_$hd80548067_
                      (let () (declare (not safe)) (##car _$tgt80538064_)))
                     (_$tl80558070_
                      (let () (declare (not safe)) (##cdr _$tgt80538064_))))
                (if (__AST-pair? _$tl80558070_)
                    (let* ((_$tgt80568074_ (__AST-e _$tl80558070_))
                           (_$hd80578077_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt80568074_)))
                           (_$tl80588080_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt80568074_))))
                      (let ((_id8084_ _$hd80578077_))
                        (if (equal? (__AST-e _$tl80588080_) '())
                            (__SRC _id8084_ _stx8048_)
                            (_$E80528061_))))
                    (_$E80528061_)))
              (_$E80528061_)))))
    (define __compile-setq%
      (lambda (_stx7995_)
        (let* ((_$e7997_ _stx7995_)
               (_$E79998011_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e7997_))))
          (if (__AST-pair? _$e7997_)
              (let* ((_$tgt80008014_ (__AST-e _$e7997_))
                     (_$hd80018017_
                      (let () (declare (not safe)) (##car _$tgt80008014_)))
                     (_$tl80028020_
                      (let () (declare (not safe)) (##cdr _$tgt80008014_))))
                (if (__AST-pair? _$tl80028020_)
                    (let* ((_$tgt80038024_ (__AST-e _$tl80028020_))
                           (_$hd80048027_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt80038024_)))
                           (_$tl80058030_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt80038024_))))
                      (let ((_id8034_ _$hd80048027_))
                        (if (__AST-pair? _$tl80058030_)
                            (let* ((_$tgt80068036_ (__AST-e _$tl80058030_))
                                   (_$hd80078039_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt80068036_)))
                                   (_$tl80088042_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt80068036_))))
                              (let ((_expr8046_ _$hd80078039_))
                                (if (equal? (__AST-e _$tl80088042_) '())
                                    (__SRC (cons 'set!
                                                 (cons (__SRC _id8034_
                                                              _stx7995_)
                                                       (cons (__compile
                                                              _expr8046_)
                                                             '())))
                                           _stx7995_)
                                    (_$E79998011_))))
                            (_$E79998011_))))
                    (_$E79998011_)))
              (_$E79998011_)))))
    (define __compile-if%
      (lambda (_stx7927_)
        (let* ((_$e7929_ _stx7927_)
               (_$E79317946_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e7929_))))
          (if (__AST-pair? _$e7929_)
              (let* ((_$tgt79327949_ (__AST-e _$e7929_))
                     (_$hd79337952_
                      (let () (declare (not safe)) (##car _$tgt79327949_)))
                     (_$tl79347955_
                      (let () (declare (not safe)) (##cdr _$tgt79327949_))))
                (if (__AST-pair? _$tl79347955_)
                    (let* ((_$tgt79357959_ (__AST-e _$tl79347955_))
                           (_$hd79367962_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt79357959_)))
                           (_$tl79377965_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt79357959_))))
                      (let ((_p7969_ _$hd79367962_))
                        (if (__AST-pair? _$tl79377965_)
                            (let* ((_$tgt79387971_ (__AST-e _$tl79377965_))
                                   (_$hd79397974_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt79387971_)))
                                   (_$tl79407977_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt79387971_))))
                              (let ((_t7981_ _$hd79397974_))
                                (if (__AST-pair? _$tl79407977_)
                                    (let* ((_$tgt79417983_
                                            (__AST-e _$tl79407977_))
                                           (_$hd79427986_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt79417983_)))
                                           (_$tl79437989_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt79417983_))))
                                      (let ((_f7993_ _$hd79427986_))
                                        (if (equal? (__AST-e _$tl79437989_)
                                                    '())
                                            (__SRC (cons 'if
                                                         (cons (__compile
                                                                _p7969_)
                                                               (cons (__compile
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _t7981_)
                             (cons (__compile _f7993_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx7927_)
                                            (_$E79317946_))))
                                    (_$E79317946_))))
                            (_$E79317946_))))
                    (_$E79317946_)))
              (_$E79317946_)))))
    (define __compile-quote%
      (lambda (_stx7889_)
        (let* ((_$e7891_ _stx7889_)
               (_$E78937902_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e7891_))))
          (if (__AST-pair? _$e7891_)
              (let* ((_$tgt78947905_ (__AST-e _$e7891_))
                     (_$hd78957908_
                      (let () (declare (not safe)) (##car _$tgt78947905_)))
                     (_$tl78967911_
                      (let () (declare (not safe)) (##cdr _$tgt78947905_))))
                (if (__AST-pair? _$tl78967911_)
                    (let* ((_$tgt78977915_ (__AST-e _$tl78967911_))
                           (_$hd78987918_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt78977915_)))
                           (_$tl78997921_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt78977915_))))
                      (let ((_e7925_ _$hd78987918_))
                        (if (equal? (__AST-e _$tl78997921_) '())
                            (__SRC (cons 'quote
                                         (cons (__AST->datum _e7925_) '()))
                                   _stx7889_)
                            (_$E78937902_))))
                    (_$E78937902_)))
              (_$E78937902_)))))
    (define __compile-quote-syntax%
      (lambda (_stx7851_)
        (let* ((_$e7853_ _stx7851_)
               (_$E78557864_
                (lambda () (__raise-syntax-error '#f '"Bad syntax" _$e7853_))))
          (if (__AST-pair? _$e7853_)
              (let* ((_$tgt78567867_ (__AST-e _$e7853_))
                     (_$hd78577870_
                      (let () (declare (not safe)) (##car _$tgt78567867_)))
                     (_$tl78587873_
                      (let () (declare (not safe)) (##cdr _$tgt78567867_))))
                (if (__AST-pair? _$tl78587873_)
                    (let* ((_$tgt78597877_ (__AST-e _$tl78587873_))
                           (_$hd78607880_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt78597877_)))
                           (_$tl78617883_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt78597877_))))
                      (let ((_e7887_ _$hd78607880_))
                        (if (equal? (__AST-e _$tl78617883_) '())
                            (__SRC (cons 'quote (cons _e7887_ '())) _stx7851_)
                            (_$E78557864_))))
                    (_$E78557864_)))
              (_$E78557864_)))))
    (__core-bind-syntax! '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax! '%#module __compile-ignore% make-__core-special-form)
    (__core-bind-syntax! '%#import __compile-import% make-__core-special-form)
    (__core-bind-syntax! '%#export __compile-ignore% make-__core-special-form)
    (__core-bind-syntax! '%#provide __compile-ignore% make-__core-special-form)
    (__core-bind-syntax!
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax! '%#extern __compile-ignore% make-__core-special-form)
    (__core-bind-syntax! '%#declare __compile-ignore% make-__core-special-form)
    (__core-bind-syntax!
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax! '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax! '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax! '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax! '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax! '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax! '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax! '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax! '%#include __compile-error make-__core-form)
    (__core-bind-syntax! '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax! '%#letrec-syntax __compile-error make-__core-form)))
