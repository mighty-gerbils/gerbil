(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1707554638)
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
      (lambda _$args155531_
        (apply make-struct-instance gx#module-import::t _$args155531_)))
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
      (lambda _$args155528_
        (apply make-struct-instance gx#module-export::t _$args155528_)))
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
      (lambda _$args155525_
        (apply make-struct-instance gx#import-set::t _$args155525_)))
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
      (lambda _$args155522_
        (apply make-struct-instance gx#export-set::t _$args155522_)))
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
      (lambda _$args155519_
        (apply make-class-instance gx#import-expander::t _$args155519_)))
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
      (lambda _$args155516_
        (apply make-class-instance gx#export-expander::t _$args155516_)))
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
      (lambda _$args155513_
        (apply make-class-instance
               gx#import-export-expander::t
               _$args155513_)))
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
      (lambda (_path155510_ _fun155511_)
        (call-with-input-file
         (cons 'path: (cons _path155510_ gx#source-file-settings))
         _fun155511_)))
    (define gx#module-context:::init!
      (lambda (_self155504_ _id155505_ _super155506_ _ns155507_ _path155508_)
        (if (##fx< '11 (##structure-length _self155504_))
            (begin
              (##unchecked-structure-set!
               _self155504_
               _id155505_
               '1
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               (make-table 'test: eq?)
               '2
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               _super155506_
               '3
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               '#f
               '4
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               '#f
               '5
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               _ns155507_
               '6
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               _path155508_
               '7
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               '()
               '8
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               '()
               '9
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               '#f
               '10
               (##structure-type _self155504_)
               '#f)
              (##unchecked-structure-set!
               _self155504_
               '#f
               '11
               (##structure-type _self155504_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155504_
                   '11
                   (##vector-length _self155504_)))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self155348_ _ctx155349_ _root155350_)
        (let ((_super155358_
               (let ((_$e155352_ _root155350_))
                 (if _$e155352_
                     _$e155352_
                     (let ((_$e155355_ (gx#core-context-root__0)))
                       (if _$e155355_
                           _$e155355_
                           (let ((__obj159767
                                  (make-object gx#root-context::t '3)))
                             (let ((__constructor159768
                                    (find-method gx#root-context::t ':init!)))
                               (if __constructor159768
                                   (__constructor159768 __obj159767)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj159767)))))))
          (if _ctx155349_
              (let ((_id155361_
                     (##structure-ref
                      _ctx155349_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path155362_
                     (##structure-ref _ctx155349_ '7 gx#module-context::t '#f))
                    (_in155363_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx155349_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e155364_
                     (make-promise (lambda () (gx#eval-module _ctx155349_)))))
                (if (##fx< '8 (##structure-length _self155348_))
                    (begin
                      (##unchecked-structure-set!
                       _self155348_
                       _id155361_
                       '1
                       (##structure-type _self155348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155348_
                       (make-table 'test: eq? 'size: (length _in155363_))
                       '2
                       (##structure-type _self155348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155348_
                       _super155358_
                       '3
                       (##structure-type _self155348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155348_
                       '#f
                       '4
                       (##structure-type _self155348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155348_
                       '#f
                       '5
                       (##structure-type _self155348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155348_
                       _path155362_
                       '6
                       (##structure-type _self155348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155348_
                       _in155363_
                       '7
                       (##structure-type _self155348_)
                       '#f)
                      (##unchecked-structure-set!
                       _self155348_
                       _e155364_
                       '8
                       (##structure-type _self155348_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self155348_
                           '8
                           (##vector-length _self155348_)))
                (for-each
                 (lambda (_g155365155367_)
                   (gx#core-bind-weak-import!__% _g155365155367_ _self155348_))
                 _in155363_))
              (if (##fx< '8 (##structure-length _self155348_))
                  (begin
                    (##unchecked-structure-set!
                     _self155348_
                     '#f
                     '1
                     (##structure-type _self155348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155348_
                     (make-table 'test: eq?)
                     '2
                     (##structure-type _self155348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155348_
                     _super155358_
                     '3
                     (##structure-type _self155348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155348_
                     '#f
                     '4
                     (##structure-type _self155348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155348_
                     '#f
                     '5
                     (##structure-type _self155348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155348_
                     '#f
                     '6
                     (##structure-type _self155348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155348_
                     '()
                     '7
                     (##structure-type _self155348_)
                     '#f)
                    (##unchecked-structure-set!
                     _self155348_
                     '#f
                     '8
                     (##structure-type _self155348_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self155348_
                         '8
                         (##vector-length _self155348_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self155373_ _ctx155374_)
        (let ((_root155376_ '#f))
          (gx#prelude-context:::init!__%
           _self155373_
           _ctx155374_
           _root155376_))))
    (define gx#prelude-context:::init!
      (lambda _g159774_
        (let ((_g159773_ (##length _g159774_)))
          (cond ((##fx= _g159773_ 2)
                 (apply (lambda (_self155373_ _ctx155374_)
                          (gx#prelude-context:::init!__0
                           _self155373_
                           _ctx155374_))
                        _g159774_))
                ((##fx= _g159773_ 3)
                 (apply (lambda (_self155378_ _ctx155379_ _root155380_)
                          (gx#prelude-context:::init!__%
                           _self155378_
                           _ctx155379_
                           _root155380_))
                        _g159774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g159774_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self155222_ _e155223_)
        (if (##fx< '3 (##structure-length _self155222_))
            (begin
              (##unchecked-structure-set!
               _self155222_
               _e155223_
               '1
               (##structure-type _self155222_)
               '#f)
              (##unchecked-structure-set!
               _self155222_
               (gx#current-expander-context)
               '2
               (##structure-type _self155222_)
               '#f)
              (##unchecked-structure-set!
               _self155222_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self155222_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self155222_
                   '3
                   (##vector-length _self155222_)))))
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
      (lambda (_g154848154851_ _g154849154853_)
        (gx#core-apply-user-expander__%
         _g154848154851_
         _g154849154853_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g154719154722_ _g154720154724_)
        (gx#core-apply-user-expander__%
         _g154719154722_
         _g154720154724_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx154590_)
        (let* ((_path154592_
                (##structure-ref _ctx154590_ '7 gx#module-context::t '#f))
               (_path154594_
                (if (pair? _path154592_) (last _path154592_) _path154592_)))
          (if (string? _path154594_) _path154594_ '#f))))
    (define gx#import-module__%
      (lambda (_path154566_ _reload?154567_ _eval?154568_)
        (let ((_ctx154570_
               ((gx#current-expander-module-import)
                _path154566_
                _reload?154567_)))
          (if (and _ctx154570_ _eval?154568_)
              (gx#eval-module _ctx154570_)
              '#!void)
          _ctx154570_)))
    (define gx#import-module__0
      (lambda (_path154575_)
        (let* ((_reload?154577_ '#f) (_eval?154579_ '#f))
          (gx#import-module__% _path154575_ _reload?154577_ _eval?154579_))))
    (define gx#import-module__1
      (lambda (_path154581_ _reload?154582_)
        (let ((_eval?154584_ '#f))
          (gx#import-module__% _path154581_ _reload?154582_ _eval?154584_))))
    (define gx#import-module
      (lambda _g159776_
        (let ((_g159775_ (##length _g159776_)))
          (cond ((##fx= _g159775_ 1)
                 (apply (lambda (_path154575_)
                          (gx#import-module__0 _path154575_))
                        _g159776_))
                ((##fx= _g159775_ 2)
                 (apply (lambda (_path154581_ _reload?154582_)
                          (gx#import-module__1 _path154581_ _reload?154582_))
                        _g159776_))
                ((##fx= _g159775_ 3)
                 (apply (lambda (_path154586_ _reload?154587_ _eval?154588_)
                          (gx#import-module__%
                           _path154586_
                           _reload?154587_
                           _eval?154588_))
                        _g159776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g159776_))))))
    (define gx#eval-module
      (lambda (_mod154563_) ((gx#current-expander-module-eval) _mod154563_)))
    (define gx#core-eval-module
      (lambda (_obj154548_)
        (letrec ((_force-e154550_
                  (lambda (_getf154559_ _e154560_)
                    (call-with-parameters
                     (lambda () (force (_getf154559_ _e154560_)))
                     gx#current-expander-context
                     _e154560_
                     gx#current-expander-phi
                     '0))))
          (let _recur154552_ ((_e154554_ _obj154548_))
            (if (##structure-instance-of? _e154554_ 'gx#module-context::t)
                (begin
                  (let ((_$e154556_ (gx#core-context-prelude__% _e154554_)))
                    (if _$e154556_ (_recur154552_ _$e154556_) '#!void))
                  (_force-e154550_ gx#module-context-e _e154554_))
                (if (##structure-instance-of? _e154554_ 'gx#prelude-context::t)
                    (_force-e154550_ gx#prelude-context-e _e154554_)
                    (if (gx#stx-string? _e154554_)
                        (_recur154552_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e154554_)))
                        (if (gx#core-library-module-path? _e154554_)
                            (_recur154552_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e154554_)))
                            (error '"Cannot eval module" _obj154548_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx154531_)
        (let _lp154533_ ((_e154535_ _ctx154531_))
          (if (or (##structure-instance-of? _e154535_ 'gx#module-context::t)
                  (##structure-instance-of? _e154535_ 'gx#local-context::t))
              (_lp154533_
               (##unchecked-structure-ref _e154535_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e154535_ 'gx#prelude-context::t)
                  _e154535_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx154544_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx154544_))))
    (define gx#core-context-prelude
      (lambda _g159778_
        (let ((_g159777_ (##length _g159778_)))
          (cond ((##fx= _g159777_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g159778_))
                ((##fx= _g159777_ 1)
                 (apply (lambda (_ctx154546_)
                          (gx#core-context-prelude__% _ctx154546_))
                        _g159778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g159778_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx154521_)
        (let* ((_ht154523_ (gx#current-expander-module-registry))
               (_$e154525_ (table-ref _ht154523_ _ctx154521_ '#f)))
          (if _$e154525_
              (values _$e154525_)
              (let ((_pre154528_
                     (let ((__obj159769
                            (make-object gx#prelude-context::t '9)))
                       (gx#prelude-context:::init! __obj159769 _ctx154521_)
                       __obj159769)))
                (table-set! _ht154523_ _ctx154521_ _pre154528_)
                _pre154528_)))))
    (define gx#core-import-module__%
      (lambda (_rpath154402_ _reload?154403_)
        (letrec ((_import-source154405_
                  (lambda (_path154490_)
                    (if (member _path154490_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path154490_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g159779_ (gx#core-read-module _path154490_)))
                         (begin
                           (let ((_g159780_
                                  (if (##values? _g159779_)
                                      (##vector-length _g159779_)
                                      1)))
                             (if (not (##fx= _g159780_ 4))
                                 (error "Context expects 4 values" _g159780_)))
                           (let ((_pre154493_ (##vector-ref _g159779_ 0))
                                 (_id154494_ (##vector-ref _g159779_ 1))
                                 (_ns154495_ (##vector-ref _g159779_ 2))
                                 (_body154496_ (##vector-ref _g159779_ 3)))
                             (let* ((_prelude154501_
                                     (if (##structure-instance-of?
                                          _pre154493_
                                          'gx#prelude-context::t)
                                         _pre154493_
                                         (if (##structure-instance-of?
                                              _pre154493_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre154493_)
                                             (if (string? _pre154493_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre154493_))
                                                 (if (not _pre154493_)
                                                     (let ((_$e154498_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e154498_
                                                           _$e154498_
                                                           (let ((__obj159770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object gx#prelude-context::t '9)))
                     (gx#prelude-context:::init! __obj159770 '#f)
                     __obj159770)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath154402_
                                                            _pre154493_))))))
                                    (_ctx154503_
                                     (let ((__obj159771
                                            (make-object
                                             gx#module-context::t
                                             '12)))
                                       (gx#module-context:::init!
                                        __obj159771
                                        _id154494_
                                        _prelude154501_
                                        _ns154495_
                                        _path154490_)
                                       __obj159771))
                                    (_body154505_
                                     (gx#core-expand-module-begin
                                      _body154496_
                                      _ctx154503_))
                                    (_body154507_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body154505_)
                                      _path154490_
                                      _ctx154503_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx154503_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body154507_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx154503_
                                _body154507_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path154490_
                                _ctx154503_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id154494_
                                _ctx154503_)
                               _ctx154503_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path154490_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule154406_
                  (lambda (_rpath154418_)
                    (let* ((_rpath154419154426_ _rpath154418_)
                           (_E154421154430_
                            (lambda ()
                              (error '"No clause matching"
                                     _rpath154419154426_)))
                           (_K154422154478_
                            (lambda (_refs154433_ _origin154434_)
                              (let ((_ctx154436_
                                     (if _origin154434_
                                         (gx#core-import-module__%
                                          _origin154434_
                                          _reload?154403_)
                                         (gx#current-expander-context))))
                                (let _lp154438_ ((_rest154440_ _refs154433_)
                                                 (_ctx154441_ _ctx154436_))
                                  (let* ((_rest154442154450_ _rest154440_)
                                         (_else154444154458_
                                          (lambda () _ctx154441_))
                                         (_K154446154466_
                                          (lambda (_rest154461_ _id154462_)
                                            (let ((_bind154464_
                                                   (gx#resolve-identifier__%
                                                    _id154462_
                                                    '0
                                                    _ctx154441_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind154464_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind154464_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp154438_
                                                   _rest154461_
                                                   (##unchecked-structure-ref
                                                    _bind154464_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath154418_
                                                         _id154462_
                                                         _bind154464_))))))
                                    (if (##pair? _rest154442154450_)
                                        (let ((_hd154447154469_
                                               (##car _rest154442154450_))
                                              (_tl154448154471_
                                               (##cdr _rest154442154450_)))
                                          (let* ((_id154474_ _hd154447154469_)
                                                 (_rest154476_
                                                  _tl154448154471_))
                                            (_K154446154466_
                                             _rest154476_
                                             _id154474_)))
                                        (_else154444154458_))))))))
                      (if (##pair? _rpath154419154426_)
                          (let ((_hd154423154481_ (##car _rpath154419154426_))
                                (_tl154424154483_ (##cdr _rpath154419154426_)))
                            (let* ((_origin154486_ _hd154423154481_)
                                   (_refs154488_ _tl154424154483_))
                              (_K154422154478_ _refs154488_ _origin154486_)))
                          (_E154421154430_))))))
          (let ((_$e154408_
                 (if (not _reload?154403_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath154402_
                      '#f)
                     '#f)))
            (if _$e154408_
                (values _$e154408_)
                (if (list? _rpath154402_)
                    (_import-submodule154406_ _rpath154402_)
                    (if (gx#core-library-module-path? _rpath154402_)
                        (let ((_ctx154411_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath154402_)
                                _reload?154403_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath154402_
                           _ctx154411_)
                          _ctx154411_)
                        (let* ((_npath154413_ (path-normalize _rpath154402_))
                               (_$e154415_
                                (if (not _reload?154403_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath154413_
                                     '#f)
                                    '#f)))
                          (if _$e154415_
                              (values _$e154415_)
                              (_import-source154405_ _npath154413_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath154514_)
        (let ((_reload?154516_ '#f))
          (gx#core-import-module__% _rpath154514_ _reload?154516_))))
    (define gx#core-import-module
      (lambda _g159782_
        (let ((_g159781_ (##length _g159782_)))
          (cond ((##fx= _g159781_ 1)
                 (apply (lambda (_rpath154514_)
                          (gx#core-import-module__0 _rpath154514_))
                        _g159782_))
                ((##fx= _g159781_ 2)
                 (apply (lambda (_rpath154518_ _reload?154519_)
                          (gx#core-import-module__%
                           _rpath154518_
                           _reload?154519_))
                        _g159782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g159782_))))))
    (define gx#core-read-module
      (lambda (_path154391_)
        (with-catch
         (lambda (_exn154393_)
           (if (and (datum-parsing-exception? _exn154393_)
                    (eq? (datum-parsing-exception-filepos _exn154393_) '0))
               (gx#core-read-module/lang _path154391_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path154391_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g154395154397_)
                      (display-exception _exn154393_ _g154395154397_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path154391_)))))
    (define gx#core-read-module/sexp
      (lambda (_path154254_)
        (let _lp154256_ ((_body154258_ (read-syntax-from-file _path154254_))
                         (_pre154259_ '#f)
                         (_ns154260_ '#f)
                         (_pkg154261_ '#f))
          (let* ((_e154262154286_ _body154258_)
                 (_E154278154308_
                  (lambda ()
                    (let ((_g159783_
                           (if _pkg154261_
                               (values _pre154259_ _ns154260_ _pkg154261_)
                               (gx#core-read-module-package
                                _path154254_
                                _pre154259_
                                _ns154260_))))
                      (begin
                        (let ((_g159784_
                               (if (##values? _g159783_)
                                   (##vector-length _g159783_)
                                   1)))
                          (if (not (##fx= _g159784_ 3))
                              (error "Context expects 3 values" _g159784_)))
                        (let ((_pre154290_ (##vector-ref _g159783_ 0))
                              (_ns154291_ (##vector-ref _g159783_ 1))
                              (_pkg154292_ (##vector-ref _g159783_ 2)))
                          (let* ((_prelude154294_
                                  (if (gx#core-bound-module-prelude?
                                       _pre154290_)
                                      (gx#syntax-local-e__0 _pre154290_)
                                      (if (gx#core-library-module-path?
                                           _pre154290_)
                                          (gx#core-resolve-library-module-path
                                           _pre154290_)
                                          (if (gx#stx-string? _pre154290_)
                                              (gx#core-resolve-module-path__%
                                               _pre154290_
                                               _path154254_)
                                              (gx#stx-e _pre154290_)))))
                                 (_path-id154296_
                                  (gx#core-module-path->namespace
                                   _path154254_))
                                 (_pkg-id154298_
                                  (if _pkg154292_
                                      (string-append
                                       _pkg154292_
                                       '"/"
                                       _path-id154296_)
                                      _path-id154296_))
                                 (_module-id154300_
                                  (string->symbol _pkg-id154298_))
                                 (_module-ns154305_
                                  (if (eq? _ns154291_ '#!void)
                                      '#f
                                      (let ((_$e154302_ _ns154291_))
                                        (if _$e154302_
                                            _$e154302_
                                            _pkg-id154298_)))))
                            (values _prelude154294_
                                    _module-id154300_
                                    _module-ns154305_
                                    _body154258_)))))))
                 (_E154271154337_
                  (lambda ()
                    (if (gx#stx-pair? _e154262154286_)
                        (let ((_e154279154312_ (gx#syntax-e _e154262154286_)))
                          (let ((_hd154280154315_ (##car _e154279154312_))
                                (_tl154281154317_ (##cdr _e154279154312_)))
                            (if (eq? (gx#stx-e _hd154280154315_) 'package:)
                                (if (gx#stx-pair? _tl154281154317_)
                                    (let ((_e154282154320_
                                           (gx#syntax-e _tl154281154317_)))
                                      (let ((_hd154283154323_
                                             (##car _e154282154320_))
                                            (_tl154284154325_
                                             (##cdr _e154282154320_)))
                                        (let* ((_pkg154328_ _hd154283154323_)
                                               (_rest154330_ _tl154284154325_))
                                          (if '#t
                                              (let ((_pkg154335_
                                                     (if (gx#identifier?
                                                          _pkg154328_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg154328_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg154328_)
                         (gx#stx-false? _pkg154328_))
                     (gx#stx-e _pkg154328_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg154328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154256_
                                                 _rest154330_
                                                 _pre154259_
                                                 _ns154260_
                                                 _pkg154335_))
                                              (_E154278154308_)))))
                                    (_E154278154308_))
                                (_E154278154308_))))
                        (_E154278154308_))))
                 (_E154264154363_
                  (lambda ()
                    (if (gx#stx-pair? _e154262154286_)
                        (let ((_e154272154341_ (gx#syntax-e _e154262154286_)))
                          (let ((_hd154273154344_ (##car _e154272154341_))
                                (_tl154274154346_ (##cdr _e154272154341_)))
                            (if (eq? (gx#stx-e _hd154273154344_) 'namespace:)
                                (if (gx#stx-pair? _tl154274154346_)
                                    (let ((_e154275154349_
                                           (gx#syntax-e _tl154274154346_)))
                                      (let ((_hd154276154352_
                                             (##car _e154275154349_))
                                            (_tl154277154354_
                                             (##cdr _e154275154349_)))
                                        (let* ((_ns154357_ _hd154276154352_)
                                               (_rest154359_ _tl154277154354_))
                                          (if '#t
                                              (let ((_ns154361_
                                                     (if (gx#identifier?
                                                          _ns154357_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _ns154357_))
                                                         (if (gx#stx-string?
                                                              _ns154357_)
                                                             (gx#stx-e
                                                              _ns154357_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns154357_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns154357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp154256_
                                                 _rest154359_
                                                 _pre154259_
                                                 _ns154361_
                                                 _pkg154261_))
                                              (_E154271154337_)))))
                                    (_E154271154337_))
                                (_E154271154337_))))
                        (_E154271154337_))))
                 (_E154263154387_
                  (lambda ()
                    (if (gx#stx-pair? _e154262154286_)
                        (let ((_e154265154367_ (gx#syntax-e _e154262154286_)))
                          (let ((_hd154266154370_ (##car _e154265154367_))
                                (_tl154267154372_ (##cdr _e154265154367_)))
                            (if (eq? (gx#stx-e _hd154266154370_) 'prelude:)
                                (if (gx#stx-pair? _tl154267154372_)
                                    (let ((_e154268154375_
                                           (gx#syntax-e _tl154267154372_)))
                                      (let ((_hd154269154378_
                                             (##car _e154268154375_))
                                            (_tl154270154380_
                                             (##cdr _e154268154375_)))
                                        (let* ((_prelude154383_
                                                _hd154269154378_)
                                               (_rest154385_ _tl154270154380_))
                                          (if '#t
                                              (_lp154256_
                                               _rest154385_
                                               _prelude154383_
                                               _ns154260_
                                               _pkg154261_)
                                              (_E154264154363_)))))
                                    (_E154264154363_))
                                (_E154264154363_))))
                        (_E154264154363_)))))
            (_E154263154387_)))))
    (define gx#core-read-module/lang
      (lambda (_path154081_)
        (letrec ((_default-read-module-body154083_
                  (lambda (_inp154246_)
                    (let _lp154248_ ((_body154250_ '()))
                      (let ((_next154252_ (read-syntax _inp154246_)))
                        (if (eof-object? _next154252_)
                            (reverse _body154250_)
                            (_lp154248_ (cons _next154252_ _body154250_)))))))
                 (_read-body154084_
                  (lambda (_inp154165_
                           _pre154166_
                           _ns154167_
                           _pkg154168_
                           _args154169_)
                    (let ((_g159785_
                           (if _pkg154168_
                               (values _pre154166_ _ns154167_ _pkg154168_)
                               (gx#core-read-module-package
                                _path154081_
                                _pre154166_
                                _ns154167_))))
                      (begin
                        (let ((_g159786_
                               (if (##values? _g159785_)
                                   (##vector-length _g159785_)
                                   1)))
                          (if (not (##fx= _g159786_ 3))
                              (error "Context expects 3 values" _g159786_)))
                        (let ((_pre154171_ (##vector-ref _g159785_ 0))
                              (_ns154172_ (##vector-ref _g159785_ 1))
                              (_pkg154173_ (##vector-ref _g159785_ 2)))
                          (let* ((_prelude154175_
                                  (gx#import-module__0 _pre154171_))
                                 (_read-module-body154229_
                                  (let ((_$e154221_
                                         (find (lambda (_e154176154178_)
                                                 (let* ((_g154180154190_
                                                         _e154176154178_)
                                                        (_else154182154198_
                                                         (lambda () '#f))
                                                        (_K154184154202_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g154180154190_
                                                        'gx#module-export::t)
                                                       (let* ((_e154185154205_
                                                               (##unchecked-structure-ref
                                                                _g154180154190_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154186154208_
                                                               (##unchecked-structure-ref
                                                                _g154180154190_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e154187154211_
                                                               (##unchecked-structure-ref
                                                                _g154180154190_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e154187154211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e154188154214_
                            (##unchecked-structure-ref
                             _g154180154190_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g154216154218_)
                              (eq? _g154216154218_ 'read-module-body))
                            _e154188154214_)
                           (_K154184154202_)
                           (_else154182154198_)))
                     (_else154182154198_)))
               (_else154182154198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude154175_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e154221_
                                        ((lambda (_xport154224_)
                                           (let ((_proc154227_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport154224_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc154227_)
                                                 _proc154227_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path154081_
                                                  _pre154171_
                                                  _proc154227_))))
                                         _$e154221_)
                                        _default-read-module-body154083_)))
                                 (_path-id154231_
                                  (gx#core-module-path->namespace
                                   _path154081_))
                                 (_pkg-id154233_
                                  (if _pkg154173_
                                      (string-append
                                       _pkg154173_
                                       '"/"
                                       _path-id154231_)
                                      _path-id154231_))
                                 (_module-id154235_
                                  (string->symbol _pkg-id154233_))
                                 (_module-ns154240_
                                  (let ((_$e154237_ _ns154172_))
                                    (if _$e154237_ _$e154237_ _pkg-id154233_)))
                                 (_body154243_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body154229_ _inp154165_))
                                   gx#current-module-reader-path
                                   _path154081_
                                   gx#current-module-reader-args
                                   _args154169_)))
                            (values _prelude154175_
                                    _module-id154235_
                                    _module-ns154240_
                                    _body154243_)))))))
                 (_string-e154085_
                  (lambda (_obj154162_ _what154163_)
                    (if (string? _obj154162_)
                        _obj154162_
                        (if (symbol? _obj154162_)
                            (symbol->string _obj154162_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what154163_)
                             _path154081_
                             _obj154162_)))))
                 (_read-lang-args154086_
                  (lambda (_inp154117_ _args154118_)
                    (let* ((_args154119154127_ _args154118_)
                           (_else154121154135_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path154081_)))
                           (_K154123154150_
                            (lambda (_args154138_ _prelude154139_)
                              (let* ((_pkg154141_
                                      (pgetq 'package: _args154138_))
                                     (_pkg154143_
                                      (if _pkg154141_
                                          (_string-e154085_
                                           _pkg154141_
                                           '"package")
                                          '#f))
                                     (_ns154145_
                                      (pgetq 'namespace: _args154138_))
                                     (_ns154147_
                                      (if _ns154145_
                                          (_string-e154085_
                                           _ns154145_
                                           '"namespace")
                                          '#f)))
                                (_read-body154084_
                                 _inp154117_
                                 _prelude154139_
                                 _ns154147_
                                 _pkg154143_
                                 _args154138_)))))
                      (if (##pair? _args154119154127_)
                          (let ((_hd154124154153_ (##car _args154119154127_))
                                (_tl154125154155_ (##cdr _args154119154127_)))
                            (let* ((_prelude154158_ _hd154124154153_)
                                   (_args154160_ _tl154125154155_))
                              (_K154123154150_ _args154160_ _prelude154158_)))
                          (_else154121154135_)))))
                 (_read-lang154087_
                  (lambda (_inp154092_)
                    (let* ((_head154094_ (read-line _inp154092_))
                           (_$e154096_ (string-index _head154094_ '#\space)))
                      (if _$e154096_
                          ((lambda (_ix154099_)
                             (let ((_lang154101_
                                    (substring _head154094_ '0 _ix154099_)))
                               (if (equal? _lang154101_ '"#lang")
                                   (let* ((_rest154103_
                                           (substring
                                            _head154094_
                                            (fx+ _ix154099_ '1)
                                            (string-length _head154094_)))
                                          (_args154114_
                                           (with-catch
                                            (lambda (_g154104154106_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path154081_
                                               _g154104154106_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest154103_
                                               (lambda (_g154109154111_)
                                                 (read-all
                                                  _g154109154111_
                                                  read)))))))
                                     (_read-lang-args154086_
                                      _inp154092_
                                      _args154114_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path154081_))))
                           _$e154096_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path154081_)))))
                 (_read-e154088_
                  (lambda (_inp154090_)
                    (if (eq? (peek-char _inp154090_) '#\#)
                        (_read-lang154087_ _inp154090_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path154081_)))))
          (gx#call-with-input-source-file _path154081_ _read-e154088_))))
    (define gx#core-read-module-package
      (lambda (_path154035_ _pre154036_ _ns154037_)
        (letrec ((_string-e154039_
                  (lambda (_e154079_)
                    (if (symbol? _e154079_)
                        (symbol->string _e154079_)
                        (if (string? _e154079_)
                            _e154079_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e154079_))))))
          (let _lp154041_ ((_dir154043_ (path-directory _path154035_))
                           (_pkg-path154044_ '()))
            (let ((_gerbil.pkg154046_ (path-expand '"gerbil.pkg" _dir154043_)))
              (if (file-exists? _gerbil.pkg154046_)
                  (let ((_plist154048_
                         (gx#core-library-package-plist__% _dir154043_ '#t)))
                    (if (null? _plist154048_)
                        (let ((_pkg154050_
                               (if (not (null? _pkg-path154044_))
                                   (string-join _pkg-path154044_ '"/")
                                   '#f)))
                          (values _pre154036_ _ns154037_ _pkg154050_))
                        (if (list? _plist154048_)
                            (let* ((_root154052_
                                    (pgetq 'package: _plist154048_))
                                   (_pkg154056_
                                    (let ((_pkg-path154054_
                                           (if _root154052_
                                               (cons (_string-e154039_
                                                      _root154052_)
                                                     _pkg-path154044_)
                                               _pkg-path154044_)))
                                      (if (not (null? _pkg-path154054_))
                                          (string-join _pkg-path154054_ '"/")
                                          '#f)))
                                   (_ns154063_
                                    (let ((_ns154061_
                                           (let ((_$e154058_ _ns154037_))
                                             (if _$e154058_
                                                 _$e154058_
                                                 (pgetq 'namespace:
                                                        _plist154048_)))))
                                      (if _ns154061_
                                          (_string-e154039_ _ns154061_)
                                          '#f)))
                                   (_pre154068_
                                    (let ((_$e154065_ _pre154036_))
                                      (if _$e154065_
                                          _$e154065_
                                          (pgetq 'prelude: _plist154048_)))))
                              (values _pre154068_ _ns154063_ _pkg154056_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist154048_))))
                  (let ((_dir*154071_
                         (path-strip-trailing-directory-separator
                          _dir154043_)))
                    (if (or (string-empty? _dir*154071_)
                            (equal? _dir154043_ _dir*154071_))
                        (values _pre154036_ _ns154037_ '#f)
                        (let ((_xpath154076_
                               (path-strip-directory _dir*154071_))
                              (_xdir154077_ (path-directory _dir*154071_)))
                          (_lp154041_
                           _xdir154077_
                           (cons _xpath154076_ _pkg-path154044_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path154033_)
        (path-strip-extension (path-strip-directory _path154033_))))
    (define gx#core-module-path->id
      (lambda (_path154031_)
        (string->symbol (gx#core-module-path->namespace _path154031_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path154010_ _rel154011_)
        (let* ((_path154013_ (gx#stx-e _stx-path154010_))
               (_path154015_
                (if (string-empty? (path-extension _path154013_))
                    (string-append _path154013_ '".ss")
                    _path154013_)))
          (gx#core-resolve-path__%
           _path154015_
           (let ((_$e154018_ (gx#stx-source _stx-path154010_)))
             (if _$e154018_ _$e154018_ _rel154011_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path154024_)
        (let ((_rel154026_ '#f))
          (gx#core-resolve-module-path__% _stx-path154024_ _rel154026_))))
    (define gx#core-resolve-module-path
      (lambda _g159788_
        (let ((_g159787_ (##length _g159788_)))
          (cond ((##fx= _g159787_ 1)
                 (apply (lambda (_stx-path154024_)
                          (gx#core-resolve-module-path__0 _stx-path154024_))
                        _g159788_))
                ((##fx= _g159787_ 2)
                 (apply (lambda (_stx-path154028_ _rel154029_)
                          (gx#core-resolve-module-path__%
                           _stx-path154028_
                           _rel154029_))
                        _g159788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g159788_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath153896_)
        (let* ((_spath153898_ (symbol->string (gx#stx-e _libpath153896_)))
               (_spath153900_
                (substring _spath153898_ '1 (string-length _spath153898_)))
               (_ext153902_ (path-extension _spath153900_))
               (_ssi153904_
                (if (string-empty? _ext153902_)
                    (string-append _spath153900_ '".ssi")
                    (string-append
                     (path-strip-extension _spath153900_)
                     '".ssi")))
               (_srcs153908_
                (if (string-empty? _ext153902_)
                    (map (lambda (_ext153906_)
                           (string-append _spath153900_ _ext153906_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath153900_ '()))))
          (let _lp153911_ ((_rest153913_
                            (gx#current-expander-module-library-path)))
            (let* ((_rest153914153923_ _rest153913_)
                   (_E153917153927_
                    (lambda ()
                      (error '"No clause matching" _rest153914153923_))))
              (let ((_K153919153997_
                     (lambda (_rest153938_ _dir153939_)
                       (letrec ((_resolve153941_
                                 (lambda (_ssi153953_ _srcs153954_)
                                   (let ((_compiled-path153956_
                                          (path-expand
                                           _ssi153953_
                                           _dir153939_)))
                                     (if (file-exists? _compiled-path153956_)
                                         (path-normalize _compiled-path153956_)
                                         (let _lpr153958_ ((_rest-src153960_
                                                            _srcs153954_))
                                           (let* ((_rest-src153961153969_
                                                   _rest-src153960_)
                                                  (_else153963153977_
                                                   (lambda ()
                                                     (_lp153911_
                                                      _rest153938_)))
                                                  (_K153965153985_
                                                   (lambda (_rest-src153980_
                                                            _src153981_)
                                                     (let ((_src-path153983_
                                                            (path-expand
                                                             _src153981_
                                                             _dir153939_)))
                                                       (if (file-exists?
                                                            _src-path153983_)
                                                           (path-normalize
                                                            _src-path153983_)
                                                           (_lpr153958_
                                                            _rest-src153980_))))))
                                             (if (##pair? _rest-src153961153969_)
                                                 (let ((_hd153966153988_
                                                        (##car _rest-src153961153969_))
                                                       (_tl153967153990_
                                                        (##cdr _rest-src153961153969_)))
                                                   (let* ((_src153993_
                                                           _hd153966153988_)
                                                          (_rest-src153995_
                                                           _tl153967153990_))
                                                     (_K153965153985_
                                                      _rest-src153995_
                                                      _src153993_)))
                                                 (_else153963153977_)))))))))
                         (let ((_$e153943_
                                (gx#core-library-package-path-prefix
                                 _dir153939_)))
                           (if _$e153943_
                               ((lambda (_prefix153946_)
                                  (if (string-prefix?
                                       _prefix153946_
                                       _spath153900_)
                                      (let ((_ssi153950_
                                             (substring
                                              _ssi153904_
                                              (string-length _prefix153946_)
                                              (string-length _ssi153904_)))
                                            (_srcs153951_
                                             (map (lambda (_src153948_)
                                                    (substring
                                                     _src153948_
                                                     (string-length
                                                      _prefix153946_)
                                                     (string-length
                                                      _src153948_)))
                                                  _srcs153908_)))
                                        (_resolve153941_
                                         _ssi153950_
                                         _srcs153951_))
                                      (_lp153911_ _rest153938_)))
                                _$e153943_)
                               (_resolve153941_ _ssi153904_ _srcs153908_))))))
                    (_K153918153932_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath153896_))))
                (let ((_try-match153916153935_
                       (lambda ()
                         (if (##null? _rest153914153923_)
                             (_K153918153932_)
                             (_E153917153927_)))))
                  (if (##pair? _rest153914153923_)
                      (let ((_tl153921154002_ (##cdr _rest153914153923_))
                            (_hd153920154000_ (##car _rest153914153923_)))
                        (let ((_dir154005_ _hd153920154000_)
                              (_rest154007_ _tl153921154002_))
                          (_K153919153997_ _rest154007_ _dir154005_)))
                      (_try-match153916153935_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath153869_)
        (letrec ((_resolve153871_
                  (lambda (_path153888_ _base153889_)
                    (let ((_$e153891_ (string-rindex _base153889_ '#\/)))
                      (if _$e153891_
                          ((lambda (_idx153894_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base153889_ '0 _idx153894_)
                                '"/"
                                _path153888_))))
                           _$e153891_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path153888_))))))))
          (let ((_spath153873_ (symbol->string (gx#stx-e _modpath153869_)))
                (_mod153874_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod153874_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath153869_))
            (let ((_mpath153876_
                   (symbol->string
                    (##structure-ref
                     _mod153874_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp153878_ ((_spath153880_ _spath153873_)
                               (_mpath153881_ _mpath153876_))
                (if (string-prefix? '"../" _spath153880_)
                    (let ((_$e153883_ (string-rindex _mpath153881_ '#\/)))
                      (if _$e153883_
                          ((lambda (_idx153886_)
                             (_lp153878_
                              (substring
                               _spath153880_
                               '3
                               (string-length _spath153880_))
                              (substring _mpath153881_ '0 _idx153886_)))
                           _$e153883_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath153869_)))
                    (if (string-prefix? '"./" _spath153880_)
                        (_lp153878_
                         (substring
                          _spath153880_
                          '2
                          (string-length _spath153880_))
                         _mpath153881_)
                        (_resolve153871_ _spath153880_ _mpath153881_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir153862_)
        (let ((_$e153864_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir153862_))))
          (if _$e153864_
              ((lambda (_pkg153867_)
                 (string-append (symbol->string _pkg153867_) '"/"))
               _$e153864_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir153834_ _exists?153835_)
        (let* ((_cache153837_ (gx#core-library-package-cache))
               (_$e153839_ (table-ref _cache153837_ _dir153834_ '#f)))
          (if _$e153839_
              (values _$e153839_)
              (let* ((_gerbil.pkg153842_
                      (path-expand '"gerbil.pkg" _dir153834_))
                     (_plist153849_
                      (if (or _exists?153835_
                              (file-exists? _gerbil.pkg153842_))
                          (let ((_e153847_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg153842_
                                  read)))
                            (if (eof-object? _e153847_)
                                '()
                                (if (list? _e153847_)
                                    _e153847_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg153842_
                                     _e153847_))))
                          '())))
                (table-set! _cache153837_ _dir153834_ _plist153849_)
                _plist153849_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir153855_)
        (let ((_exists?153857_ '#f))
          (gx#core-library-package-plist__% _dir153855_ _exists?153857_))))
    (define gx#core-library-package-plist
      (lambda _g159790_
        (let ((_g159789_ (##length _g159790_)))
          (cond ((##fx= _g159789_ 1)
                 (apply (lambda (_dir153855_)
                          (gx#core-library-package-plist__0 _dir153855_))
                        _g159790_))
                ((##fx= _g159789_ 2)
                 (apply (lambda (_dir153859_ _exists?153860_)
                          (gx#core-library-package-plist__%
                           _dir153859_
                           _exists?153860_))
                        _g159790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g159790_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e153828_ (gx#current-expander-module-library-package-cache)))
          (if _$e153828_
              (values _$e153828_)
              (let ((_cache153831_ (make-table)))
                (gx#current-expander-module-library-package-cache
                 _cache153831_)
                _cache153831_)))))
    (define gx#core-library-module-path?
      (lambda (_stx153825_) (gx#core-special-module-path? _stx153825_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx153823_) (gx#core-special-module-path? _stx153823_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx153818_ _char153819_)
        (if (gx#identifier? _stx153818_)
            (if (interned-symbol? (gx#stx-e _stx153818_))
                (let ((_str153821_ (symbol->string (gx#stx-e _stx153818_))))
                  (if (fx> (string-length _str153821_) '1)
                      (eq? (string-ref _str153821_ '0) _char153819_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx153812_)
        (gx#core-bound-identifier?__%
         _stx153812_
         (lambda (_g153813153815_)
           (gx#expander-binding?__% _g153813153815_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx153806_)
        (gx#core-bound-identifier?__%
         _stx153806_
         (lambda (_g153807153809_)
           (gx#expander-binding?__% _g153807153809_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx153793_)
        (letrec ((_module-prelude?153795_
                  (lambda (_e153801_)
                    (let ((_$e153803_
                           (##structure-instance-of?
                            _e153801_
                            'gx#module-context::t)))
                      (if _$e153803_
                          _$e153803_
                          (##structure-instance-of?
                           _e153801_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx153793_
           (lambda (_g153796153798_)
             (gx#expander-binding?__%
              _g153796153798_
              _module-prelude?153795_))))))
    (define gx#core-bind-import!__%
      (lambda (_in153723_ _ctx153724_ _force-weak?153725_)
        (let* ((_in153726153735_ _in153723_)
               (_E153728153739_
                (lambda () (error '"No clause matching" _in153726153735_)))
               (_K153729153752_
                (lambda (_weak?153742_ _phi153743_ _key153744_ _source153745_)
                  (gx#core-bind!__%
                   _key153744_
                   (let ((_e153747_
                          (gx#core-resolve-module-export _source153745_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref
                       _e153747_
                       '1
                       gx#binding::t
                       '#f)
                      _key153744_
                      _phi153743_
                      _e153747_
                      (##unchecked-structure-ref
                       _source153745_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e153749_ _force-weak?153725_))
                        (if _$e153749_ _$e153749_ _weak?153742_))))
                   gx#core-context-rebind?
                   _phi153743_
                   _ctx153724_))))
          (if (##structure-direct-instance-of?
               _in153726153735_
               'gx#module-import::t)
              (let* ((_e153730153755_
                      (##unchecked-structure-ref
                       _in153726153735_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source153758_ _e153730153755_)
                     (_e153731153760_
                      (##unchecked-structure-ref
                       _in153726153735_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key153763_ _e153731153760_)
                     (_e153732153765_
                      (##unchecked-structure-ref
                       _in153726153735_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi153768_ _e153732153765_)
                     (_e153733153770_
                      (##unchecked-structure-ref
                       _in153726153735_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?153773_ _e153733153770_))
                (_K153729153752_
                 _weak?153773_
                 _phi153768_
                 _key153763_
                 _source153758_))
              (_E153728153739_)))))
    (define gx#core-bind-import!__0
      (lambda (_in153778_)
        (let* ((_ctx153780_ (gx#current-expander-context))
               (_force-weak?153782_ '#f))
          (gx#core-bind-import!__%
           _in153778_
           _ctx153780_
           _force-weak?153782_))))
    (define gx#core-bind-import!__1
      (lambda (_in153784_ _ctx153785_)
        (let ((_force-weak?153787_ '#f))
          (gx#core-bind-import!__%
           _in153784_
           _ctx153785_
           _force-weak?153787_))))
    (define gx#core-bind-import!
      (lambda _g159792_
        (let ((_g159791_ (##length _g159792_)))
          (cond ((##fx= _g159791_ 1)
                 (apply (lambda (_in153778_)
                          (gx#core-bind-import!__0 _in153778_))
                        _g159792_))
                ((##fx= _g159791_ 2)
                 (apply (lambda (_in153784_ _ctx153785_)
                          (gx#core-bind-import!__1 _in153784_ _ctx153785_))
                        _g159792_))
                ((##fx= _g159791_ 3)
                 (apply (lambda (_in153789_ _ctx153790_ _force-weak?153791_)
                          (gx#core-bind-import!__%
                           _in153789_
                           _ctx153790_
                           _force-weak?153791_))
                        _g159792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g159792_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in153709_ _ctx153710_)
        (gx#core-bind-import!__% _in153709_ _ctx153710_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in153715_)
        (let ((_ctx153717_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in153715_ _ctx153717_))))
    (define gx#core-bind-weak-import!
      (lambda _g159794_
        (let ((_g159793_ (##length _g159794_)))
          (cond ((##fx= _g159793_ 1)
                 (apply (lambda (_in153715_)
                          (gx#core-bind-weak-import!__0 _in153715_))
                        _g159794_))
                ((##fx= _g159793_ 2)
                 (apply (lambda (_in153719_ _ctx153720_)
                          (gx#core-bind-weak-import!__%
                           _in153719_
                           _ctx153720_))
                        _g159794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g159794_))))))
    (define gx#core-resolve-module-export
      (lambda (_out153600_)
        (letrec ((_subst153602_
                  (lambda (_key153648_)
                    (let* ((_key153649153657_ _key153648_)
                           (_else153651153665_ (lambda () _key153648_))
                           (_K153653153696_
                            (lambda (_mark153668_ _id153669_)
                              (let* ((_mark153670153676_ _mark153668_)
                                     (_E153672153680_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark153670153676_)))
                                     (_K153673153688_
                                      (lambda (_subst153683_)
                                        (let ((_$e153685_
                                               (if _subst153683_
                                                   (table-ref
                                                    _subst153683_
                                                    _id153669_
                                                    '#f)
                                                   '#f)))
                                          (if _$e153685_
                                              _$e153685_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key153648_))))))
                                (if (##structure-instance-of?
                                     _mark153670153676_
                                     'gx#expander-mark::t)
                                    (let* ((_e153674153691_
                                            (##unchecked-structure-ref
                                             _mark153670153676_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst153694_ _e153674153691_))
                                      (_K153673153688_ _subst153694_))
                                    (_E153672153680_))))))
                      (if (##pair? _key153649153657_)
                          (let ((_hd153654153699_ (##car _key153649153657_))
                                (_tl153655153701_ (##cdr _key153649153657_)))
                            (let* ((_id153704_ _hd153654153699_)
                                   (_mark153706_ _tl153655153701_))
                              (_K153653153696_ _mark153706_ _id153704_)))
                          (_else153651153665_))))))
          (let* ((_out153603153613_ _out153600_)
                 (_E153605153617_
                  (lambda () (error '"No clause matching" _out153603153613_)))
                 (_K153606153624_
                  (lambda (_phi153620_ _key153621_ _ctx153622_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx153622_ _phi153620_)
                     (_subst153602_ _key153621_)))))
            (if (##structure-direct-instance-of?
                 _out153603153613_
                 'gx#module-export::t)
                (let* ((_e153607153627_
                        (##unchecked-structure-ref
                         _out153603153613_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx153630_ _e153607153627_)
                       (_e153608153632_
                        (##unchecked-structure-ref
                         _out153603153613_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key153635_ _e153608153632_)
                       (_e153609153637_
                        (##unchecked-structure-ref
                         _out153603153613_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi153640_ _e153609153637_)
                       (_e153610153642_
                        (##unchecked-structure-ref
                         _out153603153613_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e153611153645_
                        (##unchecked-structure-ref
                         _out153603153613_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K153606153624_ _phi153640_ _key153635_ _ctx153630_))
                (_E153605153617_))))))
    (define gx#core-module-export->import__%
      (lambda (_out153525_ _rename153526_ _dphi153527_)
        (let* ((_out153528153538_ _out153525_)
               (_E153530153542_
                (lambda () (error '"No clause matching" _out153528153538_)))
               (_K153531153554_
                (lambda (_weak?153545_
                         _name153546_
                         _phi153547_
                         _key153548_
                         _ctx153549_)
                  (##structure
                   gx#module-import::t
                   _out153525_
                   (let ((_$e153551_ _rename153526_))
                     (if _$e153551_ _$e153551_ _name153546_))
                   (fx+ _phi153547_ _dphi153527_)
                   _weak?153545_))))
          (if (##structure-direct-instance-of?
               _out153528153538_
               'gx#module-export::t)
              (let* ((_e153532153557_
                      (##unchecked-structure-ref
                       _out153528153538_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx153560_ _e153532153557_)
                     (_e153533153562_
                      (##unchecked-structure-ref
                       _out153528153538_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key153565_ _e153533153562_)
                     (_e153534153567_
                      (##unchecked-structure-ref
                       _out153528153538_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi153570_ _e153534153567_)
                     (_e153535153572_
                      (##unchecked-structure-ref
                       _out153528153538_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name153575_ _e153535153572_)
                     (_e153536153577_
                      (##unchecked-structure-ref
                       _out153528153538_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?153580_ _e153536153577_))
                (_K153531153554_
                 _weak?153580_
                 _name153575_
                 _phi153570_
                 _key153565_
                 _ctx153560_))
              (_E153530153542_)))))
    (define gx#core-module-export->import__0
      (lambda (_out153585_)
        (let* ((_rename153587_ '#f) (_dphi153589_ '0))
          (gx#core-module-export->import__%
           _out153585_
           _rename153587_
           _dphi153589_))))
    (define gx#core-module-export->import__1
      (lambda (_out153591_ _rename153592_)
        (let ((_dphi153594_ '0))
          (gx#core-module-export->import__%
           _out153591_
           _rename153592_
           _dphi153594_))))
    (define gx#core-module-export->import
      (lambda _g159796_
        (let ((_g159795_ (##length _g159796_)))
          (cond ((##fx= _g159795_ 1)
                 (apply (lambda (_out153585_)
                          (gx#core-module-export->import__0 _out153585_))
                        _g159796_))
                ((##fx= _g159795_ 2)
                 (apply (lambda (_out153591_ _rename153592_)
                          (gx#core-module-export->import__1
                           _out153591_
                           _rename153592_))
                        _g159796_))
                ((##fx= _g159795_ 3)
                 (apply (lambda (_out153596_ _rename153597_ _dphi153598_)
                          (gx#core-module-export->import__%
                           _out153596_
                           _rename153597_
                           _dphi153598_))
                        _g159796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g159796_))))))
    (define gx#core-expand-module%
      (lambda (_stx153453_)
        (letrec ((_make-context153455_
                  (lambda (_id153506_)
                    (let* ((_super153508_ (gx#current-expander-context))
                           (_bind-id153510_ (gx#stx-e _id153506_))
                           (_mod-id153512_
                            (if (##structure-instance-of?
                                 _super153508_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super153508_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id153510_)
                                _bind-id153510_))
                           (_ns153514_ (symbol->string _mod-id153512_))
                           (_path153521_
                            (if (##structure-instance-of?
                                 _super153508_
                                 'gx#module-context::t)
                                (let ((_path153516_
                                       (##unchecked-structure-ref
                                        _super153508_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path153516_)
                                          (null? _path153516_))
                                      (cons _bind-id153510_ _path153516_)
                                      (if (not _path153516_)
                                          _bind-id153510_
                                          (cons _bind-id153510_
                                                (cons _path153516_ '())))))
                                _bind-id153510_)))
                      (let ((__obj159772
                             (make-object gx#module-context::t '12)))
                        (gx#module-context:::init!
                         __obj159772
                         _mod-id153512_
                         _super153508_
                         _ns153514_
                         _path153521_)
                        __obj159772)))))
          (let* ((_e153456153466_ _stx153453_)
                 (_E153458153470_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153456153466_)))
                 (_E153457153502_
                  (lambda ()
                    (if (gx#stx-pair? _e153456153466_)
                        (let ((_e153459153474_ (gx#syntax-e _e153456153466_)))
                          (let ((_hd153460153477_ (##car _e153459153474_))
                                (_tl153461153479_ (##cdr _e153459153474_)))
                            (if (gx#stx-pair? _tl153461153479_)
                                (let ((_e153462153482_
                                       (gx#syntax-e _tl153461153479_)))
                                  (let ((_hd153463153485_
                                         (##car _e153462153482_))
                                        (_tl153464153487_
                                         (##cdr _e153462153482_)))
                                    (let* ((_id153490_ _hd153463153485_)
                                           (_body153492_ _tl153464153487_))
                                      (if (and (gx#identifier? _id153490_)
                                               (gx#stx-list? _body153492_))
                                          (let* ((_ctx153494_
                                                  (_make-context153455_
                                                   _id153490_))
                                                 (_body153496_
                                                  (gx#core-expand-module-begin
                                                   _body153492_
                                                   _ctx153494_))
                                                 (_body153498_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body153496_)
                                                   (gx#stx-source
                                                    _stx153453_))))
                                            (##unchecked-structure-set!
                                             _ctx153494_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax*
                                                 _body153498_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx153494_
                                             _body153498_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id153490_
                                             _ctx153494_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id153490_)
                                              _body153498_)
                                             (gx#stx-source _stx153453_)))
                                          (_E153458153470_)))))
                                (_E153458153470_))))
                        (_E153458153470_)))))
            (_E153457153502_)))))
    (define gx#core-expand-module-begin
      (lambda (_body153419_ _ctx153420_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx153423_
                   (gx#core-expand-head (cons '%%begin-module _body153419_)))
                  (_e153424153431_ _stx153423_)
                  (_E153426153435_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx153423_)))
                  (_E153425153449_
                   (lambda ()
                     (if (gx#stx-pair? _e153424153431_)
                         (let ((_e153427153439_ (gx#syntax-e _e153424153431_)))
                           (let ((_hd153428153442_ (##car _e153427153439_))
                                 (_tl153429153444_ (##cdr _e153427153439_)))
                             (if (and (gx#identifier? _hd153428153442_)
                                      (gx#core-identifier=?
                                       _hd153428153442_
                                       '%#begin-module))
                                 (let ((_body153447_ _tl153429153444_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx153423_)
                                           _body153447_
                                           (gx#core-expand-module-body
                                            _body153447_))
                                       (_E153426153435_)))
                                 (_E153426153435_))))
                         (_E153426153435_)))))
             (_E153425153449_)))
         gx#current-expander-context
         _ctx153420_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body153215_)
        (letrec ((_expand-special153217_
                  (lambda (_hd153346_ _K153347_ _rest153348_ _r153349_)
                    (let* ((_e153350153367_ _hd153346_)
                           (_E153362153371_
                            (lambda ()
                              (_K153347_
                               _rest153348_
                               (cons (gx#core-expand-top _hd153346_)
                                     _r153349_))))
                           (_E153352153383_
                            (lambda ()
                              (if (gx#stx-pair? _e153350153367_)
                                  (let ((_e153363153375_
                                         (gx#syntax-e _e153350153367_)))
                                    (let ((_hd153364153378_
                                           (##car _e153363153375_))
                                          (_tl153365153380_
                                           (##cdr _e153363153375_)))
                                      (if (and (gx#identifier?
                                                _hd153364153378_)
                                               (gx#core-identifier=?
                                                _hd153364153378_
                                                '%#export))
                                          (if '#t
                                              (_K153347_
                                               _rest153348_
                                               (cons _hd153346_ _r153349_))
                                              (_E153362153371_))
                                          (_E153362153371_))))
                                  (_E153362153371_))))
                           (_E153351153415_
                            (lambda ()
                              (if (gx#stx-pair? _e153350153367_)
                                  (let ((_e153353153387_
                                         (gx#syntax-e _e153350153367_)))
                                    (let ((_hd153354153390_
                                           (##car _e153353153387_))
                                          (_tl153355153392_
                                           (##cdr _e153353153387_)))
                                      (if (and (gx#identifier?
                                                _hd153354153390_)
                                               (gx#core-identifier=?
                                                _hd153354153390_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl153355153392_)
                                              (let ((_e153356153395_
                                                     (gx#syntax-e
                                                      _tl153355153392_)))
                                                (let ((_hd153357153398_
                                                       (##car _e153356153395_))
                                                      (_tl153358153400_
                                                       (##cdr _e153356153395_)))
                                                  (let ((_hd-bind153403_
                                                         _hd153357153398_))
                                                    (if (gx#stx-pair?
                                                         _tl153358153400_)
                                                        (let ((_e153359153405_
                                                               (gx#syntax-e
                                                                _tl153358153400_)))
                                                          (let ((_hd153360153408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e153359153405_))
                        (_tl153361153410_ (##cdr _e153359153405_)))
                    (let ((_expr153413_ _hd153360153408_))
                      (if (gx#stx-null? _tl153361153410_)
                          (if (gx#core-bind-values? _hd-bind153403_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind153403_)
                                (_K153347_
                                 _rest153348_
                                 (cons _hd153346_ _r153349_)))
                              (_E153352153383_))
                          (_E153352153383_)))))
                (_E153352153383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153352153383_))
                                          (_E153352153383_))))
                                  (_E153352153383_)))))
                      (_E153351153415_))))
                 (_expand-body153218_
                  (lambda (_rbody153220_)
                    (let _lp153222_ ((_rest153224_ _rbody153220_)
                                     (_body153225_ '()))
                      (let* ((_rest153226153234_ _rest153224_)
                             (_else153228153242_ (lambda () _body153225_))
                             (_K153230153334_
                              (lambda (_rest153245_ _hd153246_)
                                (let* ((_e153247153268_ _hd153246_)
                                       (_E153263153272_
                                        (lambda ()
                                          (_lp153222_
                                           _rest153245_
                                           (cons (gx#core-expand-expression
                                                  _hd153246_)
                                                 _body153225_))))
                                       (_E153259153286_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153247153268_)
                                              (let ((_e153264153276_
                                                     (gx#syntax-e
                                                      _e153247153268_)))
                                                (let ((_hd153265153279_
                                                       (##car _e153264153276_))
                                                      (_tl153266153281_
                                                       (##cdr _e153264153276_)))
                                                  (let ((_form153284_
                                                         _hd153265153279_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form153284_
                                                         gx#special-form-binding?)
                                                        (_lp153222_
                                                         _rest153245_
                                                         (cons _hd153246_
                                                               _body153225_))
                                                        (_E153263153272_)))))
                                              (_E153263153272_))))
                                       (_E153249153298_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153247153268_)
                                              (let ((_e153260153290_
                                                     (gx#syntax-e
                                                      _e153247153268_)))
                                                (let ((_hd153261153293_
                                                       (##car _e153260153290_))
                                                      (_tl153262153295_
                                                       (##cdr _e153260153290_)))
                                                  (if (and (gx#identifier?
                                                            _hd153261153293_)
                                                           (gx#core-identifier=?
                                                            _hd153261153293_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp153222_
                                                           _rest153245_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd153246_)
                         _body153225_))
                  (_E153259153286_))
              (_E153259153286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153259153286_))))
                                       (_E153248153330_
                                        (lambda ()
                                          (if (gx#stx-pair? _e153247153268_)
                                              (let ((_e153250153302_
                                                     (gx#syntax-e
                                                      _e153247153268_)))
                                                (let ((_hd153251153305_
                                                       (##car _e153250153302_))
                                                      (_tl153252153307_
                                                       (##cdr _e153250153302_)))
                                                  (if (and (gx#identifier?
                                                            _hd153251153305_)
                                                           (gx#core-identifier=?
                                                            _hd153251153305_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl153252153307_)
                                                          (let ((_e153253153310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl153252153307_)))
                    (let ((_hd153254153313_ (##car _e153253153310_))
                          (_tl153255153315_ (##cdr _e153253153310_)))
                      (let ((_hd-bind153318_ _hd153254153313_))
                        (if (gx#stx-pair? _tl153255153315_)
                            (let ((_e153256153320_
                                   (gx#syntax-e _tl153255153315_)))
                              (let ((_hd153257153323_ (##car _e153256153320_))
                                    (_tl153258153325_ (##cdr _e153256153320_)))
                                (let ((_expr153328_ _hd153257153323_))
                                  (if (gx#stx-null? _tl153258153325_)
                                      (if '#t
                                          (_lp153222_
                                           _rest153245_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind153318_)
                                                   (gx#core-expand-expression
                                                    _expr153328_))
                                                  (gx#stx-source _hd153246_))
                                                 _body153225_))
                                          (_E153249153298_))
                                      (_E153249153298_)))))
                            (_E153249153298_)))))
                  (_E153249153298_))
              (_E153249153298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153249153298_)))))
                                  (_E153248153330_)))))
                        (if (##pair? _rest153226153234_)
                            (let ((_hd153231153337_ (##car _rest153226153234_))
                                  (_tl153232153339_
                                   (##cdr _rest153226153234_)))
                              (let* ((_hd153342_ _hd153231153337_)
                                     (_rest153344_ _tl153232153339_))
                                (_K153230153334_ _rest153344_ _hd153342_)))
                            (_else153228153242_)))))))
          (_expand-body153218_
           (gx#core-expand-block__%
            (cons '%#begin-module _body153215_)
            _expand-special153217_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx153058_
               _expanded?153059_
               _method153060_
               _current-phi153061_
               _expand1153062_)
        (letrec ((_K153064_
                  (lambda (_rest153182_ _r153183_)
                    (let* ((_e153184153191_ _rest153182_)
                           (_E153186153195_ (lambda () _r153183_))
                           (_E153185153211_
                            (lambda ()
                              (if (gx#stx-pair? _e153184153191_)
                                  (let ((_e153187153199_
                                         (gx#syntax-e _e153184153191_)))
                                    (let ((_hd153188153202_
                                           (##car _e153187153199_))
                                          (_tl153189153204_
                                           (##cdr _e153187153199_)))
                                      (let* ((_hd153207_ _hd153188153202_)
                                             (_rest153209_ _tl153189153204_))
                                        (if '#t
                                            (_step153065_
                                             _hd153207_
                                             _rest153209_
                                             _r153183_)
                                            (_E153186153195_)))))
                                  (_E153186153195_)))))
                      (_E153185153211_))))
                 (_step153065_
                  (lambda (_hd153096_ _rest153097_ _r153098_)
                    (let* ((_e153099153117_ _hd153096_)
                           (_E153112153121_
                            (lambda ()
                              (if (_expanded?153059_ (gx#stx-e _hd153096_))
                                  (_K153064_
                                   _rest153097_
                                   (cons (gx#stx-e _hd153096_) _r153098_))
                                  (_expand1153062_
                                   _hd153096_
                                   _K153064_
                                   _rest153097_
                                   _r153098_))))
                           (_E153108153137_
                            (lambda ()
                              (if (gx#stx-pair? _e153099153117_)
                                  (let ((_e153113153125_
                                         (gx#syntax-e _e153099153117_)))
                                    (let ((_hd153114153128_
                                           (##car _e153113153125_))
                                          (_tl153115153130_
                                           (##cdr _e153113153125_)))
                                      (let* ((_macro153133_ _hd153114153128_)
                                             (_body153135_ _tl153115153130_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro153133_
                                             gx#syntax-binding?)
                                            (_K153064_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro153133_)
                                                    _hd153096_
                                                    _method153060_)
                                                   _rest153097_)
                                             _r153098_)
                                            (_E153112153121_)))))
                                  (_E153112153121_))))
                           (_E153101153151_
                            (lambda ()
                              (if (gx#stx-pair? _e153099153117_)
                                  (let ((_e153109153141_
                                         (gx#syntax-e _e153099153117_)))
                                    (let ((_hd153110153144_
                                           (##car _e153109153141_))
                                          (_tl153111153146_
                                           (##cdr _e153109153141_)))
                                      (if (eq? (gx#stx-e _hd153110153144_)
                                               'begin:)
                                          (let ((_body153149_
                                                 _tl153111153146_))
                                            (if '#t
                                                (_K153064_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest153097_
                                                  _body153149_)
                                                 _r153098_)
                                                (_E153108153137_)))
                                          (_E153108153137_))))
                                  (_E153108153137_))))
                           (_E153100153178_
                            (lambda ()
                              (if (gx#stx-pair? _e153099153117_)
                                  (let ((_e153102153155_
                                         (gx#syntax-e _e153099153117_)))
                                    (let ((_hd153103153158_
                                           (##car _e153102153155_))
                                          (_tl153104153160_
                                           (##cdr _e153102153155_)))
                                      (if (eq? (gx#stx-e _hd153103153158_)
                                               'phi:)
                                          (if (gx#stx-pair? _tl153104153160_)
                                              (let ((_e153105153163_
                                                     (gx#syntax-e
                                                      _tl153104153160_)))
                                                (let ((_hd153106153166_
                                                       (##car _e153105153163_))
                                                      (_tl153107153168_
                                                       (##cdr _e153105153163_)))
                                                  (let* ((_dphi153171_
                                                          _hd153106153166_)
                                                         (_body153173_
                                                          _tl153107153168_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi153171_)
                                                        (let ((_rbody153176_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K153064_ _body153173_ '()))
                        _current-phi153061_
                        (fx+ (gx#stx-e _dphi153171_) (_current-phi153061_)))))
                  (_K153064_
                   _rest153097_
                   (foldr1 cons _r153098_ _rbody153176_)))
                (_E153101153151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E153101153151_))
                                          (_E153101153151_))))
                                  (_E153101153151_)))))
                      (_E153100153178_)))))
          (let* ((_e153066153073_ _stx153058_)
                 (_E153068153077_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e153066153073_)))
                 (_E153067153092_
                  (lambda ()
                    (if (gx#stx-pair? _e153066153073_)
                        (let ((_e153069153081_ (gx#syntax-e _e153066153073_)))
                          (let ((_hd153070153084_ (##car _e153069153081_))
                                (_tl153071153086_ (##cdr _e153069153081_)))
                            (let ((_body153089_ _tl153071153086_))
                              (if '#t
                                  (if (_current-phi153061_)
                                      (_K153064_ _body153089_ '())
                                      (call-with-parameters
                                       (lambda () (_K153064_ _body153089_ '()))
                                       _current-phi153061_
                                       (gx#current-expander-phi)))
                                  (_E153068153077_)))))
                        (_E153068153077_)))))
            (_E153067153092_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx152725_ _internal-expand?152726_)
        (letrec ((_expand1152728_
                  (lambda (_hd153038_ _K153039_ _rest153040_ _r153041_)
                    (if (gx#core-bound-module? _hd153038_)
                        (_import1152729_
                         (gx#syntax-local-e__0 _hd153038_)
                         _K153039_
                         _rest153040_
                         _r153041_)
                        (if (gx#core-library-module-path? _hd153038_)
                            (_import1152729_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd153038_))
                             _K153039_
                             _rest153040_
                             _r153041_)
                            (if (gx#core-library-relative-module-path?
                                 _hd153038_)
                                (_import1152729_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd153038_))
                                 _K153039_
                                 _rest153040_
                                 _r153041_)
                                (let ((_e153043_ (gx#stx-e _hd153038_)))
                                  (if (pair? _e153043_)
                                      (let ((_$e153045_
                                             (gx#stx-e (car _e153043_))))
                                        (if (eq? 'spec: _$e153045_)
                                            (_import-spec152732_
                                             _hd153038_
                                             _K153039_
                                             _rest153040_
                                             _r153041_)
                                            (if (eq? 'in: _$e153045_)
                                                (_import-submodule152730_
                                                 _hd153038_
                                                 _K153039_
                                                 _rest153040_
                                                 _r153041_)
                                                (if (eq? 'runtime: _$e153045_)
                                                    (_import-runtime152731_
                                                     _hd153038_
                                                     _K153039_
                                                     _rest153040_
                                                     _r153041_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx152725_
                                                     _hd153038_)))))
                                      (if (string? _e153043_)
                                          (_import1152729_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd153038_
                                             (gx#stx-source _stx152725_)))
                                           _K153039_
                                           _rest153040_
                                           _r153041_)
                                          (if (##structure-instance-of?
                                               _e153043_
                                               'gx#module-context::t)
                                              (_K153039_
                                               _rest153040_
                                               (cons _e153043_ _r153041_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx152725_
                                               _hd153038_))))))))))
                 (_import1152729_
                  (lambda (_ctx153027_ _K153028_ _rest153029_ _r153030_)
                    (let ((_dphi153032_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K153028_
                       _rest153029_
                       (cons (##structure
                              gx#import-set::t
                              _ctx153027_
                              _dphi153032_
                              (map (lambda (_g153033153035_)
                                     (gx#core-module-export->import__%
                                      _g153033153035_
                                      '#f
                                      _dphi153032_))
                                   (##unchecked-structure-ref
                                    _ctx153027_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r153030_)))))
                 (_import-submodule152730_
                  (lambda (_hd152994_ _K152995_ _rest152996_ _r152997_)
                    (let* ((_e152998153005_ _hd152994_)
                           (_E153000153009_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152998153005_)))
                           (_E152999153023_
                            (lambda ()
                              (if (gx#stx-pair? _e152998153005_)
                                  (let ((_e153001153013_
                                         (gx#syntax-e _e152998153005_)))
                                    (let ((_hd153002153016_
                                           (##car _e153001153013_))
                                          (_tl153003153018_
                                           (##cdr _e153001153013_)))
                                      (let ((_spath153021_ _tl153003153018_))
                                        (if '#t
                                            (_import1152729_
                                             (_import-spec-source152733_
                                              _spath153021_)
                                             _K152995_
                                             _rest152996_
                                             _r152997_)
                                            (_E153000153009_)))))
                                  (_E153000153009_)))))
                      (_E152999153023_))))
                 (_import-runtime152731_
                  (lambda (_hd152961_ _K152962_ _rest152963_ _r152964_)
                    (let* ((_e152965152972_ _hd152961_)
                           (_E152967152976_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152965152972_)))
                           (_E152966152990_
                            (lambda ()
                              (if (gx#stx-pair? _e152965152972_)
                                  (let ((_e152968152980_
                                         (gx#syntax-e _e152965152972_)))
                                    (let ((_hd152969152983_
                                           (##car _e152968152980_))
                                          (_tl152970152985_
                                           (##cdr _e152968152980_)))
                                      (let ((_spath152988_ _tl152970152985_))
                                        (if '#t
                                            (_K152962_
                                             _rest152963_
                                             (cons (_import-spec-source152733_
                                                    _spath152988_)
                                                   _r152964_))
                                            (_E152967152976_)))))
                                  (_E152967152976_)))))
                      (_E152966152990_))))
                 (_import-spec152732_
                  (lambda (_hd152800_ _K152801_ _rest152802_ _r152803_)
                    (let* ((_e152804152821_ _hd152800_)
                           (_E152813152825_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e152804152821_)))
                           (_E152806152935_
                            (lambda ()
                              (if (gx#stx-pair? _e152804152821_)
                                  (let ((_e152814152829_
                                         (gx#syntax-e _e152804152821_)))
                                    (let ((_hd152815152832_
                                           (##car _e152814152829_))
                                          (_tl152816152834_
                                           (##cdr _e152814152829_)))
                                      (if (gx#stx-pair? _tl152816152834_)
                                          (let ((_e152817152837_
                                                 (gx#syntax-e
                                                  _tl152816152834_)))
                                            (let ((_hd152818152840_
                                                   (##car _e152817152837_))
                                                  (_tl152819152842_
                                                   (##cdr _e152817152837_)))
                                              (let* ((_path152845_
                                                      _hd152818152840_)
                                                     (_specs152847_
                                                      _tl152819152842_))
                                                (if '#t
                                                    (let ((_src-ctx152849_
                                                           (_import-spec-source152733_
                                                            _path152845_))
                                                          (_exports152850_
                                                           (make-table))
                                                          (_specs152851_
                                                           (gx#syntax->list
                                                            _specs152847_)))
                                                      (for-each
                                                       (lambda (_out152853_)
                                                         (table-set!
                                                          _exports152850_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out152853_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out152853_
                         '4
                         gx#module-export::t
                         '#f))
                  _out152853_))
               (##unchecked-structure-ref
                _src-ctx152849_
                '9
                gx#module-context::t
                '#f))
              (_K152801_
               _rest152802_
               (foldl1 (lambda (_spec152855_ _r152856_)
                         (let* ((_e152857152873_ _spec152855_)
                                (_E152859152877_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e152857152873_)))
                                (_E152858152931_
                                 (lambda ()
                                   (if (gx#stx-pair? _e152857152873_)
                                       (let ((_e152860152881_
                                              (gx#syntax-e _e152857152873_)))
                                         (let ((_hd152861152884_
                                                (##car _e152860152881_))
                                               (_tl152862152886_
                                                (##cdr _e152860152881_)))
                                           (let ((_phi152889_
                                                  _hd152861152884_))
                                             (if (gx#stx-pair?
                                                  _tl152862152886_)
                                                 (let ((_e152863152891_
                                                        (gx#syntax-e
                                                         _tl152862152886_)))
                                                   (let ((_hd152864152894_
                                                          (##car _e152863152891_))
                                                         (_tl152865152896_
                                                          (##cdr _e152863152891_)))
                                                     (let ((_name152899_
                                                            _hd152864152894_))
                                                       (if (gx#stx-pair?
                                                            _tl152865152896_)
                                                           (let ((_e152866152901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl152865152896_)))
                     (let ((_hd152867152904_ (##car _e152866152901_))
                           (_tl152868152906_ (##cdr _e152866152901_)))
                       (let ((_src-phi152909_ _hd152867152904_))
                         (if (gx#stx-pair? _tl152868152906_)
                             (let ((_e152869152911_
                                    (gx#syntax-e _tl152868152906_)))
                               (let ((_hd152870152914_ (##car _e152869152911_))
                                     (_tl152871152916_
                                      (##cdr _e152869152911_)))
                                 (let ((_src-name152919_ _hd152870152914_))
                                   (if (gx#stx-null? _tl152871152916_)
                                       (if (and (gx#stx-fixnum?
                                                 _src-phi152909_)
                                                (gx#identifier?
                                                 _src-name152919_)
                                                (gx#stx-fixnum? _phi152889_)
                                                (gx#identifier? _name152899_))
                                           (let ((_src-phi152921_
                                                  (gx#stx-e _src-phi152909_))
                                                 (_src-name152922_
                                                  (gx#core-identifier-key
                                                   _src-name152919_))
                                                 (_phi152923_
                                                  (gx#stx-e _phi152889_))
                                                 (_name152924_
                                                  (gx#core-identifier-key
                                                   _name152899_)))
                                             (let ((_$e152926_
                                                    (table-ref
                                                     _exports152850_
                                                     (cons _src-phi152921_
                                                           _src-name152922_)
                                                     '#f)))
                                               (if _$e152926_
                                                   ((lambda (_out152929_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out152929_
                                                             _name152924_
                                                             (fx- _phi152923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi152921_))
                    _r152856_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e152926_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx152725_
                                                    _hd152800_))))
                                           (_E152859152877_))
                                       (_E152859152877_)))))
                             (_E152859152877_)))))
                   (_E152859152877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E152859152877_)))))
                                       (_E152859152877_)))))
                           (_E152858152931_)))
                       _r152803_
                       _specs152851_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E152813152825_)))))
                                          (_E152813152825_))))
                                  (_E152813152825_))))
                           (_E152805152957_
                            (lambda ()
                              (if (gx#stx-pair? _e152804152821_)
                                  (let ((_e152807152939_
                                         (gx#syntax-e _e152804152821_)))
                                    (let ((_hd152808152942_
                                           (##car _e152807152939_))
                                          (_tl152809152944_
                                           (##cdr _e152807152939_)))
                                      (if (gx#stx-pair? _tl152809152944_)
                                          (let ((_e152810152947_
                                                 (gx#syntax-e
                                                  _tl152809152944_)))
                                            (let ((_hd152811152950_
                                                   (##car _e152810152947_))
                                                  (_tl152812152952_
                                                   (##cdr _e152810152947_)))
                                              (let ((_path152955_
                                                     _hd152811152950_))
                                                (if (gx#stx-null?
                                                     _tl152812152952_)
                                                    (if '#t
                                                        (_K152801_
                                                         _rest152802_
                                                         (cons (_import-spec-source152733_
                                                                _path152955_)
                                                               _r152803_))
                                                        (_E152806152935_))
                                                    (_E152806152935_)))))
                                          (_E152806152935_))))
                                  (_E152806152935_)))))
                      (_E152805152957_))))
                 (_import-spec-source152733_
                  (lambda (_spath152798_)
                    (gx#core-import-nested-module _spath152798_ _stx152725_)))
                 (_import!152734_
                  (lambda (_rbody152747_)
                    (letrec* ((_current-ctx152749_
                               (gx#current-expander-context))
                              (_deps152750_ (make-table 'test: eq?))
                              (_bind!152751_
                               (lambda (_hd152796_)
                                 (gx#core-bind-import!__1
                                  _hd152796_
                                  _current-ctx152749_))))
                      (let _lp152753_ ((_rest152755_ _rbody152747_)
                                       (_body152756_ '()))
                        (let* ((_rest152757152765_ _rest152755_)
                               (_else152759152775_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx152749_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx152749_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx152749_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body152756_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx152773_ _g159797_)
                                     (gx#eval-module _ctx152773_))
                                   _deps152750_)
                                  _body152756_))
                               (_K152761152784_
                                (lambda (_rest152778_ _hd152779_)
                                  (if (##structure-direct-instance-of?
                                       _hd152779_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!152751_ _hd152779_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd152779_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd152779_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps152750_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd152779_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd152779_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!152751_
                                             (##unchecked-structure-ref
                                              _hd152779_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd152779_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps152750_
                                                 (##unchecked-structure-ref
                                                  _hd152779_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e152781_
                                                 (##structure-instance-of?
                                                  _hd152779_
                                                  'gx#module-context::t)))
                                            (if _$e152781_
                                                _$e152781_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx152725_
                                                 _hd152779_)))))
                                  (_lp152753_
                                   _rest152778_
                                   (cons _hd152779_ _body152756_)))))
                          (if (##pair? _rest152757152765_)
                              (let ((_hd152762152787_
                                     (##car _rest152757152765_))
                                    (_tl152763152789_
                                     (##cdr _rest152757152765_)))
                                (let* ((_hd152792_ _hd152762152787_)
                                       (_rest152794_ _tl152763152789_))
                                  (_K152761152784_ _rest152794_ _hd152792_)))
                              (_else152759152775_)))))))
                 (_expanded-import?152735_
                  (lambda (_e152739_)
                    (let ((_$e152741_
                           (##structure-direct-instance-of?
                            _e152739_
                            'gx#import-set::t)))
                      (if _$e152741_
                          _$e152741_
                          (let ((_$e152744_
                                 (##structure-direct-instance-of?
                                  _e152739_
                                  'gx#module-import::t)))
                            (if _$e152744_
                                _$e152744_
                                (##structure-instance-of?
                                 _e152739_
                                 'gx#module-context::t))))))))
          (let ((_rbody152737_
                 (gx#core-expand-import/export
                  _stx152725_
                  _expanded-import?152735_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand1152728_)))
            (if _internal-expand?152726_
                (reverse _rbody152737_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!152734_ _rbody152737_))
                 (gx#stx-source _stx152725_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx153051_)
        (let ((_internal-expand?153053_ '#f))
          (gx#core-expand-import%__% _stx153051_ _internal-expand?153053_))))
    (define gx#core-expand-import%
      (lambda _g159799_
        (let ((_g159798_ (##length _g159799_)))
          (cond ((##fx= _g159798_ 1)
                 (apply (lambda (_stx153051_)
                          (gx#core-expand-import%__0 _stx153051_))
                        _g159799_))
                ((##fx= _g159798_ 2)
                 (apply (lambda (_stx153055_ _internal-expand?153056_)
                          (gx#core-expand-import%__%
                           _stx153055_
                           _internal-expand?153056_))
                        _g159799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g159799_))))))
    (define gx#core-import-nested-module
      (lambda (_spath152652_ _where152653_)
        (let* ((_e152654152661_ _spath152652_)
               (_E152656152665_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152654152661_)))
               (_E152655152720_
                (lambda ()
                  (if (gx#stx-pair? _e152654152661_)
                      (let ((_e152657152669_ (gx#syntax-e _e152654152661_)))
                        (let ((_hd152658152672_ (##car _e152657152669_))
                              (_tl152659152674_ (##cdr _e152657152669_)))
                          (let* ((_origin152677_ _hd152658152672_)
                                 (_sub152679_ _tl152659152674_))
                            (if '#t
                                (let ((_origin-ctx152681_
                                       (if (gx#stx-false? _origin152677_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin152677_))))
                                  (let _lp152683_ ((_rest152685_ _sub152679_)
                                                   (_ctx152686_
                                                    _origin-ctx152681_))
                                    (let* ((_e152687152694_ _rest152685_)
                                           (_E152689152698_
                                            (lambda () _ctx152686_))
                                           (_E152688152716_
                                            (lambda ()
                                              (if (gx#stx-pair?
                                                   _e152687152694_)
                                                  (let ((_e152690152702_
                                                         (gx#syntax-e
                                                          _e152687152694_)))
                                                    (let ((_hd152691152705_
                                                           (##car _e152690152702_))
                                                          (_tl152692152707_
                                                           (##cdr _e152690152702_)))
                                                      (let* ((_id152710_
                                                              _hd152691152705_)
                                                             (_rest152712_
                                                              _tl152692152707_))
                                                        (if '#t
                                                            (let ((_bind152714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__%
                            _id152710_
                            '0
                            _ctx152686_)))
                      (if (and (##structure-direct-instance-of?
                                _bind152714_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind152714_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where152653_
                           _spath152652_
                           _id152710_))
                      (_lp152683_
                       _rest152712_
                       (##unchecked-structure-ref
                        _bind152714_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E152689152698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E152689152698_)))))
                                      (_E152688152716_))))
                                (_E152656152665_)))))
                      (_E152656152665_)))))
          (_E152655152720_))))
    (define gx#core-expand-import-source
      (lambda (_hd152650_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd152650_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx152158_ _internal-expand?152159_)
        (letrec* ((_make-export__159728159729_
                   (lambda (_bind152598_ _phi152599_ _ctx152600_ _name152601_)
                     (let* ((_key152603_
                             (##unchecked-structure-ref
                              _bind152598_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key152605_
                             (if _name152601_
                                 (gx#core-identifier-key _name152601_)
                                 _key152603_)))
                       (##structure
                        gx#module-export::t
                        _ctx152600_
                        _key152603_
                        _phi152599_
                        _export-key152605_
                        (let ((_$e152608_
                               (##structure-instance-of?
                                _bind152598_
                                'gx#extern-binding::t)))
                          (if _$e152608_
                              _$e152608_
                              (##structure-direct-instance-of?
                               _bind152598_
                               'gx#import-binding::t)))))))
                  (_make-export__0__159730159733_
                   (lambda (_bind152614_)
                     (let* ((_phi152616_ (gx#current-export-expander-phi))
                            (_ctx152618_ (gx#current-expander-context))
                            (_name152620_ '#f))
                       (_make-export__159728159729_
                        _bind152614_
                        _phi152616_
                        _ctx152618_
                        _name152620_))))
                  (_make-export__1__159731159734_
                   (lambda (_bind152622_ _phi152623_)
                     (let* ((_ctx152625_ (gx#current-expander-context))
                            (_name152627_ '#f))
                       (_make-export__159728159729_
                        _bind152622_
                        _phi152623_
                        _ctx152625_
                        _name152627_))))
                  (_make-export__2__159732159735_
                   (lambda (_bind152629_ _phi152630_ _ctx152631_)
                     (let ((_name152633_ '#f))
                       (_make-export__159728159729_
                        _bind152629_
                        _phi152630_
                        _ctx152631_
                        _name152633_))))
                  (_make-export152161_
                   (lambda _g159801_
                     (let ((_g159800_ (##length _g159801_)))
                       (cond ((##fx= _g159800_ 1)
                              (apply (lambda (_bind152614_)
                                       (_make-export__0__159730159733_
                                        _bind152614_))
                                     _g159801_))
                             ((##fx= _g159800_ 2)
                              (apply (lambda (_bind152622_ _phi152623_)
                                       (_make-export__1__159731159734_
                                        _bind152622_
                                        _phi152623_))
                                     _g159801_))
                             ((##fx= _g159800_ 3)
                              (apply (lambda (_bind152629_
                                              _phi152630_
                                              _ctx152631_)
                                       (_make-export__2__159732159735_
                                        _bind152629_
                                        _phi152630_
                                        _ctx152631_))
                                     _g159801_))
                             ((##fx= _g159800_ 4)
                              (apply (lambda (_bind152635_
                                              _phi152636_
                                              _ctx152637_
                                              _name152638_)
                                       (_make-export__159728159729_
                                        _bind152635_
                                        _phi152636_
                                        _ctx152637_
                                        _name152638_))
                                     _g159801_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g159801_))))))
                  (_expand1152162_
                   (lambda (_hd152311_ _K152312_ _rest152313_ _r152314_)
                     (let* ((_e152315152347_ _hd152311_)
                            (_E152342152351_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx152158_
                                _hd152311_)))
                            (_E152332152430_
                             (lambda ()
                               (if (gx#stx-pair? _e152315152347_)
                                   (let ((_e152343152355_
                                          (gx#syntax-e _e152315152347_)))
                                     (let ((_hd152344152358_
                                            (##car _e152343152355_))
                                           (_tl152345152360_
                                            (##cdr _e152343152355_)))
                                       (if (eq? (gx#stx-e _hd152344152358_)
                                                'import:)
                                           (let ((_in152363_ _tl152345152360_))
                                             (if (gx#stx-list? _in152363_)
                                                 (let _lp152365_ ((_in-rest152367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in152363_)
                          (_r152368_ _r152314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e152369152376_
                                                           _in-rest152367_)
                                                          (_E152371152380_
                                                           (lambda ()
                                                             (_K152312_
                                                              _rest152313_
                                                              _r152368_)))
                                                          (_E152370152426_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e152369152376_)
                         (let ((_e152372152384_ (gx#syntax-e _e152369152376_)))
                           (let ((_hd152373152387_ (##car _e152372152384_))
                                 (_tl152374152389_ (##cdr _e152372152384_)))
                             (let* ((_hd152392_ _hd152373152387_)
                                    (_in-rest152394_ _tl152374152389_))
                               (if '#t
                                   (let ((_src152424_
                                          (if (gx#core-bound-module?
                                               _hd152392_)
                                              (gx#syntax-local-e__0 _hd152392_)
                                              (if (gx#core-library-module-path?
                                                   _hd152392_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd152392_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd152392_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd152392_))
                                                      (if (gx#stx-string?
                                                           _hd152392_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd152392_
                                                            (gx#stx-source
                                                             _stx152158_)))
                                                          (let* ((_e152395152402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd152392_)
                         (_E152397152406_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx152158_
                             _hd152392_)))
                         (_E152396152420_
                          (lambda ()
                            (if (gx#stx-pair? _e152395152402_)
                                (let ((_e152398152410_
                                       (gx#syntax-e _e152395152402_)))
                                  (let ((_hd152399152413_
                                         (##car _e152398152410_))
                                        (_tl152400152415_
                                         (##cdr _e152398152410_)))
                                    (if (eq? (gx#stx-e _hd152399152413_) 'in:)
                                        (let ((_spath152418_ _tl152400152415_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath152418_
                                               _stx152158_)
                                              (_E152397152406_)))
                                        (_E152397152406_))))
                                (_E152397152406_)))))
                    (_E152396152420_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp152365_
                                      _in-rest152394_
                                      (_export-imports152163_
                                       _src152424_
                                       _r152368_)))
                                   (_E152371152380_)))))
                         (_E152371152380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E152370152426_)))
                                                 (_E152342152351_)))
                                           (_E152342152351_))))
                                   (_E152342152351_))))
                            (_E152319152469_
                             (lambda ()
                               (if (gx#stx-pair? _e152315152347_)
                                   (let ((_e152333152434_
                                          (gx#syntax-e _e152315152347_)))
                                     (let ((_hd152334152437_
                                            (##car _e152333152434_))
                                           (_tl152335152439_
                                            (##cdr _e152333152434_)))
                                       (if (eq? (gx#stx-e _hd152334152437_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl152335152439_)
                                               (let ((_e152336152442_
                                                      (gx#syntax-e
                                                       _tl152335152439_)))
                                                 (let ((_hd152337152445_
                                                        (##car _e152336152442_))
                                                       (_tl152338152447_
                                                        (##cdr _e152336152442_)))
                                                   (let ((_id152450_
                                                          _hd152337152445_))
                                                     (if (gx#stx-pair?
                                                          _tl152338152447_)
                                                         (let ((_e152339152452_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152338152447_)))
                   (let ((_hd152340152455_ (##car _e152339152452_))
                         (_tl152341152457_ (##cdr _e152339152452_)))
                     (let ((_name152460_ _hd152340152455_))
                       (if (gx#stx-null? _tl152341152457_)
                           (if '#t
                               (let* ((_phi152462_
                                       (gx#current-export-expander-phi))
                                      (_$e152464_
                                       (gx#core-resolve-identifier__1
                                        _id152450_
                                        _phi152462_)))
                                 (if _$e152464_
                                     ((lambda (_bind152467_)
                                        (_K152312_
                                         _rest152313_
                                         (cons (_make-export__159728159729_
                                                _bind152467_
                                                _phi152462_
                                                (gx#current-expander-context)
                                                _name152460_)
                                               _r152314_)))
                                      _$e152464_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx152158_
                                      _hd152311_
                                      _id152450_)))
                               (_E152332152430_))
                           (_E152332152430_)))))
                 (_E152332152430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152332152430_))
                                           (_E152332152430_))))
                                   (_E152332152430_))))
                            (_E152318152518_
                             (lambda ()
                               (if (gx#stx-pair? _e152315152347_)
                                   (let ((_e152320152473_
                                          (gx#syntax-e _e152315152347_)))
                                     (let ((_hd152321152476_
                                            (##car _e152320152473_))
                                           (_tl152322152478_
                                            (##cdr _e152320152473_)))
                                       (if (eq? (gx#stx-e _hd152321152476_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl152322152478_)
                                               (let ((_e152323152481_
                                                      (gx#syntax-e
                                                       _tl152322152478_)))
                                                 (let ((_hd152324152484_
                                                        (##car _e152323152481_))
                                                       (_tl152325152486_
                                                        (##cdr _e152323152481_)))
                                                   (let ((_phi152489_
                                                          _hd152324152484_))
                                                     (if (gx#stx-pair?
                                                          _tl152325152486_)
                                                         (let ((_e152326152491_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl152325152486_)))
                   (let ((_hd152327152494_ (##car _e152326152491_))
                         (_tl152328152496_ (##cdr _e152326152491_)))
                     (let ((_id152499_ _hd152327152494_))
                       (if (gx#stx-pair? _tl152328152496_)
                           (let ((_e152329152501_
                                  (gx#syntax-e _tl152328152496_)))
                             (let ((_hd152330152504_ (##car _e152329152501_))
                                   (_tl152331152506_ (##cdr _e152329152501_)))
                               (let ((_name152509_ _hd152330152504_))
                                 (if (gx#stx-null? _tl152331152506_)
                                     (if (and (gx#stx-fixnum? _phi152489_)
                                              (gx#identifier? _id152499_)
                                              (gx#identifier? _name152509_))
                                         (let* ((_phi152511_
                                                 (gx#stx-e _phi152489_))
                                                (_$e152513_
                                                 (gx#core-resolve-identifier__1
                                                  _id152499_
                                                  _phi152511_)))
                                           (if _$e152513_
                                               ((lambda (_bind152516_)
                                                  (_K152312_
                                                   _rest152313_
                                                   (cons (_make-export__159728159729_
                                                          _bind152516_
                                                          _phi152511_
                                                          (gx#current-expander-context)
                                                          _name152509_)
                                                         _r152314_)))
                                                _$e152513_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx152158_
                                                _hd152311_
                                                _id152499_)))
                                         (_E152319152469_))
                                     (_E152319152469_)))))
                           (_E152319152469_)))))
                 (_E152319152469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E152319152469_))
                                           (_E152319152469_))))
                                   (_E152319152469_))))
                            (_E152317152529_
                             (lambda ()
                               (let ((_id152522_ _e152315152347_))
                                 (if (gx#identifier? _id152522_)
                                     (let ((_$e152524_
                                            (gx#core-resolve-identifier__1
                                             _id152522_
                                             (gx#current-export-expander-phi))))
                                       (if _$e152524_
                                           ((lambda (_bind152527_)
                                              (_K152312_
                                               _rest152313_
                                               (cons (_make-export__0__159730159733_
                                                      _bind152527_)
                                                     _r152314_)))
                                            _$e152524_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx152158_
                                            _hd152311_)))
                                     (_E152318152518_)))))
                            (_E152316152593_
                             (lambda ()
                               (if (eq? (gx#stx-e _e152315152347_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx152533_
                                               (gx#current-expander-context))
                                              (_current-phi152535_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx152537_
                                               (gx#core-context-shift
                                                _current-ctx152533_
                                                _current-phi152535_))
                                              (_phi-bind152539_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx152537_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp152542_ ((_bind-rest152544_
                                                           _phi-bind152539_)
                                                          (_set152545_ '()))
                                           (let* ((_bind-rest152546152556_
                                                   _bind-rest152544_)
                                                  (_else152548152564_
                                                   (lambda ()
                                                     (_K152312_
                                                      _rest152313_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi152535_
                                                             _set152545_)
                                                            _r152314_))))
                                                  (_K152550152574_
                                                   (lambda (_bind-rest152567_
                                                            _bind152568_
                                                            _key152569_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind152568_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind152568_))
                                                         (_lp152542_
                                                          _bind-rest152567_
                                                          _set152545_)
                                                         (_lp152542_
                                                          _bind-rest152567_
                                                          (cons (_make-export__2__159732159735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind152568_
                         _current-phi152535_
                         _current-ctx152533_)
                        _set152545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest152546152556_)
                                                 (let ((_hd152551152577_
                                                        (##car _bind-rest152546152556_))
                                                       (_tl152552152579_
                                                        (##cdr _bind-rest152546152556_)))
                                                   (if (##pair? _hd152551152577_)
                                                       (let ((_hd152553152582_
                                                              (##car _hd152551152577_))
                                                             (_tl152554152584_
                                                              (##cdr _hd152551152577_)))
                                                         (let* ((_key152587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd152553152582_)
                        (_bind152589_ _tl152554152584_)
                        (_bind-rest152591_ _tl152552152579_))
                   (_K152550152574_
                    _bind-rest152591_
                    _bind152589_
                    _key152587_)))
               (_else152548152564_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else152548152564_)))))
                                       (_E152317152529_))
                                   (_E152317152529_)))))
                       (_E152316152593_))))
                  (_export-imports152163_
                   (lambda (_src152187_ _r152188_)
                     (letrec* ((_current-ctx152190_
                                (gx#current-expander-context))
                               (_current-phi152191_
                                (gx#current-export-expander-phi))
                               (_import->export152192_
                                (lambda (_in152273_)
                                  (let* ((_in152274152282_ _in152273_)
                                         (_E152276152286_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in152274152282_)))
                                         (_K152277152293_
                                          (lambda (_phi152289_
                                                   _key152290_
                                                   _out152291_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx152190_
                                             _key152290_
                                             _phi152289_
                                             _key152290_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in152274152282_
                                         'gx#module-import::t)
                                        (let* ((_e152278152296_
                                                (##unchecked-structure-ref
                                                 _in152274152282_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out152299_ _e152278152296_)
                                               (_e152279152301_
                                                (##unchecked-structure-ref
                                                 _in152274152282_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key152304_ _e152279152301_)
                                               (_e152280152306_
                                                (##unchecked-structure-ref
                                                 _in152274152282_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi152309_ _e152280152306_))
                                          (_K152277152293_
                                           _phi152309_
                                           _key152304_
                                           _out152299_))
                                        (_E152276152286_)))))
                               (_fold-e152193_
                                (lambda (_in152195_ _r152196_)
                                  (let* ((_in152197152211_ _in152195_)
                                         (_else152200152219_
                                          (lambda () _r152196_)))
                                    (let ((_K152206152255_
                                           (lambda (_phi152251_
                                                    _key152252_
                                                    _out152253_)
                                             (if (and (fx= _phi152251_
                                                           _current-phi152191_)
                                                      (eq? _src152187_
                                                           (##unchecked-structure-ref
                                                            _out152253_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export152192_
                                                        _in152195_)
                                                       _r152196_)
                                                 _r152196_)))
                                          (_K152202152230_
                                           (lambda (_imports152223_
                                                    _phi152224_
                                                    _ctx152225_)
                                             (if (and (fx= _phi152224_
                                                           _current-phi152191_)
                                                      (eq? _src152187_
                                                           _ctx152225_))
                                                 (foldl1 (lambda (_in152227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r152228_)
                   (cons (_import->export152192_ _in152227_) _r152228_))
                 _r152196_
                 _imports152223_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r152196_))))
                                      (let ((_try-match152199152248_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in152197152211_
                                                    'gx#import-set::t)
                                                   (let* ((_e152203152233_
                                                           (##unchecked-structure-ref
                                                            _in152197152211_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152204152238_
                                                           (##unchecked-structure-ref
                                                            _in152197152211_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e152205152243_
                                                           (##unchecked-structure-ref
                                                            _in152197152211_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx152236_
                                                            _e152203152233_)
                                                           (_phi152241_
                                                            _e152204152238_)
                                                           (_imports152246_
                                                            _e152205152243_))
                                                       (_K152202152230_
                                                        _imports152246_
                                                        _phi152241_
                                                        _ctx152236_)))
                                                   (_else152200152219_)))))
                                        (if (##structure-direct-instance-of?
                                             _in152197152211_
                                             'gx#module-import::t)
                                            (let* ((_e152207152258_
                                                    (##unchecked-structure-ref
                                                     _in152197152211_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152208152263_
                                                    (##unchecked-structure-ref
                                                     _in152197152211_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e152209152268_
                                                    (##unchecked-structure-ref
                                                     _in152197152211_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out152261_
                                                     _e152207152258_)
                                                    (_key152266_
                                                     _e152208152263_)
                                                    (_phi152271_
                                                     _e152209152268_))
                                                (_K152206152255_
                                                 _phi152271_
                                                 _key152266_
                                                 _out152261_)))
                                            (_try-match152199152248_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src152187_
                              _current-phi152191_
                              (foldl1 _fold-e152193_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx152190_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r152188_))))
                  (_export!152164_
                   (lambda (_rbody152177_)
                     (letrec* ((_current-ctx152179_
                                (gx#current-expander-context))
                               (_fold-e152180_
                                (lambda (_out152184_ _r152185_)
                                  (if (##structure-direct-instance-of?
                                       _out152184_
                                       'gx#module-export::t)
                                      (cons _out152184_ _r152185_)
                                      (if (##structure-direct-instance-of?
                                           _out152184_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r152185_
                                                  (##unchecked-structure-ref
                                                   _out152184_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r152185_)))))
                       (let ((_body152182_ (reverse _rbody152177_)))
                         (##unchecked-structure-set!
                          _current-ctx152179_
                          (foldl1 _fold-e152180_
                                  (##unchecked-structure-ref
                                   _current-ctx152179_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body152182_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body152182_))))
                  (_expanded-export?152165_
                   (lambda (_e152172_)
                     (let ((_$e152174_
                            (##structure-direct-instance-of?
                             _e152172_
                             'gx#module-export::t)))
                       (if _$e152174_
                           _$e152174_
                           (##structure-direct-instance-of?
                            _e152172_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?152159_)
              (let ((_rbody152170_
                     (gx#core-expand-import/export
                      _stx152158_
                      _expanded-export?152165_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand1152162_)))
                (if _internal-expand?152159_
                    (reverse _rbody152170_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!152164_ _rbody152170_))
                     (gx#stx-source _stx152158_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx152158_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx152158_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx152643_)
        (let ((_internal-expand?152645_ '#f))
          (gx#core-expand-export%__% _stx152643_ _internal-expand?152645_))))
    (define gx#core-expand-export%
      (lambda _g159803_
        (let ((_g159802_ (##length _g159803_)))
          (cond ((##fx= _g159802_ 1)
                 (apply (lambda (_stx152643_)
                          (gx#core-expand-export%__0 _stx152643_))
                        _g159803_))
                ((##fx= _g159802_ 2)
                 (apply (lambda (_stx152647_ _internal-expand?152648_)
                          (gx#core-expand-export%__%
                           _stx152647_
                           _internal-expand?152648_))
                        _g159803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g159803_))))))
    (define gx#core-expand-export-source
      (lambda (_hd152155_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd152155_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx152125_)
        (let* ((_e152126152133_ _stx152125_)
               (_E152128152137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e152126152133_)))
               (_E152127152151_
                (lambda ()
                  (if (gx#stx-pair? _e152126152133_)
                      (let ((_e152129152141_ (gx#syntax-e _e152126152133_)))
                        (let ((_hd152130152144_ (##car _e152129152141_))
                              (_tl152131152146_ (##cdr _e152129152141_)))
                          (let ((_body152149_ _tl152131152146_))
                            (if (gx#identifier-list? _body152149_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body152149_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body152149_))
                                   (gx#stx-source _stx152125_)))
                                (_E152128152137_)))))
                      (_E152128152137_)))))
          (_E152127152151_))))
    (define gx#core-bind-feature!__%
      (lambda (_id152091_ _private?152092_ _phi152093_ _ctx152094_)
        (gx#core-bind-syntax!__%
         _id152091_
         ((if _private?152092_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id152091_))
         _private?152092_
         _phi152093_
         _ctx152094_)))
    (define gx#core-bind-feature!__0
      (lambda (_id152099_)
        (let* ((_private?152101_ '#f)
               (_phi152103_ (gx#current-expander-phi))
               (_ctx152105_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152099_
           _private?152101_
           _phi152103_
           _ctx152105_))))
    (define gx#core-bind-feature!__1
      (lambda (_id152107_ _private?152108_)
        (let* ((_phi152110_ (gx#current-expander-phi))
               (_ctx152112_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152107_
           _private?152108_
           _phi152110_
           _ctx152112_))))
    (define gx#core-bind-feature!__2
      (lambda (_id152114_ _private?152115_ _phi152116_)
        (let ((_ctx152118_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id152114_
           _private?152115_
           _phi152116_
           _ctx152118_))))
    (define gx#core-bind-feature!
      (lambda _g159805_
        (let ((_g159804_ (##length _g159805_)))
          (cond ((##fx= _g159804_ 1)
                 (apply (lambda (_id152099_)
                          (gx#core-bind-feature!__0 _id152099_))
                        _g159805_))
                ((##fx= _g159804_ 2)
                 (apply (lambda (_id152107_ _private?152108_)
                          (gx#core-bind-feature!__1
                           _id152107_
                           _private?152108_))
                        _g159805_))
                ((##fx= _g159804_ 3)
                 (apply (lambda (_id152114_ _private?152115_ _phi152116_)
                          (gx#core-bind-feature!__2
                           _id152114_
                           _private?152115_
                           _phi152116_))
                        _g159805_))
                ((##fx= _g159804_ 4)
                 (apply (lambda (_id152120_
                                 _private?152121_
                                 _phi152122_
                                 _ctx152123_)
                          (gx#core-bind-feature!__%
                           _id152120_
                           _private?152121_
                           _phi152122_
                           _ctx152123_))
                        _g159805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g159805_))))))))
