(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707552287)
  (begin
    (declare (not safe))
    (define gx#module-import::t
      (make-struct-type*
       'gx#module-import::t
       'module-import
       '#f
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-import? (make-struct-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _$args155526_
        (apply make-struct-instance gx#module-import::t _$args155526_)))
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
      (make-struct-type*
       'gx#module-export::t
       'module-export
       '#f
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#module-export? (make-struct-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _$args155523_
        (apply make-struct-instance gx#module-export::t _$args155523_)))
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
      (make-struct-type*
       'gx#import-set::t
       'import-set
       '#f
       '(source phi imports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-set? (make-struct-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _$args155520_
        (apply make-struct-instance gx#import-set::t _$args155520_)))
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
      (make-struct-type*
       'gx#export-set::t
       'export-set
       '#f
       '(source phi exports)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#export-set? (make-struct-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _$args155517_
        (apply make-struct-instance gx#export-set::t _$args155517_)))
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
      (make-class-type*
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _$args155514_
        (apply make-class-instance gx#import-expander::t _$args155514_)))
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
      (make-class-type*
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _$args155511_
        (apply make-class-instance gx#export-expander::t _$args155511_)))
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
      (make-class-type*
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _$args155508_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args155508_)))
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
      (lambda (_path155505_ _fun155506_)
        (call-with-input-file
         (cons 'path: (cons _path155505_ gx#source-file-settings))
         _fun155506_)))
    (define gx#module-context:::init!
      (lambda (_self155499_ _id155500_ _super155501_ _ns155502_ _path155503_)
        (if (##fx< '11 (##structure-length _self155499_))
            (begin
              (##unchecked-structure-set!
               _self155499_
               _id155500_
               '1
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               (make-table 'test: eq?)
               '2
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               _super155501_
               '3
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               '#f
               '4
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               '#f
               '5
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               _ns155502_
               '6
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               _path155503_
               '7
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               '()
               '8
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               '()
               '9
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               '#f
               '10
               (##structure-type _self155499_)
               '#f)
              (##unchecked-structure-set!
               _self155499_
               '#f
               '11
               (##structure-type _self155499_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155499_
                   '11
                   (##vector-length _self155499_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self155343_ _ctx155344_ _root155345_)
        (let ((_super155353_
               (let ((_$e155347_ _root155345_))
                 (if _$e155347_
                     _$e155347_
                     (let ((_$e155350_ (gx#core-context-root__0)))
                       (if _$e155350_
                           _$e155350_
                           (let ((__obj159762
                                  (make-object gx#root-context::t '3)))
                             (let ((__constructor159763
                                    (find-method gx#root-context::t ':init!)))
                               (if __constructor159763
                                   (__constructor159763 __obj159762)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj159762)))))))
          (if _ctx155344_
              (let ((_id155356_
                     (##structure-ref
                      _ctx155344_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path155357_
                     (##structure-ref _ctx155344_ '7 gx#module-context::t '#f))
                    (_in155358_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx155344_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e155359_
                     (make-promise (lambda () (gx#eval-module _ctx155344_)))))
                (if (##fx< '8 (##structure-length _self155343_))
                    (begin
                      (##unchecked-structure-set!
                       _self155343_
                       _id155356_
                       '1
                       (##structure-type _self155343_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155343_
                       (make-table 'test: eq? 'size: (length _in155358_))
                       '2
                       (##structure-type _self155343_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155343_
                       _super155353_
                       '3
                       (##structure-type _self155343_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155343_
                       '#f
                       '4
                       (##structure-type _self155343_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155343_
                       '#f
                       '5
                       (##structure-type _self155343_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155343_
                       _path155357_
                       '6
                       (##structure-type _self155343_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155343_
                       _in155358_
                       '7
                       (##structure-type _self155343_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155343_
                       _e155359_
                       '8
                       (##structure-type _self155343_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self155343_
                           '8
                           (##vector-length _self155343_)))
                (for-each
                 (lambda (_g155360155362_)
                   (gx#core-bind-weak-import!__% _g155360155362_ _self155343_))
                 _in155358_))
              (if (##fx< '8 (##structure-length _self155343_))
                  (begin
                    (##unchecked-structure-set!
                     _self155343_
                     '#f
                     '1
                     (##structure-type _self155343_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155343_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self155343_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155343_
                     _super155353_
                     '3
                     (##structure-type _self155343_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155343_
                     '#f
                     '4
                     (##structure-type _self155343_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155343_
                     '#f
                     '5
                     (##structure-type _self155343_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155343_
                     '#f
                     '6
                     (##structure-type _self155343_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155343_
                     '()
                     '7
                     (##structure-type _self155343_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155343_
                     '#f
                     '8
                     (##structure-type _self155343_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self155343_
                         '8
                         (##vector-length _self155343_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self155368_ _ctx155369_)
        (let ((_root155371_ '#f))
          (gx#prelude-context:::init!__%
           _self155368_
           _ctx155369_
           _root155371_))))
    (define gx#prelude-context:::init!
      (lambda _g159769_
        (let ((_g159768_ (##length _g159769_)))
          (cond ((##fx= _g159768_ 2)
                 (apply (lambda (_self155368_ _ctx155369_)
                          (gx#prelude-context:::init!__0
                           _self155368_
                           _ctx155369_))
                        _g159769_))
                ((##fx= _g159768_ 3)
                 (apply (lambda (_self155373_ _ctx155374_ _root155375_)
                          (gx#prelude-context:::init!__%
                           _self155373_
                           _ctx155374_
                           _root155375_))
                        _g159769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g159769_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self155217_ _e155218_)
        (if (##fx< '3 (##structure-length _self155217_))
            (begin
              (##unchecked-structure-set!
               _self155217_
               _e155218_
               '1
               (##structure-type _self155217_)
               '#f)
              (##unchecked-structure-set!
               _self155217_
               (gx#current-expander-context)
               '2
               (##structure-type _self155217_)
               '#f)
              (##unchecked-structure-set!
               _self155217_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self155217_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155217_
                   '3
                   (##vector-length _self155217_)))))
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
      (lambda (_g154843154846_ _g154844154848_)
        (gx#core-apply-user-expander__%
         _g154843154846_
         _g154844154848_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g154714154717_ _g154715154719_)
        (gx#core-apply-user-expander__%
         _g154714154717_
         _g154715154719_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx154585_)
        (let* ((_path154587_
                (##structure-ref _ctx154585_ '7 gx#module-context::t '#f))
               (_path154589_
                (if (pair? _path154587_) (last _path154587_) _path154587_)))
          (if (string? _path154589_) _path154589_ '#f))))
    (define gx#import-module__%
      (lambda (_path154561_ _reload?154562_ _eval?154563_)
        (let ((_ctx154565_
               ((gx#current-expander-module-import)
                _path154561_
                _reload?154562_)))
          (if (and _ctx154565_ _eval?154563_)
              (gx#eval-module _ctx154565_)
              '#!void)
          _ctx154565_)))
    (define gx#import-module__0
      (lambda (_path154570_)
        (let* ((_reload?154572_ '#f) (_eval?154574_ '#f))
          (gx#import-module__% _path154570_ _reload?154572_ _eval?154574_))))
    (define gx#import-module__1
      (lambda (_path154576_ _reload?154577_)
        (let ((_eval?154579_ '#f))
          (gx#import-module__% _path154576_ _reload?154577_ _eval?154579_))))
    (define gx#import-module
      (lambda _g159771_
        (let ((_g159770_ (##length _g159771_)))
          (cond ((##fx= _g159770_ 1)
                 (apply (lambda (_path154570_)
                          (gx#import-module__0 _path154570_))
                        _g159771_))
                ((##fx= _g159770_ 2)
                 (apply (lambda (_path154576_ _reload?154577_)
                          (gx#import-module__1 _path154576_ _reload?154577_))
                        _g159771_))
                ((##fx= _g159770_ 3)
                 (apply (lambda (_path154581_ _reload?154582_ _eval?154583_)
                          (gx#import-module__%
                           _path154581_
                           _reload?154582_
                           _eval?154583_))
                        _g159771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g159771_))))))
    (define gx#eval-module
      (lambda (_mod154558_) ((gx#current-expander-module-eval) _mod154558_)))
    (define gx#core-eval-module
      (lambda (_obj154543_)
        (letrec ((_force-e154545_
                  (lambda (_getf154554_ _e154555_)
                    (call-with-parameters
                     (lambda () (force (_getf154554_ _e154555_)))
                     gx#current-expander-context
                     _e154555_
                     gx#current-expander-phi
                     '0))))
          (let _recur154547_ ((_e154549_ _obj154543_))
            (if (##structure-instance-of? _e154549_ 'gx#module-context::t)
                (begin
                  (let ((_$e154551_ (gx#core-context-prelude__% _e154549_)))
                    (if _$e154551_ (_recur154547_ _$e154551_) '#!void))
                  (_force-e154545_ gx#module-context-e _e154549_))
                (if (##structure-instance-of? _e154549_ 'gx#prelude-context::t)
                    (_force-e154545_ gx#prelude-context-e _e154549_)
                    (if (gx#stx-string? _e154549_)
                        (_recur154547_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e154549_)))
                        (if (gx#core-library-module-path? _e154549_)
                            (_recur154547_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e154549_)))
                            (error '"Cannot eval module" _obj154543_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx154526_)
        (let _lp154528_ ((_e154530_ _ctx154526_))
          (if (or (##structure-instance-of? _e154530_ 'gx#module-context::t)
                  (##structure-instance-of? _e154530_ 'gx#local-context::t))
              (_lp154528_
               (##unchecked-structure-ref _e154530_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e154530_ 'gx#prelude-context::t)
                  _e154530_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx154539_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx154539_))))
    (define gx#core-context-prelude
      (lambda _g159773_
        (let ((_g159772_ (##length _g159773_)))
          (cond ((##fx= _g159772_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g159773_))
                ((##fx= _g159772_ 1)
                 (apply (lambda (_ctx154541_)
                          (gx#core-context-prelude__% _ctx154541_))
                        _g159773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g159773_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx154516_)
        (let* ((_ht154518_ (gx#current-expander-module-registry))
               (_$e154520_ (table-ref _ht154518_ _ctx154516_ '#f)))
          (if _$e154520_
              (values _$e154520_)
              (let ((_pre154523_
                     (let ((__obj159764
                            (make-object gx#prelude-context::t '9)))
                       (gx#prelude-context:::init! __obj159764 _ctx154516_)
                       __obj159764)))
                (table-set! _ht154518_ _ctx154516_ _pre154523_)
                _pre154523_)))))
    (define gx#core-import-module__%
      (lambda (_rpath154397_ _reload?154398_)
        (letrec ((_import-source154400_
                  (lambda (_path154485_)
                    (if (member _path154485_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path154485_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g159774_ (gx#core-read-module _path154485_)))
                         (begin
                           (let ((_g159775_
                                  (if (##values? _g159774_)
                                      (##vector-length _g159774_)
                                      1)))
                             (if (not (##fx= _g159775_ 4))
                                 (error "Context expects 4 values" _g159775_)))
                           (let ((_pre154488_ (##vector-ref _g159774_ 0))
                                 (_id154489_ (##vector-ref _g159774_ 1))
                                 (_ns154490_ (##vector-ref _g159774_ 2))
                                 (_body154491_ (##vector-ref _g159774_ 3)))
                             (let* ((_prelude154496_
                                     (if (##structure-instance-of?
                                          _pre154488_
                                          'gx#prelude-context::t)
                                         _pre154488_
                                         (if (##structure-instance-of?
                                              _pre154488_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre154488_)
                                             (if (string? _pre154488_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre154488_))
                                                 (if (not _pre154488_)
                                                     (let ((_$e154493_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e154493_
                                                           _$e154493_
                                                           (let ((__obj159765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object gx#prelude-context::t '9)))
                     (gx#prelude-context:::init! __obj159765 '#f)
                     __obj159765)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath154397_
                                                            _pre154488_))))))
                                    (_ctx154498_
                                     (let ((__obj159766
                                            (make-object
                                             gx#module-context::t
                                             '12)))
                                       (gx#module-context:::init!
                                        __obj159766
                                        _id154489_
                                        _prelude154496_
                                        _ns154490_
                                        _path154485_)
                                       __obj159766))
                                    (_body154500_
                                     (gx#core-expand-module-begin
                                      _body154491_
                                      _ctx154498_))
                                    (_body154502_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body154500_)
                                      _path154485_
                                      _ctx154498_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx154498_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body154502_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx154498_
                                _body154502_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path154485_
                                _ctx154498_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id154489_
                                _ctx154498_)
                               _ctx154498_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path154485_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule154401_
                  (lambda (_rpath154413_)
                    (let* ((_rpath154414154421_ _rpath154413_)
                           (_E154416154425_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath154414154421_)))
                           (_K154417154473_
                            (lambda (_refs154428_ _origin154429_)
                              (let ((_ctx154431_
                                     (if _origin154429_
                                         (gx#core-import-module__%
                                          _origin154429_
                                          _reload?154398_)
                                         (gx#current-expander-context))))
                                (let _lp154433_ ((_rest154435_ _refs154428_)
                                                 (_ctx154436_ _ctx154431_))
                                  (let* ((_rest154437154445_ _rest154435_)
                                         (_else154439154453_
                                          (lambda () _ctx154436_))
                                         (_K154441154461_
                                          (lambda (_rest154456_ _id154457_)
                                            (let ((_bind154459_
                                                   (gx#resolve-identifier__%
                                                    _id154457_
                                                    '0
                                                    _ctx154436_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind154459_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind154459_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp154433_
                                                   _rest154456_
                                                   (##unchecked-structure-ref
                                                    _bind154459_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath154413_
                                                         _id154457_
                                                         _bind154459_))))))
                                    (if (##pair? _rest154437154445_)
                                        (let ((_hd154442154464_
                                               (##car _rest154437154445_))
                                              (_tl154443154466_
                                               (##cdr _rest154437154445_)))
                                          (let* ((_id154469_ _hd154442154464_)
                                                 (_rest154471_
                                                  _tl154443154466_))
                                            (_K154441154461_
                                             _rest154471_
                                             _id154469_)))
                                        (_else154439154453_))))))))
                      (if (##pair? _rpath154414154421_)
                          (let ((_hd154418154476_ (##car _rpath154414154421_))
                                (_tl154419154478_ (##cdr _rpath154414154421_)))
                            (let* ((_origin154481_ _hd154418154476_)
                                   (_refs154483_ _tl154419154478_))
                              (_K154417154473_ _refs154483_ _origin154481_)))
                          (_E154416154425_))))))
          (let ((_$e154403_
                 (if (not _reload?154398_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath154397_
                      '#f)
                     '#f)))
            (if _$e154403_
                (values _$e154403_)
                (if (list? _rpath154397_)
                    (_import-submodule154401_ _rpath154397_)
                    (if (gx#core-library-module-path? _rpath154397_)
                        (let ((_ctx154406_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath154397_)
                                _reload?154398_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath154397_
                           _ctx154406_)
                          _ctx154406_)
                        (let* ((_npath154408_ (path-normalize _rpath154397_))
                               (_$e154410_
                                (if (not _reload?154398_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath154408_
                                     '#f)
                                    '#f)))
                          (if _$e154410_
                              (values _$e154410_)
                              (_import-source154400_ _npath154408_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath154509_)
        (let ((_reload?154511_ '#f))
          (gx#core-import-module__% _rpath154509_ _reload?154511_))))
    (define gx#core-import-module
      (lambda _g159777_
        (let ((_g159776_ (##length _g159777_)))
          (cond ((##fx= _g159776_ 1)
                 (apply (lambda (_rpath154509_)
                          (gx#core-import-module__0 _rpath154509_))
                        _g159777_))
                ((##fx= _g159776_ 2)
                 (apply (lambda (_rpath154513_ _reload?154514_)
                          (gx#core-import-module__%
                           _rpath154513_
                           _reload?154514_))
                        _g159777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g159777_))))))
    (define gx#core-read-module
      (lambda (_path154386_)
        (with-catch
         (lambda (_exn154388_)
           (if (and (datum-parsing-exception? _exn154388_)
                    (eq? (datum-parsing-exception-filepos _exn154388_) '0))
               (gx#core-read-module/lang _path154386_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path154386_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g154390154392_)
                      (display-exception _exn154388_ _g154390154392_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path154386_)))))
    (define gx#core-read-module/sexp
      (lambda (_path154249_)
        (let _lp154251_ ((_body154253_ (read-syntax-from-file _path154249_))
                         (_pre154254_ '#f)
                         (_ns154255_ '#f)
                         (_pkg154256_ '#f))
          (let* ((_e154257154281_ _body154253_)
                 (_E154273154303_
                  (lambda ()
                    (let ((_g159778_
                           (if _pkg154256_
                               (values _pre154254_ _ns154255_ _pkg154256_)
                               (gx#core-read-module-package
                                _path154249_
                                _pre154254_
                                _ns154255_))))
                      (begin
                        (let ((_g159779_
                               (if (##values? _g159778_)
                                   (##vector-length _g159778_)
                                   1)))
                          (if (not (##fx= _g159779_ 3))
                              (error "Context expects 3 values" _g159779_)))
                        (let ((_pre154285_ (##vector-ref _g159778_ 0))
                              (_ns154286_ (##vector-ref _g159778_ 1))
                              (_pkg154287_ (##vector-ref _g159778_ 2)))
                          (let* ((_prelude154289_
                                  (if (gx#core-bound-module-prelude?
                                       _pre154285_)
                                      (gx#syntax-local-e__0 _pre154285_)
                                      (if (gx#core-library-module-path?
                                           _pre154285_)
                                          (gx#core-resolve-library-module-path
                                           _pre154285_)
                                          (if (gx#stx-string? _pre154285_)
                                              (gx#core-resolve-module-path__%
                                               _pre154285_
                                               _path154249_)
                                              (gx#stx-e _pre154285_)))))
                                 (_path-id154291_
                                  (gx#core-module-path->namespace
                                   _path154249_))
                                 (_pkg-id154293_
                                  (if _pkg154287_
                                      (string-append
                                       _pkg154287_
                                       '"/"
                                       _path-id154291_)
                                      _path-id154291_))
                                 (_module-id154295_
                                  (string->symbol _pkg-id154293_))
                                 (_module-ns154300_
                                  (if (eq? _ns154286_ '#!void)
                                      '#f
                                      (let ((_$e154297_ _ns154286_))
                                        (if _$e154297_
                                            _$e154297_
                                            _pkg-id154293_)))))
                            (values _prelude154289_
                                    _module-id154295_
                                    _module-ns154300_
                                    _body154253_)))))))
                 (_E154266154332_
                  (lambda ()
                    (if (gx#stx-pair? _e154257154281_)
                        (let ((_e154274154307_ (gx#syntax-e _e154257154281_)))
                          (let ((_hd154275154310_ (##car _e154274154307_))
                                (_tl154276154312_ (##cdr _e154274154307_)))
                            (if (eq? (gx#stx-e _hd154275154310_) 'package:)
                                (if (gx#stx-pair? _tl154276154312_)
                                    (let ((_e154277154315_
                                           (gx#syntax-e _tl154276154312_)))
                                      (let ((_hd154278154318_
                                             (##car _e154277154315_))
                                            (_tl154279154320_
                                             (##cdr _e154277154315_)))
                                        (let* ((_pkg154323_ _hd154278154318_)
                                               (_rest154325_ _tl154279154320_))
                                          (if '#t
                                              (let ((_pkg154330_
                                                     (if (gx#identifier?
                                                          _pkg154323_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg154323_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg154323_)
                         (gx#stx-false? _pkg154323_))
                     (gx#stx-e _pkg154323_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg154323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154251_
                                                 _rest154325_
                                                 _pre154254_
                                                 _ns154255_
                                                 _pkg154330_))
                                              (_E154273154303_)))))
                                    (_E154273154303_))
                                (_E154273154303_))))
                        (_E154273154303_))))
                 (_E154259154358_
                  (lambda ()
                    (if (gx#stx-pair? _e154257154281_)
                        (let ((_e154267154336_ (gx#syntax-e _e154257154281_)))
                          (let ((_hd154268154339_ (##car _e154267154336_))
                                (_tl154269154341_ (##cdr _e154267154336_)))
                            (if (eq? (gx#stx-e _hd154268154339_) 'namespace:)
                                (if (gx#stx-pair? _tl154269154341_)
                                    (let ((_e154270154344_
                                           (gx#syntax-e _tl154269154341_)))
                                      (let ((_hd154271154347_
                                             (##car _e154270154344_))
                                            (_tl154272154349_
                                             (##cdr _e154270154344_)))
                                        (let* ((_ns154352_ _hd154271154347_)
                                               (_rest154354_ _tl154272154349_))
                                          (if '#t
                                              (let ((_ns154356_
                                                     (if (gx#identifier?
                                                          _ns154352_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns154352_))
                                                         (if (gx#stx-string?
                                                              _ns154352_)
                                                             (gx#stx-e
                                                              _ns154352_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns154352_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns154352_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154251_
                                                 _rest154354_
                                                 _pre154254_
                                                 _ns154356_
                                                 _pkg154256_))
                                              (_E154266154332_)))))
                                    (_E154266154332_))
                                (_E154266154332_))))
                        (_E154266154332_))))
                 (_E154258154382_
                  (lambda ()
                    (if (gx#stx-pair? _e154257154281_)
                        (let ((_e154260154362_ (gx#syntax-e _e154257154281_)))
                          (let ((_hd154261154365_ (##car _e154260154362_))
                                (_tl154262154367_ (##cdr _e154260154362_)))
                            (if (eq? (gx#stx-e _hd154261154365_) 'prelude:)
                                (if (gx#stx-pair? _tl154262154367_)
                                    (let ((_e154263154370_
                                           (gx#syntax-e _tl154262154367_)))
                                      (let ((_hd154264154373_
                                             (##car _e154263154370_))
                                            (_tl154265154375_
                                             (##cdr _e154263154370_)))
                                        (let* ((_prelude154378_
                                                _hd154264154373_)
                                               (_rest154380_ _tl154265154375_))
                                          (if '#t
                                              (_lp154251_
                                               _rest154380_
                                               _prelude154378_
                                               _ns154255_
                                               _pkg154256_)
                                              (_E154259154358_)))))
                                    (_E154259154358_))
                                (_E154259154358_))))
                        (_E154259154358_)))))
            (_E154258154382_)))))
    (define gx#core-read-module/lang
      (lambda (_path154076_)
        (letrec ((_default-read-module-body154078_
                  (lambda (_inp154241_)
                    (let _lp154243_ ((_body154245_ '()))
                      (let ((_next154247_ (read-syntax _inp154241_)))
                        (if (eof-object? _next154247_)
                            (reverse _body154245_)
                            (_lp154243_ (cons _next154247_ _body154245_)))))))
                 (_read-body154079_
                  (lambda (_inp154160_
                           _pre154161_
                           _ns154162_
                           _pkg154163_
                           _args154164_)
                    (let ((_g159780_
                           (if _pkg154163_
                               (values _pre154161_ _ns154162_ _pkg154163_)
                               (gx#core-read-module-package
                                _path154076_
                                _pre154161_
                                _ns154162_))))
                      (begin
                        (let ((_g159781_
                               (if (##values? _g159780_)
                                   (##vector-length _g159780_)
                                   1)))
                          (if (not (##fx= _g159781_ 3))
                              (error "Context expects 3 values" _g159781_)))
                        (let ((_pre154166_ (##vector-ref _g159780_ 0))
                              (_ns154167_ (##vector-ref _g159780_ 1))
                              (_pkg154168_ (##vector-ref _g159780_ 2)))
                          (let* ((_prelude154170_
                                  (gx#import-module__0 _pre154166_))
                                 (_read-module-body154224_
                                  (let ((_$e154216_
                                         (find (lambda (_e154171154173_)
                                                 (let* ((_g154175154185_
                                                         _e154171154173_)
                                                        (_else154177154193_
                                                         (lambda () '#f))
                                                        (_K154179154197_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g154175154185_
                                                        'gx#module-export::t)
                                                       (let* ((_e154180154200_
                                                               (##unchecked-structure-ref
                                                                _g154175154185_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154181154203_
                                                               (##unchecked-structure-ref
                                                                _g154175154185_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154182154206_
                                                               (##unchecked-structure-ref
                                                                _g154175154185_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e154182154206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e154183154209_
                            (##unchecked-structure-ref
                             _g154175154185_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g154211154213_)
                              (eq? _g154211154213_ 'read-module-body))
                            _e154183154209_)
                           (_K154179154197_)
                           (_else154177154193_)))
                     (_else154177154193_)))
               (_else154177154193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude154170_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e154216_
                                        ((lambda (_xport154219_)
                                           (let ((_proc154222_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport154219_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc154222_)
                                                 _proc154222_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path154076_
                                                  _pre154166_
                                                  _proc154222_))))
                                         _$e154216_)
                                        _default-read-module-body154078_)))
                                 (_path-id154226_
                                  (gx#core-module-path->namespace
                                   _path154076_))
                                 (_pkg-id154228_
                                  (if _pkg154168_
                                      (string-append
                                       _pkg154168_
                                       '"/"
                                       _path-id154226_)
                                      _path-id154226_))
                                 (_module-id154230_
                                  (string->symbol _pkg-id154228_))
                                 (_module-ns154235_
                                  (let ((_$e154232_ _ns154167_))
                                    (if _$e154232_ _$e154232_ _pkg-id154228_)))
                                 (_body154238_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body154224_ _inp154160_))
                                   gx#current-module-reader-path
                                   _path154076_
                                   gx#current-module-reader-args
                                   _args154164_)))
                            (values _prelude154170_
                                    _module-id154230_
                                    _module-ns154235_
                                    _body154238_)))))))
                 (_string-e154080_
                  (lambda (_obj154157_ _what154158_)
                    (if (string? _obj154157_)
                        _obj154157_
                        (if (symbol? _obj154157_)
                            (symbol->string _obj154157_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what154158_)
                             _path154076_
                             _obj154157_)))))
                 (_read-lang-args154081_
                  (lambda (_inp154112_ _args154113_)
                    (let* ((_args154114154122_ _args154113_)
                           (_else154116154130_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path154076_)))
                           (_K154118154145_
                            (lambda (_args154133_ _prelude154134_)
                              (let* ((_pkg154136_
                                      (pgetq 'package: _args154133_))
                                     (_pkg154138_
                                      (if _pkg154136_
                                          (_string-e154080_
                                           _pkg154136_
                                           '"package")
                                          '#f))
                                     (_ns154140_
                                      (pgetq 'namespace: _args154133_))
                                     (_ns154142_
                                      (if _ns154140_
                                          (_string-e154080_
                                           _ns154140_
                                           '"namespace")
                                          '#f)))
                                (_read-body154079_
                                 _inp154112_
                                 _prelude154134_
                                 _ns154142_
                                 _pkg154138_
                                 _args154133_)))))
                      (if (##pair? _args154114154122_)
                          (let ((_hd154119154148_ (##car _args154114154122_))
                                (_tl154120154150_ (##cdr _args154114154122_)))
                            (let* ((_prelude154153_ _hd154119154148_)
                                   (_args154155_ _tl154120154150_))
                              (_K154118154145_ _args154155_ _prelude154153_)))
                          (_else154116154130_)))))
                 (_read-lang154082_
                  (lambda (_inp154087_)
                    (let* ((_head154089_ (read-line _inp154087_))
                           (_$e154091_ (string-index _head154089_ '#\space)))
                      (if _$e154091_
                          ((lambda (_ix154094_)
                             (let ((_lang154096_
                                    (substring _head154089_ '0 _ix154094_)))
                               (if (equal? _lang154096_ '"#lang")
                                   (let* ((_rest154098_
                                           (substring
                                            _head154089_
                                            (fx+ _ix154094_ '1)
                                            (string-length _head154089_)))
                                          (_args154109_
                                           (with-catch
                                            (lambda (_g154099154101_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path154076_
                                               _g154099154101_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest154098_
                                               (lambda (_g154104154106_)
                                                 (read-all
                                                  _g154104154106_
                                                  read)))))))
                                     (_read-lang-args154081_
                                      _inp154087_
                                      _args154109_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path154076_))))
                           _$e154091_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path154076_)))))
                 (_read-e154083_
                  (lambda (_inp154085_)
                    (if (eq? (peek-char _inp154085_) '#\#)
                        (_read-lang154082_ _inp154085_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path154076_)))))
          (gx#call-with-input-source-file _path154076_ _read-e154083_))))
    (define gx#core-read-module-package
      (lambda (_path154030_ _pre154031_ _ns154032_)
        (letrec ((_string-e154034_
                  (lambda (_e154074_)
                    (if (symbol? _e154074_)
                        (symbol->string _e154074_)
                        (if (string? _e154074_)
                            _e154074_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e154074_))))))
          (let _lp154036_ ((_dir154038_ (path-directory _path154030_))
                           (_pkg-path154039_ '()))
            (let ((_gerbil.pkg154041_ (path-expand '"gerbil.pkg" _dir154038_)))
              (if (file-exists? _gerbil.pkg154041_)
                  (let ((_plist154043_
                         (gx#core-library-package-plist__% _dir154038_ '#t)))
                    (if (null? _plist154043_)
                        (let ((_pkg154045_
                               (if (not (null? _pkg-path154039_))
                                   (string-join _pkg-path154039_ '"/")
                                   '#f)))
                          (values _pre154031_ _ns154032_ _pkg154045_))
                        (if (list? _plist154043_)
                            (let* ((_root154047_
                                    (pgetq 'package: _plist154043_))
                                   (_pkg154051_
                                    (let ((_pkg-path154049_
                                           (if _root154047_
                                               (cons (_string-e154034_
                                                      _root154047_)
                                                     _pkg-path154039_)
                                               _pkg-path154039_)))
                                      (if (not (null? _pkg-path154049_))
                                          (string-join _pkg-path154049_ '"/")
                                          '#f)))
                                   (_ns154058_
                                    (let ((_ns154056_
                                           (let ((_$e154053_ _ns154032_))
                                             (if _$e154053_
                                                 _$e154053_
                                                 (pgetq 'namespace:
                                                        _plist154043_)))))
                                      (if _ns154056_
                                          (_string-e154034_ _ns154056_)
                                          '#f)))
                                   (_pre154063_
                                    (let ((_$e154060_ _pre154031_))
                                      (if _$e154060_
                                          _$e154060_
                                          (pgetq 'prelude: _plist154043_)))))
                              (values _pre154063_ _ns154058_ _pkg154051_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist154043_))))
                  (let ((_dir*154066_
                         (path-strip-trailing-directory-separator
                          _dir154038_)))
                    (if (or (string-empty? _dir*154066_)
                            (equal? _dir154038_ _dir*154066_))
                        (values _pre154031_ _ns154032_ '#f)
                        (let ((_xpath154071_
                               (path-strip-directory _dir*154066_))
                              (_xdir154072_ (path-directory _dir*154066_)))
                          (_lp154036_
                           _xdir154072_
                           (cons _xpath154071_ _pkg-path154039_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path154028_)
        (path-strip-extension (path-strip-directory _path154028_))))
    (define gx#core-module-path->id
      (lambda (_path154026_)
        (string->symbol (gx#core-module-path->namespace _path154026_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path154005_ _rel154006_)
        (let* ((_path154008_ (gx#stx-e _stx-path154005_))
               (_path154010_
                (if (string-empty? (path-extension _path154008_))
                    (string-append _path154008_ '".ss")
                    _path154008_)))
          (gx#core-resolve-path__%
           _path154010_
           (let ((_$e154013_ (gx#stx-source _stx-path154005_)))
             (if _$e154013_ _$e154013_ _rel154006_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path154019_)
        (let ((_rel154021_ '#f))
          (gx#core-resolve-module-path__% _stx-path154019_ _rel154021_))))
    (define gx#core-resolve-module-path
      (lambda _g159783_
        (let ((_g159782_ (##length _g159783_)))
          (cond ((##fx= _g159782_ 1)
                 (apply (lambda (_stx-path154019_)
                          (gx#core-resolve-module-path__0 _stx-path154019_))
                        _g159783_))
                ((##fx= _g159782_ 2)
                 (apply (lambda (_stx-path154023_ _rel154024_)
                          (gx#core-resolve-module-path__%
                           _stx-path154023_
                           _rel154024_))
                        _g159783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g159783_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath153891_)
        (let* ((_spath153893_ (symbol->string (gx#stx-e _libpath153891_)))
               (_spath153895_
                (substring _spath153893_ '1 (string-length _spath153893_)))
               (_ext153897_ (path-extension _spath153895_))
               (_ssi153899_
                (if (string-empty? _ext153897_)
                    (string-append _spath153895_ '".ssi")
                    (string-append
                     (path-strip-extension _spath153895_)
                     '".ssi")))
               (_srcs153903_
                (if (string-empty? _ext153897_)
                    (map (lambda (_ext153901_)
                           (string-append _spath153895_ _ext153901_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath153895_ '()))))
          (let _lp153906_ ((_rest153908_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest153909153918_ _rest153908_)
                   (_E153912153922_
                    (lambda ()
                      (error '"No clause matching" _rest153909153918_))))
              (let ((_K153914153992_
                     (lambda (_rest153933_ _dir153934_)
                       (letrec ((_resolve153936_
                                 (lambda (_ssi153948_ _srcs153949_)
                                   (let ((_compiled-path153951_
                                          (path-expand
                                           _ssi153948_
                                           _dir153934_)))
                                     (if (file-exists? _compiled-path153951_)
                                         (path-normalize _compiled-path153951_)
                                         (let _lpr153953_ ((_rest-src153955_
                                                            _srcs153949_))
                                           (let* ((_rest-src153956153964_
                                                   _rest-src153955_)
                                                  (_else153958153972_
                                                   (lambda ()
                                                     (_lp153906_
                                                      _rest153933_)))
                                                  (_K153960153980_
                                                   (lambda (_rest-src153975_
                                                            _src153976_)
                                                     (let ((_src-path153978_
                                                            (path-expand
                                                             _src153976_
                                                             _dir153934_)))
                                                       (if (file-exists?
                                                            _src-path153978_)
                                                           (path-normalize
                                                            _src-path153978_)
                                                           (_lpr153953_
                                                            _rest-src153975_))))))
                                             (if (##pair? _rest-src153956153964_)
                                                 (let ((_hd153961153983_
                                                        (##car _rest-src153956153964_))
                                                       (_tl153962153985_
                                                        (##cdr _rest-src153956153964_)))
                                                   (let* ((_src153988_
                                                           _hd153961153983_)
                                                          (_rest-src153990_
                                                           _tl153962153985_))
                                                     (_K153960153980_
                                                      _rest-src153990_
                                                      _src153988_)))
                                                 (_else153958153972_)))))))))
                         (let ((_$e153938_
                                (gx#core-library-package-path-prefix
                                 _dir153934_)))
                           (if _$e153938_
                               ((lambda (_prefix153941_)
                                  (if (string-prefix?
                                       _prefix153941_
                                       _spath153895_)
                                      (let ((_ssi153945_
                                             (substring
                                              _ssi153899_
                                              (string-length _prefix153941_)
                                              (string-length _ssi153899_)))
                                            (_srcs153946_
                                             (map (lambda (_src153943_)
                                                    (substring
                                                     _src153943_
                                                     (string-length
                                                      _prefix153941_)
                                                     (string-length
                                                      _src153943_)))
                                                  _srcs153903_)))
                                        (_resolve153936_
                                         _ssi153945_
                                         _srcs153946_))
                                      (_lp153906_ _rest153933_)))
                                _$e153938_)
                               (_resolve153936_ _ssi153899_ _srcs153903_))))))
                    (_K153913153927_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath153891_))))
                (let ((_try-match153911153930_
                       (lambda ()
                         (if (##null? _rest153909153918_)
                             (_K153913153927_)
                             (_E153912153922_)))))
                  (if (##pair? _rest153909153918_)
                      (let ((_tl153916153997_ (##cdr _rest153909153918_))
                            (_hd153915153995_ (##car _rest153909153918_)))
                        (let ((_dir154000_ _hd153915153995_)
                              (_rest154002_ _tl153916153997_))
                          (_K153914153992_ _rest154002_ _dir154000_)))
                      (_try-match153911153930_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath153864_)
        (letrec ((_resolve153866_
                  (lambda (_path153883_ _base153884_)
                    (let ((_$e153886_ (string-rindex _base153884_ '#\/)))
                      (if _$e153886_
                          ((lambda (_idx153889_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base153884_ '0 _idx153889_)
                                '"/"
                                _path153883_))))
                           _$e153886_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path153883_))))))))
          (let ((_spath153868_ (symbol->string (gx#stx-e _modpath153864_)))
                (_mod153869_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod153869_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath153864_))
            (let ((_mpath153871_
                   (symbol->string
                    (##structure-ref
                     _mod153869_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp153873_ ((_spath153875_ _spath153868_)
                               (_mpath153876_ _mpath153871_))
                (if (string-prefix? '"../" _spath153875_)
                    (let ((_$e153878_ (string-rindex _mpath153876_ '#\/)))
                      (if _$e153878_
                          ((lambda (_idx153881_)
                             (_lp153873_
                              (substring
                               _spath153875_
                               '3
                               (string-length _spath153875_))
                              (substring _mpath153876_ '0 _idx153881_)))
                           _$e153878_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath153864_)))
                    (if (string-prefix? '"./" _spath153875_)
                        (_lp153873_
                         (substring
                          _spath153875_
                          '2
                          (string-length _spath153875_))
                         _mpath153876_)
                        (_resolve153866_ _spath153875_ _mpath153876_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir153857_)
        (let ((_$e153859_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir153857_))))
          (if _$e153859_
              ((lambda (_pkg153862_)
                 (string-append (symbol->string _pkg153862_) '"/"))
               _$e153859_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir153829_ _exists?153830_)
        (let* ((_cache153832_ (gx#core-library-package-cache))
               (_$e153834_ (table-ref _cache153832_ _dir153829_ '#f)))
          (if _$e153834_
              (values _$e153834_)
              (let* ((_gerbil.pkg153837_
                      (path-expand '"gerbil.pkg" _dir153829_))
                     (_plist153844_
                      (if (or _exists?153830_
                              (file-exists? _gerbil.pkg153837_))
                          (let ((_e153842_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg153837_
                                  read)))
                            (if (eof-object? _e153842_)
                                '()
                                (if (list? _e153842_)
                                    _e153842_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg153837_
                                     _e153842_))))
                          '())))
                (table-set! _cache153832_ _dir153829_ _plist153844_)
                _plist153844_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir153850_)
        (let ((_exists?153852_ '#f))
          (gx#core-library-package-plist__% _dir153850_ _exists?153852_))))
    (define gx#core-library-package-plist
      (lambda _g159785_
        (let ((_g159784_ (##length _g159785_)))
          (cond ((##fx= _g159784_ 1)
                 (apply (lambda (_dir153850_)
                          (gx#core-library-package-plist__0 _dir153850_))
                        _g159785_))
                ((##fx= _g159784_ 2)
                 (apply (lambda (_dir153854_ _exists?153855_)
                          (gx#core-library-package-plist__%
                           _dir153854_
                           _exists?153855_))
                        _g159785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g159785_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e153823_ (gx#current-expander-module-library-package-cache)))
          (if _$e153823_
              (values _$e153823_)
              (let ((_cache153826_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache153826_)
                _cache153826_)))))
    (define gx#core-library-module-path?
      (lambda (_stx153820_) (gx#core-special-module-path? _stx153820_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx153818_) (gx#core-special-module-path? _stx153818_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx153813_ _char153814_)
        (if (gx#identifier? _stx153813_)
            (if (interned-symbol? (gx#stx-e _stx153813_))
                (let ((_str153816_ (symbol->string (gx#stx-e _stx153813_))))
                  (if (fx> (string-length _str153816_) '1)
                      (eq? (string-ref _str153816_ '0) _char153814_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx153807_)
        (gx#core-bound-identifier?__%
         _stx153807_
         (lambda (_g153808153810_)
           (gx#expander-binding?__% _g153808153810_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx153801_)
        (gx#core-bound-identifier?__%
         _stx153801_
         (lambda (_g153802153804_)
           (gx#expander-binding?__% _g153802153804_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx153788_)
        (letrec ((_module-prelude?153790_
                  (lambda (_e153796_)
                    (let ((_$e153798_
                           (##structure-instance-of?
                            _e153796_
                            'gx#module-context::t)))
                      (if _$e153798_
                          _$e153798_
                          (##structure-instance-of?
                           _e153796_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx153788_
           (lambda (_g153791153793_)
             (gx#expander-binding?__%
              _g153791153793_
              _module-prelude?153790_))))))
    (define gx#core-bind-import!__%
      (lambda (_in153718_ _ctx153719_ _force-weak?153720_)
        (let* ((_in153721153730_ _in153718_)
               (_E153723153734_
                (lambda () (error '"No clause matching" _in153721153730_)))
               (_K153724153747_
                (lambda (_weak?153737_ _phi153738_ _key153739_ _source153740_)
                  (gx#core-bind!__%
                   _key153739_
                   (let ((_e153742_
                          (gx#core-resolve-module-export _source153740_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e153742_
                       '1
                       gx#binding::t
                       '#f)
                      _key153739_
                      _phi153738_
                      _e153742_
                      (##unchecked-structure-ref
                       _source153740_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e153744_ _force-weak?153720_))
                        (if _$e153744_ _$e153744_ _weak?153737_))))
                   gx#core-context-rebind?
                   _phi153738_
                   _ctx153719_))))
          (if (##structure-direct-instance-of?
               _in153721153730_
               'gx#module-import::t)
              (let* ((_e153725153750_
                      (##unchecked-structure-ref
                       _in153721153730_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source153753_ _e153725153750_)
                     (_e153726153755_
                      (##unchecked-structure-ref
                       _in153721153730_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key153758_ _e153726153755_)
                     (_e153727153760_
                      (##unchecked-structure-ref
                       _in153721153730_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi153763_ _e153727153760_)
                     (_e153728153765_
                      (##unchecked-structure-ref
                       _in153721153730_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?153768_ _e153728153765_))
                (_K153724153747_
                 _weak?153768_
                 _phi153763_
                 _key153758_
                 _source153753_))
              (_E153723153734_)))))
    (define gx#core-bind-import!__0
      (lambda (_in153773_)
        (let* ((_ctx153775_ (gx#current-expander-context))
               (_force-weak?153777_ '#f))
          (gx#core-bind-import!__%
           _in153773_
           _ctx153775_
           _force-weak?153777_))))
    (define gx#core-bind-import!__1
      (lambda (_in153779_ _ctx153780_)
        (let ((_force-weak?153782_ '#f))
          (gx#core-bind-import!__%
           _in153779_
           _ctx153780_
           _force-weak?153782_))))
    (define gx#core-bind-import!
      (lambda _g159787_
        (let ((_g159786_ (##length _g159787_)))
          (cond ((##fx= _g159786_ 1)
                 (apply (lambda (_in153773_)
                          (gx#core-bind-import!__0 _in153773_))
                        _g159787_))
                ((##fx= _g159786_ 2)
                 (apply (lambda (_in153779_ _ctx153780_)
                          (gx#core-bind-import!__1 _in153779_ _ctx153780_))
                        _g159787_))
                ((##fx= _g159786_ 3)
                 (apply (lambda (_in153784_ _ctx153785_ _force-weak?153786_)
                          (gx#core-bind-import!__%
                           _in153784_
                           _ctx153785_
                           _force-weak?153786_))
                        _g159787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g159787_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in153704_ _ctx153705_)
        (gx#core-bind-import!__% _in153704_ _ctx153705_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in153710_)
        (let ((_ctx153712_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in153710_ _ctx153712_))))
    (define gx#core-bind-weak-import!
      (lambda _g159789_
        (let ((_g159788_ (##length _g159789_)))
          (cond ((##fx= _g159788_ 1)
                 (apply (lambda (_in153710_)
                          (gx#core-bind-weak-import!__0 _in153710_))
                        _g159789_))
                ((##fx= _g159788_ 2)
                 (apply (lambda (_in153714_ _ctx153715_)
                          (gx#core-bind-weak-import!__%
                           _in153714_
                           _ctx153715_))
                        _g159789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g159789_))))))
    (define gx#core-resolve-module-export
      (lambda (_out153595_)
        (letrec ((_subst153597_
                  (lambda (_key153643_)
                    (let* ((_key153644153652_ _key153643_)
                           (_else153646153660_ (lambda () _key153643_))
                           (_K153648153691_
                            (lambda (_mark153663_ _id153664_)
                              (let* ((_mark153665153671_ _mark153663_)
                                     (_E153667153675_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark153665153671_)))
                                     (_K153668153683_
                                      (lambda (_subst153678_)
                                        (let ((_$e153680_
                                               (if _subst153678_
                                                   (table-ref
                                                    _subst153678_
                                                    _id153664_
                                                    '#f)
                                                   '#f)))
                                          (if _$e153680_
                                              _$e153680_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key153643_))))))
                                (if (##structure-instance-of?
                                     _mark153665153671_
                                     'gx#expander-mark::t)
                                    (let* ((_e153669153686_
                                            (##unchecked-structure-ref
                                             _mark153665153671_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst153689_ _e153669153686_))
                                      (_K153668153683_ _subst153689_))
                                    (_E153667153675_))))))
                      (if (##pair? _key153644153652_)
                          (let ((_hd153649153694_ (##car _key153644153652_))
                                (_tl153650153696_ (##cdr _key153644153652_)))
                            (let* ((_id153699_ _hd153649153694_)
                                   (_mark153701_ _tl153650153696_))
                              (_K153648153691_ _mark153701_ _id153699_)))
                          (_else153646153660_))))))
          (let* ((_out153598153608_ _out153595_)
                 (_E153600153612_
                  (lambda () (error '"No clause matching" _out153598153608_)))
                 (_K153601153619_
                  (lambda (_phi153615_ _key153616_ _ctx153617_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx153617_ _phi153615_)
                     (_subst153597_ _key153616_)))))
            (if (##structure-direct-instance-of?
                 _out153598153608_
                 'gx#module-export::t)
                (let* ((_e153602153622_
                        (##unchecked-structure-ref
                         _out153598153608_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx153625_ _e153602153622_)
                       (_e153603153627_
                        (##unchecked-structure-ref
                         _out153598153608_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key153630_ _e153603153627_)
                       (_e153604153632_
                        (##unchecked-structure-ref
                         _out153598153608_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi153635_ _e153604153632_)
                       (_e153605153637_
                        (##unchecked-structure-ref
                         _out153598153608_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e153606153640_
                        (##unchecked-structure-ref
                         _out153598153608_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K153601153619_ _phi153635_ _key153630_ _ctx153625_))
                (_E153600153612_))))))
    (define gx#core-module-export->import__%
      (lambda (_out153520_ _rename153521_ _dphi153522_)
        (let* ((_out153523153533_ _out153520_)
               (_E153525153537_
                (lambda () (error '"No clause matching" _out153523153533_)))
               (_K153526153549_
                (lambda (_weak?153540_
                         _name153541_
                         _phi153542_
                         _key153543_
                         _ctx153544_)
                  (##structure
                   gx#module-import::t
                   _out153520_
                   (let ((_$e153546_ _rename153521_))
                     (if _$e153546_ _$e153546_ _name153541_))
                   (fx+ _phi153542_ _dphi153522_)
                   _weak?153540_))))
          (if (##structure-direct-instance-of?
               _out153523153533_
               'gx#module-export::t)
              (let* ((_e153527153552_
                      (##unchecked-structure-ref
                       _out153523153533_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx153555_ _e153527153552_)
                     (_e153528153557_
                      (##unchecked-structure-ref
                       _out153523153533_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key153560_ _e153528153557_)
                     (_e153529153562_
                      (##unchecked-structure-ref
                       _out153523153533_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi153565_ _e153529153562_)
                     (_e153530153567_
                      (##unchecked-structure-ref
                       _out153523153533_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name153570_ _e153530153567_)
                     (_e153531153572_
                      (##unchecked-structure-ref
                       _out153523153533_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?153575_ _e153531153572_))
                (_K153526153549_
                 _weak?153575_
                 _name153570_
                 _phi153565_
                 _key153560_
                 _ctx153555_))
              (_E153525153537_)))))
    (define gx#core-module-export->import__0
      (lambda (_out153580_)
        (let* ((_rename153582_ '#f) (_dphi153584_ '0))
          (gx#core-module-export->import__%
           _out153580_
           _rename153582_
           _dphi153584_))))
    (define gx#core-module-export->import__1
      (lambda (_out153586_ _rename153587_)
        (let ((_dphi153589_ '0))
          (gx#core-module-export->import__%
           _out153586_
           _rename153587_
           _dphi153589_))))
    (define gx#core-module-export->import
      (lambda _g159791_
        (let ((_g159790_ (##length _g159791_)))
          (cond ((##fx= _g159790_ 1)
                 (apply (lambda (_out153580_)
                          (gx#core-module-export->import__0 _out153580_))
                        _g159791_))
                ((##fx= _g159790_ 2)
                 (apply (lambda (_out153586_ _rename153587_)
                          (gx#core-module-export->import__1
                           _out153586_
                           _rename153587_))
                        _g159791_))
                ((##fx= _g159790_ 3)
                 (apply (lambda (_out153591_ _rename153592_ _dphi153593_)
                          (gx#core-module-export->import__%
                           _out153591_
                           _rename153592_
                           _dphi153593_))
                        _g159791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g159791_))))))
    (define gx#core-expand-module%
      (lambda (_stx153448_)
        (letrec ((_make-context153450_
                  (lambda (_id153501_)
                    (let* ((_super153503_ (gx#current-expander-context))
                           (_bind-id153505_ (gx#stx-e _id153501_))
                           (_mod-id153507_
                            (if (##structure-instance-of?
                                 _super153503_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super153503_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id153505_)
                                _bind-id153505_))
                           (_ns153509_ (symbol->string _mod-id153507_))
                           (_path153516_
                            (if (##structure-instance-of?
                                 _super153503_
                                 'gx#module-context::t)
                                (let ((_path153511_
                                       (##unchecked-structure-ref
                                        _super153503_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path153511_)
                                          (null? _path153511_))
                                      (cons _bind-id153505_ _path153511_)
                                      (if (not _path153511_)
                                          _bind-id153505_
                                          (cons _bind-id153505_
                                                (cons _path153511_ '())))))
                                _bind-id153505_)))
                      (let ((__obj159767
                             (make-object gx#module-context::t '12)))
                        (gx#module-context:::init!
                         __obj159767
                         _mod-id153507_
                         _super153503_
                         _ns153509_
                         _path153516_)
                        __obj159767)))))
          (let* ((_e153451153461_ _stx153448_)
                 (_E153453153465_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153451153461_)))
                 (_E153452153497_
                  (lambda ()
                    (if (gx#stx-pair? _e153451153461_)
                        (let ((_e153454153469_ (gx#syntax-e _e153451153461_)))
                          (let ((_hd153455153472_ (##car _e153454153469_))
                                (_tl153456153474_ (##cdr _e153454153469_)))
                            (if (gx#stx-pair? _tl153456153474_)
                                (let ((_e153457153477_
                                       (gx#syntax-e _tl153456153474_)))
                                  (let ((_hd153458153480_
                                         (##car _e153457153477_))
                                        (_tl153459153482_
                                         (##cdr _e153457153477_)))
                                    (let* ((_id153485_ _hd153458153480_)
                                           (_body153487_ _tl153459153482_))
                                      (if (and (gx#identifier? _id153485_)
                                               (gx#stx-list? _body153487_))
                                          (let* ((_ctx153489_
                                                  (_make-context153450_
                                                   _id153485_))
                                                 (_body153491_
                                                  (gx#core-expand-module-begin
                                                   _body153487_
                                                   _ctx153489_))
                                                 (_body153493_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153491_)
                                                   (gx#stx-source
                                                    _stx153448_))))
                                            (##unchecked-structure-set!
                                             _ctx153489_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body153493_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx153489_
                                             _body153493_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id153485_
                                             _ctx153489_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id153485_)
                                              _body153493_)
                                             (gx#stx-source _stx153448_)))
                                          (_E153453153465_)))))
                                (_E153453153465_))))
                        (_E153453153465_)))))
            (_E153452153497_)))))
    (define gx#core-expand-module-begin
      (lambda (_body153414_ _ctx153415_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx153418_
                   (gx#core-expand-head (cons '%%begin-module _body153414_)))
                  (_e153419153426_ _stx153418_)
                  (_E153421153430_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx153418_)))
                  (_E153420153444_
                   (lambda ()
                     (if (gx#stx-pair? _e153419153426_)
                         (let ((_e153422153434_ (gx#syntax-e _e153419153426_)))
                           (let ((_hd153423153437_ (##car _e153422153434_))
                                 (_tl153424153439_ (##cdr _e153422153434_)))
                             (if (and (gx#identifier? _hd153423153437_)
                                      (gx#core-identifier=?
                                       _hd153423153437_
                                       '%#begin-module))
                                 (let ((_body153442_ _tl153424153439_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx153418_)
                                           _body153442_
                                           (gx#core-expand-module-body
                                            _body153442_))
                                       (_E153421153430_)))
                                 (_E153421153430_))))
                         (_E153421153430_)))))
             (_E153420153444_)))
         gx#current-expander-context
         _ctx153415_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body153210_)
        (letrec ((_expand-special153212_
                  (lambda (_hd153341_ _K153342_ _rest153343_ _r153344_)
                    (let* ((_e153345153362_ _hd153341_)
                           (_E153357153366_
                            (lambda ()
                              (_K153342_
                               _rest153343_
                               (cons (gx#core-expand-top _hd153341_)
                                     _r153344_))))
                           (_E153347153378_
                            (lambda ()
                              (if (gx#stx-pair? _e153345153362_)
                                  (let ((_e153358153370_
                                         (gx#syntax-e _e153345153362_)))
                                    (let ((_hd153359153373_
                                           (##car _e153358153370_))
                                          (_tl153360153375_
                                           (##cdr _e153358153370_)))
                                      (if (and (gx#identifier?
                                                _hd153359153373_)
                                               (gx#core-identifier=?
                                                _hd153359153373_
                                                '%#export))
                                          (if '#t
                                              (_K153342_
                                               _rest153343_
                                               (cons _hd153341_ _r153344_))
                                              (_E153357153366_))
                                          (_E153357153366_))))
                                  (_E153357153366_))))
                           (_E153346153410_
                            (lambda ()
                              (if (gx#stx-pair? _e153345153362_)
                                  (let ((_e153348153382_
                                         (gx#syntax-e _e153345153362_)))
                                    (let ((_hd153349153385_
                                           (##car _e153348153382_))
                                          (_tl153350153387_
                                           (##cdr _e153348153382_)))
                                      (if (and (gx#identifier?
                                                _hd153349153385_)
                                               (gx#core-identifier=?
                                                _hd153349153385_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153350153387_)
                                              (let ((_e153351153390_
                                                     (gx#syntax-e
                                                      _tl153350153387_)))
                                                (let ((_hd153352153393_
                                                       (##car _e153351153390_))
                                                      (_tl153353153395_
                                                       (##cdr _e153351153390_)))
                                                  (let ((_hd-bind153398_
                                                         _hd153352153393_))
                                                    (if (gx#stx-pair?
                                                         _tl153353153395_)
                                                        (let ((_e153354153400_
                                                               (gx#syntax-e
                                                                _tl153353153395_)))
                                                          (let ((_hd153355153403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153354153400_))
                        (_tl153356153405_ (##cdr _e153354153400_)))
                    (let ((_expr153408_ _hd153355153403_))
                      (if (gx#stx-null? _tl153356153405_)
                          (if (gx#core-bind-values? _hd-bind153398_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153398_)
                                (_K153342_
                                 _rest153343_
                                 (cons _hd153341_ _r153344_)))
                              (_E153347153378_))
                          (_E153347153378_)))))
                (_E153347153378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153347153378_))
                                          (_E153347153378_))))
                                  (_E153347153378_)))))
                      (_E153346153410_))))
                 (_expand-body153213_
                  (lambda (_rbody153215_)
                    (let _lp153217_ ((_rest153219_ _rbody153215_)
                                     (_body153220_ '()))
                      (let* ((_rest153221153229_ _rest153219_)
                             (_else153223153237_ (lambda () _body153220_))
                             (_K153225153329_
                              (lambda (_rest153240_ _hd153241_)
                                (let* ((_e153242153263_ _hd153241_)
                                       (_E153258153267_
                                        (lambda ()
                                          (_lp153217_
                                           _rest153240_
                                           (cons (gx#core-expand-expression
                                                  _hd153241_)
                                                 _body153220_))))
                                       (_E153254153281_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153242153263_)
                                              (let ((_e153259153271_
                                                     (gx#syntax-e
                                                      _e153242153263_)))
                                                (let ((_hd153260153274_
                                                       (##car _e153259153271_))
                                                      (_tl153261153276_
                                                       (##cdr _e153259153271_)))
                                                  (let ((_form153279_
                                                         _hd153260153274_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form153279_
                                                         gx#special-form-binding?)
                                                        (_lp153217_
                                                         _rest153240_
                                                         (cons _hd153241_
                                                               _body153220_))
                                                        (_E153258153267_)))))
                                              (_E153258153267_))))
                                       (_E153244153293_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153242153263_)
                                              (let ((_e153255153285_
                                                     (gx#syntax-e
                                                      _e153242153263_)))
                                                (let ((_hd153256153288_
                                                       (##car _e153255153285_))
                                                      (_tl153257153290_
                                                       (##cdr _e153255153285_)))
                                                  (if (and (gx#identifier?
                                                            _hd153256153288_)
                                                           (gx#core-identifier=?
                                                            _hd153256153288_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp153217_
                                                           _rest153240_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd153241_)
                         _body153220_))
                  (_E153254153281_))
              (_E153254153281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153254153281_))))
                                       (_E153243153325_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153242153263_)
                                              (let ((_e153245153297_
                                                     (gx#syntax-e
                                                      _e153242153263_)))
                                                (let ((_hd153246153300_
                                                       (##car _e153245153297_))
                                                      (_tl153247153302_
                                                       (##cdr _e153245153297_)))
                                                  (if (and (gx#identifier?
                                                            _hd153246153300_)
                                                           (gx#core-identifier=?
                                                            _hd153246153300_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl153247153302_)
                                                          (let ((_e153248153305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl153247153302_)))
                    (let ((_hd153249153308_ (##car _e153248153305_))
                          (_tl153250153310_ (##cdr _e153248153305_)))
                      (let ((_hd-bind153313_ _hd153249153308_))
                        (if (gx#stx-pair? _tl153250153310_)
                            (let ((_e153251153315_
                                   (gx#syntax-e _tl153250153310_)))
                              (let ((_hd153252153318_ (##car _e153251153315_))
                                    (_tl153253153320_ (##cdr _e153251153315_)))
                                (let ((_expr153323_ _hd153252153318_))
                                  (if (gx#stx-null? _tl153253153320_)
                                      (if '#t
                                          (_lp153217_
                                           _rest153240_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind153313_)
                                                   (gx#core-expand-expression
                                                    _expr153323_))
                                                  (gx#stx-source _hd153241_))
                                                 _body153220_))
                                          (_E153244153293_))
                                      (_E153244153293_)))))
                            (_E153244153293_)))))
                  (_E153244153293_))
              (_E153244153293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153244153293_)))))
                                  (_E153243153325_)))))
                        (if (##pair? _rest153221153229_)
                            (let ((_hd153226153332_ (##car _rest153221153229_))
                                  (_tl153227153334_
                                   (##cdr _rest153221153229_)))
                              (let* ((_hd153337_ _hd153226153332_)
                                     (_rest153339_ _tl153227153334_))
                                (_K153225153329_ _rest153339_ _hd153337_)))
                            (_else153223153237_)))))))
          (_expand-body153213_
           (gx#core-expand-block__%
            (cons '%#begin-module _body153210_)
            _expand-special153212_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx153053_
               _expanded?153054_
               _method153055_
               _current-phi153056_
               _expand1153057_)
        (letrec ((_K153059_
                  (lambda (_rest153177_ _r153178_)
                    (let* ((_e153179153186_ _rest153177_)
                           (_E153181153190_ (lambda () _r153178_))
                           (_E153180153206_
                            (lambda ()
                              (if (gx#stx-pair? _e153179153186_)
                                  (let ((_e153182153194_
                                         (gx#syntax-e _e153179153186_)))
                                    (let ((_hd153183153197_
                                           (##car _e153182153194_))
                                          (_tl153184153199_
                                           (##cdr _e153182153194_)))
                                      (let* ((_hd153202_ _hd153183153197_)
                                             (_rest153204_ _tl153184153199_))
                                        (if '#t
                                            (_step153060_
                                             _hd153202_
                                             _rest153204_
                                             _r153178_)
                                            (_E153181153190_)))))
                                  (_E153181153190_)))))
                      (_E153180153206_))))
                 (_step153060_
                  (lambda (_hd153091_ _rest153092_ _r153093_)
                    (let* ((_e153094153112_ _hd153091_)
                           (_E153107153116_
                            (lambda ()
                              (if (_expanded?153054_ (gx#stx-e _hd153091_))
                                  (_K153059_
                                   _rest153092_
                                   (cons (gx#stx-e _hd153091_) _r153093_))
                                  (_expand1153057_
                                   _hd153091_
                                   _K153059_
                                   _rest153092_
                                   _r153093_))))
                           (_E153103153132_
                            (lambda ()
                              (if (gx#stx-pair? _e153094153112_)
                                  (let ((_e153108153120_
                                         (gx#syntax-e _e153094153112_)))
                                    (let ((_hd153109153123_
                                           (##car _e153108153120_))
                                          (_tl153110153125_
                                           (##cdr _e153108153120_)))
                                      (let* ((_macro153128_ _hd153109153123_)
                                             (_body153130_ _tl153110153125_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro153128_
                                             gx#syntax-binding?)
                                            (_K153059_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro153128_)
                                                    _hd153091_
                                                    _method153055_)
                                                   _rest153092_)
                                             _r153093_)
                                            (_E153107153116_)))))
                                  (_E153107153116_))))
                           (_E153096153146_
                            (lambda ()
                              (if (gx#stx-pair? _e153094153112_)
                                  (let ((_e153104153136_
                                         (gx#syntax-e _e153094153112_)))
                                    (let ((_hd153105153139_
                                           (##car _e153104153136_))
                                          (_tl153106153141_
                                           (##cdr _e153104153136_)))
                                      (if (eq? (gx#stx-e _hd153105153139_)
                                               'begin:)
                                          (let ((_body153144_
                                                 _tl153106153141_))
                                            (if '#t
                                                (_K153059_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest153092_
                                                  _body153144_)
                                                 _r153093_)
                                                (_E153103153132_)))
                                          (_E153103153132_))))
                                  (_E153103153132_))))
                           (_E153095153173_
                            (lambda ()
                              (if (gx#stx-pair? _e153094153112_)
                                  (let ((_e153097153150_
                                         (gx#syntax-e _e153094153112_)))
                                    (let ((_hd153098153153_
                                           (##car _e153097153150_))
                                          (_tl153099153155_
                                           (##cdr _e153097153150_)))
                                      (if (eq? (gx#stx-e _hd153098153153_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl153099153155_)
                                              (let ((_e153100153158_
                                                     (gx#syntax-e
                                                      _tl153099153155_)))
                                                (let ((_hd153101153161_
                                                       (##car _e153100153158_))
                                                      (_tl153102153163_
                                                       (##cdr _e153100153158_)))
                                                  (let* ((_dphi153166_
                                                          _hd153101153161_)
                                                         (_body153168_
                                                          _tl153102153163_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi153166_)
                                                        (let ((_rbody153171_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K153059_ _body153168_ '()))
                        _current-phi153056_
                        (fx+ (gx#stx-e _dphi153166_) (_current-phi153056_)))))
                  (_K153059_
                   _rest153092_
                   (foldr1 cons _r153093_ _rbody153171_)))
                (_E153096153146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153096153146_))
                                          (_E153096153146_))))
                                  (_E153096153146_)))))
                      (_E153095153173_)))))
          (let* ((_e153061153068_ _stx153053_)
                 (_E153063153072_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153061153068_)))
                 (_E153062153087_
                  (lambda ()
                    (if (gx#stx-pair? _e153061153068_)
                        (let ((_e153064153076_ (gx#syntax-e _e153061153068_)))
                          (let ((_hd153065153079_ (##car _e153064153076_))
                                (_tl153066153081_ (##cdr _e153064153076_)))
                            (let ((_body153084_ _tl153066153081_))
                              (if '#t
                                  (if (_current-phi153056_)
                                      (_K153059_ _body153084_ '())
                                      (call-with-parameters
                                       (lambda () (_K153059_ _body153084_ '()))
                                       _current-phi153056_
                                       (gx#current-expander-phi)))
                                  (_E153063153072_)))))
                        (_E153063153072_)))))
            (_E153062153087_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx152720_ _internal-expand?152721_)
        (letrec ((_expand1152723_
                  (lambda (_hd153033_ _K153034_ _rest153035_ _r153036_)
                    (if (gx#core-bound-module? _hd153033_)
                        (_import1152724_
                         (gx#syntax-local-e__0 _hd153033_)
                         _K153034_
                         _rest153035_
                         _r153036_)
                        (if (gx#core-library-module-path? _hd153033_)
                            (_import1152724_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd153033_))
                             _K153034_
                             _rest153035_
                             _r153036_)
                            (if (gx#core-library-relative-module-path?
                                 _hd153033_)
                                (_import1152724_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd153033_))
                                 _K153034_
                                 _rest153035_
                                 _r153036_)
                                (let ((_e153038_ (gx#stx-e _hd153033_)))
                                  (if (pair? _e153038_)
                                      (let ((_$e153040_
                                             (gx#stx-e (car _e153038_))))
                                        (if (eq? 'spec: _$e153040_)
                                            (_import-spec152727_
                                             _hd153033_
                                             _K153034_
                                             _rest153035_
                                             _r153036_)
                                            (if (eq? 'in: _$e153040_)
                                                (_import-submodule152725_
                                                 _hd153033_
                                                 _K153034_
                                                 _rest153035_
                                                 _r153036_)
                                                (if (eq? 'runtime: _$e153040_)
                                                    (_import-runtime152726_
                                                     _hd153033_
                                                     _K153034_
                                                     _rest153035_
                                                     _r153036_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx152720_
                                                     _hd153033_)))))
                                      (if (string? _e153038_)
                                          (_import1152724_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd153033_
                                             (gx#stx-source _stx152720_)))
                                           _K153034_
                                           _rest153035_
                                           _r153036_)
                                          (if (##structure-instance-of?
                                               _e153038_
                                               'gx#module-context::t)
                                              (_K153034_
                                               _rest153035_
                                               (cons _e153038_ _r153036_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx152720_
                                               _hd153033_))))))))))
                 (_import1152724_
                  (lambda (_ctx153022_ _K153023_ _rest153024_ _r153025_)
                    (let ((_dphi153027_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K153023_
                       _rest153024_
                       (cons (##structure
                              gx#import-set::t
                              _ctx153022_
                              _dphi153027_
                              (map (lambda (_g153028153030_)
                                     (gx#core-module-export->import__%
                                      _g153028153030_
                                      '#f
                                      _dphi153027_))
                                   (##unchecked-structure-ref
                                    _ctx153022_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r153025_)))))
                 (_import-submodule152725_
                  (lambda (_hd152989_ _K152990_ _rest152991_ _r152992_)
                    (let* ((_e152993153000_ _hd152989_)
                           (_E152995153004_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152993153000_)))
                           (_E152994153018_
                            (lambda ()
                              (if (gx#stx-pair? _e152993153000_)
                                  (let ((_e152996153008_
                                         (gx#syntax-e _e152993153000_)))
                                    (let ((_hd152997153011_
                                           (##car _e152996153008_))
                                          (_tl152998153013_
                                           (##cdr _e152996153008_)))
                                      (let ((_spath153016_ _tl152998153013_))
                                        (if '#t
                                            (_import1152724_
                                             (_import-spec-source152728_
                                              _spath153016_)
                                             _K152990_
                                             _rest152991_
                                             _r152992_)
                                            (_E152995153004_)))))
                                  (_E152995153004_)))))
                      (_E152994153018_))))
                 (_import-runtime152726_
                  (lambda (_hd152956_ _K152957_ _rest152958_ _r152959_)
                    (let* ((_e152960152967_ _hd152956_)
                           (_E152962152971_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152960152967_)))
                           (_E152961152985_
                            (lambda ()
                              (if (gx#stx-pair? _e152960152967_)
                                  (let ((_e152963152975_
                                         (gx#syntax-e _e152960152967_)))
                                    (let ((_hd152964152978_
                                           (##car _e152963152975_))
                                          (_tl152965152980_
                                           (##cdr _e152963152975_)))
                                      (let ((_spath152983_ _tl152965152980_))
                                        (if '#t
                                            (_K152957_
                                             _rest152958_
                                             (cons (_import-spec-source152728_
                                                    _spath152983_)
                                                   _r152959_))
                                            (_E152962152971_)))))
                                  (_E152962152971_)))))
                      (_E152961152985_))))
                 (_import-spec152727_
                  (lambda (_hd152795_ _K152796_ _rest152797_ _r152798_)
                    (let* ((_e152799152816_ _hd152795_)
                           (_E152808152820_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152799152816_)))
                           (_E152801152930_
                            (lambda ()
                              (if (gx#stx-pair? _e152799152816_)
                                  (let ((_e152809152824_
                                         (gx#syntax-e _e152799152816_)))
                                    (let ((_hd152810152827_
                                           (##car _e152809152824_))
                                          (_tl152811152829_
                                           (##cdr _e152809152824_)))
                                      (if (gx#stx-pair? _tl152811152829_)
                                          (let ((_e152812152832_
                                                 (gx#syntax-e
                                                  _tl152811152829_)))
                                            (let ((_hd152813152835_
                                                   (##car _e152812152832_))
                                                  (_tl152814152837_
                                                   (##cdr _e152812152832_)))
                                              (let* ((_path152840_
                                                      _hd152813152835_)
                                                     (_specs152842_
                                                      _tl152814152837_))
                                                (if '#t
                                                    (let ((_src-ctx152844_
                                                           (_import-spec-source152728_
                                                            _path152840_))
                                                          (_exports152845_
                                                           (make-table))
                                                          (_specs152846_
                                                           (gx#syntax->list
                                                            _specs152842_)))
                                                      (for-each
                                                       (lambda (_out152848_)
                                                         (table-set!
                                                          _exports152845_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out152848_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out152848_
                         '4
                         gx#module-export::t
                         '#f))
                  _out152848_))
               (##unchecked-structure-ref
                _src-ctx152844_
                '9
                gx#module-context::t
                '#f))
              (_K152796_
               _rest152797_
               (foldl1 (lambda (_spec152850_ _r152851_)
                         (let* ((_e152852152868_ _spec152850_)
                                (_E152854152872_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e152852152868_)))
                                (_E152853152926_
                                 (lambda ()
                                   (if (gx#stx-pair? _e152852152868_)
                                       (let ((_e152855152876_
                                              (gx#syntax-e _e152852152868_)))
                                         (let ((_hd152856152879_
                                                (##car _e152855152876_))
                                               (_tl152857152881_
                                                (##cdr _e152855152876_)))
                                           (let ((_phi152884_
                                                  _hd152856152879_))
                                             (if (gx#stx-pair?
                                                  _tl152857152881_)
                                                 (let ((_e152858152886_
                                                        (gx#syntax-e
                                                         _tl152857152881_)))
                                                   (let ((_hd152859152889_
                                                          (##car _e152858152886_))
                                                         (_tl152860152891_
                                                          (##cdr _e152858152886_)))
                                                     (let ((_name152894_
                                                            _hd152859152889_))
                                                       (if (gx#stx-pair?
                                                            _tl152860152891_)
                                                           (let ((_e152861152896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl152860152891_)))
                     (let ((_hd152862152899_ (##car _e152861152896_))
                           (_tl152863152901_ (##cdr _e152861152896_)))
                       (let ((_src-phi152904_ _hd152862152899_))
                         (if (gx#stx-pair? _tl152863152901_)
                             (let ((_e152864152906_
                                    (gx#syntax-e _tl152863152901_)))
                               (let ((_hd152865152909_ (##car _e152864152906_))
                                     (_tl152866152911_
                                      (##cdr _e152864152906_)))
                                 (let ((_src-name152914_ _hd152865152909_))
                                   (if (gx#stx-null? _tl152866152911_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi152904_)
                                                (gx#identifier?
                                                 _src-name152914_)
                                                (gx#stx-fixnum? _phi152884_)
                                                (gx#identifier? _name152894_))
                                           (let ((_src-phi152916_
                                                  (gx#stx-e _src-phi152904_))
                                                 (_src-name152917_
                                                  (gx#core-identifier-key
                                                   _src-name152914_))
                                                 (_phi152918_
                                                  (gx#stx-e _phi152884_))
                                                 (_name152919_
                                                  (gx#core-identifier-key
                                                   _name152894_)))
                                             (let ((_$e152921_
                                                    (table-ref
                                                     _exports152845_
                                                     (cons _src-phi152916_
                                                           _src-name152917_)
                                                     '#f)))
                                               (if _$e152921_
                                                   ((lambda (_out152924_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out152924_
                                                             _name152919_
                                                             (fx- _phi152918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi152916_))
                    _r152851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e152921_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx152720_
                                                    _hd152795_))))
                                           (_E152854152872_))
                                       (_E152854152872_)))))
                             (_E152854152872_)))))
                   (_E152854152872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E152854152872_)))))
                                       (_E152854152872_)))))
                           (_E152853152926_)))
                       _r152798_
                       _specs152846_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152808152820_)))))
                                          (_E152808152820_))))
                                  (_E152808152820_))))
                           (_E152800152952_
                            (lambda ()
                              (if (gx#stx-pair? _e152799152816_)
                                  (let ((_e152802152934_
                                         (gx#syntax-e _e152799152816_)))
                                    (let ((_hd152803152937_
                                           (##car _e152802152934_))
                                          (_tl152804152939_
                                           (##cdr _e152802152934_)))
                                      (if (gx#stx-pair? _tl152804152939_)
                                          (let ((_e152805152942_
                                                 (gx#syntax-e
                                                  _tl152804152939_)))
                                            (let ((_hd152806152945_
                                                   (##car _e152805152942_))
                                                  (_tl152807152947_
                                                   (##cdr _e152805152942_)))
                                              (let ((_path152950_
                                                     _hd152806152945_))
                                                (if (gx#stx-null?
                                                     _tl152807152947_)
                                                    (if '#t
                                                        (_K152796_
                                                         _rest152797_
                                                         (cons (_import-spec-source152728_
                                                                _path152950_)
                                                               _r152798_))
                                                        (_E152801152930_))
                                                    (_E152801152930_)))))
                                          (_E152801152930_))))
                                  (_E152801152930_)))))
                      (_E152800152952_))))
                 (_import-spec-source152728_
                  (lambda (_spath152793_)
                    (gx#core-import-nested-module _spath152793_ _stx152720_)))
                 (_import!152729_
                  (lambda (_rbody152742_)
                    (letrec* ((_current-ctx152744_
                               (gx#current-expander-context))
                              (_deps152745_ (make-table 'test: eq?))
                              (_bind!152746_
                               (lambda (_hd152791_)
                                 (gx#core-bind-import!__1
                                  _hd152791_
                                  _current-ctx152744_))))
                      (let _lp152748_ ((_rest152750_ _rbody152742_)
                                       (_body152751_ '()))
                        (let* ((_rest152752152760_ _rest152750_)
                               (_else152754152770_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx152744_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx152744_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx152744_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body152751_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx152768_ _g159792_)
                                     (gx#eval-module _ctx152768_))
                                   _deps152745_)
                                  _body152751_))
                               (_K152756152779_
                                (lambda (_rest152773_ _hd152774_)
                                  (if (##structure-direct-instance-of?
                                       _hd152774_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!152746_ _hd152774_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd152774_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd152774_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps152745_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd152774_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd152774_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!152746_
                                             (##unchecked-structure-ref
                                              _hd152774_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd152774_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps152745_
                                                 (##unchecked-structure-ref
                                                  _hd152774_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e152776_
                                                 (##structure-instance-of?
                                                  _hd152774_
                                                  'gx#module-context::t)))
                                            (if _$e152776_
                                                _$e152776_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx152720_
                                                 _hd152774_)))))
                                  (_lp152748_
                                   _rest152773_
                                   (cons _hd152774_ _body152751_)))))
                          (if (##pair? _rest152752152760_)
                              (let ((_hd152757152782_
                                     (##car _rest152752152760_))
                                    (_tl152758152784_
                                     (##cdr _rest152752152760_)))
                                (let* ((_hd152787_ _hd152757152782_)
                                       (_rest152789_ _tl152758152784_))
                                  (_K152756152779_ _rest152789_ _hd152787_)))
                              (_else152754152770_)))))))
                 (_expanded-import?152730_
                  (lambda (_e152734_)
                    (let ((_$e152736_
                           (##structure-direct-instance-of?
                            _e152734_
                            'gx#import-set::t)))
                      (if _$e152736_
                          _$e152736_
                          (let ((_$e152739_
                                 (##structure-direct-instance-of?
                                  _e152734_
                                  'gx#module-import::t)))
                            (if _$e152739_
                                _$e152739_
                                (##structure-instance-of?
                                 _e152734_
                                 'gx#module-context::t))))))))
          (let ((_rbody152732_
                 (gx#core-expand-import/export
                  _stx152720_
                  _expanded-import?152730_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1152723_)))
            (if _internal-expand?152721_
                (reverse _rbody152732_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!152729_ _rbody152732_))
                 (gx#stx-source _stx152720_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx153046_)
        (let ((_internal-expand?153048_ '#f))
          (gx#core-expand-import%__% _stx153046_ _internal-expand?153048_))))
    (define gx#core-expand-import%
      (lambda _g159794_
        (let ((_g159793_ (##length _g159794_)))
          (cond ((##fx= _g159793_ 1)
                 (apply (lambda (_stx153046_)
                          (gx#core-expand-import%__0 _stx153046_))
                        _g159794_))
                ((##fx= _g159793_ 2)
                 (apply (lambda (_stx153050_ _internal-expand?153051_)
                          (gx#core-expand-import%__%
                           _stx153050_
                           _internal-expand?153051_))
                        _g159794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g159794_))))))
    (define gx#core-import-nested-module
      (lambda (_spath152647_ _where152648_)
        (let* ((_e152649152656_ _spath152647_)
               (_E152651152660_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152649152656_)))
               (_E152650152715_
                (lambda ()
                  (if (gx#stx-pair? _e152649152656_)
                      (let ((_e152652152664_ (gx#syntax-e _e152649152656_)))
                        (let ((_hd152653152667_ (##car _e152652152664_))
                              (_tl152654152669_ (##cdr _e152652152664_)))
                          (let* ((_origin152672_ _hd152653152667_)
                                 (_sub152674_ _tl152654152669_))
                            (if '#t
                                (let ((_origin-ctx152676_
                                       (if (gx#stx-false? _origin152672_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin152672_))))
                                  (let _lp152678_ ((_rest152680_ _sub152674_)
                                                   (_ctx152681_
                                                    _origin-ctx152676_))
                                    (let* ((_e152682152689_ _rest152680_)
                                           (_E152684152693_
                                            (lambda () _ctx152681_))
                                           (_E152683152711_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e152682152689_)
                                                  (let ((_e152685152697_
                                                         (gx#syntax-e
                                                          _e152682152689_)))
                                                    (let ((_hd152686152700_
                                                           (##car _e152685152697_))
                                                          (_tl152687152702_
                                                           (##cdr _e152685152697_)))
                                                      (let* ((_id152705_
                                                              _hd152686152700_)
                                                             (_rest152707_
                                                              _tl152687152702_))
                                                        (if '#t
                                                            (let ((_bind152709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id152705_
                            '0
                            _ctx152681_)))
                      (if (and (##structure-direct-instance-of?
                                _bind152709_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind152709_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where152648_
                           _spath152647_
                           _id152705_))
                      (_lp152678_
                       _rest152707_
                       (##unchecked-structure-ref
                        _bind152709_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E152684152693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152684152693_)))))
                                      (_E152683152711_))))
                                (_E152651152660_)))))
                      (_E152651152660_)))))
          (_E152650152715_))))
    (define gx#core-expand-import-source
      (lambda (_hd152645_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd152645_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx152153_ _internal-expand?152154_)
        (letrec* ((_make-export__159723159724_
                   (lambda (_bind152593_ _phi152594_ _ctx152595_ _name152596_)
                     (let* ((_key152598_
                             (##unchecked-structure-ref
                              _bind152593_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key152600_
                             (if _name152596_
                                 (gx#core-identifier-key _name152596_)
                                 _key152598_)))
                       (##structure
                        gx#module-export::t
                        _ctx152595_
                        _key152598_
                        _phi152594_
                        _export-key152600_
                        (let ((_$e152603_
                               (##structure-instance-of?
                                _bind152593_
                                'gx#extern-binding::t)))
                          (if _$e152603_
                              _$e152603_
                              (##structure-direct-instance-of?
                               _bind152593_
                               'gx#import-binding::t)))))))
                  (_make-export__0__159725159728_
                   (lambda (_bind152609_)
                     (let* ((_phi152611_ (gx#current-export-expander-phi))
                            (_ctx152613_ (gx#current-expander-context))
                            (_name152615_ '#f))
                       (_make-export__159723159724_
                        _bind152609_
                        _phi152611_
                        _ctx152613_
                        _name152615_))))
                  (_make-export__1__159726159729_
                   (lambda (_bind152617_ _phi152618_)
                     (let* ((_ctx152620_ (gx#current-expander-context))
                            (_name152622_ '#f))
                       (_make-export__159723159724_
                        _bind152617_
                        _phi152618_
                        _ctx152620_
                        _name152622_))))
                  (_make-export__2__159727159730_
                   (lambda (_bind152624_ _phi152625_ _ctx152626_)
                     (let ((_name152628_ '#f))
                       (_make-export__159723159724_
                        _bind152624_
                        _phi152625_
                        _ctx152626_
                        _name152628_))))
                  (_make-export152156_
                   (lambda _g159796_
                     (let ((_g159795_ (##length _g159796_)))
                       (cond ((##fx= _g159795_ 1)
                              (apply (lambda (_bind152609_)
                                       (_make-export__0__159725159728_
                                        _bind152609_))
                                     _g159796_))
                             ((##fx= _g159795_ 2)
                              (apply (lambda (_bind152617_ _phi152618_)
                                       (_make-export__1__159726159729_
                                        _bind152617_
                                        _phi152618_))
                                     _g159796_))
                             ((##fx= _g159795_ 3)
                              (apply (lambda (_bind152624_
                                              _phi152625_
                                              _ctx152626_)
                                       (_make-export__2__159727159730_
                                        _bind152624_
                                        _phi152625_
                                        _ctx152626_))
                                     _g159796_))
                             ((##fx= _g159795_ 4)
                              (apply (lambda (_bind152630_
                                              _phi152631_
                                              _ctx152632_
                                              _name152633_)
                                       (_make-export__159723159724_
                                        _bind152630_
                                        _phi152631_
                                        _ctx152632_
                                        _name152633_))
                                     _g159796_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g159796_))))))
                  (_expand1152157_
                   (lambda (_hd152306_ _K152307_ _rest152308_ _r152309_)
                     (let* ((_e152310152342_ _hd152306_)
                            (_E152337152346_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx152153_
                                _hd152306_)))
                            (_E152327152425_
                             (lambda ()
                               (if (gx#stx-pair? _e152310152342_)
                                   (let ((_e152338152350_
                                          (gx#syntax-e _e152310152342_)))
                                     (let ((_hd152339152353_
                                            (##car _e152338152350_))
                                           (_tl152340152355_
                                            (##cdr _e152338152350_)))
                                       (if (eq? (gx#stx-e _hd152339152353_)
                                                'import:)
                                           (let ((_in152358_ _tl152340152355_))
                                             (if (gx#stx-list? _in152358_)
                                                 (let _lp152360_ ((_in-rest152362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in152358_)
                          (_r152363_ _r152309_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e152364152371_
                                                           _in-rest152362_)
                                                          (_E152366152375_
                                                           (lambda ()
                                                             (_K152307_
                                                              _rest152308_
                                                              _r152363_)))
                                                          (_E152365152421_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e152364152371_)
                         (let ((_e152367152379_ (gx#syntax-e _e152364152371_)))
                           (let ((_hd152368152382_ (##car _e152367152379_))
                                 (_tl152369152384_ (##cdr _e152367152379_)))
                             (let* ((_hd152387_ _hd152368152382_)
                                    (_in-rest152389_ _tl152369152384_))
                               (if '#t
                                   (let ((_src152419_
                                          (if (gx#core-bound-module?
                                               _hd152387_)
                                              (gx#syntax-local-e__0 _hd152387_)
                                              (if (gx#core-library-module-path?
                                                   _hd152387_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd152387_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd152387_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd152387_))
                                                      (if (gx#stx-string?
                                                           _hd152387_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd152387_
                                                            (gx#stx-source
                                                             _stx152153_)))
                                                          (let* ((_e152390152397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd152387_)
                         (_E152392152401_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx152153_
                             _hd152387_)))
                         (_E152391152415_
                          (lambda ()
                            (if (gx#stx-pair? _e152390152397_)
                                (let ((_e152393152405_
                                       (gx#syntax-e _e152390152397_)))
                                  (let ((_hd152394152408_
                                         (##car _e152393152405_))
                                        (_tl152395152410_
                                         (##cdr _e152393152405_)))
                                    (if (eq? (gx#stx-e _hd152394152408_) 'in:)
                                        (let ((_spath152413_ _tl152395152410_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath152413_
                                               _stx152153_)
                                              (_E152392152401_)))
                                        (_E152392152401_))))
                                (_E152392152401_)))))
                    (_E152391152415_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp152360_
                                      _in-rest152389_
                                      (_export-imports152158_
                                       _src152419_
                                       _r152363_)))
                                   (_E152366152375_)))))
                         (_E152366152375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152365152421_)))
                                                 (_E152337152346_)))
                                           (_E152337152346_))))
                                   (_E152337152346_))))
                            (_E152314152464_
                             (lambda ()
                               (if (gx#stx-pair? _e152310152342_)
                                   (let ((_e152328152429_
                                          (gx#syntax-e _e152310152342_)))
                                     (let ((_hd152329152432_
                                            (##car _e152328152429_))
                                           (_tl152330152434_
                                            (##cdr _e152328152429_)))
                                       (if (eq? (gx#stx-e _hd152329152432_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl152330152434_)
                                               (let ((_e152331152437_
                                                      (gx#syntax-e
                                                       _tl152330152434_)))
                                                 (let ((_hd152332152440_
                                                        (##car _e152331152437_))
                                                       (_tl152333152442_
                                                        (##cdr _e152331152437_)))
                                                   (let ((_id152445_
                                                          _hd152332152440_))
                                                     (if (gx#stx-pair?
                                                          _tl152333152442_)
                                                         (let ((_e152334152447_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152333152442_)))
                   (let ((_hd152335152450_ (##car _e152334152447_))
                         (_tl152336152452_ (##cdr _e152334152447_)))
                     (let ((_name152455_ _hd152335152450_))
                       (if (gx#stx-null? _tl152336152452_)
                           (if '#t
                               (let* ((_phi152457_
                                       (gx#current-export-expander-phi))
                                      (_$e152459_
                                       (gx#core-resolve-identifier__1
                                        _id152445_
                                        _phi152457_)))
                                 (if _$e152459_
                                     ((lambda (_bind152462_)
                                        (_K152307_
                                         _rest152308_
                                         (cons (_make-export__159723159724_
                                                _bind152462_
                                                _phi152457_
                                                (gx#current-expander-context)
                                                _name152455_)
                                               _r152309_)))
                                      _$e152459_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx152153_
                                      _hd152306_
                                      _id152445_)))
                               (_E152327152425_))
                           (_E152327152425_)))))
                 (_E152327152425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152327152425_))
                                           (_E152327152425_))))
                                   (_E152327152425_))))
                            (_E152313152513_
                             (lambda ()
                               (if (gx#stx-pair? _e152310152342_)
                                   (let ((_e152315152468_
                                          (gx#syntax-e _e152310152342_)))
                                     (let ((_hd152316152471_
                                            (##car _e152315152468_))
                                           (_tl152317152473_
                                            (##cdr _e152315152468_)))
                                       (if (eq? (gx#stx-e _hd152316152471_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl152317152473_)
                                               (let ((_e152318152476_
                                                      (gx#syntax-e
                                                       _tl152317152473_)))
                                                 (let ((_hd152319152479_
                                                        (##car _e152318152476_))
                                                       (_tl152320152481_
                                                        (##cdr _e152318152476_)))
                                                   (let ((_phi152484_
                                                          _hd152319152479_))
                                                     (if (gx#stx-pair?
                                                          _tl152320152481_)
                                                         (let ((_e152321152486_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152320152481_)))
                   (let ((_hd152322152489_ (##car _e152321152486_))
                         (_tl152323152491_ (##cdr _e152321152486_)))
                     (let ((_id152494_ _hd152322152489_))
                       (if (gx#stx-pair? _tl152323152491_)
                           (let ((_e152324152496_
                                  (gx#syntax-e _tl152323152491_)))
                             (let ((_hd152325152499_ (##car _e152324152496_))
                                   (_tl152326152501_ (##cdr _e152324152496_)))
                               (let ((_name152504_ _hd152325152499_))
                                 (if (gx#stx-null? _tl152326152501_)
                                     (if (and (gx#stx-fixnum? _phi152484_)
                                              (gx#identifier? _id152494_)
                                              (gx#identifier? _name152504_))
                                         (let* ((_phi152506_
                                                 (gx#stx-e _phi152484_))
                                                (_$e152508_
                                                 (gx#core-resolve-identifier__1
                                                  _id152494_
                                                  _phi152506_)))
                                           (if _$e152508_
                                               ((lambda (_bind152511_)
                                                  (_K152307_
                                                   _rest152308_
                                                   (cons (_make-export__159723159724_
                                                          _bind152511_
                                                          _phi152506_
                                                          (gx#current-expander-context)
                                                          _name152504_)
                                                         _r152309_)))
                                                _$e152508_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx152153_
                                                _hd152306_
                                                _id152494_)))
                                         (_E152314152464_))
                                     (_E152314152464_)))))
                           (_E152314152464_)))))
                 (_E152314152464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152314152464_))
                                           (_E152314152464_))))
                                   (_E152314152464_))))
                            (_E152312152524_
                             (lambda ()
                               (let ((_id152517_ _e152310152342_))
                                 (if (gx#identifier? _id152517_)
                                     (let ((_$e152519_
                                            (gx#core-resolve-identifier__1
                                             _id152517_
                                             (gx#current-export-expander-phi))))
                                       (if _$e152519_
                                           ((lambda (_bind152522_)
                                              (_K152307_
                                               _rest152308_
                                               (cons (_make-export__0__159725159728_
                                                      _bind152522_)
                                                     _r152309_)))
                                            _$e152519_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx152153_
                                            _hd152306_)))
                                     (_E152313152513_)))))
                            (_E152311152588_
                             (lambda ()
                               (if (eq? (gx#stx-e _e152310152342_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx152528_
                                               (gx#current-expander-context))
                                              (_current-phi152530_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx152532_
                                               (gx#core-context-shift
                                                _current-ctx152528_
                                                _current-phi152530_))
                                              (_phi-bind152534_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx152532_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp152537_ ((_bind-rest152539_
                                                           _phi-bind152534_)
                                                          (_set152540_ '()))
                                           (let* ((_bind-rest152541152551_
                                                   _bind-rest152539_)
                                                  (_else152543152559_
                                                   (lambda ()
                                                     (_K152307_
                                                      _rest152308_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi152530_
                                                             _set152540_)
                                                            _r152309_))))
                                                  (_K152545152569_
                                                   (lambda (_bind-rest152562_
                                                            _bind152563_
                                                            _key152564_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind152563_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind152563_))
                                                         (_lp152537_
                                                          _bind-rest152562_
                                                          _set152540_)
                                                         (_lp152537_
                                                          _bind-rest152562_
                                                          (cons (_make-export__2__159727159730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind152563_
                         _current-phi152530_
                         _current-ctx152528_)
                        _set152540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest152541152551_)
                                                 (let ((_hd152546152572_
                                                        (##car _bind-rest152541152551_))
                                                       (_tl152547152574_
                                                        (##cdr _bind-rest152541152551_)))
                                                   (if (##pair? _hd152546152572_)
                                                       (let ((_hd152548152577_
                                                              (##car _hd152546152572_))
                                                             (_tl152549152579_
                                                              (##cdr _hd152546152572_)))
                                                         (let* ((_key152582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd152548152577_)
                        (_bind152584_ _tl152549152579_)
                        (_bind-rest152586_ _tl152547152574_))
                   (_K152545152569_
                    _bind-rest152586_
                    _bind152584_
                    _key152582_)))
               (_else152543152559_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else152543152559_)))))
                                       (_E152312152524_))
                                   (_E152312152524_)))))
                       (_E152311152588_))))
                  (_export-imports152158_
                   (lambda (_src152182_ _r152183_)
                     (letrec* ((_current-ctx152185_
                                (gx#current-expander-context))
                               (_current-phi152186_
                                (gx#current-export-expander-phi))
                               (_import->export152187_
                                (lambda (_in152268_)
                                  (let* ((_in152269152277_ _in152268_)
                                         (_E152271152281_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in152269152277_)))
                                         (_K152272152288_
                                          (lambda (_phi152284_
                                                   _key152285_
                                                   _out152286_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx152185_
                                             _key152285_
                                             _phi152284_
                                             _key152285_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in152269152277_
                                         'gx#module-import::t)
                                        (let* ((_e152273152291_
                                                (##unchecked-structure-ref
                                                 _in152269152277_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out152294_ _e152273152291_)
                                               (_e152274152296_
                                                (##unchecked-structure-ref
                                                 _in152269152277_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key152299_ _e152274152296_)
                                               (_e152275152301_
                                                (##unchecked-structure-ref
                                                 _in152269152277_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi152304_ _e152275152301_))
                                          (_K152272152288_
                                           _phi152304_
                                           _key152299_
                                           _out152294_))
                                        (_E152271152281_)))))
                               (_fold-e152188_
                                (lambda (_in152190_ _r152191_)
                                  (let* ((_in152192152206_ _in152190_)
                                         (_else152195152214_
                                          (lambda () _r152191_)))
                                    (let ((_K152201152250_
                                           (lambda (_phi152246_
                                                    _key152247_
                                                    _out152248_)
                                             (if (and (fx= _phi152246_
                                                           _current-phi152186_)
                                                      (eq? _src152182_
                                                           (##unchecked-structure-ref
                                                            _out152248_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export152187_
                                                        _in152190_)
                                                       _r152191_)
                                                 _r152191_)))
                                          (_K152197152225_
                                           (lambda (_imports152218_
                                                    _phi152219_
                                                    _ctx152220_)
                                             (if (and (fx= _phi152219_
                                                           _current-phi152186_)
                                                      (eq? _src152182_
                                                           _ctx152220_))
                                                 (foldl1 (lambda (_in152222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r152223_)
                   (cons (_import->export152187_ _in152222_) _r152223_))
                 _r152191_
                 _imports152218_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r152191_))))
                                      (let ((_try-match152194152243_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in152192152206_
                                                    'gx#import-set::t)
                                                   (let* ((_e152198152228_
                                                           (##unchecked-structure-ref
                                                            _in152192152206_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152199152233_
                                                           (##unchecked-structure-ref
                                                            _in152192152206_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152200152238_
                                                           (##unchecked-structure-ref
                                                            _in152192152206_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx152231_
                                                            _e152198152228_)
                                                           (_phi152236_
                                                            _e152199152233_)
                                                           (_imports152241_
                                                            _e152200152238_))
                                                       (_K152197152225_
                                                        _imports152241_
                                                        _phi152236_
                                                        _ctx152231_)))
                                                   (_else152195152214_)))))
                                        (if (##structure-direct-instance-of?
                                             _in152192152206_
                                             'gx#module-import::t)
                                            (let* ((_e152202152253_
                                                    (##unchecked-structure-ref
                                                     _in152192152206_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152203152258_
                                                    (##unchecked-structure-ref
                                                     _in152192152206_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152204152263_
                                                    (##unchecked-structure-ref
                                                     _in152192152206_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out152256_
                                                     _e152202152253_)
                                                    (_key152261_
                                                     _e152203152258_)
                                                    (_phi152266_
                                                     _e152204152263_))
                                                (_K152201152250_
                                                 _phi152266_
                                                 _key152261_
                                                 _out152256_)))
                                            (_try-match152194152243_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src152182_
                              _current-phi152186_
                              (foldl1 _fold-e152188_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx152185_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r152183_))))
                  (_export!152159_
                   (lambda (_rbody152172_)
                     (letrec* ((_current-ctx152174_
                                (gx#current-expander-context))
                               (_fold-e152175_
                                (lambda (_out152179_ _r152180_)
                                  (if (##structure-direct-instance-of?
                                       _out152179_
                                       'gx#module-export::t)
                                      (cons _out152179_ _r152180_)
                                      (if (##structure-direct-instance-of?
                                           _out152179_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r152180_
                                                  (##unchecked-structure-ref
                                                   _out152179_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r152180_)))))
                       (let ((_body152177_ (reverse _rbody152172_)))
                         (##unchecked-structure-set!
                          _current-ctx152174_
                          (foldl1 _fold-e152175_
                                  (##unchecked-structure-ref
                                   _current-ctx152174_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body152177_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body152177_))))
                  (_expanded-export?152160_
                   (lambda (_e152167_)
                     (let ((_$e152169_
                            (##structure-direct-instance-of?
                             _e152167_
                             'gx#module-export::t)))
                       (if _$e152169_
                           _$e152169_
                           (##structure-direct-instance-of?
                            _e152167_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?152154_)
              (let ((_rbody152165_
                     (gx#core-expand-import/export
                      _stx152153_
                      _expanded-export?152160_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1152157_)))
                (if _internal-expand?152154_
                    (reverse _rbody152165_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!152159_ _rbody152165_))
                     (gx#stx-source _stx152153_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx152153_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx152153_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx152638_)
        (let ((_internal-expand?152640_ '#f))
          (gx#core-expand-export%__% _stx152638_ _internal-expand?152640_))))
    (define gx#core-expand-export%
      (lambda _g159798_
        (let ((_g159797_ (##length _g159798_)))
          (cond ((##fx= _g159797_ 1)
                 (apply (lambda (_stx152638_)
                          (gx#core-expand-export%__0 _stx152638_))
                        _g159798_))
                ((##fx= _g159797_ 2)
                 (apply (lambda (_stx152642_ _internal-expand?152643_)
                          (gx#core-expand-export%__%
                           _stx152642_
                           _internal-expand?152643_))
                        _g159798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g159798_))))))
    (define gx#core-expand-export-source
      (lambda (_hd152150_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd152150_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx152120_)
        (let* ((_e152121152128_ _stx152120_)
               (_E152123152132_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152121152128_)))
               (_E152122152146_
                (lambda ()
                  (if (gx#stx-pair? _e152121152128_)
                      (let ((_e152124152136_ (gx#syntax-e _e152121152128_)))
                        (let ((_hd152125152139_ (##car _e152124152136_))
                              (_tl152126152141_ (##cdr _e152124152136_)))
                          (let ((_body152144_ _tl152126152141_))
                            (if (gx#identifier-list? _body152144_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body152144_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body152144_))
                                   (gx#stx-source _stx152120_)))
                                (_E152123152132_)))))
                      (_E152123152132_)))))
          (_E152122152146_))))
    (define gx#core-bind-feature!__%
      (lambda (_id152086_ _private?152087_ _phi152088_ _ctx152089_)
        (gx#core-bind-syntax!__%
         _id152086_
         ((if _private?152087_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id152086_))
         _private?152087_
         _phi152088_
         _ctx152089_)))
    (define gx#core-bind-feature!__0
      (lambda (_id152094_)
        (let* ((_private?152096_ '#f)
               (_phi152098_ (gx#current-expander-phi))
               (_ctx152100_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152094_
           _private?152096_
           _phi152098_
           _ctx152100_))))
    (define gx#core-bind-feature!__1
      (lambda (_id152102_ _private?152103_)
        (let* ((_phi152105_ (gx#current-expander-phi))
               (_ctx152107_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152102_
           _private?152103_
           _phi152105_
           _ctx152107_))))
    (define gx#core-bind-feature!__2
      (lambda (_id152109_ _private?152110_ _phi152111_)
        (let ((_ctx152113_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152109_
           _private?152110_
           _phi152111_
           _ctx152113_))))
    (define gx#core-bind-feature!
      (lambda _g159800_
        (let ((_g159799_ (##length _g159800_)))
          (cond ((##fx= _g159799_ 1)
                 (apply (lambda (_id152094_)
                          (gx#core-bind-feature!__0 _id152094_))
                        _g159800_))
                ((##fx= _g159799_ 2)
                 (apply (lambda (_id152102_ _private?152103_)
                          (gx#core-bind-feature!__1
                           _id152102_
                           _private?152103_))
                        _g159800_))
                ((##fx= _g159799_ 3)
                 (apply (lambda (_id152109_ _private?152110_ _phi152111_)
                          (gx#core-bind-feature!__2
                           _id152109_
                           _private?152110_
                           _phi152111_))
                        _g159800_))
                ((##fx= _g159799_ 4)
                 (apply (lambda (_id152115_
                                 _private?152116_
                                 _phi152117_
                                 _ctx152118_)
                          (gx#core-bind-feature!__%
                           _id152115_
                           _private?152116_
                           _phi152117_
                           _ctx152118_))
                        _g159800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g159800_))))))))
