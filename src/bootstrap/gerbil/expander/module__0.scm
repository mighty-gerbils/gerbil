(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707565660)
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
      (lambda _$args155525_
        (apply make-struct-instance gx#module-import::t _$args155525_)))
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
      (lambda _$args155522_
        (apply make-struct-instance gx#module-export::t _$args155522_)))
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
      (lambda _$args155519_
        (apply make-struct-instance gx#import-set::t _$args155519_)))
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
      (lambda _$args155516_
        (apply make-struct-instance gx#export-set::t _$args155516_)))
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
      (lambda _$args155513_
        (apply make-class-instance gx#import-expander::t _$args155513_)))
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
      (lambda _$args155510_
        (apply make-class-instance gx#export-expander::t _$args155510_)))
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
      (lambda _$args155507_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args155507_)))
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
      (lambda (_path155504_ _fun155505_)
        (call-with-input-file
         (cons 'path: (cons _path155504_ gx#source-file-settings))
         _fun155505_)))
    (define gx#module-context:::init!
      (lambda (_self155498_ _id155499_ _super155500_ _ns155501_ _path155502_)
        (if (##fx< '11 (##structure-length _self155498_))
            (begin
              (##unchecked-structure-set!
               _self155498_
               _id155499_
               '1
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               (make-table 'test: eq?)
               '2
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               _super155500_
               '3
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               '#f
               '4
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               '#f
               '5
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               _ns155501_
               '6
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               _path155502_
               '7
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               '()
               '8
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               '()
               '9
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               '#f
               '10
               (##structure-type _self155498_)
               '#f)
              (##unchecked-structure-set!
               _self155498_
               '#f
               '11
               (##structure-type _self155498_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155498_
                   '11
                   (##vector-length _self155498_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self155342_ _ctx155343_ _root155344_)
        (let ((_super155352_
               (let ((_$e155346_ _root155344_))
                 (if _$e155346_
                     _$e155346_
                     (let ((_$e155349_ (gx#core-context-root__0)))
                       (if _$e155349_
                           _$e155349_
                           (let ((__obj159761
                                  (make-object gx#root-context::t '3)))
                             (let ((__constructor159762
                                    (find-method gx#root-context::t ':init!)))
                               (if __constructor159762
                                   (__constructor159762 __obj159761)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj159761)))))))
          (if _ctx155343_
              (let ((_id155355_
                     (##structure-ref
                      _ctx155343_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path155356_
                     (##structure-ref _ctx155343_ '7 gx#module-context::t '#f))
                    (_in155357_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx155343_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e155358_
                     (make-promise (lambda () (gx#eval-module _ctx155343_)))))
                (if (##fx< '8 (##structure-length _self155342_))
                    (begin
                      (##unchecked-structure-set!
                       _self155342_
                       _id155355_
                       '1
                       (##structure-type _self155342_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155342_
                       (make-table 'test: eq? 'size: (length _in155357_))
                       '2
                       (##structure-type _self155342_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155342_
                       _super155352_
                       '3
                       (##structure-type _self155342_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155342_
                       '#f
                       '4
                       (##structure-type _self155342_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155342_
                       '#f
                       '5
                       (##structure-type _self155342_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155342_
                       _path155356_
                       '6
                       (##structure-type _self155342_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155342_
                       _in155357_
                       '7
                       (##structure-type _self155342_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155342_
                       _e155358_
                       '8
                       (##structure-type _self155342_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self155342_
                           '8
                           (##vector-length _self155342_)))
                (for-each
                 (lambda (_g155359155361_)
                   (gx#core-bind-weak-import!__% _g155359155361_ _self155342_))
                 _in155357_))
              (if (##fx< '8 (##structure-length _self155342_))
                  (begin
                    (##unchecked-structure-set!
                     _self155342_
                     '#f
                     '1
                     (##structure-type _self155342_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155342_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self155342_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155342_
                     _super155352_
                     '3
                     (##structure-type _self155342_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155342_
                     '#f
                     '4
                     (##structure-type _self155342_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155342_
                     '#f
                     '5
                     (##structure-type _self155342_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155342_
                     '#f
                     '6
                     (##structure-type _self155342_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155342_
                     '()
                     '7
                     (##structure-type _self155342_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155342_
                     '#f
                     '8
                     (##structure-type _self155342_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self155342_
                         '8
                         (##vector-length _self155342_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self155367_ _ctx155368_)
        (let ((_root155370_ '#f))
          (gx#prelude-context:::init!__%
           _self155367_
           _ctx155368_
           _root155370_))))
    (define gx#prelude-context:::init!
      (lambda _g159768_
        (let ((_g159767_ (##length _g159768_)))
          (cond ((##fx= _g159767_ 2)
                 (apply (lambda (_self155367_ _ctx155368_)
                          (gx#prelude-context:::init!__0
                           _self155367_
                           _ctx155368_))
                        _g159768_))
                ((##fx= _g159767_ 3)
                 (apply (lambda (_self155372_ _ctx155373_ _root155374_)
                          (gx#prelude-context:::init!__%
                           _self155372_
                           _ctx155373_
                           _root155374_))
                        _g159768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g159768_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self155216_ _e155217_)
        (if (##fx< '3 (##structure-length _self155216_))
            (begin
              (##unchecked-structure-set!
               _self155216_
               _e155217_
               '1
               (##structure-type _self155216_)
               '#f)
              (##unchecked-structure-set!
               _self155216_
               (gx#current-expander-context)
               '2
               (##structure-type _self155216_)
               '#f)
              (##unchecked-structure-set!
               _self155216_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self155216_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155216_
                   '3
                   (##vector-length _self155216_)))))
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
      (lambda (_g154842154845_ _g154843154847_)
        (gx#core-apply-user-expander__%
         _g154842154845_
         _g154843154847_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g154713154716_ _g154714154718_)
        (gx#core-apply-user-expander__%
         _g154713154716_
         _g154714154718_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx154584_)
        (let* ((_path154586_
                (##structure-ref _ctx154584_ '7 gx#module-context::t '#f))
               (_path154588_
                (if (pair? _path154586_) (last _path154586_) _path154586_)))
          (if (string? _path154588_) _path154588_ '#f))))
    (define gx#import-module__%
      (lambda (_path154560_ _reload?154561_ _eval?154562_)
        (let ((_ctx154564_
               ((gx#current-expander-module-import)
                _path154560_
                _reload?154561_)))
          (if (and _ctx154564_ _eval?154562_)
              (gx#eval-module _ctx154564_)
              '#!void)
          _ctx154564_)))
    (define gx#import-module__0
      (lambda (_path154569_)
        (let* ((_reload?154571_ '#f) (_eval?154573_ '#f))
          (gx#import-module__% _path154569_ _reload?154571_ _eval?154573_))))
    (define gx#import-module__1
      (lambda (_path154575_ _reload?154576_)
        (let ((_eval?154578_ '#f))
          (gx#import-module__% _path154575_ _reload?154576_ _eval?154578_))))
    (define gx#import-module
      (lambda _g159770_
        (let ((_g159769_ (##length _g159770_)))
          (cond ((##fx= _g159769_ 1)
                 (apply (lambda (_path154569_)
                          (gx#import-module__0 _path154569_))
                        _g159770_))
                ((##fx= _g159769_ 2)
                 (apply (lambda (_path154575_ _reload?154576_)
                          (gx#import-module__1 _path154575_ _reload?154576_))
                        _g159770_))
                ((##fx= _g159769_ 3)
                 (apply (lambda (_path154580_ _reload?154581_ _eval?154582_)
                          (gx#import-module__%
                           _path154580_
                           _reload?154581_
                           _eval?154582_))
                        _g159770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g159770_))))))
    (define gx#eval-module
      (lambda (_mod154557_) ((gx#current-expander-module-eval) _mod154557_)))
    (define gx#core-eval-module
      (lambda (_obj154542_)
        (letrec ((_force-e154544_
                  (lambda (_getf154553_ _e154554_)
                    (call-with-parameters
                     (lambda () (force (_getf154553_ _e154554_)))
                     gx#current-expander-context
                     _e154554_
                     gx#current-expander-phi
                     '0))))
          (let _recur154546_ ((_e154548_ _obj154542_))
            (if (##structure-instance-of? _e154548_ 'gx#module-context::t)
                (begin
                  (let ((_$e154550_ (gx#core-context-prelude__% _e154548_)))
                    (if _$e154550_ (_recur154546_ _$e154550_) '#!void))
                  (_force-e154544_ gx#module-context-e _e154548_))
                (if (##structure-instance-of? _e154548_ 'gx#prelude-context::t)
                    (_force-e154544_ gx#prelude-context-e _e154548_)
                    (if (gx#stx-string? _e154548_)
                        (_recur154546_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e154548_)))
                        (if (gx#core-library-module-path? _e154548_)
                            (_recur154546_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e154548_)))
                            (error '"Cannot eval module" _obj154542_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx154525_)
        (let _lp154527_ ((_e154529_ _ctx154525_))
          (if (or (##structure-instance-of? _e154529_ 'gx#module-context::t)
                  (##structure-instance-of? _e154529_ 'gx#local-context::t))
              (_lp154527_
               (##unchecked-structure-ref _e154529_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e154529_ 'gx#prelude-context::t)
                  _e154529_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx154538_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx154538_))))
    (define gx#core-context-prelude
      (lambda _g159772_
        (let ((_g159771_ (##length _g159772_)))
          (cond ((##fx= _g159771_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g159772_))
                ((##fx= _g159771_ 1)
                 (apply (lambda (_ctx154540_)
                          (gx#core-context-prelude__% _ctx154540_))
                        _g159772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g159772_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx154515_)
        (let* ((_ht154517_ (gx#current-expander-module-registry))
               (_$e154519_ (table-ref _ht154517_ _ctx154515_ '#f)))
          (if _$e154519_
              (values _$e154519_)
              (let ((_pre154522_
                     (let ((__obj159763
                            (make-object gx#prelude-context::t '9)))
                       (gx#prelude-context:::init! __obj159763 _ctx154515_)
                       __obj159763)))
                (table-set! _ht154517_ _ctx154515_ _pre154522_)
                _pre154522_)))))
    (define gx#core-import-module__%
      (lambda (_rpath154396_ _reload?154397_)
        (letrec ((_import-source154399_
                  (lambda (_path154484_)
                    (if (member _path154484_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path154484_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g159773_ (gx#core-read-module _path154484_)))
                         (begin
                           (let ((_g159774_
                                  (if (##values? _g159773_)
                                      (##vector-length _g159773_)
                                      1)))
                             (if (not (##fx= _g159774_ 4))
                                 (error "Context expects 4 values" _g159774_)))
                           (let ((_pre154487_ (##vector-ref _g159773_ 0))
                                 (_id154488_ (##vector-ref _g159773_ 1))
                                 (_ns154489_ (##vector-ref _g159773_ 2))
                                 (_body154490_ (##vector-ref _g159773_ 3)))
                             (let* ((_prelude154495_
                                     (if (##structure-instance-of?
                                          _pre154487_
                                          'gx#prelude-context::t)
                                         _pre154487_
                                         (if (##structure-instance-of?
                                              _pre154487_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre154487_)
                                             (if (string? _pre154487_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre154487_))
                                                 (if (not _pre154487_)
                                                     (let ((_$e154492_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e154492_
                                                           _$e154492_
                                                           (let ((__obj159764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object gx#prelude-context::t '9)))
                     (gx#prelude-context:::init! __obj159764 '#f)
                     __obj159764)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath154396_
                                                            _pre154487_))))))
                                    (_ctx154497_
                                     (let ((__obj159765
                                            (make-object
                                             gx#module-context::t
                                             '12)))
                                       (gx#module-context:::init!
                                        __obj159765
                                        _id154488_
                                        _prelude154495_
                                        _ns154489_
                                        _path154484_)
                                       __obj159765))
                                    (_body154499_
                                     (gx#core-expand-module-begin
                                      _body154490_
                                      _ctx154497_))
                                    (_body154501_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body154499_)
                                      _path154484_
                                      _ctx154497_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx154497_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body154501_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx154497_
                                _body154501_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path154484_
                                _ctx154497_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id154488_
                                _ctx154497_)
                               _ctx154497_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path154484_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule154400_
                  (lambda (_rpath154412_)
                    (let* ((_rpath154413154420_ _rpath154412_)
                           (_E154415154424_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath154413154420_)))
                           (_K154416154472_
                            (lambda (_refs154427_ _origin154428_)
                              (let ((_ctx154430_
                                     (if _origin154428_
                                         (gx#core-import-module__%
                                          _origin154428_
                                          _reload?154397_)
                                         (gx#current-expander-context))))
                                (let _lp154432_ ((_rest154434_ _refs154427_)
                                                 (_ctx154435_ _ctx154430_))
                                  (let* ((_rest154436154444_ _rest154434_)
                                         (_else154438154452_
                                          (lambda () _ctx154435_))
                                         (_K154440154460_
                                          (lambda (_rest154455_ _id154456_)
                                            (let ((_bind154458_
                                                   (gx#resolve-identifier__%
                                                    _id154456_
                                                    '0
                                                    _ctx154435_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind154458_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind154458_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp154432_
                                                   _rest154455_
                                                   (##unchecked-structure-ref
                                                    _bind154458_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath154412_
                                                         _id154456_
                                                         _bind154458_))))))
                                    (if (##pair? _rest154436154444_)
                                        (let ((_hd154441154463_
                                               (##car _rest154436154444_))
                                              (_tl154442154465_
                                               (##cdr _rest154436154444_)))
                                          (let* ((_id154468_ _hd154441154463_)
                                                 (_rest154470_
                                                  _tl154442154465_))
                                            (_K154440154460_
                                             _rest154470_
                                             _id154468_)))
                                        (_else154438154452_))))))))
                      (if (##pair? _rpath154413154420_)
                          (let ((_hd154417154475_ (##car _rpath154413154420_))
                                (_tl154418154477_ (##cdr _rpath154413154420_)))
                            (let* ((_origin154480_ _hd154417154475_)
                                   (_refs154482_ _tl154418154477_))
                              (_K154416154472_ _refs154482_ _origin154480_)))
                          (_E154415154424_))))))
          (let ((_$e154402_
                 (if (not _reload?154397_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath154396_
                      '#f)
                     '#f)))
            (if _$e154402_
                (values _$e154402_)
                (if (list? _rpath154396_)
                    (_import-submodule154400_ _rpath154396_)
                    (if (gx#core-library-module-path? _rpath154396_)
                        (let ((_ctx154405_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath154396_)
                                _reload?154397_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath154396_
                           _ctx154405_)
                          _ctx154405_)
                        (let* ((_npath154407_ (path-normalize _rpath154396_))
                               (_$e154409_
                                (if (not _reload?154397_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath154407_
                                     '#f)
                                    '#f)))
                          (if _$e154409_
                              (values _$e154409_)
                              (_import-source154399_ _npath154407_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath154508_)
        (let ((_reload?154510_ '#f))
          (gx#core-import-module__% _rpath154508_ _reload?154510_))))
    (define gx#core-import-module
      (lambda _g159776_
        (let ((_g159775_ (##length _g159776_)))
          (cond ((##fx= _g159775_ 1)
                 (apply (lambda (_rpath154508_)
                          (gx#core-import-module__0 _rpath154508_))
                        _g159776_))
                ((##fx= _g159775_ 2)
                 (apply (lambda (_rpath154512_ _reload?154513_)
                          (gx#core-import-module__%
                           _rpath154512_
                           _reload?154513_))
                        _g159776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g159776_))))))
    (define gx#core-read-module
      (lambda (_path154385_)
        (with-catch
         (lambda (_exn154387_)
           (if (and (datum-parsing-exception? _exn154387_)
                    (eq? (datum-parsing-exception-filepos _exn154387_) '0))
               (gx#core-read-module/lang _path154385_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path154385_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g154389154391_)
                      (display-exception _exn154387_ _g154389154391_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path154385_)))))
    (define gx#core-read-module/sexp
      (lambda (_path154248_)
        (let _lp154250_ ((_body154252_ (read-syntax-from-file _path154248_))
                         (_pre154253_ '#f)
                         (_ns154254_ '#f)
                         (_pkg154255_ '#f))
          (let* ((_e154256154280_ _body154252_)
                 (_E154272154302_
                  (lambda ()
                    (let ((_g159777_
                           (if _pkg154255_
                               (values _pre154253_ _ns154254_ _pkg154255_)
                               (gx#core-read-module-package
                                _path154248_
                                _pre154253_
                                _ns154254_))))
                      (begin
                        (let ((_g159778_
                               (if (##values? _g159777_)
                                   (##vector-length _g159777_)
                                   1)))
                          (if (not (##fx= _g159778_ 3))
                              (error "Context expects 3 values" _g159778_)))
                        (let ((_pre154284_ (##vector-ref _g159777_ 0))
                              (_ns154285_ (##vector-ref _g159777_ 1))
                              (_pkg154286_ (##vector-ref _g159777_ 2)))
                          (let* ((_prelude154288_
                                  (if (gx#core-bound-module-prelude?
                                       _pre154284_)
                                      (gx#syntax-local-e__0 _pre154284_)
                                      (if (gx#core-library-module-path?
                                           _pre154284_)
                                          (gx#core-resolve-library-module-path
                                           _pre154284_)
                                          (if (gx#stx-string? _pre154284_)
                                              (gx#core-resolve-module-path__%
                                               _pre154284_
                                               _path154248_)
                                              (gx#stx-e _pre154284_)))))
                                 (_path-id154290_
                                  (gx#core-module-path->namespace
                                   _path154248_))
                                 (_pkg-id154292_
                                  (if _pkg154286_
                                      (string-append
                                       _pkg154286_
                                       '"/"
                                       _path-id154290_)
                                      _path-id154290_))
                                 (_module-id154294_
                                  (string->symbol _pkg-id154292_))
                                 (_module-ns154299_
                                  (if (eq? _ns154285_ '#!void)
                                      '#f
                                      (let ((_$e154296_ _ns154285_))
                                        (if _$e154296_
                                            _$e154296_
                                            _pkg-id154292_)))))
                            (values _prelude154288_
                                    _module-id154294_
                                    _module-ns154299_
                                    _body154252_)))))))
                 (_E154265154331_
                  (lambda ()
                    (if (gx#stx-pair? _e154256154280_)
                        (let ((_e154273154306_ (gx#syntax-e _e154256154280_)))
                          (let ((_hd154274154309_ (##car _e154273154306_))
                                (_tl154275154311_ (##cdr _e154273154306_)))
                            (if (eq? (gx#stx-e _hd154274154309_) 'package:)
                                (if (gx#stx-pair? _tl154275154311_)
                                    (let ((_e154276154314_
                                           (gx#syntax-e _tl154275154311_)))
                                      (let ((_hd154277154317_
                                             (##car _e154276154314_))
                                            (_tl154278154319_
                                             (##cdr _e154276154314_)))
                                        (let* ((_pkg154322_ _hd154277154317_)
                                               (_rest154324_ _tl154278154319_))
                                          (if '#t
                                              (let ((_pkg154329_
                                                     (if (gx#identifier?
                                                          _pkg154322_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg154322_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg154322_)
                         (gx#stx-false? _pkg154322_))
                     (gx#stx-e _pkg154322_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg154322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154250_
                                                 _rest154324_
                                                 _pre154253_
                                                 _ns154254_
                                                 _pkg154329_))
                                              (_E154272154302_)))))
                                    (_E154272154302_))
                                (_E154272154302_))))
                        (_E154272154302_))))
                 (_E154258154357_
                  (lambda ()
                    (if (gx#stx-pair? _e154256154280_)
                        (let ((_e154266154335_ (gx#syntax-e _e154256154280_)))
                          (let ((_hd154267154338_ (##car _e154266154335_))
                                (_tl154268154340_ (##cdr _e154266154335_)))
                            (if (eq? (gx#stx-e _hd154267154338_) 'namespace:)
                                (if (gx#stx-pair? _tl154268154340_)
                                    (let ((_e154269154343_
                                           (gx#syntax-e _tl154268154340_)))
                                      (let ((_hd154270154346_
                                             (##car _e154269154343_))
                                            (_tl154271154348_
                                             (##cdr _e154269154343_)))
                                        (let* ((_ns154351_ _hd154270154346_)
                                               (_rest154353_ _tl154271154348_))
                                          (if '#t
                                              (let ((_ns154355_
                                                     (if (gx#identifier?
                                                          _ns154351_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns154351_))
                                                         (if (gx#stx-string?
                                                              _ns154351_)
                                                             (gx#stx-e
                                                              _ns154351_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns154351_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns154351_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154250_
                                                 _rest154353_
                                                 _pre154253_
                                                 _ns154355_
                                                 _pkg154255_))
                                              (_E154265154331_)))))
                                    (_E154265154331_))
                                (_E154265154331_))))
                        (_E154265154331_))))
                 (_E154257154381_
                  (lambda ()
                    (if (gx#stx-pair? _e154256154280_)
                        (let ((_e154259154361_ (gx#syntax-e _e154256154280_)))
                          (let ((_hd154260154364_ (##car _e154259154361_))
                                (_tl154261154366_ (##cdr _e154259154361_)))
                            (if (eq? (gx#stx-e _hd154260154364_) 'prelude:)
                                (if (gx#stx-pair? _tl154261154366_)
                                    (let ((_e154262154369_
                                           (gx#syntax-e _tl154261154366_)))
                                      (let ((_hd154263154372_
                                             (##car _e154262154369_))
                                            (_tl154264154374_
                                             (##cdr _e154262154369_)))
                                        (let* ((_prelude154377_
                                                _hd154263154372_)
                                               (_rest154379_ _tl154264154374_))
                                          (if '#t
                                              (_lp154250_
                                               _rest154379_
                                               _prelude154377_
                                               _ns154254_
                                               _pkg154255_)
                                              (_E154258154357_)))))
                                    (_E154258154357_))
                                (_E154258154357_))))
                        (_E154258154357_)))))
            (_E154257154381_)))))
    (define gx#core-read-module/lang
      (lambda (_path154075_)
        (letrec ((_default-read-module-body154077_
                  (lambda (_inp154240_)
                    (let _lp154242_ ((_body154244_ '()))
                      (let ((_next154246_ (read-syntax _inp154240_)))
                        (if (eof-object? _next154246_)
                            (reverse _body154244_)
                            (_lp154242_ (cons _next154246_ _body154244_)))))))
                 (_read-body154078_
                  (lambda (_inp154159_
                           _pre154160_
                           _ns154161_
                           _pkg154162_
                           _args154163_)
                    (let ((_g159779_
                           (if _pkg154162_
                               (values _pre154160_ _ns154161_ _pkg154162_)
                               (gx#core-read-module-package
                                _path154075_
                                _pre154160_
                                _ns154161_))))
                      (begin
                        (let ((_g159780_
                               (if (##values? _g159779_)
                                   (##vector-length _g159779_)
                                   1)))
                          (if (not (##fx= _g159780_ 3))
                              (error "Context expects 3 values" _g159780_)))
                        (let ((_pre154165_ (##vector-ref _g159779_ 0))
                              (_ns154166_ (##vector-ref _g159779_ 1))
                              (_pkg154167_ (##vector-ref _g159779_ 2)))
                          (let* ((_prelude154169_
                                  (gx#import-module__0 _pre154165_))
                                 (_read-module-body154223_
                                  (let ((_$e154215_
                                         (find (lambda (_e154170154172_)
                                                 (let* ((_g154174154184_
                                                         _e154170154172_)
                                                        (_else154176154192_
                                                         (lambda () '#f))
                                                        (_K154178154196_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g154174154184_
                                                        'gx#module-export::t)
                                                       (let* ((_e154179154199_
                                                               (##unchecked-structure-ref
                                                                _g154174154184_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154180154202_
                                                               (##unchecked-structure-ref
                                                                _g154174154184_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154181154205_
                                                               (##unchecked-structure-ref
                                                                _g154174154184_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e154181154205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e154182154208_
                            (##unchecked-structure-ref
                             _g154174154184_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g154210154212_)
                              (eq? _g154210154212_ 'read-module-body))
                            _e154182154208_)
                           (_K154178154196_)
                           (_else154176154192_)))
                     (_else154176154192_)))
               (_else154176154192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude154169_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e154215_
                                        ((lambda (_xport154218_)
                                           (let ((_proc154221_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport154218_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc154221_)
                                                 _proc154221_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path154075_
                                                  _pre154165_
                                                  _proc154221_))))
                                         _$e154215_)
                                        _default-read-module-body154077_)))
                                 (_path-id154225_
                                  (gx#core-module-path->namespace
                                   _path154075_))
                                 (_pkg-id154227_
                                  (if _pkg154167_
                                      (string-append
                                       _pkg154167_
                                       '"/"
                                       _path-id154225_)
                                      _path-id154225_))
                                 (_module-id154229_
                                  (string->symbol _pkg-id154227_))
                                 (_module-ns154234_
                                  (let ((_$e154231_ _ns154166_))
                                    (if _$e154231_ _$e154231_ _pkg-id154227_)))
                                 (_body154237_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body154223_ _inp154159_))
                                   gx#current-module-reader-path
                                   _path154075_
                                   gx#current-module-reader-args
                                   _args154163_)))
                            (values _prelude154169_
                                    _module-id154229_
                                    _module-ns154234_
                                    _body154237_)))))))
                 (_string-e154079_
                  (lambda (_obj154156_ _what154157_)
                    (if (string? _obj154156_)
                        _obj154156_
                        (if (symbol? _obj154156_)
                            (symbol->string _obj154156_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what154157_)
                             _path154075_
                             _obj154156_)))))
                 (_read-lang-args154080_
                  (lambda (_inp154111_ _args154112_)
                    (let* ((_args154113154121_ _args154112_)
                           (_else154115154129_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path154075_)))
                           (_K154117154144_
                            (lambda (_args154132_ _prelude154133_)
                              (let* ((_pkg154135_
                                      (pgetq 'package: _args154132_))
                                     (_pkg154137_
                                      (if _pkg154135_
                                          (_string-e154079_
                                           _pkg154135_
                                           '"package")
                                          '#f))
                                     (_ns154139_
                                      (pgetq 'namespace: _args154132_))
                                     (_ns154141_
                                      (if _ns154139_
                                          (_string-e154079_
                                           _ns154139_
                                           '"namespace")
                                          '#f)))
                                (_read-body154078_
                                 _inp154111_
                                 _prelude154133_
                                 _ns154141_
                                 _pkg154137_
                                 _args154132_)))))
                      (if (##pair? _args154113154121_)
                          (let ((_hd154118154147_ (##car _args154113154121_))
                                (_tl154119154149_ (##cdr _args154113154121_)))
                            (let* ((_prelude154152_ _hd154118154147_)
                                   (_args154154_ _tl154119154149_))
                              (_K154117154144_ _args154154_ _prelude154152_)))
                          (_else154115154129_)))))
                 (_read-lang154081_
                  (lambda (_inp154086_)
                    (let* ((_head154088_ (read-line _inp154086_))
                           (_$e154090_ (string-index _head154088_ '#\space)))
                      (if _$e154090_
                          ((lambda (_ix154093_)
                             (let ((_lang154095_
                                    (substring _head154088_ '0 _ix154093_)))
                               (if (equal? _lang154095_ '"#lang")
                                   (let* ((_rest154097_
                                           (substring
                                            _head154088_
                                            (fx+ _ix154093_ '1)
                                            (string-length _head154088_)))
                                          (_args154108_
                                           (with-catch
                                            (lambda (_g154098154100_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path154075_
                                               _g154098154100_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest154097_
                                               (lambda (_g154103154105_)
                                                 (read-all
                                                  _g154103154105_
                                                  read)))))))
                                     (_read-lang-args154080_
                                      _inp154086_
                                      _args154108_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path154075_))))
                           _$e154090_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path154075_)))))
                 (_read-e154082_
                  (lambda (_inp154084_)
                    (if (eq? (peek-char _inp154084_) '#\#)
                        (_read-lang154081_ _inp154084_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path154075_)))))
          (gx#call-with-input-source-file _path154075_ _read-e154082_))))
    (define gx#core-read-module-package
      (lambda (_path154029_ _pre154030_ _ns154031_)
        (letrec ((_string-e154033_
                  (lambda (_e154073_)
                    (if (symbol? _e154073_)
                        (symbol->string _e154073_)
                        (if (string? _e154073_)
                            _e154073_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e154073_))))))
          (let _lp154035_ ((_dir154037_ (path-directory _path154029_))
                           (_pkg-path154038_ '()))
            (let ((_gerbil.pkg154040_ (path-expand '"gerbil.pkg" _dir154037_)))
              (if (file-exists? _gerbil.pkg154040_)
                  (let ((_plist154042_
                         (gx#core-library-package-plist__% _dir154037_ '#t)))
                    (if (null? _plist154042_)
                        (let ((_pkg154044_
                               (if (not (null? _pkg-path154038_))
                                   (string-join _pkg-path154038_ '"/")
                                   '#f)))
                          (values _pre154030_ _ns154031_ _pkg154044_))
                        (if (list? _plist154042_)
                            (let* ((_root154046_
                                    (pgetq 'package: _plist154042_))
                                   (_pkg154050_
                                    (let ((_pkg-path154048_
                                           (if _root154046_
                                               (cons (_string-e154033_
                                                      _root154046_)
                                                     _pkg-path154038_)
                                               _pkg-path154038_)))
                                      (if (not (null? _pkg-path154048_))
                                          (string-join _pkg-path154048_ '"/")
                                          '#f)))
                                   (_ns154057_
                                    (let ((_ns154055_
                                           (let ((_$e154052_ _ns154031_))
                                             (if _$e154052_
                                                 _$e154052_
                                                 (pgetq 'namespace:
                                                        _plist154042_)))))
                                      (if _ns154055_
                                          (_string-e154033_ _ns154055_)
                                          '#f)))
                                   (_pre154062_
                                    (let ((_$e154059_ _pre154030_))
                                      (if _$e154059_
                                          _$e154059_
                                          (pgetq 'prelude: _plist154042_)))))
                              (values _pre154062_ _ns154057_ _pkg154050_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist154042_))))
                  (let ((_dir*154065_
                         (path-strip-trailing-directory-separator
                          _dir154037_)))
                    (if (or (string-empty? _dir*154065_)
                            (equal? _dir154037_ _dir*154065_))
                        (values _pre154030_ _ns154031_ '#f)
                        (let ((_xpath154070_
                               (path-strip-directory _dir*154065_))
                              (_xdir154071_ (path-directory _dir*154065_)))
                          (_lp154035_
                           _xdir154071_
                           (cons _xpath154070_ _pkg-path154038_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path154027_)
        (path-strip-extension (path-strip-directory _path154027_))))
    (define gx#core-module-path->id
      (lambda (_path154025_)
        (string->symbol (gx#core-module-path->namespace _path154025_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path154004_ _rel154005_)
        (let* ((_path154007_ (gx#stx-e _stx-path154004_))
               (_path154009_
                (if (string-empty? (path-extension _path154007_))
                    (string-append _path154007_ '".ss")
                    _path154007_)))
          (gx#core-resolve-path__%
           _path154009_
           (let ((_$e154012_ (gx#stx-source _stx-path154004_)))
             (if _$e154012_ _$e154012_ _rel154005_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path154018_)
        (let ((_rel154020_ '#f))
          (gx#core-resolve-module-path__% _stx-path154018_ _rel154020_))))
    (define gx#core-resolve-module-path
      (lambda _g159782_
        (let ((_g159781_ (##length _g159782_)))
          (cond ((##fx= _g159781_ 1)
                 (apply (lambda (_stx-path154018_)
                          (gx#core-resolve-module-path__0 _stx-path154018_))
                        _g159782_))
                ((##fx= _g159781_ 2)
                 (apply (lambda (_stx-path154022_ _rel154023_)
                          (gx#core-resolve-module-path__%
                           _stx-path154022_
                           _rel154023_))
                        _g159782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g159782_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath153890_)
        (let* ((_spath153892_ (symbol->string (gx#stx-e _libpath153890_)))
               (_spath153894_
                (substring _spath153892_ '1 (string-length _spath153892_)))
               (_ext153896_ (path-extension _spath153894_))
               (_ssi153898_
                (if (string-empty? _ext153896_)
                    (string-append _spath153894_ '".ssi")
                    (string-append
                     (path-strip-extension _spath153894_)
                     '".ssi")))
               (_srcs153902_
                (if (string-empty? _ext153896_)
                    (map (lambda (_ext153900_)
                           (string-append _spath153894_ _ext153900_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath153894_ '()))))
          (let _lp153905_ ((_rest153907_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest153908153917_ _rest153907_)
                   (_E153911153921_
                    (lambda ()
                      (error '"No clause matching" _rest153908153917_))))
              (let ((_K153913153991_
                     (lambda (_rest153932_ _dir153933_)
                       (letrec ((_resolve153935_
                                 (lambda (_ssi153947_ _srcs153948_)
                                   (let ((_compiled-path153950_
                                          (path-expand
                                           _ssi153947_
                                           _dir153933_)))
                                     (if (file-exists? _compiled-path153950_)
                                         (path-normalize _compiled-path153950_)
                                         (let _lpr153952_ ((_rest-src153954_
                                                            _srcs153948_))
                                           (let* ((_rest-src153955153963_
                                                   _rest-src153954_)
                                                  (_else153957153971_
                                                   (lambda ()
                                                     (_lp153905_
                                                      _rest153932_)))
                                                  (_K153959153979_
                                                   (lambda (_rest-src153974_
                                                            _src153975_)
                                                     (let ((_src-path153977_
                                                            (path-expand
                                                             _src153975_
                                                             _dir153933_)))
                                                       (if (file-exists?
                                                            _src-path153977_)
                                                           (path-normalize
                                                            _src-path153977_)
                                                           (_lpr153952_
                                                            _rest-src153974_))))))
                                             (if (##pair? _rest-src153955153963_)
                                                 (let ((_hd153960153982_
                                                        (##car _rest-src153955153963_))
                                                       (_tl153961153984_
                                                        (##cdr _rest-src153955153963_)))
                                                   (let* ((_src153987_
                                                           _hd153960153982_)
                                                          (_rest-src153989_
                                                           _tl153961153984_))
                                                     (_K153959153979_
                                                      _rest-src153989_
                                                      _src153987_)))
                                                 (_else153957153971_)))))))))
                         (let ((_$e153937_
                                (gx#core-library-package-path-prefix
                                 _dir153933_)))
                           (if _$e153937_
                               ((lambda (_prefix153940_)
                                  (if (string-prefix?
                                       _prefix153940_
                                       _spath153894_)
                                      (let ((_ssi153944_
                                             (substring
                                              _ssi153898_
                                              (string-length _prefix153940_)
                                              (string-length _ssi153898_)))
                                            (_srcs153945_
                                             (map (lambda (_src153942_)
                                                    (substring
                                                     _src153942_
                                                     (string-length
                                                      _prefix153940_)
                                                     (string-length
                                                      _src153942_)))
                                                  _srcs153902_)))
                                        (_resolve153935_
                                         _ssi153944_
                                         _srcs153945_))
                                      (_lp153905_ _rest153932_)))
                                _$e153937_)
                               (_resolve153935_ _ssi153898_ _srcs153902_))))))
                    (_K153912153926_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath153890_))))
                (let ((_try-match153910153929_
                       (lambda ()
                         (if (##null? _rest153908153917_)
                             (_K153912153926_)
                             (_E153911153921_)))))
                  (if (##pair? _rest153908153917_)
                      (let ((_tl153915153996_ (##cdr _rest153908153917_))
                            (_hd153914153994_ (##car _rest153908153917_)))
                        (let ((_dir153999_ _hd153914153994_)
                              (_rest154001_ _tl153915153996_))
                          (_K153913153991_ _rest154001_ _dir153999_)))
                      (_try-match153910153929_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath153863_)
        (letrec ((_resolve153865_
                  (lambda (_path153882_ _base153883_)
                    (let ((_$e153885_ (string-rindex _base153883_ '#\/)))
                      (if _$e153885_
                          ((lambda (_idx153888_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base153883_ '0 _idx153888_)
                                '"/"
                                _path153882_))))
                           _$e153885_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path153882_))))))))
          (let ((_spath153867_ (symbol->string (gx#stx-e _modpath153863_)))
                (_mod153868_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod153868_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath153863_))
            (let ((_mpath153870_
                   (symbol->string
                    (##structure-ref
                     _mod153868_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp153872_ ((_spath153874_ _spath153867_)
                               (_mpath153875_ _mpath153870_))
                (if (string-prefix? '"../" _spath153874_)
                    (let ((_$e153877_ (string-rindex _mpath153875_ '#\/)))
                      (if _$e153877_
                          ((lambda (_idx153880_)
                             (_lp153872_
                              (substring
                               _spath153874_
                               '3
                               (string-length _spath153874_))
                              (substring _mpath153875_ '0 _idx153880_)))
                           _$e153877_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath153863_)))
                    (if (string-prefix? '"./" _spath153874_)
                        (_lp153872_
                         (substring
                          _spath153874_
                          '2
                          (string-length _spath153874_))
                         _mpath153875_)
                        (_resolve153865_ _spath153874_ _mpath153875_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir153856_)
        (let ((_$e153858_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir153856_))))
          (if _$e153858_
              ((lambda (_pkg153861_)
                 (string-append (symbol->string _pkg153861_) '"/"))
               _$e153858_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir153828_ _exists?153829_)
        (let* ((_cache153831_ (gx#core-library-package-cache))
               (_$e153833_ (table-ref _cache153831_ _dir153828_ '#f)))
          (if _$e153833_
              (values _$e153833_)
              (let* ((_gerbil.pkg153836_
                      (path-expand '"gerbil.pkg" _dir153828_))
                     (_plist153843_
                      (if (or _exists?153829_
                              (file-exists? _gerbil.pkg153836_))
                          (let ((_e153841_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg153836_
                                  read)))
                            (if (eof-object? _e153841_)
                                '()
                                (if (list? _e153841_)
                                    _e153841_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg153836_
                                     _e153841_))))
                          '())))
                (table-set! _cache153831_ _dir153828_ _plist153843_)
                _plist153843_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir153849_)
        (let ((_exists?153851_ '#f))
          (gx#core-library-package-plist__% _dir153849_ _exists?153851_))))
    (define gx#core-library-package-plist
      (lambda _g159784_
        (let ((_g159783_ (##length _g159784_)))
          (cond ((##fx= _g159783_ 1)
                 (apply (lambda (_dir153849_)
                          (gx#core-library-package-plist__0 _dir153849_))
                        _g159784_))
                ((##fx= _g159783_ 2)
                 (apply (lambda (_dir153853_ _exists?153854_)
                          (gx#core-library-package-plist__%
                           _dir153853_
                           _exists?153854_))
                        _g159784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g159784_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e153822_ (gx#current-expander-module-library-package-cache)))
          (if _$e153822_
              (values _$e153822_)
              (let ((_cache153825_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache153825_)
                _cache153825_)))))
    (define gx#core-library-module-path?
      (lambda (_stx153819_) (gx#core-special-module-path? _stx153819_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx153817_) (gx#core-special-module-path? _stx153817_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx153812_ _char153813_)
        (if (gx#identifier? _stx153812_)
            (if (interned-symbol? (gx#stx-e _stx153812_))
                (let ((_str153815_ (symbol->string (gx#stx-e _stx153812_))))
                  (if (fx> (string-length _str153815_) '1)
                      (eq? (string-ref _str153815_ '0) _char153813_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx153806_)
        (gx#core-bound-identifier?__%
         _stx153806_
         (lambda (_g153807153809_)
           (gx#expander-binding?__% _g153807153809_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx153800_)
        (gx#core-bound-identifier?__%
         _stx153800_
         (lambda (_g153801153803_)
           (gx#expander-binding?__% _g153801153803_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx153787_)
        (letrec ((_module-prelude?153789_
                  (lambda (_e153795_)
                    (let ((_$e153797_
                           (##structure-instance-of?
                            _e153795_
                            'gx#module-context::t)))
                      (if _$e153797_
                          _$e153797_
                          (##structure-instance-of?
                           _e153795_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx153787_
           (lambda (_g153790153792_)
             (gx#expander-binding?__%
              _g153790153792_
              _module-prelude?153789_))))))
    (define gx#core-bind-import!__%
      (lambda (_in153717_ _ctx153718_ _force-weak?153719_)
        (let* ((_in153720153729_ _in153717_)
               (_E153722153733_
                (lambda () (error '"No clause matching" _in153720153729_)))
               (_K153723153746_
                (lambda (_weak?153736_ _phi153737_ _key153738_ _source153739_)
                  (gx#core-bind!__%
                   _key153738_
                   (let ((_e153741_
                          (gx#core-resolve-module-export _source153739_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e153741_
                       '1
                       gx#binding::t
                       '#f)
                      _key153738_
                      _phi153737_
                      _e153741_
                      (##unchecked-structure-ref
                       _source153739_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e153743_ _force-weak?153719_))
                        (if _$e153743_ _$e153743_ _weak?153736_))))
                   gx#core-context-rebind?
                   _phi153737_
                   _ctx153718_))))
          (if (##structure-direct-instance-of?
               _in153720153729_
               'gx#module-import::t)
              (let* ((_e153724153749_
                      (##unchecked-structure-ref
                       _in153720153729_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source153752_ _e153724153749_)
                     (_e153725153754_
                      (##unchecked-structure-ref
                       _in153720153729_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key153757_ _e153725153754_)
                     (_e153726153759_
                      (##unchecked-structure-ref
                       _in153720153729_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi153762_ _e153726153759_)
                     (_e153727153764_
                      (##unchecked-structure-ref
                       _in153720153729_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?153767_ _e153727153764_))
                (_K153723153746_
                 _weak?153767_
                 _phi153762_
                 _key153757_
                 _source153752_))
              (_E153722153733_)))))
    (define gx#core-bind-import!__0
      (lambda (_in153772_)
        (let* ((_ctx153774_ (gx#current-expander-context))
               (_force-weak?153776_ '#f))
          (gx#core-bind-import!__%
           _in153772_
           _ctx153774_
           _force-weak?153776_))))
    (define gx#core-bind-import!__1
      (lambda (_in153778_ _ctx153779_)
        (let ((_force-weak?153781_ '#f))
          (gx#core-bind-import!__%
           _in153778_
           _ctx153779_
           _force-weak?153781_))))
    (define gx#core-bind-import!
      (lambda _g159786_
        (let ((_g159785_ (##length _g159786_)))
          (cond ((##fx= _g159785_ 1)
                 (apply (lambda (_in153772_)
                          (gx#core-bind-import!__0 _in153772_))
                        _g159786_))
                ((##fx= _g159785_ 2)
                 (apply (lambda (_in153778_ _ctx153779_)
                          (gx#core-bind-import!__1 _in153778_ _ctx153779_))
                        _g159786_))
                ((##fx= _g159785_ 3)
                 (apply (lambda (_in153783_ _ctx153784_ _force-weak?153785_)
                          (gx#core-bind-import!__%
                           _in153783_
                           _ctx153784_
                           _force-weak?153785_))
                        _g159786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g159786_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in153703_ _ctx153704_)
        (gx#core-bind-import!__% _in153703_ _ctx153704_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in153709_)
        (let ((_ctx153711_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in153709_ _ctx153711_))))
    (define gx#core-bind-weak-import!
      (lambda _g159788_
        (let ((_g159787_ (##length _g159788_)))
          (cond ((##fx= _g159787_ 1)
                 (apply (lambda (_in153709_)
                          (gx#core-bind-weak-import!__0 _in153709_))
                        _g159788_))
                ((##fx= _g159787_ 2)
                 (apply (lambda (_in153713_ _ctx153714_)
                          (gx#core-bind-weak-import!__%
                           _in153713_
                           _ctx153714_))
                        _g159788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g159788_))))))
    (define gx#core-resolve-module-export
      (lambda (_out153594_)
        (letrec ((_subst153596_
                  (lambda (_key153642_)
                    (let* ((_key153643153651_ _key153642_)
                           (_else153645153659_ (lambda () _key153642_))
                           (_K153647153690_
                            (lambda (_mark153662_ _id153663_)
                              (let* ((_mark153664153670_ _mark153662_)
                                     (_E153666153674_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark153664153670_)))
                                     (_K153667153682_
                                      (lambda (_subst153677_)
                                        (let ((_$e153679_
                                               (if _subst153677_
                                                   (table-ref
                                                    _subst153677_
                                                    _id153663_
                                                    '#f)
                                                   '#f)))
                                          (if _$e153679_
                                              _$e153679_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key153642_))))))
                                (if (##structure-instance-of?
                                     _mark153664153670_
                                     'gx#expander-mark::t)
                                    (let* ((_e153668153685_
                                            (##unchecked-structure-ref
                                             _mark153664153670_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst153688_ _e153668153685_))
                                      (_K153667153682_ _subst153688_))
                                    (_E153666153674_))))))
                      (if (##pair? _key153643153651_)
                          (let ((_hd153648153693_ (##car _key153643153651_))
                                (_tl153649153695_ (##cdr _key153643153651_)))
                            (let* ((_id153698_ _hd153648153693_)
                                   (_mark153700_ _tl153649153695_))
                              (_K153647153690_ _mark153700_ _id153698_)))
                          (_else153645153659_))))))
          (let* ((_out153597153607_ _out153594_)
                 (_E153599153611_
                  (lambda () (error '"No clause matching" _out153597153607_)))
                 (_K153600153618_
                  (lambda (_phi153614_ _key153615_ _ctx153616_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx153616_ _phi153614_)
                     (_subst153596_ _key153615_)))))
            (if (##structure-direct-instance-of?
                 _out153597153607_
                 'gx#module-export::t)
                (let* ((_e153601153621_
                        (##unchecked-structure-ref
                         _out153597153607_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx153624_ _e153601153621_)
                       (_e153602153626_
                        (##unchecked-structure-ref
                         _out153597153607_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key153629_ _e153602153626_)
                       (_e153603153631_
                        (##unchecked-structure-ref
                         _out153597153607_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi153634_ _e153603153631_)
                       (_e153604153636_
                        (##unchecked-structure-ref
                         _out153597153607_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e153605153639_
                        (##unchecked-structure-ref
                         _out153597153607_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K153600153618_ _phi153634_ _key153629_ _ctx153624_))
                (_E153599153611_))))))
    (define gx#core-module-export->import__%
      (lambda (_out153519_ _rename153520_ _dphi153521_)
        (let* ((_out153522153532_ _out153519_)
               (_E153524153536_
                (lambda () (error '"No clause matching" _out153522153532_)))
               (_K153525153548_
                (lambda (_weak?153539_
                         _name153540_
                         _phi153541_
                         _key153542_
                         _ctx153543_)
                  (##structure
                   gx#module-import::t
                   _out153519_
                   (let ((_$e153545_ _rename153520_))
                     (if _$e153545_ _$e153545_ _name153540_))
                   (fx+ _phi153541_ _dphi153521_)
                   _weak?153539_))))
          (if (##structure-direct-instance-of?
               _out153522153532_
               'gx#module-export::t)
              (let* ((_e153526153551_
                      (##unchecked-structure-ref
                       _out153522153532_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx153554_ _e153526153551_)
                     (_e153527153556_
                      (##unchecked-structure-ref
                       _out153522153532_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key153559_ _e153527153556_)
                     (_e153528153561_
                      (##unchecked-structure-ref
                       _out153522153532_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi153564_ _e153528153561_)
                     (_e153529153566_
                      (##unchecked-structure-ref
                       _out153522153532_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name153569_ _e153529153566_)
                     (_e153530153571_
                      (##unchecked-structure-ref
                       _out153522153532_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?153574_ _e153530153571_))
                (_K153525153548_
                 _weak?153574_
                 _name153569_
                 _phi153564_
                 _key153559_
                 _ctx153554_))
              (_E153524153536_)))))
    (define gx#core-module-export->import__0
      (lambda (_out153579_)
        (let* ((_rename153581_ '#f) (_dphi153583_ '0))
          (gx#core-module-export->import__%
           _out153579_
           _rename153581_
           _dphi153583_))))
    (define gx#core-module-export->import__1
      (lambda (_out153585_ _rename153586_)
        (let ((_dphi153588_ '0))
          (gx#core-module-export->import__%
           _out153585_
           _rename153586_
           _dphi153588_))))
    (define gx#core-module-export->import
      (lambda _g159790_
        (let ((_g159789_ (##length _g159790_)))
          (cond ((##fx= _g159789_ 1)
                 (apply (lambda (_out153579_)
                          (gx#core-module-export->import__0 _out153579_))
                        _g159790_))
                ((##fx= _g159789_ 2)
                 (apply (lambda (_out153585_ _rename153586_)
                          (gx#core-module-export->import__1
                           _out153585_
                           _rename153586_))
                        _g159790_))
                ((##fx= _g159789_ 3)
                 (apply (lambda (_out153590_ _rename153591_ _dphi153592_)
                          (gx#core-module-export->import__%
                           _out153590_
                           _rename153591_
                           _dphi153592_))
                        _g159790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g159790_))))))
    (define gx#core-expand-module%
      (lambda (_stx153447_)
        (letrec ((_make-context153449_
                  (lambda (_id153500_)
                    (let* ((_super153502_ (gx#current-expander-context))
                           (_bind-id153504_ (gx#stx-e _id153500_))
                           (_mod-id153506_
                            (if (##structure-instance-of?
                                 _super153502_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super153502_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id153504_)
                                _bind-id153504_))
                           (_ns153508_ (symbol->string _mod-id153506_))
                           (_path153515_
                            (if (##structure-instance-of?
                                 _super153502_
                                 'gx#module-context::t)
                                (let ((_path153510_
                                       (##unchecked-structure-ref
                                        _super153502_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path153510_)
                                          (null? _path153510_))
                                      (cons _bind-id153504_ _path153510_)
                                      (if (not _path153510_)
                                          _bind-id153504_
                                          (cons _bind-id153504_
                                                (cons _path153510_ '())))))
                                _bind-id153504_)))
                      (let ((__obj159766
                             (make-object gx#module-context::t '12)))
                        (gx#module-context:::init!
                         __obj159766
                         _mod-id153506_
                         _super153502_
                         _ns153508_
                         _path153515_)
                        __obj159766)))))
          (let* ((_e153450153460_ _stx153447_)
                 (_E153452153464_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153450153460_)))
                 (_E153451153496_
                  (lambda ()
                    (if (gx#stx-pair? _e153450153460_)
                        (let ((_e153453153468_ (gx#syntax-e _e153450153460_)))
                          (let ((_hd153454153471_ (##car _e153453153468_))
                                (_tl153455153473_ (##cdr _e153453153468_)))
                            (if (gx#stx-pair? _tl153455153473_)
                                (let ((_e153456153476_
                                       (gx#syntax-e _tl153455153473_)))
                                  (let ((_hd153457153479_
                                         (##car _e153456153476_))
                                        (_tl153458153481_
                                         (##cdr _e153456153476_)))
                                    (let* ((_id153484_ _hd153457153479_)
                                           (_body153486_ _tl153458153481_))
                                      (if (and (gx#identifier? _id153484_)
                                               (gx#stx-list? _body153486_))
                                          (let* ((_ctx153488_
                                                  (_make-context153449_
                                                   _id153484_))
                                                 (_body153490_
                                                  (gx#core-expand-module-begin
                                                   _body153486_
                                                   _ctx153488_))
                                                 (_body153492_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153490_)
                                                   (gx#stx-source
                                                    _stx153447_))))
                                            (##unchecked-structure-set!
                                             _ctx153488_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body153492_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx153488_
                                             _body153492_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id153484_
                                             _ctx153488_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id153484_)
                                              _body153492_)
                                             (gx#stx-source _stx153447_)))
                                          (_E153452153464_)))))
                                (_E153452153464_))))
                        (_E153452153464_)))))
            (_E153451153496_)))))
    (define gx#core-expand-module-begin
      (lambda (_body153413_ _ctx153414_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx153417_
                   (gx#core-expand-head (cons '%%begin-module _body153413_)))
                  (_e153418153425_ _stx153417_)
                  (_E153420153429_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx153417_)))
                  (_E153419153443_
                   (lambda ()
                     (if (gx#stx-pair? _e153418153425_)
                         (let ((_e153421153433_ (gx#syntax-e _e153418153425_)))
                           (let ((_hd153422153436_ (##car _e153421153433_))
                                 (_tl153423153438_ (##cdr _e153421153433_)))
                             (if (and (gx#identifier? _hd153422153436_)
                                      (gx#core-identifier=?
                                       _hd153422153436_
                                       '%#begin-module))
                                 (let ((_body153441_ _tl153423153438_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx153417_)
                                           _body153441_
                                           (gx#core-expand-module-body
                                            _body153441_))
                                       (_E153420153429_)))
                                 (_E153420153429_))))
                         (_E153420153429_)))))
             (_E153419153443_)))
         gx#current-expander-context
         _ctx153414_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body153209_)
        (letrec ((_expand-special153211_
                  (lambda (_hd153340_ _K153341_ _rest153342_ _r153343_)
                    (let* ((_e153344153361_ _hd153340_)
                           (_E153356153365_
                            (lambda ()
                              (_K153341_
                               _rest153342_
                               (cons (gx#core-expand-top _hd153340_)
                                     _r153343_))))
                           (_E153346153377_
                            (lambda ()
                              (if (gx#stx-pair? _e153344153361_)
                                  (let ((_e153357153369_
                                         (gx#syntax-e _e153344153361_)))
                                    (let ((_hd153358153372_
                                           (##car _e153357153369_))
                                          (_tl153359153374_
                                           (##cdr _e153357153369_)))
                                      (if (and (gx#identifier?
                                                _hd153358153372_)
                                               (gx#core-identifier=?
                                                _hd153358153372_
                                                '%#export))
                                          (if '#t
                                              (_K153341_
                                               _rest153342_
                                               (cons _hd153340_ _r153343_))
                                              (_E153356153365_))
                                          (_E153356153365_))))
                                  (_E153356153365_))))
                           (_E153345153409_
                            (lambda ()
                              (if (gx#stx-pair? _e153344153361_)
                                  (let ((_e153347153381_
                                         (gx#syntax-e _e153344153361_)))
                                    (let ((_hd153348153384_
                                           (##car _e153347153381_))
                                          (_tl153349153386_
                                           (##cdr _e153347153381_)))
                                      (if (and (gx#identifier?
                                                _hd153348153384_)
                                               (gx#core-identifier=?
                                                _hd153348153384_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153349153386_)
                                              (let ((_e153350153389_
                                                     (gx#syntax-e
                                                      _tl153349153386_)))
                                                (let ((_hd153351153392_
                                                       (##car _e153350153389_))
                                                      (_tl153352153394_
                                                       (##cdr _e153350153389_)))
                                                  (let ((_hd-bind153397_
                                                         _hd153351153392_))
                                                    (if (gx#stx-pair?
                                                         _tl153352153394_)
                                                        (let ((_e153353153399_
                                                               (gx#syntax-e
                                                                _tl153352153394_)))
                                                          (let ((_hd153354153402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153353153399_))
                        (_tl153355153404_ (##cdr _e153353153399_)))
                    (let ((_expr153407_ _hd153354153402_))
                      (if (gx#stx-null? _tl153355153404_)
                          (if (gx#core-bind-values? _hd-bind153397_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153397_)
                                (_K153341_
                                 _rest153342_
                                 (cons _hd153340_ _r153343_)))
                              (_E153346153377_))
                          (_E153346153377_)))))
                (_E153346153377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153346153377_))
                                          (_E153346153377_))))
                                  (_E153346153377_)))))
                      (_E153345153409_))))
                 (_expand-body153212_
                  (lambda (_rbody153214_)
                    (let _lp153216_ ((_rest153218_ _rbody153214_)
                                     (_body153219_ '()))
                      (let* ((_rest153220153228_ _rest153218_)
                             (_else153222153236_ (lambda () _body153219_))
                             (_K153224153328_
                              (lambda (_rest153239_ _hd153240_)
                                (let* ((_e153241153262_ _hd153240_)
                                       (_E153257153266_
                                        (lambda ()
                                          (_lp153216_
                                           _rest153239_
                                           (cons (gx#core-expand-expression
                                                  _hd153240_)
                                                 _body153219_))))
                                       (_E153253153280_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153241153262_)
                                              (let ((_e153258153270_
                                                     (gx#syntax-e
                                                      _e153241153262_)))
                                                (let ((_hd153259153273_
                                                       (##car _e153258153270_))
                                                      (_tl153260153275_
                                                       (##cdr _e153258153270_)))
                                                  (let ((_form153278_
                                                         _hd153259153273_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form153278_
                                                         gx#special-form-binding?)
                                                        (_lp153216_
                                                         _rest153239_
                                                         (cons _hd153240_
                                                               _body153219_))
                                                        (_E153257153266_)))))
                                              (_E153257153266_))))
                                       (_E153243153292_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153241153262_)
                                              (let ((_e153254153284_
                                                     (gx#syntax-e
                                                      _e153241153262_)))
                                                (let ((_hd153255153287_
                                                       (##car _e153254153284_))
                                                      (_tl153256153289_
                                                       (##cdr _e153254153284_)))
                                                  (if (and (gx#identifier?
                                                            _hd153255153287_)
                                                           (gx#core-identifier=?
                                                            _hd153255153287_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp153216_
                                                           _rest153239_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd153240_)
                         _body153219_))
                  (_E153253153280_))
              (_E153253153280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153253153280_))))
                                       (_E153242153324_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153241153262_)
                                              (let ((_e153244153296_
                                                     (gx#syntax-e
                                                      _e153241153262_)))
                                                (let ((_hd153245153299_
                                                       (##car _e153244153296_))
                                                      (_tl153246153301_
                                                       (##cdr _e153244153296_)))
                                                  (if (and (gx#identifier?
                                                            _hd153245153299_)
                                                           (gx#core-identifier=?
                                                            _hd153245153299_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl153246153301_)
                                                          (let ((_e153247153304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl153246153301_)))
                    (let ((_hd153248153307_ (##car _e153247153304_))
                          (_tl153249153309_ (##cdr _e153247153304_)))
                      (let ((_hd-bind153312_ _hd153248153307_))
                        (if (gx#stx-pair? _tl153249153309_)
                            (let ((_e153250153314_
                                   (gx#syntax-e _tl153249153309_)))
                              (let ((_hd153251153317_ (##car _e153250153314_))
                                    (_tl153252153319_ (##cdr _e153250153314_)))
                                (let ((_expr153322_ _hd153251153317_))
                                  (if (gx#stx-null? _tl153252153319_)
                                      (if '#t
                                          (_lp153216_
                                           _rest153239_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind153312_)
                                                   (gx#core-expand-expression
                                                    _expr153322_))
                                                  (gx#stx-source _hd153240_))
                                                 _body153219_))
                                          (_E153243153292_))
                                      (_E153243153292_)))))
                            (_E153243153292_)))))
                  (_E153243153292_))
              (_E153243153292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153243153292_)))))
                                  (_E153242153324_)))))
                        (if (##pair? _rest153220153228_)
                            (let ((_hd153225153331_ (##car _rest153220153228_))
                                  (_tl153226153333_
                                   (##cdr _rest153220153228_)))
                              (let* ((_hd153336_ _hd153225153331_)
                                     (_rest153338_ _tl153226153333_))
                                (_K153224153328_ _rest153338_ _hd153336_)))
                            (_else153222153236_)))))))
          (_expand-body153212_
           (gx#core-expand-block__%
            (cons '%#begin-module _body153209_)
            _expand-special153211_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx153052_
               _expanded?153053_
               _method153054_
               _current-phi153055_
               _expand1153056_)
        (letrec ((_K153058_
                  (lambda (_rest153176_ _r153177_)
                    (let* ((_e153178153185_ _rest153176_)
                           (_E153180153189_ (lambda () _r153177_))
                           (_E153179153205_
                            (lambda ()
                              (if (gx#stx-pair? _e153178153185_)
                                  (let ((_e153181153193_
                                         (gx#syntax-e _e153178153185_)))
                                    (let ((_hd153182153196_
                                           (##car _e153181153193_))
                                          (_tl153183153198_
                                           (##cdr _e153181153193_)))
                                      (let* ((_hd153201_ _hd153182153196_)
                                             (_rest153203_ _tl153183153198_))
                                        (if '#t
                                            (_step153059_
                                             _hd153201_
                                             _rest153203_
                                             _r153177_)
                                            (_E153180153189_)))))
                                  (_E153180153189_)))))
                      (_E153179153205_))))
                 (_step153059_
                  (lambda (_hd153090_ _rest153091_ _r153092_)
                    (let* ((_e153093153111_ _hd153090_)
                           (_E153106153115_
                            (lambda ()
                              (if (_expanded?153053_ (gx#stx-e _hd153090_))
                                  (_K153058_
                                   _rest153091_
                                   (cons (gx#stx-e _hd153090_) _r153092_))
                                  (_expand1153056_
                                   _hd153090_
                                   _K153058_
                                   _rest153091_
                                   _r153092_))))
                           (_E153102153131_
                            (lambda ()
                              (if (gx#stx-pair? _e153093153111_)
                                  (let ((_e153107153119_
                                         (gx#syntax-e _e153093153111_)))
                                    (let ((_hd153108153122_
                                           (##car _e153107153119_))
                                          (_tl153109153124_
                                           (##cdr _e153107153119_)))
                                      (let* ((_macro153127_ _hd153108153122_)
                                             (_body153129_ _tl153109153124_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro153127_
                                             gx#syntax-binding?)
                                            (_K153058_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro153127_)
                                                    _hd153090_
                                                    _method153054_)
                                                   _rest153091_)
                                             _r153092_)
                                            (_E153106153115_)))))
                                  (_E153106153115_))))
                           (_E153095153145_
                            (lambda ()
                              (if (gx#stx-pair? _e153093153111_)
                                  (let ((_e153103153135_
                                         (gx#syntax-e _e153093153111_)))
                                    (let ((_hd153104153138_
                                           (##car _e153103153135_))
                                          (_tl153105153140_
                                           (##cdr _e153103153135_)))
                                      (if (eq? (gx#stx-e _hd153104153138_)
                                               'begin:)
                                          (let ((_body153143_
                                                 _tl153105153140_))
                                            (if '#t
                                                (_K153058_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest153091_
                                                  _body153143_)
                                                 _r153092_)
                                                (_E153102153131_)))
                                          (_E153102153131_))))
                                  (_E153102153131_))))
                           (_E153094153172_
                            (lambda ()
                              (if (gx#stx-pair? _e153093153111_)
                                  (let ((_e153096153149_
                                         (gx#syntax-e _e153093153111_)))
                                    (let ((_hd153097153152_
                                           (##car _e153096153149_))
                                          (_tl153098153154_
                                           (##cdr _e153096153149_)))
                                      (if (eq? (gx#stx-e _hd153097153152_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl153098153154_)
                                              (let ((_e153099153157_
                                                     (gx#syntax-e
                                                      _tl153098153154_)))
                                                (let ((_hd153100153160_
                                                       (##car _e153099153157_))
                                                      (_tl153101153162_
                                                       (##cdr _e153099153157_)))
                                                  (let* ((_dphi153165_
                                                          _hd153100153160_)
                                                         (_body153167_
                                                          _tl153101153162_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi153165_)
                                                        (let ((_rbody153170_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K153058_ _body153167_ '()))
                        _current-phi153055_
                        (fx+ (gx#stx-e _dphi153165_) (_current-phi153055_)))))
                  (_K153058_
                   _rest153091_
                   (foldr1 cons _r153092_ _rbody153170_)))
                (_E153095153145_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153095153145_))
                                          (_E153095153145_))))
                                  (_E153095153145_)))))
                      (_E153094153172_)))))
          (let* ((_e153060153067_ _stx153052_)
                 (_E153062153071_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153060153067_)))
                 (_E153061153086_
                  (lambda ()
                    (if (gx#stx-pair? _e153060153067_)
                        (let ((_e153063153075_ (gx#syntax-e _e153060153067_)))
                          (let ((_hd153064153078_ (##car _e153063153075_))
                                (_tl153065153080_ (##cdr _e153063153075_)))
                            (let ((_body153083_ _tl153065153080_))
                              (if '#t
                                  (if (_current-phi153055_)
                                      (_K153058_ _body153083_ '())
                                      (call-with-parameters
                                       (lambda () (_K153058_ _body153083_ '()))
                                       _current-phi153055_
                                       (gx#current-expander-phi)))
                                  (_E153062153071_)))))
                        (_E153062153071_)))))
            (_E153061153086_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx152719_ _internal-expand?152720_)
        (letrec ((_expand1152722_
                  (lambda (_hd153032_ _K153033_ _rest153034_ _r153035_)
                    (if (gx#core-bound-module? _hd153032_)
                        (_import1152723_
                         (gx#syntax-local-e__0 _hd153032_)
                         _K153033_
                         _rest153034_
                         _r153035_)
                        (if (gx#core-library-module-path? _hd153032_)
                            (_import1152723_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd153032_))
                             _K153033_
                             _rest153034_
                             _r153035_)
                            (if (gx#core-library-relative-module-path?
                                 _hd153032_)
                                (_import1152723_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd153032_))
                                 _K153033_
                                 _rest153034_
                                 _r153035_)
                                (let ((_e153037_ (gx#stx-e _hd153032_)))
                                  (if (pair? _e153037_)
                                      (let ((_$e153039_
                                             (gx#stx-e (car _e153037_))))
                                        (if (eq? 'spec: _$e153039_)
                                            (_import-spec152726_
                                             _hd153032_
                                             _K153033_
                                             _rest153034_
                                             _r153035_)
                                            (if (eq? 'in: _$e153039_)
                                                (_import-submodule152724_
                                                 _hd153032_
                                                 _K153033_
                                                 _rest153034_
                                                 _r153035_)
                                                (if (eq? 'runtime: _$e153039_)
                                                    (_import-runtime152725_
                                                     _hd153032_
                                                     _K153033_
                                                     _rest153034_
                                                     _r153035_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx152719_
                                                     _hd153032_)))))
                                      (if (string? _e153037_)
                                          (_import1152723_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd153032_
                                             (gx#stx-source _stx152719_)))
                                           _K153033_
                                           _rest153034_
                                           _r153035_)
                                          (if (##structure-instance-of?
                                               _e153037_
                                               'gx#module-context::t)
                                              (_K153033_
                                               _rest153034_
                                               (cons _e153037_ _r153035_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx152719_
                                               _hd153032_))))))))))
                 (_import1152723_
                  (lambda (_ctx153021_ _K153022_ _rest153023_ _r153024_)
                    (let ((_dphi153026_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K153022_
                       _rest153023_
                       (cons (##structure
                              gx#import-set::t
                              _ctx153021_
                              _dphi153026_
                              (map (lambda (_g153027153029_)
                                     (gx#core-module-export->import__%
                                      _g153027153029_
                                      '#f
                                      _dphi153026_))
                                   (##unchecked-structure-ref
                                    _ctx153021_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r153024_)))))
                 (_import-submodule152724_
                  (lambda (_hd152988_ _K152989_ _rest152990_ _r152991_)
                    (let* ((_e152992152999_ _hd152988_)
                           (_E152994153003_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152992152999_)))
                           (_E152993153017_
                            (lambda ()
                              (if (gx#stx-pair? _e152992152999_)
                                  (let ((_e152995153007_
                                         (gx#syntax-e _e152992152999_)))
                                    (let ((_hd152996153010_
                                           (##car _e152995153007_))
                                          (_tl152997153012_
                                           (##cdr _e152995153007_)))
                                      (let ((_spath153015_ _tl152997153012_))
                                        (if '#t
                                            (_import1152723_
                                             (_import-spec-source152727_
                                              _spath153015_)
                                             _K152989_
                                             _rest152990_
                                             _r152991_)
                                            (_E152994153003_)))))
                                  (_E152994153003_)))))
                      (_E152993153017_))))
                 (_import-runtime152725_
                  (lambda (_hd152955_ _K152956_ _rest152957_ _r152958_)
                    (let* ((_e152959152966_ _hd152955_)
                           (_E152961152970_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152959152966_)))
                           (_E152960152984_
                            (lambda ()
                              (if (gx#stx-pair? _e152959152966_)
                                  (let ((_e152962152974_
                                         (gx#syntax-e _e152959152966_)))
                                    (let ((_hd152963152977_
                                           (##car _e152962152974_))
                                          (_tl152964152979_
                                           (##cdr _e152962152974_)))
                                      (let ((_spath152982_ _tl152964152979_))
                                        (if '#t
                                            (_K152956_
                                             _rest152957_
                                             (cons (_import-spec-source152727_
                                                    _spath152982_)
                                                   _r152958_))
                                            (_E152961152970_)))))
                                  (_E152961152970_)))))
                      (_E152960152984_))))
                 (_import-spec152726_
                  (lambda (_hd152794_ _K152795_ _rest152796_ _r152797_)
                    (let* ((_e152798152815_ _hd152794_)
                           (_E152807152819_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152798152815_)))
                           (_E152800152929_
                            (lambda ()
                              (if (gx#stx-pair? _e152798152815_)
                                  (let ((_e152808152823_
                                         (gx#syntax-e _e152798152815_)))
                                    (let ((_hd152809152826_
                                           (##car _e152808152823_))
                                          (_tl152810152828_
                                           (##cdr _e152808152823_)))
                                      (if (gx#stx-pair? _tl152810152828_)
                                          (let ((_e152811152831_
                                                 (gx#syntax-e
                                                  _tl152810152828_)))
                                            (let ((_hd152812152834_
                                                   (##car _e152811152831_))
                                                  (_tl152813152836_
                                                   (##cdr _e152811152831_)))
                                              (let* ((_path152839_
                                                      _hd152812152834_)
                                                     (_specs152841_
                                                      _tl152813152836_))
                                                (if '#t
                                                    (let ((_src-ctx152843_
                                                           (_import-spec-source152727_
                                                            _path152839_))
                                                          (_exports152844_
                                                           (make-table))
                                                          (_specs152845_
                                                           (gx#syntax->list
                                                            _specs152841_)))
                                                      (for-each
                                                       (lambda (_out152847_)
                                                         (table-set!
                                                          _exports152844_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out152847_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out152847_
                         '4
                         gx#module-export::t
                         '#f))
                  _out152847_))
               (##unchecked-structure-ref
                _src-ctx152843_
                '9
                gx#module-context::t
                '#f))
              (_K152795_
               _rest152796_
               (foldl1 (lambda (_spec152849_ _r152850_)
                         (let* ((_e152851152867_ _spec152849_)
                                (_E152853152871_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e152851152867_)))
                                (_E152852152925_
                                 (lambda ()
                                   (if (gx#stx-pair? _e152851152867_)
                                       (let ((_e152854152875_
                                              (gx#syntax-e _e152851152867_)))
                                         (let ((_hd152855152878_
                                                (##car _e152854152875_))
                                               (_tl152856152880_
                                                (##cdr _e152854152875_)))
                                           (let ((_phi152883_
                                                  _hd152855152878_))
                                             (if (gx#stx-pair?
                                                  _tl152856152880_)
                                                 (let ((_e152857152885_
                                                        (gx#syntax-e
                                                         _tl152856152880_)))
                                                   (let ((_hd152858152888_
                                                          (##car _e152857152885_))
                                                         (_tl152859152890_
                                                          (##cdr _e152857152885_)))
                                                     (let ((_name152893_
                                                            _hd152858152888_))
                                                       (if (gx#stx-pair?
                                                            _tl152859152890_)
                                                           (let ((_e152860152895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl152859152890_)))
                     (let ((_hd152861152898_ (##car _e152860152895_))
                           (_tl152862152900_ (##cdr _e152860152895_)))
                       (let ((_src-phi152903_ _hd152861152898_))
                         (if (gx#stx-pair? _tl152862152900_)
                             (let ((_e152863152905_
                                    (gx#syntax-e _tl152862152900_)))
                               (let ((_hd152864152908_ (##car _e152863152905_))
                                     (_tl152865152910_
                                      (##cdr _e152863152905_)))
                                 (let ((_src-name152913_ _hd152864152908_))
                                   (if (gx#stx-null? _tl152865152910_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi152903_)
                                                (gx#identifier?
                                                 _src-name152913_)
                                                (gx#stx-fixnum? _phi152883_)
                                                (gx#identifier? _name152893_))
                                           (let ((_src-phi152915_
                                                  (gx#stx-e _src-phi152903_))
                                                 (_src-name152916_
                                                  (gx#core-identifier-key
                                                   _src-name152913_))
                                                 (_phi152917_
                                                  (gx#stx-e _phi152883_))
                                                 (_name152918_
                                                  (gx#core-identifier-key
                                                   _name152893_)))
                                             (let ((_$e152920_
                                                    (table-ref
                                                     _exports152844_
                                                     (cons _src-phi152915_
                                                           _src-name152916_)
                                                     '#f)))
                                               (if _$e152920_
                                                   ((lambda (_out152923_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out152923_
                                                             _name152918_
                                                             (fx- _phi152917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi152915_))
                    _r152850_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e152920_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx152719_
                                                    _hd152794_))))
                                           (_E152853152871_))
                                       (_E152853152871_)))))
                             (_E152853152871_)))))
                   (_E152853152871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E152853152871_)))))
                                       (_E152853152871_)))))
                           (_E152852152925_)))
                       _r152797_
                       _specs152845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152807152819_)))))
                                          (_E152807152819_))))
                                  (_E152807152819_))))
                           (_E152799152951_
                            (lambda ()
                              (if (gx#stx-pair? _e152798152815_)
                                  (let ((_e152801152933_
                                         (gx#syntax-e _e152798152815_)))
                                    (let ((_hd152802152936_
                                           (##car _e152801152933_))
                                          (_tl152803152938_
                                           (##cdr _e152801152933_)))
                                      (if (gx#stx-pair? _tl152803152938_)
                                          (let ((_e152804152941_
                                                 (gx#syntax-e
                                                  _tl152803152938_)))
                                            (let ((_hd152805152944_
                                                   (##car _e152804152941_))
                                                  (_tl152806152946_
                                                   (##cdr _e152804152941_)))
                                              (let ((_path152949_
                                                     _hd152805152944_))
                                                (if (gx#stx-null?
                                                     _tl152806152946_)
                                                    (if '#t
                                                        (_K152795_
                                                         _rest152796_
                                                         (cons (_import-spec-source152727_
                                                                _path152949_)
                                                               _r152797_))
                                                        (_E152800152929_))
                                                    (_E152800152929_)))))
                                          (_E152800152929_))))
                                  (_E152800152929_)))))
                      (_E152799152951_))))
                 (_import-spec-source152727_
                  (lambda (_spath152792_)
                    (gx#core-import-nested-module _spath152792_ _stx152719_)))
                 (_import!152728_
                  (lambda (_rbody152741_)
                    (letrec* ((_current-ctx152743_
                               (gx#current-expander-context))
                              (_deps152744_ (make-table 'test: eq?))
                              (_bind!152745_
                               (lambda (_hd152790_)
                                 (gx#core-bind-import!__1
                                  _hd152790_
                                  _current-ctx152743_))))
                      (let _lp152747_ ((_rest152749_ _rbody152741_)
                                       (_body152750_ '()))
                        (let* ((_rest152751152759_ _rest152749_)
                               (_else152753152769_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx152743_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx152743_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx152743_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body152750_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx152767_ _g159791_)
                                     (gx#eval-module _ctx152767_))
                                   _deps152744_)
                                  _body152750_))
                               (_K152755152778_
                                (lambda (_rest152772_ _hd152773_)
                                  (if (##structure-direct-instance-of?
                                       _hd152773_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!152745_ _hd152773_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd152773_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd152773_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps152744_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd152773_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd152773_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!152745_
                                             (##unchecked-structure-ref
                                              _hd152773_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd152773_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps152744_
                                                 (##unchecked-structure-ref
                                                  _hd152773_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e152775_
                                                 (##structure-instance-of?
                                                  _hd152773_
                                                  'gx#module-context::t)))
                                            (if _$e152775_
                                                _$e152775_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx152719_
                                                 _hd152773_)))))
                                  (_lp152747_
                                   _rest152772_
                                   (cons _hd152773_ _body152750_)))))
                          (if (##pair? _rest152751152759_)
                              (let ((_hd152756152781_
                                     (##car _rest152751152759_))
                                    (_tl152757152783_
                                     (##cdr _rest152751152759_)))
                                (let* ((_hd152786_ _hd152756152781_)
                                       (_rest152788_ _tl152757152783_))
                                  (_K152755152778_ _rest152788_ _hd152786_)))
                              (_else152753152769_)))))))
                 (_expanded-import?152729_
                  (lambda (_e152733_)
                    (let ((_$e152735_
                           (##structure-direct-instance-of?
                            _e152733_
                            'gx#import-set::t)))
                      (if _$e152735_
                          _$e152735_
                          (let ((_$e152738_
                                 (##structure-direct-instance-of?
                                  _e152733_
                                  'gx#module-import::t)))
                            (if _$e152738_
                                _$e152738_
                                (##structure-instance-of?
                                 _e152733_
                                 'gx#module-context::t))))))))
          (let ((_rbody152731_
                 (gx#core-expand-import/export
                  _stx152719_
                  _expanded-import?152729_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1152722_)))
            (if _internal-expand?152720_
                (reverse _rbody152731_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!152728_ _rbody152731_))
                 (gx#stx-source _stx152719_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx153045_)
        (let ((_internal-expand?153047_ '#f))
          (gx#core-expand-import%__% _stx153045_ _internal-expand?153047_))))
    (define gx#core-expand-import%
      (lambda _g159793_
        (let ((_g159792_ (##length _g159793_)))
          (cond ((##fx= _g159792_ 1)
                 (apply (lambda (_stx153045_)
                          (gx#core-expand-import%__0 _stx153045_))
                        _g159793_))
                ((##fx= _g159792_ 2)
                 (apply (lambda (_stx153049_ _internal-expand?153050_)
                          (gx#core-expand-import%__%
                           _stx153049_
                           _internal-expand?153050_))
                        _g159793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g159793_))))))
    (define gx#core-import-nested-module
      (lambda (_spath152646_ _where152647_)
        (let* ((_e152648152655_ _spath152646_)
               (_E152650152659_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152648152655_)))
               (_E152649152714_
                (lambda ()
                  (if (gx#stx-pair? _e152648152655_)
                      (let ((_e152651152663_ (gx#syntax-e _e152648152655_)))
                        (let ((_hd152652152666_ (##car _e152651152663_))
                              (_tl152653152668_ (##cdr _e152651152663_)))
                          (let* ((_origin152671_ _hd152652152666_)
                                 (_sub152673_ _tl152653152668_))
                            (if '#t
                                (let ((_origin-ctx152675_
                                       (if (gx#stx-false? _origin152671_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin152671_))))
                                  (let _lp152677_ ((_rest152679_ _sub152673_)
                                                   (_ctx152680_
                                                    _origin-ctx152675_))
                                    (let* ((_e152681152688_ _rest152679_)
                                           (_E152683152692_
                                            (lambda () _ctx152680_))
                                           (_E152682152710_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e152681152688_)
                                                  (let ((_e152684152696_
                                                         (gx#syntax-e
                                                          _e152681152688_)))
                                                    (let ((_hd152685152699_
                                                           (##car _e152684152696_))
                                                          (_tl152686152701_
                                                           (##cdr _e152684152696_)))
                                                      (let* ((_id152704_
                                                              _hd152685152699_)
                                                             (_rest152706_
                                                              _tl152686152701_))
                                                        (if '#t
                                                            (let ((_bind152708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id152704_
                            '0
                            _ctx152680_)))
                      (if (and (##structure-direct-instance-of?
                                _bind152708_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind152708_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where152647_
                           _spath152646_
                           _id152704_))
                      (_lp152677_
                       _rest152706_
                       (##unchecked-structure-ref
                        _bind152708_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E152683152692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152683152692_)))))
                                      (_E152682152710_))))
                                (_E152650152659_)))))
                      (_E152650152659_)))))
          (_E152649152714_))))
    (define gx#core-expand-import-source
      (lambda (_hd152644_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd152644_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx152152_ _internal-expand?152153_)
        (letrec* ((_make-export__159722159723_
                   (lambda (_bind152592_ _phi152593_ _ctx152594_ _name152595_)
                     (let* ((_key152597_
                             (##unchecked-structure-ref
                              _bind152592_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key152599_
                             (if _name152595_
                                 (gx#core-identifier-key _name152595_)
                                 _key152597_)))
                       (##structure
                        gx#module-export::t
                        _ctx152594_
                        _key152597_
                        _phi152593_
                        _export-key152599_
                        (let ((_$e152602_
                               (##structure-instance-of?
                                _bind152592_
                                'gx#extern-binding::t)))
                          (if _$e152602_
                              _$e152602_
                              (##structure-direct-instance-of?
                               _bind152592_
                               'gx#import-binding::t)))))))
                  (_make-export__0__159724159727_
                   (lambda (_bind152608_)
                     (let* ((_phi152610_ (gx#current-export-expander-phi))
                            (_ctx152612_ (gx#current-expander-context))
                            (_name152614_ '#f))
                       (_make-export__159722159723_
                        _bind152608_
                        _phi152610_
                        _ctx152612_
                        _name152614_))))
                  (_make-export__1__159725159728_
                   (lambda (_bind152616_ _phi152617_)
                     (let* ((_ctx152619_ (gx#current-expander-context))
                            (_name152621_ '#f))
                       (_make-export__159722159723_
                        _bind152616_
                        _phi152617_
                        _ctx152619_
                        _name152621_))))
                  (_make-export__2__159726159729_
                   (lambda (_bind152623_ _phi152624_ _ctx152625_)
                     (let ((_name152627_ '#f))
                       (_make-export__159722159723_
                        _bind152623_
                        _phi152624_
                        _ctx152625_
                        _name152627_))))
                  (_make-export152155_
                   (lambda _g159795_
                     (let ((_g159794_ (##length _g159795_)))
                       (cond ((##fx= _g159794_ 1)
                              (apply (lambda (_bind152608_)
                                       (_make-export__0__159724159727_
                                        _bind152608_))
                                     _g159795_))
                             ((##fx= _g159794_ 2)
                              (apply (lambda (_bind152616_ _phi152617_)
                                       (_make-export__1__159725159728_
                                        _bind152616_
                                        _phi152617_))
                                     _g159795_))
                             ((##fx= _g159794_ 3)
                              (apply (lambda (_bind152623_
                                              _phi152624_
                                              _ctx152625_)
                                       (_make-export__2__159726159729_
                                        _bind152623_
                                        _phi152624_
                                        _ctx152625_))
                                     _g159795_))
                             ((##fx= _g159794_ 4)
                              (apply (lambda (_bind152629_
                                              _phi152630_
                                              _ctx152631_
                                              _name152632_)
                                       (_make-export__159722159723_
                                        _bind152629_
                                        _phi152630_
                                        _ctx152631_
                                        _name152632_))
                                     _g159795_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g159795_))))))
                  (_expand1152156_
                   (lambda (_hd152305_ _K152306_ _rest152307_ _r152308_)
                     (let* ((_e152309152341_ _hd152305_)
                            (_E152336152345_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx152152_
                                _hd152305_)))
                            (_E152326152424_
                             (lambda ()
                               (if (gx#stx-pair? _e152309152341_)
                                   (let ((_e152337152349_
                                          (gx#syntax-e _e152309152341_)))
                                     (let ((_hd152338152352_
                                            (##car _e152337152349_))
                                           (_tl152339152354_
                                            (##cdr _e152337152349_)))
                                       (if (eq? (gx#stx-e _hd152338152352_)
                                                'import:)
                                           (let ((_in152357_ _tl152339152354_))
                                             (if (gx#stx-list? _in152357_)
                                                 (let _lp152359_ ((_in-rest152361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in152357_)
                          (_r152362_ _r152308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e152363152370_
                                                           _in-rest152361_)
                                                          (_E152365152374_
                                                           (lambda ()
                                                             (_K152306_
                                                              _rest152307_
                                                              _r152362_)))
                                                          (_E152364152420_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e152363152370_)
                         (let ((_e152366152378_ (gx#syntax-e _e152363152370_)))
                           (let ((_hd152367152381_ (##car _e152366152378_))
                                 (_tl152368152383_ (##cdr _e152366152378_)))
                             (let* ((_hd152386_ _hd152367152381_)
                                    (_in-rest152388_ _tl152368152383_))
                               (if '#t
                                   (let ((_src152418_
                                          (if (gx#core-bound-module?
                                               _hd152386_)
                                              (gx#syntax-local-e__0 _hd152386_)
                                              (if (gx#core-library-module-path?
                                                   _hd152386_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd152386_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd152386_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd152386_))
                                                      (if (gx#stx-string?
                                                           _hd152386_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd152386_
                                                            (gx#stx-source
                                                             _stx152152_)))
                                                          (let* ((_e152389152396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd152386_)
                         (_E152391152400_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx152152_
                             _hd152386_)))
                         (_E152390152414_
                          (lambda ()
                            (if (gx#stx-pair? _e152389152396_)
                                (let ((_e152392152404_
                                       (gx#syntax-e _e152389152396_)))
                                  (let ((_hd152393152407_
                                         (##car _e152392152404_))
                                        (_tl152394152409_
                                         (##cdr _e152392152404_)))
                                    (if (eq? (gx#stx-e _hd152393152407_) 'in:)
                                        (let ((_spath152412_ _tl152394152409_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath152412_
                                               _stx152152_)
                                              (_E152391152400_)))
                                        (_E152391152400_))))
                                (_E152391152400_)))))
                    (_E152390152414_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp152359_
                                      _in-rest152388_
                                      (_export-imports152157_
                                       _src152418_
                                       _r152362_)))
                                   (_E152365152374_)))))
                         (_E152365152374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152364152420_)))
                                                 (_E152336152345_)))
                                           (_E152336152345_))))
                                   (_E152336152345_))))
                            (_E152313152463_
                             (lambda ()
                               (if (gx#stx-pair? _e152309152341_)
                                   (let ((_e152327152428_
                                          (gx#syntax-e _e152309152341_)))
                                     (let ((_hd152328152431_
                                            (##car _e152327152428_))
                                           (_tl152329152433_
                                            (##cdr _e152327152428_)))
                                       (if (eq? (gx#stx-e _hd152328152431_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl152329152433_)
                                               (let ((_e152330152436_
                                                      (gx#syntax-e
                                                       _tl152329152433_)))
                                                 (let ((_hd152331152439_
                                                        (##car _e152330152436_))
                                                       (_tl152332152441_
                                                        (##cdr _e152330152436_)))
                                                   (let ((_id152444_
                                                          _hd152331152439_))
                                                     (if (gx#stx-pair?
                                                          _tl152332152441_)
                                                         (let ((_e152333152446_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152332152441_)))
                   (let ((_hd152334152449_ (##car _e152333152446_))
                         (_tl152335152451_ (##cdr _e152333152446_)))
                     (let ((_name152454_ _hd152334152449_))
                       (if (gx#stx-null? _tl152335152451_)
                           (if '#t
                               (let* ((_phi152456_
                                       (gx#current-export-expander-phi))
                                      (_$e152458_
                                       (gx#core-resolve-identifier__1
                                        _id152444_
                                        _phi152456_)))
                                 (if _$e152458_
                                     ((lambda (_bind152461_)
                                        (_K152306_
                                         _rest152307_
                                         (cons (_make-export__159722159723_
                                                _bind152461_
                                                _phi152456_
                                                (gx#current-expander-context)
                                                _name152454_)
                                               _r152308_)))
                                      _$e152458_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx152152_
                                      _hd152305_
                                      _id152444_)))
                               (_E152326152424_))
                           (_E152326152424_)))))
                 (_E152326152424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152326152424_))
                                           (_E152326152424_))))
                                   (_E152326152424_))))
                            (_E152312152512_
                             (lambda ()
                               (if (gx#stx-pair? _e152309152341_)
                                   (let ((_e152314152467_
                                          (gx#syntax-e _e152309152341_)))
                                     (let ((_hd152315152470_
                                            (##car _e152314152467_))
                                           (_tl152316152472_
                                            (##cdr _e152314152467_)))
                                       (if (eq? (gx#stx-e _hd152315152470_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl152316152472_)
                                               (let ((_e152317152475_
                                                      (gx#syntax-e
                                                       _tl152316152472_)))
                                                 (let ((_hd152318152478_
                                                        (##car _e152317152475_))
                                                       (_tl152319152480_
                                                        (##cdr _e152317152475_)))
                                                   (let ((_phi152483_
                                                          _hd152318152478_))
                                                     (if (gx#stx-pair?
                                                          _tl152319152480_)
                                                         (let ((_e152320152485_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152319152480_)))
                   (let ((_hd152321152488_ (##car _e152320152485_))
                         (_tl152322152490_ (##cdr _e152320152485_)))
                     (let ((_id152493_ _hd152321152488_))
                       (if (gx#stx-pair? _tl152322152490_)
                           (let ((_e152323152495_
                                  (gx#syntax-e _tl152322152490_)))
                             (let ((_hd152324152498_ (##car _e152323152495_))
                                   (_tl152325152500_ (##cdr _e152323152495_)))
                               (let ((_name152503_ _hd152324152498_))
                                 (if (gx#stx-null? _tl152325152500_)
                                     (if (and (gx#stx-fixnum? _phi152483_)
                                              (gx#identifier? _id152493_)
                                              (gx#identifier? _name152503_))
                                         (let* ((_phi152505_
                                                 (gx#stx-e _phi152483_))
                                                (_$e152507_
                                                 (gx#core-resolve-identifier__1
                                                  _id152493_
                                                  _phi152505_)))
                                           (if _$e152507_
                                               ((lambda (_bind152510_)
                                                  (_K152306_
                                                   _rest152307_
                                                   (cons (_make-export__159722159723_
                                                          _bind152510_
                                                          _phi152505_
                                                          (gx#current-expander-context)
                                                          _name152503_)
                                                         _r152308_)))
                                                _$e152507_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx152152_
                                                _hd152305_
                                                _id152493_)))
                                         (_E152313152463_))
                                     (_E152313152463_)))))
                           (_E152313152463_)))))
                 (_E152313152463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152313152463_))
                                           (_E152313152463_))))
                                   (_E152313152463_))))
                            (_E152311152523_
                             (lambda ()
                               (let ((_id152516_ _e152309152341_))
                                 (if (gx#identifier? _id152516_)
                                     (let ((_$e152518_
                                            (gx#core-resolve-identifier__1
                                             _id152516_
                                             (gx#current-export-expander-phi))))
                                       (if _$e152518_
                                           ((lambda (_bind152521_)
                                              (_K152306_
                                               _rest152307_
                                               (cons (_make-export__0__159724159727_
                                                      _bind152521_)
                                                     _r152308_)))
                                            _$e152518_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx152152_
                                            _hd152305_)))
                                     (_E152312152512_)))))
                            (_E152310152587_
                             (lambda ()
                               (if (eq? (gx#stx-e _e152309152341_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx152527_
                                               (gx#current-expander-context))
                                              (_current-phi152529_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx152531_
                                               (gx#core-context-shift
                                                _current-ctx152527_
                                                _current-phi152529_))
                                              (_phi-bind152533_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx152531_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp152536_ ((_bind-rest152538_
                                                           _phi-bind152533_)
                                                          (_set152539_ '()))
                                           (let* ((_bind-rest152540152550_
                                                   _bind-rest152538_)
                                                  (_else152542152558_
                                                   (lambda ()
                                                     (_K152306_
                                                      _rest152307_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi152529_
                                                             _set152539_)
                                                            _r152308_))))
                                                  (_K152544152568_
                                                   (lambda (_bind-rest152561_
                                                            _bind152562_
                                                            _key152563_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind152562_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind152562_))
                                                         (_lp152536_
                                                          _bind-rest152561_
                                                          _set152539_)
                                                         (_lp152536_
                                                          _bind-rest152561_
                                                          (cons (_make-export__2__159726159729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind152562_
                         _current-phi152529_
                         _current-ctx152527_)
                        _set152539_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest152540152550_)
                                                 (let ((_hd152545152571_
                                                        (##car _bind-rest152540152550_))
                                                       (_tl152546152573_
                                                        (##cdr _bind-rest152540152550_)))
                                                   (if (##pair? _hd152545152571_)
                                                       (let ((_hd152547152576_
                                                              (##car _hd152545152571_))
                                                             (_tl152548152578_
                                                              (##cdr _hd152545152571_)))
                                                         (let* ((_key152581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd152547152576_)
                        (_bind152583_ _tl152548152578_)
                        (_bind-rest152585_ _tl152546152573_))
                   (_K152544152568_
                    _bind-rest152585_
                    _bind152583_
                    _key152581_)))
               (_else152542152558_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else152542152558_)))))
                                       (_E152311152523_))
                                   (_E152311152523_)))))
                       (_E152310152587_))))
                  (_export-imports152157_
                   (lambda (_src152181_ _r152182_)
                     (letrec* ((_current-ctx152184_
                                (gx#current-expander-context))
                               (_current-phi152185_
                                (gx#current-export-expander-phi))
                               (_import->export152186_
                                (lambda (_in152267_)
                                  (let* ((_in152268152276_ _in152267_)
                                         (_E152270152280_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in152268152276_)))
                                         (_K152271152287_
                                          (lambda (_phi152283_
                                                   _key152284_
                                                   _out152285_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx152184_
                                             _key152284_
                                             _phi152283_
                                             _key152284_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in152268152276_
                                         'gx#module-import::t)
                                        (let* ((_e152272152290_
                                                (##unchecked-structure-ref
                                                 _in152268152276_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out152293_ _e152272152290_)
                                               (_e152273152295_
                                                (##unchecked-structure-ref
                                                 _in152268152276_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key152298_ _e152273152295_)
                                               (_e152274152300_
                                                (##unchecked-structure-ref
                                                 _in152268152276_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi152303_ _e152274152300_))
                                          (_K152271152287_
                                           _phi152303_
                                           _key152298_
                                           _out152293_))
                                        (_E152270152280_)))))
                               (_fold-e152187_
                                (lambda (_in152189_ _r152190_)
                                  (let* ((_in152191152205_ _in152189_)
                                         (_else152194152213_
                                          (lambda () _r152190_)))
                                    (let ((_K152200152249_
                                           (lambda (_phi152245_
                                                    _key152246_
                                                    _out152247_)
                                             (if (and (fx= _phi152245_
                                                           _current-phi152185_)
                                                      (eq? _src152181_
                                                           (##unchecked-structure-ref
                                                            _out152247_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export152186_
                                                        _in152189_)
                                                       _r152190_)
                                                 _r152190_)))
                                          (_K152196152224_
                                           (lambda (_imports152217_
                                                    _phi152218_
                                                    _ctx152219_)
                                             (if (and (fx= _phi152218_
                                                           _current-phi152185_)
                                                      (eq? _src152181_
                                                           _ctx152219_))
                                                 (foldl1 (lambda (_in152221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r152222_)
                   (cons (_import->export152186_ _in152221_) _r152222_))
                 _r152190_
                 _imports152217_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r152190_))))
                                      (let ((_try-match152193152242_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in152191152205_
                                                    'gx#import-set::t)
                                                   (let* ((_e152197152227_
                                                           (##unchecked-structure-ref
                                                            _in152191152205_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152198152232_
                                                           (##unchecked-structure-ref
                                                            _in152191152205_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152199152237_
                                                           (##unchecked-structure-ref
                                                            _in152191152205_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx152230_
                                                            _e152197152227_)
                                                           (_phi152235_
                                                            _e152198152232_)
                                                           (_imports152240_
                                                            _e152199152237_))
                                                       (_K152196152224_
                                                        _imports152240_
                                                        _phi152235_
                                                        _ctx152230_)))
                                                   (_else152194152213_)))))
                                        (if (##structure-direct-instance-of?
                                             _in152191152205_
                                             'gx#module-import::t)
                                            (let* ((_e152201152252_
                                                    (##unchecked-structure-ref
                                                     _in152191152205_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152202152257_
                                                    (##unchecked-structure-ref
                                                     _in152191152205_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152203152262_
                                                    (##unchecked-structure-ref
                                                     _in152191152205_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out152255_
                                                     _e152201152252_)
                                                    (_key152260_
                                                     _e152202152257_)
                                                    (_phi152265_
                                                     _e152203152262_))
                                                (_K152200152249_
                                                 _phi152265_
                                                 _key152260_
                                                 _out152255_)))
                                            (_try-match152193152242_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src152181_
                              _current-phi152185_
                              (foldl1 _fold-e152187_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx152184_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r152182_))))
                  (_export!152158_
                   (lambda (_rbody152171_)
                     (letrec* ((_current-ctx152173_
                                (gx#current-expander-context))
                               (_fold-e152174_
                                (lambda (_out152178_ _r152179_)
                                  (if (##structure-direct-instance-of?
                                       _out152178_
                                       'gx#module-export::t)
                                      (cons _out152178_ _r152179_)
                                      (if (##structure-direct-instance-of?
                                           _out152178_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r152179_
                                                  (##unchecked-structure-ref
                                                   _out152178_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r152179_)))))
                       (let ((_body152176_ (reverse _rbody152171_)))
                         (##unchecked-structure-set!
                          _current-ctx152173_
                          (foldl1 _fold-e152174_
                                  (##unchecked-structure-ref
                                   _current-ctx152173_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body152176_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body152176_))))
                  (_expanded-export?152159_
                   (lambda (_e152166_)
                     (let ((_$e152168_
                            (##structure-direct-instance-of?
                             _e152166_
                             'gx#module-export::t)))
                       (if _$e152168_
                           _$e152168_
                           (##structure-direct-instance-of?
                            _e152166_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?152153_)
              (let ((_rbody152164_
                     (gx#core-expand-import/export
                      _stx152152_
                      _expanded-export?152159_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1152156_)))
                (if _internal-expand?152153_
                    (reverse _rbody152164_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!152158_ _rbody152164_))
                     (gx#stx-source _stx152152_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx152152_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx152152_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx152637_)
        (let ((_internal-expand?152639_ '#f))
          (gx#core-expand-export%__% _stx152637_ _internal-expand?152639_))))
    (define gx#core-expand-export%
      (lambda _g159797_
        (let ((_g159796_ (##length _g159797_)))
          (cond ((##fx= _g159796_ 1)
                 (apply (lambda (_stx152637_)
                          (gx#core-expand-export%__0 _stx152637_))
                        _g159797_))
                ((##fx= _g159796_ 2)
                 (apply (lambda (_stx152641_ _internal-expand?152642_)
                          (gx#core-expand-export%__%
                           _stx152641_
                           _internal-expand?152642_))
                        _g159797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g159797_))))))
    (define gx#core-expand-export-source
      (lambda (_hd152149_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd152149_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx152119_)
        (let* ((_e152120152127_ _stx152119_)
               (_E152122152131_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152120152127_)))
               (_E152121152145_
                (lambda ()
                  (if (gx#stx-pair? _e152120152127_)
                      (let ((_e152123152135_ (gx#syntax-e _e152120152127_)))
                        (let ((_hd152124152138_ (##car _e152123152135_))
                              (_tl152125152140_ (##cdr _e152123152135_)))
                          (let ((_body152143_ _tl152125152140_))
                            (if (gx#identifier-list? _body152143_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body152143_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body152143_))
                                   (gx#stx-source _stx152119_)))
                                (_E152122152131_)))))
                      (_E152122152131_)))))
          (_E152121152145_))))
    (define gx#core-bind-feature!__%
      (lambda (_id152085_ _private?152086_ _phi152087_ _ctx152088_)
        (gx#core-bind-syntax!__%
         _id152085_
         ((if _private?152086_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id152085_))
         _private?152086_
         _phi152087_
         _ctx152088_)))
    (define gx#core-bind-feature!__0
      (lambda (_id152093_)
        (let* ((_private?152095_ '#f)
               (_phi152097_ (gx#current-expander-phi))
               (_ctx152099_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152093_
           _private?152095_
           _phi152097_
           _ctx152099_))))
    (define gx#core-bind-feature!__1
      (lambda (_id152101_ _private?152102_)
        (let* ((_phi152104_ (gx#current-expander-phi))
               (_ctx152106_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152101_
           _private?152102_
           _phi152104_
           _ctx152106_))))
    (define gx#core-bind-feature!__2
      (lambda (_id152108_ _private?152109_ _phi152110_)
        (let ((_ctx152112_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152108_
           _private?152109_
           _phi152110_
           _ctx152112_))))
    (define gx#core-bind-feature!
      (lambda _g159799_
        (let ((_g159798_ (##length _g159799_)))
          (cond ((##fx= _g159798_ 1)
                 (apply (lambda (_id152093_)
                          (gx#core-bind-feature!__0 _id152093_))
                        _g159799_))
                ((##fx= _g159798_ 2)
                 (apply (lambda (_id152101_ _private?152102_)
                          (gx#core-bind-feature!__1
                           _id152101_
                           _private?152102_))
                        _g159799_))
                ((##fx= _g159798_ 3)
                 (apply (lambda (_id152108_ _private?152109_ _phi152110_)
                          (gx#core-bind-feature!__2
                           _id152108_
                           _private?152109_
                           _phi152110_))
                        _g159799_))
                ((##fx= _g159798_ 4)
                 (apply (lambda (_id152114_
                                 _private?152115_
                                 _phi152116_
                                 _ctx152117_)
                          (gx#core-bind-feature!__%
                           _id152114_
                           _private?152115_
                           _phi152116_
                           _ctx152117_))
                        _g159799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g159799_))))))))
