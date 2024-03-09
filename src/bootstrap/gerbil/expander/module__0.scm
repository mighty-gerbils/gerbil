(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1709994213)
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
      (lambda _$args93457_
        (apply make-instance gx#module-import::t _$args93457_)))
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
      (lambda _$args93454_
        (apply make-instance gx#module-export::t _$args93454_)))
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
      (lambda _$args93451_
        (apply make-instance gx#import-set::t _$args93451_)))
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
      (lambda _$args93448_
        (apply make-instance gx#export-set::t _$args93448_)))
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
      (lambda _$args93445_
        (apply make-instance gx#import-expander::t _$args93445_)))
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
      (lambda _$args93442_
        (apply make-instance gx#export-expander::t _$args93442_)))
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
      (lambda _$args93439_
        (apply make-instance gx#import-export-expander::t _$args93439_)))
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
      (lambda (_path93436_ _fun93437_)
        (call-with-input-file
         (cons 'path: (cons _path93436_ gx#source-file-settings))
         _fun93437_)))
    (define gx#module-context:::init!
      (lambda (_self93430_ _id93431_ _super93432_ _ns93433_ _path93434_)
        (if (##fx< '11 (##structure-length _self93430_))
            (begin
              (##unchecked-structure-set!
               _self93430_
               _id93431_
               '1
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               (make-hash-table-eq)
               '2
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               _super93432_
               '3
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               '#f
               '4
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               '#f
               '5
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               _ns93433_
               '6
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               _path93434_
               '7
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               '()
               '8
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               '()
               '9
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               '#f
               '10
               (##structure-type _self93430_)
               '#f)
              (##unchecked-structure-set!
               _self93430_
               '#f
               '11
               (##structure-type _self93430_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93430_
                   '11
                   (##vector-length _self93430_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self93274_ _ctx93275_ _root93276_)
        (let ((_super93284_
               (let ((_$e93278_ _root93276_))
                 (if _$e93278_
                     _$e93278_
                     (let ((_$e93281_ (gx#core-context-root__0)))
                       (if _$e93281_
                           _$e93281_
                           (let ((__obj93499
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor93500
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj93499
                                     ':init!)))
                               (if __constructor93500
                                   (__constructor93500 __obj93499)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj93499)))))))
          (if _ctx93275_
              (let ((_id93287_
                     (##structure-ref
                      _ctx93275_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path93288_
                     (##structure-ref _ctx93275_ '7 gx#module-context::t '#f))
                    (_in93289_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx93275_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e93290_
                     (make-promise (lambda () (gx#eval-module _ctx93275_)))))
                (if (##fx< '8 (##structure-length _self93274_))
                    (begin
                      (##unchecked-structure-set!
                       _self93274_
                       _id93287_
                       '1
                       (##structure-type _self93274_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93274_
                       (make-hash-table-eq 'size: (length _in93289_))
                       '2
                       (##structure-type _self93274_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93274_
                       _super93284_
                       '3
                       (##structure-type _self93274_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93274_
                       '#f
                       '4
                       (##structure-type _self93274_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93274_
                       '#f
                       '5
                       (##structure-type _self93274_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93274_
                       _path93288_
                       '6
                       (##structure-type _self93274_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93274_
                       _in93289_
                       '7
                       (##structure-type _self93274_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93274_
                       _e93290_
                       '8
                       (##structure-type _self93274_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self93274_
                           '8
                           (##vector-length _self93274_)))
                (for-each
                 (lambda (_g9329193293_)
                   (gx#core-bind-weak-import!__% _g9329193293_ _self93274_))
                 _in93289_))
              (if (##fx< '8 (##structure-length _self93274_))
                  (begin
                    (##unchecked-structure-set!
                     _self93274_
                     '#f
                     '1
                     (##structure-type _self93274_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93274_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self93274_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93274_
                     _super93284_
                     '3
                     (##structure-type _self93274_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93274_
                     '#f
                     '4
                     (##structure-type _self93274_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93274_
                     '#f
                     '5
                     (##structure-type _self93274_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93274_
                     '#f
                     '6
                     (##structure-type _self93274_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93274_
                     '()
                     '7
                     (##structure-type _self93274_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93274_
                     '#f
                     '8
                     (##structure-type _self93274_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self93274_
                         '8
                         (##vector-length _self93274_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self93299_ _ctx93300_)
        (let ((_root93302_ '#f))
          (gx#prelude-context:::init!__% _self93299_ _ctx93300_ _root93302_))))
    (define gx#prelude-context:::init!
      (lambda _g93506_
        (let ((_g93505_ (##length _g93506_)))
          (cond ((##fx= _g93505_ 2)
                 (apply (lambda (_self93299_ _ctx93300_)
                          (gx#prelude-context:::init!__0
                           _self93299_
                           _ctx93300_))
                        _g93506_))
                ((##fx= _g93505_ 3)
                 (apply (lambda (_self93304_ _ctx93305_ _root93306_)
                          (gx#prelude-context:::init!__%
                           _self93304_
                           _ctx93305_
                           _root93306_))
                        _g93506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g93506_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self93148_ _e93149_)
        (if (##fx< '3 (##structure-length _self93148_))
            (begin
              (##unchecked-structure-set!
               _self93148_
               _e93149_
               '1
               (##structure-type _self93148_)
               '#f)
              (##unchecked-structure-set!
               _self93148_
               (gx#current-expander-context)
               '2
               (##structure-type _self93148_)
               '#f)
              (##unchecked-structure-set!
               _self93148_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self93148_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93148_
                   '3
                   (##vector-length _self93148_)))))
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
      (lambda (_g9277492777_ _g9277592779_)
        (gx#core-apply-user-expander__%
         _g9277492777_
         _g9277592779_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9264592648_ _g9264692650_)
        (gx#core-apply-user-expander__%
         _g9264592648_
         _g9264692650_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx92516_)
        (let* ((_path92518_
                (##structure-ref _ctx92516_ '7 gx#module-context::t '#f))
               (_path92520_
                (if (pair? _path92518_) (last _path92518_) _path92518_)))
          (if (string? _path92520_) _path92520_ '#f))))
    (define gx#import-module__%
      (lambda (_path92492_ _reload?92493_ _eval?92494_)
        (let ((_ctx92496_
               ((gx#current-expander-module-import)
                _path92492_
                _reload?92493_)))
          (if (and _ctx92496_ _eval?92494_)
              (gx#eval-module _ctx92496_)
              '#!void)
          _ctx92496_)))
    (define gx#import-module__0
      (lambda (_path92501_)
        (let* ((_reload?92503_ '#f) (_eval?92505_ '#f))
          (gx#import-module__% _path92501_ _reload?92503_ _eval?92505_))))
    (define gx#import-module__1
      (lambda (_path92507_ _reload?92508_)
        (let ((_eval?92510_ '#f))
          (gx#import-module__% _path92507_ _reload?92508_ _eval?92510_))))
    (define gx#import-module
      (lambda _g93508_
        (let ((_g93507_ (##length _g93508_)))
          (cond ((##fx= _g93507_ 1)
                 (apply (lambda (_path92501_)
                          (gx#import-module__0 _path92501_))
                        _g93508_))
                ((##fx= _g93507_ 2)
                 (apply (lambda (_path92507_ _reload?92508_)
                          (gx#import-module__1 _path92507_ _reload?92508_))
                        _g93508_))
                ((##fx= _g93507_ 3)
                 (apply (lambda (_path92512_ _reload?92513_ _eval?92514_)
                          (gx#import-module__%
                           _path92512_
                           _reload?92513_
                           _eval?92514_))
                        _g93508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g93508_))))))
    (define gx#eval-module
      (lambda (_mod92489_) ((gx#current-expander-module-eval) _mod92489_)))
    (define gx#core-eval-module
      (lambda (_obj92474_)
        (letrec ((_force-e92476_
                  (lambda (_getf92485_ _e92486_)
                    (call-with-parameters
                     (lambda () (force (_getf92485_ _e92486_)))
                     gx#current-expander-context
                     _e92486_
                     gx#current-expander-phi
                     '0))))
          (let _recur92478_ ((_e92480_ _obj92474_))
            (if (##structure-instance-of? _e92480_ 'gx#module-context::t)
                (begin
                  (let ((_$e92482_ (gx#core-context-prelude__% _e92480_)))
                    (if _$e92482_ (_recur92478_ _$e92482_) '#!void))
                  (_force-e92476_ gx#module-context-e _e92480_))
                (if (##structure-instance-of? _e92480_ 'gx#prelude-context::t)
                    (_force-e92476_ gx#prelude-context-e _e92480_)
                    (if (gx#stx-string? _e92480_)
                        (_recur92478_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e92480_)))
                        (if (gx#core-library-module-path? _e92480_)
                            (_recur92478_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e92480_)))
                            (error '"Cannot eval module" _obj92474_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx92457_)
        (let _lp92459_ ((_e92461_ _ctx92457_))
          (if (or (##structure-instance-of? _e92461_ 'gx#module-context::t)
                  (##structure-instance-of? _e92461_ 'gx#local-context::t))
              (_lp92459_
               (##unchecked-structure-ref _e92461_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e92461_ 'gx#prelude-context::t)
                  _e92461_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx92470_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx92470_))))
    (define gx#core-context-prelude
      (lambda _g93510_
        (let ((_g93509_ (##length _g93510_)))
          (cond ((##fx= _g93509_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g93510_))
                ((##fx= _g93509_ 1)
                 (apply (lambda (_ctx92472_)
                          (gx#core-context-prelude__% _ctx92472_))
                        _g93510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g93510_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx92447_)
        (let* ((_ht92449_ (gx#current-expander-module-registry))
               (_$e92451_ (hash-get _ht92449_ _ctx92447_)))
          (if _$e92451_
              (values _$e92451_)
              (let ((_pre92454_
                     (let ((__obj93501
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
                       (gx#prelude-context:::init! __obj93501 _ctx92447_)
                       __obj93501)))
                (hash-put! _ht92449_ _ctx92447_ _pre92454_)
                _pre92454_)))))
    (define gx#core-import-module__%
      (lambda (_rpath92328_ _reload?92329_)
        (letrec ((_import-source92331_
                  (lambda (_path92416_)
                    (if (member _path92416_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path92416_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g93511_ (gx#core-read-module _path92416_)))
                         (begin
                           (let ((_g93512_
                                  (if (##values? _g93511_)
                                      (##vector-length _g93511_)
                                      1)))
                             (if (not (##fx= _g93512_ 4))
                                 (error "Context expects 4 values" _g93512_)))
                           (let ((_pre92419_ (##vector-ref _g93511_ 0))
                                 (_id92420_ (##vector-ref _g93511_ 1))
                                 (_ns92421_ (##vector-ref _g93511_ 2))
                                 (_body92422_ (##vector-ref _g93511_ 3)))
                             (let* ((_prelude92427_
                                     (if (##structure-instance-of?
                                          _pre92419_
                                          'gx#prelude-context::t)
                                         _pre92419_
                                         (if (##structure-instance-of?
                                              _pre92419_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre92419_)
                                             (if (string? _pre92419_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre92419_))
                                                 (if (not _pre92419_)
                                                     (let ((_$e92424_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e92424_
                                                           _$e92424_
                                                           (let ((__obj93502
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
                     (gx#prelude-context:::init! __obj93502 '#f)
                     __obj93502)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath92328_
                                                            _pre92419_))))))
                                    (_ctx92429_
                                     (let ((__obj93503
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
                                        __obj93503
                                        _id92420_
                                        _prelude92427_
                                        _ns92421_
                                        _path92416_)
                                       __obj93503))
                                    (_body92431_
                                     (gx#core-expand-module-begin
                                      _body92422_
                                      _ctx92429_))
                                    (_body92433_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body92431_)
                                      _path92416_
                                      _ctx92429_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx92429_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body92433_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx92429_
                                _body92433_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path92416_
                                _ctx92429_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id92420_
                                _ctx92429_)
                               _ctx92429_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path92416_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule92332_
                  (lambda (_rpath92344_)
                    (let* ((_rpath9234592352_ _rpath92344_)
                           (_E9234792356_
                            (lambda ()
                              (error '"No clause matching" _rpath9234592352_)))
                           (_K9234892404_
                            (lambda (_refs92359_ _origin92360_)
                              (let ((_ctx92362_
                                     (if _origin92360_
                                         (gx#core-import-module__%
                                          _origin92360_
                                          _reload?92329_)
                                         (gx#current-expander-context))))
                                (let _lp92364_ ((_rest92366_ _refs92359_)
                                                (_ctx92367_ _ctx92362_))
                                  (let* ((_rest9236892376_ _rest92366_)
                                         (_else9237092384_
                                          (lambda () _ctx92367_))
                                         (_K9237292392_
                                          (lambda (_rest92387_ _id92388_)
                                            (let ((_bind92390_
                                                   (gx#resolve-identifier__%
                                                    _id92388_
                                                    '0
                                                    _ctx92367_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind92390_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind92390_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp92364_
                                                   _rest92387_
                                                   (##unchecked-structure-ref
                                                    _bind92390_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath92344_
                                                         _id92388_
                                                         _bind92390_))))))
                                    (if (##pair? _rest9236892376_)
                                        (let ((_hd9237392395_
                                               (##car _rest9236892376_))
                                              (_tl9237492397_
                                               (##cdr _rest9236892376_)))
                                          (let* ((_id92400_ _hd9237392395_)
                                                 (_rest92402_ _tl9237492397_))
                                            (_K9237292392_
                                             _rest92402_
                                             _id92400_)))
                                        (_else9237092384_))))))))
                      (if (##pair? _rpath9234592352_)
                          (let ((_hd9234992407_ (##car _rpath9234592352_))
                                (_tl9235092409_ (##cdr _rpath9234592352_)))
                            (let* ((_origin92412_ _hd9234992407_)
                                   (_refs92414_ _tl9235092409_))
                              (_K9234892404_ _refs92414_ _origin92412_)))
                          (_E9234792356_))))))
          (let ((_$e92334_
                 (if (not _reload?92329_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath92328_)
                     '#f)))
            (if _$e92334_
                (values _$e92334_)
                (if (list? _rpath92328_)
                    (_import-submodule92332_ _rpath92328_)
                    (if (gx#core-library-module-path? _rpath92328_)
                        (let ((_ctx92337_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath92328_)
                                _reload?92329_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath92328_
                           _ctx92337_)
                          _ctx92337_)
                        (let* ((_npath92339_ (path-normalize _rpath92328_))
                               (_$e92341_
                                (if (not _reload?92329_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath92339_)
                                    '#f)))
                          (if _$e92341_
                              (values _$e92341_)
                              (_import-source92331_ _npath92339_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath92440_)
        (let ((_reload?92442_ '#f))
          (gx#core-import-module__% _rpath92440_ _reload?92442_))))
    (define gx#core-import-module
      (lambda _g93514_
        (let ((_g93513_ (##length _g93514_)))
          (cond ((##fx= _g93513_ 1)
                 (apply (lambda (_rpath92440_)
                          (gx#core-import-module__0 _rpath92440_))
                        _g93514_))
                ((##fx= _g93513_ 2)
                 (apply (lambda (_rpath92444_ _reload?92445_)
                          (gx#core-import-module__%
                           _rpath92444_
                           _reload?92445_))
                        _g93514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g93514_))))))
    (define gx#core-read-module
      (lambda (_path92317_)
        (with-catch
         (lambda (_exn92319_)
           (if (and (datum-parsing-exception? _exn92319_)
                    (eq? (datum-parsing-exception-filepos _exn92319_) '0))
               (gx#core-read-module/lang _path92317_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path92317_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9232192323_)
                      (display-exception _exn92319_ _g9232192323_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path92317_)))))
    (define gx#core-read-module/sexp
      (lambda (_path92180_)
        (let _lp92182_ ((_body92184_ (read-syntax-from-file _path92180_))
                        (_pre92185_ '#f)
                        (_ns92186_ '#f)
                        (_pkg92187_ '#f))
          (let* ((_e9218892212_ _body92184_)
                 (_E9220492234_
                  (lambda ()
                    (let ((_g93515_
                           (if _pkg92187_
                               (values _pre92185_ _ns92186_ _pkg92187_)
                               (gx#core-read-module-package
                                _path92180_
                                _pre92185_
                                _ns92186_))))
                      (begin
                        (let ((_g93516_
                               (if (##values? _g93515_)
                                   (##vector-length _g93515_)
                                   1)))
                          (if (not (##fx= _g93516_ 3))
                              (error "Context expects 3 values" _g93516_)))
                        (let ((_pre92216_ (##vector-ref _g93515_ 0))
                              (_ns92217_ (##vector-ref _g93515_ 1))
                              (_pkg92218_ (##vector-ref _g93515_ 2)))
                          (let* ((_prelude92220_
                                  (if (gx#core-bound-module-prelude?
                                       _pre92216_)
                                      (gx#syntax-local-e__0 _pre92216_)
                                      (if (gx#core-library-module-path?
                                           _pre92216_)
                                          (gx#core-resolve-library-module-path
                                           _pre92216_)
                                          (if (gx#stx-string? _pre92216_)
                                              (gx#core-resolve-module-path__%
                                               _pre92216_
                                               _path92180_)
                                              (gx#stx-e _pre92216_)))))
                                 (_path-id92222_
                                  (gx#core-module-path->namespace _path92180_))
                                 (_pkg-id92224_
                                  (if _pkg92218_
                                      (string-append
                                       _pkg92218_
                                       '"/"
                                       _path-id92222_)
                                      _path-id92222_))
                                 (_module-id92226_
                                  (string->symbol _pkg-id92224_))
                                 (_module-ns92231_
                                  (if (eq? _ns92217_ '#!void)
                                      '#f
                                      (let ((_$e92228_ _ns92217_))
                                        (if _$e92228_
                                            _$e92228_
                                            _pkg-id92224_)))))
                            (values _prelude92220_
                                    _module-id92226_
                                    _module-ns92231_
                                    _body92184_)))))))
                 (_E9219792263_
                  (lambda ()
                    (if (gx#stx-pair? _e9218892212_)
                        (let ((_e9220592238_ (gx#syntax-e _e9218892212_)))
                          (let ((_hd9220692241_ (##car _e9220592238_))
                                (_tl9220792243_ (##cdr _e9220592238_)))
                            (if (eq? (gx#stx-e _hd9220692241_) 'package:)
                                (if (gx#stx-pair? _tl9220792243_)
                                    (let ((_e9220892246_
                                           (gx#syntax-e _tl9220792243_)))
                                      (let ((_hd9220992249_
                                             (##car _e9220892246_))
                                            (_tl9221092251_
                                             (##cdr _e9220892246_)))
                                        (let* ((_pkg92254_ _hd9220992249_)
                                               (_rest92256_ _tl9221092251_))
                                          (if '#t
                                              (let ((_pkg92261_
                                                     (if (gx#identifier?
                                                          _pkg92254_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg92254_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg92254_)
                         (gx#stx-false? _pkg92254_))
                     (gx#stx-e _pkg92254_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg92254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp92182_
                                                 _rest92256_
                                                 _pre92185_
                                                 _ns92186_
                                                 _pkg92261_))
                                              (_E9220492234_)))))
                                    (_E9220492234_))
                                (_E9220492234_))))
                        (_E9220492234_))))
                 (_E9219092289_
                  (lambda ()
                    (if (gx#stx-pair? _e9218892212_)
                        (let ((_e9219892267_ (gx#syntax-e _e9218892212_)))
                          (let ((_hd9219992270_ (##car _e9219892267_))
                                (_tl9220092272_ (##cdr _e9219892267_)))
                            (if (eq? (gx#stx-e _hd9219992270_) 'namespace:)
                                (if (gx#stx-pair? _tl9220092272_)
                                    (let ((_e9220192275_
                                           (gx#syntax-e _tl9220092272_)))
                                      (let ((_hd9220292278_
                                             (##car _e9220192275_))
                                            (_tl9220392280_
                                             (##cdr _e9220192275_)))
                                        (let* ((_ns92283_ _hd9220292278_)
                                               (_rest92285_ _tl9220392280_))
                                          (if '#t
                                              (let ((_ns92287_
                                                     (if (gx#identifier?
                                                          _ns92283_)
                                                         (symbol->string
                                                          (gx#stx-e _ns92283_))
                                                         (if (gx#stx-string?
                                                              _ns92283_)
                                                             (gx#stx-e
                                                              _ns92283_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns92283_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns92283_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp92182_
                                                 _rest92285_
                                                 _pre92185_
                                                 _ns92287_
                                                 _pkg92187_))
                                              (_E9219792263_)))))
                                    (_E9219792263_))
                                (_E9219792263_))))
                        (_E9219792263_))))
                 (_E9218992313_
                  (lambda ()
                    (if (gx#stx-pair? _e9218892212_)
                        (let ((_e9219192293_ (gx#syntax-e _e9218892212_)))
                          (let ((_hd9219292296_ (##car _e9219192293_))
                                (_tl9219392298_ (##cdr _e9219192293_)))
                            (if (eq? (gx#stx-e _hd9219292296_) 'prelude:)
                                (if (gx#stx-pair? _tl9219392298_)
                                    (let ((_e9219492301_
                                           (gx#syntax-e _tl9219392298_)))
                                      (let ((_hd9219592304_
                                             (##car _e9219492301_))
                                            (_tl9219692306_
                                             (##cdr _e9219492301_)))
                                        (let* ((_prelude92309_ _hd9219592304_)
                                               (_rest92311_ _tl9219692306_))
                                          (if '#t
                                              (_lp92182_
                                               _rest92311_
                                               _prelude92309_
                                               _ns92186_
                                               _pkg92187_)
                                              (_E9219092289_)))))
                                    (_E9219092289_))
                                (_E9219092289_))))
                        (_E9219092289_)))))
            (_E9218992313_)))))
    (define gx#core-read-module/lang
      (lambda (_path92007_)
        (letrec ((_default-read-module-body92009_
                  (lambda (_inp92172_)
                    (let _lp92174_ ((_body92176_ '()))
                      (let ((_next92178_ (read-syntax _inp92172_)))
                        (if (eof-object? _next92178_)
                            (reverse _body92176_)
                            (_lp92174_ (cons _next92178_ _body92176_)))))))
                 (_read-body92010_
                  (lambda (_inp92091_
                           _pre92092_
                           _ns92093_
                           _pkg92094_
                           _args92095_)
                    (let ((_g93517_
                           (if _pkg92094_
                               (values _pre92092_ _ns92093_ _pkg92094_)
                               (gx#core-read-module-package
                                _path92007_
                                _pre92092_
                                _ns92093_))))
                      (begin
                        (let ((_g93518_
                               (if (##values? _g93517_)
                                   (##vector-length _g93517_)
                                   1)))
                          (if (not (##fx= _g93518_ 3))
                              (error "Context expects 3 values" _g93518_)))
                        (let ((_pre92097_ (##vector-ref _g93517_ 0))
                              (_ns92098_ (##vector-ref _g93517_ 1))
                              (_pkg92099_ (##vector-ref _g93517_ 2)))
                          (let* ((_prelude92101_
                                  (gx#import-module__0 _pre92097_))
                                 (_read-module-body92155_
                                  (let ((_$e92147_
                                         (find (lambda (_e9210292104_)
                                                 (let* ((_g9210692116_
                                                         _e9210292104_)
                                                        (_else9210892124_
                                                         (lambda () '#f))
                                                        (_K9211092128_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9210692116_
                                                        'gx#module-export::t)
                                                       (let* ((_e9211192131_
                                                               (##unchecked-structure-ref
                                                                _g9210692116_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9211292134_
                                                               (##unchecked-structure-ref
                                                                _g9210692116_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9211392137_
                                                               (##unchecked-structure-ref
                                                                _g9210692116_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9211392137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9211492140_
                            (##unchecked-structure-ref
                             _g9210692116_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9214292144_)
                              (eq? _g9214292144_ 'read-module-body))
                            _e9211492140_)
                           (_K9211092128_)
                           (_else9210892124_)))
                     (_else9210892124_)))
               (_else9210892124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude92101_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e92147_
                                        ((lambda (_xport92150_)
                                           (let ((_proc92153_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport92150_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc92153_)
                                                 _proc92153_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path92007_
                                                  _pre92097_
                                                  _proc92153_))))
                                         _$e92147_)
                                        _default-read-module-body92009_)))
                                 (_path-id92157_
                                  (gx#core-module-path->namespace _path92007_))
                                 (_pkg-id92159_
                                  (if _pkg92099_
                                      (string-append
                                       _pkg92099_
                                       '"/"
                                       _path-id92157_)
                                      _path-id92157_))
                                 (_module-id92161_
                                  (string->symbol _pkg-id92159_))
                                 (_module-ns92166_
                                  (let ((_$e92163_ _ns92098_))
                                    (if _$e92163_ _$e92163_ _pkg-id92159_)))
                                 (_body92169_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body92155_ _inp92091_))
                                   gx#current-module-reader-path
                                   _path92007_
                                   gx#current-module-reader-args
                                   _args92095_)))
                            (values _prelude92101_
                                    _module-id92161_
                                    _module-ns92166_
                                    _body92169_)))))))
                 (_string-e92011_
                  (lambda (_obj92088_ _what92089_)
                    (if (string? _obj92088_)
                        _obj92088_
                        (if (symbol? _obj92088_)
                            (symbol->string _obj92088_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what92089_)
                             _path92007_
                             _obj92088_)))))
                 (_read-lang-args92012_
                  (lambda (_inp92043_ _args92044_)
                    (let* ((_args9204592053_ _args92044_)
                           (_else9204792061_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path92007_)))
                           (_K9204992076_
                            (lambda (_args92064_ _prelude92065_)
                              (let* ((_pkg92067_
                                      (pgetq__0 'package: _args92064_))
                                     (_pkg92069_
                                      (if _pkg92067_
                                          (_string-e92011_
                                           _pkg92067_
                                           '"package")
                                          '#f))
                                     (_ns92071_
                                      (pgetq__0 'namespace: _args92064_))
                                     (_ns92073_
                                      (if _ns92071_
                                          (_string-e92011_
                                           _ns92071_
                                           '"namespace")
                                          '#f)))
                                (_read-body92010_
                                 _inp92043_
                                 _prelude92065_
                                 _ns92073_
                                 _pkg92069_
                                 _args92064_)))))
                      (if (##pair? _args9204592053_)
                          (let ((_hd9205092079_ (##car _args9204592053_))
                                (_tl9205192081_ (##cdr _args9204592053_)))
                            (let* ((_prelude92084_ _hd9205092079_)
                                   (_args92086_ _tl9205192081_))
                              (_K9204992076_ _args92086_ _prelude92084_)))
                          (_else9204792061_)))))
                 (_read-lang92013_
                  (lambda (_inp92018_)
                    (let* ((_head92020_ (read-line _inp92018_))
                           (_$e92022_ (string-index__0 _head92020_ '#\space)))
                      (if _$e92022_
                          ((lambda (_ix92025_)
                             (let ((_lang92027_
                                    (substring _head92020_ '0 _ix92025_)))
                               (if (equal? _lang92027_ '"#lang")
                                   (let* ((_rest92029_
                                           (substring
                                            _head92020_
                                            (fx+ _ix92025_ '1)
                                            (string-length _head92020_)))
                                          (_args92040_
                                           (with-catch
                                            (lambda (_g9203092032_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path92007_
                                               _g9203092032_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest92029_
                                               (lambda (_g9203592037_)
                                                 (read-all
                                                  _g9203592037_
                                                  read)))))))
                                     (_read-lang-args92012_
                                      _inp92018_
                                      _args92040_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path92007_))))
                           _$e92022_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path92007_)))))
                 (_read-e92014_
                  (lambda (_inp92016_)
                    (if (eq? (peek-char _inp92016_) '#\#)
                        (_read-lang92013_ _inp92016_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path92007_)))))
          (gx#call-with-input-source-file _path92007_ _read-e92014_))))
    (define gx#core-read-module-package
      (lambda (_path91961_ _pre91962_ _ns91963_)
        (letrec ((_string-e91965_
                  (lambda (_e92005_)
                    (if (symbol? _e92005_)
                        (symbol->string _e92005_)
                        (if (string? _e92005_)
                            _e92005_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e92005_))))))
          (let _lp91967_ ((_dir91969_ (path-directory _path91961_))
                          (_pkg-path91970_ '()))
            (let ((_gerbil.pkg91972_ (path-expand '"gerbil.pkg" _dir91969_)))
              (if (file-exists? _gerbil.pkg91972_)
                  (let ((_plist91974_
                         (gx#core-library-package-plist__% _dir91969_ '#t)))
                    (if (null? _plist91974_)
                        (let ((_pkg91976_
                               (if (not (null? _pkg-path91970_))
                                   (string-join _pkg-path91970_ '"/")
                                   '#f)))
                          (values _pre91962_ _ns91963_ _pkg91976_))
                        (if (list? _plist91974_)
                            (let* ((_root91978_
                                    (pgetq__0 'package: _plist91974_))
                                   (_pkg91982_
                                    (let ((_pkg-path91980_
                                           (if _root91978_
                                               (cons (_string-e91965_
                                                      _root91978_)
                                                     _pkg-path91970_)
                                               _pkg-path91970_)))
                                      (if (not (null? _pkg-path91980_))
                                          (string-join _pkg-path91980_ '"/")
                                          '#f)))
                                   (_ns91989_
                                    (let ((_ns91987_
                                           (let ((_$e91984_ _ns91963_))
                                             (if _$e91984_
                                                 _$e91984_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91974_)))))
                                      (if _ns91987_
                                          (_string-e91965_ _ns91987_)
                                          '#f)))
                                   (_pre91994_
                                    (let ((_$e91991_ _pre91962_))
                                      (if _$e91991_
                                          _$e91991_
                                          (pgetq__0 'prelude: _plist91974_)))))
                              (values _pre91994_ _ns91989_ _pkg91982_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91974_))))
                  (let ((_dir*91997_
                         (path-strip-trailing-directory-separator _dir91969_)))
                    (if (or (string-empty? _dir*91997_)
                            (equal? _dir91969_ _dir*91997_))
                        (values _pre91962_ _ns91963_ '#f)
                        (let ((_xpath92002_ (path-strip-directory _dir*91997_))
                              (_xdir92003_ (path-directory _dir*91997_)))
                          (_lp91967_
                           _xdir92003_
                           (cons _xpath92002_ _pkg-path91970_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91959_)
        (path-strip-extension (path-strip-directory _path91959_))))
    (define gx#core-module-path->id
      (lambda (_path91957_)
        (string->symbol (gx#core-module-path->namespace _path91957_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91936_ _rel91937_)
        (let* ((_path91939_ (gx#stx-e _stx-path91936_))
               (_path91941_
                (if (string-empty? (path-extension _path91939_))
                    (string-append _path91939_ '".ss")
                    _path91939_)))
          (gx#core-resolve-path__%
           _path91941_
           (let ((_$e91944_ (gx#stx-source _stx-path91936_)))
             (if _$e91944_ _$e91944_ _rel91937_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91950_)
        (let ((_rel91952_ '#f))
          (gx#core-resolve-module-path__% _stx-path91950_ _rel91952_))))
    (define gx#core-resolve-module-path
      (lambda _g93520_
        (let ((_g93519_ (##length _g93520_)))
          (cond ((##fx= _g93519_ 1)
                 (apply (lambda (_stx-path91950_)
                          (gx#core-resolve-module-path__0 _stx-path91950_))
                        _g93520_))
                ((##fx= _g93519_ 2)
                 (apply (lambda (_stx-path91954_ _rel91955_)
                          (gx#core-resolve-module-path__%
                           _stx-path91954_
                           _rel91955_))
                        _g93520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g93520_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91822_)
        (let* ((_spath91824_ (symbol->string (gx#stx-e _libpath91822_)))
               (_spath91826_
                (substring _spath91824_ '1 (string-length _spath91824_)))
               (_ext91828_ (path-extension _spath91826_))
               (_ssi91830_
                (if (string-empty? _ext91828_)
                    (string-append _spath91826_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91826_)
                     '".ssi")))
               (_srcs91834_
                (if (string-empty? _ext91828_)
                    (map (lambda (_ext91832_)
                           (string-append _spath91826_ _ext91832_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91826_ '()))))
          (let _lp91837_ ((_rest91839_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9184091849_ _rest91839_)
                   (_E9184391853_
                    (lambda ()
                      (error '"No clause matching" _rest9184091849_))))
              (let ((_K9184591923_
                     (lambda (_rest91864_ _dir91865_)
                       (letrec ((_resolve91867_
                                 (lambda (_ssi91879_ _srcs91880_)
                                   (let ((_compiled-path91882_
                                          (path-expand _ssi91879_ _dir91865_)))
                                     (if (file-exists? _compiled-path91882_)
                                         (path-normalize _compiled-path91882_)
                                         (let _lpr91884_ ((_rest-src91886_
                                                           _srcs91880_))
                                           (let* ((_rest-src9188791895_
                                                   _rest-src91886_)
                                                  (_else9188991903_
                                                   (lambda ()
                                                     (_lp91837_ _rest91864_)))
                                                  (_K9189191911_
                                                   (lambda (_rest-src91906_
                                                            _src91907_)
                                                     (let ((_src-path91909_
                                                            (path-expand
                                                             _src91907_
                                                             _dir91865_)))
                                                       (if (file-exists?
                                                            _src-path91909_)
                                                           (path-normalize
                                                            _src-path91909_)
                                                           (_lpr91884_
                                                            _rest-src91906_))))))
                                             (if (##pair? _rest-src9188791895_)
                                                 (let ((_hd9189291914_
                                                        (##car _rest-src9188791895_))
                                                       (_tl9189391916_
                                                        (##cdr _rest-src9188791895_)))
                                                   (let* ((_src91919_
                                                           _hd9189291914_)
                                                          (_rest-src91921_
                                                           _tl9189391916_))
                                                     (_K9189191911_
                                                      _rest-src91921_
                                                      _src91919_)))
                                                 (_else9188991903_)))))))))
                         (let ((_$e91869_
                                (gx#core-library-package-path-prefix
                                 _dir91865_)))
                           (if _$e91869_
                               ((lambda (_prefix91872_)
                                  (if (string-prefix?
                                       _prefix91872_
                                       _spath91826_)
                                      (let ((_ssi91876_
                                             (substring
                                              _ssi91830_
                                              (string-length _prefix91872_)
                                              (string-length _ssi91830_)))
                                            (_srcs91877_
                                             (map (lambda (_src91874_)
                                                    (substring
                                                     _src91874_
                                                     (string-length
                                                      _prefix91872_)
                                                     (string-length
                                                      _src91874_)))
                                                  _srcs91834_)))
                                        (_resolve91867_
                                         _ssi91876_
                                         _srcs91877_))
                                      (_lp91837_ _rest91864_)))
                                _$e91869_)
                               (_resolve91867_ _ssi91830_ _srcs91834_))))))
                    (_K9184491858_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91822_))))
                (let ((_try-match9184291861_
                       (lambda ()
                         (if (##null? _rest9184091849_)
                             (_K9184491858_)
                             (_E9184391853_)))))
                  (if (##pair? _rest9184091849_)
                      (let ((_tl9184791928_ (##cdr _rest9184091849_))
                            (_hd9184691926_ (##car _rest9184091849_)))
                        (let ((_dir91931_ _hd9184691926_)
                              (_rest91933_ _tl9184791928_))
                          (_K9184591923_ _rest91933_ _dir91931_)))
                      (_try-match9184291861_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91795_)
        (letrec ((_resolve91797_
                  (lambda (_path91814_ _base91815_)
                    (let ((_$e91817_ (string-rindex__0 _base91815_ '#\/)))
                      (if _$e91817_
                          ((lambda (_idx91820_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91815_ '0 _idx91820_)
                                '"/"
                                _path91814_))))
                           _$e91817_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91814_))))))))
          (let ((_spath91799_ (symbol->string (gx#stx-e _modpath91795_)))
                (_mod91800_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91800_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91795_))
            (let ((_mpath91802_
                   (symbol->string
                    (##structure-ref
                     _mod91800_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91804_ ((_spath91806_ _spath91799_)
                              (_mpath91807_ _mpath91802_))
                (if (string-prefix? '"../" _spath91806_)
                    (let ((_$e91809_ (string-rindex__0 _mpath91807_ '#\/)))
                      (if _$e91809_
                          ((lambda (_idx91812_)
                             (_lp91804_
                              (substring
                               _spath91806_
                               '3
                               (string-length _spath91806_))
                              (substring _mpath91807_ '0 _idx91812_)))
                           _$e91809_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91795_)))
                    (if (string-prefix? '"./" _spath91806_)
                        (_lp91804_
                         (substring
                          _spath91806_
                          '2
                          (string-length _spath91806_))
                         _mpath91807_)
                        (_resolve91797_ _spath91806_ _mpath91807_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91788_)
        (let ((_$e91790_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91788_))))
          (if _$e91790_
              ((lambda (_pkg91793_)
                 (string-append (symbol->string _pkg91793_) '"/"))
               _$e91790_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91760_ _exists?91761_)
        (let* ((_cache91763_ (gx#core-library-package-cache))
               (_$e91765_ (hash-get _cache91763_ _dir91760_)))
          (if _$e91765_
              (values _$e91765_)
              (let* ((_gerbil.pkg91768_ (path-expand '"gerbil.pkg" _dir91760_))
                     (_plist91775_
                      (if (or _exists?91761_ (file-exists? _gerbil.pkg91768_))
                          (let ((_e91773_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91768_
                                  read)))
                            (if (eof-object? _e91773_)
                                '()
                                (if (list? _e91773_)
                                    _e91773_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91768_
                                     _e91773_))))
                          '())))
                (hash-put! _cache91763_ _dir91760_ _plist91775_)
                _plist91775_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91781_)
        (let ((_exists?91783_ '#f))
          (gx#core-library-package-plist__% _dir91781_ _exists?91783_))))
    (define gx#core-library-package-plist
      (lambda _g93522_
        (let ((_g93521_ (##length _g93522_)))
          (cond ((##fx= _g93521_ 1)
                 (apply (lambda (_dir91781_)
                          (gx#core-library-package-plist__0 _dir91781_))
                        _g93522_))
                ((##fx= _g93521_ 2)
                 (apply (lambda (_dir91785_ _exists?91786_)
                          (gx#core-library-package-plist__%
                           _dir91785_
                           _exists?91786_))
                        _g93522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g93522_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91754_ (gx#current-expander-module-library-package-cache)))
          (if _$e91754_
              (values _$e91754_)
              (let ((_cache91757_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91757_)
                _cache91757_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91751_) (gx#core-special-module-path? _stx91751_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91749_) (gx#core-special-module-path? _stx91749_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91744_ _char91745_)
        (if (gx#identifier? _stx91744_)
            (if (interned-symbol? (gx#stx-e _stx91744_))
                (let ((_str91747_ (symbol->string (gx#stx-e _stx91744_))))
                  (if (fx> (string-length _str91747_) '1)
                      (eq? (string-ref _str91747_ '0) _char91745_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91738_)
        (gx#core-bound-identifier?__%
         _stx91738_
         (lambda (_g9173991741_)
           (gx#expander-binding?__% _g9173991741_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91732_)
        (gx#core-bound-identifier?__%
         _stx91732_
         (lambda (_g9173391735_)
           (gx#expander-binding?__% _g9173391735_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx91719_)
        (letrec ((_module-prelude?91721_
                  (lambda (_e91727_)
                    (let ((_$e91729_
                           (##structure-instance-of?
                            _e91727_
                            'gx#module-context::t)))
                      (if _$e91729_
                          _$e91729_
                          (##structure-instance-of?
                           _e91727_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx91719_
           (lambda (_g9172291724_)
             (gx#expander-binding?__%
              _g9172291724_
              _module-prelude?91721_))))))
    (define gx#core-bind-import!__%
      (lambda (_in91649_ _ctx91650_ _force-weak?91651_)
        (let* ((_in9165291661_ _in91649_)
               (_E9165491665_
                (lambda () (error '"No clause matching" _in9165291661_)))
               (_K9165591678_
                (lambda (_weak?91668_ _phi91669_ _key91670_ _source91671_)
                  (gx#core-bind!__%
                   _key91670_
                   (let ((_e91673_
                          (gx#core-resolve-module-export _source91671_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e91673_ '1 gx#binding::t '#f)
                      _key91670_
                      _phi91669_
                      _e91673_
                      (##unchecked-structure-ref
                       _source91671_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e91675_ _force-weak?91651_))
                        (if _$e91675_ _$e91675_ _weak?91668_))))
                   gx#core-context-rebind?
                   _phi91669_
                   _ctx91650_))))
          (if (##structure-direct-instance-of?
               _in9165291661_
               'gx#module-import::t)
              (let* ((_e9165691681_
                      (##unchecked-structure-ref
                       _in9165291661_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source91684_ _e9165691681_)
                     (_e9165791686_
                      (##unchecked-structure-ref
                       _in9165291661_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key91689_ _e9165791686_)
                     (_e9165891691_
                      (##unchecked-structure-ref
                       _in9165291661_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi91694_ _e9165891691_)
                     (_e9165991696_
                      (##unchecked-structure-ref
                       _in9165291661_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?91699_ _e9165991696_))
                (_K9165591678_
                 _weak?91699_
                 _phi91694_
                 _key91689_
                 _source91684_))
              (_E9165491665_)))))
    (define gx#core-bind-import!__0
      (lambda (_in91704_)
        (let* ((_ctx91706_ (gx#current-expander-context))
               (_force-weak?91708_ '#f))
          (gx#core-bind-import!__% _in91704_ _ctx91706_ _force-weak?91708_))))
    (define gx#core-bind-import!__1
      (lambda (_in91710_ _ctx91711_)
        (let ((_force-weak?91713_ '#f))
          (gx#core-bind-import!__% _in91710_ _ctx91711_ _force-weak?91713_))))
    (define gx#core-bind-import!
      (lambda _g93524_
        (let ((_g93523_ (##length _g93524_)))
          (cond ((##fx= _g93523_ 1)
                 (apply (lambda (_in91704_)
                          (gx#core-bind-import!__0 _in91704_))
                        _g93524_))
                ((##fx= _g93523_ 2)
                 (apply (lambda (_in91710_ _ctx91711_)
                          (gx#core-bind-import!__1 _in91710_ _ctx91711_))
                        _g93524_))
                ((##fx= _g93523_ 3)
                 (apply (lambda (_in91715_ _ctx91716_ _force-weak?91717_)
                          (gx#core-bind-import!__%
                           _in91715_
                           _ctx91716_
                           _force-weak?91717_))
                        _g93524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g93524_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in91635_ _ctx91636_)
        (gx#core-bind-import!__% _in91635_ _ctx91636_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in91641_)
        (let ((_ctx91643_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in91641_ _ctx91643_))))
    (define gx#core-bind-weak-import!
      (lambda _g93526_
        (let ((_g93525_ (##length _g93526_)))
          (cond ((##fx= _g93525_ 1)
                 (apply (lambda (_in91641_)
                          (gx#core-bind-weak-import!__0 _in91641_))
                        _g93526_))
                ((##fx= _g93525_ 2)
                 (apply (lambda (_in91645_ _ctx91646_)
                          (gx#core-bind-weak-import!__% _in91645_ _ctx91646_))
                        _g93526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g93526_))))))
    (define gx#core-resolve-module-export
      (lambda (_out91526_)
        (letrec ((_subst91528_
                  (lambda (_key91574_)
                    (let* ((_key9157591583_ _key91574_)
                           (_else9157791591_ (lambda () _key91574_))
                           (_K9157991622_
                            (lambda (_mark91594_ _id91595_)
                              (let* ((_mark9159691602_ _mark91594_)
                                     (_E9159891606_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9159691602_)))
                                     (_K9159991614_
                                      (lambda (_subst91609_)
                                        (let ((_$e91611_
                                               (if _subst91609_
                                                   (hash-get
                                                    _subst91609_
                                                    _id91595_)
                                                   '#f)))
                                          (if _$e91611_
                                              _$e91611_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key91574_))))))
                                (if (##structure-instance-of?
                                     _mark9159691602_
                                     'gx#expander-mark::t)
                                    (let* ((_e9160091617_
                                            (##unchecked-structure-ref
                                             _mark9159691602_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst91620_ _e9160091617_))
                                      (_K9159991614_ _subst91620_))
                                    (_E9159891606_))))))
                      (if (##pair? _key9157591583_)
                          (let ((_hd9158091625_ (##car _key9157591583_))
                                (_tl9158191627_ (##cdr _key9157591583_)))
                            (let* ((_id91630_ _hd9158091625_)
                                   (_mark91632_ _tl9158191627_))
                              (_K9157991622_ _mark91632_ _id91630_)))
                          (_else9157791591_))))))
          (let* ((_out9152991539_ _out91526_)
                 (_E9153191543_
                  (lambda () (error '"No clause matching" _out9152991539_)))
                 (_K9153291550_
                  (lambda (_phi91546_ _key91547_ _ctx91548_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx91548_ _phi91546_)
                     (_subst91528_ _key91547_)))))
            (if (##structure-direct-instance-of?
                 _out9152991539_
                 'gx#module-export::t)
                (let* ((_e9153391553_
                        (##unchecked-structure-ref
                         _out9152991539_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx91556_ _e9153391553_)
                       (_e9153491558_
                        (##unchecked-structure-ref
                         _out9152991539_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key91561_ _e9153491558_)
                       (_e9153591563_
                        (##unchecked-structure-ref
                         _out9152991539_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi91566_ _e9153591563_)
                       (_e9153691568_
                        (##unchecked-structure-ref
                         _out9152991539_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9153791571_
                        (##unchecked-structure-ref
                         _out9152991539_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9153291550_ _phi91566_ _key91561_ _ctx91556_))
                (_E9153191543_))))))
    (define gx#core-module-export->import__%
      (lambda (_out91451_ _rename91452_ _dphi91453_)
        (let* ((_out9145491464_ _out91451_)
               (_E9145691468_
                (lambda () (error '"No clause matching" _out9145491464_)))
               (_K9145791480_
                (lambda (_weak?91471_
                         _name91472_
                         _phi91473_
                         _key91474_
                         _ctx91475_)
                  (##structure
                   gx#module-import::t
                   _out91451_
                   (let ((_$e91477_ _rename91452_))
                     (if _$e91477_ _$e91477_ _name91472_))
                   (fx+ _phi91473_ _dphi91453_)
                   _weak?91471_))))
          (if (##structure-direct-instance-of?
               _out9145491464_
               'gx#module-export::t)
              (let* ((_e9145891483_
                      (##unchecked-structure-ref
                       _out9145491464_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx91486_ _e9145891483_)
                     (_e9145991488_
                      (##unchecked-structure-ref
                       _out9145491464_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key91491_ _e9145991488_)
                     (_e9146091493_
                      (##unchecked-structure-ref
                       _out9145491464_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi91496_ _e9146091493_)
                     (_e9146191498_
                      (##unchecked-structure-ref
                       _out9145491464_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name91501_ _e9146191498_)
                     (_e9146291503_
                      (##unchecked-structure-ref
                       _out9145491464_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?91506_ _e9146291503_))
                (_K9145791480_
                 _weak?91506_
                 _name91501_
                 _phi91496_
                 _key91491_
                 _ctx91486_))
              (_E9145691468_)))))
    (define gx#core-module-export->import__0
      (lambda (_out91511_)
        (let* ((_rename91513_ '#f) (_dphi91515_ '0))
          (gx#core-module-export->import__%
           _out91511_
           _rename91513_
           _dphi91515_))))
    (define gx#core-module-export->import__1
      (lambda (_out91517_ _rename91518_)
        (let ((_dphi91520_ '0))
          (gx#core-module-export->import__%
           _out91517_
           _rename91518_
           _dphi91520_))))
    (define gx#core-module-export->import
      (lambda _g93528_
        (let ((_g93527_ (##length _g93528_)))
          (cond ((##fx= _g93527_ 1)
                 (apply (lambda (_out91511_)
                          (gx#core-module-export->import__0 _out91511_))
                        _g93528_))
                ((##fx= _g93527_ 2)
                 (apply (lambda (_out91517_ _rename91518_)
                          (gx#core-module-export->import__1
                           _out91517_
                           _rename91518_))
                        _g93528_))
                ((##fx= _g93527_ 3)
                 (apply (lambda (_out91522_ _rename91523_ _dphi91524_)
                          (gx#core-module-export->import__%
                           _out91522_
                           _rename91523_
                           _dphi91524_))
                        _g93528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g93528_))))))
    (define gx#core-expand-module%
      (lambda (_stx91379_)
        (letrec ((_make-context91381_
                  (lambda (_id91432_)
                    (let* ((_super91434_ (gx#current-expander-context))
                           (_bind-id91436_ (gx#stx-e _id91432_))
                           (_mod-id91438_
                            (if (##structure-instance-of?
                                 _super91434_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super91434_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id91436_)
                                _bind-id91436_))
                           (_ns91440_ (symbol->string _mod-id91438_))
                           (_path91447_
                            (if (##structure-instance-of?
                                 _super91434_
                                 'gx#module-context::t)
                                (let ((_path91442_
                                       (##unchecked-structure-ref
                                        _super91434_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path91442_)
                                          (null? _path91442_))
                                      (cons _bind-id91436_ _path91442_)
                                      (if (not _path91442_)
                                          _bind-id91436_
                                          (cons _bind-id91436_
                                                (cons _path91442_ '())))))
                                _bind-id91436_)))
                      (let ((__obj93504
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
                         __obj93504
                         _mod-id91438_
                         _super91434_
                         _ns91440_
                         _path91447_)
                        __obj93504)))))
          (let* ((_e9138291392_ _stx91379_)
                 (_E9138491396_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9138291392_)))
                 (_E9138391428_
                  (lambda ()
                    (if (gx#stx-pair? _e9138291392_)
                        (let ((_e9138591400_ (gx#syntax-e _e9138291392_)))
                          (let ((_hd9138691403_ (##car _e9138591400_))
                                (_tl9138791405_ (##cdr _e9138591400_)))
                            (if (gx#stx-pair? _tl9138791405_)
                                (let ((_e9138891408_
                                       (gx#syntax-e _tl9138791405_)))
                                  (let ((_hd9138991411_ (##car _e9138891408_))
                                        (_tl9139091413_ (##cdr _e9138891408_)))
                                    (let* ((_id91416_ _hd9138991411_)
                                           (_body91418_ _tl9139091413_))
                                      (if (and (gx#identifier? _id91416_)
                                               (gx#stx-list? _body91418_))
                                          (let* ((_ctx91420_
                                                  (_make-context91381_
                                                   _id91416_))
                                                 (_body91422_
                                                  (gx#core-expand-module-begin
                                                   _body91418_
                                                   _ctx91420_))
                                                 (_body91424_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body91422_)
                                                   (gx#stx-source
                                                    _stx91379_))))
                                            (##unchecked-structure-set!
                                             _ctx91420_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body91424_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx91420_
                                             _body91424_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id91416_
                                             _ctx91420_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id91416_)
                                              _body91424_)
                                             (gx#stx-source _stx91379_)))
                                          (_E9138491396_)))))
                                (_E9138491396_))))
                        (_E9138491396_)))))
            (_E9138391428_)))))
    (define gx#core-expand-module-begin
      (lambda (_body91345_ _ctx91346_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx91349_
                   (gx#core-expand-head (cons '%%begin-module _body91345_)))
                  (_e9135091357_ _stx91349_)
                  (_E9135291361_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx91349_)))
                  (_E9135191375_
                   (lambda ()
                     (if (gx#stx-pair? _e9135091357_)
                         (let ((_e9135391365_ (gx#syntax-e _e9135091357_)))
                           (let ((_hd9135491368_ (##car _e9135391365_))
                                 (_tl9135591370_ (##cdr _e9135391365_)))
                             (if (and (gx#identifier? _hd9135491368_)
                                      (gx#core-identifier=?
                                       _hd9135491368_
                                       '%#begin-module))
                                 (let ((_body91373_ _tl9135591370_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx91349_)
                                           _body91373_
                                           (gx#core-expand-module-body
                                            _body91373_))
                                       (_E9135291361_)))
                                 (_E9135291361_))))
                         (_E9135291361_)))))
             (_E9135191375_)))
         gx#current-expander-context
         _ctx91346_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body91141_)
        (letrec ((_expand-special91143_
                  (lambda (_hd91272_ _K91273_ _rest91274_ _r91275_)
                    (let* ((_e9127691293_ _hd91272_)
                           (_E9128891297_
                            (lambda ()
                              (_K91273_
                               _rest91274_
                               (cons (gx#core-expand-top _hd91272_)
                                     _r91275_))))
                           (_E9127891309_
                            (lambda ()
                              (if (gx#stx-pair? _e9127691293_)
                                  (let ((_e9128991301_
                                         (gx#syntax-e _e9127691293_)))
                                    (let ((_hd9129091304_
                                           (##car _e9128991301_))
                                          (_tl9129191306_
                                           (##cdr _e9128991301_)))
                                      (if (and (gx#identifier? _hd9129091304_)
                                               (gx#core-identifier=?
                                                _hd9129091304_
                                                '%#export))
                                          (if '#t
                                              (_K91273_
                                               _rest91274_
                                               (cons _hd91272_ _r91275_))
                                              (_E9128891297_))
                                          (_E9128891297_))))
                                  (_E9128891297_))))
                           (_E9127791341_
                            (lambda ()
                              (if (gx#stx-pair? _e9127691293_)
                                  (let ((_e9127991313_
                                         (gx#syntax-e _e9127691293_)))
                                    (let ((_hd9128091316_
                                           (##car _e9127991313_))
                                          (_tl9128191318_
                                           (##cdr _e9127991313_)))
                                      (if (and (gx#identifier? _hd9128091316_)
                                               (gx#core-identifier=?
                                                _hd9128091316_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9128191318_)
                                              (let ((_e9128291321_
                                                     (gx#syntax-e
                                                      _tl9128191318_)))
                                                (let ((_hd9128391324_
                                                       (##car _e9128291321_))
                                                      (_tl9128491326_
                                                       (##cdr _e9128291321_)))
                                                  (let ((_hd-bind91329_
                                                         _hd9128391324_))
                                                    (if (gx#stx-pair?
                                                         _tl9128491326_)
                                                        (let ((_e9128591331_
                                                               (gx#syntax-e
                                                                _tl9128491326_)))
                                                          (let ((_hd9128691334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9128591331_))
                        (_tl9128791336_ (##cdr _e9128591331_)))
                    (let ((_expr91339_ _hd9128691334_))
                      (if (gx#stx-null? _tl9128791336_)
                          (if (gx#core-bind-values? _hd-bind91329_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind91329_)
                                (_K91273_
                                 _rest91274_
                                 (cons _hd91272_ _r91275_)))
                              (_E9127891309_))
                          (_E9127891309_)))))
                (_E9127891309_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9127891309_))
                                          (_E9127891309_))))
                                  (_E9127891309_)))))
                      (_E9127791341_))))
                 (_expand-body91144_
                  (lambda (_rbody91146_)
                    (let _lp91148_ ((_rest91150_ _rbody91146_)
                                    (_body91151_ '()))
                      (let* ((_rest9115291160_ _rest91150_)
                             (_else9115491168_ (lambda () _body91151_))
                             (_K9115691260_
                              (lambda (_rest91171_ _hd91172_)
                                (let* ((_e9117391194_ _hd91172_)
                                       (_E9118991198_
                                        (lambda ()
                                          (_lp91148_
                                           _rest91171_
                                           (cons (gx#core-expand-expression
                                                  _hd91172_)
                                                 _body91151_))))
                                       (_E9118591212_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9117391194_)
                                              (let ((_e9119091202_
                                                     (gx#syntax-e
                                                      _e9117391194_)))
                                                (let ((_hd9119191205_
                                                       (##car _e9119091202_))
                                                      (_tl9119291207_
                                                       (##cdr _e9119091202_)))
                                                  (let ((_form91210_
                                                         _hd9119191205_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form91210_
                                                         gx#special-form-binding?)
                                                        (_lp91148_
                                                         _rest91171_
                                                         (cons _hd91172_
                                                               _body91151_))
                                                        (_E9118991198_)))))
                                              (_E9118991198_))))
                                       (_E9117591224_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9117391194_)
                                              (let ((_e9118691216_
                                                     (gx#syntax-e
                                                      _e9117391194_)))
                                                (let ((_hd9118791219_
                                                       (##car _e9118691216_))
                                                      (_tl9118891221_
                                                       (##cdr _e9118691216_)))
                                                  (if (and (gx#identifier?
                                                            _hd9118791219_)
                                                           (gx#core-identifier=?
                                                            _hd9118791219_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp91148_
                                                           _rest91171_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91172_)
                         _body91151_))
                  (_E9118591212_))
              (_E9118591212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9118591212_))))
                                       (_E9117491256_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9117391194_)
                                              (let ((_e9117691228_
                                                     (gx#syntax-e
                                                      _e9117391194_)))
                                                (let ((_hd9117791231_
                                                       (##car _e9117691228_))
                                                      (_tl9117891233_
                                                       (##cdr _e9117691228_)))
                                                  (if (and (gx#identifier?
                                                            _hd9117791231_)
                                                           (gx#core-identifier=?
                                                            _hd9117791231_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9117891233_)
                                                          (let ((_e9117991236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9117891233_)))
                    (let ((_hd9118091239_ (##car _e9117991236_))
                          (_tl9118191241_ (##cdr _e9117991236_)))
                      (let ((_hd-bind91244_ _hd9118091239_))
                        (if (gx#stx-pair? _tl9118191241_)
                            (let ((_e9118291246_ (gx#syntax-e _tl9118191241_)))
                              (let ((_hd9118391249_ (##car _e9118291246_))
                                    (_tl9118491251_ (##cdr _e9118291246_)))
                                (let ((_expr91254_ _hd9118391249_))
                                  (if (gx#stx-null? _tl9118491251_)
                                      (if '#t
                                          (_lp91148_
                                           _rest91171_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind91244_)
                                                   (gx#core-expand-expression
                                                    _expr91254_))
                                                  (gx#stx-source _hd91172_))
                                                 _body91151_))
                                          (_E9117591224_))
                                      (_E9117591224_)))))
                            (_E9117591224_)))))
                  (_E9117591224_))
              (_E9117591224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9117591224_)))))
                                  (_E9117491256_)))))
                        (if (##pair? _rest9115291160_)
                            (let ((_hd9115791263_ (##car _rest9115291160_))
                                  (_tl9115891265_ (##cdr _rest9115291160_)))
                              (let* ((_hd91268_ _hd9115791263_)
                                     (_rest91270_ _tl9115891265_))
                                (_K9115691260_ _rest91270_ _hd91268_)))
                            (_else9115491168_)))))))
          (_expand-body91144_
           (gx#core-expand-block__%
            (cons '%#begin-module _body91141_)
            _expand-special91143_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90984_
               _expanded?90985_
               _method90986_
               _current-phi90987_
               _expand190988_)
        (letrec ((_K90990_
                  (lambda (_rest91108_ _r91109_)
                    (let* ((_e9111091117_ _rest91108_)
                           (_E9111291121_ (lambda () _r91109_))
                           (_E9111191137_
                            (lambda ()
                              (if (gx#stx-pair? _e9111091117_)
                                  (let ((_e9111391125_
                                         (gx#syntax-e _e9111091117_)))
                                    (let ((_hd9111491128_
                                           (##car _e9111391125_))
                                          (_tl9111591130_
                                           (##cdr _e9111391125_)))
                                      (let* ((_hd91133_ _hd9111491128_)
                                             (_rest91135_ _tl9111591130_))
                                        (if '#t
                                            (_step90991_
                                             _hd91133_
                                             _rest91135_
                                             _r91109_)
                                            (_E9111291121_)))))
                                  (_E9111291121_)))))
                      (_E9111191137_))))
                 (_step90991_
                  (lambda (_hd91022_ _rest91023_ _r91024_)
                    (let* ((_e9102591043_ _hd91022_)
                           (_E9103891047_
                            (lambda ()
                              (if (_expanded?90985_ (gx#stx-e _hd91022_))
                                  (_K90990_
                                   _rest91023_
                                   (cons (gx#stx-e _hd91022_) _r91024_))
                                  (_expand190988_
                                   _hd91022_
                                   _K90990_
                                   _rest91023_
                                   _r91024_))))
                           (_E9103491063_
                            (lambda ()
                              (if (gx#stx-pair? _e9102591043_)
                                  (let ((_e9103991051_
                                         (gx#syntax-e _e9102591043_)))
                                    (let ((_hd9104091054_
                                           (##car _e9103991051_))
                                          (_tl9104191056_
                                           (##cdr _e9103991051_)))
                                      (let* ((_macro91059_ _hd9104091054_)
                                             (_body91061_ _tl9104191056_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro91059_
                                             gx#syntax-binding?)
                                            (_K90990_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro91059_)
                                                    _hd91022_
                                                    _method90986_)
                                                   _rest91023_)
                                             _r91024_)
                                            (_E9103891047_)))))
                                  (_E9103891047_))))
                           (_E9102791077_
                            (lambda ()
                              (if (gx#stx-pair? _e9102591043_)
                                  (let ((_e9103591067_
                                         (gx#syntax-e _e9102591043_)))
                                    (let ((_hd9103691070_
                                           (##car _e9103591067_))
                                          (_tl9103791072_
                                           (##cdr _e9103591067_)))
                                      (if (eq? (gx#stx-e _hd9103691070_)
                                               'begin:)
                                          (let ((_body91075_ _tl9103791072_))
                                            (if '#t
                                                (_K90990_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest91023_
                                                  _body91075_)
                                                 _r91024_)
                                                (_E9103491063_)))
                                          (_E9103491063_))))
                                  (_E9103491063_))))
                           (_E9102691104_
                            (lambda ()
                              (if (gx#stx-pair? _e9102591043_)
                                  (let ((_e9102891081_
                                         (gx#syntax-e _e9102591043_)))
                                    (let ((_hd9102991084_
                                           (##car _e9102891081_))
                                          (_tl9103091086_
                                           (##cdr _e9102891081_)))
                                      (if (eq? (gx#stx-e _hd9102991084_) 'phi:)
                                          (if (gx#stx-pair? _tl9103091086_)
                                              (let ((_e9103191089_
                                                     (gx#syntax-e
                                                      _tl9103091086_)))
                                                (let ((_hd9103291092_
                                                       (##car _e9103191089_))
                                                      (_tl9103391094_
                                                       (##cdr _e9103191089_)))
                                                  (let* ((_dphi91097_
                                                          _hd9103291092_)
                                                         (_body91099_
                                                          _tl9103391094_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi91097_)
                                                        (let ((_rbody91102_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90990_ _body91099_ '()))
                        _current-phi90987_
                        (fx+ (gx#stx-e _dphi91097_) (_current-phi90987_)))))
                  (_K90990_ _rest91023_ (foldr1 cons _r91024_ _rbody91102_)))
                (_E9102791077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9102791077_))
                                          (_E9102791077_))))
                                  (_E9102791077_)))))
                      (_E9102691104_)))))
          (let* ((_e9099290999_ _stx90984_)
                 (_E9099491003_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9099290999_)))
                 (_E9099391018_
                  (lambda ()
                    (if (gx#stx-pair? _e9099290999_)
                        (let ((_e9099591007_ (gx#syntax-e _e9099290999_)))
                          (let ((_hd9099691010_ (##car _e9099591007_))
                                (_tl9099791012_ (##cdr _e9099591007_)))
                            (let ((_body91015_ _tl9099791012_))
                              (if '#t
                                  (if (_current-phi90987_)
                                      (_K90990_ _body91015_ '())
                                      (call-with-parameters
                                       (lambda () (_K90990_ _body91015_ '()))
                                       _current-phi90987_
                                       (gx#current-expander-phi)))
                                  (_E9099491003_)))))
                        (_E9099491003_)))))
            (_E9099391018_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx90651_ _internal-expand?90652_)
        (letrec ((_expand190654_
                  (lambda (_hd90964_ _K90965_ _rest90966_ _r90967_)
                    (if (gx#core-bound-module? _hd90964_)
                        (_import190655_
                         (gx#syntax-local-e__0 _hd90964_)
                         _K90965_
                         _rest90966_
                         _r90967_)
                        (if (gx#core-library-module-path? _hd90964_)
                            (_import190655_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90964_))
                             _K90965_
                             _rest90966_
                             _r90967_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90964_)
                                (_import190655_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90964_))
                                 _K90965_
                                 _rest90966_
                                 _r90967_)
                                (let ((_e90969_ (gx#stx-e _hd90964_)))
                                  (if (pair? _e90969_)
                                      (let ((_$e90971_
                                             (gx#stx-e (car _e90969_))))
                                        (if (eq? 'spec: _$e90971_)
                                            (_import-spec90658_
                                             _hd90964_
                                             _K90965_
                                             _rest90966_
                                             _r90967_)
                                            (if (eq? 'in: _$e90971_)
                                                (_import-submodule90656_
                                                 _hd90964_
                                                 _K90965_
                                                 _rest90966_
                                                 _r90967_)
                                                (if (eq? 'runtime: _$e90971_)
                                                    (_import-runtime90657_
                                                     _hd90964_
                                                     _K90965_
                                                     _rest90966_
                                                     _r90967_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx90651_
                                                     _hd90964_)))))
                                      (if (string? _e90969_)
                                          (_import190655_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90964_
                                             (gx#stx-source _stx90651_)))
                                           _K90965_
                                           _rest90966_
                                           _r90967_)
                                          (if (##structure-instance-of?
                                               _e90969_
                                               'gx#module-context::t)
                                              (_K90965_
                                               _rest90966_
                                               (cons _e90969_ _r90967_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx90651_
                                               _hd90964_))))))))))
                 (_import190655_
                  (lambda (_ctx90953_ _K90954_ _rest90955_ _r90956_)
                    (let ((_dphi90958_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90954_
                       _rest90955_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90953_
                              _dphi90958_
                              (map (lambda (_g9095990961_)
                                     (gx#core-module-export->import__%
                                      _g9095990961_
                                      '#f
                                      _dphi90958_))
                                   (##unchecked-structure-ref
                                    _ctx90953_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90956_)))))
                 (_import-submodule90656_
                  (lambda (_hd90920_ _K90921_ _rest90922_ _r90923_)
                    (let* ((_e9092490931_ _hd90920_)
                           (_E9092690935_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9092490931_)))
                           (_E9092590949_
                            (lambda ()
                              (if (gx#stx-pair? _e9092490931_)
                                  (let ((_e9092790939_
                                         (gx#syntax-e _e9092490931_)))
                                    (let ((_hd9092890942_
                                           (##car _e9092790939_))
                                          (_tl9092990944_
                                           (##cdr _e9092790939_)))
                                      (let ((_spath90947_ _tl9092990944_))
                                        (if '#t
                                            (_import190655_
                                             (_import-spec-source90659_
                                              _spath90947_)
                                             _K90921_
                                             _rest90922_
                                             _r90923_)
                                            (_E9092690935_)))))
                                  (_E9092690935_)))))
                      (_E9092590949_))))
                 (_import-runtime90657_
                  (lambda (_hd90887_ _K90888_ _rest90889_ _r90890_)
                    (let* ((_e9089190898_ _hd90887_)
                           (_E9089390902_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9089190898_)))
                           (_E9089290916_
                            (lambda ()
                              (if (gx#stx-pair? _e9089190898_)
                                  (let ((_e9089490906_
                                         (gx#syntax-e _e9089190898_)))
                                    (let ((_hd9089590909_
                                           (##car _e9089490906_))
                                          (_tl9089690911_
                                           (##cdr _e9089490906_)))
                                      (let ((_spath90914_ _tl9089690911_))
                                        (if '#t
                                            (_K90888_
                                             _rest90889_
                                             (cons (_import-spec-source90659_
                                                    _spath90914_)
                                                   _r90890_))
                                            (_E9089390902_)))))
                                  (_E9089390902_)))))
                      (_E9089290916_))))
                 (_import-spec90658_
                  (lambda (_hd90726_ _K90727_ _rest90728_ _r90729_)
                    (let* ((_e9073090747_ _hd90726_)
                           (_E9073990751_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9073090747_)))
                           (_E9073290861_
                            (lambda ()
                              (if (gx#stx-pair? _e9073090747_)
                                  (let ((_e9074090755_
                                         (gx#syntax-e _e9073090747_)))
                                    (let ((_hd9074190758_
                                           (##car _e9074090755_))
                                          (_tl9074290760_
                                           (##cdr _e9074090755_)))
                                      (if (gx#stx-pair? _tl9074290760_)
                                          (let ((_e9074390763_
                                                 (gx#syntax-e _tl9074290760_)))
                                            (let ((_hd9074490766_
                                                   (##car _e9074390763_))
                                                  (_tl9074590768_
                                                   (##cdr _e9074390763_)))
                                              (let* ((_path90771_
                                                      _hd9074490766_)
                                                     (_specs90773_
                                                      _tl9074590768_))
                                                (if '#t
                                                    (let ((_src-ctx90775_
                                                           (_import-spec-source90659_
                                                            _path90771_))
                                                          (_exports90776_
                                                           (make-hash-table))
                                                          (_specs90777_
                                                           (gx#syntax->list
                                                            _specs90773_)))
                                                      (for-each
                                                       (lambda (_out90779_)
                                                         (hash-put!
                                                          _exports90776_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90779_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90779_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90779_))
               (##unchecked-structure-ref
                _src-ctx90775_
                '9
                gx#module-context::t
                '#f))
              (_K90727_
               _rest90728_
               (foldl1 (lambda (_spec90781_ _r90782_)
                         (let* ((_e9078390799_ _spec90781_)
                                (_E9078590803_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9078390799_)))
                                (_E9078490857_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9078390799_)
                                       (let ((_e9078690807_
                                              (gx#syntax-e _e9078390799_)))
                                         (let ((_hd9078790810_
                                                (##car _e9078690807_))
                                               (_tl9078890812_
                                                (##cdr _e9078690807_)))
                                           (let ((_phi90815_ _hd9078790810_))
                                             (if (gx#stx-pair? _tl9078890812_)
                                                 (let ((_e9078990817_
                                                        (gx#syntax-e
                                                         _tl9078890812_)))
                                                   (let ((_hd9079090820_
                                                          (##car _e9078990817_))
                                                         (_tl9079190822_
                                                          (##cdr _e9078990817_)))
                                                     (let ((_name90825_
                                                            _hd9079090820_))
                                                       (if (gx#stx-pair?
                                                            _tl9079190822_)
                                                           (let ((_e9079290827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9079190822_)))
                     (let ((_hd9079390830_ (##car _e9079290827_))
                           (_tl9079490832_ (##cdr _e9079290827_)))
                       (let ((_src-phi90835_ _hd9079390830_))
                         (if (gx#stx-pair? _tl9079490832_)
                             (let ((_e9079590837_
                                    (gx#syntax-e _tl9079490832_)))
                               (let ((_hd9079690840_ (##car _e9079590837_))
                                     (_tl9079790842_ (##cdr _e9079590837_)))
                                 (let ((_src-name90845_ _hd9079690840_))
                                   (if (gx#stx-null? _tl9079790842_)
                                       (if (and (gx#stx-fixnum? _src-phi90835_)
                                                (gx#identifier?
                                                 _src-name90845_)
                                                (gx#stx-fixnum? _phi90815_)
                                                (gx#identifier? _name90825_))
                                           (let ((_src-phi90847_
                                                  (gx#stx-e _src-phi90835_))
                                                 (_src-name90848_
                                                  (gx#core-identifier-key
                                                   _src-name90845_))
                                                 (_phi90849_
                                                  (gx#stx-e _phi90815_))
                                                 (_name90850_
                                                  (gx#core-identifier-key
                                                   _name90825_)))
                                             (let ((_$e90852_
                                                    (hash-get
                                                     _exports90776_
                                                     (cons _src-phi90847_
                                                           _src-name90848_))))
                                               (if _$e90852_
                                                   ((lambda (_out90855_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90855_
                                                             _name90850_
                                                             (fx- _phi90849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90847_))
                    _r90782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90852_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx90651_
                                                    _hd90726_))))
                                           (_E9078590803_))
                                       (_E9078590803_)))))
                             (_E9078590803_)))))
                   (_E9078590803_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9078590803_)))))
                                       (_E9078590803_)))))
                           (_E9078490857_)))
                       _r90729_
                       _specs90777_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9073990751_)))))
                                          (_E9073990751_))))
                                  (_E9073990751_))))
                           (_E9073190883_
                            (lambda ()
                              (if (gx#stx-pair? _e9073090747_)
                                  (let ((_e9073390865_
                                         (gx#syntax-e _e9073090747_)))
                                    (let ((_hd9073490868_
                                           (##car _e9073390865_))
                                          (_tl9073590870_
                                           (##cdr _e9073390865_)))
                                      (if (gx#stx-pair? _tl9073590870_)
                                          (let ((_e9073690873_
                                                 (gx#syntax-e _tl9073590870_)))
                                            (let ((_hd9073790876_
                                                   (##car _e9073690873_))
                                                  (_tl9073890878_
                                                   (##cdr _e9073690873_)))
                                              (let ((_path90881_
                                                     _hd9073790876_))
                                                (if (gx#stx-null?
                                                     _tl9073890878_)
                                                    (if '#t
                                                        (_K90727_
                                                         _rest90728_
                                                         (cons (_import-spec-source90659_
                                                                _path90881_)
                                                               _r90729_))
                                                        (_E9073290861_))
                                                    (_E9073290861_)))))
                                          (_E9073290861_))))
                                  (_E9073290861_)))))
                      (_E9073190883_))))
                 (_import-spec-source90659_
                  (lambda (_spath90724_)
                    (gx#core-import-nested-module _spath90724_ _stx90651_)))
                 (_import!90660_
                  (lambda (_rbody90673_)
                    (letrec* ((_current-ctx90675_
                               (gx#current-expander-context))
                              (_deps90676_ (make-hash-table-eq))
                              (_bind!90677_
                               (lambda (_hd90722_)
                                 (gx#core-bind-import!__1
                                  _hd90722_
                                  _current-ctx90675_))))
                      (let _lp90679_ ((_rest90681_ _rbody90673_)
                                      (_body90682_ '()))
                        (let* ((_rest9068390691_ _rest90681_)
                               (_else9068590701_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx90675_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx90675_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx90675_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body90682_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx90699_ _g93529_)
                                     (gx#eval-module _ctx90699_))
                                   _deps90676_)
                                  _body90682_))
                               (_K9068790710_
                                (lambda (_rest90704_ _hd90705_)
                                  (if (##structure-direct-instance-of?
                                       _hd90705_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!90677_ _hd90705_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd90705_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd90705_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps90676_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd90705_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd90705_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!90677_
                                             (##unchecked-structure-ref
                                              _hd90705_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd90705_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps90676_
                                                 (##unchecked-structure-ref
                                                  _hd90705_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e90707_
                                                 (##structure-instance-of?
                                                  _hd90705_
                                                  'gx#module-context::t)))
                                            (if _$e90707_
                                                _$e90707_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx90651_
                                                 _hd90705_)))))
                                  (_lp90679_
                                   _rest90704_
                                   (cons _hd90705_ _body90682_)))))
                          (if (##pair? _rest9068390691_)
                              (let ((_hd9068890713_ (##car _rest9068390691_))
                                    (_tl9068990715_ (##cdr _rest9068390691_)))
                                (let* ((_hd90718_ _hd9068890713_)
                                       (_rest90720_ _tl9068990715_))
                                  (_K9068790710_ _rest90720_ _hd90718_)))
                              (_else9068590701_)))))))
                 (_expanded-import?90661_
                  (lambda (_e90665_)
                    (let ((_$e90667_
                           (##structure-direct-instance-of?
                            _e90665_
                            'gx#import-set::t)))
                      (if _$e90667_
                          _$e90667_
                          (let ((_$e90670_
                                 (##structure-direct-instance-of?
                                  _e90665_
                                  'gx#module-import::t)))
                            (if _$e90670_
                                _$e90670_
                                (##structure-instance-of?
                                 _e90665_
                                 'gx#module-context::t))))))))
          (let ((_rbody90663_
                 (gx#core-expand-import/export
                  _stx90651_
                  _expanded-import?90661_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand190654_)))
            (if _internal-expand?90652_
                (reverse _rbody90663_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!90660_ _rbody90663_))
                 (gx#stx-source _stx90651_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90977_)
        (let ((_internal-expand?90979_ '#f))
          (gx#core-expand-import%__% _stx90977_ _internal-expand?90979_))))
    (define gx#core-expand-import%
      (lambda _g93531_
        (let ((_g93530_ (##length _g93531_)))
          (cond ((##fx= _g93530_ 1)
                 (apply (lambda (_stx90977_)
                          (gx#core-expand-import%__0 _stx90977_))
                        _g93531_))
                ((##fx= _g93530_ 2)
                 (apply (lambda (_stx90981_ _internal-expand?90982_)
                          (gx#core-expand-import%__%
                           _stx90981_
                           _internal-expand?90982_))
                        _g93531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g93531_))))))
    (define gx#core-import-nested-module
      (lambda (_spath90578_ _where90579_)
        (let* ((_e9058090587_ _spath90578_)
               (_E9058290591_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9058090587_)))
               (_E9058190646_
                (lambda ()
                  (if (gx#stx-pair? _e9058090587_)
                      (let ((_e9058390595_ (gx#syntax-e _e9058090587_)))
                        (let ((_hd9058490598_ (##car _e9058390595_))
                              (_tl9058590600_ (##cdr _e9058390595_)))
                          (let* ((_origin90603_ _hd9058490598_)
                                 (_sub90605_ _tl9058590600_))
                            (if '#t
                                (let ((_origin-ctx90607_
                                       (if (gx#stx-false? _origin90603_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin90603_))))
                                  (let _lp90609_ ((_rest90611_ _sub90605_)
                                                  (_ctx90612_
                                                   _origin-ctx90607_))
                                    (let* ((_e9061390620_ _rest90611_)
                                           (_E9061590624_
                                            (lambda () _ctx90612_))
                                           (_E9061490642_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9061390620_)
                                                  (let ((_e9061690628_
                                                         (gx#syntax-e
                                                          _e9061390620_)))
                                                    (let ((_hd9061790631_
                                                           (##car _e9061690628_))
                                                          (_tl9061890633_
                                                           (##cdr _e9061690628_)))
                                                      (let* ((_id90636_
                                                              _hd9061790631_)
                                                             (_rest90638_
                                                              _tl9061890633_))
                                                        (if '#t
                                                            (let ((_bind90640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id90636_ '0 _ctx90612_)))
                      (if (and (##structure-direct-instance-of?
                                _bind90640_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind90640_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where90579_
                           _spath90578_
                           _id90636_))
                      (_lp90609_
                       _rest90638_
                       (##unchecked-structure-ref
                        _bind90640_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9061590624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9061590624_)))))
                                      (_E9061490642_))))
                                (_E9058290591_)))))
                      (_E9058290591_)))))
          (_E9058190646_))))
    (define gx#core-expand-import-source
      (lambda (_hd90576_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd90576_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx90084_ _internal-expand?90085_)
        (letrec* ((_make-export__9346093461_
                   (lambda (_bind90524_ _phi90525_ _ctx90526_ _name90527_)
                     (let* ((_key90529_
                             (##unchecked-structure-ref
                              _bind90524_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key90531_
                             (if _name90527_
                                 (gx#core-identifier-key _name90527_)
                                 _key90529_)))
                       (##structure
                        gx#module-export::t
                        _ctx90526_
                        _key90529_
                        _phi90525_
                        _export-key90531_
                        (let ((_$e90534_
                               (##structure-instance-of?
                                _bind90524_
                                'gx#extern-binding::t)))
                          (if _$e90534_
                              _$e90534_
                              (##structure-direct-instance-of?
                               _bind90524_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9346293465_
                   (lambda (_bind90540_)
                     (let* ((_phi90542_ (gx#current-export-expander-phi))
                            (_ctx90544_ (gx#current-expander-context))
                            (_name90546_ '#f))
                       (_make-export__9346093461_
                        _bind90540_
                        _phi90542_
                        _ctx90544_
                        _name90546_))))
                  (_make-export__1__9346393466_
                   (lambda (_bind90548_ _phi90549_)
                     (let* ((_ctx90551_ (gx#current-expander-context))
                            (_name90553_ '#f))
                       (_make-export__9346093461_
                        _bind90548_
                        _phi90549_
                        _ctx90551_
                        _name90553_))))
                  (_make-export__2__9346493467_
                   (lambda (_bind90555_ _phi90556_ _ctx90557_)
                     (let ((_name90559_ '#f))
                       (_make-export__9346093461_
                        _bind90555_
                        _phi90556_
                        _ctx90557_
                        _name90559_))))
                  (_make-export90087_
                   (lambda _g93533_
                     (let ((_g93532_ (##length _g93533_)))
                       (cond ((##fx= _g93532_ 1)
                              (apply (lambda (_bind90540_)
                                       (_make-export__0__9346293465_
                                        _bind90540_))
                                     _g93533_))
                             ((##fx= _g93532_ 2)
                              (apply (lambda (_bind90548_ _phi90549_)
                                       (_make-export__1__9346393466_
                                        _bind90548_
                                        _phi90549_))
                                     _g93533_))
                             ((##fx= _g93532_ 3)
                              (apply (lambda (_bind90555_
                                              _phi90556_
                                              _ctx90557_)
                                       (_make-export__2__9346493467_
                                        _bind90555_
                                        _phi90556_
                                        _ctx90557_))
                                     _g93533_))
                             ((##fx= _g93532_ 4)
                              (apply (lambda (_bind90561_
                                              _phi90562_
                                              _ctx90563_
                                              _name90564_)
                                       (_make-export__9346093461_
                                        _bind90561_
                                        _phi90562_
                                        _ctx90563_
                                        _name90564_))
                                     _g93533_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g93533_))))))
                  (_expand190088_
                   (lambda (_hd90237_ _K90238_ _rest90239_ _r90240_)
                     (let* ((_e9024190273_ _hd90237_)
                            (_E9026890277_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx90084_
                                _hd90237_)))
                            (_E9025890356_
                             (lambda ()
                               (if (gx#stx-pair? _e9024190273_)
                                   (let ((_e9026990281_
                                          (gx#syntax-e _e9024190273_)))
                                     (let ((_hd9027090284_
                                            (##car _e9026990281_))
                                           (_tl9027190286_
                                            (##cdr _e9026990281_)))
                                       (if (eq? (gx#stx-e _hd9027090284_)
                                                'import:)
                                           (let ((_in90289_ _tl9027190286_))
                                             (if (gx#stx-list? _in90289_)
                                                 (let _lp90291_ ((_in-rest90293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in90289_)
                         (_r90294_ _r90240_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9029590302_
                                                           _in-rest90293_)
                                                          (_E9029790306_
                                                           (lambda ()
                                                             (_K90238_
                                                              _rest90239_
                                                              _r90294_)))
                                                          (_E9029690352_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9029590302_)
                         (let ((_e9029890310_ (gx#syntax-e _e9029590302_)))
                           (let ((_hd9029990313_ (##car _e9029890310_))
                                 (_tl9030090315_ (##cdr _e9029890310_)))
                             (let* ((_hd90318_ _hd9029990313_)
                                    (_in-rest90320_ _tl9030090315_))
                               (if '#t
                                   (let ((_src90350_
                                          (if (gx#core-bound-module? _hd90318_)
                                              (gx#syntax-local-e__0 _hd90318_)
                                              (if (gx#core-library-module-path?
                                                   _hd90318_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd90318_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd90318_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd90318_))
                                                      (if (gx#stx-string?
                                                           _hd90318_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd90318_
                                                            (gx#stx-source
                                                             _stx90084_)))
                                                          (let* ((_e9032190328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90318_)
                         (_E9032390332_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx90084_
                             _hd90318_)))
                         (_E9032290346_
                          (lambda ()
                            (if (gx#stx-pair? _e9032190328_)
                                (let ((_e9032490336_
                                       (gx#syntax-e _e9032190328_)))
                                  (let ((_hd9032590339_ (##car _e9032490336_))
                                        (_tl9032690341_ (##cdr _e9032490336_)))
                                    (if (eq? (gx#stx-e _hd9032590339_) 'in:)
                                        (let ((_spath90344_ _tl9032690341_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath90344_
                                               _stx90084_)
                                              (_E9032390332_)))
                                        (_E9032390332_))))
                                (_E9032390332_)))))
                    (_E9032290346_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp90291_
                                      _in-rest90320_
                                      (_export-imports90089_
                                       _src90350_
                                       _r90294_)))
                                   (_E9029790306_)))))
                         (_E9029790306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9029690352_)))
                                                 (_E9026890277_)))
                                           (_E9026890277_))))
                                   (_E9026890277_))))
                            (_E9024590395_
                             (lambda ()
                               (if (gx#stx-pair? _e9024190273_)
                                   (let ((_e9025990360_
                                          (gx#syntax-e _e9024190273_)))
                                     (let ((_hd9026090363_
                                            (##car _e9025990360_))
                                           (_tl9026190365_
                                            (##cdr _e9025990360_)))
                                       (if (eq? (gx#stx-e _hd9026090363_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9026190365_)
                                               (let ((_e9026290368_
                                                      (gx#syntax-e
                                                       _tl9026190365_)))
                                                 (let ((_hd9026390371_
                                                        (##car _e9026290368_))
                                                       (_tl9026490373_
                                                        (##cdr _e9026290368_)))
                                                   (let ((_id90376_
                                                          _hd9026390371_))
                                                     (if (gx#stx-pair?
                                                          _tl9026490373_)
                                                         (let ((_e9026590378_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9026490373_)))
                   (let ((_hd9026690381_ (##car _e9026590378_))
                         (_tl9026790383_ (##cdr _e9026590378_)))
                     (let ((_name90386_ _hd9026690381_))
                       (if (gx#stx-null? _tl9026790383_)
                           (if '#t
                               (let* ((_phi90388_
                                       (gx#current-export-expander-phi))
                                      (_$e90390_
                                       (gx#core-resolve-identifier__1
                                        _id90376_
                                        _phi90388_)))
                                 (if _$e90390_
                                     ((lambda (_bind90393_)
                                        (_K90238_
                                         _rest90239_
                                         (cons (_make-export__9346093461_
                                                _bind90393_
                                                _phi90388_
                                                (gx#current-expander-context)
                                                _name90386_)
                                               _r90240_)))
                                      _$e90390_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx90084_
                                      _hd90237_
                                      _id90376_)))
                               (_E9025890356_))
                           (_E9025890356_)))))
                 (_E9025890356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9025890356_))
                                           (_E9025890356_))))
                                   (_E9025890356_))))
                            (_E9024490444_
                             (lambda ()
                               (if (gx#stx-pair? _e9024190273_)
                                   (let ((_e9024690399_
                                          (gx#syntax-e _e9024190273_)))
                                     (let ((_hd9024790402_
                                            (##car _e9024690399_))
                                           (_tl9024890404_
                                            (##cdr _e9024690399_)))
                                       (if (eq? (gx#stx-e _hd9024790402_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9024890404_)
                                               (let ((_e9024990407_
                                                      (gx#syntax-e
                                                       _tl9024890404_)))
                                                 (let ((_hd9025090410_
                                                        (##car _e9024990407_))
                                                       (_tl9025190412_
                                                        (##cdr _e9024990407_)))
                                                   (let ((_phi90415_
                                                          _hd9025090410_))
                                                     (if (gx#stx-pair?
                                                          _tl9025190412_)
                                                         (let ((_e9025290417_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9025190412_)))
                   (let ((_hd9025390420_ (##car _e9025290417_))
                         (_tl9025490422_ (##cdr _e9025290417_)))
                     (let ((_id90425_ _hd9025390420_))
                       (if (gx#stx-pair? _tl9025490422_)
                           (let ((_e9025590427_ (gx#syntax-e _tl9025490422_)))
                             (let ((_hd9025690430_ (##car _e9025590427_))
                                   (_tl9025790432_ (##cdr _e9025590427_)))
                               (let ((_name90435_ _hd9025690430_))
                                 (if (gx#stx-null? _tl9025790432_)
                                     (if (and (gx#stx-fixnum? _phi90415_)
                                              (gx#identifier? _id90425_)
                                              (gx#identifier? _name90435_))
                                         (let* ((_phi90437_
                                                 (gx#stx-e _phi90415_))
                                                (_$e90439_
                                                 (gx#core-resolve-identifier__1
                                                  _id90425_
                                                  _phi90437_)))
                                           (if _$e90439_
                                               ((lambda (_bind90442_)
                                                  (_K90238_
                                                   _rest90239_
                                                   (cons (_make-export__9346093461_
                                                          _bind90442_
                                                          _phi90437_
                                                          (gx#current-expander-context)
                                                          _name90435_)
                                                         _r90240_)))
                                                _$e90439_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx90084_
                                                _hd90237_
                                                _id90425_)))
                                         (_E9024590395_))
                                     (_E9024590395_)))))
                           (_E9024590395_)))))
                 (_E9024590395_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9024590395_))
                                           (_E9024590395_))))
                                   (_E9024590395_))))
                            (_E9024390455_
                             (lambda ()
                               (let ((_id90448_ _e9024190273_))
                                 (if (gx#identifier? _id90448_)
                                     (let ((_$e90450_
                                            (gx#core-resolve-identifier__1
                                             _id90448_
                                             (gx#current-export-expander-phi))))
                                       (if _$e90450_
                                           ((lambda (_bind90453_)
                                              (_K90238_
                                               _rest90239_
                                               (cons (_make-export__0__9346293465_
                                                      _bind90453_)
                                                     _r90240_)))
                                            _$e90450_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx90084_
                                            _hd90237_)))
                                     (_E9024490444_)))))
                            (_E9024290519_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9024190273_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx90459_
                                               (gx#current-expander-context))
                                              (_current-phi90461_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx90463_
                                               (gx#core-context-shift
                                                _current-ctx90459_
                                                _current-phi90461_))
                                              (_phi-bind90465_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx90463_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp90468_ ((_bind-rest90470_
                                                          _phi-bind90465_)
                                                         (_set90471_ '()))
                                           (let* ((_bind-rest9047290482_
                                                   _bind-rest90470_)
                                                  (_else9047490490_
                                                   (lambda ()
                                                     (_K90238_
                                                      _rest90239_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi90461_
                                                             _set90471_)
                                                            _r90240_))))
                                                  (_K9047690500_
                                                   (lambda (_bind-rest90493_
                                                            _bind90494_
                                                            _key90495_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind90494_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind90494_))
                                                         (_lp90468_
                                                          _bind-rest90493_
                                                          _set90471_)
                                                         (_lp90468_
                                                          _bind-rest90493_
                                                          (cons (_make-export__2__9346493467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind90494_
                         _current-phi90461_
                         _current-ctx90459_)
                        _set90471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9047290482_)
                                                 (let ((_hd9047790503_
                                                        (##car _bind-rest9047290482_))
                                                       (_tl9047890505_
                                                        (##cdr _bind-rest9047290482_)))
                                                   (if (##pair? _hd9047790503_)
                                                       (let ((_hd9047990508_
                                                              (##car _hd9047790503_))
                                                             (_tl9048090510_
                                                              (##cdr _hd9047790503_)))
                                                         (let* ((_key90513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9047990508_)
                        (_bind90515_ _tl9048090510_)
                        (_bind-rest90517_ _tl9047890505_))
                   (_K9047690500_ _bind-rest90517_ _bind90515_ _key90513_)))
               (_else9047490490_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9047490490_)))))
                                       (_E9024390455_))
                                   (_E9024390455_)))))
                       (_E9024290519_))))
                  (_export-imports90089_
                   (lambda (_src90113_ _r90114_)
                     (letrec* ((_current-ctx90116_
                                (gx#current-expander-context))
                               (_current-phi90117_
                                (gx#current-export-expander-phi))
                               (_import->export90118_
                                (lambda (_in90199_)
                                  (let* ((_in9020090208_ _in90199_)
                                         (_E9020290212_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9020090208_)))
                                         (_K9020390219_
                                          (lambda (_phi90215_
                                                   _key90216_
                                                   _out90217_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx90116_
                                             _key90216_
                                             _phi90215_
                                             _key90216_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9020090208_
                                         'gx#module-import::t)
                                        (let* ((_e9020490222_
                                                (##unchecked-structure-ref
                                                 _in9020090208_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out90225_ _e9020490222_)
                                               (_e9020590227_
                                                (##unchecked-structure-ref
                                                 _in9020090208_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key90230_ _e9020590227_)
                                               (_e9020690232_
                                                (##unchecked-structure-ref
                                                 _in9020090208_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi90235_ _e9020690232_))
                                          (_K9020390219_
                                           _phi90235_
                                           _key90230_
                                           _out90225_))
                                        (_E9020290212_)))))
                               (_fold-e90119_
                                (lambda (_in90121_ _r90122_)
                                  (let* ((_in9012390137_ _in90121_)
                                         (_else9012690145_
                                          (lambda () _r90122_)))
                                    (let ((_K9013290181_
                                           (lambda (_phi90177_
                                                    _key90178_
                                                    _out90179_)
                                             (if (and (fx= _phi90177_
                                                           _current-phi90117_)
                                                      (eq? _src90113_
                                                           (##unchecked-structure-ref
                                                            _out90179_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export90118_
                                                        _in90121_)
                                                       _r90122_)
                                                 _r90122_)))
                                          (_K9012890156_
                                           (lambda (_imports90149_
                                                    _phi90150_
                                                    _ctx90151_)
                                             (if (and (fx= _phi90150_
                                                           _current-phi90117_)
                                                      (eq? _src90113_
                                                           _ctx90151_))
                                                 (foldl1 (lambda (_in90153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r90154_)
                   (cons (_import->export90118_ _in90153_) _r90154_))
                 _r90122_
                 _imports90149_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r90122_))))
                                      (let ((_try-match9012590174_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9012390137_
                                                    'gx#import-set::t)
                                                   (let* ((_e9012990159_
                                                           (##unchecked-structure-ref
                                                            _in9012390137_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9013090164_
                                                           (##unchecked-structure-ref
                                                            _in9012390137_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9013190169_
                                                           (##unchecked-structure-ref
                                                            _in9012390137_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx90162_
                                                            _e9012990159_)
                                                           (_phi90167_
                                                            _e9013090164_)
                                                           (_imports90172_
                                                            _e9013190169_))
                                                       (_K9012890156_
                                                        _imports90172_
                                                        _phi90167_
                                                        _ctx90162_)))
                                                   (_else9012690145_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9012390137_
                                             'gx#module-import::t)
                                            (let* ((_e9013390184_
                                                    (##unchecked-structure-ref
                                                     _in9012390137_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9013490189_
                                                    (##unchecked-structure-ref
                                                     _in9012390137_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9013590194_
                                                    (##unchecked-structure-ref
                                                     _in9012390137_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out90187_ _e9013390184_)
                                                    (_key90192_ _e9013490189_)
                                                    (_phi90197_ _e9013590194_))
                                                (_K9013290181_
                                                 _phi90197_
                                                 _key90192_
                                                 _out90187_)))
                                            (_try-match9012590174_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src90113_
                              _current-phi90117_
                              (foldl1 _fold-e90119_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx90116_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r90114_))))
                  (_export!90090_
                   (lambda (_rbody90103_)
                     (letrec* ((_current-ctx90105_
                                (gx#current-expander-context))
                               (_fold-e90106_
                                (lambda (_out90110_ _r90111_)
                                  (if (##structure-direct-instance-of?
                                       _out90110_
                                       'gx#module-export::t)
                                      (cons _out90110_ _r90111_)
                                      (if (##structure-direct-instance-of?
                                           _out90110_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r90111_
                                                  (##unchecked-structure-ref
                                                   _out90110_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r90111_)))))
                       (let ((_body90108_ (reverse _rbody90103_)))
                         (##unchecked-structure-set!
                          _current-ctx90105_
                          (foldl1 _fold-e90106_
                                  (##unchecked-structure-ref
                                   _current-ctx90105_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body90108_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body90108_))))
                  (_expanded-export?90091_
                   (lambda (_e90098_)
                     (let ((_$e90100_
                            (##structure-direct-instance-of?
                             _e90098_
                             'gx#module-export::t)))
                       (if _$e90100_
                           _$e90100_
                           (##structure-direct-instance-of?
                            _e90098_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?90085_)
              (let ((_rbody90096_
                     (gx#core-expand-import/export
                      _stx90084_
                      _expanded-export?90091_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand190088_)))
                (if _internal-expand?90085_
                    (reverse _rbody90096_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!90090_ _rbody90096_))
                     (gx#stx-source _stx90084_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx90084_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx90084_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx90569_)
        (let ((_internal-expand?90571_ '#f))
          (gx#core-expand-export%__% _stx90569_ _internal-expand?90571_))))
    (define gx#core-expand-export%
      (lambda _g93535_
        (let ((_g93534_ (##length _g93535_)))
          (cond ((##fx= _g93534_ 1)
                 (apply (lambda (_stx90569_)
                          (gx#core-expand-export%__0 _stx90569_))
                        _g93535_))
                ((##fx= _g93534_ 2)
                 (apply (lambda (_stx90573_ _internal-expand?90574_)
                          (gx#core-expand-export%__%
                           _stx90573_
                           _internal-expand?90574_))
                        _g93535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g93535_))))))
    (define gx#core-expand-export-source
      (lambda (_hd90081_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd90081_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx90051_)
        (let* ((_e9005290059_ _stx90051_)
               (_E9005490063_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9005290059_)))
               (_E9005390077_
                (lambda ()
                  (if (gx#stx-pair? _e9005290059_)
                      (let ((_e9005590067_ (gx#syntax-e _e9005290059_)))
                        (let ((_hd9005690070_ (##car _e9005590067_))
                              (_tl9005790072_ (##cdr _e9005590067_)))
                          (let ((_body90075_ _tl9005790072_))
                            (if (gx#identifier-list? _body90075_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body90075_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body90075_))
                                   (gx#stx-source _stx90051_)))
                                (_E9005490063_)))))
                      (_E9005490063_)))))
          (_E9005390077_))))
    (define gx#core-bind-feature!__%
      (lambda (_id90017_ _private?90018_ _phi90019_ _ctx90020_)
        (gx#core-bind-syntax!__%
         _id90017_
         ((if _private?90018_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id90017_))
         _private?90018_
         _phi90019_
         _ctx90020_)))
    (define gx#core-bind-feature!__0
      (lambda (_id90025_)
        (let* ((_private?90027_ '#f)
               (_phi90029_ (gx#current-expander-phi))
               (_ctx90031_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90025_
           _private?90027_
           _phi90029_
           _ctx90031_))))
    (define gx#core-bind-feature!__1
      (lambda (_id90033_ _private?90034_)
        (let* ((_phi90036_ (gx#current-expander-phi))
               (_ctx90038_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90033_
           _private?90034_
           _phi90036_
           _ctx90038_))))
    (define gx#core-bind-feature!__2
      (lambda (_id90040_ _private?90041_ _phi90042_)
        (let ((_ctx90044_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90040_
           _private?90041_
           _phi90042_
           _ctx90044_))))
    (define gx#core-bind-feature!
      (lambda _g93537_
        (let ((_g93536_ (##length _g93537_)))
          (cond ((##fx= _g93536_ 1)
                 (apply (lambda (_id90025_)
                          (gx#core-bind-feature!__0 _id90025_))
                        _g93537_))
                ((##fx= _g93536_ 2)
                 (apply (lambda (_id90033_ _private?90034_)
                          (gx#core-bind-feature!__1 _id90033_ _private?90034_))
                        _g93537_))
                ((##fx= _g93536_ 3)
                 (apply (lambda (_id90040_ _private?90041_ _phi90042_)
                          (gx#core-bind-feature!__2
                           _id90040_
                           _private?90041_
                           _phi90042_))
                        _g93537_))
                ((##fx= _g93536_ 4)
                 (apply (lambda (_id90046_
                                 _private?90047_
                                 _phi90048_
                                 _ctx90049_)
                          (gx#core-bind-feature!__%
                           _id90046_
                           _private?90047_
                           _phi90048_
                           _ctx90049_))
                        _g93537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g93537_))))))))
