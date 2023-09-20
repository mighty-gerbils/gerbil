(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1695206877)
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
      (lambda _$args15619_
        (apply make-struct-instance __context::t _$args15619_)))
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
      (lambda _$args15616_
        (apply make-struct-instance __runtime::t _$args15616_)))
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
      (lambda _$args15613_
        (apply make-struct-instance __syntax::t _$args15613_)))
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
      (lambda _$args15610_
        (apply make-struct-instance __macro::t _$args15610_)))
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
      (lambda _$args15607_
        (apply make-struct-instance __special-form::t _$args15607_)))
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
      (lambda _$args15604_
        (apply make-struct-instance __core-form::t _$args15604_)))
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
      (lambda _$args15601_
        (apply make-struct-instance __core-expression::t _$args15601_)))
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
      (lambda _$args15598_
        (apply make-struct-instance __core-special-form::t _$args15598_)))
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
      (lambda _$args15595_
        (apply make-struct-instance __struct-info::t _$args15595_)))
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
      (lambda _$args15592_
        (apply make-struct-instance __feature::t _$args15592_)))
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
      (lambda _$args15589_
        (apply make-struct-instance __module::t _$args15589_)))
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
    (define __*modules* (make-table))
    (define __*core* (make-table 'test: eq?))
    (define __*top*
      (let ((__tmp15805
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp15804 (make-table 'test: eq?)))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp15805 __tmp15804)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id15564_ _ctx15565_)
        (if _ctx15565_
            (let ((_id15567_ (__AST-e _id15564_)))
              (let _lp15569_ ((_ctx15571_ _ctx15565_))
                (let ((_$e15573_
                       (table-ref
                        (##structure-ref _ctx15571_ '4 __context::t '#f)
                        _id15567_
                        '#f)))
                  (if _$e15573_
                      (values _$e15573_)
                      (let ((_$e15576_
                             (##structure-ref _ctx15571_ '3 __context::t '#f)))
                        (if _$e15576_ (_lp15569_ _$e15576_) '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id15582_)
        (let ((_ctx15584_ (__current-context)))
          (__core-resolve__% _id15582_ _ctx15584_))))
    (define __core-resolve
      (lambda _g15807_
        (let ((_g15806_ (let () (declare (not safe)) (##length _g15807_))))
          (cond ((let () (declare (not safe)) (##fx= _g15806_ 1))
                 (apply __core-resolve__0 _g15807_))
                ((let () (declare (not safe)) (##fx= _g15806_ 2))
                 (apply __core-resolve__% _g15807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g15807_))))))
    (define __core-bound-id?__%
      (lambda (_id15547_ _is?15548_)
        (let ((_$e15550_ (__core-resolve__0 _id15547_)))
          (if _$e15550_ (_is?15548_ _$e15550_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id15556_)
        (let ((_is?15558_ true)) (__core-bound-id?__% _id15556_ _is?15558_))))
    (define __core-bound-id?
      (lambda _g15809_
        (let ((_g15808_ (let () (declare (not safe)) (##length _g15809_))))
          (cond ((let () (declare (not safe)) (##fx= _g15808_ 1))
                 (apply __core-bound-id?__0 _g15809_))
                ((let () (declare (not safe)) (##fx= _g15808_ 2))
                 (apply __core-bound-id?__% _g15809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g15809_))))))
    (define __core-bind-runtime!__%
      (lambda (_id15530_ _eid15531_ _ctx15532_)
        (if _eid15531_
            (table-set!
             (##structure-ref _ctx15532_ '4 __context::t '#f)
             (__AST-e _id15530_)
             (let ()
               (declare (not safe))
               (##structure __runtime::t _eid15531_)))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id15537_ _eid15538_)
        (let ((_ctx15540_ (__current-context)))
          (__core-bind-runtime!__% _id15537_ _eid15538_ _ctx15540_))))
    (define __core-bind-runtime!
      (lambda _g15811_
        (let ((_g15810_ (let () (declare (not safe)) (##length _g15811_))))
          (cond ((let () (declare (not safe)) (##fx= _g15810_ 2))
                 (apply __core-bind-runtime!__0 _g15811_))
                ((let () (declare (not safe)) (##fx= _g15810_ 3))
                 (apply __core-bind-runtime!__% _g15811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g15811_))))))
    (define __core-bind-syntax!__%
      (lambda (_id15513_ _e15514_ _make15515_)
        (table-set!
         __*core*
         _id15513_
         (if (let ()
               (declare (not safe))
               (##structure-instance-of?
                _e15514_
                'gerbil/runtime/eval#__syntax::t))
             _e15514_
             (_make15515_ _e15514_ _id15513_)))))
    (define __core-bind-syntax!__0
      (lambda (_id15520_ _e15521_)
        (let ((_make15523_ make-__syntax))
          (__core-bind-syntax!__% _id15520_ _e15521_ _make15523_))))
    (define __core-bind-syntax!
      (lambda _g15813_
        (let ((_g15812_ (let () (declare (not safe)) (##length _g15813_))))
          (cond ((let () (declare (not safe)) (##fx= _g15812_ 2))
                 (apply __core-bind-syntax!__0 _g15813_))
                ((let () (declare (not safe)) (##fx= _g15812_ 3))
                 (apply __core-bind-syntax!__% _g15813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g15813_))))))
    (define __core-bind-macro!
      (lambda (_id15509_ _e15510_)
        (__core-bind-syntax!__% _id15509_ _e15510_ make-__macro)))
    (define __core-bind-special-form!
      (lambda (_id15506_ _e15507_)
        (__core-bind-syntax!__% _id15506_ _e15507_ make-__special-form)))
    (define __core-bind-user-syntax!__%
      (lambda (_id15490_ _e15491_ _ctx15492_)
        (table-set!
         (##structure-ref _ctx15492_ '4 __context::t '#f)
         (__AST-e _id15490_)
         (if (let ()
               (declare (not safe))
               (##structure-instance-of?
                _e15491_
                'gerbil/runtime/eval#__syntax::t))
             _e15491_
             (let ((__tmp15814 (__AST-e _id15490_)))
               (declare (not safe))
               (##structure __syntax::t _e15491_ __tmp15814))))))
    (define __core-bind-user-syntax!__0
      (lambda (_id15497_ _e15498_)
        (let ((_ctx15500_ (__current-context)))
          (__core-bind-user-syntax!__% _id15497_ _e15498_ _ctx15500_))))
    (define __core-bind-user-syntax!
      (lambda _g15816_
        (let ((_g15815_ (let () (declare (not safe)) (##length _g15816_))))
          (cond ((let () (declare (not safe)) (##fx= _g15815_ 2))
                 (apply __core-bind-user-syntax!__0 _g15816_))
                ((let () (declare (not safe)) (##fx= _g15815_ 3))
                 (apply __core-bind-user-syntax!__% _g15816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g15816_))))))
    (define make-__runtime-id__%
      (lambda (_id15471_ _ctx15472_)
        (let ((_id15474_ (__AST-e _id15471_)))
          (if (eq? _id15474_ '_)
              '#f
              (if (uninterned-symbol? _id15474_)
                  (gensym _id15474_)
                  (if (symbol? _id15474_)
                      (let ((_$e15476_
                             (##structure-ref _ctx15472_ '1 __context::t '#f)))
                        (if (eq? 'local _$e15476_)
                            (gensym _id15474_)
                            (if (eq? 'module _$e15476_)
                                (make-symbol
                                 (##structure-ref
                                  _ctx15472_
                                  '2
                                  __context::t
                                  '#f)
                                 '"#"
                                 _id15474_)
                                _id15474_)))
                      (error '"Illegal runtime identifier" _id15474_)))))))
    (define make-__runtime-id__0
      (lambda (_id15482_)
        (let ((_ctx15484_ (__current-context)))
          (make-__runtime-id__% _id15482_ _ctx15484_))))
    (define make-__runtime-id
      (lambda _g15818_
        (let ((_g15817_ (let () (declare (not safe)) (##length _g15818_))))
          (cond ((let () (declare (not safe)) (##fx= _g15817_ 1))
                 (apply make-__runtime-id__0 _g15818_))
                ((let () (declare (not safe)) (##fx= _g15817_ 2))
                 (apply make-__runtime-id__% _g15818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g15818_))))))
    (define make-__context-local__%
      (lambda (_super15460_)
        (let ((__tmp15819 (make-table 'test: eq?)))
          (declare (not safe))
          (##structure __context::t 'local '#f _super15460_ __tmp15819))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super15466_ (__current-context)))
          (make-__context-local__% _super15466_))))
    (define make-__context-local
      (lambda _g15821_
        (let ((_g15820_ (let () (declare (not safe)) (##length _g15821_))))
          (cond ((let () (declare (not safe)) (##fx= _g15820_ 0))
                 (apply make-__context-local__0 _g15821_))
                ((let () (declare (not safe)) (##fx= _g15820_ 1))
                 (apply make-__context-local__% _g15821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g15821_))))))
    (define make-__context-module__%
      (lambda (_id15440_ _ns15441_ _path15442_ _super15443_)
        (let ((__tmp15822 (make-table 'test: eq?)))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns15441_
           _super15443_
           __tmp15822
           _id15440_
           _path15442_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id15448_ _ns15449_ _path15450_)
        (let ((_super15452_ (__current-context)))
          (make-__context-module__%
           _id15448_
           _ns15449_
           _path15450_
           _super15452_))))
    (define make-__context-module
      (lambda _g15824_
        (let ((_g15823_ (let () (declare (not safe)) (##length _g15824_))))
          (cond ((let () (declare (not safe)) (##fx= _g15823_ 3))
                 (apply make-__context-module__0 _g15824_))
                ((let () (declare (not safe)) (##fx= _g15823_ 4))
                 (apply make-__context-module__% _g15824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g15824_))))))
    (define __SRC__%
      (lambda (_e15423_ _src-stx15424_)
        (if (or (pair? _e15423_) (symbol? _e15423_))
            (let ((__tmp15825
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx15424_
                          'gerbil#AST::t))
                       (__locat (__AST-source _src-stx15424_))
                       '#f)))
              (declare (not safe))
              (##make-source _e15423_ __tmp15825))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e15423_ 'gerbil#AST::t))
                (let ((__tmp15827
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e15423_ '1 AST::t '#f)))
                      (__tmp15826 (__locat (__AST-source _e15423_))))
                  (declare (not safe))
                  (##make-source __tmp15827 __tmp15826))
                (error '"BUG! Cannot sourcify object" _e15423_)))))
    (define __SRC__0
      (lambda (_e15432_)
        (let ((_src-stx15434_ '#f)) (__SRC__% _e15432_ _src-stx15434_))))
    (define __SRC
      (lambda _g15829_
        (let ((_g15828_ (let () (declare (not safe)) (##length _g15829_))))
          (cond ((let () (declare (not safe)) (##fx= _g15828_ 1))
                 (apply __SRC__0 _g15829_))
                ((let () (declare (not safe)) (##fx= _g15828_ 2))
                 (apply __SRC__% _g15829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g15829_))))))
    (define __locat
      (lambda (_loc15420_)
        (if (let () (declare (not safe)) (##locat? _loc15420_))
            _loc15420_
            '#f)))
    (define __check-values
      (lambda (_obj15415_ _k15416_)
        (let ((_count15418_
               (if (let () (declare (not safe)) (##values? _obj15415_))
                   (let () (declare (not safe)) (##vector-length _obj15415_))
                   '1)))
          (if (fx= _count15418_ _k15416_)
              '#!void
              (error (if (fx< _count15418_ _k15416_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj15415_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj15415_))
                         _obj15415_)
                     _k15416_)))))
    (define __compile
      (lambda (_stx15385_)
        (let* ((_$e15387_ _stx15385_)
               (_$E1538915395_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e15387_))))
          (if (__AST-pair? _$e15387_)
              (let* ((_$tgt1539015398_ (__AST-e _$e15387_))
                     (_$hd1539115401_
                      (let () (declare (not safe)) (##car _$tgt1539015398_)))
                     (_$tl1539215404_
                      (let () (declare (not safe)) (##cdr _$tgt1539015398_))))
                (let* ((_form15408_ _$hd1539115401_)
                       (_$e15410_ (__core-resolve__0 _form15408_)))
                  (if _$e15410_
                      ((lambda (_bind15413_)
                         ((##structure-ref _bind15413_ '1 __syntax::t '#f)
                          _stx15385_))
                       _$e15410_)
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _stx15385_
                       _form15408_))))
              (_$E1538915395_)))))
    (define __compile-error__%
      (lambda (_stx15372_ _detail15373_)
        (__raise-syntax-error
         'compile
         '"Bad syntax; cannot compile"
         _stx15372_
         _detail15373_)))
    (define __compile-error__0
      (lambda (_stx15378_)
        (let ((_detail15380_ '#f))
          (__compile-error__% _stx15378_ _detail15380_))))
    (define __compile-error
      (lambda _g15831_
        (let ((_g15830_ (let () (declare (not safe)) (##length _g15831_))))
          (cond ((let () (declare (not safe)) (##fx= _g15830_ 1))
                 (apply __compile-error__0 _g15831_))
                ((let () (declare (not safe)) (##fx= _g15830_ 2))
                 (apply __compile-error__% _g15831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g15831_))))))
    (define __compile-ignore%
      (lambda (_stx15369_) (__SRC__% ''#!void _stx15369_)))
    (define __compile-begin%
      (lambda (_stx15344_)
        (let* ((_$e15346_ _stx15344_)
               (_$E1534815354_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e15346_))))
          (if (__AST-pair? _$e15346_)
              (let* ((_$tgt1534915357_ (__AST-e _$e15346_))
                     (_$hd1535015360_
                      (let () (declare (not safe)) (##car _$tgt1534915357_)))
                     (_$tl1535115363_
                      (let () (declare (not safe)) (##cdr _$tgt1534915357_))))
                (let ((_body15367_ _$tl1535115363_))
                  (__SRC__%
                   (cons 'begin (map __compile _body15367_))
                   _stx15344_)))
              (_$E1534815354_)))))
    (define __compile-begin-foreign%
      (lambda (_stx15319_)
        (let* ((_$e15321_ _stx15319_)
               (_$E1532315329_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e15321_))))
          (if (__AST-pair? _$e15321_)
              (let* ((_$tgt1532415332_ (__AST-e _$e15321_))
                     (_$hd1532515335_
                      (let () (declare (not safe)) (##car _$tgt1532415332_)))
                     (_$tl1532615338_
                      (let () (declare (not safe)) (##cdr _$tgt1532415332_))))
                (let ((_body15342_ _$tl1532615338_))
                  (__SRC__%
                   (cons 'begin (__AST->datum _body15342_))
                   _stx15319_)))
              (_$E1532315329_)))))
    (define __compile-import%
      (lambda (_stx15294_)
        (let* ((_$e15296_ _stx15294_)
               (_$E1529815304_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e15296_))))
          (if (__AST-pair? _$e15296_)
              (let* ((_$tgt1529915307_ (__AST-e _$e15296_))
                     (_$hd1530015310_
                      (let () (declare (not safe)) (##car _$tgt1529915307_)))
                     (_$tl1530115313_
                      (let () (declare (not safe)) (##cdr _$tgt1529915307_))))
                (let ((_body15317_ _$tl1530115313_))
                  (__SRC__%
                   (cons '__eval-import
                         (cons (cons 'quote (cons _body15317_ '())) '()))
                   _stx15294_)))
              (_$E1529815304_)))))
    (define __compile-begin-annotation%
      (lambda (_stx15241_)
        (let* ((_$e15243_ _stx15241_)
               (_$E1524515257_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e15243_))))
          (if (__AST-pair? _$e15243_)
              (let* ((_$tgt1524615260_ (__AST-e _$e15243_))
                     (_$hd1524715263_
                      (let () (declare (not safe)) (##car _$tgt1524615260_)))
                     (_$tl1524815266_
                      (let () (declare (not safe)) (##cdr _$tgt1524615260_))))
                (if (__AST-pair? _$tl1524815266_)
                    (let* ((_$tgt1524915270_ (__AST-e _$tl1524815266_))
                           (_$hd1525015273_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1524915270_)))
                           (_$tl1525115276_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1524915270_))))
                      (let ((_ann15280_ _$hd1525015273_))
                        (if (__AST-pair? _$tl1525115276_)
                            (let* ((_$tgt1525215282_ (__AST-e _$tl1525115276_))
                                   (_$hd1525315285_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1525215282_)))
                                   (_$tl1525415288_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1525215282_))))
                              (let ((_expr15292_ _$hd1525315285_))
                                (if (equal? (__AST-e _$tl1525415288_) '())
                                    (__compile _expr15292_)
                                    (_$E1524515257_))))
                            (_$E1524515257_))))
                    (_$E1524515257_)))
              (_$E1524515257_)))))
    (define __compile-define-values%
      (lambda (_stx15132_)
        (let* ((_$e15134_ _stx15132_)
               (_$E1513615148_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e15134_))))
          (if (__AST-pair? _$e15134_)
              (let* ((_$tgt1513715151_ (__AST-e _$e15134_))
                     (_$hd1513815154_
                      (let () (declare (not safe)) (##car _$tgt1513715151_)))
                     (_$tl1513915157_
                      (let () (declare (not safe)) (##cdr _$tgt1513715151_))))
                (if (__AST-pair? _$tl1513915157_)
                    (let* ((_$tgt1514015161_ (__AST-e _$tl1513915157_))
                           (_$hd1514115164_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1514015161_)))
                           (_$tl1514215167_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1514015161_))))
                      (let ((_hd15171_ _$hd1514115164_))
                        (if (__AST-pair? _$tl1514215167_)
                            (let* ((_$tgt1514315173_ (__AST-e _$tl1514215167_))
                                   (_$hd1514415176_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1514315173_)))
                                   (_$tl1514515179_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1514315173_))))
                              (let ((_expr15183_ _$hd1514415176_))
                                (if (equal? (__AST-e _$tl1514515179_) '())
                                    (let* ((_$e15185_ _hd15171_)
                                           (_$E1518715228_
                                            (lambda ()
                                              (let ((_$E1518815213_
                                                     (lambda ()
                                                       (let* ((_$E1518915200_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (__raise-syntax-error '#f '"Bad syntax" _$e15185_)))
                      (_ids15203_ _hd15171_)
                      (_len15205_ (length _ids15203_))
                      (_tmp15207_ (__SRC__0 (gensym))))
                 (__SRC__%
                  (cons 'begin
                        (cons (__SRC__%
                               (cons 'define
                                     (cons _tmp15207_
                                           (cons (__compile _expr15183_) '())))
                               _stx15132_)
                              (cons (__SRC__%
                                     (cons '__check-values
                                           (cons _tmp15207_
                                                 (cons _len15205_ '())))
                                     _stx15132_)
                                    (foldr1 cons
                                            '()
                                            (filter-map2
                                             (lambda (_id15210_ _k15211_)
                                               (if (__AST-e _id15210_)
                                                   (__SRC__%
                                                    (cons 'define
                                                          (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _id15210_)
                        (cons (cons '##vector-ref
                                    (cons _tmp15207_ (cons _k15211_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx15132_)
                                                   '#f))
                                             _ids15203_
                                             (iota _len15205_))))))
                  _stx15132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (__AST-pair? _$e15185_)
                                                    (let* ((_$tgt1519015216_
                                                            (__AST-e _$e15185_))
                                                           (_$hd1519115219_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1519015216_)))
                                                           (_$tl1519215222_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1519015216_))))
                                                      (let ((_id15226_
                                                             _$hd1519115219_))
                                                        (if (equal? (__AST-e _$tl1519215222_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                    (__SRC__%
                     (cons 'define
                           (cons (__SRC__0 _id15226_)
                                 (cons (__compile _expr15183_) '())))
                     _stx15132_)
                    (_$E1518815213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_$E1518815213_))))))
                                      (if (__AST-pair? _$e15185_)
                                          (let* ((_$tgt1519315231_
                                                  (__AST-e _$e15185_))
                                                 (_$hd1519415234_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1519315231_)))
                                                 (_$tl1519515237_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1519315231_))))
                                            (if (equal? (__AST-e _$hd1519415234_)
                                                        '#f)
                                                (if (equal? (__AST-e _$tl1519515237_)
                                                            '())
                                                    (__compile _expr15183_)
                                                    (_$E1518715228_))
                                                (_$E1518715228_)))
                                          (_$E1518715228_)))
                                    (_$E1513615148_))))
                            (_$E1513615148_))))
                    (_$E1513615148_)))
              (_$E1513615148_)))))
    (define __compile-head-id
      (lambda (_e15130_) (__SRC__0 (if (__AST-e _e15130_) _e15130_ (gensym)))))
    (define __compile-lambda-head
      (lambda (_hd15087_)
        (let _recur15089_ ((_rest15091_ _hd15087_))
          (let* ((_$e15093_ _rest15091_)
                 (_$E1509515113_
                  (lambda ()
                    (let ((_$E1509615110_
                           (lambda ()
                             (let* ((_$E1509715105_
                                     (lambda ()
                                       (__raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _$e15093_)))
                                    (_tail15108_ _$e15093_))
                               (__compile-head-id _tail15108_)))))
                      (if (equal? (__AST-e _$e15093_) '())
                          '()
                          (_$E1509615110_))))))
            (if (__AST-pair? _$e15093_)
                (let* ((_$tgt1509815116_ (__AST-e _$e15093_))
                       (_$hd1509915119_
                        (let () (declare (not safe)) (##car _$tgt1509815116_)))
                       (_$tl1510015122_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1509815116_))))
                  (let* ((_hd15126_ _$hd1509915119_)
                         (_rest15128_ _$tl1510015122_))
                    (cons (__compile-head-id _hd15126_)
                          (_recur15089_ _rest15128_))))
                (_$E1509515113_))))))
    (define __compile-lambda%
      (lambda (_stx15034_)
        (let* ((_$e15036_ _stx15034_)
               (_$E1503815050_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e15036_))))
          (if (__AST-pair? _$e15036_)
              (let* ((_$tgt1503915053_ (__AST-e _$e15036_))
                     (_$hd1504015056_
                      (let () (declare (not safe)) (##car _$tgt1503915053_)))
                     (_$tl1504115059_
                      (let () (declare (not safe)) (##cdr _$tgt1503915053_))))
                (if (__AST-pair? _$tl1504115059_)
                    (let* ((_$tgt1504215063_ (__AST-e _$tl1504115059_))
                           (_$hd1504315066_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1504215063_)))
                           (_$tl1504415069_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1504215063_))))
                      (let ((_hd15073_ _$hd1504315066_))
                        (if (__AST-pair? _$tl1504415069_)
                            (let* ((_$tgt1504515075_ (__AST-e _$tl1504415069_))
                                   (_$hd1504615078_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1504515075_)))
                                   (_$tl1504715081_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1504515075_))))
                              (let ((_body15085_ _$hd1504615078_))
                                (if (equal? (__AST-e _$tl1504715081_) '())
                                    (__SRC__%
                                     (cons 'lambda
                                           (cons (__compile-lambda-head
                                                  _hd15073_)
                                                 (cons (__compile _body15085_)
                                                       '())))
                                     _stx15034_)
                                    (_$E1503815050_))))
                            (_$E1503815050_))))
                    (_$E1503815050_)))
              (_$E1503815050_)))))
    (define __compile-case-lambda%
      (lambda (_stx14826_)
        (letrec ((_variadic?14828_
                  (lambda (_hd14999_)
                    (let* ((_$e15001_ _hd14999_)
                           (_$E1500315019_
                            (lambda ()
                              (let ((_$E1500415016_
                                     (lambda ()
                                       (let ((_$E1500515013_
                                              (lambda ()
                                                (__raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _$e15001_))))
                                         '#t))))
                                (if (equal? (__AST-e _$e15001_) '())
                                    '#f
                                    (_$E1500415016_))))))
                      (if (__AST-pair? _$e15001_)
                          (let* ((_$tgt1500615022_ (__AST-e _$e15001_))
                                 (_$hd1500715025_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1500615022_)))
                                 (_$tl1500815028_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1500615022_))))
                            (let ((_rest15032_ _$tl1500815028_))
                              (_variadic?14828_ _rest15032_)))
                          (_$E1500315019_)))))
                 (_arity14829_
                  (lambda (_hd14964_)
                    (let _lp14966_ ((_rest14968_ _hd14964_) (_k14969_ '0))
                      (let* ((_$e14971_ _rest14968_)
                             (_$E1497314984_
                              (lambda ()
                                (let ((_$E1497414981_
                                       (lambda ()
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _$e14971_))))
                                  _k14969_))))
                        (if (__AST-pair? _$e14971_)
                            (let* ((_$tgt1497514987_ (__AST-e _$e14971_))
                                   (_$hd1497614990_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1497514987_)))
                                   (_$tl1497714993_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1497514987_))))
                              (let ((_rest14997_ _$tl1497714993_))
                                (_lp14966_ _rest14997_ (fx+ _k14969_ '1))))
                            (_$E1497314984_))))))
                 (_generate14830_
                  (lambda (_rest14891_ _args14892_ _len14893_)
                    (let* ((_$e14895_ _rest14891_)
                           (_$E1489714908_
                            (lambda ()
                              (let ((_$E1489814905_
                                     (lambda ()
                                       (__raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _$e14895_))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _args14892_ '())))
                                 _stx14826_)))))
                      (if (__AST-pair? _$e14895_)
                          (let* ((_$tgt1489914911_ (__AST-e _$e14895_))
                                 (_$hd1490014914_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1489914911_)))
                                 (_$tl1490114917_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1489914911_))))
                            (let* ((_clause14921_ _$hd1490014914_)
                                   (_rest14923_ _$tl1490114917_)
                                   (_$e14925_ _clause14921_)
                                   (_$E1492714936_
                                    (lambda ()
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _$e14925_))))
                              (if (__AST-pair? _$e14925_)
                                  (let* ((_$tgt1492814939_ (__AST-e _$e14925_))
                                         (_$hd1492914942_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1492814939_)))
                                         (_$tl1493014945_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1492814939_))))
                                    (let ((_hd14949_ _$hd1492914942_))
                                      (if (__AST-pair? _$tl1493014945_)
                                          (let* ((_$tgt1493114951_
                                                  (__AST-e _$tl1493014945_))
                                                 (_$hd1493214954_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1493114951_)))
                                                 (_$tl1493314957_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1493114951_))))
                                            (if (equal? (__AST-e _$tl1493314957_)
                                                        '())
                                                (let ((_clen14961_
                                                       (_arity14829_
                                                        _hd14949_))
                                                      (_cmp14962_
                                                       (if (_variadic?14828_
                                                            _hd14949_)
                                                           'fx>=
                                                           'fx=)))
                                                  (__SRC__%
                                                   (cons 'if
                                                         (cons (cons _cmp14962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _len14893_ (cons _clen14961_ '())))
                       (cons (__SRC__%
                              (cons '##apply
                                    (cons (__compile-lambda%
                                           (cons '%#lambda _clause14921_))
                                          (cons _args14892_ '())))
                              _stx14826_)
                             (cons (_generate14830_
                                    _rest14923_
                                    _args14892_
                                    _len14893_)
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx14826_))
                                                (_$E1492714936_)))
                                          (_$E1492714936_))))
                                  (_$E1492714936_))))
                          (_$E1489714908_))))))
          (let* ((_$e14832_ _stx14826_)
                 (_$E1483414866_
                  (lambda ()
                    (let ((_$E1483514848_
                           (lambda ()
                             (__raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _$e14832_))))
                      (if (__AST-pair? _$e14832_)
                          (let* ((_$tgt1483614851_ (__AST-e _$e14832_))
                                 (_$hd1483714854_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1483614851_)))
                                 (_$tl1483814857_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1483614851_))))
                            (let ((_clauses14861_ _$tl1483814857_))
                              (let ((_args14863_
                                     (__SRC__% (gensym) _stx14826_))
                                    (_len14864_
                                     (__SRC__% (gensym) _stx14826_)))
                                (__SRC__%
                                 (cons 'lambda
                                       (cons _args14863_
                                             (cons (__SRC__%
                                                    (cons 'let
                                                          (cons (cons (cons _len14864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (__SRC__%
                                           (cons '##length
                                                 (cons _args14863_ '()))
                                           _stx14826_)
                                          '()))
                              '())
                        (cons (_generate14830_
                               _clauses14861_
                               _args14863_
                               _len14864_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx14826_)
                                                   '())))
                                 _stx14826_))))
                          (_$E1483514848_))))))
            (if (__AST-pair? _$e14832_)
                (let* ((_$tgt1483914869_ (__AST-e _$e14832_))
                       (_$hd1484014872_
                        (let () (declare (not safe)) (##car _$tgt1483914869_)))
                       (_$tl1484114875_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1483914869_))))
                  (if (__AST-pair? _$tl1484114875_)
                      (let* ((_$tgt1484214879_ (__AST-e _$tl1484114875_))
                             (_$hd1484314882_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1484214879_)))
                             (_$tl1484414885_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1484214879_))))
                        (let ((_clause14889_ _$hd1484314882_))
                          (if (equal? (__AST-e _$tl1484414885_) '())
                              (__compile-lambda%
                               (cons '%#lambda _clause14889_))
                              (_$E1483414866_))))
                      (_$E1483414866_)))
                (_$E1483414866_))))))
    (define __compile-let-form
      (lambda (_stx14595_ _compile-simple14596_ _compile-values14597_)
        (letrec ((_simple-bind?14599_
                  (lambda (_hd14784_)
                    (let* ((_hd1478514795_ _hd14784_)
                           (_else1478814803_ (lambda () '#f)))
                      (let ((_K1479114816_ (lambda (_id14814_) '#t))
                            (_K1479014808_ (lambda () '#t)))
                        (let ((_try-match1478714811_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1478514795_ '#f))
                                     (_K1479014808_)
                                     (_else1478814803_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1478514795_))
                              (let ((_tl1479314821_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1478514795_)))
                                    (_hd1479214819_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1478514795_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1479314821_))
                                    (let ((_id14824_ _hd1479214819_))
                                      (_K1479114816_ _id14824_))
                                    (_try-match1478714811_)))
                              (_try-match1478714811_)))))))
                 (_car-e14600_
                  (lambda (_hd14782_)
                    (if (pair? _hd14782_) (car _hd14782_) _hd14782_))))
          (let* ((_$e14602_ _stx14595_)
                 (_$E1460414747_
                  (lambda ()
                    (let ((_$E1460514627_
                           (lambda ()
                             (__raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _$e14602_))))
                      (if (__AST-pair? _$e14602_)
                          (let* ((_$tgt1460614630_ (__AST-e _$e14602_))
                                 (_$hd1460714633_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1460614630_)))
                                 (_$tl1460814636_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1460614630_))))
                            (if (__AST-pair? _$tl1460814636_)
                                (let* ((_$tgt1460914640_
                                        (__AST-e _$tl1460814636_))
                                       (_$hd1461014643_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1460914640_)))
                                       (_$tl1461114646_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1460914640_))))
                                  (let ((_hd14650_ _$hd1461014643_))
                                    (if (__AST-pair? _$tl1461114646_)
                                        (let* ((_$tgt1461214652_
                                                (__AST-e _$tl1461114646_))
                                               (_$hd1461314655_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1461214652_)))
                                               (_$tl1461414658_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1461214652_))))
                                          (let ((_body14662_ _$hd1461314655_))
                                            (if (equal? (__AST-e _$tl1461414658_)
                                                        '())
                                                (let* ((_hd-ids14702_
                                                        (map (lambda (_bind14664_)
                                                               (let* ((_$e14666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind14664_)
                              (_$E1466814677_
                               (lambda ()
                                 (__raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _$e14666_))))
                         (if (__AST-pair? _$e14666_)
                             (let* ((_$tgt1466914680_ (__AST-e _$e14666_))
                                    (_$hd1467014683_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1466914680_)))
                                    (_$tl1467114686_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1466914680_))))
                               (let ((_ids14690_ _$hd1467014683_))
                                 (if (__AST-pair? _$tl1467114686_)
                                     (let* ((_$tgt1467214692_
                                             (__AST-e _$tl1467114686_))
                                            (_$hd1467314695_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1467214692_)))
                                            (_$tl1467414698_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1467214692_))))
                                       (if (equal? (__AST-e _$tl1467414698_)
                                                   '())
                                           _ids14690_
                                           (_$E1466814677_)))
                                     (_$E1466814677_))))
                             (_$E1466814677_))))
                     _hd14650_))
               (_exprs14742_
                (map (lambda (_bind14704_)
                       (let* ((_$e14706_ _bind14704_)
                              (_$E1470814717_
                               (lambda ()
                                 (__raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _$e14706_))))
                         (if (__AST-pair? _$e14706_)
                             (let* ((_$tgt1470914720_ (__AST-e _$e14706_))
                                    (_$hd1471014723_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1470914720_)))
                                    (_$tl1471114726_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1470914720_))))
                               (if (__AST-pair? _$tl1471114726_)
                                   (let* ((_$tgt1471214730_
                                           (__AST-e _$tl1471114726_))
                                          (_$hd1471314733_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1471214730_)))
                                          (_$tl1471414736_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1471214730_))))
                                     (let ((_expr14740_ _$hd1471314733_))
                                       (if (equal? (__AST-e _$tl1471414736_)
                                                   '())
                                           (__compile _expr14740_)
                                           (_$E1470814717_))))
                                   (_$E1470814717_)))
                             (_$E1470814717_))))
                     _hd14650_))
               (_body14744_ (__compile _body14662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (andmap1 _simple-bind?14599_
                                                               _hd-ids14702_)
                                                      (_compile-simple14596_
                                                       (map _car-e14600_
                                                            _hd-ids14702_)
                                                       _exprs14742_
                                                       _body14744_)
                                                      (_compile-values14597_
                                                       _hd-ids14702_
                                                       _exprs14742_
                                                       _body14744_)))
                                                (_$E1460514627_))))
                                        (_$E1460514627_))))
                                (_$E1460514627_)))
                          (_$E1460514627_))))))
            (if (__AST-pair? _$e14602_)
                (let* ((_$tgt1461514750_ (__AST-e _$e14602_))
                       (_$hd1461614753_
                        (let () (declare (not safe)) (##car _$tgt1461514750_)))
                       (_$tl1461714756_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1461514750_))))
                  (if (__AST-pair? _$tl1461714756_)
                      (let* ((_$tgt1461814760_ (__AST-e _$tl1461714756_))
                             (_$hd1461914763_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1461814760_)))
                             (_$tl1462014766_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1461814760_))))
                        (if (equal? (__AST-e _$hd1461914763_) '())
                            (if (__AST-pair? _$tl1462014766_)
                                (let* ((_$tgt1462114770_
                                        (__AST-e _$tl1462014766_))
                                       (_$hd1462214773_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1462114770_)))
                                       (_$tl1462314776_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1462114770_))))
                                  (let ((_body14780_ _$hd1462214773_))
                                    (if (equal? (__AST-e _$tl1462314776_) '())
                                        (__compile _body14780_)
                                        (_$E1460414747_))))
                                (_$E1460414747_))
                            (_$E1460414747_)))
                      (_$E1460414747_)))
                (_$E1460414747_))))))
    (define __compile-let-values%
      (lambda (_stx14410_)
        (letrec ((_compile-simple14412_
                  (lambda (_hd-ids14591_ _exprs14592_ _body14593_)
                    (__SRC__%
                     (cons 'let
                           (cons (map list
                                      (map __compile-head-id _hd-ids14591_)
                                      _exprs14592_)
                                 (cons _body14593_ '())))
                     _stx14410_)))
                 (_compile-values14413_
                  (lambda (_hd-ids14509_ _exprs14510_ _body14511_)
                    (let _lp14513_ ((_rest14515_ _hd-ids14509_)
                                    (_exprs14516_ _exprs14510_)
                                    (_bind14517_ '())
                                    (_post14518_ '()))
                      (let* ((_rest1451914533_ _rest14515_)
                             (_else1452214541_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _bind14517_)
                                             (cons (_compile-post14414_
                                                    _post14518_
                                                    _body14511_)
                                                   '())))
                                 _stx14410_))))
                        (let ((_K1452714574_
                               (lambda (_rest14571_ _id14572_)
                                 (_lp14513_
                                  _rest14571_
                                  (cdr _exprs14516_)
                                  (cons (cons (__compile-head-id _id14572_)
                                              (cons (car _exprs14516_) '()))
                                        _bind14517_)
                                  _post14518_)))
                              (_K1452414556_
                               (lambda (_rest14545_ _hd14546_)
                                 (if (__AST-id? _hd14546_)
                                     (_lp14513_
                                      _rest14545_
                                      (cdr _exprs14516_)
                                      (cons (cons (__compile-head-id _hd14546_)
                                                  (cons (cons 'values->list
                                                              (cons (car _exprs14516_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _bind14517_)
                                      _post14518_)
                                     (if (list? _hd14546_)
                                         (let* ((_len14548_ (length _hd14546_))
                                                (_tmp14550_
                                                 (__SRC__0 (gensym))))
                                           (_lp14513_
                                            _rest14545_
                                            (cdr _exprs14516_)
                                            (cons (cons _tmp14550_
                                                        (cons (car _exprs14516_)
                                                              '()))
                                                  _bind14517_)
                                            (cons (cons _tmp14550_
                                                        (cons _len14548_
                                                              (filter-map2
                                                               (lambda (_id14553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _k14554_)
                         (if (__AST-e _id14553_)
                             (cons (__SRC__0 _id14553_) _k14554_)
                             '#f))
                       _hd14546_
                       (iota _len14548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _post14518_)))
                                         (__compile-error__%
                                          _stx14410_
                                          _hd14546_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1451914533_))
                              (let ((_tl1452914579_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1451914533_)))
                                    (_hd1452814577_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1451914533_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1452814577_))
                                    (let ((_tl1453114584_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1452814577_)))
                                          (_hd1453014582_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1452814577_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1453114584_))
                                          (let ((_id14587_ _hd1453014582_)
                                                (_rest14589_ _tl1452914579_))
                                            (_K1452714574_
                                             _rest14589_
                                             _id14587_))
                                          (let ((_hd14564_ _hd1452814577_)
                                                (_rest14566_ _tl1452914579_))
                                            (_K1452414556_
                                             _rest14566_
                                             _hd14564_))))
                                    (let ((_hd14564_ _hd1452814577_)
                                          (_rest14566_ _tl1452914579_))
                                      (_K1452414556_ _rest14566_ _hd14564_))))
                              (_else1452214541_)))))))
                 (_compile-post14414_
                  (lambda (_post14416_ _body14417_)
                    (let _lp14419_ ((_rest14421_ _post14416_)
                                    (_check14422_ '())
                                    (_bind14423_ '()))
                      (let* ((_rest1442414436_ _rest14421_)
                             (_else1442614444_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (foldr1 cons
                                               (cons (__SRC__%
                                                      (cons 'let
                                                            (cons _bind14423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _body14417_ '())))
              _stx14410_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _check14422_))
                                 _stx14410_)))
                             (_K1442814483_
                              (lambda (_rest14447_
                                       _init14448_
                                       _len14449_
                                       _tmp14450_)
                                (_lp14419_
                                 _rest14447_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _tmp14450_
                                                    (cons _len14449_ '())))
                                        _stx14410_)
                                       _check14422_)
                                 (foldr1 (lambda (_hd14452_ _r14453_)
                                           (let* ((_hd1445414461_ _hd14452_)
                                                  (_E1445614465_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _hd1445414461_)))
                                                  (_K1445714471_
                                                   (lambda (_k14468_ _id14469_)
                                                     (cons (cons _id14469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '##vector-ref
                                     (cons _tmp14450_ (cons _k14468_ '())))
                               '()))
                   _r14453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _hd1445414461_))
                                                 (let ((_hd1445814474_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _hd1445414461_)))
                                                       (_tl1445914476_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _hd1445414461_))))
                                                   (let* ((_id14479_
                                                           _hd1445814474_)
                                                          (_k14481_
                                                           _tl1445914476_))
                                                     (_K1445714471_
                                                      _k14481_
                                                      _id14479_)))
                                                 (_E1445614465_))))
                                         _bind14423_
                                         _init14448_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1442414436_))
                            (let ((_hd1442914486_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1442414436_)))
                                  (_tl1443014488_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1442414436_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1442914486_))
                                  (let ((_hd1443114491_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1442914486_)))
                                        (_tl1443214493_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1442914486_))))
                                    (let ((_tmp14496_ _hd1443114491_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1443214493_))
                                          (let ((_hd1443314498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1443214493_)))
                                                (_tl1443414500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1443214493_))))
                                            (let* ((_len14503_ _hd1443314498_)
                                                   (_init14505_ _tl1443414500_)
                                                   (_rest14507_
                                                    _tl1443014488_))
                                              (_K1442814483_
                                               _rest14507_
                                               _init14505_
                                               _len14503_
                                               _tmp14496_)))
                                          (_else1442614444_))))
                                  (_else1442614444_)))
                            (_else1442614444_)))))))
          (__compile-let-form
           _stx14410_
           _compile-simple14412_
           _compile-values14413_))))
    (define __compile-letrec-values%
      (lambda (_stx14210_)
        (letrec ((_compile-simple14212_
                  (lambda (_hd-ids14406_ _exprs14407_ _body14408_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (map list
                                      (map __compile-head-id _hd-ids14406_)
                                      _exprs14407_)
                                 (cons _body14408_ '())))
                     _stx14210_)))
                 (_compile-values14213_
                  (lambda (_hd-ids14320_ _exprs14321_ _body14322_)
                    (let _lp14324_ ((_rest14326_ _hd-ids14320_)
                                    (_exprs14327_ _exprs14321_)
                                    (_pre14328_ '())
                                    (_bind14329_ '())
                                    (_post14330_ '()))
                      (let* ((_rest1433114345_ _rest14326_)
                             (_else1433414353_
                              (lambda ()
                                (_compile-inner14214_
                                 _pre14328_
                                 _bind14329_
                                 _post14330_
                                 _body14322_))))
                        (let ((_K1433914389_
                               (lambda (_rest14386_ _id14387_)
                                 (_lp14324_
                                  _rest14386_
                                  (cdr _exprs14327_)
                                  _pre14328_
                                  (cons (cons (__compile-head-id _id14387_)
                                              (cons (car _exprs14327_) '()))
                                        _bind14329_)
                                  _post14330_)))
                              (_K1433614371_
                               (lambda (_rest14357_ _hd14358_)
                                 (if (__AST-id? _hd14358_)
                                     (_lp14324_
                                      _rest14357_
                                      (cdr _exprs14327_)
                                      _pre14328_
                                      (cons (cons (__compile-head-id _hd14358_)
                                                  (cons (cons 'values->list
                                                              (cons (car _exprs14327_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _bind14329_)
                                      _post14330_)
                                     (if (list? _hd14358_)
                                         (let* ((_len14360_ (length _hd14358_))
                                                (_tmp14362_
                                                 (__SRC__0 (gensym))))
                                           (_lp14324_
                                            _rest14357_
                                            (cdr _exprs14327_)
                                            (foldl1 (lambda (_id14365_
                                                             _r14366_)
                                                      (if (__AST-e _id14365_)
                                                          (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id14365_)
                              (cons (cons 'quote (cons '#!void '())) '()))
                        _r14366_)
                  _r14366_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _pre14328_
                                                    _hd14358_)
                                            (cons (cons _tmp14362_
                                                        (cons (car _exprs14327_)
                                                              '()))
                                                  _bind14329_)
                                            (cons (cons _tmp14362_
                                                        (cons _len14360_
                                                              (filter-map2
                                                               (lambda (_id14368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _k14369_)
                         (if (__AST-e _id14368_)
                             (cons (__SRC__0 _id14368_) _k14369_)
                             '#f))
                       _hd14358_
                       (iota _len14360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _post14330_)))
                                         (__compile-error__%
                                          _stx14210_
                                          _hd14358_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1433114345_))
                              (let ((_tl1434114394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1433114345_)))
                                    (_hd1434014392_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1433114345_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1434014392_))
                                    (let ((_tl1434314399_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1434014392_)))
                                          (_hd1434214397_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1434014392_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1434314399_))
                                          (let ((_id14402_ _hd1434214397_)
                                                (_rest14404_ _tl1434114394_))
                                            (_K1433914389_
                                             _rest14404_
                                             _id14402_))
                                          (let ((_hd14379_ _hd1434014392_)
                                                (_rest14381_ _tl1434114394_))
                                            (_K1433614371_
                                             _rest14381_
                                             _hd14379_))))
                                    (let ((_hd14379_ _hd1434014392_)
                                          (_rest14381_ _tl1434114394_))
                                      (_K1433614371_ _rest14381_ _hd14379_))))
                              (_else1433414353_)))))))
                 (_compile-inner14214_
                  (lambda (_pre14315_ _bind14316_ _post14317_ _body14318_)
                    (if (null? _pre14315_)
                        (_compile-bind14215_
                         _bind14316_
                         _post14317_
                         _body14318_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _pre14315_)
                                     (cons (_compile-bind14215_
                                            _bind14316_
                                            _post14317_
                                            _body14318_)
                                           '())))
                         _stx14210_))))
                 (_compile-bind14215_
                  (lambda (_bind14311_ _post14312_ _body14313_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _bind14311_)
                                 (cons (_compile-post14216_
                                        _post14312_
                                        _body14313_)
                                       '())))
                     _stx14210_)))
                 (_compile-post14216_
                  (lambda (_post14218_ _body14219_)
                    (let _lp14221_ ((_rest14223_ _post14218_)
                                    (_check14224_ '())
                                    (_bind14225_ '()))
                      (let* ((_rest1422614238_ _rest14223_)
                             (_else1422814246_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (foldr1 cons
                                               (foldr1 cons
                                                       (cons _body14219_ '())
                                                       _bind14225_)
                                               _check14224_))
                                 _stx14210_)))
                             (_K1423014285_
                              (lambda (_rest14249_
                                       _init14250_
                                       _len14251_
                                       _tmp14252_)
                                (_lp14221_
                                 _rest14249_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _tmp14252_
                                                    (cons _len14251_ '())))
                                        _stx14210_)
                                       _check14224_)
                                 (foldr1 (lambda (_hd14254_ _r14255_)
                                           (let* ((_hd1425614263_ _hd14254_)
                                                  (_E1425814267_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _hd1425614263_)))
                                                  (_K1425914273_
                                                   (lambda (_k14270_ _id14271_)
                                                     (cons (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id14271_
                               (cons (cons '##vector-ref
                                           (cons _tmp14252_
                                                 (cons _k14270_ '())))
                                     '())))
                   _r14255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _hd1425614263_))
                                                 (let ((_hd1426014276_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _hd1425614263_)))
                                                       (_tl1426114278_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _hd1425614263_))))
                                                   (let* ((_id14281_
                                                           _hd1426014276_)
                                                          (_k14283_
                                                           _tl1426114278_))
                                                     (_K1425914273_
                                                      _k14283_
                                                      _id14281_)))
                                                 (_E1425814267_))))
                                         _bind14225_
                                         _init14250_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1422614238_))
                            (let ((_hd1423114288_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1422614238_)))
                                  (_tl1423214290_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1422614238_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1423114288_))
                                  (let ((_hd1423314293_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1423114288_)))
                                        (_tl1423414295_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1423114288_))))
                                    (let ((_tmp14298_ _hd1423314293_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1423414295_))
                                          (let ((_hd1423514300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1423414295_)))
                                                (_tl1423614302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1423414295_))))
                                            (let* ((_len14305_ _hd1423514300_)
                                                   (_init14307_ _tl1423614302_)
                                                   (_rest14309_
                                                    _tl1423214290_))
                                              (_K1423014285_
                                               _rest14309_
                                               _init14307_
                                               _len14305_
                                               _tmp14298_)))
                                          (_else1422814246_))))
                                  (_else1422814246_)))
                            (_else1422814246_)))))))
          (__compile-let-form
           _stx14210_
           _compile-simple14212_
           _compile-values14213_))))
    (define __compile-letrec*-values%
      (lambda (_stx13965_)
        (letrec ((_compile-simple13967_
                  (lambda (_hd-ids14206_ _exprs14207_ _body14208_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (map list
                                      (map __compile-head-id _hd-ids14206_)
                                      _exprs14207_)
                                 (cons _body14208_ '())))
                     _stx13965_)))
                 (_compile-values13968_
                  (lambda (_hd-ids14117_ _exprs14118_ _body14119_)
                    (let _lp14121_ ((_rest14123_ _hd-ids14117_)
                                    (_exprs14124_ _exprs14118_)
                                    (_bind14125_ '())
                                    (_post14126_ '()))
                      (let* ((_rest1412714141_ _rest14123_)
                             (_else1413014149_
                              (lambda ()
                                (_compile-bind13969_
                                 _bind14125_
                                 _post14126_
                                 _body14119_))))
                        (let ((_K1413514189_
                               (lambda (_rest14184_ _hd14185_)
                                 (if (__AST-id? _hd14185_)
                                     (let ((_id14187_ (__SRC__0 _hd14185_)))
                                       (_lp14121_
                                        _rest14184_
                                        (cdr _exprs14124_)
                                        (cons (cons _id14187_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _bind14125_)
                                        (cons (cons _id14187_
                                                    (cons (car _exprs14124_)
                                                          '()))
                                              _post14126_)))
                                     (_lp14121_
                                      _rest14184_
                                      (cdr _exprs14124_)
                                      _bind14125_
                                      (cons (cons '#f
                                                  (cons (car _exprs14124_)
                                                        '()))
                                            _post14126_)))))
                              (_K1413214169_
                               (lambda (_rest14153_ _hd14154_)
                                 (if (__AST-id? _hd14154_)
                                     (let ((_id14156_ (__SRC__0 _hd14154_)))
                                       (_lp14121_
                                        _rest14153_
                                        (cdr _exprs14124_)
                                        (cons (cons _id14156_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _bind14125_)
                                        (cons (cons _id14156_
                                                    (cons (cons 'values->list
                                                                (cons (car _exprs14124_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _post14126_)))
                                     (if (not (__AST-e _hd14154_))
                                         (_lp14121_
                                          _rest14153_
                                          (cdr _exprs14124_)
                                          _bind14125_
                                          (cons (cons '#f
                                                      (cons (car _exprs14124_)
                                                            '()))
                                                _post14126_))
                                         (if (list? _hd14154_)
                                             (let* ((_len14158_
                                                     (length _hd14154_))
                                                    (_tmp14160_
                                                     (__SRC__0 (gensym))))
                                               (_lp14121_
                                                _rest14153_
                                                (cdr _exprs14124_)
                                                (foldl1 (lambda (_id14163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _r14164_)
                  (if (__AST-e _id14163_)
                      (cons (cons (__SRC__0 _id14163_)
                                  (cons (cons 'quote (cons '#!void '())) '()))
                            _r14164_)
                      _r14164_))
                _bind14125_
                _hd14154_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _tmp14160_
                                                            (cons (car _exprs14124_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len14158_
                                (filter-map2
                                 (lambda (_id14166_ _k14167_)
                                   (if (__AST-e _id14166_)
                                       (cons (__SRC__0 _id14166_) _k14167_)
                                       '#f))
                                 _hd14154_
                                 (iota _len14158_)))))
              _post14126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _stx13965_
                                              _hd14154_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1412714141_))
                              (let ((_tl1413714194_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1412714141_)))
                                    (_hd1413614192_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1412714141_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1413614192_))
                                    (let ((_tl1413914199_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1413614192_)))
                                          (_hd1413814197_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1413614192_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1413914199_))
                                          (let ((_hd14202_ _hd1413814197_)
                                                (_rest14204_ _tl1413714194_))
                                            (_K1413514189_
                                             _rest14204_
                                             _hd14202_))
                                          (let ((_hd14177_ _hd1413614192_)
                                                (_rest14179_ _tl1413714194_))
                                            (_K1413214169_
                                             _rest14179_
                                             _hd14177_))))
                                    (let ((_hd14177_ _hd1413614192_)
                                          (_rest14179_ _tl1413714194_))
                                      (_K1413214169_ _rest14179_ _hd14177_))))
                              (_else1413014149_)))))))
                 (_compile-bind13969_
                  (lambda (_bind14113_ _post14114_ _body14115_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _bind14113_)
                                 (cons (_compile-post13970_
                                        _post14114_
                                        _body14115_)
                                       '())))
                     _stx13965_)))
                 (_compile-post13970_
                  (lambda (_post13972_ _body13973_)
                    (__SRC__%
                     (cons 'begin
                           (foldr1 cons
                                   '()
                                   (foldl1 (lambda (_hd13975_ _r13976_)
                                             (let* ((_hd1397714000_ _hd13975_)
                                                    (_E1398114004_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _hd1397714000_))))
                                               (let ((_K1399414098_
                                                      (lambda (_expr14096_)
                                                        (cons _expr14096_
                                                              _r13976_)))
                                                     (_K1398914076_
                                                      (lambda (_expr14073_
                                                               _id14074_)
                                                        (cons (__SRC__%
                                                               (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id14074_ (cons _expr14073_ '())))
                       _stx13965_)
                      _r13976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_K1398214043_
                                                      (lambda (_init14008_
                                                               _len14009_
                                                               _expr14010_
                                                               _tmp14011_)
                                                        (cons (__SRC__%
                                                               (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (cons _tmp14011_
                                               (cons _expr14010_ '()))
                                         '())
                                   (cons (__SRC__%
                                          (cons '__check-values
                                                (cons _tmp14011_
                                                      (cons _len14009_ '())))
                                          _stx13965_)
                                         (foldr1 cons
                                                 '()
                                                 (map (lambda (_hd14013_)
                                                        (let* ((_hd1401414021_
                                                                _hd14013_)
                                                               (_E1401614025_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _hd1401414021_)))
                       (_K1401714031_
                        (lambda (_k14028_ _id14029_)
                          (__SRC__%
                           (cons 'set!
                                 (cons _id14029_
                                       (cons (cons '##vector-ref
                                                   (cons _tmp14011_
                                                         (cons _k14028_ '())))
                                             '())))
                           _stx13965_))))
                  (if (let () (declare (not safe)) (##pair? _hd1401414021_))
                      (let ((_hd1401814034_
                             (let ()
                               (declare (not safe))
                               (##car _hd1401414021_)))
                            (_tl1401914036_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd1401414021_))))
                        (let* ((_id14039_ _hd1401814034_)
                               (_k14041_ _tl1401914036_))
                          (_K1401714031_ _k14041_ _id14039_)))
                      (_E1401614025_))))
              _init14008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _stx13965_)
                      _r13976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _hd1397714000_))
                                                     (let ((_tl1399614103_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _hd1397714000_)))
                                                           (_hd1399514101_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _hd1397714000_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _hd1399514101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let () (declare (not safe)) (##pair? _tl1399614103_))
                       (let ((_tl1399814108_
                              (let ()
                                (declare (not safe))
                                (##cdr _tl1399614103_)))
                             (_hd1399714106_
                              (let ()
                                (declare (not safe))
                                (##car _tl1399614103_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _tl1399814108_))
                             (let ((_expr14111_ _hd1399714106_))
                               (_K1399414098_ _expr14111_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _tl1399814108_))
                                 (let ((_tl1398814062_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl1399814108_)))
                                       (_hd1398714060_
                                        (let ()
                                          (declare (not safe))
                                          (##car _tl1399814108_))))
                                   (let ((_tmp14051_ _hd1399514101_)
                                         (_expr14058_ _hd1399714106_)
                                         (_len14065_ _hd1398714060_)
                                         (_init14067_ _tl1398814062_))
                                     (_K1398214043_
                                      _init14067_
                                      _len14065_
                                      _expr14058_
                                      _tmp14051_)))
                                 (_E1398114004_))))
                       (_E1398114004_))
                   (if (let () (declare (not safe)) (##pair? _tl1399614103_))
                       (let ((_tl1399314088_
                              (let ()
                                (declare (not safe))
                                (##cdr _tl1399614103_)))
                             (_hd1399214086_
                              (let ()
                                (declare (not safe))
                                (##car _tl1399614103_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _tl1399314088_))
                             (let ((_id14084_ _hd1399514101_)
                                   (_expr14091_ _hd1399214086_))
                               (_K1398914076_ _expr14091_ _id14084_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _tl1399314088_))
                                 (let ((_tl1398814062_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl1399314088_)))
                                       (_hd1398714060_
                                        (let ()
                                          (declare (not safe))
                                          (##car _tl1399314088_))))
                                   (let ((_tmp14051_ _hd1399514101_)
                                         (_expr14058_ _hd1399214086_)
                                         (_len14065_ _hd1398714060_)
                                         (_init14067_ _tl1398814062_))
                                     (_K1398214043_
                                      _init14067_
                                      _len14065_
                                      _expr14058_
                                      _tmp14051_)))
                                 (_E1398114004_))))
                       (_E1398114004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1398114004_)))))
                                           (list _body13973_)
                                           _post13972_)))
                     _stx13965_))))
          (__compile-let-form
           _stx13965_
           _compile-simple13967_
           _compile-values13968_))))
    (define __compile-call%
      (lambda (_stx13925_)
        (let* ((_$e13927_ _stx13925_)
               (_$E1392913938_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e13927_))))
          (if (__AST-pair? _$e13927_)
              (let* ((_$tgt1393013941_ (__AST-e _$e13927_))
                     (_$hd1393113944_
                      (let () (declare (not safe)) (##car _$tgt1393013941_)))
                     (_$tl1393213947_
                      (let () (declare (not safe)) (##cdr _$tgt1393013941_))))
                (if (__AST-pair? _$tl1393213947_)
                    (let* ((_$tgt1393313951_ (__AST-e _$tl1393213947_))
                           (_$hd1393413954_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1393313951_)))
                           (_$tl1393513957_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1393313951_))))
                      (let* ((_rator13961_ _$hd1393413954_)
                             (_rands13963_ _$tl1393513957_))
                        (__SRC__%
                         (cons (__compile _rator13961_)
                               (map __compile _rands13963_))
                         _stx13925_)))
                    (_$E1392913938_)))
              (_$E1392913938_)))))
    (define __compile-ref%
      (lambda (_stx13887_)
        (let* ((_$e13889_ _stx13887_)
               (_$E1389113900_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e13889_))))
          (if (__AST-pair? _$e13889_)
              (let* ((_$tgt1389213903_ (__AST-e _$e13889_))
                     (_$hd1389313906_
                      (let () (declare (not safe)) (##car _$tgt1389213903_)))
                     (_$tl1389413909_
                      (let () (declare (not safe)) (##cdr _$tgt1389213903_))))
                (if (__AST-pair? _$tl1389413909_)
                    (let* ((_$tgt1389513913_ (__AST-e _$tl1389413909_))
                           (_$hd1389613916_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1389513913_)))
                           (_$tl1389713919_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1389513913_))))
                      (let ((_id13923_ _$hd1389613916_))
                        (if (equal? (__AST-e _$tl1389713919_) '())
                            (__SRC__% _id13923_ _stx13887_)
                            (_$E1389113900_))))
                    (_$E1389113900_)))
              (_$E1389113900_)))))
    (define __compile-setq%
      (lambda (_stx13834_)
        (let* ((_$e13836_ _stx13834_)
               (_$E1383813850_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e13836_))))
          (if (__AST-pair? _$e13836_)
              (let* ((_$tgt1383913853_ (__AST-e _$e13836_))
                     (_$hd1384013856_
                      (let () (declare (not safe)) (##car _$tgt1383913853_)))
                     (_$tl1384113859_
                      (let () (declare (not safe)) (##cdr _$tgt1383913853_))))
                (if (__AST-pair? _$tl1384113859_)
                    (let* ((_$tgt1384213863_ (__AST-e _$tl1384113859_))
                           (_$hd1384313866_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1384213863_)))
                           (_$tl1384413869_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1384213863_))))
                      (let ((_id13873_ _$hd1384313866_))
                        (if (__AST-pair? _$tl1384413869_)
                            (let* ((_$tgt1384513875_ (__AST-e _$tl1384413869_))
                                   (_$hd1384613878_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1384513875_)))
                                   (_$tl1384713881_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1384513875_))))
                              (let ((_expr13885_ _$hd1384613878_))
                                (if (equal? (__AST-e _$tl1384713881_) '())
                                    (__SRC__%
                                     (cons 'set!
                                           (cons (__SRC__%
                                                  _id13873_
                                                  _stx13834_)
                                                 (cons (__compile _expr13885_)
                                                       '())))
                                     _stx13834_)
                                    (_$E1383813850_))))
                            (_$E1383813850_))))
                    (_$E1383813850_)))
              (_$E1383813850_)))))
    (define __compile-if%
      (lambda (_stx13766_)
        (let* ((_$e13768_ _stx13766_)
               (_$E1377013785_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e13768_))))
          (if (__AST-pair? _$e13768_)
              (let* ((_$tgt1377113788_ (__AST-e _$e13768_))
                     (_$hd1377213791_
                      (let () (declare (not safe)) (##car _$tgt1377113788_)))
                     (_$tl1377313794_
                      (let () (declare (not safe)) (##cdr _$tgt1377113788_))))
                (if (__AST-pair? _$tl1377313794_)
                    (let* ((_$tgt1377413798_ (__AST-e _$tl1377313794_))
                           (_$hd1377513801_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1377413798_)))
                           (_$tl1377613804_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1377413798_))))
                      (let ((_p13808_ _$hd1377513801_))
                        (if (__AST-pair? _$tl1377613804_)
                            (let* ((_$tgt1377713810_ (__AST-e _$tl1377613804_))
                                   (_$hd1377813813_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1377713810_)))
                                   (_$tl1377913816_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1377713810_))))
                              (let ((_t13820_ _$hd1377813813_))
                                (if (__AST-pair? _$tl1377913816_)
                                    (let* ((_$tgt1378013822_
                                            (__AST-e _$tl1377913816_))
                                           (_$hd1378113825_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1378013822_)))
                                           (_$tl1378213828_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1378013822_))))
                                      (let ((_f13832_ _$hd1378113825_))
                                        (if (equal? (__AST-e _$tl1378213828_)
                                                    '())
                                            (__SRC__%
                                             (cons 'if
                                                   (cons (__compile _p13808_)
                                                         (cons (__compile
                                                                _t13820_)
                                                               (cons (__compile
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _f13832_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx13766_)
                                            (_$E1377013785_))))
                                    (_$E1377013785_))))
                            (_$E1377013785_))))
                    (_$E1377013785_)))
              (_$E1377013785_)))))
    (define __compile-quote%
      (lambda (_stx13728_)
        (let* ((_$e13730_ _stx13728_)
               (_$E1373213741_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e13730_))))
          (if (__AST-pair? _$e13730_)
              (let* ((_$tgt1373313744_ (__AST-e _$e13730_))
                     (_$hd1373413747_
                      (let () (declare (not safe)) (##car _$tgt1373313744_)))
                     (_$tl1373513750_
                      (let () (declare (not safe)) (##cdr _$tgt1373313744_))))
                (if (__AST-pair? _$tl1373513750_)
                    (let* ((_$tgt1373613754_ (__AST-e _$tl1373513750_))
                           (_$hd1373713757_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1373613754_)))
                           (_$tl1373813760_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1373613754_))))
                      (let ((_e13764_ _$hd1373713757_))
                        (if (equal? (__AST-e _$tl1373813760_) '())
                            (__SRC__%
                             (cons 'quote (cons (__AST->datum _e13764_) '()))
                             _stx13728_)
                            (_$E1373213741_))))
                    (_$E1373213741_)))
              (_$E1373213741_)))))
    (define __compile-quote-syntax%
      (lambda (_stx13690_)
        (let* ((_$e13692_ _stx13690_)
               (_$E1369413703_
                (lambda ()
                  (__raise-syntax-error '#f '"Bad syntax" _$e13692_))))
          (if (__AST-pair? _$e13692_)
              (let* ((_$tgt1369513706_ (__AST-e _$e13692_))
                     (_$hd1369613709_
                      (let () (declare (not safe)) (##car _$tgt1369513706_)))
                     (_$tl1369713712_
                      (let () (declare (not safe)) (##cdr _$tgt1369513706_))))
                (if (__AST-pair? _$tl1369713712_)
                    (let* ((_$tgt1369813716_ (__AST-e _$tl1369713712_))
                           (_$hd1369913719_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1369813716_)))
                           (_$tl1370013722_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1369813716_))))
                      (let ((_e13726_ _$hd1369913719_))
                        (if (equal? (__AST-e _$tl1370013722_) '())
                            (__SRC__%
                             (cons 'quote (cons _e13726_ '()))
                             _stx13690_)
                            (_$E1369413703_))))
                    (_$E1369413703_)))
              (_$E1369413703_)))))
    (__core-bind-syntax!__% '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#module
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#import
     __compile-import%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#export
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#provide
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#extern
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#declare
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax!__% '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!__%
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax!__% '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!__%
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#include __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax!__%
     '%#letrec-syntax
     __compile-error
     make-__core-form)))
