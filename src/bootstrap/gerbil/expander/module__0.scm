(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708451993)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args89777_
        (apply make-instance gx#module-import::t _$args89777_)))
    (define gx#module-import-source
      (make-class-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (make-class-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (make-class-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (make-class-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (make-class-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (make-class-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (make-class-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (make-class-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (make-class-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (make-class-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (make-class-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (make-class-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (make-class-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args89774_
        (apply make-instance gx#module-export::t _$args89774_)))
    (define gx#module-export-context
      (make-class-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (make-class-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (make-class-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (make-class-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (make-class-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (make-class-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (make-class-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (make-class-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (make-class-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (make-class-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (make-class-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (make-class-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (make-class-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (make-class-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (make-class-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (make-class-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args89771_
        (apply make-instance gx#import-set::t _$args89771_)))
    (define gx#import-set-source
      (make-class-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi (make-class-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (make-class-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (make-class-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (make-class-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (make-class-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (make-class-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (make-class-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (make-class-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (make-class-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args89768_
        (apply make-instance gx#export-set::t _$args89768_)))
    (define gx#export-set-source
      (make-class-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi (make-class-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (make-class-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (make-class-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (make-class-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (make-class-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (make-class-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (make-class-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (make-class-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (make-class-slot-unchecked-mutator gx#export-set::t 'exports))
    (define gx#import-expander::t
      (make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _$args89765_
        (apply make-instance gx#import-expander::t _$args89765_)))
    (define gx#import-expander-context
      (make-class-slot-accessor gx#import-expander::t 'context))
    (define gx#import-expander-phi
      (make-class-slot-accessor gx#import-expander::t 'phi))
    (define gx#import-expander-e
      (make-class-slot-accessor gx#import-expander::t 'e))
    (define gx#import-expander-context-set!
      (make-class-slot-mutator gx#import-expander::t 'context))
    (define gx#import-expander-phi-set!
      (make-class-slot-mutator gx#import-expander::t 'phi))
    (define gx#import-expander-e-set!
      (make-class-slot-mutator gx#import-expander::t 'e))
    (define gx#&import-expander-context
      (make-class-slot-unchecked-accessor gx#import-expander::t 'context))
    (define gx#&import-expander-phi
      (make-class-slot-unchecked-accessor gx#import-expander::t 'phi))
    (define gx#&import-expander-e
      (make-class-slot-unchecked-accessor gx#import-expander::t 'e))
    (define gx#&import-expander-context-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'context))
    (define gx#&import-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'phi))
    (define gx#&import-expander-e-set!
      (make-class-slot-unchecked-mutator gx#import-expander::t 'e))
    (define gx#export-expander::t
      (make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _$args89762_
        (apply make-instance gx#export-expander::t _$args89762_)))
    (define gx#export-expander-context
      (make-class-slot-accessor gx#export-expander::t 'context))
    (define gx#export-expander-phi
      (make-class-slot-accessor gx#export-expander::t 'phi))
    (define gx#export-expander-e
      (make-class-slot-accessor gx#export-expander::t 'e))
    (define gx#export-expander-context-set!
      (make-class-slot-mutator gx#export-expander::t 'context))
    (define gx#export-expander-phi-set!
      (make-class-slot-mutator gx#export-expander::t 'phi))
    (define gx#export-expander-e-set!
      (make-class-slot-mutator gx#export-expander::t 'e))
    (define gx#&export-expander-context
      (make-class-slot-unchecked-accessor gx#export-expander::t 'context))
    (define gx#&export-expander-phi
      (make-class-slot-unchecked-accessor gx#export-expander::t 'phi))
    (define gx#&export-expander-e
      (make-class-slot-unchecked-accessor gx#export-expander::t 'e))
    (define gx#&export-expander-context-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'context))
    (define gx#&export-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'phi))
    (define gx#&export-expander-e-set!
      (make-class-slot-unchecked-mutator gx#export-expander::t 'e))
    (define gx#import-export-expander::t
      (make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _$args89759_
        (apply make-instance gx#import-export-expander::t _$args89759_)))
    (define gx#import-export-expander-context
      (make-class-slot-accessor gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi
      (make-class-slot-accessor gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e
      (make-class-slot-accessor gx#import-export-expander::t 'e))
    (define gx#import-export-expander-context-set!
      (make-class-slot-mutator gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi-set!
      (make-class-slot-mutator gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e-set!
      (make-class-slot-mutator gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context
      (make-class-slot-unchecked-accessor
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi
      (make-class-slot-unchecked-accessor gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e
      (make-class-slot-unchecked-accessor gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context-set!
      (make-class-slot-unchecked-mutator
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e-set!
      (make-class-slot-unchecked-mutator gx#import-export-expander::t 'e))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path89756_ _fun89757_)
        (call-with-input-file
         (cons 'path: (cons _path89756_ gx#source-file-settings))
         _fun89757_)))
    (define gx#module-context:::init!
      (lambda (_self89750_ _id89751_ _super89752_ _ns89753_ _path89754_)
        (if (##fx< '11 (##structure-length _self89750_))
            (begin
              (##unchecked-structure-set!
               _self89750_
               _id89751_
               '1
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               (make-hash-table-eq)
               '2
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               _super89752_
               '3
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               '#f
               '4
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               '#f
               '5
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               _ns89753_
               '6
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               _path89754_
               '7
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               '()
               '8
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               '()
               '9
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               '#f
               '10
               (##structure-type _self89750_)
               '#f)
              (##unchecked-structure-set!
               _self89750_
               '#f
               '11
               (##structure-type _self89750_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self89750_
                   '11
                   (##vector-length _self89750_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self89594_ _ctx89595_ _root89596_)
        (let ((_super89604_
               (let ((_$e89598_ _root89596_))
                 (if _$e89598_
                     _$e89598_
                     (let ((_$e89601_ (gx#core-context-root__0)))
                       (if _$e89601_
                           _$e89601_
                           (let ((__obj89819
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor89820
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj89819
                                     ':init!)))
                               (if __constructor89820
                                   (__constructor89820 __obj89819)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj89819)))))))
          (if _ctx89595_
              (let ((_id89607_
                     (##structure-ref
                      _ctx89595_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path89608_
                     (##structure-ref _ctx89595_ '7 gx#module-context::t '#f))
                    (_in89609_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx89595_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e89610_
                     (make-promise (lambda () (gx#eval-module _ctx89595_)))))
                (if (##fx< '8 (##structure-length _self89594_))
                    (begin
                      (##unchecked-structure-set!
                       _self89594_
                       _id89607_
                       '1
                       (##structure-type _self89594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89594_
                       (make-hash-table-eq 'size: (length _in89609_))
                       '2
                       (##structure-type _self89594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89594_
                       _super89604_
                       '3
                       (##structure-type _self89594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89594_
                       '#f
                       '4
                       (##structure-type _self89594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89594_
                       '#f
                       '5
                       (##structure-type _self89594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89594_
                       _path89608_
                       '6
                       (##structure-type _self89594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89594_
                       _in89609_
                       '7
                       (##structure-type _self89594_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89594_
                       _e89610_
                       '8
                       (##structure-type _self89594_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self89594_
                           '8
                           (##vector-length _self89594_)))
                (for-each
                 (lambda (_g8961189613_)
                   (gx#core-bind-weak-import!__% _g8961189613_ _self89594_))
                 _in89609_))
              (if (##fx< '8 (##structure-length _self89594_))
                  (begin
                    (##unchecked-structure-set!
                     _self89594_
                     '#f
                     '1
                     (##structure-type _self89594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89594_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self89594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89594_
                     _super89604_
                     '3
                     (##structure-type _self89594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89594_
                     '#f
                     '4
                     (##structure-type _self89594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89594_
                     '#f
                     '5
                     (##structure-type _self89594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89594_
                     '#f
                     '6
                     (##structure-type _self89594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89594_
                     '()
                     '7
                     (##structure-type _self89594_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89594_
                     '#f
                     '8
                     (##structure-type _self89594_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self89594_
                         '8
                         (##vector-length _self89594_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self89619_ _ctx89620_)
        (let ((_root89622_ '#f))
          (gx#prelude-context:::init!__% _self89619_ _ctx89620_ _root89622_))))
    (define gx#prelude-context:::init!
      (lambda _g89826_
        (let ((_g89825_ (##length _g89826_)))
          (cond ((##fx= _g89825_ 2)
                 (apply (lambda (_self89619_ _ctx89620_)
                          (gx#prelude-context:::init!__0
                           _self89619_
                           _ctx89620_))
                        _g89826_))
                ((##fx= _g89825_ 3)
                 (apply (lambda (_self89624_ _ctx89625_ _root89626_)
                          (gx#prelude-context:::init!__%
                           _self89624_
                           _ctx89625_
                           _root89626_))
                        _g89826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g89826_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self89468_ _e89469_)
        (if (##fx< '3 (##structure-length _self89468_))
            (begin
              (##unchecked-structure-set!
               _self89468_
               _e89469_
               '1
               (##structure-type _self89468_)
               '#f)
              (##unchecked-structure-set!
               _self89468_
               (gx#current-expander-context)
               '2
               (##structure-type _self89468_)
               '#f)
              (##unchecked-structure-set!
               _self89468_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self89468_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self89468_
                   '3
                   (##vector-length _self89468_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!__%
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g8909489097_ _g8909589099_)
        (gx#core-apply-user-expander__%
         _g8909489097_
         _g8909589099_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g8896588968_ _g8896688970_)
        (gx#core-apply-user-expander__%
         _g8896588968_
         _g8896688970_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx88836_)
        (let* ((_path88838_
                (##structure-ref _ctx88836_ '7 gx#module-context::t '#f))
               (_path88840_
                (if (pair? _path88838_) (last _path88838_) _path88838_)))
          (if (string? _path88840_) _path88840_ '#f))))
    (define gx#import-module__%
      (lambda (_path88812_ _reload?88813_ _eval?88814_)
        (let ((_ctx88816_
               ((gx#current-expander-module-import)
                _path88812_
                _reload?88813_)))
          (if (and _ctx88816_ _eval?88814_)
              (gx#eval-module _ctx88816_)
              '#!void)
          _ctx88816_)))
    (define gx#import-module__0
      (lambda (_path88821_)
        (let* ((_reload?88823_ '#f) (_eval?88825_ '#f))
          (gx#import-module__% _path88821_ _reload?88823_ _eval?88825_))))
    (define gx#import-module__1
      (lambda (_path88827_ _reload?88828_)
        (let ((_eval?88830_ '#f))
          (gx#import-module__% _path88827_ _reload?88828_ _eval?88830_))))
    (define gx#import-module
      (lambda _g89828_
        (let ((_g89827_ (##length _g89828_)))
          (cond ((##fx= _g89827_ 1)
                 (apply (lambda (_path88821_)
                          (gx#import-module__0 _path88821_))
                        _g89828_))
                ((##fx= _g89827_ 2)
                 (apply (lambda (_path88827_ _reload?88828_)
                          (gx#import-module__1 _path88827_ _reload?88828_))
                        _g89828_))
                ((##fx= _g89827_ 3)
                 (apply (lambda (_path88832_ _reload?88833_ _eval?88834_)
                          (gx#import-module__%
                           _path88832_
                           _reload?88833_
                           _eval?88834_))
                        _g89828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g89828_))))))
    (define gx#eval-module
      (lambda (_mod88809_) ((gx#current-expander-module-eval) _mod88809_)))
    (define gx#core-eval-module
      (lambda (_obj88794_)
        (letrec ((_force-e88796_
                  (lambda (_getf88805_ _e88806_)
                    (call-with-parameters
                     (lambda () (force (_getf88805_ _e88806_)))
                     gx#current-expander-context
                     _e88806_
                     gx#current-expander-phi
                     '0))))
          (let _recur88798_ ((_e88800_ _obj88794_))
            (if (##structure-instance-of? _e88800_ 'gx#module-context::t)
                (begin
                  (let ((_$e88802_ (gx#core-context-prelude__% _e88800_)))
                    (if _$e88802_ (_recur88798_ _$e88802_) '#!void))
                  (_force-e88796_ gx#module-context-e _e88800_))
                (if (##structure-instance-of? _e88800_ 'gx#prelude-context::t)
                    (_force-e88796_ gx#prelude-context-e _e88800_)
                    (if (gx#stx-string? _e88800_)
                        (_recur88798_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e88800_)))
                        (if (gx#core-library-module-path? _e88800_)
                            (_recur88798_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e88800_)))
                            (error '"Cannot eval module" _obj88794_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx88777_)
        (let _lp88779_ ((_e88781_ _ctx88777_))
          (if (or (##structure-instance-of? _e88781_ 'gx#module-context::t)
                  (##structure-instance-of? _e88781_ 'gx#local-context::t))
              (_lp88779_
               (##unchecked-structure-ref _e88781_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e88781_ 'gx#prelude-context::t)
                  _e88781_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx88790_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx88790_))))
    (define gx#core-context-prelude
      (lambda _g89830_
        (let ((_g89829_ (##length _g89830_)))
          (cond ((##fx= _g89829_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g89830_))
                ((##fx= _g89829_ 1)
                 (apply (lambda (_ctx88792_)
                          (gx#core-context-prelude__% _ctx88792_))
                        _g89830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g89830_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx88767_)
        (let* ((_ht88769_ (gx#current-expander-module-registry))
               (_$e88771_ (hash-get _ht88769_ _ctx88767_)))
          (if _$e88771_
              (values _$e88771_)
              (let ((_pre88774_
                     (let ((__obj89821
                            (##structure
                             gx#prelude-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#prelude-context:::init! __obj89821 _ctx88767_)
                       __obj89821)))
                (hash-put! _ht88769_ _ctx88767_ _pre88774_)
                _pre88774_)))))
    (define gx#core-import-module__%
      (lambda (_rpath88648_ _reload?88649_)
        (letrec ((_import-source88651_
                  (lambda (_path88736_)
                    (if (member _path88736_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path88736_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g89831_ (gx#core-read-module _path88736_)))
                         (begin
                           (let ((_g89832_
                                  (if (##values? _g89831_)
                                      (##vector-length _g89831_)
                                      1)))
                             (if (not (##fx= _g89832_ 4))
                                 (error "Context expects 4 values" _g89832_)))
                           (let ((_pre88739_ (##vector-ref _g89831_ 0))
                                 (_id88740_ (##vector-ref _g89831_ 1))
                                 (_ns88741_ (##vector-ref _g89831_ 2))
                                 (_body88742_ (##vector-ref _g89831_ 3)))
                             (let* ((_prelude88747_
                                     (if (##structure-instance-of?
                                          _pre88739_
                                          'gx#prelude-context::t)
                                         _pre88739_
                                         (if (##structure-instance-of?
                                              _pre88739_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre88739_)
                                             (if (string? _pre88739_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre88739_))
                                                 (if (not _pre88739_)
                                                     (let ((_$e88744_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e88744_
                                                           _$e88744_
                                                           (let ((__obj89822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure
                           gx#prelude-context::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f)))
                     (gx#prelude-context:::init! __obj89822 '#f)
                     __obj89822)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath88648_
                                                            _pre88739_))))))
                                    (_ctx88749_
                                     (let ((__obj89823
                                            (##structure
                                             gx#module-context::t
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f
                                             '#f)))
                                       (gx#module-context:::init!
                                        __obj89823
                                        _id88740_
                                        _prelude88747_
                                        _ns88741_
                                        _path88736_)
                                       __obj89823))
                                    (_body88751_
                                     (gx#core-expand-module-begin
                                      _body88742_
                                      _ctx88749_))
                                    (_body88753_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body88751_)
                                      _path88736_
                                      _ctx88749_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx88749_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body88753_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx88749_
                                _body88753_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path88736_
                                _ctx88749_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id88740_
                                _ctx88749_)
                               _ctx88749_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path88736_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule88652_
                  (lambda (_rpath88664_)
                    (let* ((_rpath8866588672_ _rpath88664_)
                           (_E8866788676_
                            (lambda ()
                              (error '"No clause matching" _rpath8866588672_)))
                           (_K8866888724_
                            (lambda (_refs88679_ _origin88680_)
                              (let ((_ctx88682_
                                     (if _origin88680_
                                         (gx#core-import-module__%
                                          _origin88680_
                                          _reload?88649_)
                                         (gx#current-expander-context))))
                                (let _lp88684_ ((_rest88686_ _refs88679_)
                                                (_ctx88687_ _ctx88682_))
                                  (let* ((_rest8868888696_ _rest88686_)
                                         (_else8869088704_
                                          (lambda () _ctx88687_))
                                         (_K8869288712_
                                          (lambda (_rest88707_ _id88708_)
                                            (let ((_bind88710_
                                                   (gx#resolve-identifier__%
                                                    _id88708_
                                                    '0
                                                    _ctx88687_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind88710_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind88710_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp88684_
                                                   _rest88707_
                                                   (##unchecked-structure-ref
                                                    _bind88710_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath88664_
                                                         _id88708_
                                                         _bind88710_))))))
                                    (if (##pair? _rest8868888696_)
                                        (let ((_hd8869388715_
                                               (##car _rest8868888696_))
                                              (_tl8869488717_
                                               (##cdr _rest8868888696_)))
                                          (let* ((_id88720_ _hd8869388715_)
                                                 (_rest88722_ _tl8869488717_))
                                            (_K8869288712_
                                             _rest88722_
                                             _id88720_)))
                                        (_else8869088704_))))))))
                      (if (##pair? _rpath8866588672_)
                          (let ((_hd8866988727_ (##car _rpath8866588672_))
                                (_tl8867088729_ (##cdr _rpath8866588672_)))
                            (let* ((_origin88732_ _hd8866988727_)
                                   (_refs88734_ _tl8867088729_))
                              (_K8866888724_ _refs88734_ _origin88732_)))
                          (_E8866788676_))))))
          (let ((_$e88654_
                 (if (not _reload?88649_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath88648_)
                     '#f)))
            (if _$e88654_
                (values _$e88654_)
                (if (list? _rpath88648_)
                    (_import-submodule88652_ _rpath88648_)
                    (if (gx#core-library-module-path? _rpath88648_)
                        (let ((_ctx88657_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath88648_)
                                _reload?88649_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath88648_
                           _ctx88657_)
                          _ctx88657_)
                        (let* ((_npath88659_ (path-normalize _rpath88648_))
                               (_$e88661_
                                (if (not _reload?88649_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath88659_)
                                    '#f)))
                          (if _$e88661_
                              (values _$e88661_)
                              (_import-source88651_ _npath88659_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath88760_)
        (let ((_reload?88762_ '#f))
          (gx#core-import-module__% _rpath88760_ _reload?88762_))))
    (define gx#core-import-module
      (lambda _g89834_
        (let ((_g89833_ (##length _g89834_)))
          (cond ((##fx= _g89833_ 1)
                 (apply (lambda (_rpath88760_)
                          (gx#core-import-module__0 _rpath88760_))
                        _g89834_))
                ((##fx= _g89833_ 2)
                 (apply (lambda (_rpath88764_ _reload?88765_)
                          (gx#core-import-module__%
                           _rpath88764_
                           _reload?88765_))
                        _g89834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g89834_))))))
    (define gx#core-read-module
      (lambda (_path88637_)
        (with-catch
         (lambda (_exn88639_)
           (if (and (datum-parsing-exception? _exn88639_)
                    (eq? (datum-parsing-exception-filepos _exn88639_) '0))
               (gx#core-read-module/lang _path88637_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path88637_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g8864188643_)
                      (display-exception _exn88639_ _g8864188643_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path88637_)))))
    (define gx#core-read-module/sexp
      (lambda (_path88500_)
        (let _lp88502_ ((_body88504_ (read-syntax-from-file _path88500_))
                        (_pre88505_ '#f)
                        (_ns88506_ '#f)
                        (_pkg88507_ '#f))
          (let* ((_e8850888532_ _body88504_)
                 (_E8852488554_
                  (lambda ()
                    (let ((_g89835_
                           (if _pkg88507_
                               (values _pre88505_ _ns88506_ _pkg88507_)
                               (gx#core-read-module-package
                                _path88500_
                                _pre88505_
                                _ns88506_))))
                      (begin
                        (let ((_g89836_
                               (if (##values? _g89835_)
                                   (##vector-length _g89835_)
                                   1)))
                          (if (not (##fx= _g89836_ 3))
                              (error "Context expects 3 values" _g89836_)))
                        (let ((_pre88536_ (##vector-ref _g89835_ 0))
                              (_ns88537_ (##vector-ref _g89835_ 1))
                              (_pkg88538_ (##vector-ref _g89835_ 2)))
                          (let* ((_prelude88540_
                                  (if (gx#core-bound-module-prelude?
                                       _pre88536_)
                                      (gx#syntax-local-e__0 _pre88536_)
                                      (if (gx#core-library-module-path?
                                           _pre88536_)
                                          (gx#core-resolve-library-module-path
                                           _pre88536_)
                                          (if (gx#stx-string? _pre88536_)
                                              (gx#core-resolve-module-path__%
                                               _pre88536_
                                               _path88500_)
                                              (gx#stx-e _pre88536_)))))
                                 (_path-id88542_
                                  (gx#core-module-path->namespace _path88500_))
                                 (_pkg-id88544_
                                  (if _pkg88538_
                                      (string-append
                                       _pkg88538_
                                       '"/"
                                       _path-id88542_)
                                      _path-id88542_))
                                 (_module-id88546_
                                  (string->symbol _pkg-id88544_))
                                 (_module-ns88551_
                                  (if (eq? _ns88537_ '#!void)
                                      '#f
                                      (let ((_$e88548_ _ns88537_))
                                        (if _$e88548_
                                            _$e88548_
                                            _pkg-id88544_)))))
                            (values _prelude88540_
                                    _module-id88546_
                                    _module-ns88551_
                                    _body88504_)))))))
                 (_E8851788583_
                  (lambda ()
                    (if (gx#stx-pair? _e8850888532_)
                        (let ((_e8852588558_ (gx#syntax-e _e8850888532_)))
                          (let ((_hd8852688561_ (##car _e8852588558_))
                                (_tl8852788563_ (##cdr _e8852588558_)))
                            (if (eq? (gx#stx-e _hd8852688561_) 'package:)
                                (if (gx#stx-pair? _tl8852788563_)
                                    (let ((_e8852888566_
                                           (gx#syntax-e _tl8852788563_)))
                                      (let ((_hd8852988569_
                                             (##car _e8852888566_))
                                            (_tl8853088571_
                                             (##cdr _e8852888566_)))
                                        (let* ((_pkg88574_ _hd8852988569_)
                                               (_rest88576_ _tl8853088571_))
                                          (if '#t
                                              (let ((_pkg88581_
                                                     (if (gx#identifier?
                                                          _pkg88574_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg88574_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg88574_)
                         (gx#stx-false? _pkg88574_))
                     (gx#stx-e _pkg88574_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg88574_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp88502_
                                                 _rest88576_
                                                 _pre88505_
                                                 _ns88506_
                                                 _pkg88581_))
                                              (_E8852488554_)))))
                                    (_E8852488554_))
                                (_E8852488554_))))
                        (_E8852488554_))))
                 (_E8851088609_
                  (lambda ()
                    (if (gx#stx-pair? _e8850888532_)
                        (let ((_e8851888587_ (gx#syntax-e _e8850888532_)))
                          (let ((_hd8851988590_ (##car _e8851888587_))
                                (_tl8852088592_ (##cdr _e8851888587_)))
                            (if (eq? (gx#stx-e _hd8851988590_) 'namespace:)
                                (if (gx#stx-pair? _tl8852088592_)
                                    (let ((_e8852188595_
                                           (gx#syntax-e _tl8852088592_)))
                                      (let ((_hd8852288598_
                                             (##car _e8852188595_))
                                            (_tl8852388600_
                                             (##cdr _e8852188595_)))
                                        (let* ((_ns88603_ _hd8852288598_)
                                               (_rest88605_ _tl8852388600_))
                                          (if '#t
                                              (let ((_ns88607_
                                                     (if (gx#identifier?
                                                          _ns88603_)
                                                         (symbol->string
                                                          (gx#stx-e _ns88603_))
                                                         (if (gx#stx-string?
                                                              _ns88603_)
                                                             (gx#stx-e
                                                              _ns88603_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns88603_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns88603_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp88502_
                                                 _rest88605_
                                                 _pre88505_
                                                 _ns88607_
                                                 _pkg88507_))
                                              (_E8851788583_)))))
                                    (_E8851788583_))
                                (_E8851788583_))))
                        (_E8851788583_))))
                 (_E8850988633_
                  (lambda ()
                    (if (gx#stx-pair? _e8850888532_)
                        (let ((_e8851188613_ (gx#syntax-e _e8850888532_)))
                          (let ((_hd8851288616_ (##car _e8851188613_))
                                (_tl8851388618_ (##cdr _e8851188613_)))
                            (if (eq? (gx#stx-e _hd8851288616_) 'prelude:)
                                (if (gx#stx-pair? _tl8851388618_)
                                    (let ((_e8851488621_
                                           (gx#syntax-e _tl8851388618_)))
                                      (let ((_hd8851588624_
                                             (##car _e8851488621_))
                                            (_tl8851688626_
                                             (##cdr _e8851488621_)))
                                        (let* ((_prelude88629_ _hd8851588624_)
                                               (_rest88631_ _tl8851688626_))
                                          (if '#t
                                              (_lp88502_
                                               _rest88631_
                                               _prelude88629_
                                               _ns88506_
                                               _pkg88507_)
                                              (_E8851088609_)))))
                                    (_E8851088609_))
                                (_E8851088609_))))
                        (_E8851088609_)))))
            (_E8850988633_)))))
    (define gx#core-read-module/lang
      (lambda (_path88327_)
        (letrec ((_default-read-module-body88329_
                  (lambda (_inp88492_)
                    (let _lp88494_ ((_body88496_ '()))
                      (let ((_next88498_ (read-syntax _inp88492_)))
                        (if (eof-object? _next88498_)
                            (reverse _body88496_)
                            (_lp88494_ (cons _next88498_ _body88496_)))))))
                 (_read-body88330_
                  (lambda (_inp88411_
                           _pre88412_
                           _ns88413_
                           _pkg88414_
                           _args88415_)
                    (let ((_g89837_
                           (if _pkg88414_
                               (values _pre88412_ _ns88413_ _pkg88414_)
                               (gx#core-read-module-package
                                _path88327_
                                _pre88412_
                                _ns88413_))))
                      (begin
                        (let ((_g89838_
                               (if (##values? _g89837_)
                                   (##vector-length _g89837_)
                                   1)))
                          (if (not (##fx= _g89838_ 3))
                              (error "Context expects 3 values" _g89838_)))
                        (let ((_pre88417_ (##vector-ref _g89837_ 0))
                              (_ns88418_ (##vector-ref _g89837_ 1))
                              (_pkg88419_ (##vector-ref _g89837_ 2)))
                          (let* ((_prelude88421_
                                  (gx#import-module__0 _pre88417_))
                                 (_read-module-body88475_
                                  (let ((_$e88467_
                                         (find (lambda (_e8842288424_)
                                                 (let* ((_g8842688436_
                                                         _e8842288424_)
                                                        (_else8842888444_
                                                         (lambda () '#f))
                                                        (_K8843088448_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g8842688436_
                                                        'gx#module-export::t)
                                                       (let* ((_e8843188451_
                                                               (##unchecked-structure-ref
                                                                _g8842688436_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e8843288454_
                                                               (##unchecked-structure-ref
                                                                _g8842688436_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e8843388457_
                                                               (##unchecked-structure-ref
                                                                _g8842688436_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e8843388457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e8843488460_
                            (##unchecked-structure-ref
                             _g8842688436_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g8846288464_)
                              (eq? _g8846288464_ 'read-module-body))
                            _e8843488460_)
                           (_K8843088448_)
                           (_else8842888444_)))
                     (_else8842888444_)))
               (_else8842888444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude88421_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e88467_
                                        ((lambda (_xport88470_)
                                           (let ((_proc88473_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport88470_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc88473_)
                                                 _proc88473_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path88327_
                                                  _pre88417_
                                                  _proc88473_))))
                                         _$e88467_)
                                        _default-read-module-body88329_)))
                                 (_path-id88477_
                                  (gx#core-module-path->namespace _path88327_))
                                 (_pkg-id88479_
                                  (if _pkg88419_
                                      (string-append
                                       _pkg88419_
                                       '"/"
                                       _path-id88477_)
                                      _path-id88477_))
                                 (_module-id88481_
                                  (string->symbol _pkg-id88479_))
                                 (_module-ns88486_
                                  (let ((_$e88483_ _ns88418_))
                                    (if _$e88483_ _$e88483_ _pkg-id88479_)))
                                 (_body88489_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body88475_ _inp88411_))
                                   gx#current-module-reader-path
                                   _path88327_
                                   gx#current-module-reader-args
                                   _args88415_)))
                            (values _prelude88421_
                                    _module-id88481_
                                    _module-ns88486_
                                    _body88489_)))))))
                 (_string-e88331_
                  (lambda (_obj88408_ _what88409_)
                    (if (string? _obj88408_)
                        _obj88408_
                        (if (symbol? _obj88408_)
                            (symbol->string _obj88408_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what88409_)
                             _path88327_
                             _obj88408_)))))
                 (_read-lang-args88332_
                  (lambda (_inp88363_ _args88364_)
                    (let* ((_args8836588373_ _args88364_)
                           (_else8836788381_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path88327_)))
                           (_K8836988396_
                            (lambda (_args88384_ _prelude88385_)
                              (let* ((_pkg88387_
                                      (pgetq__0 'package: _args88384_))
                                     (_pkg88389_
                                      (if _pkg88387_
                                          (_string-e88331_
                                           _pkg88387_
                                           '"package")
                                          '#f))
                                     (_ns88391_
                                      (pgetq__0 'namespace: _args88384_))
                                     (_ns88393_
                                      (if _ns88391_
                                          (_string-e88331_
                                           _ns88391_
                                           '"namespace")
                                          '#f)))
                                (_read-body88330_
                                 _inp88363_
                                 _prelude88385_
                                 _ns88393_
                                 _pkg88389_
                                 _args88384_)))))
                      (if (##pair? _args8836588373_)
                          (let ((_hd8837088399_ (##car _args8836588373_))
                                (_tl8837188401_ (##cdr _args8836588373_)))
                            (let* ((_prelude88404_ _hd8837088399_)
                                   (_args88406_ _tl8837188401_))
                              (_K8836988396_ _args88406_ _prelude88404_)))
                          (_else8836788381_)))))
                 (_read-lang88333_
                  (lambda (_inp88338_)
                    (let* ((_head88340_ (read-line _inp88338_))
                           (_$e88342_ (string-index__0 _head88340_ '#\space)))
                      (if _$e88342_
                          ((lambda (_ix88345_)
                             (let ((_lang88347_
                                    (substring _head88340_ '0 _ix88345_)))
                               (if (equal? _lang88347_ '"#lang")
                                   (let* ((_rest88349_
                                           (substring
                                            _head88340_
                                            (fx+ _ix88345_ '1)
                                            (string-length _head88340_)))
                                          (_args88360_
                                           (with-catch
                                            (lambda (_g8835088352_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path88327_
                                               _g8835088352_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest88349_
                                               (lambda (_g8835588357_)
                                                 (read-all
                                                  _g8835588357_
                                                  read)))))))
                                     (_read-lang-args88332_
                                      _inp88338_
                                      _args88360_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path88327_))))
                           _$e88342_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path88327_)))))
                 (_read-e88334_
                  (lambda (_inp88336_)
                    (if (eq? (peek-char _inp88336_) '#\#)
                        (_read-lang88333_ _inp88336_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path88327_)))))
          (gx#call-with-input-source-file _path88327_ _read-e88334_))))
    (define gx#core-read-module-package
      (lambda (_path88281_ _pre88282_ _ns88283_)
        (letrec ((_string-e88285_
                  (lambda (_e88325_)
                    (if (symbol? _e88325_)
                        (symbol->string _e88325_)
                        (if (string? _e88325_)
                            _e88325_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e88325_))))))
          (let _lp88287_ ((_dir88289_ (path-directory _path88281_))
                          (_pkg-path88290_ '()))
            (let ((_gerbil.pkg88292_ (path-expand '"gerbil.pkg" _dir88289_)))
              (if (file-exists? _gerbil.pkg88292_)
                  (let ((_plist88294_
                         (gx#core-library-package-plist__% _dir88289_ '#t)))
                    (if (null? _plist88294_)
                        (let ((_pkg88296_
                               (if (not (null? _pkg-path88290_))
                                   (string-join _pkg-path88290_ '"/")
                                   '#f)))
                          (values _pre88282_ _ns88283_ _pkg88296_))
                        (if (list? _plist88294_)
                            (let* ((_root88298_
                                    (pgetq__0 'package: _plist88294_))
                                   (_pkg88302_
                                    (let ((_pkg-path88300_
                                           (if _root88298_
                                               (cons (_string-e88285_
                                                      _root88298_)
                                                     _pkg-path88290_)
                                               _pkg-path88290_)))
                                      (if (not (null? _pkg-path88300_))
                                          (string-join _pkg-path88300_ '"/")
                                          '#f)))
                                   (_ns88309_
                                    (let ((_ns88307_
                                           (let ((_$e88304_ _ns88283_))
                                             (if _$e88304_
                                                 _$e88304_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist88294_)))))
                                      (if _ns88307_
                                          (_string-e88285_ _ns88307_)
                                          '#f)))
                                   (_pre88314_
                                    (let ((_$e88311_ _pre88282_))
                                      (if _$e88311_
                                          _$e88311_
                                          (pgetq__0 'prelude: _plist88294_)))))
                              (values _pre88314_ _ns88309_ _pkg88302_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist88294_))))
                  (let ((_dir*88317_
                         (path-strip-trailing-directory-separator _dir88289_)))
                    (if (or (string-empty? _dir*88317_)
                            (equal? _dir88289_ _dir*88317_))
                        (values _pre88282_ _ns88283_ '#f)
                        (let ((_xpath88322_ (path-strip-directory _dir*88317_))
                              (_xdir88323_ (path-directory _dir*88317_)))
                          (_lp88287_
                           _xdir88323_
                           (cons _xpath88322_ _pkg-path88290_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path88279_)
        (path-strip-extension (path-strip-directory _path88279_))))
    (define gx#core-module-path->id
      (lambda (_path88277_)
        (string->symbol (gx#core-module-path->namespace _path88277_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path88256_ _rel88257_)
        (let* ((_path88259_ (gx#stx-e _stx-path88256_))
               (_path88261_
                (if (string-empty? (path-extension _path88259_))
                    (string-append _path88259_ '".ss")
                    _path88259_)))
          (gx#core-resolve-path__%
           _path88261_
           (let ((_$e88264_ (gx#stx-source _stx-path88256_)))
             (if _$e88264_ _$e88264_ _rel88257_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path88270_)
        (let ((_rel88272_ '#f))
          (gx#core-resolve-module-path__% _stx-path88270_ _rel88272_))))
    (define gx#core-resolve-module-path
      (lambda _g89840_
        (let ((_g89839_ (##length _g89840_)))
          (cond ((##fx= _g89839_ 1)
                 (apply (lambda (_stx-path88270_)
                          (gx#core-resolve-module-path__0 _stx-path88270_))
                        _g89840_))
                ((##fx= _g89839_ 2)
                 (apply (lambda (_stx-path88274_ _rel88275_)
                          (gx#core-resolve-module-path__%
                           _stx-path88274_
                           _rel88275_))
                        _g89840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g89840_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath88142_)
        (let* ((_spath88144_ (symbol->string (gx#stx-e _libpath88142_)))
               (_spath88146_
                (substring _spath88144_ '1 (string-length _spath88144_)))
               (_ext88148_ (path-extension _spath88146_))
               (_ssi88150_
                (if (string-empty? _ext88148_)
                    (string-append _spath88146_ '".ssi")
                    (string-append
                     (path-strip-extension _spath88146_)
                     '".ssi")))
               (_srcs88154_
                (if (string-empty? _ext88148_)
                    (map (lambda (_ext88152_)
                           (string-append _spath88146_ _ext88152_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath88146_ '()))))
          (let _lp88157_ ((_rest88159_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest8816088169_ _rest88159_)
                   (_E8816388173_
                    (lambda ()
                      (error '"No clause matching" _rest8816088169_))))
              (let ((_K8816588243_
                     (lambda (_rest88184_ _dir88185_)
                       (letrec ((_resolve88187_
                                 (lambda (_ssi88199_ _srcs88200_)
                                   (let ((_compiled-path88202_
                                          (path-expand _ssi88199_ _dir88185_)))
                                     (if (file-exists? _compiled-path88202_)
                                         (path-normalize _compiled-path88202_)
                                         (let _lpr88204_ ((_rest-src88206_
                                                           _srcs88200_))
                                           (let* ((_rest-src8820788215_
                                                   _rest-src88206_)
                                                  (_else8820988223_
                                                   (lambda ()
                                                     (_lp88157_ _rest88184_)))
                                                  (_K8821188231_
                                                   (lambda (_rest-src88226_
                                                            _src88227_)
                                                     (let ((_src-path88229_
                                                            (path-expand
                                                             _src88227_
                                                             _dir88185_)))
                                                       (if (file-exists?
                                                            _src-path88229_)
                                                           (path-normalize
                                                            _src-path88229_)
                                                           (_lpr88204_
                                                            _rest-src88226_))))))
                                             (if (##pair? _rest-src8820788215_)
                                                 (let ((_hd8821288234_
                                                        (##car _rest-src8820788215_))
                                                       (_tl8821388236_
                                                        (##cdr _rest-src8820788215_)))
                                                   (let* ((_src88239_
                                                           _hd8821288234_)
                                                          (_rest-src88241_
                                                           _tl8821388236_))
                                                     (_K8821188231_
                                                      _rest-src88241_
                                                      _src88239_)))
                                                 (_else8820988223_)))))))))
                         (let ((_$e88189_
                                (gx#core-library-package-path-prefix
                                 _dir88185_)))
                           (if _$e88189_
                               ((lambda (_prefix88192_)
                                  (if (string-prefix?
                                       _prefix88192_
                                       _spath88146_)
                                      (let ((_ssi88196_
                                             (substring
                                              _ssi88150_
                                              (string-length _prefix88192_)
                                              (string-length _ssi88150_)))
                                            (_srcs88197_
                                             (map (lambda (_src88194_)
                                                    (substring
                                                     _src88194_
                                                     (string-length
                                                      _prefix88192_)
                                                     (string-length
                                                      _src88194_)))
                                                  _srcs88154_)))
                                        (_resolve88187_
                                         _ssi88196_
                                         _srcs88197_))
                                      (_lp88157_ _rest88184_)))
                                _$e88189_)
                               (_resolve88187_ _ssi88150_ _srcs88154_))))))
                    (_K8816488178_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath88142_))))
                (let ((_try-match8816288181_
                       (lambda ()
                         (if (##null? _rest8816088169_)
                             (_K8816488178_)
                             (_E8816388173_)))))
                  (if (##pair? _rest8816088169_)
                      (let ((_tl8816788248_ (##cdr _rest8816088169_))
                            (_hd8816688246_ (##car _rest8816088169_)))
                        (let ((_dir88251_ _hd8816688246_)
                              (_rest88253_ _tl8816788248_))
                          (_K8816588243_ _rest88253_ _dir88251_)))
                      (_try-match8816288181_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath88115_)
        (letrec ((_resolve88117_
                  (lambda (_path88134_ _base88135_)
                    (let ((_$e88137_ (string-rindex__0 _base88135_ '#\/)))
                      (if _$e88137_
                          ((lambda (_idx88140_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base88135_ '0 _idx88140_)
                                '"/"
                                _path88134_))))
                           _$e88137_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path88134_))))))))
          (let ((_spath88119_ (symbol->string (gx#stx-e _modpath88115_)))
                (_mod88120_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod88120_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath88115_))
            (let ((_mpath88122_
                   (symbol->string
                    (##structure-ref
                     _mod88120_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp88124_ ((_spath88126_ _spath88119_)
                              (_mpath88127_ _mpath88122_))
                (if (string-prefix? '"../" _spath88126_)
                    (let ((_$e88129_ (string-rindex__0 _mpath88127_ '#\/)))
                      (if _$e88129_
                          ((lambda (_idx88132_)
                             (_lp88124_
                              (substring
                               _spath88126_
                               '3
                               (string-length _spath88126_))
                              (substring _mpath88127_ '0 _idx88132_)))
                           _$e88129_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath88115_)))
                    (if (string-prefix? '"./" _spath88126_)
                        (_lp88124_
                         (substring
                          _spath88126_
                          '2
                          (string-length _spath88126_))
                         _mpath88127_)
                        (_resolve88117_ _spath88126_ _mpath88127_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir88108_)
        (let ((_$e88110_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir88108_))))
          (if _$e88110_
              ((lambda (_pkg88113_)
                 (string-append (symbol->string _pkg88113_) '"/"))
               _$e88110_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir88080_ _exists?88081_)
        (let* ((_cache88083_ (gx#core-library-package-cache))
               (_$e88085_ (hash-get _cache88083_ _dir88080_)))
          (if _$e88085_
              (values _$e88085_)
              (let* ((_gerbil.pkg88088_ (path-expand '"gerbil.pkg" _dir88080_))
                     (_plist88095_
                      (if (or _exists?88081_ (file-exists? _gerbil.pkg88088_))
                          (let ((_e88093_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg88088_
                                  read)))
                            (if (eof-object? _e88093_)
                                '()
                                (if (list? _e88093_)
                                    _e88093_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg88088_
                                     _e88093_))))
                          '())))
                (hash-put! _cache88083_ _dir88080_ _plist88095_)
                _plist88095_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir88101_)
        (let ((_exists?88103_ '#f))
          (gx#core-library-package-plist__% _dir88101_ _exists?88103_))))
    (define gx#core-library-package-plist
      (lambda _g89842_
        (let ((_g89841_ (##length _g89842_)))
          (cond ((##fx= _g89841_ 1)
                 (apply (lambda (_dir88101_)
                          (gx#core-library-package-plist__0 _dir88101_))
                        _g89842_))
                ((##fx= _g89841_ 2)
                 (apply (lambda (_dir88105_ _exists?88106_)
                          (gx#core-library-package-plist__%
                           _dir88105_
                           _exists?88106_))
                        _g89842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g89842_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e88074_ (gx#current-expander-module-library-package-cache)))
          (if _$e88074_
              (values _$e88074_)
              (let ((_cache88077_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache88077_)
                _cache88077_)))))
    (define gx#core-library-module-path?
      (lambda (_stx88071_) (gx#core-special-module-path? _stx88071_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx88069_) (gx#core-special-module-path? _stx88069_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx88064_ _char88065_)
        (if (gx#identifier? _stx88064_)
            (if (interned-symbol? (gx#stx-e _stx88064_))
                (let ((_str88067_ (symbol->string (gx#stx-e _stx88064_))))
                  (if (fx> (string-length _str88067_) '1)
                      (eq? (string-ref _str88067_ '0) _char88065_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx88058_)
        (gx#core-bound-identifier?__%
         _stx88058_
         (lambda (_g8805988061_)
           (gx#expander-binding?__% _g8805988061_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx88052_)
        (gx#core-bound-identifier?__%
         _stx88052_
         (lambda (_g8805388055_)
           (gx#expander-binding?__% _g8805388055_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx88039_)
        (letrec ((_module-prelude?88041_
                  (lambda (_e88047_)
                    (let ((_$e88049_
                           (##structure-instance-of?
                            _e88047_
                            'gx#module-context::t)))
                      (if _$e88049_
                          _$e88049_
                          (##structure-instance-of?
                           _e88047_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx88039_
           (lambda (_g8804288044_)
             (gx#expander-binding?__%
              _g8804288044_
              _module-prelude?88041_))))))
    (define gx#core-bind-import!__%
      (lambda (_in87969_ _ctx87970_ _force-weak?87971_)
        (let* ((_in8797287981_ _in87969_)
               (_E8797487985_
                (lambda () (error '"No clause matching" _in8797287981_)))
               (_K8797587998_
                (lambda (_weak?87988_ _phi87989_ _key87990_ _source87991_)
                  (gx#core-bind!__%
                   _key87990_
                   (let ((_e87993_
                          (gx#core-resolve-module-export _source87991_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e87993_ '1 gx#binding::t '#f)
                      _key87990_
                      _phi87989_
                      _e87993_
                      (##unchecked-structure-ref
                       _source87991_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e87995_ _force-weak?87971_))
                        (if _$e87995_ _$e87995_ _weak?87988_))))
                   gx#core-context-rebind?
                   _phi87989_
                   _ctx87970_))))
          (if (##structure-direct-instance-of?
               _in8797287981_
               'gx#module-import::t)
              (let* ((_e8797688001_
                      (##unchecked-structure-ref
                       _in8797287981_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source88004_ _e8797688001_)
                     (_e8797788006_
                      (##unchecked-structure-ref
                       _in8797287981_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key88009_ _e8797788006_)
                     (_e8797888011_
                      (##unchecked-structure-ref
                       _in8797287981_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi88014_ _e8797888011_)
                     (_e8797988016_
                      (##unchecked-structure-ref
                       _in8797287981_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?88019_ _e8797988016_))
                (_K8797587998_
                 _weak?88019_
                 _phi88014_
                 _key88009_
                 _source88004_))
              (_E8797487985_)))))
    (define gx#core-bind-import!__0
      (lambda (_in88024_)
        (let* ((_ctx88026_ (gx#current-expander-context))
               (_force-weak?88028_ '#f))
          (gx#core-bind-import!__% _in88024_ _ctx88026_ _force-weak?88028_))))
    (define gx#core-bind-import!__1
      (lambda (_in88030_ _ctx88031_)
        (let ((_force-weak?88033_ '#f))
          (gx#core-bind-import!__% _in88030_ _ctx88031_ _force-weak?88033_))))
    (define gx#core-bind-import!
      (lambda _g89844_
        (let ((_g89843_ (##length _g89844_)))
          (cond ((##fx= _g89843_ 1)
                 (apply (lambda (_in88024_)
                          (gx#core-bind-import!__0 _in88024_))
                        _g89844_))
                ((##fx= _g89843_ 2)
                 (apply (lambda (_in88030_ _ctx88031_)
                          (gx#core-bind-import!__1 _in88030_ _ctx88031_))
                        _g89844_))
                ((##fx= _g89843_ 3)
                 (apply (lambda (_in88035_ _ctx88036_ _force-weak?88037_)
                          (gx#core-bind-import!__%
                           _in88035_
                           _ctx88036_
                           _force-weak?88037_))
                        _g89844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g89844_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in87955_ _ctx87956_)
        (gx#core-bind-import!__% _in87955_ _ctx87956_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in87961_)
        (let ((_ctx87963_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in87961_ _ctx87963_))))
    (define gx#core-bind-weak-import!
      (lambda _g89846_
        (let ((_g89845_ (##length _g89846_)))
          (cond ((##fx= _g89845_ 1)
                 (apply (lambda (_in87961_)
                          (gx#core-bind-weak-import!__0 _in87961_))
                        _g89846_))
                ((##fx= _g89845_ 2)
                 (apply (lambda (_in87965_ _ctx87966_)
                          (gx#core-bind-weak-import!__% _in87965_ _ctx87966_))
                        _g89846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g89846_))))))
    (define gx#core-resolve-module-export
      (lambda (_out87846_)
        (letrec ((_subst87848_
                  (lambda (_key87894_)
                    (let* ((_key8789587903_ _key87894_)
                           (_else8789787911_ (lambda () _key87894_))
                           (_K8789987942_
                            (lambda (_mark87914_ _id87915_)
                              (let* ((_mark8791687922_ _mark87914_)
                                     (_E8791887926_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8791687922_)))
                                     (_K8791987934_
                                      (lambda (_subst87929_)
                                        (let ((_$e87931_
                                               (if _subst87929_
                                                   (hash-get
                                                    _subst87929_
                                                    _id87915_)
                                                   '#f)))
                                          (if _$e87931_
                                              _$e87931_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key87894_))))))
                                (if (##structure-instance-of?
                                     _mark8791687922_
                                     'gx#expander-mark::t)
                                    (let* ((_e8792087937_
                                            (##unchecked-structure-ref
                                             _mark8791687922_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst87940_ _e8792087937_))
                                      (_K8791987934_ _subst87940_))
                                    (_E8791887926_))))))
                      (if (##pair? _key8789587903_)
                          (let ((_hd8790087945_ (##car _key8789587903_))
                                (_tl8790187947_ (##cdr _key8789587903_)))
                            (let* ((_id87950_ _hd8790087945_)
                                   (_mark87952_ _tl8790187947_))
                              (_K8789987942_ _mark87952_ _id87950_)))
                          (_else8789787911_))))))
          (let* ((_out8784987859_ _out87846_)
                 (_E8785187863_
                  (lambda () (error '"No clause matching" _out8784987859_)))
                 (_K8785287870_
                  (lambda (_phi87866_ _key87867_ _ctx87868_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx87868_ _phi87866_)
                     (_subst87848_ _key87867_)))))
            (if (##structure-direct-instance-of?
                 _out8784987859_
                 'gx#module-export::t)
                (let* ((_e8785387873_
                        (##unchecked-structure-ref
                         _out8784987859_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx87876_ _e8785387873_)
                       (_e8785487878_
                        (##unchecked-structure-ref
                         _out8784987859_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key87881_ _e8785487878_)
                       (_e8785587883_
                        (##unchecked-structure-ref
                         _out8784987859_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi87886_ _e8785587883_)
                       (_e8785687888_
                        (##unchecked-structure-ref
                         _out8784987859_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e8785787891_
                        (##unchecked-structure-ref
                         _out8784987859_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K8785287870_ _phi87886_ _key87881_ _ctx87876_))
                (_E8785187863_))))))
    (define gx#core-module-export->import__%
      (lambda (_out87771_ _rename87772_ _dphi87773_)
        (let* ((_out8777487784_ _out87771_)
               (_E8777687788_
                (lambda () (error '"No clause matching" _out8777487784_)))
               (_K8777787800_
                (lambda (_weak?87791_
                         _name87792_
                         _phi87793_
                         _key87794_
                         _ctx87795_)
                  (##structure
                   gx#module-import::t
                   _out87771_
                   (let ((_$e87797_ _rename87772_))
                     (if _$e87797_ _$e87797_ _name87792_))
                   (fx+ _phi87793_ _dphi87773_)
                   _weak?87791_))))
          (if (##structure-direct-instance-of?
               _out8777487784_
               'gx#module-export::t)
              (let* ((_e8777887803_
                      (##unchecked-structure-ref
                       _out8777487784_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx87806_ _e8777887803_)
                     (_e8777987808_
                      (##unchecked-structure-ref
                       _out8777487784_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key87811_ _e8777987808_)
                     (_e8778087813_
                      (##unchecked-structure-ref
                       _out8777487784_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi87816_ _e8778087813_)
                     (_e8778187818_
                      (##unchecked-structure-ref
                       _out8777487784_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name87821_ _e8778187818_)
                     (_e8778287823_
                      (##unchecked-structure-ref
                       _out8777487784_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?87826_ _e8778287823_))
                (_K8777787800_
                 _weak?87826_
                 _name87821_
                 _phi87816_
                 _key87811_
                 _ctx87806_))
              (_E8777687788_)))))
    (define gx#core-module-export->import__0
      (lambda (_out87831_)
        (let* ((_rename87833_ '#f) (_dphi87835_ '0))
          (gx#core-module-export->import__%
           _out87831_
           _rename87833_
           _dphi87835_))))
    (define gx#core-module-export->import__1
      (lambda (_out87837_ _rename87838_)
        (let ((_dphi87840_ '0))
          (gx#core-module-export->import__%
           _out87837_
           _rename87838_
           _dphi87840_))))
    (define gx#core-module-export->import
      (lambda _g89848_
        (let ((_g89847_ (##length _g89848_)))
          (cond ((##fx= _g89847_ 1)
                 (apply (lambda (_out87831_)
                          (gx#core-module-export->import__0 _out87831_))
                        _g89848_))
                ((##fx= _g89847_ 2)
                 (apply (lambda (_out87837_ _rename87838_)
                          (gx#core-module-export->import__1
                           _out87837_
                           _rename87838_))
                        _g89848_))
                ((##fx= _g89847_ 3)
                 (apply (lambda (_out87842_ _rename87843_ _dphi87844_)
                          (gx#core-module-export->import__%
                           _out87842_
                           _rename87843_
                           _dphi87844_))
                        _g89848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g89848_))))))
    (define gx#core-expand-module%
      (lambda (_stx87699_)
        (letrec ((_make-context87701_
                  (lambda (_id87752_)
                    (let* ((_super87754_ (gx#current-expander-context))
                           (_bind-id87756_ (gx#stx-e _id87752_))
                           (_mod-id87758_
                            (if (##structure-instance-of?
                                 _super87754_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super87754_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id87756_)
                                _bind-id87756_))
                           (_ns87760_ (symbol->string _mod-id87758_))
                           (_path87767_
                            (if (##structure-instance-of?
                                 _super87754_
                                 'gx#module-context::t)
                                (let ((_path87762_
                                       (##unchecked-structure-ref
                                        _super87754_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path87762_)
                                          (null? _path87762_))
                                      (cons _bind-id87756_ _path87762_)
                                      (if (not _path87762_)
                                          _bind-id87756_
                                          (cons _bind-id87756_
                                                (cons _path87762_ '())))))
                                _bind-id87756_)))
                      (let ((__obj89824
                             (##structure
                              gx#module-context::t
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f)))
                        (gx#module-context:::init!
                         __obj89824
                         _mod-id87758_
                         _super87754_
                         _ns87760_
                         _path87767_)
                        __obj89824)))))
          (let* ((_e8770287712_ _stx87699_)
                 (_E8770487716_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8770287712_)))
                 (_E8770387748_
                  (lambda ()
                    (if (gx#stx-pair? _e8770287712_)
                        (let ((_e8770587720_ (gx#syntax-e _e8770287712_)))
                          (let ((_hd8770687723_ (##car _e8770587720_))
                                (_tl8770787725_ (##cdr _e8770587720_)))
                            (if (gx#stx-pair? _tl8770787725_)
                                (let ((_e8770887728_
                                       (gx#syntax-e _tl8770787725_)))
                                  (let ((_hd8770987731_ (##car _e8770887728_))
                                        (_tl8771087733_ (##cdr _e8770887728_)))
                                    (let* ((_id87736_ _hd8770987731_)
                                           (_body87738_ _tl8771087733_))
                                      (if (and (gx#identifier? _id87736_)
                                               (gx#stx-list? _body87738_))
                                          (let* ((_ctx87740_
                                                  (_make-context87701_
                                                   _id87736_))
                                                 (_body87742_
                                                  (gx#core-expand-module-begin
                                                   _body87738_
                                                   _ctx87740_))
                                                 (_body87744_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body87742_)
                                                   (gx#stx-source
                                                    _stx87699_))))
                                            (##unchecked-structure-set!
                                             _ctx87740_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body87744_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx87740_
                                             _body87744_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id87736_
                                             _ctx87740_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id87736_)
                                              _body87744_)
                                             (gx#stx-source _stx87699_)))
                                          (_E8770487716_)))))
                                (_E8770487716_))))
                        (_E8770487716_)))))
            (_E8770387748_)))))
    (define gx#core-expand-module-begin
      (lambda (_body87665_ _ctx87666_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx87669_
                   (gx#core-expand-head (cons '%%begin-module _body87665_)))
                  (_e8767087677_ _stx87669_)
                  (_E8767287681_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx87669_)))
                  (_E8767187695_
                   (lambda ()
                     (if (gx#stx-pair? _e8767087677_)
                         (let ((_e8767387685_ (gx#syntax-e _e8767087677_)))
                           (let ((_hd8767487688_ (##car _e8767387685_))
                                 (_tl8767587690_ (##cdr _e8767387685_)))
                             (if (and (gx#identifier? _hd8767487688_)
                                      (gx#core-identifier=?
                                       _hd8767487688_
                                       '%#begin-module))
                                 (let ((_body87693_ _tl8767587690_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx87669_)
                                           _body87693_
                                           (gx#core-expand-module-body
                                            _body87693_))
                                       (_E8767287681_)))
                                 (_E8767287681_))))
                         (_E8767287681_)))))
             (_E8767187695_)))
         gx#current-expander-context
         _ctx87666_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body87461_)
        (letrec ((_expand-special87463_
                  (lambda (_hd87592_ _K87593_ _rest87594_ _r87595_)
                    (let* ((_e8759687613_ _hd87592_)
                           (_E8760887617_
                            (lambda ()
                              (_K87593_
                               _rest87594_
                               (cons (gx#core-expand-top _hd87592_)
                                     _r87595_))))
                           (_E8759887629_
                            (lambda ()
                              (if (gx#stx-pair? _e8759687613_)
                                  (let ((_e8760987621_
                                         (gx#syntax-e _e8759687613_)))
                                    (let ((_hd8761087624_
                                           (##car _e8760987621_))
                                          (_tl8761187626_
                                           (##cdr _e8760987621_)))
                                      (if (and (gx#identifier? _hd8761087624_)
                                               (gx#core-identifier=?
                                                _hd8761087624_
                                                '%#export))
                                          (if '#t
                                              (_K87593_
                                               _rest87594_
                                               (cons _hd87592_ _r87595_))
                                              (_E8760887617_))
                                          (_E8760887617_))))
                                  (_E8760887617_))))
                           (_E8759787661_
                            (lambda ()
                              (if (gx#stx-pair? _e8759687613_)
                                  (let ((_e8759987633_
                                         (gx#syntax-e _e8759687613_)))
                                    (let ((_hd8760087636_
                                           (##car _e8759987633_))
                                          (_tl8760187638_
                                           (##cdr _e8759987633_)))
                                      (if (and (gx#identifier? _hd8760087636_)
                                               (gx#core-identifier=?
                                                _hd8760087636_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8760187638_)
                                              (let ((_e8760287641_
                                                     (gx#syntax-e
                                                      _tl8760187638_)))
                                                (let ((_hd8760387644_
                                                       (##car _e8760287641_))
                                                      (_tl8760487646_
                                                       (##cdr _e8760287641_)))
                                                  (let ((_hd-bind87649_
                                                         _hd8760387644_))
                                                    (if (gx#stx-pair?
                                                         _tl8760487646_)
                                                        (let ((_e8760587651_
                                                               (gx#syntax-e
                                                                _tl8760487646_)))
                                                          (let ((_hd8760687654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8760587651_))
                        (_tl8760787656_ (##cdr _e8760587651_)))
                    (let ((_expr87659_ _hd8760687654_))
                      (if (gx#stx-null? _tl8760787656_)
                          (if (gx#core-bind-values? _hd-bind87649_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind87649_)
                                (_K87593_
                                 _rest87594_
                                 (cons _hd87592_ _r87595_)))
                              (_E8759887629_))
                          (_E8759887629_)))))
                (_E8759887629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8759887629_))
                                          (_E8759887629_))))
                                  (_E8759887629_)))))
                      (_E8759787661_))))
                 (_expand-body87464_
                  (lambda (_rbody87466_)
                    (let _lp87468_ ((_rest87470_ _rbody87466_)
                                    (_body87471_ '()))
                      (let* ((_rest8747287480_ _rest87470_)
                             (_else8747487488_ (lambda () _body87471_))
                             (_K8747687580_
                              (lambda (_rest87491_ _hd87492_)
                                (let* ((_e8749387514_ _hd87492_)
                                       (_E8750987518_
                                        (lambda ()
                                          (_lp87468_
                                           _rest87491_
                                           (cons (gx#core-expand-expression
                                                  _hd87492_)
                                                 _body87471_))))
                                       (_E8750587532_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8749387514_)
                                              (let ((_e8751087522_
                                                     (gx#syntax-e
                                                      _e8749387514_)))
                                                (let ((_hd8751187525_
                                                       (##car _e8751087522_))
                                                      (_tl8751287527_
                                                       (##cdr _e8751087522_)))
                                                  (let ((_form87530_
                                                         _hd8751187525_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form87530_
                                                         gx#special-form-binding?)
                                                        (_lp87468_
                                                         _rest87491_
                                                         (cons _hd87492_
                                                               _body87471_))
                                                        (_E8750987518_)))))
                                              (_E8750987518_))))
                                       (_E8749587544_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8749387514_)
                                              (let ((_e8750687536_
                                                     (gx#syntax-e
                                                      _e8749387514_)))
                                                (let ((_hd8750787539_
                                                       (##car _e8750687536_))
                                                      (_tl8750887541_
                                                       (##cdr _e8750687536_)))
                                                  (if (and (gx#identifier?
                                                            _hd8750787539_)
                                                           (gx#core-identifier=?
                                                            _hd8750787539_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp87468_
                                                           _rest87491_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd87492_)
                         _body87471_))
                  (_E8750587532_))
              (_E8750587532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8750587532_))))
                                       (_E8749487576_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8749387514_)
                                              (let ((_e8749687548_
                                                     (gx#syntax-e
                                                      _e8749387514_)))
                                                (let ((_hd8749787551_
                                                       (##car _e8749687548_))
                                                      (_tl8749887553_
                                                       (##cdr _e8749687548_)))
                                                  (if (and (gx#identifier?
                                                            _hd8749787551_)
                                                           (gx#core-identifier=?
                                                            _hd8749787551_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8749887553_)
                                                          (let ((_e8749987556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8749887553_)))
                    (let ((_hd8750087559_ (##car _e8749987556_))
                          (_tl8750187561_ (##cdr _e8749987556_)))
                      (let ((_hd-bind87564_ _hd8750087559_))
                        (if (gx#stx-pair? _tl8750187561_)
                            (let ((_e8750287566_ (gx#syntax-e _tl8750187561_)))
                              (let ((_hd8750387569_ (##car _e8750287566_))
                                    (_tl8750487571_ (##cdr _e8750287566_)))
                                (let ((_expr87574_ _hd8750387569_))
                                  (if (gx#stx-null? _tl8750487571_)
                                      (if '#t
                                          (_lp87468_
                                           _rest87491_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind87564_)
                                                   (gx#core-expand-expression
                                                    _expr87574_))
                                                  (gx#stx-source _hd87492_))
                                                 _body87471_))
                                          (_E8749587544_))
                                      (_E8749587544_)))))
                            (_E8749587544_)))))
                  (_E8749587544_))
              (_E8749587544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8749587544_)))))
                                  (_E8749487576_)))))
                        (if (##pair? _rest8747287480_)
                            (let ((_hd8747787583_ (##car _rest8747287480_))
                                  (_tl8747887585_ (##cdr _rest8747287480_)))
                              (let* ((_hd87588_ _hd8747787583_)
                                     (_rest87590_ _tl8747887585_))
                                (_K8747687580_ _rest87590_ _hd87588_)))
                            (_else8747487488_)))))))
          (_expand-body87464_
           (gx#core-expand-block__%
            (cons '%#begin-module _body87461_)
            _expand-special87463_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx87304_
               _expanded?87305_
               _method87306_
               _current-phi87307_
               _expand187308_)
        (letrec ((_K87310_
                  (lambda (_rest87428_ _r87429_)
                    (let* ((_e8743087437_ _rest87428_)
                           (_E8743287441_ (lambda () _r87429_))
                           (_E8743187457_
                            (lambda ()
                              (if (gx#stx-pair? _e8743087437_)
                                  (let ((_e8743387445_
                                         (gx#syntax-e _e8743087437_)))
                                    (let ((_hd8743487448_
                                           (##car _e8743387445_))
                                          (_tl8743587450_
                                           (##cdr _e8743387445_)))
                                      (let* ((_hd87453_ _hd8743487448_)
                                             (_rest87455_ _tl8743587450_))
                                        (if '#t
                                            (_step87311_
                                             _hd87453_
                                             _rest87455_
                                             _r87429_)
                                            (_E8743287441_)))))
                                  (_E8743287441_)))))
                      (_E8743187457_))))
                 (_step87311_
                  (lambda (_hd87342_ _rest87343_ _r87344_)
                    (let* ((_e8734587363_ _hd87342_)
                           (_E8735887367_
                            (lambda ()
                              (if (_expanded?87305_ (gx#stx-e _hd87342_))
                                  (_K87310_
                                   _rest87343_
                                   (cons (gx#stx-e _hd87342_) _r87344_))
                                  (_expand187308_
                                   _hd87342_
                                   _K87310_
                                   _rest87343_
                                   _r87344_))))
                           (_E8735487383_
                            (lambda ()
                              (if (gx#stx-pair? _e8734587363_)
                                  (let ((_e8735987371_
                                         (gx#syntax-e _e8734587363_)))
                                    (let ((_hd8736087374_
                                           (##car _e8735987371_))
                                          (_tl8736187376_
                                           (##cdr _e8735987371_)))
                                      (let* ((_macro87379_ _hd8736087374_)
                                             (_body87381_ _tl8736187376_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro87379_
                                             gx#syntax-binding?)
                                            (_K87310_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro87379_)
                                                    _hd87342_
                                                    _method87306_)
                                                   _rest87343_)
                                             _r87344_)
                                            (_E8735887367_)))))
                                  (_E8735887367_))))
                           (_E8734787397_
                            (lambda ()
                              (if (gx#stx-pair? _e8734587363_)
                                  (let ((_e8735587387_
                                         (gx#syntax-e _e8734587363_)))
                                    (let ((_hd8735687390_
                                           (##car _e8735587387_))
                                          (_tl8735787392_
                                           (##cdr _e8735587387_)))
                                      (if (eq? (gx#stx-e _hd8735687390_)
                                               'begin:)
                                          (let ((_body87395_ _tl8735787392_))
                                            (if '#t
                                                (_K87310_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest87343_
                                                  _body87395_)
                                                 _r87344_)
                                                (_E8735487383_)))
                                          (_E8735487383_))))
                                  (_E8735487383_))))
                           (_E8734687424_
                            (lambda ()
                              (if (gx#stx-pair? _e8734587363_)
                                  (let ((_e8734887401_
                                         (gx#syntax-e _e8734587363_)))
                                    (let ((_hd8734987404_
                                           (##car _e8734887401_))
                                          (_tl8735087406_
                                           (##cdr _e8734887401_)))
                                      (if (eq? (gx#stx-e _hd8734987404_) 'phi:)
                                          (if (gx#stx-pair? _tl8735087406_)
                                              (let ((_e8735187409_
                                                     (gx#syntax-e
                                                      _tl8735087406_)))
                                                (let ((_hd8735287412_
                                                       (##car _e8735187409_))
                                                      (_tl8735387414_
                                                       (##cdr _e8735187409_)))
                                                  (let* ((_dphi87417_
                                                          _hd8735287412_)
                                                         (_body87419_
                                                          _tl8735387414_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi87417_)
                                                        (let ((_rbody87422_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K87310_ _body87419_ '()))
                        _current-phi87307_
                        (fx+ (gx#stx-e _dphi87417_) (_current-phi87307_)))))
                  (_K87310_ _rest87343_ (foldr1 cons _r87344_ _rbody87422_)))
                (_E8734787397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8734787397_))
                                          (_E8734787397_))))
                                  (_E8734787397_)))))
                      (_E8734687424_)))))
          (let* ((_e8731287319_ _stx87304_)
                 (_E8731487323_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8731287319_)))
                 (_E8731387338_
                  (lambda ()
                    (if (gx#stx-pair? _e8731287319_)
                        (let ((_e8731587327_ (gx#syntax-e _e8731287319_)))
                          (let ((_hd8731687330_ (##car _e8731587327_))
                                (_tl8731787332_ (##cdr _e8731587327_)))
                            (let ((_body87335_ _tl8731787332_))
                              (if '#t
                                  (if (_current-phi87307_)
                                      (_K87310_ _body87335_ '())
                                      (call-with-parameters
                                       (lambda () (_K87310_ _body87335_ '()))
                                       _current-phi87307_
                                       (gx#current-expander-phi)))
                                  (_E8731487323_)))))
                        (_E8731487323_)))))
            (_E8731387338_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx86971_ _internal-expand?86972_)
        (letrec ((_expand186974_
                  (lambda (_hd87284_ _K87285_ _rest87286_ _r87287_)
                    (if (gx#core-bound-module? _hd87284_)
                        (_import186975_
                         (gx#syntax-local-e__0 _hd87284_)
                         _K87285_
                         _rest87286_
                         _r87287_)
                        (if (gx#core-library-module-path? _hd87284_)
                            (_import186975_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd87284_))
                             _K87285_
                             _rest87286_
                             _r87287_)
                            (if (gx#core-library-relative-module-path?
                                 _hd87284_)
                                (_import186975_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd87284_))
                                 _K87285_
                                 _rest87286_
                                 _r87287_)
                                (let ((_e87289_ (gx#stx-e _hd87284_)))
                                  (if (pair? _e87289_)
                                      (let ((_$e87291_
                                             (gx#stx-e (car _e87289_))))
                                        (if (eq? 'spec: _$e87291_)
                                            (_import-spec86978_
                                             _hd87284_
                                             _K87285_
                                             _rest87286_
                                             _r87287_)
                                            (if (eq? 'in: _$e87291_)
                                                (_import-submodule86976_
                                                 _hd87284_
                                                 _K87285_
                                                 _rest87286_
                                                 _r87287_)
                                                (if (eq? 'runtime: _$e87291_)
                                                    (_import-runtime86977_
                                                     _hd87284_
                                                     _K87285_
                                                     _rest87286_
                                                     _r87287_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx86971_
                                                     _hd87284_)))))
                                      (if (string? _e87289_)
                                          (_import186975_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd87284_
                                             (gx#stx-source _stx86971_)))
                                           _K87285_
                                           _rest87286_
                                           _r87287_)
                                          (if (##structure-instance-of?
                                               _e87289_
                                               'gx#module-context::t)
                                              (_K87285_
                                               _rest87286_
                                               (cons _e87289_ _r87287_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx86971_
                                               _hd87284_))))))))))
                 (_import186975_
                  (lambda (_ctx87273_ _K87274_ _rest87275_ _r87276_)
                    (let ((_dphi87278_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K87274_
                       _rest87275_
                       (cons (##structure
                              gx#import-set::t
                              _ctx87273_
                              _dphi87278_
                              (map (lambda (_g8727987281_)
                                     (gx#core-module-export->import__%
                                      _g8727987281_
                                      '#f
                                      _dphi87278_))
                                   (##unchecked-structure-ref
                                    _ctx87273_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r87276_)))))
                 (_import-submodule86976_
                  (lambda (_hd87240_ _K87241_ _rest87242_ _r87243_)
                    (let* ((_e8724487251_ _hd87240_)
                           (_E8724687255_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8724487251_)))
                           (_E8724587269_
                            (lambda ()
                              (if (gx#stx-pair? _e8724487251_)
                                  (let ((_e8724787259_
                                         (gx#syntax-e _e8724487251_)))
                                    (let ((_hd8724887262_
                                           (##car _e8724787259_))
                                          (_tl8724987264_
                                           (##cdr _e8724787259_)))
                                      (let ((_spath87267_ _tl8724987264_))
                                        (if '#t
                                            (_import186975_
                                             (_import-spec-source86979_
                                              _spath87267_)
                                             _K87241_
                                             _rest87242_
                                             _r87243_)
                                            (_E8724687255_)))))
                                  (_E8724687255_)))))
                      (_E8724587269_))))
                 (_import-runtime86977_
                  (lambda (_hd87207_ _K87208_ _rest87209_ _r87210_)
                    (let* ((_e8721187218_ _hd87207_)
                           (_E8721387222_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8721187218_)))
                           (_E8721287236_
                            (lambda ()
                              (if (gx#stx-pair? _e8721187218_)
                                  (let ((_e8721487226_
                                         (gx#syntax-e _e8721187218_)))
                                    (let ((_hd8721587229_
                                           (##car _e8721487226_))
                                          (_tl8721687231_
                                           (##cdr _e8721487226_)))
                                      (let ((_spath87234_ _tl8721687231_))
                                        (if '#t
                                            (_K87208_
                                             _rest87209_
                                             (cons (_import-spec-source86979_
                                                    _spath87234_)
                                                   _r87210_))
                                            (_E8721387222_)))))
                                  (_E8721387222_)))))
                      (_E8721287236_))))
                 (_import-spec86978_
                  (lambda (_hd87046_ _K87047_ _rest87048_ _r87049_)
                    (let* ((_e8705087067_ _hd87046_)
                           (_E8705987071_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8705087067_)))
                           (_E8705287181_
                            (lambda ()
                              (if (gx#stx-pair? _e8705087067_)
                                  (let ((_e8706087075_
                                         (gx#syntax-e _e8705087067_)))
                                    (let ((_hd8706187078_
                                           (##car _e8706087075_))
                                          (_tl8706287080_
                                           (##cdr _e8706087075_)))
                                      (if (gx#stx-pair? _tl8706287080_)
                                          (let ((_e8706387083_
                                                 (gx#syntax-e _tl8706287080_)))
                                            (let ((_hd8706487086_
                                                   (##car _e8706387083_))
                                                  (_tl8706587088_
                                                   (##cdr _e8706387083_)))
                                              (let* ((_path87091_
                                                      _hd8706487086_)
                                                     (_specs87093_
                                                      _tl8706587088_))
                                                (if '#t
                                                    (let ((_src-ctx87095_
                                                           (_import-spec-source86979_
                                                            _path87091_))
                                                          (_exports87096_
                                                           (make-hash-table))
                                                          (_specs87097_
                                                           (gx#syntax->list
                                                            _specs87093_)))
                                                      (for-each
                                                       (lambda (_out87099_)
                                                         (hash-put!
                                                          _exports87096_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out87099_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out87099_
                         '4
                         gx#module-export::t
                         '#f))
                  _out87099_))
               (##unchecked-structure-ref
                _src-ctx87095_
                '9
                gx#module-context::t
                '#f))
              (_K87047_
               _rest87048_
               (foldl1 (lambda (_spec87101_ _r87102_)
                         (let* ((_e8710387119_ _spec87101_)
                                (_E8710587123_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8710387119_)))
                                (_E8710487177_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8710387119_)
                                       (let ((_e8710687127_
                                              (gx#syntax-e _e8710387119_)))
                                         (let ((_hd8710787130_
                                                (##car _e8710687127_))
                                               (_tl8710887132_
                                                (##cdr _e8710687127_)))
                                           (let ((_phi87135_ _hd8710787130_))
                                             (if (gx#stx-pair? _tl8710887132_)
                                                 (let ((_e8710987137_
                                                        (gx#syntax-e
                                                         _tl8710887132_)))
                                                   (let ((_hd8711087140_
                                                          (##car _e8710987137_))
                                                         (_tl8711187142_
                                                          (##cdr _e8710987137_)))
                                                     (let ((_name87145_
                                                            _hd8711087140_))
                                                       (if (gx#stx-pair?
                                                            _tl8711187142_)
                                                           (let ((_e8711287147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8711187142_)))
                     (let ((_hd8711387150_ (##car _e8711287147_))
                           (_tl8711487152_ (##cdr _e8711287147_)))
                       (let ((_src-phi87155_ _hd8711387150_))
                         (if (gx#stx-pair? _tl8711487152_)
                             (let ((_e8711587157_
                                    (gx#syntax-e _tl8711487152_)))
                               (let ((_hd8711687160_ (##car _e8711587157_))
                                     (_tl8711787162_ (##cdr _e8711587157_)))
                                 (let ((_src-name87165_ _hd8711687160_))
                                   (if (gx#stx-null? _tl8711787162_)
                                       (if (and (gx#stx-fixnum? _src-phi87155_)
                                                (gx#identifier?
                                                 _src-name87165_)
                                                (gx#stx-fixnum? _phi87135_)
                                                (gx#identifier? _name87145_))
                                           (let ((_src-phi87167_
                                                  (gx#stx-e _src-phi87155_))
                                                 (_src-name87168_
                                                  (gx#core-identifier-key
                                                   _src-name87165_))
                                                 (_phi87169_
                                                  (gx#stx-e _phi87135_))
                                                 (_name87170_
                                                  (gx#core-identifier-key
                                                   _name87145_)))
                                             (let ((_$e87172_
                                                    (hash-get
                                                     _exports87096_
                                                     (cons _src-phi87167_
                                                           _src-name87168_))))
                                               (if _$e87172_
                                                   ((lambda (_out87175_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out87175_
                                                             _name87170_
                                                             (fx- _phi87169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi87167_))
                    _r87102_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e87172_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx86971_
                                                    _hd87046_))))
                                           (_E8710587123_))
                                       (_E8710587123_)))))
                             (_E8710587123_)))))
                   (_E8710587123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8710587123_)))))
                                       (_E8710587123_)))))
                           (_E8710487177_)))
                       _r87049_
                       _specs87097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8705987071_)))))
                                          (_E8705987071_))))
                                  (_E8705987071_))))
                           (_E8705187203_
                            (lambda ()
                              (if (gx#stx-pair? _e8705087067_)
                                  (let ((_e8705387185_
                                         (gx#syntax-e _e8705087067_)))
                                    (let ((_hd8705487188_
                                           (##car _e8705387185_))
                                          (_tl8705587190_
                                           (##cdr _e8705387185_)))
                                      (if (gx#stx-pair? _tl8705587190_)
                                          (let ((_e8705687193_
                                                 (gx#syntax-e _tl8705587190_)))
                                            (let ((_hd8705787196_
                                                   (##car _e8705687193_))
                                                  (_tl8705887198_
                                                   (##cdr _e8705687193_)))
                                              (let ((_path87201_
                                                     _hd8705787196_))
                                                (if (gx#stx-null?
                                                     _tl8705887198_)
                                                    (if '#t
                                                        (_K87047_
                                                         _rest87048_
                                                         (cons (_import-spec-source86979_
                                                                _path87201_)
                                                               _r87049_))
                                                        (_E8705287181_))
                                                    (_E8705287181_)))))
                                          (_E8705287181_))))
                                  (_E8705287181_)))))
                      (_E8705187203_))))
                 (_import-spec-source86979_
                  (lambda (_spath87044_)
                    (gx#core-import-nested-module _spath87044_ _stx86971_)))
                 (_import!86980_
                  (lambda (_rbody86993_)
                    (letrec* ((_current-ctx86995_
                               (gx#current-expander-context))
                              (_deps86996_ (make-hash-table-eq))
                              (_bind!86997_
                               (lambda (_hd87042_)
                                 (gx#core-bind-import!__1
                                  _hd87042_
                                  _current-ctx86995_))))
                      (let _lp86999_ ((_rest87001_ _rbody86993_)
                                      (_body87002_ '()))
                        (let* ((_rest8700387011_ _rest87001_)
                               (_else8700587021_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx86995_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx86995_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx86995_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body87002_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx87019_ _g89849_)
                                     (gx#eval-module _ctx87019_))
                                   _deps86996_)
                                  _body87002_))
                               (_K8700787030_
                                (lambda (_rest87024_ _hd87025_)
                                  (if (##structure-direct-instance-of?
                                       _hd87025_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!86997_ _hd87025_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd87025_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd87025_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps86996_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd87025_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd87025_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!86997_
                                             (##unchecked-structure-ref
                                              _hd87025_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd87025_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps86996_
                                                 (##unchecked-structure-ref
                                                  _hd87025_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e87027_
                                                 (##structure-instance-of?
                                                  _hd87025_
                                                  'gx#module-context::t)))
                                            (if _$e87027_
                                                _$e87027_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx86971_
                                                 _hd87025_)))))
                                  (_lp86999_
                                   _rest87024_
                                   (cons _hd87025_ _body87002_)))))
                          (if (##pair? _rest8700387011_)
                              (let ((_hd8700887033_ (##car _rest8700387011_))
                                    (_tl8700987035_ (##cdr _rest8700387011_)))
                                (let* ((_hd87038_ _hd8700887033_)
                                       (_rest87040_ _tl8700987035_))
                                  (_K8700787030_ _rest87040_ _hd87038_)))
                              (_else8700587021_)))))))
                 (_expanded-import?86981_
                  (lambda (_e86985_)
                    (let ((_$e86987_
                           (##structure-direct-instance-of?
                            _e86985_
                            'gx#import-set::t)))
                      (if _$e86987_
                          _$e86987_
                          (let ((_$e86990_
                                 (##structure-direct-instance-of?
                                  _e86985_
                                  'gx#module-import::t)))
                            (if _$e86990_
                                _$e86990_
                                (##structure-instance-of?
                                 _e86985_
                                 'gx#module-context::t))))))))
          (let ((_rbody86983_
                 (gx#core-expand-import/export
                  _stx86971_
                  _expanded-import?86981_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand186974_)))
            (if _internal-expand?86972_
                (reverse _rbody86983_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!86980_ _rbody86983_))
                 (gx#stx-source _stx86971_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx87297_)
        (let ((_internal-expand?87299_ '#f))
          (gx#core-expand-import%__% _stx87297_ _internal-expand?87299_))))
    (define gx#core-expand-import%
      (lambda _g89851_
        (let ((_g89850_ (##length _g89851_)))
          (cond ((##fx= _g89850_ 1)
                 (apply (lambda (_stx87297_)
                          (gx#core-expand-import%__0 _stx87297_))
                        _g89851_))
                ((##fx= _g89850_ 2)
                 (apply (lambda (_stx87301_ _internal-expand?87302_)
                          (gx#core-expand-import%__%
                           _stx87301_
                           _internal-expand?87302_))
                        _g89851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g89851_))))))
    (define gx#core-import-nested-module
      (lambda (_spath86898_ _where86899_)
        (let* ((_e8690086907_ _spath86898_)
               (_E8690286911_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8690086907_)))
               (_E8690186966_
                (lambda ()
                  (if (gx#stx-pair? _e8690086907_)
                      (let ((_e8690386915_ (gx#syntax-e _e8690086907_)))
                        (let ((_hd8690486918_ (##car _e8690386915_))
                              (_tl8690586920_ (##cdr _e8690386915_)))
                          (let* ((_origin86923_ _hd8690486918_)
                                 (_sub86925_ _tl8690586920_))
                            (if '#t
                                (let ((_origin-ctx86927_
                                       (if (gx#stx-false? _origin86923_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin86923_))))
                                  (let _lp86929_ ((_rest86931_ _sub86925_)
                                                  (_ctx86932_
                                                   _origin-ctx86927_))
                                    (let* ((_e8693386940_ _rest86931_)
                                           (_E8693586944_
                                            (lambda () _ctx86932_))
                                           (_E8693486962_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8693386940_)
                                                  (let ((_e8693686948_
                                                         (gx#syntax-e
                                                          _e8693386940_)))
                                                    (let ((_hd8693786951_
                                                           (##car _e8693686948_))
                                                          (_tl8693886953_
                                                           (##cdr _e8693686948_)))
                                                      (let* ((_id86956_
                                                              _hd8693786951_)
                                                             (_rest86958_
                                                              _tl8693886953_))
                                                        (if '#t
                                                            (let ((_bind86960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id86956_ '0 _ctx86932_)))
                      (if (and (##structure-direct-instance-of?
                                _bind86960_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind86960_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where86899_
                           _spath86898_
                           _id86956_))
                      (_lp86929_
                       _rest86958_
                       (##unchecked-structure-ref
                        _bind86960_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8693586944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8693586944_)))))
                                      (_E8693486962_))))
                                (_E8690286911_)))))
                      (_E8690286911_)))))
          (_E8690186966_))))
    (define gx#core-expand-import-source
      (lambda (_hd86896_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd86896_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx86404_ _internal-expand?86405_)
        (letrec* ((_make-export__8978089781_
                   (lambda (_bind86844_ _phi86845_ _ctx86846_ _name86847_)
                     (let* ((_key86849_
                             (##unchecked-structure-ref
                              _bind86844_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key86851_
                             (if _name86847_
                                 (gx#core-identifier-key _name86847_)
                                 _key86849_)))
                       (##structure
                        gx#module-export::t
                        _ctx86846_
                        _key86849_
                        _phi86845_
                        _export-key86851_
                        (let ((_$e86854_
                               (##structure-instance-of?
                                _bind86844_
                                'gx#extern-binding::t)))
                          (if _$e86854_
                              _$e86854_
                              (##structure-direct-instance-of?
                               _bind86844_
                               'gx#import-binding::t)))))))
                  (_make-export__0__8978289785_
                   (lambda (_bind86860_)
                     (let* ((_phi86862_ (gx#current-export-expander-phi))
                            (_ctx86864_ (gx#current-expander-context))
                            (_name86866_ '#f))
                       (_make-export__8978089781_
                        _bind86860_
                        _phi86862_
                        _ctx86864_
                        _name86866_))))
                  (_make-export__1__8978389786_
                   (lambda (_bind86868_ _phi86869_)
                     (let* ((_ctx86871_ (gx#current-expander-context))
                            (_name86873_ '#f))
                       (_make-export__8978089781_
                        _bind86868_
                        _phi86869_
                        _ctx86871_
                        _name86873_))))
                  (_make-export__2__8978489787_
                   (lambda (_bind86875_ _phi86876_ _ctx86877_)
                     (let ((_name86879_ '#f))
                       (_make-export__8978089781_
                        _bind86875_
                        _phi86876_
                        _ctx86877_
                        _name86879_))))
                  (_make-export86407_
                   (lambda _g89853_
                     (let ((_g89852_ (##length _g89853_)))
                       (cond ((##fx= _g89852_ 1)
                              (apply (lambda (_bind86860_)
                                       (_make-export__0__8978289785_
                                        _bind86860_))
                                     _g89853_))
                             ((##fx= _g89852_ 2)
                              (apply (lambda (_bind86868_ _phi86869_)
                                       (_make-export__1__8978389786_
                                        _bind86868_
                                        _phi86869_))
                                     _g89853_))
                             ((##fx= _g89852_ 3)
                              (apply (lambda (_bind86875_
                                              _phi86876_
                                              _ctx86877_)
                                       (_make-export__2__8978489787_
                                        _bind86875_
                                        _phi86876_
                                        _ctx86877_))
                                     _g89853_))
                             ((##fx= _g89852_ 4)
                              (apply (lambda (_bind86881_
                                              _phi86882_
                                              _ctx86883_
                                              _name86884_)
                                       (_make-export__8978089781_
                                        _bind86881_
                                        _phi86882_
                                        _ctx86883_
                                        _name86884_))
                                     _g89853_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g89853_))))))
                  (_expand186408_
                   (lambda (_hd86557_ _K86558_ _rest86559_ _r86560_)
                     (let* ((_e8656186593_ _hd86557_)
                            (_E8658886597_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx86404_
                                _hd86557_)))
                            (_E8657886676_
                             (lambda ()
                               (if (gx#stx-pair? _e8656186593_)
                                   (let ((_e8658986601_
                                          (gx#syntax-e _e8656186593_)))
                                     (let ((_hd8659086604_
                                            (##car _e8658986601_))
                                           (_tl8659186606_
                                            (##cdr _e8658986601_)))
                                       (if (eq? (gx#stx-e _hd8659086604_)
                                                'import:)
                                           (let ((_in86609_ _tl8659186606_))
                                             (if (gx#stx-list? _in86609_)
                                                 (let _lp86611_ ((_in-rest86613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in86609_)
                         (_r86614_ _r86560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8661586622_
                                                           _in-rest86613_)
                                                          (_E8661786626_
                                                           (lambda ()
                                                             (_K86558_
                                                              _rest86559_
                                                              _r86614_)))
                                                          (_E8661686672_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8661586622_)
                         (let ((_e8661886630_ (gx#syntax-e _e8661586622_)))
                           (let ((_hd8661986633_ (##car _e8661886630_))
                                 (_tl8662086635_ (##cdr _e8661886630_)))
                             (let* ((_hd86638_ _hd8661986633_)
                                    (_in-rest86640_ _tl8662086635_))
                               (if '#t
                                   (let ((_src86670_
                                          (if (gx#core-bound-module? _hd86638_)
                                              (gx#syntax-local-e__0 _hd86638_)
                                              (if (gx#core-library-module-path?
                                                   _hd86638_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd86638_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd86638_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd86638_))
                                                      (if (gx#stx-string?
                                                           _hd86638_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd86638_
                                                            (gx#stx-source
                                                             _stx86404_)))
                                                          (let* ((_e8664186648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd86638_)
                         (_E8664386652_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx86404_
                             _hd86638_)))
                         (_E8664286666_
                          (lambda ()
                            (if (gx#stx-pair? _e8664186648_)
                                (let ((_e8664486656_
                                       (gx#syntax-e _e8664186648_)))
                                  (let ((_hd8664586659_ (##car _e8664486656_))
                                        (_tl8664686661_ (##cdr _e8664486656_)))
                                    (if (eq? (gx#stx-e _hd8664586659_) 'in:)
                                        (let ((_spath86664_ _tl8664686661_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath86664_
                                               _stx86404_)
                                              (_E8664386652_)))
                                        (_E8664386652_))))
                                (_E8664386652_)))))
                    (_E8664286666_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp86611_
                                      _in-rest86640_
                                      (_export-imports86409_
                                       _src86670_
                                       _r86614_)))
                                   (_E8661786626_)))))
                         (_E8661786626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8661686672_)))
                                                 (_E8658886597_)))
                                           (_E8658886597_))))
                                   (_E8658886597_))))
                            (_E8656586715_
                             (lambda ()
                               (if (gx#stx-pair? _e8656186593_)
                                   (let ((_e8657986680_
                                          (gx#syntax-e _e8656186593_)))
                                     (let ((_hd8658086683_
                                            (##car _e8657986680_))
                                           (_tl8658186685_
                                            (##cdr _e8657986680_)))
                                       (if (eq? (gx#stx-e _hd8658086683_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8658186685_)
                                               (let ((_e8658286688_
                                                      (gx#syntax-e
                                                       _tl8658186685_)))
                                                 (let ((_hd8658386691_
                                                        (##car _e8658286688_))
                                                       (_tl8658486693_
                                                        (##cdr _e8658286688_)))
                                                   (let ((_id86696_
                                                          _hd8658386691_))
                                                     (if (gx#stx-pair?
                                                          _tl8658486693_)
                                                         (let ((_e8658586698_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8658486693_)))
                   (let ((_hd8658686701_ (##car _e8658586698_))
                         (_tl8658786703_ (##cdr _e8658586698_)))
                     (let ((_name86706_ _hd8658686701_))
                       (if (gx#stx-null? _tl8658786703_)
                           (if '#t
                               (let* ((_phi86708_
                                       (gx#current-export-expander-phi))
                                      (_$e86710_
                                       (gx#core-resolve-identifier__1
                                        _id86696_
                                        _phi86708_)))
                                 (if _$e86710_
                                     ((lambda (_bind86713_)
                                        (_K86558_
                                         _rest86559_
                                         (cons (_make-export__8978089781_
                                                _bind86713_
                                                _phi86708_
                                                (gx#current-expander-context)
                                                _name86706_)
                                               _r86560_)))
                                      _$e86710_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx86404_
                                      _hd86557_
                                      _id86696_)))
                               (_E8657886676_))
                           (_E8657886676_)))))
                 (_E8657886676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8657886676_))
                                           (_E8657886676_))))
                                   (_E8657886676_))))
                            (_E8656486764_
                             (lambda ()
                               (if (gx#stx-pair? _e8656186593_)
                                   (let ((_e8656686719_
                                          (gx#syntax-e _e8656186593_)))
                                     (let ((_hd8656786722_
                                            (##car _e8656686719_))
                                           (_tl8656886724_
                                            (##cdr _e8656686719_)))
                                       (if (eq? (gx#stx-e _hd8656786722_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8656886724_)
                                               (let ((_e8656986727_
                                                      (gx#syntax-e
                                                       _tl8656886724_)))
                                                 (let ((_hd8657086730_
                                                        (##car _e8656986727_))
                                                       (_tl8657186732_
                                                        (##cdr _e8656986727_)))
                                                   (let ((_phi86735_
                                                          _hd8657086730_))
                                                     (if (gx#stx-pair?
                                                          _tl8657186732_)
                                                         (let ((_e8657286737_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8657186732_)))
                   (let ((_hd8657386740_ (##car _e8657286737_))
                         (_tl8657486742_ (##cdr _e8657286737_)))
                     (let ((_id86745_ _hd8657386740_))
                       (if (gx#stx-pair? _tl8657486742_)
                           (let ((_e8657586747_ (gx#syntax-e _tl8657486742_)))
                             (let ((_hd8657686750_ (##car _e8657586747_))
                                   (_tl8657786752_ (##cdr _e8657586747_)))
                               (let ((_name86755_ _hd8657686750_))
                                 (if (gx#stx-null? _tl8657786752_)
                                     (if (and (gx#stx-fixnum? _phi86735_)
                                              (gx#identifier? _id86745_)
                                              (gx#identifier? _name86755_))
                                         (let* ((_phi86757_
                                                 (gx#stx-e _phi86735_))
                                                (_$e86759_
                                                 (gx#core-resolve-identifier__1
                                                  _id86745_
                                                  _phi86757_)))
                                           (if _$e86759_
                                               ((lambda (_bind86762_)
                                                  (_K86558_
                                                   _rest86559_
                                                   (cons (_make-export__8978089781_
                                                          _bind86762_
                                                          _phi86757_
                                                          (gx#current-expander-context)
                                                          _name86755_)
                                                         _r86560_)))
                                                _$e86759_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx86404_
                                                _hd86557_
                                                _id86745_)))
                                         (_E8656586715_))
                                     (_E8656586715_)))))
                           (_E8656586715_)))))
                 (_E8656586715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8656586715_))
                                           (_E8656586715_))))
                                   (_E8656586715_))))
                            (_E8656386775_
                             (lambda ()
                               (let ((_id86768_ _e8656186593_))
                                 (if (gx#identifier? _id86768_)
                                     (let ((_$e86770_
                                            (gx#core-resolve-identifier__1
                                             _id86768_
                                             (gx#current-export-expander-phi))))
                                       (if _$e86770_
                                           ((lambda (_bind86773_)
                                              (_K86558_
                                               _rest86559_
                                               (cons (_make-export__0__8978289785_
                                                      _bind86773_)
                                                     _r86560_)))
                                            _$e86770_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx86404_
                                            _hd86557_)))
                                     (_E8656486764_)))))
                            (_E8656286839_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8656186593_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx86779_
                                               (gx#current-expander-context))
                                              (_current-phi86781_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx86783_
                                               (gx#core-context-shift
                                                _current-ctx86779_
                                                _current-phi86781_))
                                              (_phi-bind86785_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx86783_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp86788_ ((_bind-rest86790_
                                                          _phi-bind86785_)
                                                         (_set86791_ '()))
                                           (let* ((_bind-rest8679286802_
                                                   _bind-rest86790_)
                                                  (_else8679486810_
                                                   (lambda ()
                                                     (_K86558_
                                                      _rest86559_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi86781_
                                                             _set86791_)
                                                            _r86560_))))
                                                  (_K8679686820_
                                                   (lambda (_bind-rest86813_
                                                            _bind86814_
                                                            _key86815_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind86814_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind86814_))
                                                         (_lp86788_
                                                          _bind-rest86813_
                                                          _set86791_)
                                                         (_lp86788_
                                                          _bind-rest86813_
                                                          (cons (_make-export__2__8978489787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind86814_
                         _current-phi86781_
                         _current-ctx86779_)
                        _set86791_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8679286802_)
                                                 (let ((_hd8679786823_
                                                        (##car _bind-rest8679286802_))
                                                       (_tl8679886825_
                                                        (##cdr _bind-rest8679286802_)))
                                                   (if (##pair? _hd8679786823_)
                                                       (let ((_hd8679986828_
                                                              (##car _hd8679786823_))
                                                             (_tl8680086830_
                                                              (##cdr _hd8679786823_)))
                                                         (let* ((_key86833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8679986828_)
                        (_bind86835_ _tl8680086830_)
                        (_bind-rest86837_ _tl8679886825_))
                   (_K8679686820_ _bind-rest86837_ _bind86835_ _key86833_)))
               (_else8679486810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8679486810_)))))
                                       (_E8656386775_))
                                   (_E8656386775_)))))
                       (_E8656286839_))))
                  (_export-imports86409_
                   (lambda (_src86433_ _r86434_)
                     (letrec* ((_current-ctx86436_
                                (gx#current-expander-context))
                               (_current-phi86437_
                                (gx#current-export-expander-phi))
                               (_import->export86438_
                                (lambda (_in86519_)
                                  (let* ((_in8652086528_ _in86519_)
                                         (_E8652286532_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8652086528_)))
                                         (_K8652386539_
                                          (lambda (_phi86535_
                                                   _key86536_
                                                   _out86537_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx86436_
                                             _key86536_
                                             _phi86535_
                                             _key86536_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8652086528_
                                         'gx#module-import::t)
                                        (let* ((_e8652486542_
                                                (##unchecked-structure-ref
                                                 _in8652086528_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out86545_ _e8652486542_)
                                               (_e8652586547_
                                                (##unchecked-structure-ref
                                                 _in8652086528_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key86550_ _e8652586547_)
                                               (_e8652686552_
                                                (##unchecked-structure-ref
                                                 _in8652086528_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi86555_ _e8652686552_))
                                          (_K8652386539_
                                           _phi86555_
                                           _key86550_
                                           _out86545_))
                                        (_E8652286532_)))))
                               (_fold-e86439_
                                (lambda (_in86441_ _r86442_)
                                  (let* ((_in8644386457_ _in86441_)
                                         (_else8644686465_
                                          (lambda () _r86442_)))
                                    (let ((_K8645286501_
                                           (lambda (_phi86497_
                                                    _key86498_
                                                    _out86499_)
                                             (if (and (fx= _phi86497_
                                                           _current-phi86437_)
                                                      (eq? _src86433_
                                                           (##unchecked-structure-ref
                                                            _out86499_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export86438_
                                                        _in86441_)
                                                       _r86442_)
                                                 _r86442_)))
                                          (_K8644886476_
                                           (lambda (_imports86469_
                                                    _phi86470_
                                                    _ctx86471_)
                                             (if (and (fx= _phi86470_
                                                           _current-phi86437_)
                                                      (eq? _src86433_
                                                           _ctx86471_))
                                                 (foldl1 (lambda (_in86473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r86474_)
                   (cons (_import->export86438_ _in86473_) _r86474_))
                 _r86442_
                 _imports86469_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r86442_))))
                                      (let ((_try-match8644586494_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8644386457_
                                                    'gx#import-set::t)
                                                   (let* ((_e8644986479_
                                                           (##unchecked-structure-ref
                                                            _in8644386457_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8645086484_
                                                           (##unchecked-structure-ref
                                                            _in8644386457_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8645186489_
                                                           (##unchecked-structure-ref
                                                            _in8644386457_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx86482_
                                                            _e8644986479_)
                                                           (_phi86487_
                                                            _e8645086484_)
                                                           (_imports86492_
                                                            _e8645186489_))
                                                       (_K8644886476_
                                                        _imports86492_
                                                        _phi86487_
                                                        _ctx86482_)))
                                                   (_else8644686465_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8644386457_
                                             'gx#module-import::t)
                                            (let* ((_e8645386504_
                                                    (##unchecked-structure-ref
                                                     _in8644386457_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8645486509_
                                                    (##unchecked-structure-ref
                                                     _in8644386457_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8645586514_
                                                    (##unchecked-structure-ref
                                                     _in8644386457_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out86507_ _e8645386504_)
                                                    (_key86512_ _e8645486509_)
                                                    (_phi86517_ _e8645586514_))
                                                (_K8645286501_
                                                 _phi86517_
                                                 _key86512_
                                                 _out86507_)))
                                            (_try-match8644586494_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src86433_
                              _current-phi86437_
                              (foldl1 _fold-e86439_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx86436_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r86434_))))
                  (_export!86410_
                   (lambda (_rbody86423_)
                     (letrec* ((_current-ctx86425_
                                (gx#current-expander-context))
                               (_fold-e86426_
                                (lambda (_out86430_ _r86431_)
                                  (if (##structure-direct-instance-of?
                                       _out86430_
                                       'gx#module-export::t)
                                      (cons _out86430_ _r86431_)
                                      (if (##structure-direct-instance-of?
                                           _out86430_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r86431_
                                                  (##unchecked-structure-ref
                                                   _out86430_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r86431_)))))
                       (let ((_body86428_ (reverse _rbody86423_)))
                         (##unchecked-structure-set!
                          _current-ctx86425_
                          (foldl1 _fold-e86426_
                                  (##unchecked-structure-ref
                                   _current-ctx86425_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body86428_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body86428_))))
                  (_expanded-export?86411_
                   (lambda (_e86418_)
                     (let ((_$e86420_
                            (##structure-direct-instance-of?
                             _e86418_
                             'gx#module-export::t)))
                       (if _$e86420_
                           _$e86420_
                           (##structure-direct-instance-of?
                            _e86418_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?86405_)
              (let ((_rbody86416_
                     (gx#core-expand-import/export
                      _stx86404_
                      _expanded-export?86411_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand186408_)))
                (if _internal-expand?86405_
                    (reverse _rbody86416_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!86410_ _rbody86416_))
                     (gx#stx-source _stx86404_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx86404_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx86404_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx86889_)
        (let ((_internal-expand?86891_ '#f))
          (gx#core-expand-export%__% _stx86889_ _internal-expand?86891_))))
    (define gx#core-expand-export%
      (lambda _g89855_
        (let ((_g89854_ (##length _g89855_)))
          (cond ((##fx= _g89854_ 1)
                 (apply (lambda (_stx86889_)
                          (gx#core-expand-export%__0 _stx86889_))
                        _g89855_))
                ((##fx= _g89854_ 2)
                 (apply (lambda (_stx86893_ _internal-expand?86894_)
                          (gx#core-expand-export%__%
                           _stx86893_
                           _internal-expand?86894_))
                        _g89855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g89855_))))))
    (define gx#core-expand-export-source
      (lambda (_hd86401_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd86401_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx86371_)
        (let* ((_e8637286379_ _stx86371_)
               (_E8637486383_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8637286379_)))
               (_E8637386397_
                (lambda ()
                  (if (gx#stx-pair? _e8637286379_)
                      (let ((_e8637586387_ (gx#syntax-e _e8637286379_)))
                        (let ((_hd8637686390_ (##car _e8637586387_))
                              (_tl8637786392_ (##cdr _e8637586387_)))
                          (let ((_body86395_ _tl8637786392_))
                            (if (gx#identifier-list? _body86395_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body86395_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body86395_))
                                   (gx#stx-source _stx86371_)))
                                (_E8637486383_)))))
                      (_E8637486383_)))))
          (_E8637386397_))))
    (define gx#core-bind-feature!__%
      (lambda (_id86337_ _private?86338_ _phi86339_ _ctx86340_)
        (gx#core-bind-syntax!__%
         _id86337_
         ((if _private?86338_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id86337_))
         _private?86338_
         _phi86339_
         _ctx86340_)))
    (define gx#core-bind-feature!__0
      (lambda (_id86345_)
        (let* ((_private?86347_ '#f)
               (_phi86349_ (gx#current-expander-phi))
               (_ctx86351_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id86345_
           _private?86347_
           _phi86349_
           _ctx86351_))))
    (define gx#core-bind-feature!__1
      (lambda (_id86353_ _private?86354_)
        (let* ((_phi86356_ (gx#current-expander-phi))
               (_ctx86358_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id86353_
           _private?86354_
           _phi86356_
           _ctx86358_))))
    (define gx#core-bind-feature!__2
      (lambda (_id86360_ _private?86361_ _phi86362_)
        (let ((_ctx86364_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id86360_
           _private?86361_
           _phi86362_
           _ctx86364_))))
    (define gx#core-bind-feature!
      (lambda _g89857_
        (let ((_g89856_ (##length _g89857_)))
          (cond ((##fx= _g89856_ 1)
                 (apply (lambda (_id86345_)
                          (gx#core-bind-feature!__0 _id86345_))
                        _g89857_))
                ((##fx= _g89856_ 2)
                 (apply (lambda (_id86353_ _private?86354_)
                          (gx#core-bind-feature!__1 _id86353_ _private?86354_))
                        _g89857_))
                ((##fx= _g89856_ 3)
                 (apply (lambda (_id86360_ _private?86361_ _phi86362_)
                          (gx#core-bind-feature!__2
                           _id86360_
                           _private?86361_
                           _phi86362_))
                        _g89857_))
                ((##fx= _g89856_ 4)
                 (apply (lambda (_id86366_
                                 _private?86367_
                                 _phi86368_
                                 _ctx86369_)
                          (gx#core-bind-feature!__%
                           _id86366_
                           _private?86367_
                           _phi86368_
                           _ctx86369_))
                        _g89857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g89857_))))))))
