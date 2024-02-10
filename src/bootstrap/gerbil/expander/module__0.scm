(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707601716)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-struct-type
       'gx#module-import::t
       'module-import
       '#f
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-struct-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args160916_
        (apply make-struct-instance gx#module-import::t _$args160916_)))
    (define gx#module-import-source
      (make-struct-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (make-struct-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (make-struct-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (make-struct-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (make-struct-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (make-struct-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (make-struct-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (make-struct-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (make-struct-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (make-struct-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (make-struct-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (make-struct-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (make-struct-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-struct-type
       'gx#module-export::t
       'module-export
       '#f
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-struct-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args160913_
        (apply make-struct-instance gx#module-export::t _$args160913_)))
    (define gx#module-export-context
      (make-struct-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (make-struct-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (make-struct-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (make-struct-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (make-struct-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (make-struct-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (make-struct-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (make-struct-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (make-struct-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (make-struct-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (make-struct-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (make-struct-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (make-struct-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (make-struct-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (make-struct-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (make-struct-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-struct-type
       'gx#import-set::t
       'import-set
       '#f
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-struct-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args160910_
        (apply make-struct-instance gx#import-set::t _$args160910_)))
    (define gx#import-set-source
      (make-struct-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi
      (make-struct-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (make-struct-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (make-struct-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (make-struct-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (make-struct-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (make-struct-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (make-struct-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (make-struct-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (make-struct-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-struct-type
       'gx#export-set::t
       'export-set
       '#f
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-struct-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args160907_
        (apply make-struct-instance gx#export-set::t _$args160907_)))
    (define gx#export-set-source
      (make-struct-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi
      (make-struct-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (make-struct-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (make-struct-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (make-struct-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (make-struct-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (make-struct-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (make-struct-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (make-struct-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (make-struct-slot-unchecked-mutator gx#export-set::t 'exports))
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
      (lambda _$args160904_
        (apply make-class-instance gx#import-expander::t _$args160904_)))
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
      (lambda _$args160901_
        (apply make-class-instance gx#export-expander::t _$args160901_)))
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
      (lambda _$args160898_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args160898_)))
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
      (lambda (_path160895_ _fun160896_)
        (call-with-input-file
         (cons 'path: (cons _path160895_ gx#source-file-settings))
         _fun160896_)))
    (define gx#module-context:::init!
      (lambda (_self160889_ _id160890_ _super160891_ _ns160892_ _path160893_)
        (if (##fx< '11 (##structure-length _self160889_))
            (begin
              (##unchecked-structure-set!
               _self160889_
               _id160890_
               '1
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               (make-table 'test: eq?)
               '2
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               _super160891_
               '3
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               '#f
               '4
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               '#f
               '5
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               _ns160892_
               '6
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               _path160893_
               '7
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               '()
               '8
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               '()
               '9
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               '#f
               '10
               (##structure-type _self160889_)
               '#f)
              (##unchecked-structure-set!
               _self160889_
               '#f
               '11
               (##structure-type _self160889_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160889_
                   '11
                   (##vector-length _self160889_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self160733_ _ctx160734_ _root160735_)
        (let ((_super160743_
               (let ((_$e160737_ _root160735_))
                 (if _$e160737_
                     _$e160737_
                     (let ((_$e160740_ (gx#core-context-root__0)))
                       (if _$e160740_
                           _$e160740_
                           (let ((__obj165426
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor165427
                                    (direct-method-ref
                                     gx#root-context::t
                                     ':init!)))
                               (if __constructor165427
                                   (__constructor165427 __obj165426)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj165426)))))))
          (if _ctx160734_
              (let ((_id160746_
                     (##structure-ref
                      _ctx160734_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path160747_
                     (##structure-ref _ctx160734_ '7 gx#module-context::t '#f))
                    (_in160748_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx160734_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e160749_
                     (make-promise (lambda () (gx#eval-module _ctx160734_)))))
                (if (##fx< '8 (##structure-length _self160733_))
                    (begin
                      (##unchecked-structure-set!
                       _self160733_
                       _id160746_
                       '1
                       (##structure-type _self160733_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160733_
                       (make-table 'test: eq? 'size: (length _in160748_))
                       '2
                       (##structure-type _self160733_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160733_
                       _super160743_
                       '3
                       (##structure-type _self160733_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160733_
                       '#f
                       '4
                       (##structure-type _self160733_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160733_
                       '#f
                       '5
                       (##structure-type _self160733_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160733_
                       _path160747_
                       '6
                       (##structure-type _self160733_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160733_
                       _in160748_
                       '7
                       (##structure-type _self160733_)
                       '#f)
                      (##unchecked-structure-set!
                       _self160733_
                       _e160749_
                       '8
                       (##structure-type _self160733_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self160733_
                           '8
                           (##vector-length _self160733_)))
                (for-each
                 (lambda (_g160750160752_)
                   (gx#core-bind-weak-import!__% _g160750160752_ _self160733_))
                 _in160748_))
              (if (##fx< '8 (##structure-length _self160733_))
                  (begin
                    (##unchecked-structure-set!
                     _self160733_
                     '#f
                     '1
                     (##structure-type _self160733_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160733_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self160733_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160733_
                     _super160743_
                     '3
                     (##structure-type _self160733_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160733_
                     '#f
                     '4
                     (##structure-type _self160733_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160733_
                     '#f
                     '5
                     (##structure-type _self160733_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160733_
                     '#f
                     '6
                     (##structure-type _self160733_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160733_
                     '()
                     '7
                     (##structure-type _self160733_)
                     '#f)
                    (##unchecked-structure-set!
                     _self160733_
                     '#f
                     '8
                     (##structure-type _self160733_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self160733_
                         '8
                         (##vector-length _self160733_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self160758_ _ctx160759_)
        (let ((_root160761_ '#f))
          (gx#prelude-context:::init!__%
           _self160758_
           _ctx160759_
           _root160761_))))
    (define gx#prelude-context:::init!
      (lambda _g165433_
        (let ((_g165432_ (##length _g165433_)))
          (cond ((##fx= _g165432_ 2)
                 (apply (lambda (_self160758_ _ctx160759_)
                          (gx#prelude-context:::init!__0
                           _self160758_
                           _ctx160759_))
                        _g165433_))
                ((##fx= _g165432_ 3)
                 (apply (lambda (_self160763_ _ctx160764_ _root160765_)
                          (gx#prelude-context:::init!__%
                           _self160763_
                           _ctx160764_
                           _root160765_))
                        _g165433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g165433_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self160607_ _e160608_)
        (if (##fx< '3 (##structure-length _self160607_))
            (begin
              (##unchecked-structure-set!
               _self160607_
               _e160608_
               '1
               (##structure-type _self160607_)
               '#f)
              (##unchecked-structure-set!
               _self160607_
               (gx#current-expander-context)
               '2
               (##structure-type _self160607_)
               '#f)
              (##unchecked-structure-set!
               _self160607_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self160607_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self160607_
                   '3
                   (##vector-length _self160607_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (bind-method!
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_g160233160236_ _g160234160238_)
        (gx#core-apply-user-expander__%
         _g160233160236_
         _g160234160238_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g160104160107_ _g160105160109_)
        (gx#core-apply-user-expander__%
         _g160104160107_
         _g160105160109_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx159975_)
        (let* ((_path159977_
                (##structure-ref _ctx159975_ '7 gx#module-context::t '#f))
               (_path159979_
                (if (pair? _path159977_) (last _path159977_) _path159977_)))
          (if (string? _path159979_) _path159979_ '#f))))
    (define gx#import-module__%
      (lambda (_path159951_ _reload?159952_ _eval?159953_)
        (let ((_ctx159955_
               ((gx#current-expander-module-import)
                _path159951_
                _reload?159952_)))
          (if (and _ctx159955_ _eval?159953_)
              (gx#eval-module _ctx159955_)
              '#!void)
          _ctx159955_)))
    (define gx#import-module__0
      (lambda (_path159960_)
        (let* ((_reload?159962_ '#f) (_eval?159964_ '#f))
          (gx#import-module__% _path159960_ _reload?159962_ _eval?159964_))))
    (define gx#import-module__1
      (lambda (_path159966_ _reload?159967_)
        (let ((_eval?159969_ '#f))
          (gx#import-module__% _path159966_ _reload?159967_ _eval?159969_))))
    (define gx#import-module
      (lambda _g165435_
        (let ((_g165434_ (##length _g165435_)))
          (cond ((##fx= _g165434_ 1)
                 (apply (lambda (_path159960_)
                          (gx#import-module__0 _path159960_))
                        _g165435_))
                ((##fx= _g165434_ 2)
                 (apply (lambda (_path159966_ _reload?159967_)
                          (gx#import-module__1 _path159966_ _reload?159967_))
                        _g165435_))
                ((##fx= _g165434_ 3)
                 (apply (lambda (_path159971_ _reload?159972_ _eval?159973_)
                          (gx#import-module__%
                           _path159971_
                           _reload?159972_
                           _eval?159973_))
                        _g165435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g165435_))))))
    (define gx#eval-module
      (lambda (_mod159948_) ((gx#current-expander-module-eval) _mod159948_)))
    (define gx#core-eval-module
      (lambda (_obj159933_)
        (letrec ((_force-e159935_
                  (lambda (_getf159944_ _e159945_)
                    (call-with-parameters
                     (lambda () (force (_getf159944_ _e159945_)))
                     gx#current-expander-context
                     _e159945_
                     gx#current-expander-phi
                     '0))))
          (let _recur159937_ ((_e159939_ _obj159933_))
            (if (##structure-instance-of? _e159939_ 'gx#module-context::t)
                (begin
                  (let ((_$e159941_ (gx#core-context-prelude__% _e159939_)))
                    (if _$e159941_ (_recur159937_ _$e159941_) '#!void))
                  (_force-e159935_ gx#module-context-e _e159939_))
                (if (##structure-instance-of? _e159939_ 'gx#prelude-context::t)
                    (_force-e159935_ gx#prelude-context-e _e159939_)
                    (if (gx#stx-string? _e159939_)
                        (_recur159937_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e159939_)))
                        (if (gx#core-library-module-path? _e159939_)
                            (_recur159937_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e159939_)))
                            (error '"Cannot eval module" _obj159933_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx159916_)
        (let _lp159918_ ((_e159920_ _ctx159916_))
          (if (or (##structure-instance-of? _e159920_ 'gx#module-context::t)
                  (##structure-instance-of? _e159920_ 'gx#local-context::t))
              (_lp159918_
               (##unchecked-structure-ref _e159920_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e159920_ 'gx#prelude-context::t)
                  _e159920_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx159929_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx159929_))))
    (define gx#core-context-prelude
      (lambda _g165437_
        (let ((_g165436_ (##length _g165437_)))
          (cond ((##fx= _g165436_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g165437_))
                ((##fx= _g165436_ 1)
                 (apply (lambda (_ctx159931_)
                          (gx#core-context-prelude__% _ctx159931_))
                        _g165437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g165437_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx159906_)
        (let* ((_ht159908_ (gx#current-expander-module-registry))
               (_$e159910_ (table-ref _ht159908_ _ctx159906_ '#f)))
          (if _$e159910_
              (values _$e159910_)
              (let ((_pre159913_
                     (let ((__obj165428
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
                       (gx#prelude-context:::init! __obj165428 _ctx159906_)
                       __obj165428)))
                (table-set! _ht159908_ _ctx159906_ _pre159913_)
                _pre159913_)))))
    (define gx#core-import-module__%
      (lambda (_rpath159787_ _reload?159788_)
        (letrec ((_import-source159790_
                  (lambda (_path159875_)
                    (if (member _path159875_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path159875_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g165438_ (gx#core-read-module _path159875_)))
                         (begin
                           (let ((_g165439_
                                  (if (##values? _g165438_)
                                      (##vector-length _g165438_)
                                      1)))
                             (if (not (##fx= _g165439_ 4))
                                 (error "Context expects 4 values" _g165439_)))
                           (let ((_pre159878_ (##vector-ref _g165438_ 0))
                                 (_id159879_ (##vector-ref _g165438_ 1))
                                 (_ns159880_ (##vector-ref _g165438_ 2))
                                 (_body159881_ (##vector-ref _g165438_ 3)))
                             (let* ((_prelude159886_
                                     (if (##structure-instance-of?
                                          _pre159878_
                                          'gx#prelude-context::t)
                                         _pre159878_
                                         (if (##structure-instance-of?
                                              _pre159878_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre159878_)
                                             (if (string? _pre159878_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre159878_))
                                                 (if (not _pre159878_)
                                                     (let ((_$e159883_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e159883_
                                                           _$e159883_
                                                           (let ((__obj165429
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
                     (gx#prelude-context:::init! __obj165429 '#f)
                     __obj165429)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath159787_
                                                            _pre159878_))))))
                                    (_ctx159888_
                                     (let ((__obj165430
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
                                        __obj165430
                                        _id159879_
                                        _prelude159886_
                                        _ns159880_
                                        _path159875_)
                                       __obj165430))
                                    (_body159890_
                                     (gx#core-expand-module-begin
                                      _body159881_
                                      _ctx159888_))
                                    (_body159892_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body159890_)
                                      _path159875_
                                      _ctx159888_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx159888_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body159892_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx159888_
                                _body159892_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path159875_
                                _ctx159888_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id159879_
                                _ctx159888_)
                               _ctx159888_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path159875_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule159791_
                  (lambda (_rpath159803_)
                    (let* ((_rpath159804159811_ _rpath159803_)
                           (_E159806159815_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath159804159811_)))
                           (_K159807159863_
                            (lambda (_refs159818_ _origin159819_)
                              (let ((_ctx159821_
                                     (if _origin159819_
                                         (gx#core-import-module__%
                                          _origin159819_
                                          _reload?159788_)
                                         (gx#current-expander-context))))
                                (let _lp159823_ ((_rest159825_ _refs159818_)
                                                 (_ctx159826_ _ctx159821_))
                                  (let* ((_rest159827159835_ _rest159825_)
                                         (_else159829159843_
                                          (lambda () _ctx159826_))
                                         (_K159831159851_
                                          (lambda (_rest159846_ _id159847_)
                                            (let ((_bind159849_
                                                   (gx#resolve-identifier__%
                                                    _id159847_
                                                    '0
                                                    _ctx159826_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind159849_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind159849_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp159823_
                                                   _rest159846_
                                                   (##unchecked-structure-ref
                                                    _bind159849_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath159803_
                                                         _id159847_
                                                         _bind159849_))))))
                                    (if (##pair? _rest159827159835_)
                                        (let ((_hd159832159854_
                                               (##car _rest159827159835_))
                                              (_tl159833159856_
                                               (##cdr _rest159827159835_)))
                                          (let* ((_id159859_ _hd159832159854_)
                                                 (_rest159861_
                                                  _tl159833159856_))
                                            (_K159831159851_
                                             _rest159861_
                                             _id159859_)))
                                        (_else159829159843_))))))))
                      (if (##pair? _rpath159804159811_)
                          (let ((_hd159808159866_ (##car _rpath159804159811_))
                                (_tl159809159868_ (##cdr _rpath159804159811_)))
                            (let* ((_origin159871_ _hd159808159866_)
                                   (_refs159873_ _tl159809159868_))
                              (_K159807159863_ _refs159873_ _origin159871_)))
                          (_E159806159815_))))))
          (let ((_$e159793_
                 (if (not _reload?159788_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath159787_
                      '#f)
                     '#f)))
            (if _$e159793_
                (values _$e159793_)
                (if (list? _rpath159787_)
                    (_import-submodule159791_ _rpath159787_)
                    (if (gx#core-library-module-path? _rpath159787_)
                        (let ((_ctx159796_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath159787_)
                                _reload?159788_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath159787_
                           _ctx159796_)
                          _ctx159796_)
                        (let* ((_npath159798_ (path-normalize _rpath159787_))
                               (_$e159800_
                                (if (not _reload?159788_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath159798_
                                     '#f)
                                    '#f)))
                          (if _$e159800_
                              (values _$e159800_)
                              (_import-source159790_ _npath159798_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath159899_)
        (let ((_reload?159901_ '#f))
          (gx#core-import-module__% _rpath159899_ _reload?159901_))))
    (define gx#core-import-module
      (lambda _g165441_
        (let ((_g165440_ (##length _g165441_)))
          (cond ((##fx= _g165440_ 1)
                 (apply (lambda (_rpath159899_)
                          (gx#core-import-module__0 _rpath159899_))
                        _g165441_))
                ((##fx= _g165440_ 2)
                 (apply (lambda (_rpath159903_ _reload?159904_)
                          (gx#core-import-module__%
                           _rpath159903_
                           _reload?159904_))
                        _g165441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g165441_))))))
    (define gx#core-read-module
      (lambda (_path159776_)
        (with-catch
         (lambda (_exn159778_)
           (if (and (datum-parsing-exception? _exn159778_)
                    (eq? (datum-parsing-exception-filepos _exn159778_) '0))
               (gx#core-read-module/lang _path159776_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path159776_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g159780159782_)
                      (display-exception _exn159778_ _g159780159782_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path159776_)))))
    (define gx#core-read-module/sexp
      (lambda (_path159639_)
        (let _lp159641_ ((_body159643_ (read-syntax-from-file _path159639_))
                         (_pre159644_ '#f)
                         (_ns159645_ '#f)
                         (_pkg159646_ '#f))
          (let* ((_e159647159671_ _body159643_)
                 (_E159663159693_
                  (lambda ()
                    (let ((_g165442_
                           (if _pkg159646_
                               (values _pre159644_ _ns159645_ _pkg159646_)
                               (gx#core-read-module-package
                                _path159639_
                                _pre159644_
                                _ns159645_))))
                      (begin
                        (let ((_g165443_
                               (if (##values? _g165442_)
                                   (##vector-length _g165442_)
                                   1)))
                          (if (not (##fx= _g165443_ 3))
                              (error "Context expects 3 values" _g165443_)))
                        (let ((_pre159675_ (##vector-ref _g165442_ 0))
                              (_ns159676_ (##vector-ref _g165442_ 1))
                              (_pkg159677_ (##vector-ref _g165442_ 2)))
                          (let* ((_prelude159679_
                                  (if (gx#core-bound-module-prelude?
                                       _pre159675_)
                                      (gx#syntax-local-e__0 _pre159675_)
                                      (if (gx#core-library-module-path?
                                           _pre159675_)
                                          (gx#core-resolve-library-module-path
                                           _pre159675_)
                                          (if (gx#stx-string? _pre159675_)
                                              (gx#core-resolve-module-path__%
                                               _pre159675_
                                               _path159639_)
                                              (gx#stx-e _pre159675_)))))
                                 (_path-id159681_
                                  (gx#core-module-path->namespace
                                   _path159639_))
                                 (_pkg-id159683_
                                  (if _pkg159677_
                                      (string-append
                                       _pkg159677_
                                       '"/"
                                       _path-id159681_)
                                      _path-id159681_))
                                 (_module-id159685_
                                  (string->symbol _pkg-id159683_))
                                 (_module-ns159690_
                                  (if (eq? _ns159676_ '#!void)
                                      '#f
                                      (let ((_$e159687_ _ns159676_))
                                        (if _$e159687_
                                            _$e159687_
                                            _pkg-id159683_)))))
                            (values _prelude159679_
                                    _module-id159685_
                                    _module-ns159690_
                                    _body159643_)))))))
                 (_E159656159722_
                  (lambda ()
                    (if (gx#stx-pair? _e159647159671_)
                        (let ((_e159664159697_ (gx#syntax-e _e159647159671_)))
                          (let ((_hd159665159700_ (##car _e159664159697_))
                                (_tl159666159702_ (##cdr _e159664159697_)))
                            (if (eq? (gx#stx-e _hd159665159700_) 'package:)
                                (if (gx#stx-pair? _tl159666159702_)
                                    (let ((_e159667159705_
                                           (gx#syntax-e _tl159666159702_)))
                                      (let ((_hd159668159708_
                                             (##car _e159667159705_))
                                            (_tl159669159710_
                                             (##cdr _e159667159705_)))
                                        (let* ((_pkg159713_ _hd159668159708_)
                                               (_rest159715_ _tl159669159710_))
                                          (if '#t
                                              (let ((_pkg159720_
                                                     (if (gx#identifier?
                                                          _pkg159713_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg159713_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg159713_)
                         (gx#stx-false? _pkg159713_))
                     (gx#stx-e _pkg159713_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg159713_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159641_
                                                 _rest159715_
                                                 _pre159644_
                                                 _ns159645_
                                                 _pkg159720_))
                                              (_E159663159693_)))))
                                    (_E159663159693_))
                                (_E159663159693_))))
                        (_E159663159693_))))
                 (_E159649159748_
                  (lambda ()
                    (if (gx#stx-pair? _e159647159671_)
                        (let ((_e159657159726_ (gx#syntax-e _e159647159671_)))
                          (let ((_hd159658159729_ (##car _e159657159726_))
                                (_tl159659159731_ (##cdr _e159657159726_)))
                            (if (eq? (gx#stx-e _hd159658159729_) 'namespace:)
                                (if (gx#stx-pair? _tl159659159731_)
                                    (let ((_e159660159734_
                                           (gx#syntax-e _tl159659159731_)))
                                      (let ((_hd159661159737_
                                             (##car _e159660159734_))
                                            (_tl159662159739_
                                             (##cdr _e159660159734_)))
                                        (let* ((_ns159742_ _hd159661159737_)
                                               (_rest159744_ _tl159662159739_))
                                          (if '#t
                                              (let ((_ns159746_
                                                     (if (gx#identifier?
                                                          _ns159742_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns159742_))
                                                         (if (gx#stx-string?
                                                              _ns159742_)
                                                             (gx#stx-e
                                                              _ns159742_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns159742_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns159742_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp159641_
                                                 _rest159744_
                                                 _pre159644_
                                                 _ns159746_
                                                 _pkg159646_))
                                              (_E159656159722_)))))
                                    (_E159656159722_))
                                (_E159656159722_))))
                        (_E159656159722_))))
                 (_E159648159772_
                  (lambda ()
                    (if (gx#stx-pair? _e159647159671_)
                        (let ((_e159650159752_ (gx#syntax-e _e159647159671_)))
                          (let ((_hd159651159755_ (##car _e159650159752_))
                                (_tl159652159757_ (##cdr _e159650159752_)))
                            (if (eq? (gx#stx-e _hd159651159755_) 'prelude:)
                                (if (gx#stx-pair? _tl159652159757_)
                                    (let ((_e159653159760_
                                           (gx#syntax-e _tl159652159757_)))
                                      (let ((_hd159654159763_
                                             (##car _e159653159760_))
                                            (_tl159655159765_
                                             (##cdr _e159653159760_)))
                                        (let* ((_prelude159768_
                                                _hd159654159763_)
                                               (_rest159770_ _tl159655159765_))
                                          (if '#t
                                              (_lp159641_
                                               _rest159770_
                                               _prelude159768_
                                               _ns159645_
                                               _pkg159646_)
                                              (_E159649159748_)))))
                                    (_E159649159748_))
                                (_E159649159748_))))
                        (_E159649159748_)))))
            (_E159648159772_)))))
    (define gx#core-read-module/lang
      (lambda (_path159466_)
        (letrec ((_default-read-module-body159468_
                  (lambda (_inp159631_)
                    (let _lp159633_ ((_body159635_ '()))
                      (let ((_next159637_ (read-syntax _inp159631_)))
                        (if (eof-object? _next159637_)
                            (reverse _body159635_)
                            (_lp159633_ (cons _next159637_ _body159635_)))))))
                 (_read-body159469_
                  (lambda (_inp159550_
                           _pre159551_
                           _ns159552_
                           _pkg159553_
                           _args159554_)
                    (let ((_g165444_
                           (if _pkg159553_
                               (values _pre159551_ _ns159552_ _pkg159553_)
                               (gx#core-read-module-package
                                _path159466_
                                _pre159551_
                                _ns159552_))))
                      (begin
                        (let ((_g165445_
                               (if (##values? _g165444_)
                                   (##vector-length _g165444_)
                                   1)))
                          (if (not (##fx= _g165445_ 3))
                              (error "Context expects 3 values" _g165445_)))
                        (let ((_pre159556_ (##vector-ref _g165444_ 0))
                              (_ns159557_ (##vector-ref _g165444_ 1))
                              (_pkg159558_ (##vector-ref _g165444_ 2)))
                          (let* ((_prelude159560_
                                  (gx#import-module__0 _pre159556_))
                                 (_read-module-body159614_
                                  (let ((_$e159606_
                                         (find (lambda (_e159561159563_)
                                                 (let* ((_g159565159575_
                                                         _e159561159563_)
                                                        (_else159567159583_
                                                         (lambda () '#f))
                                                        (_K159569159587_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g159565159575_
                                                        'gx#module-export::t)
                                                       (let* ((_e159570159590_
                                                               (##unchecked-structure-ref
                                                                _g159565159575_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159571159593_
                                                               (##unchecked-structure-ref
                                                                _g159565159575_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e159572159596_
                                                               (##unchecked-structure-ref
                                                                _g159565159575_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e159572159596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e159573159599_
                            (##unchecked-structure-ref
                             _g159565159575_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g159601159603_)
                              (eq? _g159601159603_ 'read-module-body))
                            _e159573159599_)
                           (_K159569159587_)
                           (_else159567159583_)))
                     (_else159567159583_)))
               (_else159567159583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude159560_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e159606_
                                        ((lambda (_xport159609_)
                                           (let ((_proc159612_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport159609_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc159612_)
                                                 _proc159612_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path159466_
                                                  _pre159556_
                                                  _proc159612_))))
                                         _$e159606_)
                                        _default-read-module-body159468_)))
                                 (_path-id159616_
                                  (gx#core-module-path->namespace
                                   _path159466_))
                                 (_pkg-id159618_
                                  (if _pkg159558_
                                      (string-append
                                       _pkg159558_
                                       '"/"
                                       _path-id159616_)
                                      _path-id159616_))
                                 (_module-id159620_
                                  (string->symbol _pkg-id159618_))
                                 (_module-ns159625_
                                  (let ((_$e159622_ _ns159557_))
                                    (if _$e159622_ _$e159622_ _pkg-id159618_)))
                                 (_body159628_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body159614_ _inp159550_))
                                   gx#current-module-reader-path
                                   _path159466_
                                   gx#current-module-reader-args
                                   _args159554_)))
                            (values _prelude159560_
                                    _module-id159620_
                                    _module-ns159625_
                                    _body159628_)))))))
                 (_string-e159470_
                  (lambda (_obj159547_ _what159548_)
                    (if (string? _obj159547_)
                        _obj159547_
                        (if (symbol? _obj159547_)
                            (symbol->string _obj159547_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what159548_)
                             _path159466_
                             _obj159547_)))))
                 (_read-lang-args159471_
                  (lambda (_inp159502_ _args159503_)
                    (let* ((_args159504159512_ _args159503_)
                           (_else159506159520_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path159466_)))
                           (_K159508159535_
                            (lambda (_args159523_ _prelude159524_)
                              (let* ((_pkg159526_
                                      (pgetq 'package: _args159523_))
                                     (_pkg159528_
                                      (if _pkg159526_
                                          (_string-e159470_
                                           _pkg159526_
                                           '"package")
                                          '#f))
                                     (_ns159530_
                                      (pgetq 'namespace: _args159523_))
                                     (_ns159532_
                                      (if _ns159530_
                                          (_string-e159470_
                                           _ns159530_
                                           '"namespace")
                                          '#f)))
                                (_read-body159469_
                                 _inp159502_
                                 _prelude159524_
                                 _ns159532_
                                 _pkg159528_
                                 _args159523_)))))
                      (if (##pair? _args159504159512_)
                          (let ((_hd159509159538_ (##car _args159504159512_))
                                (_tl159510159540_ (##cdr _args159504159512_)))
                            (let* ((_prelude159543_ _hd159509159538_)
                                   (_args159545_ _tl159510159540_))
                              (_K159508159535_ _args159545_ _prelude159543_)))
                          (_else159506159520_)))))
                 (_read-lang159472_
                  (lambda (_inp159477_)
                    (let* ((_head159479_ (read-line _inp159477_))
                           (_$e159481_ (string-index _head159479_ '#\space)))
                      (if _$e159481_
                          ((lambda (_ix159484_)
                             (let ((_lang159486_
                                    (substring _head159479_ '0 _ix159484_)))
                               (if (equal? _lang159486_ '"#lang")
                                   (let* ((_rest159488_
                                           (substring
                                            _head159479_
                                            (fx+ _ix159484_ '1)
                                            (string-length _head159479_)))
                                          (_args159499_
                                           (with-catch
                                            (lambda (_g159489159491_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path159466_
                                               _g159489159491_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest159488_
                                               (lambda (_g159494159496_)
                                                 (read-all
                                                  _g159494159496_
                                                  read)))))))
                                     (_read-lang-args159471_
                                      _inp159477_
                                      _args159499_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path159466_))))
                           _$e159481_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path159466_)))))
                 (_read-e159473_
                  (lambda (_inp159475_)
                    (if (eq? (peek-char _inp159475_) '#\#)
                        (_read-lang159472_ _inp159475_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path159466_)))))
          (gx#call-with-input-source-file _path159466_ _read-e159473_))))
    (define gx#core-read-module-package
      (lambda (_path159420_ _pre159421_ _ns159422_)
        (letrec ((_string-e159424_
                  (lambda (_e159464_)
                    (if (symbol? _e159464_)
                        (symbol->string _e159464_)
                        (if (string? _e159464_)
                            _e159464_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e159464_))))))
          (let _lp159426_ ((_dir159428_ (path-directory _path159420_))
                           (_pkg-path159429_ '()))
            (let ((_gerbil.pkg159431_ (path-expand '"gerbil.pkg" _dir159428_)))
              (if (file-exists? _gerbil.pkg159431_)
                  (let ((_plist159433_
                         (gx#core-library-package-plist__% _dir159428_ '#t)))
                    (if (null? _plist159433_)
                        (let ((_pkg159435_
                               (if (not (null? _pkg-path159429_))
                                   (string-join _pkg-path159429_ '"/")
                                   '#f)))
                          (values _pre159421_ _ns159422_ _pkg159435_))
                        (if (list? _plist159433_)
                            (let* ((_root159437_
                                    (pgetq 'package: _plist159433_))
                                   (_pkg159441_
                                    (let ((_pkg-path159439_
                                           (if _root159437_
                                               (cons (_string-e159424_
                                                      _root159437_)
                                                     _pkg-path159429_)
                                               _pkg-path159429_)))
                                      (if (not (null? _pkg-path159439_))
                                          (string-join _pkg-path159439_ '"/")
                                          '#f)))
                                   (_ns159448_
                                    (let ((_ns159446_
                                           (let ((_$e159443_ _ns159422_))
                                             (if _$e159443_
                                                 _$e159443_
                                                 (pgetq 'namespace:
                                                        _plist159433_)))))
                                      (if _ns159446_
                                          (_string-e159424_ _ns159446_)
                                          '#f)))
                                   (_pre159453_
                                    (let ((_$e159450_ _pre159421_))
                                      (if _$e159450_
                                          _$e159450_
                                          (pgetq 'prelude: _plist159433_)))))
                              (values _pre159453_ _ns159448_ _pkg159441_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist159433_))))
                  (let ((_dir*159456_
                         (path-strip-trailing-directory-separator
                          _dir159428_)))
                    (if (or (string-empty? _dir*159456_)
                            (equal? _dir159428_ _dir*159456_))
                        (values _pre159421_ _ns159422_ '#f)
                        (let ((_xpath159461_
                               (path-strip-directory _dir*159456_))
                              (_xdir159462_ (path-directory _dir*159456_)))
                          (_lp159426_
                           _xdir159462_
                           (cons _xpath159461_ _pkg-path159429_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path159418_)
        (path-strip-extension (path-strip-directory _path159418_))))
    (define gx#core-module-path->id
      (lambda (_path159416_)
        (string->symbol (gx#core-module-path->namespace _path159416_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path159395_ _rel159396_)
        (let* ((_path159398_ (gx#stx-e _stx-path159395_))
               (_path159400_
                (if (string-empty? (path-extension _path159398_))
                    (string-append _path159398_ '".ss")
                    _path159398_)))
          (gx#core-resolve-path__%
           _path159400_
           (let ((_$e159403_ (gx#stx-source _stx-path159395_)))
             (if _$e159403_ _$e159403_ _rel159396_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path159409_)
        (let ((_rel159411_ '#f))
          (gx#core-resolve-module-path__% _stx-path159409_ _rel159411_))))
    (define gx#core-resolve-module-path
      (lambda _g165447_
        (let ((_g165446_ (##length _g165447_)))
          (cond ((##fx= _g165446_ 1)
                 (apply (lambda (_stx-path159409_)
                          (gx#core-resolve-module-path__0 _stx-path159409_))
                        _g165447_))
                ((##fx= _g165446_ 2)
                 (apply (lambda (_stx-path159413_ _rel159414_)
                          (gx#core-resolve-module-path__%
                           _stx-path159413_
                           _rel159414_))
                        _g165447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g165447_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath159281_)
        (let* ((_spath159283_ (symbol->string (gx#stx-e _libpath159281_)))
               (_spath159285_
                (substring _spath159283_ '1 (string-length _spath159283_)))
               (_ext159287_ (path-extension _spath159285_))
               (_ssi159289_
                (if (string-empty? _ext159287_)
                    (string-append _spath159285_ '".ssi")
                    (string-append
                     (path-strip-extension _spath159285_)
                     '".ssi")))
               (_srcs159293_
                (if (string-empty? _ext159287_)
                    (map (lambda (_ext159291_)
                           (string-append _spath159285_ _ext159291_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath159285_ '()))))
          (let _lp159296_ ((_rest159298_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest159299159308_ _rest159298_)
                   (_E159302159312_
                    (lambda ()
                      (error '"No clause matching" _rest159299159308_))))
              (let ((_K159304159382_
                     (lambda (_rest159323_ _dir159324_)
                       (letrec ((_resolve159326_
                                 (lambda (_ssi159338_ _srcs159339_)
                                   (let ((_compiled-path159341_
                                          (path-expand
                                           _ssi159338_
                                           _dir159324_)))
                                     (if (file-exists? _compiled-path159341_)
                                         (path-normalize _compiled-path159341_)
                                         (let _lpr159343_ ((_rest-src159345_
                                                            _srcs159339_))
                                           (let* ((_rest-src159346159354_
                                                   _rest-src159345_)
                                                  (_else159348159362_
                                                   (lambda ()
                                                     (_lp159296_
                                                      _rest159323_)))
                                                  (_K159350159370_
                                                   (lambda (_rest-src159365_
                                                            _src159366_)
                                                     (let ((_src-path159368_
                                                            (path-expand
                                                             _src159366_
                                                             _dir159324_)))
                                                       (if (file-exists?
                                                            _src-path159368_)
                                                           (path-normalize
                                                            _src-path159368_)
                                                           (_lpr159343_
                                                            _rest-src159365_))))))
                                             (if (##pair? _rest-src159346159354_)
                                                 (let ((_hd159351159373_
                                                        (##car _rest-src159346159354_))
                                                       (_tl159352159375_
                                                        (##cdr _rest-src159346159354_)))
                                                   (let* ((_src159378_
                                                           _hd159351159373_)
                                                          (_rest-src159380_
                                                           _tl159352159375_))
                                                     (_K159350159370_
                                                      _rest-src159380_
                                                      _src159378_)))
                                                 (_else159348159362_)))))))))
                         (let ((_$e159328_
                                (gx#core-library-package-path-prefix
                                 _dir159324_)))
                           (if _$e159328_
                               ((lambda (_prefix159331_)
                                  (if (string-prefix?
                                       _prefix159331_
                                       _spath159285_)
                                      (let ((_ssi159335_
                                             (substring
                                              _ssi159289_
                                              (string-length _prefix159331_)
                                              (string-length _ssi159289_)))
                                            (_srcs159336_
                                             (map (lambda (_src159333_)
                                                    (substring
                                                     _src159333_
                                                     (string-length
                                                      _prefix159331_)
                                                     (string-length
                                                      _src159333_)))
                                                  _srcs159293_)))
                                        (_resolve159326_
                                         _ssi159335_
                                         _srcs159336_))
                                      (_lp159296_ _rest159323_)))
                                _$e159328_)
                               (_resolve159326_ _ssi159289_ _srcs159293_))))))
                    (_K159303159317_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath159281_))))
                (let ((_try-match159301159320_
                       (lambda ()
                         (if (##null? _rest159299159308_)
                             (_K159303159317_)
                             (_E159302159312_)))))
                  (if (##pair? _rest159299159308_)
                      (let ((_tl159306159387_ (##cdr _rest159299159308_))
                            (_hd159305159385_ (##car _rest159299159308_)))
                        (let ((_dir159390_ _hd159305159385_)
                              (_rest159392_ _tl159306159387_))
                          (_K159304159382_ _rest159392_ _dir159390_)))
                      (_try-match159301159320_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath159254_)
        (letrec ((_resolve159256_
                  (lambda (_path159273_ _base159274_)
                    (let ((_$e159276_ (string-rindex _base159274_ '#\/)))
                      (if _$e159276_
                          ((lambda (_idx159279_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base159274_ '0 _idx159279_)
                                '"/"
                                _path159273_))))
                           _$e159276_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path159273_))))))))
          (let ((_spath159258_ (symbol->string (gx#stx-e _modpath159254_)))
                (_mod159259_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod159259_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath159254_))
            (let ((_mpath159261_
                   (symbol->string
                    (##structure-ref
                     _mod159259_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp159263_ ((_spath159265_ _spath159258_)
                               (_mpath159266_ _mpath159261_))
                (if (string-prefix? '"../" _spath159265_)
                    (let ((_$e159268_ (string-rindex _mpath159266_ '#\/)))
                      (if _$e159268_
                          ((lambda (_idx159271_)
                             (_lp159263_
                              (substring
                               _spath159265_
                               '3
                               (string-length _spath159265_))
                              (substring _mpath159266_ '0 _idx159271_)))
                           _$e159268_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath159254_)))
                    (if (string-prefix? '"./" _spath159265_)
                        (_lp159263_
                         (substring
                          _spath159265_
                          '2
                          (string-length _spath159265_))
                         _mpath159266_)
                        (_resolve159256_ _spath159265_ _mpath159266_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir159247_)
        (let ((_$e159249_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir159247_))))
          (if _$e159249_
              ((lambda (_pkg159252_)
                 (string-append (symbol->string _pkg159252_) '"/"))
               _$e159249_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir159219_ _exists?159220_)
        (let* ((_cache159222_ (gx#core-library-package-cache))
               (_$e159224_ (table-ref _cache159222_ _dir159219_ '#f)))
          (if _$e159224_
              (values _$e159224_)
              (let* ((_gerbil.pkg159227_
                      (path-expand '"gerbil.pkg" _dir159219_))
                     (_plist159234_
                      (if (or _exists?159220_
                              (file-exists? _gerbil.pkg159227_))
                          (let ((_e159232_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg159227_
                                  read)))
                            (if (eof-object? _e159232_)
                                '()
                                (if (list? _e159232_)
                                    _e159232_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg159227_
                                     _e159232_))))
                          '())))
                (table-set! _cache159222_ _dir159219_ _plist159234_)
                _plist159234_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir159240_)
        (let ((_exists?159242_ '#f))
          (gx#core-library-package-plist__% _dir159240_ _exists?159242_))))
    (define gx#core-library-package-plist
      (lambda _g165449_
        (let ((_g165448_ (##length _g165449_)))
          (cond ((##fx= _g165448_ 1)
                 (apply (lambda (_dir159240_)
                          (gx#core-library-package-plist__0 _dir159240_))
                        _g165449_))
                ((##fx= _g165448_ 2)
                 (apply (lambda (_dir159244_ _exists?159245_)
                          (gx#core-library-package-plist__%
                           _dir159244_
                           _exists?159245_))
                        _g165449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g165449_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e159213_ (gx#current-expander-module-library-package-cache)))
          (if _$e159213_
              (values _$e159213_)
              (let ((_cache159216_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache159216_)
                _cache159216_)))))
    (define gx#core-library-module-path?
      (lambda (_stx159210_) (gx#core-special-module-path? _stx159210_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx159208_) (gx#core-special-module-path? _stx159208_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx159203_ _char159204_)
        (if (gx#identifier? _stx159203_)
            (if (interned-symbol? (gx#stx-e _stx159203_))
                (let ((_str159206_ (symbol->string (gx#stx-e _stx159203_))))
                  (if (fx> (string-length _str159206_) '1)
                      (eq? (string-ref _str159206_ '0) _char159204_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx159197_)
        (gx#core-bound-identifier?__%
         _stx159197_
         (lambda (_g159198159200_)
           (gx#expander-binding?__% _g159198159200_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx159191_)
        (gx#core-bound-identifier?__%
         _stx159191_
         (lambda (_g159192159194_)
           (gx#expander-binding?__% _g159192159194_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx159178_)
        (letrec ((_module-prelude?159180_
                  (lambda (_e159186_)
                    (let ((_$e159188_
                           (##structure-instance-of?
                            _e159186_
                            'gx#module-context::t)))
                      (if _$e159188_
                          _$e159188_
                          (##structure-instance-of?
                           _e159186_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx159178_
           (lambda (_g159181159183_)
             (gx#expander-binding?__%
              _g159181159183_
              _module-prelude?159180_))))))
    (define gx#core-bind-import!__%
      (lambda (_in159108_ _ctx159109_ _force-weak?159110_)
        (let* ((_in159111159120_ _in159108_)
               (_E159113159124_
                (lambda () (error '"No clause matching" _in159111159120_)))
               (_K159114159137_
                (lambda (_weak?159127_ _phi159128_ _key159129_ _source159130_)
                  (gx#core-bind!__%
                   _key159129_
                   (let ((_e159132_
                          (gx#core-resolve-module-export _source159130_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e159132_
                       '1
                       gx#binding::t
                       '#f)
                      _key159129_
                      _phi159128_
                      _e159132_
                      (##unchecked-structure-ref
                       _source159130_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e159134_ _force-weak?159110_))
                        (if _$e159134_ _$e159134_ _weak?159127_))))
                   gx#core-context-rebind?
                   _phi159128_
                   _ctx159109_))))
          (if (##structure-direct-instance-of?
               _in159111159120_
               'gx#module-import::t)
              (let* ((_e159115159140_
                      (##unchecked-structure-ref
                       _in159111159120_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source159143_ _e159115159140_)
                     (_e159116159145_
                      (##unchecked-structure-ref
                       _in159111159120_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key159148_ _e159116159145_)
                     (_e159117159150_
                      (##unchecked-structure-ref
                       _in159111159120_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi159153_ _e159117159150_)
                     (_e159118159155_
                      (##unchecked-structure-ref
                       _in159111159120_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?159158_ _e159118159155_))
                (_K159114159137_
                 _weak?159158_
                 _phi159153_
                 _key159148_
                 _source159143_))
              (_E159113159124_)))))
    (define gx#core-bind-import!__0
      (lambda (_in159163_)
        (let* ((_ctx159165_ (gx#current-expander-context))
               (_force-weak?159167_ '#f))
          (gx#core-bind-import!__%
           _in159163_
           _ctx159165_
           _force-weak?159167_))))
    (define gx#core-bind-import!__1
      (lambda (_in159169_ _ctx159170_)
        (let ((_force-weak?159172_ '#f))
          (gx#core-bind-import!__%
           _in159169_
           _ctx159170_
           _force-weak?159172_))))
    (define gx#core-bind-import!
      (lambda _g165451_
        (let ((_g165450_ (##length _g165451_)))
          (cond ((##fx= _g165450_ 1)
                 (apply (lambda (_in159163_)
                          (gx#core-bind-import!__0 _in159163_))
                        _g165451_))
                ((##fx= _g165450_ 2)
                 (apply (lambda (_in159169_ _ctx159170_)
                          (gx#core-bind-import!__1 _in159169_ _ctx159170_))
                        _g165451_))
                ((##fx= _g165450_ 3)
                 (apply (lambda (_in159174_ _ctx159175_ _force-weak?159176_)
                          (gx#core-bind-import!__%
                           _in159174_
                           _ctx159175_
                           _force-weak?159176_))
                        _g165451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g165451_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in159094_ _ctx159095_)
        (gx#core-bind-import!__% _in159094_ _ctx159095_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in159100_)
        (let ((_ctx159102_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in159100_ _ctx159102_))))
    (define gx#core-bind-weak-import!
      (lambda _g165453_
        (let ((_g165452_ (##length _g165453_)))
          (cond ((##fx= _g165452_ 1)
                 (apply (lambda (_in159100_)
                          (gx#core-bind-weak-import!__0 _in159100_))
                        _g165453_))
                ((##fx= _g165452_ 2)
                 (apply (lambda (_in159104_ _ctx159105_)
                          (gx#core-bind-weak-import!__%
                           _in159104_
                           _ctx159105_))
                        _g165453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g165453_))))))
    (define gx#core-resolve-module-export
      (lambda (_out158985_)
        (letrec ((_subst158987_
                  (lambda (_key159033_)
                    (let* ((_key159034159042_ _key159033_)
                           (_else159036159050_ (lambda () _key159033_))
                           (_K159038159081_
                            (lambda (_mark159053_ _id159054_)
                              (let* ((_mark159055159061_ _mark159053_)
                                     (_E159057159065_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark159055159061_)))
                                     (_K159058159073_
                                      (lambda (_subst159068_)
                                        (let ((_$e159070_
                                               (if _subst159068_
                                                   (table-ref
                                                    _subst159068_
                                                    _id159054_
                                                    '#f)
                                                   '#f)))
                                          (if _$e159070_
                                              _$e159070_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key159033_))))))
                                (if (##structure-instance-of?
                                     _mark159055159061_
                                     'gx#expander-mark::t)
                                    (let* ((_e159059159076_
                                            (##unchecked-structure-ref
                                             _mark159055159061_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst159079_ _e159059159076_))
                                      (_K159058159073_ _subst159079_))
                                    (_E159057159065_))))))
                      (if (##pair? _key159034159042_)
                          (let ((_hd159039159084_ (##car _key159034159042_))
                                (_tl159040159086_ (##cdr _key159034159042_)))
                            (let* ((_id159089_ _hd159039159084_)
                                   (_mark159091_ _tl159040159086_))
                              (_K159038159081_ _mark159091_ _id159089_)))
                          (_else159036159050_))))))
          (let* ((_out158988158998_ _out158985_)
                 (_E158990159002_
                  (lambda () (error '"No clause matching" _out158988158998_)))
                 (_K158991159009_
                  (lambda (_phi159005_ _key159006_ _ctx159007_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx159007_ _phi159005_)
                     (_subst158987_ _key159006_)))))
            (if (##structure-direct-instance-of?
                 _out158988158998_
                 'gx#module-export::t)
                (let* ((_e158992159012_
                        (##unchecked-structure-ref
                         _out158988158998_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx159015_ _e158992159012_)
                       (_e158993159017_
                        (##unchecked-structure-ref
                         _out158988158998_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key159020_ _e158993159017_)
                       (_e158994159022_
                        (##unchecked-structure-ref
                         _out158988158998_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi159025_ _e158994159022_)
                       (_e158995159027_
                        (##unchecked-structure-ref
                         _out158988158998_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e158996159030_
                        (##unchecked-structure-ref
                         _out158988158998_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K158991159009_ _phi159025_ _key159020_ _ctx159015_))
                (_E158990159002_))))))
    (define gx#core-module-export->import__%
      (lambda (_out158910_ _rename158911_ _dphi158912_)
        (let* ((_out158913158923_ _out158910_)
               (_E158915158927_
                (lambda () (error '"No clause matching" _out158913158923_)))
               (_K158916158939_
                (lambda (_weak?158930_
                         _name158931_
                         _phi158932_
                         _key158933_
                         _ctx158934_)
                  (##structure
                   gx#module-import::t
                   _out158910_
                   (let ((_$e158936_ _rename158911_))
                     (if _$e158936_ _$e158936_ _name158931_))
                   (fx+ _phi158932_ _dphi158912_)
                   _weak?158930_))))
          (if (##structure-direct-instance-of?
               _out158913158923_
               'gx#module-export::t)
              (let* ((_e158917158942_
                      (##unchecked-structure-ref
                       _out158913158923_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx158945_ _e158917158942_)
                     (_e158918158947_
                      (##unchecked-structure-ref
                       _out158913158923_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key158950_ _e158918158947_)
                     (_e158919158952_
                      (##unchecked-structure-ref
                       _out158913158923_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi158955_ _e158919158952_)
                     (_e158920158957_
                      (##unchecked-structure-ref
                       _out158913158923_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name158960_ _e158920158957_)
                     (_e158921158962_
                      (##unchecked-structure-ref
                       _out158913158923_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?158965_ _e158921158962_))
                (_K158916158939_
                 _weak?158965_
                 _name158960_
                 _phi158955_
                 _key158950_
                 _ctx158945_))
              (_E158915158927_)))))
    (define gx#core-module-export->import__0
      (lambda (_out158970_)
        (let* ((_rename158972_ '#f) (_dphi158974_ '0))
          (gx#core-module-export->import__%
           _out158970_
           _rename158972_
           _dphi158974_))))
    (define gx#core-module-export->import__1
      (lambda (_out158976_ _rename158977_)
        (let ((_dphi158979_ '0))
          (gx#core-module-export->import__%
           _out158976_
           _rename158977_
           _dphi158979_))))
    (define gx#core-module-export->import
      (lambda _g165455_
        (let ((_g165454_ (##length _g165455_)))
          (cond ((##fx= _g165454_ 1)
                 (apply (lambda (_out158970_)
                          (gx#core-module-export->import__0 _out158970_))
                        _g165455_))
                ((##fx= _g165454_ 2)
                 (apply (lambda (_out158976_ _rename158977_)
                          (gx#core-module-export->import__1
                           _out158976_
                           _rename158977_))
                        _g165455_))
                ((##fx= _g165454_ 3)
                 (apply (lambda (_out158981_ _rename158982_ _dphi158983_)
                          (gx#core-module-export->import__%
                           _out158981_
                           _rename158982_
                           _dphi158983_))
                        _g165455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g165455_))))))
    (define gx#core-expand-module%
      (lambda (_stx158838_)
        (letrec ((_make-context158840_
                  (lambda (_id158891_)
                    (let* ((_super158893_ (gx#current-expander-context))
                           (_bind-id158895_ (gx#stx-e _id158891_))
                           (_mod-id158897_
                            (if (##structure-instance-of?
                                 _super158893_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super158893_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id158895_)
                                _bind-id158895_))
                           (_ns158899_ (symbol->string _mod-id158897_))
                           (_path158906_
                            (if (##structure-instance-of?
                                 _super158893_
                                 'gx#module-context::t)
                                (let ((_path158901_
                                       (##unchecked-structure-ref
                                        _super158893_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path158901_)
                                          (null? _path158901_))
                                      (cons _bind-id158895_ _path158901_)
                                      (if (not _path158901_)
                                          _bind-id158895_
                                          (cons _bind-id158895_
                                                (cons _path158901_ '())))))
                                _bind-id158895_)))
                      (let ((__obj165431
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
                         __obj165431
                         _mod-id158897_
                         _super158893_
                         _ns158899_
                         _path158906_)
                        __obj165431)))))
          (let* ((_e158841158851_ _stx158838_)
                 (_E158843158855_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158841158851_)))
                 (_E158842158887_
                  (lambda ()
                    (if (gx#stx-pair? _e158841158851_)
                        (let ((_e158844158859_ (gx#syntax-e _e158841158851_)))
                          (let ((_hd158845158862_ (##car _e158844158859_))
                                (_tl158846158864_ (##cdr _e158844158859_)))
                            (if (gx#stx-pair? _tl158846158864_)
                                (let ((_e158847158867_
                                       (gx#syntax-e _tl158846158864_)))
                                  (let ((_hd158848158870_
                                         (##car _e158847158867_))
                                        (_tl158849158872_
                                         (##cdr _e158847158867_)))
                                    (let* ((_id158875_ _hd158848158870_)
                                           (_body158877_ _tl158849158872_))
                                      (if (and (gx#identifier? _id158875_)
                                               (gx#stx-list? _body158877_))
                                          (let* ((_ctx158879_
                                                  (_make-context158840_
                                                   _id158875_))
                                                 (_body158881_
                                                  (gx#core-expand-module-begin
                                                   _body158877_
                                                   _ctx158879_))
                                                 (_body158883_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body158881_)
                                                   (gx#stx-source
                                                    _stx158838_))))
                                            (##unchecked-structure-set!
                                             _ctx158879_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body158883_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx158879_
                                             _body158883_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id158875_
                                             _ctx158879_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id158875_)
                                              _body158883_)
                                             (gx#stx-source _stx158838_)))
                                          (_E158843158855_)))))
                                (_E158843158855_))))
                        (_E158843158855_)))))
            (_E158842158887_)))))
    (define gx#core-expand-module-begin
      (lambda (_body158804_ _ctx158805_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx158808_
                   (gx#core-expand-head (cons '%%begin-module _body158804_)))
                  (_e158809158816_ _stx158808_)
                  (_E158811158820_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx158808_)))
                  (_E158810158834_
                   (lambda ()
                     (if (gx#stx-pair? _e158809158816_)
                         (let ((_e158812158824_ (gx#syntax-e _e158809158816_)))
                           (let ((_hd158813158827_ (##car _e158812158824_))
                                 (_tl158814158829_ (##cdr _e158812158824_)))
                             (if (and (gx#identifier? _hd158813158827_)
                                      (gx#core-identifier=?
                                       _hd158813158827_
                                       '%#begin-module))
                                 (let ((_body158832_ _tl158814158829_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx158808_)
                                           _body158832_
                                           (gx#core-expand-module-body
                                            _body158832_))
                                       (_E158811158820_)))
                                 (_E158811158820_))))
                         (_E158811158820_)))))
             (_E158810158834_)))
         gx#current-expander-context
         _ctx158805_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body158600_)
        (letrec ((_expand-special158602_
                  (lambda (_hd158731_ _K158732_ _rest158733_ _r158734_)
                    (let* ((_e158735158752_ _hd158731_)
                           (_E158747158756_
                            (lambda ()
                              (_K158732_
                               _rest158733_
                               (cons (gx#core-expand-top _hd158731_)
                                     _r158734_))))
                           (_E158737158768_
                            (lambda ()
                              (if (gx#stx-pair? _e158735158752_)
                                  (let ((_e158748158760_
                                         (gx#syntax-e _e158735158752_)))
                                    (let ((_hd158749158763_
                                           (##car _e158748158760_))
                                          (_tl158750158765_
                                           (##cdr _e158748158760_)))
                                      (if (and (gx#identifier?
                                                _hd158749158763_)
                                               (gx#core-identifier=?
                                                _hd158749158763_
                                                '%#export))
                                          (if '#t
                                              (_K158732_
                                               _rest158733_
                                               (cons _hd158731_ _r158734_))
                                              (_E158747158756_))
                                          (_E158747158756_))))
                                  (_E158747158756_))))
                           (_E158736158800_
                            (lambda ()
                              (if (gx#stx-pair? _e158735158752_)
                                  (let ((_e158738158772_
                                         (gx#syntax-e _e158735158752_)))
                                    (let ((_hd158739158775_
                                           (##car _e158738158772_))
                                          (_tl158740158777_
                                           (##cdr _e158738158772_)))
                                      (if (and (gx#identifier?
                                                _hd158739158775_)
                                               (gx#core-identifier=?
                                                _hd158739158775_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl158740158777_)
                                              (let ((_e158741158780_
                                                     (gx#syntax-e
                                                      _tl158740158777_)))
                                                (let ((_hd158742158783_
                                                       (##car _e158741158780_))
                                                      (_tl158743158785_
                                                       (##cdr _e158741158780_)))
                                                  (let ((_hd-bind158788_
                                                         _hd158742158783_))
                                                    (if (gx#stx-pair?
                                                         _tl158743158785_)
                                                        (let ((_e158744158790_
                                                               (gx#syntax-e
                                                                _tl158743158785_)))
                                                          (let ((_hd158745158793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e158744158790_))
                        (_tl158746158795_ (##cdr _e158744158790_)))
                    (let ((_expr158798_ _hd158745158793_))
                      (if (gx#stx-null? _tl158746158795_)
                          (if (gx#core-bind-values? _hd-bind158788_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind158788_)
                                (_K158732_
                                 _rest158733_
                                 (cons _hd158731_ _r158734_)))
                              (_E158737158768_))
                          (_E158737158768_)))))
                (_E158737158768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158737158768_))
                                          (_E158737158768_))))
                                  (_E158737158768_)))))
                      (_E158736158800_))))
                 (_expand-body158603_
                  (lambda (_rbody158605_)
                    (let _lp158607_ ((_rest158609_ _rbody158605_)
                                     (_body158610_ '()))
                      (let* ((_rest158611158619_ _rest158609_)
                             (_else158613158627_ (lambda () _body158610_))
                             (_K158615158719_
                              (lambda (_rest158630_ _hd158631_)
                                (let* ((_e158632158653_ _hd158631_)
                                       (_E158648158657_
                                        (lambda ()
                                          (_lp158607_
                                           _rest158630_
                                           (cons (gx#core-expand-expression
                                                  _hd158631_)
                                                 _body158610_))))
                                       (_E158644158671_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158632158653_)
                                              (let ((_e158649158661_
                                                     (gx#syntax-e
                                                      _e158632158653_)))
                                                (let ((_hd158650158664_
                                                       (##car _e158649158661_))
                                                      (_tl158651158666_
                                                       (##cdr _e158649158661_)))
                                                  (let ((_form158669_
                                                         _hd158650158664_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form158669_
                                                         gx#special-form-binding?)
                                                        (_lp158607_
                                                         _rest158630_
                                                         (cons _hd158631_
                                                               _body158610_))
                                                        (_E158648158657_)))))
                                              (_E158648158657_))))
                                       (_E158634158683_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158632158653_)
                                              (let ((_e158645158675_
                                                     (gx#syntax-e
                                                      _e158632158653_)))
                                                (let ((_hd158646158678_
                                                       (##car _e158645158675_))
                                                      (_tl158647158680_
                                                       (##cdr _e158645158675_)))
                                                  (if (and (gx#identifier?
                                                            _hd158646158678_)
                                                           (gx#core-identifier=?
                                                            _hd158646158678_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp158607_
                                                           _rest158630_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd158631_)
                         _body158610_))
                  (_E158644158671_))
              (_E158644158671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158644158671_))))
                                       (_E158633158715_
                                        (lambda ()
                                          (if (gx#stx-pair? _e158632158653_)
                                              (let ((_e158635158687_
                                                     (gx#syntax-e
                                                      _e158632158653_)))
                                                (let ((_hd158636158690_
                                                       (##car _e158635158687_))
                                                      (_tl158637158692_
                                                       (##cdr _e158635158687_)))
                                                  (if (and (gx#identifier?
                                                            _hd158636158690_)
                                                           (gx#core-identifier=?
                                                            _hd158636158690_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl158637158692_)
                                                          (let ((_e158638158695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl158637158692_)))
                    (let ((_hd158639158698_ (##car _e158638158695_))
                          (_tl158640158700_ (##cdr _e158638158695_)))
                      (let ((_hd-bind158703_ _hd158639158698_))
                        (if (gx#stx-pair? _tl158640158700_)
                            (let ((_e158641158705_
                                   (gx#syntax-e _tl158640158700_)))
                              (let ((_hd158642158708_ (##car _e158641158705_))
                                    (_tl158643158710_ (##cdr _e158641158705_)))
                                (let ((_expr158713_ _hd158642158708_))
                                  (if (gx#stx-null? _tl158643158710_)
                                      (if '#t
                                          (_lp158607_
                                           _rest158630_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind158703_)
                                                   (gx#core-expand-expression
                                                    _expr158713_))
                                                  (gx#stx-source _hd158631_))
                                                 _body158610_))
                                          (_E158634158683_))
                                      (_E158634158683_)))))
                            (_E158634158683_)))))
                  (_E158634158683_))
              (_E158634158683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158634158683_)))))
                                  (_E158633158715_)))))
                        (if (##pair? _rest158611158619_)
                            (let ((_hd158616158722_ (##car _rest158611158619_))
                                  (_tl158617158724_
                                   (##cdr _rest158611158619_)))
                              (let* ((_hd158727_ _hd158616158722_)
                                     (_rest158729_ _tl158617158724_))
                                (_K158615158719_ _rest158729_ _hd158727_)))
                            (_else158613158627_)))))))
          (_expand-body158603_
           (gx#core-expand-block__%
            (cons '%#begin-module _body158600_)
            _expand-special158602_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx158443_
               _expanded?158444_
               _method158445_
               _current-phi158446_
               _expand1158447_)
        (letrec ((_K158449_
                  (lambda (_rest158567_ _r158568_)
                    (let* ((_e158569158576_ _rest158567_)
                           (_E158571158580_ (lambda () _r158568_))
                           (_E158570158596_
                            (lambda ()
                              (if (gx#stx-pair? _e158569158576_)
                                  (let ((_e158572158584_
                                         (gx#syntax-e _e158569158576_)))
                                    (let ((_hd158573158587_
                                           (##car _e158572158584_))
                                          (_tl158574158589_
                                           (##cdr _e158572158584_)))
                                      (let* ((_hd158592_ _hd158573158587_)
                                             (_rest158594_ _tl158574158589_))
                                        (if '#t
                                            (_step158450_
                                             _hd158592_
                                             _rest158594_
                                             _r158568_)
                                            (_E158571158580_)))))
                                  (_E158571158580_)))))
                      (_E158570158596_))))
                 (_step158450_
                  (lambda (_hd158481_ _rest158482_ _r158483_)
                    (let* ((_e158484158502_ _hd158481_)
                           (_E158497158506_
                            (lambda ()
                              (if (_expanded?158444_ (gx#stx-e _hd158481_))
                                  (_K158449_
                                   _rest158482_
                                   (cons (gx#stx-e _hd158481_) _r158483_))
                                  (_expand1158447_
                                   _hd158481_
                                   _K158449_
                                   _rest158482_
                                   _r158483_))))
                           (_E158493158522_
                            (lambda ()
                              (if (gx#stx-pair? _e158484158502_)
                                  (let ((_e158498158510_
                                         (gx#syntax-e _e158484158502_)))
                                    (let ((_hd158499158513_
                                           (##car _e158498158510_))
                                          (_tl158500158515_
                                           (##cdr _e158498158510_)))
                                      (let* ((_macro158518_ _hd158499158513_)
                                             (_body158520_ _tl158500158515_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro158518_
                                             gx#syntax-binding?)
                                            (_K158449_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro158518_)
                                                    _hd158481_
                                                    _method158445_)
                                                   _rest158482_)
                                             _r158483_)
                                            (_E158497158506_)))))
                                  (_E158497158506_))))
                           (_E158486158536_
                            (lambda ()
                              (if (gx#stx-pair? _e158484158502_)
                                  (let ((_e158494158526_
                                         (gx#syntax-e _e158484158502_)))
                                    (let ((_hd158495158529_
                                           (##car _e158494158526_))
                                          (_tl158496158531_
                                           (##cdr _e158494158526_)))
                                      (if (eq? (gx#stx-e _hd158495158529_)
                                               'begin:)
                                          (let ((_body158534_
                                                 _tl158496158531_))
                                            (if '#t
                                                (_K158449_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest158482_
                                                  _body158534_)
                                                 _r158483_)
                                                (_E158493158522_)))
                                          (_E158493158522_))))
                                  (_E158493158522_))))
                           (_E158485158563_
                            (lambda ()
                              (if (gx#stx-pair? _e158484158502_)
                                  (let ((_e158487158540_
                                         (gx#syntax-e _e158484158502_)))
                                    (let ((_hd158488158543_
                                           (##car _e158487158540_))
                                          (_tl158489158545_
                                           (##cdr _e158487158540_)))
                                      (if (eq? (gx#stx-e _hd158488158543_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl158489158545_)
                                              (let ((_e158490158548_
                                                     (gx#syntax-e
                                                      _tl158489158545_)))
                                                (let ((_hd158491158551_
                                                       (##car _e158490158548_))
                                                      (_tl158492158553_
                                                       (##cdr _e158490158548_)))
                                                  (let* ((_dphi158556_
                                                          _hd158491158551_)
                                                         (_body158558_
                                                          _tl158492158553_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi158556_)
                                                        (let ((_rbody158561_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K158449_ _body158558_ '()))
                        _current-phi158446_
                        (fx+ (gx#stx-e _dphi158556_) (_current-phi158446_)))))
                  (_K158449_
                   _rest158482_
                   (foldr1 cons _r158483_ _rbody158561_)))
                (_E158486158536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E158486158536_))
                                          (_E158486158536_))))
                                  (_E158486158536_)))))
                      (_E158485158563_)))))
          (let* ((_e158451158458_ _stx158443_)
                 (_E158453158462_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e158451158458_)))
                 (_E158452158477_
                  (lambda ()
                    (if (gx#stx-pair? _e158451158458_)
                        (let ((_e158454158466_ (gx#syntax-e _e158451158458_)))
                          (let ((_hd158455158469_ (##car _e158454158466_))
                                (_tl158456158471_ (##cdr _e158454158466_)))
                            (let ((_body158474_ _tl158456158471_))
                              (if '#t
                                  (if (_current-phi158446_)
                                      (_K158449_ _body158474_ '())
                                      (call-with-parameters
                                       (lambda () (_K158449_ _body158474_ '()))
                                       _current-phi158446_
                                       (gx#current-expander-phi)))
                                  (_E158453158462_)))))
                        (_E158453158462_)))))
            (_E158452158477_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx158110_ _internal-expand?158111_)
        (letrec ((_expand1158113_
                  (lambda (_hd158423_ _K158424_ _rest158425_ _r158426_)
                    (if (gx#core-bound-module? _hd158423_)
                        (_import1158114_
                         (gx#syntax-local-e__0 _hd158423_)
                         _K158424_
                         _rest158425_
                         _r158426_)
                        (if (gx#core-library-module-path? _hd158423_)
                            (_import1158114_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd158423_))
                             _K158424_
                             _rest158425_
                             _r158426_)
                            (if (gx#core-library-relative-module-path?
                                 _hd158423_)
                                (_import1158114_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd158423_))
                                 _K158424_
                                 _rest158425_
                                 _r158426_)
                                (let ((_e158428_ (gx#stx-e _hd158423_)))
                                  (if (pair? _e158428_)
                                      (let ((_$e158430_
                                             (gx#stx-e (car _e158428_))))
                                        (if (eq? 'spec: _$e158430_)
                                            (_import-spec158117_
                                             _hd158423_
                                             _K158424_
                                             _rest158425_
                                             _r158426_)
                                            (if (eq? 'in: _$e158430_)
                                                (_import-submodule158115_
                                                 _hd158423_
                                                 _K158424_
                                                 _rest158425_
                                                 _r158426_)
                                                (if (eq? 'runtime: _$e158430_)
                                                    (_import-runtime158116_
                                                     _hd158423_
                                                     _K158424_
                                                     _rest158425_
                                                     _r158426_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx158110_
                                                     _hd158423_)))))
                                      (if (string? _e158428_)
                                          (_import1158114_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd158423_
                                             (gx#stx-source _stx158110_)))
                                           _K158424_
                                           _rest158425_
                                           _r158426_)
                                          (if (##structure-instance-of?
                                               _e158428_
                                               'gx#module-context::t)
                                              (_K158424_
                                               _rest158425_
                                               (cons _e158428_ _r158426_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx158110_
                                               _hd158423_))))))))))
                 (_import1158114_
                  (lambda (_ctx158412_ _K158413_ _rest158414_ _r158415_)
                    (let ((_dphi158417_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K158413_
                       _rest158414_
                       (cons (##structure
                              gx#import-set::t
                              _ctx158412_
                              _dphi158417_
                              (map (lambda (_g158418158420_)
                                     (gx#core-module-export->import__%
                                      _g158418158420_
                                      '#f
                                      _dphi158417_))
                                   (##unchecked-structure-ref
                                    _ctx158412_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r158415_)))))
                 (_import-submodule158115_
                  (lambda (_hd158379_ _K158380_ _rest158381_ _r158382_)
                    (let* ((_e158383158390_ _hd158379_)
                           (_E158385158394_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158383158390_)))
                           (_E158384158408_
                            (lambda ()
                              (if (gx#stx-pair? _e158383158390_)
                                  (let ((_e158386158398_
                                         (gx#syntax-e _e158383158390_)))
                                    (let ((_hd158387158401_
                                           (##car _e158386158398_))
                                          (_tl158388158403_
                                           (##cdr _e158386158398_)))
                                      (let ((_spath158406_ _tl158388158403_))
                                        (if '#t
                                            (_import1158114_
                                             (_import-spec-source158118_
                                              _spath158406_)
                                             _K158380_
                                             _rest158381_
                                             _r158382_)
                                            (_E158385158394_)))))
                                  (_E158385158394_)))))
                      (_E158384158408_))))
                 (_import-runtime158116_
                  (lambda (_hd158346_ _K158347_ _rest158348_ _r158349_)
                    (let* ((_e158350158357_ _hd158346_)
                           (_E158352158361_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158350158357_)))
                           (_E158351158375_
                            (lambda ()
                              (if (gx#stx-pair? _e158350158357_)
                                  (let ((_e158353158365_
                                         (gx#syntax-e _e158350158357_)))
                                    (let ((_hd158354158368_
                                           (##car _e158353158365_))
                                          (_tl158355158370_
                                           (##cdr _e158353158365_)))
                                      (let ((_spath158373_ _tl158355158370_))
                                        (if '#t
                                            (_K158347_
                                             _rest158348_
                                             (cons (_import-spec-source158118_
                                                    _spath158373_)
                                                   _r158349_))
                                            (_E158352158361_)))))
                                  (_E158352158361_)))))
                      (_E158351158375_))))
                 (_import-spec158117_
                  (lambda (_hd158185_ _K158186_ _rest158187_ _r158188_)
                    (let* ((_e158189158206_ _hd158185_)
                           (_E158198158210_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e158189158206_)))
                           (_E158191158320_
                            (lambda ()
                              (if (gx#stx-pair? _e158189158206_)
                                  (let ((_e158199158214_
                                         (gx#syntax-e _e158189158206_)))
                                    (let ((_hd158200158217_
                                           (##car _e158199158214_))
                                          (_tl158201158219_
                                           (##cdr _e158199158214_)))
                                      (if (gx#stx-pair? _tl158201158219_)
                                          (let ((_e158202158222_
                                                 (gx#syntax-e
                                                  _tl158201158219_)))
                                            (let ((_hd158203158225_
                                                   (##car _e158202158222_))
                                                  (_tl158204158227_
                                                   (##cdr _e158202158222_)))
                                              (let* ((_path158230_
                                                      _hd158203158225_)
                                                     (_specs158232_
                                                      _tl158204158227_))
                                                (if '#t
                                                    (let ((_src-ctx158234_
                                                           (_import-spec-source158118_
                                                            _path158230_))
                                                          (_exports158235_
                                                           (make-table))
                                                          (_specs158236_
                                                           (gx#syntax->list
                                                            _specs158232_)))
                                                      (for-each
                                                       (lambda (_out158238_)
                                                         (table-set!
                                                          _exports158235_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out158238_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out158238_
                         '4
                         gx#module-export::t
                         '#f))
                  _out158238_))
               (##unchecked-structure-ref
                _src-ctx158234_
                '9
                gx#module-context::t
                '#f))
              (_K158186_
               _rest158187_
               (foldl1 (lambda (_spec158240_ _r158241_)
                         (let* ((_e158242158258_ _spec158240_)
                                (_E158244158262_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e158242158258_)))
                                (_E158243158316_
                                 (lambda ()
                                   (if (gx#stx-pair? _e158242158258_)
                                       (let ((_e158245158266_
                                              (gx#syntax-e _e158242158258_)))
                                         (let ((_hd158246158269_
                                                (##car _e158245158266_))
                                               (_tl158247158271_
                                                (##cdr _e158245158266_)))
                                           (let ((_phi158274_
                                                  _hd158246158269_))
                                             (if (gx#stx-pair?
                                                  _tl158247158271_)
                                                 (let ((_e158248158276_
                                                        (gx#syntax-e
                                                         _tl158247158271_)))
                                                   (let ((_hd158249158279_
                                                          (##car _e158248158276_))
                                                         (_tl158250158281_
                                                          (##cdr _e158248158276_)))
                                                     (let ((_name158284_
                                                            _hd158249158279_))
                                                       (if (gx#stx-pair?
                                                            _tl158250158281_)
                                                           (let ((_e158251158286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl158250158281_)))
                     (let ((_hd158252158289_ (##car _e158251158286_))
                           (_tl158253158291_ (##cdr _e158251158286_)))
                       (let ((_src-phi158294_ _hd158252158289_))
                         (if (gx#stx-pair? _tl158253158291_)
                             (let ((_e158254158296_
                                    (gx#syntax-e _tl158253158291_)))
                               (let ((_hd158255158299_ (##car _e158254158296_))
                                     (_tl158256158301_
                                      (##cdr _e158254158296_)))
                                 (let ((_src-name158304_ _hd158255158299_))
                                   (if (gx#stx-null? _tl158256158301_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi158294_)
                                                (gx#identifier?
                                                 _src-name158304_)
                                                (gx#stx-fixnum? _phi158274_)
                                                (gx#identifier? _name158284_))
                                           (let ((_src-phi158306_
                                                  (gx#stx-e _src-phi158294_))
                                                 (_src-name158307_
                                                  (gx#core-identifier-key
                                                   _src-name158304_))
                                                 (_phi158308_
                                                  (gx#stx-e _phi158274_))
                                                 (_name158309_
                                                  (gx#core-identifier-key
                                                   _name158284_)))
                                             (let ((_$e158311_
                                                    (table-ref
                                                     _exports158235_
                                                     (cons _src-phi158306_
                                                           _src-name158307_)
                                                     '#f)))
                                               (if _$e158311_
                                                   ((lambda (_out158314_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out158314_
                                                             _name158309_
                                                             (fx- _phi158308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi158306_))
                    _r158241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e158311_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx158110_
                                                    _hd158185_))))
                                           (_E158244158262_))
                                       (_E158244158262_)))))
                             (_E158244158262_)))))
                   (_E158244158262_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E158244158262_)))))
                                       (_E158244158262_)))))
                           (_E158243158316_)))
                       _r158188_
                       _specs158236_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E158198158210_)))))
                                          (_E158198158210_))))
                                  (_E158198158210_))))
                           (_E158190158342_
                            (lambda ()
                              (if (gx#stx-pair? _e158189158206_)
                                  (let ((_e158192158324_
                                         (gx#syntax-e _e158189158206_)))
                                    (let ((_hd158193158327_
                                           (##car _e158192158324_))
                                          (_tl158194158329_
                                           (##cdr _e158192158324_)))
                                      (if (gx#stx-pair? _tl158194158329_)
                                          (let ((_e158195158332_
                                                 (gx#syntax-e
                                                  _tl158194158329_)))
                                            (let ((_hd158196158335_
                                                   (##car _e158195158332_))
                                                  (_tl158197158337_
                                                   (##cdr _e158195158332_)))
                                              (let ((_path158340_
                                                     _hd158196158335_))
                                                (if (gx#stx-null?
                                                     _tl158197158337_)
                                                    (if '#t
                                                        (_K158186_
                                                         _rest158187_
                                                         (cons (_import-spec-source158118_
                                                                _path158340_)
                                                               _r158188_))
                                                        (_E158191158320_))
                                                    (_E158191158320_)))))
                                          (_E158191158320_))))
                                  (_E158191158320_)))))
                      (_E158190158342_))))
                 (_import-spec-source158118_
                  (lambda (_spath158183_)
                    (gx#core-import-nested-module _spath158183_ _stx158110_)))
                 (_import!158119_
                  (lambda (_rbody158132_)
                    (letrec* ((_current-ctx158134_
                               (gx#current-expander-context))
                              (_deps158135_ (make-table 'test: eq?))
                              (_bind!158136_
                               (lambda (_hd158181_)
                                 (gx#core-bind-import!__1
                                  _hd158181_
                                  _current-ctx158134_))))
                      (let _lp158138_ ((_rest158140_ _rbody158132_)
                                       (_body158141_ '()))
                        (let* ((_rest158142158150_ _rest158140_)
                               (_else158144158160_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx158134_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx158134_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx158134_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body158141_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx158158_ _g165456_)
                                     (gx#eval-module _ctx158158_))
                                   _deps158135_)
                                  _body158141_))
                               (_K158146158169_
                                (lambda (_rest158163_ _hd158164_)
                                  (if (##structure-direct-instance-of?
                                       _hd158164_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!158136_ _hd158164_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd158164_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd158164_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps158135_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd158164_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd158164_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!158136_
                                             (##unchecked-structure-ref
                                              _hd158164_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd158164_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps158135_
                                                 (##unchecked-structure-ref
                                                  _hd158164_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e158166_
                                                 (##structure-instance-of?
                                                  _hd158164_
                                                  'gx#module-context::t)))
                                            (if _$e158166_
                                                _$e158166_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx158110_
                                                 _hd158164_)))))
                                  (_lp158138_
                                   _rest158163_
                                   (cons _hd158164_ _body158141_)))))
                          (if (##pair? _rest158142158150_)
                              (let ((_hd158147158172_
                                     (##car _rest158142158150_))
                                    (_tl158148158174_
                                     (##cdr _rest158142158150_)))
                                (let* ((_hd158177_ _hd158147158172_)
                                       (_rest158179_ _tl158148158174_))
                                  (_K158146158169_ _rest158179_ _hd158177_)))
                              (_else158144158160_)))))))
                 (_expanded-import?158120_
                  (lambda (_e158124_)
                    (let ((_$e158126_
                           (##structure-direct-instance-of?
                            _e158124_
                            'gx#import-set::t)))
                      (if _$e158126_
                          _$e158126_
                          (let ((_$e158129_
                                 (##structure-direct-instance-of?
                                  _e158124_
                                  'gx#module-import::t)))
                            (if _$e158129_
                                _$e158129_
                                (##structure-instance-of?
                                 _e158124_
                                 'gx#module-context::t))))))))
          (let ((_rbody158122_
                 (gx#core-expand-import/export
                  _stx158110_
                  _expanded-import?158120_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1158113_)))
            (if _internal-expand?158111_
                (reverse _rbody158122_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!158119_ _rbody158122_))
                 (gx#stx-source _stx158110_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx158436_)
        (let ((_internal-expand?158438_ '#f))
          (gx#core-expand-import%__% _stx158436_ _internal-expand?158438_))))
    (define gx#core-expand-import%
      (lambda _g165458_
        (let ((_g165457_ (##length _g165458_)))
          (cond ((##fx= _g165457_ 1)
                 (apply (lambda (_stx158436_)
                          (gx#core-expand-import%__0 _stx158436_))
                        _g165458_))
                ((##fx= _g165457_ 2)
                 (apply (lambda (_stx158440_ _internal-expand?158441_)
                          (gx#core-expand-import%__%
                           _stx158440_
                           _internal-expand?158441_))
                        _g165458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g165458_))))))
    (define gx#core-import-nested-module
      (lambda (_spath158037_ _where158038_)
        (let* ((_e158039158046_ _spath158037_)
               (_E158041158050_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e158039158046_)))
               (_E158040158105_
                (lambda ()
                  (if (gx#stx-pair? _e158039158046_)
                      (let ((_e158042158054_ (gx#syntax-e _e158039158046_)))
                        (let ((_hd158043158057_ (##car _e158042158054_))
                              (_tl158044158059_ (##cdr _e158042158054_)))
                          (let* ((_origin158062_ _hd158043158057_)
                                 (_sub158064_ _tl158044158059_))
                            (if '#t
                                (let ((_origin-ctx158066_
                                       (if (gx#stx-false? _origin158062_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin158062_))))
                                  (let _lp158068_ ((_rest158070_ _sub158064_)
                                                   (_ctx158071_
                                                    _origin-ctx158066_))
                                    (let* ((_e158072158079_ _rest158070_)
                                           (_E158074158083_
                                            (lambda () _ctx158071_))
                                           (_E158073158101_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e158072158079_)
                                                  (let ((_e158075158087_
                                                         (gx#syntax-e
                                                          _e158072158079_)))
                                                    (let ((_hd158076158090_
                                                           (##car _e158075158087_))
                                                          (_tl158077158092_
                                                           (##cdr _e158075158087_)))
                                                      (let* ((_id158095_
                                                              _hd158076158090_)
                                                             (_rest158097_
                                                              _tl158077158092_))
                                                        (if '#t
                                                            (let ((_bind158099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id158095_
                            '0
                            _ctx158071_)))
                      (if (and (##structure-direct-instance-of?
                                _bind158099_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind158099_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where158038_
                           _spath158037_
                           _id158095_))
                      (_lp158068_
                       _rest158097_
                       (##unchecked-structure-ref
                        _bind158099_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E158074158083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E158074158083_)))))
                                      (_E158073158101_))))
                                (_E158041158050_)))))
                      (_E158041158050_)))))
          (_E158040158105_))))
    (define gx#core-expand-import-source
      (lambda (_hd158035_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd158035_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx157543_ _internal-expand?157544_)
        (letrec* ((_make-export__165387165388_
                   (lambda (_bind157983_ _phi157984_ _ctx157985_ _name157986_)
                     (let* ((_key157988_
                             (##unchecked-structure-ref
                              _bind157983_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key157990_
                             (if _name157986_
                                 (gx#core-identifier-key _name157986_)
                                 _key157988_)))
                       (##structure
                        gx#module-export::t
                        _ctx157985_
                        _key157988_
                        _phi157984_
                        _export-key157990_
                        (let ((_$e157993_
                               (##structure-instance-of?
                                _bind157983_
                                'gx#extern-binding::t)))
                          (if _$e157993_
                              _$e157993_
                              (##structure-direct-instance-of?
                               _bind157983_
                               'gx#import-binding::t)))))))
                  (_make-export__0__165389165392_
                   (lambda (_bind157999_)
                     (let* ((_phi158001_ (gx#current-export-expander-phi))
                            (_ctx158003_ (gx#current-expander-context))
                            (_name158005_ '#f))
                       (_make-export__165387165388_
                        _bind157999_
                        _phi158001_
                        _ctx158003_
                        _name158005_))))
                  (_make-export__1__165390165393_
                   (lambda (_bind158007_ _phi158008_)
                     (let* ((_ctx158010_ (gx#current-expander-context))
                            (_name158012_ '#f))
                       (_make-export__165387165388_
                        _bind158007_
                        _phi158008_
                        _ctx158010_
                        _name158012_))))
                  (_make-export__2__165391165394_
                   (lambda (_bind158014_ _phi158015_ _ctx158016_)
                     (let ((_name158018_ '#f))
                       (_make-export__165387165388_
                        _bind158014_
                        _phi158015_
                        _ctx158016_
                        _name158018_))))
                  (_make-export157546_
                   (lambda _g165460_
                     (let ((_g165459_ (##length _g165460_)))
                       (cond ((##fx= _g165459_ 1)
                              (apply (lambda (_bind157999_)
                                       (_make-export__0__165389165392_
                                        _bind157999_))
                                     _g165460_))
                             ((##fx= _g165459_ 2)
                              (apply (lambda (_bind158007_ _phi158008_)
                                       (_make-export__1__165390165393_
                                        _bind158007_
                                        _phi158008_))
                                     _g165460_))
                             ((##fx= _g165459_ 3)
                              (apply (lambda (_bind158014_
                                              _phi158015_
                                              _ctx158016_)
                                       (_make-export__2__165391165394_
                                        _bind158014_
                                        _phi158015_
                                        _ctx158016_))
                                     _g165460_))
                             ((##fx= _g165459_ 4)
                              (apply (lambda (_bind158020_
                                              _phi158021_
                                              _ctx158022_
                                              _name158023_)
                                       (_make-export__165387165388_
                                        _bind158020_
                                        _phi158021_
                                        _ctx158022_
                                        _name158023_))
                                     _g165460_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g165460_))))))
                  (_expand1157547_
                   (lambda (_hd157696_ _K157697_ _rest157698_ _r157699_)
                     (let* ((_e157700157732_ _hd157696_)
                            (_E157727157736_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx157543_
                                _hd157696_)))
                            (_E157717157815_
                             (lambda ()
                               (if (gx#stx-pair? _e157700157732_)
                                   (let ((_e157728157740_
                                          (gx#syntax-e _e157700157732_)))
                                     (let ((_hd157729157743_
                                            (##car _e157728157740_))
                                           (_tl157730157745_
                                            (##cdr _e157728157740_)))
                                       (if (eq? (gx#stx-e _hd157729157743_)
                                                'import:)
                                           (let ((_in157748_ _tl157730157745_))
                                             (if (gx#stx-list? _in157748_)
                                                 (let _lp157750_ ((_in-rest157752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in157748_)
                          (_r157753_ _r157699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e157754157761_
                                                           _in-rest157752_)
                                                          (_E157756157765_
                                                           (lambda ()
                                                             (_K157697_
                                                              _rest157698_
                                                              _r157753_)))
                                                          (_E157755157811_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e157754157761_)
                         (let ((_e157757157769_ (gx#syntax-e _e157754157761_)))
                           (let ((_hd157758157772_ (##car _e157757157769_))
                                 (_tl157759157774_ (##cdr _e157757157769_)))
                             (let* ((_hd157777_ _hd157758157772_)
                                    (_in-rest157779_ _tl157759157774_))
                               (if '#t
                                   (let ((_src157809_
                                          (if (gx#core-bound-module?
                                               _hd157777_)
                                              (gx#syntax-local-e__0 _hd157777_)
                                              (if (gx#core-library-module-path?
                                                   _hd157777_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd157777_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd157777_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd157777_))
                                                      (if (gx#stx-string?
                                                           _hd157777_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd157777_
                                                            (gx#stx-source
                                                             _stx157543_)))
                                                          (let* ((_e157780157787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd157777_)
                         (_E157782157791_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx157543_
                             _hd157777_)))
                         (_E157781157805_
                          (lambda ()
                            (if (gx#stx-pair? _e157780157787_)
                                (let ((_e157783157795_
                                       (gx#syntax-e _e157780157787_)))
                                  (let ((_hd157784157798_
                                         (##car _e157783157795_))
                                        (_tl157785157800_
                                         (##cdr _e157783157795_)))
                                    (if (eq? (gx#stx-e _hd157784157798_) 'in:)
                                        (let ((_spath157803_ _tl157785157800_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath157803_
                                               _stx157543_)
                                              (_E157782157791_)))
                                        (_E157782157791_))))
                                (_E157782157791_)))))
                    (_E157781157805_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp157750_
                                      _in-rest157779_
                                      (_export-imports157548_
                                       _src157809_
                                       _r157753_)))
                                   (_E157756157765_)))))
                         (_E157756157765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E157755157811_)))
                                                 (_E157727157736_)))
                                           (_E157727157736_))))
                                   (_E157727157736_))))
                            (_E157704157854_
                             (lambda ()
                               (if (gx#stx-pair? _e157700157732_)
                                   (let ((_e157718157819_
                                          (gx#syntax-e _e157700157732_)))
                                     (let ((_hd157719157822_
                                            (##car _e157718157819_))
                                           (_tl157720157824_
                                            (##cdr _e157718157819_)))
                                       (if (eq? (gx#stx-e _hd157719157822_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl157720157824_)
                                               (let ((_e157721157827_
                                                      (gx#syntax-e
                                                       _tl157720157824_)))
                                                 (let ((_hd157722157830_
                                                        (##car _e157721157827_))
                                                       (_tl157723157832_
                                                        (##cdr _e157721157827_)))
                                                   (let ((_id157835_
                                                          _hd157722157830_))
                                                     (if (gx#stx-pair?
                                                          _tl157723157832_)
                                                         (let ((_e157724157837_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157723157832_)))
                   (let ((_hd157725157840_ (##car _e157724157837_))
                         (_tl157726157842_ (##cdr _e157724157837_)))
                     (let ((_name157845_ _hd157725157840_))
                       (if (gx#stx-null? _tl157726157842_)
                           (if '#t
                               (let* ((_phi157847_
                                       (gx#current-export-expander-phi))
                                      (_$e157849_
                                       (gx#core-resolve-identifier__1
                                        _id157835_
                                        _phi157847_)))
                                 (if _$e157849_
                                     ((lambda (_bind157852_)
                                        (_K157697_
                                         _rest157698_
                                         (cons (_make-export__165387165388_
                                                _bind157852_
                                                _phi157847_
                                                (gx#current-expander-context)
                                                _name157845_)
                                               _r157699_)))
                                      _$e157849_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx157543_
                                      _hd157696_
                                      _id157835_)))
                               (_E157717157815_))
                           (_E157717157815_)))))
                 (_E157717157815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157717157815_))
                                           (_E157717157815_))))
                                   (_E157717157815_))))
                            (_E157703157903_
                             (lambda ()
                               (if (gx#stx-pair? _e157700157732_)
                                   (let ((_e157705157858_
                                          (gx#syntax-e _e157700157732_)))
                                     (let ((_hd157706157861_
                                            (##car _e157705157858_))
                                           (_tl157707157863_
                                            (##cdr _e157705157858_)))
                                       (if (eq? (gx#stx-e _hd157706157861_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl157707157863_)
                                               (let ((_e157708157866_
                                                      (gx#syntax-e
                                                       _tl157707157863_)))
                                                 (let ((_hd157709157869_
                                                        (##car _e157708157866_))
                                                       (_tl157710157871_
                                                        (##cdr _e157708157866_)))
                                                   (let ((_phi157874_
                                                          _hd157709157869_))
                                                     (if (gx#stx-pair?
                                                          _tl157710157871_)
                                                         (let ((_e157711157876_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl157710157871_)))
                   (let ((_hd157712157879_ (##car _e157711157876_))
                         (_tl157713157881_ (##cdr _e157711157876_)))
                     (let ((_id157884_ _hd157712157879_))
                       (if (gx#stx-pair? _tl157713157881_)
                           (let ((_e157714157886_
                                  (gx#syntax-e _tl157713157881_)))
                             (let ((_hd157715157889_ (##car _e157714157886_))
                                   (_tl157716157891_ (##cdr _e157714157886_)))
                               (let ((_name157894_ _hd157715157889_))
                                 (if (gx#stx-null? _tl157716157891_)
                                     (if (and (gx#stx-fixnum? _phi157874_)
                                              (gx#identifier? _id157884_)
                                              (gx#identifier? _name157894_))
                                         (let* ((_phi157896_
                                                 (gx#stx-e _phi157874_))
                                                (_$e157898_
                                                 (gx#core-resolve-identifier__1
                                                  _id157884_
                                                  _phi157896_)))
                                           (if _$e157898_
                                               ((lambda (_bind157901_)
                                                  (_K157697_
                                                   _rest157698_
                                                   (cons (_make-export__165387165388_
                                                          _bind157901_
                                                          _phi157896_
                                                          (gx#current-expander-context)
                                                          _name157894_)
                                                         _r157699_)))
                                                _$e157898_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx157543_
                                                _hd157696_
                                                _id157884_)))
                                         (_E157704157854_))
                                     (_E157704157854_)))))
                           (_E157704157854_)))))
                 (_E157704157854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E157704157854_))
                                           (_E157704157854_))))
                                   (_E157704157854_))))
                            (_E157702157914_
                             (lambda ()
                               (let ((_id157907_ _e157700157732_))
                                 (if (gx#identifier? _id157907_)
                                     (let ((_$e157909_
                                            (gx#core-resolve-identifier__1
                                             _id157907_
                                             (gx#current-export-expander-phi))))
                                       (if _$e157909_
                                           ((lambda (_bind157912_)
                                              (_K157697_
                                               _rest157698_
                                               (cons (_make-export__0__165389165392_
                                                      _bind157912_)
                                                     _r157699_)))
                                            _$e157909_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx157543_
                                            _hd157696_)))
                                     (_E157703157903_)))))
                            (_E157701157978_
                             (lambda ()
                               (if (eq? (gx#stx-e _e157700157732_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx157918_
                                               (gx#current-expander-context))
                                              (_current-phi157920_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx157922_
                                               (gx#core-context-shift
                                                _current-ctx157918_
                                                _current-phi157920_))
                                              (_phi-bind157924_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx157922_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp157927_ ((_bind-rest157929_
                                                           _phi-bind157924_)
                                                          (_set157930_ '()))
                                           (let* ((_bind-rest157931157941_
                                                   _bind-rest157929_)
                                                  (_else157933157949_
                                                   (lambda ()
                                                     (_K157697_
                                                      _rest157698_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi157920_
                                                             _set157930_)
                                                            _r157699_))))
                                                  (_K157935157959_
                                                   (lambda (_bind-rest157952_
                                                            _bind157953_
                                                            _key157954_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind157953_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind157953_))
                                                         (_lp157927_
                                                          _bind-rest157952_
                                                          _set157930_)
                                                         (_lp157927_
                                                          _bind-rest157952_
                                                          (cons (_make-export__2__165391165394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind157953_
                         _current-phi157920_
                         _current-ctx157918_)
                        _set157930_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest157931157941_)
                                                 (let ((_hd157936157962_
                                                        (##car _bind-rest157931157941_))
                                                       (_tl157937157964_
                                                        (##cdr _bind-rest157931157941_)))
                                                   (if (##pair? _hd157936157962_)
                                                       (let ((_hd157938157967_
                                                              (##car _hd157936157962_))
                                                             (_tl157939157969_
                                                              (##cdr _hd157936157962_)))
                                                         (let* ((_key157972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd157938157967_)
                        (_bind157974_ _tl157939157969_)
                        (_bind-rest157976_ _tl157937157964_))
                   (_K157935157959_
                    _bind-rest157976_
                    _bind157974_
                    _key157972_)))
               (_else157933157949_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else157933157949_)))))
                                       (_E157702157914_))
                                   (_E157702157914_)))))
                       (_E157701157978_))))
                  (_export-imports157548_
                   (lambda (_src157572_ _r157573_)
                     (letrec* ((_current-ctx157575_
                                (gx#current-expander-context))
                               (_current-phi157576_
                                (gx#current-export-expander-phi))
                               (_import->export157577_
                                (lambda (_in157658_)
                                  (let* ((_in157659157667_ _in157658_)
                                         (_E157661157671_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in157659157667_)))
                                         (_K157662157678_
                                          (lambda (_phi157674_
                                                   _key157675_
                                                   _out157676_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx157575_
                                             _key157675_
                                             _phi157674_
                                             _key157675_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in157659157667_
                                         'gx#module-import::t)
                                        (let* ((_e157663157681_
                                                (##unchecked-structure-ref
                                                 _in157659157667_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out157684_ _e157663157681_)
                                               (_e157664157686_
                                                (##unchecked-structure-ref
                                                 _in157659157667_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key157689_ _e157664157686_)
                                               (_e157665157691_
                                                (##unchecked-structure-ref
                                                 _in157659157667_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi157694_ _e157665157691_))
                                          (_K157662157678_
                                           _phi157694_
                                           _key157689_
                                           _out157684_))
                                        (_E157661157671_)))))
                               (_fold-e157578_
                                (lambda (_in157580_ _r157581_)
                                  (let* ((_in157582157596_ _in157580_)
                                         (_else157585157604_
                                          (lambda () _r157581_)))
                                    (let ((_K157591157640_
                                           (lambda (_phi157636_
                                                    _key157637_
                                                    _out157638_)
                                             (if (and (fx= _phi157636_
                                                           _current-phi157576_)
                                                      (eq? _src157572_
                                                           (##unchecked-structure-ref
                                                            _out157638_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export157577_
                                                        _in157580_)
                                                       _r157581_)
                                                 _r157581_)))
                                          (_K157587157615_
                                           (lambda (_imports157608_
                                                    _phi157609_
                                                    _ctx157610_)
                                             (if (and (fx= _phi157609_
                                                           _current-phi157576_)
                                                      (eq? _src157572_
                                                           _ctx157610_))
                                                 (foldl1 (lambda (_in157612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r157613_)
                   (cons (_import->export157577_ _in157612_) _r157613_))
                 _r157581_
                 _imports157608_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r157581_))))
                                      (let ((_try-match157584157633_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in157582157596_
                                                    'gx#import-set::t)
                                                   (let* ((_e157588157618_
                                                           (##unchecked-structure-ref
                                                            _in157582157596_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157589157623_
                                                           (##unchecked-structure-ref
                                                            _in157582157596_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e157590157628_
                                                           (##unchecked-structure-ref
                                                            _in157582157596_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx157621_
                                                            _e157588157618_)
                                                           (_phi157626_
                                                            _e157589157623_)
                                                           (_imports157631_
                                                            _e157590157628_))
                                                       (_K157587157615_
                                                        _imports157631_
                                                        _phi157626_
                                                        _ctx157621_)))
                                                   (_else157585157604_)))))
                                        (if (##structure-direct-instance-of?
                                             _in157582157596_
                                             'gx#module-import::t)
                                            (let* ((_e157592157643_
                                                    (##unchecked-structure-ref
                                                     _in157582157596_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157593157648_
                                                    (##unchecked-structure-ref
                                                     _in157582157596_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e157594157653_
                                                    (##unchecked-structure-ref
                                                     _in157582157596_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out157646_
                                                     _e157592157643_)
                                                    (_key157651_
                                                     _e157593157648_)
                                                    (_phi157656_
                                                     _e157594157653_))
                                                (_K157591157640_
                                                 _phi157656_
                                                 _key157651_
                                                 _out157646_)))
                                            (_try-match157584157633_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src157572_
                              _current-phi157576_
                              (foldl1 _fold-e157578_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx157575_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r157573_))))
                  (_export!157549_
                   (lambda (_rbody157562_)
                     (letrec* ((_current-ctx157564_
                                (gx#current-expander-context))
                               (_fold-e157565_
                                (lambda (_out157569_ _r157570_)
                                  (if (##structure-direct-instance-of?
                                       _out157569_
                                       'gx#module-export::t)
                                      (cons _out157569_ _r157570_)
                                      (if (##structure-direct-instance-of?
                                           _out157569_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r157570_
                                                  (##unchecked-structure-ref
                                                   _out157569_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r157570_)))))
                       (let ((_body157567_ (reverse _rbody157562_)))
                         (##unchecked-structure-set!
                          _current-ctx157564_
                          (foldl1 _fold-e157565_
                                  (##unchecked-structure-ref
                                   _current-ctx157564_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body157567_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body157567_))))
                  (_expanded-export?157550_
                   (lambda (_e157557_)
                     (let ((_$e157559_
                            (##structure-direct-instance-of?
                             _e157557_
                             'gx#module-export::t)))
                       (if _$e157559_
                           _$e157559_
                           (##structure-direct-instance-of?
                            _e157557_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?157544_)
              (let ((_rbody157555_
                     (gx#core-expand-import/export
                      _stx157543_
                      _expanded-export?157550_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1157547_)))
                (if _internal-expand?157544_
                    (reverse _rbody157555_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!157549_ _rbody157555_))
                     (gx#stx-source _stx157543_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx157543_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx157543_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx158028_)
        (let ((_internal-expand?158030_ '#f))
          (gx#core-expand-export%__% _stx158028_ _internal-expand?158030_))))
    (define gx#core-expand-export%
      (lambda _g165462_
        (let ((_g165461_ (##length _g165462_)))
          (cond ((##fx= _g165461_ 1)
                 (apply (lambda (_stx158028_)
                          (gx#core-expand-export%__0 _stx158028_))
                        _g165462_))
                ((##fx= _g165461_ 2)
                 (apply (lambda (_stx158032_ _internal-expand?158033_)
                          (gx#core-expand-export%__%
                           _stx158032_
                           _internal-expand?158033_))
                        _g165462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g165462_))))))
    (define gx#core-expand-export-source
      (lambda (_hd157540_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd157540_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx157510_)
        (let* ((_e157511157518_ _stx157510_)
               (_E157513157522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157511157518_)))
               (_E157512157536_
                (lambda ()
                  (if (gx#stx-pair? _e157511157518_)
                      (let ((_e157514157526_ (gx#syntax-e _e157511157518_)))
                        (let ((_hd157515157529_ (##car _e157514157526_))
                              (_tl157516157531_ (##cdr _e157514157526_)))
                          (let ((_body157534_ _tl157516157531_))
                            (if (gx#identifier-list? _body157534_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body157534_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body157534_))
                                   (gx#stx-source _stx157510_)))
                                (_E157513157522_)))))
                      (_E157513157522_)))))
          (_E157512157536_))))
    (define gx#core-bind-feature!__%
      (lambda (_id157476_ _private?157477_ _phi157478_ _ctx157479_)
        (gx#core-bind-syntax!__%
         _id157476_
         ((if _private?157477_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id157476_))
         _private?157477_
         _phi157478_
         _ctx157479_)))
    (define gx#core-bind-feature!__0
      (lambda (_id157484_)
        (let* ((_private?157486_ '#f)
               (_phi157488_ (gx#current-expander-phi))
               (_ctx157490_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157484_
           _private?157486_
           _phi157488_
           _ctx157490_))))
    (define gx#core-bind-feature!__1
      (lambda (_id157492_ _private?157493_)
        (let* ((_phi157495_ (gx#current-expander-phi))
               (_ctx157497_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157492_
           _private?157493_
           _phi157495_
           _ctx157497_))))
    (define gx#core-bind-feature!__2
      (lambda (_id157499_ _private?157500_ _phi157501_)
        (let ((_ctx157503_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id157499_
           _private?157500_
           _phi157501_
           _ctx157503_))))
    (define gx#core-bind-feature!
      (lambda _g165464_
        (let ((_g165463_ (##length _g165464_)))
          (cond ((##fx= _g165463_ 1)
                 (apply (lambda (_id157484_)
                          (gx#core-bind-feature!__0 _id157484_))
                        _g165464_))
                ((##fx= _g165463_ 2)
                 (apply (lambda (_id157492_ _private?157493_)
                          (gx#core-bind-feature!__1
                           _id157492_
                           _private?157493_))
                        _g165464_))
                ((##fx= _g165463_ 3)
                 (apply (lambda (_id157499_ _private?157500_ _phi157501_)
                          (gx#core-bind-feature!__2
                           _id157499_
                           _private?157500_
                           _phi157501_))
                        _g165464_))
                ((##fx= _g165463_ 4)
                 (apply (lambda (_id157505_
                                 _private?157506_
                                 _phi157507_
                                 _ctx157508_)
                          (gx#core-bind-feature!__%
                           _id157505_
                           _private?157506_
                           _phi157507_
                           _ctx157508_))
                        _g165464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g165464_))))))))
