(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710064747)
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
      (lambda _$args90085_
        (apply make-instance gx#module-import::t _$args90085_)))
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
      (lambda _$args90082_
        (apply make-instance gx#module-export::t _$args90082_)))
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
      (lambda _$args90079_
        (apply make-instance gx#import-set::t _$args90079_)))
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
      (lambda _$args90076_
        (apply make-instance gx#export-set::t _$args90076_)))
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
      (lambda _$args90073_
        (apply make-instance gx#import-expander::t _$args90073_)))
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
      (lambda _$args90070_
        (apply make-instance gx#export-expander::t _$args90070_)))
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
      (lambda _$args90067_
        (apply make-instance gx#import-export-expander::t _$args90067_)))
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
      (lambda (_path90064_ _fun90065_)
        (call-with-input-file
         (cons 'path: (cons _path90064_ gx#source-file-settings))
         _fun90065_)))
    (define gx#module-context:::init!
      (lambda (_self90058_ _id90059_ _super90060_ _ns90061_ _path90062_)
        (if (##fx< '11 (##structure-length _self90058_))
            (begin
              (##unchecked-structure-set!
               _self90058_
               _id90059_
               '1
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               (make-hash-table-eq)
               '2
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               _super90060_
               '3
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               '#f
               '4
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               '#f
               '5
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               _ns90061_
               '6
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               _path90062_
               '7
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               '()
               '8
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               '()
               '9
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               '#f
               '10
               (##structure-type _self90058_)
               '#f)
              (##unchecked-structure-set!
               _self90058_
               '#f
               '11
               (##structure-type _self90058_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self90058_
                   '11
                   (##vector-length _self90058_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self89902_ _ctx89903_ _root89904_)
        (let ((_super89912_
               (let ((_$e89906_ _root89904_))
                 (if _$e89906_
                     _$e89906_
                     (let ((_$e89909_ (gx#core-context-root__0)))
                       (if _$e89909_
                           _$e89909_
                           (let ((__obj90127
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor90128
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj90127
                                     ':init!)))
                               (if __constructor90128
                                   (__constructor90128 __obj90127)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj90127)))))))
          (if _ctx89903_
              (let ((_id89915_
                     (##structure-ref
                      _ctx89903_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path89916_
                     (##structure-ref _ctx89903_ '7 gx#module-context::t '#f))
                    (_in89917_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx89903_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e89918_
                     (make-promise (lambda () (gx#eval-module _ctx89903_)))))
                (if (##fx< '8 (##structure-length _self89902_))
                    (begin
                      (##unchecked-structure-set!
                       _self89902_
                       _id89915_
                       '1
                       (##structure-type _self89902_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89902_
                       (make-hash-table-eq 'size: (length _in89917_))
                       '2
                       (##structure-type _self89902_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89902_
                       _super89912_
                       '3
                       (##structure-type _self89902_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89902_
                       '#f
                       '4
                       (##structure-type _self89902_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89902_
                       '#f
                       '5
                       (##structure-type _self89902_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89902_
                       _path89916_
                       '6
                       (##structure-type _self89902_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89902_
                       _in89917_
                       '7
                       (##structure-type _self89902_)
                       '#f)
                      (##unchecked-structure-set!
                       _self89902_
                       _e89918_
                       '8
                       (##structure-type _self89902_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self89902_
                           '8
                           (##vector-length _self89902_)))
                (for-each
                 (lambda (_g8991989921_)
                   (gx#core-bind-weak-import!__% _g8991989921_ _self89902_))
                 _in89917_))
              (if (##fx< '8 (##structure-length _self89902_))
                  (begin
                    (##unchecked-structure-set!
                     _self89902_
                     '#f
                     '1
                     (##structure-type _self89902_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89902_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self89902_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89902_
                     _super89912_
                     '3
                     (##structure-type _self89902_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89902_
                     '#f
                     '4
                     (##structure-type _self89902_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89902_
                     '#f
                     '5
                     (##structure-type _self89902_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89902_
                     '#f
                     '6
                     (##structure-type _self89902_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89902_
                     '()
                     '7
                     (##structure-type _self89902_)
                     '#f)
                    (##unchecked-structure-set!
                     _self89902_
                     '#f
                     '8
                     (##structure-type _self89902_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self89902_
                         '8
                         (##vector-length _self89902_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self89927_ _ctx89928_)
        (let ((_root89930_ '#f))
          (gx#prelude-context:::init!__% _self89927_ _ctx89928_ _root89930_))))
    (define gx#prelude-context:::init!
      (lambda _g90134_
        (let ((_g90133_ (##length _g90134_)))
          (cond ((##fx= _g90133_ 2)
                 (apply (lambda (_self89927_ _ctx89928_)
                          (gx#prelude-context:::init!__0
                           _self89927_
                           _ctx89928_))
                        _g90134_))
                ((##fx= _g90133_ 3)
                 (apply (lambda (_self89932_ _ctx89933_ _root89934_)
                          (gx#prelude-context:::init!__%
                           _self89932_
                           _ctx89933_
                           _root89934_))
                        _g90134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g90134_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self89776_ _e89777_)
        (if (##fx< '3 (##structure-length _self89776_))
            (begin
              (##unchecked-structure-set!
               _self89776_
               _e89777_
               '1
               (##structure-type _self89776_)
               '#f)
              (##unchecked-structure-set!
               _self89776_
               (gx#current-expander-context)
               '2
               (##structure-type _self89776_)
               '#f)
              (##unchecked-structure-set!
               _self89776_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self89776_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self89776_
                   '3
                   (##vector-length _self89776_)))))
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
      (lambda (_g8940289405_ _g8940389407_)
        (gx#core-apply-user-expander__%
         _g8940289405_
         _g8940389407_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g8927389276_ _g8927489278_)
        (gx#core-apply-user-expander__%
         _g8927389276_
         _g8927489278_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx89144_)
        (let* ((_path89146_
                (##structure-ref _ctx89144_ '7 gx#module-context::t '#f))
               (_path89148_
                (if (pair? _path89146_) (last _path89146_) _path89146_)))
          (if (string? _path89148_) _path89148_ '#f))))
    (define gx#import-module__%
      (lambda (_path89120_ _reload?89121_ _eval?89122_)
        (let ((_ctx89124_
               ((gx#current-expander-module-import)
                _path89120_
                _reload?89121_)))
          (if (and _ctx89124_ _eval?89122_)
              (gx#eval-module _ctx89124_)
              '#!void)
          _ctx89124_)))
    (define gx#import-module__0
      (lambda (_path89129_)
        (let* ((_reload?89131_ '#f) (_eval?89133_ '#f))
          (gx#import-module__% _path89129_ _reload?89131_ _eval?89133_))))
    (define gx#import-module__1
      (lambda (_path89135_ _reload?89136_)
        (let ((_eval?89138_ '#f))
          (gx#import-module__% _path89135_ _reload?89136_ _eval?89138_))))
    (define gx#import-module
      (lambda _g90136_
        (let ((_g90135_ (##length _g90136_)))
          (cond ((##fx= _g90135_ 1)
                 (apply (lambda (_path89129_)
                          (gx#import-module__0 _path89129_))
                        _g90136_))
                ((##fx= _g90135_ 2)
                 (apply (lambda (_path89135_ _reload?89136_)
                          (gx#import-module__1 _path89135_ _reload?89136_))
                        _g90136_))
                ((##fx= _g90135_ 3)
                 (apply (lambda (_path89140_ _reload?89141_ _eval?89142_)
                          (gx#import-module__%
                           _path89140_
                           _reload?89141_
                           _eval?89142_))
                        _g90136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g90136_))))))
    (define gx#eval-module
      (lambda (_mod89117_) ((gx#current-expander-module-eval) _mod89117_)))
    (define gx#core-eval-module
      (lambda (_obj89102_)
        (letrec ((_force-e89104_
                  (lambda (_getf89113_ _e89114_)
                    (call-with-parameters
                     (lambda () (force (_getf89113_ _e89114_)))
                     gx#current-expander-context
                     _e89114_
                     gx#current-expander-phi
                     '0))))
          (let _recur89106_ ((_e89108_ _obj89102_))
            (if (##structure-instance-of? _e89108_ 'gx#module-context::t)
                (begin
                  (let ((_$e89110_ (gx#core-context-prelude__% _e89108_)))
                    (if _$e89110_ (_recur89106_ _$e89110_) '#!void))
                  (_force-e89104_ gx#module-context-e _e89108_))
                (if (##structure-instance-of? _e89108_ 'gx#prelude-context::t)
                    (_force-e89104_ gx#prelude-context-e _e89108_)
                    (if (gx#stx-string? _e89108_)
                        (_recur89106_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e89108_)))
                        (if (gx#core-library-module-path? _e89108_)
                            (_recur89106_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e89108_)))
                            (error '"Cannot eval module" _obj89102_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx89085_)
        (let _lp89087_ ((_e89089_ _ctx89085_))
          (if (or (##structure-instance-of? _e89089_ 'gx#module-context::t)
                  (##structure-instance-of? _e89089_ 'gx#local-context::t))
              (_lp89087_
               (##unchecked-structure-ref _e89089_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e89089_ 'gx#prelude-context::t)
                  _e89089_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx89098_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx89098_))))
    (define gx#core-context-prelude
      (lambda _g90138_
        (let ((_g90137_ (##length _g90138_)))
          (cond ((##fx= _g90137_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g90138_))
                ((##fx= _g90137_ 1)
                 (apply (lambda (_ctx89100_)
                          (gx#core-context-prelude__% _ctx89100_))
                        _g90138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g90138_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx89075_)
        (let* ((_ht89077_ (gx#current-expander-module-registry))
               (_$e89079_ (hash-get _ht89077_ _ctx89075_)))
          (if _$e89079_
              (values _$e89079_)
              (let ((_pre89082_
                     (let ((__obj90129
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
                       (gx#prelude-context:::init! __obj90129 _ctx89075_)
                       __obj90129)))
                (hash-put! _ht89077_ _ctx89075_ _pre89082_)
                _pre89082_)))))
    (define gx#core-import-module__%
      (lambda (_rpath88956_ _reload?88957_)
        (letrec ((_import-source88959_
                  (lambda (_path89044_)
                    (if (member _path89044_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path89044_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g90139_ (gx#core-read-module _path89044_)))
                         (begin
                           (let ((_g90140_
                                  (if (##values? _g90139_)
                                      (##vector-length _g90139_)
                                      1)))
                             (if (not (##fx= _g90140_ 4))
                                 (error "Context expects 4 values" _g90140_)))
                           (let ((_pre89047_ (##vector-ref _g90139_ 0))
                                 (_id89048_ (##vector-ref _g90139_ 1))
                                 (_ns89049_ (##vector-ref _g90139_ 2))
                                 (_body89050_ (##vector-ref _g90139_ 3)))
                             (let* ((_prelude89055_
                                     (if (##structure-instance-of?
                                          _pre89047_
                                          'gx#prelude-context::t)
                                         _pre89047_
                                         (if (##structure-instance-of?
                                              _pre89047_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre89047_)
                                             (if (string? _pre89047_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre89047_))
                                                 (if (not _pre89047_)
                                                     (let ((_$e89052_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e89052_
                                                           _$e89052_
                                                           (let ((__obj90130
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
                     (gx#prelude-context:::init! __obj90130 '#f)
                     __obj90130)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath88956_
                                                            _pre89047_))))))
                                    (_ctx89057_
                                     (let ((__obj90131
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
                                        __obj90131
                                        _id89048_
                                        _prelude89055_
                                        _ns89049_
                                        _path89044_)
                                       __obj90131))
                                    (_body89059_
                                     (gx#core-expand-module-begin
                                      _body89050_
                                      _ctx89057_))
                                    (_body89061_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body89059_)
                                      _path89044_
                                      _ctx89057_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx89057_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body89061_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx89057_
                                _body89061_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path89044_
                                _ctx89057_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id89048_
                                _ctx89057_)
                               _ctx89057_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path89044_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule88960_
                  (lambda (_rpath88972_)
                    (let* ((_rpath8897388980_ _rpath88972_)
                           (_E8897588984_
                            (lambda ()
                              (error '"No clause matching" _rpath8897388980_)))
                           (_K8897689032_
                            (lambda (_refs88987_ _origin88988_)
                              (let ((_ctx88990_
                                     (if _origin88988_
                                         (gx#core-import-module__%
                                          _origin88988_
                                          _reload?88957_)
                                         (gx#current-expander-context))))
                                (let _lp88992_ ((_rest88994_ _refs88987_)
                                                (_ctx88995_ _ctx88990_))
                                  (let* ((_rest8899689004_ _rest88994_)
                                         (_else8899889012_
                                          (lambda () _ctx88995_))
                                         (_K8900089020_
                                          (lambda (_rest89015_ _id89016_)
                                            (let ((_bind89018_
                                                   (gx#resolve-identifier__%
                                                    _id89016_
                                                    '0
                                                    _ctx88995_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind89018_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind89018_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp88992_
                                                   _rest89015_
                                                   (##unchecked-structure-ref
                                                    _bind89018_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath88972_
                                                         _id89016_
                                                         _bind89018_))))))
                                    (if (##pair? _rest8899689004_)
                                        (let ((_hd8900189023_
                                               (##car _rest8899689004_))
                                              (_tl8900289025_
                                               (##cdr _rest8899689004_)))
                                          (let* ((_id89028_ _hd8900189023_)
                                                 (_rest89030_ _tl8900289025_))
                                            (_K8900089020_
                                             _rest89030_
                                             _id89028_)))
                                        (_else8899889012_))))))))
                      (if (##pair? _rpath8897388980_)
                          (let ((_hd8897789035_ (##car _rpath8897388980_))
                                (_tl8897889037_ (##cdr _rpath8897388980_)))
                            (let* ((_origin89040_ _hd8897789035_)
                                   (_refs89042_ _tl8897889037_))
                              (_K8897689032_ _refs89042_ _origin89040_)))
                          (_E8897588984_))))))
          (let ((_$e88962_
                 (if (not _reload?88957_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath88956_)
                     '#f)))
            (if _$e88962_
                (values _$e88962_)
                (if (list? _rpath88956_)
                    (_import-submodule88960_ _rpath88956_)
                    (if (gx#core-library-module-path? _rpath88956_)
                        (let ((_ctx88965_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath88956_)
                                _reload?88957_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath88956_
                           _ctx88965_)
                          _ctx88965_)
                        (let* ((_npath88967_ (path-normalize _rpath88956_))
                               (_$e88969_
                                (if (not _reload?88957_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath88967_)
                                    '#f)))
                          (if _$e88969_
                              (values _$e88969_)
                              (_import-source88959_ _npath88967_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath89068_)
        (let ((_reload?89070_ '#f))
          (gx#core-import-module__% _rpath89068_ _reload?89070_))))
    (define gx#core-import-module
      (lambda _g90142_
        (let ((_g90141_ (##length _g90142_)))
          (cond ((##fx= _g90141_ 1)
                 (apply (lambda (_rpath89068_)
                          (gx#core-import-module__0 _rpath89068_))
                        _g90142_))
                ((##fx= _g90141_ 2)
                 (apply (lambda (_rpath89072_ _reload?89073_)
                          (gx#core-import-module__%
                           _rpath89072_
                           _reload?89073_))
                        _g90142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g90142_))))))
    (define gx#core-read-module
      (lambda (_path88945_)
        (with-catch
         (lambda (_exn88947_)
           (if (and (datum-parsing-exception? _exn88947_)
                    (eq? (datum-parsing-exception-filepos _exn88947_) '0))
               (gx#core-read-module/lang _path88945_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path88945_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g8894988951_)
                      (display-exception _exn88947_ _g8894988951_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path88945_)))))
    (define gx#core-read-module/sexp
      (lambda (_path88808_)
        (let _lp88810_ ((_body88812_ (read-syntax-from-file _path88808_))
                        (_pre88813_ '#f)
                        (_ns88814_ '#f)
                        (_pkg88815_ '#f))
          (let* ((_e8881688840_ _body88812_)
                 (_E8883288862_
                  (lambda ()
                    (let ((_g90143_
                           (if _pkg88815_
                               (values _pre88813_ _ns88814_ _pkg88815_)
                               (gx#core-read-module-package
                                _path88808_
                                _pre88813_
                                _ns88814_))))
                      (begin
                        (let ((_g90144_
                               (if (##values? _g90143_)
                                   (##vector-length _g90143_)
                                   1)))
                          (if (not (##fx= _g90144_ 3))
                              (error "Context expects 3 values" _g90144_)))
                        (let ((_pre88844_ (##vector-ref _g90143_ 0))
                              (_ns88845_ (##vector-ref _g90143_ 1))
                              (_pkg88846_ (##vector-ref _g90143_ 2)))
                          (let* ((_prelude88848_
                                  (if (gx#core-bound-module-prelude?
                                       _pre88844_)
                                      (gx#syntax-local-e__0 _pre88844_)
                                      (if (gx#core-library-module-path?
                                           _pre88844_)
                                          (gx#core-resolve-library-module-path
                                           _pre88844_)
                                          (if (gx#stx-string? _pre88844_)
                                              (gx#core-resolve-module-path__%
                                               _pre88844_
                                               _path88808_)
                                              (gx#stx-e _pre88844_)))))
                                 (_path-id88850_
                                  (gx#core-module-path->namespace _path88808_))
                                 (_pkg-id88852_
                                  (if _pkg88846_
                                      (string-append
                                       _pkg88846_
                                       '"/"
                                       _path-id88850_)
                                      _path-id88850_))
                                 (_module-id88854_
                                  (string->symbol _pkg-id88852_))
                                 (_module-ns88859_
                                  (if (eq? _ns88845_ '#!void)
                                      '#f
                                      (let ((_$e88856_ _ns88845_))
                                        (if _$e88856_
                                            _$e88856_
                                            _pkg-id88852_)))))
                            (values _prelude88848_
                                    _module-id88854_
                                    _module-ns88859_
                                    _body88812_)))))))
                 (_E8882588891_
                  (lambda ()
                    (if (gx#stx-pair? _e8881688840_)
                        (let ((_e8883388866_ (gx#syntax-e _e8881688840_)))
                          (let ((_hd8883488869_ (##car _e8883388866_))
                                (_tl8883588871_ (##cdr _e8883388866_)))
                            (if (eq? (gx#stx-e _hd8883488869_) 'package:)
                                (if (gx#stx-pair? _tl8883588871_)
                                    (let ((_e8883688874_
                                           (gx#syntax-e _tl8883588871_)))
                                      (let ((_hd8883788877_
                                             (##car _e8883688874_))
                                            (_tl8883888879_
                                             (##cdr _e8883688874_)))
                                        (let* ((_pkg88882_ _hd8883788877_)
                                               (_rest88884_ _tl8883888879_))
                                          (if '#t
                                              (let ((_pkg88889_
                                                     (if (gx#identifier?
                                                          _pkg88882_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg88882_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg88882_)
                         (gx#stx-false? _pkg88882_))
                     (gx#stx-e _pkg88882_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg88882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp88810_
                                                 _rest88884_
                                                 _pre88813_
                                                 _ns88814_
                                                 _pkg88889_))
                                              (_E8883288862_)))))
                                    (_E8883288862_))
                                (_E8883288862_))))
                        (_E8883288862_))))
                 (_E8881888917_
                  (lambda ()
                    (if (gx#stx-pair? _e8881688840_)
                        (let ((_e8882688895_ (gx#syntax-e _e8881688840_)))
                          (let ((_hd8882788898_ (##car _e8882688895_))
                                (_tl8882888900_ (##cdr _e8882688895_)))
                            (if (eq? (gx#stx-e _hd8882788898_) 'namespace:)
                                (if (gx#stx-pair? _tl8882888900_)
                                    (let ((_e8882988903_
                                           (gx#syntax-e _tl8882888900_)))
                                      (let ((_hd8883088906_
                                             (##car _e8882988903_))
                                            (_tl8883188908_
                                             (##cdr _e8882988903_)))
                                        (let* ((_ns88911_ _hd8883088906_)
                                               (_rest88913_ _tl8883188908_))
                                          (if '#t
                                              (let ((_ns88915_
                                                     (if (gx#identifier?
                                                          _ns88911_)
                                                         (symbol->string
                                                          (gx#stx-e _ns88911_))
                                                         (if (gx#stx-string?
                                                              _ns88911_)
                                                             (gx#stx-e
                                                              _ns88911_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns88911_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns88911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp88810_
                                                 _rest88913_
                                                 _pre88813_
                                                 _ns88915_
                                                 _pkg88815_))
                                              (_E8882588891_)))))
                                    (_E8882588891_))
                                (_E8882588891_))))
                        (_E8882588891_))))
                 (_E8881788941_
                  (lambda ()
                    (if (gx#stx-pair? _e8881688840_)
                        (let ((_e8881988921_ (gx#syntax-e _e8881688840_)))
                          (let ((_hd8882088924_ (##car _e8881988921_))
                                (_tl8882188926_ (##cdr _e8881988921_)))
                            (if (eq? (gx#stx-e _hd8882088924_) 'prelude:)
                                (if (gx#stx-pair? _tl8882188926_)
                                    (let ((_e8882288929_
                                           (gx#syntax-e _tl8882188926_)))
                                      (let ((_hd8882388932_
                                             (##car _e8882288929_))
                                            (_tl8882488934_
                                             (##cdr _e8882288929_)))
                                        (let* ((_prelude88937_ _hd8882388932_)
                                               (_rest88939_ _tl8882488934_))
                                          (if '#t
                                              (_lp88810_
                                               _rest88939_
                                               _prelude88937_
                                               _ns88814_
                                               _pkg88815_)
                                              (_E8881888917_)))))
                                    (_E8881888917_))
                                (_E8881888917_))))
                        (_E8881888917_)))))
            (_E8881788941_)))))
    (define gx#core-read-module/lang
      (lambda (_path88635_)
        (letrec ((_default-read-module-body88637_
                  (lambda (_inp88800_)
                    (let _lp88802_ ((_body88804_ '()))
                      (let ((_next88806_ (read-syntax _inp88800_)))
                        (if (eof-object? _next88806_)
                            (reverse _body88804_)
                            (_lp88802_ (cons _next88806_ _body88804_)))))))
                 (_read-body88638_
                  (lambda (_inp88719_
                           _pre88720_
                           _ns88721_
                           _pkg88722_
                           _args88723_)
                    (let ((_g90145_
                           (if _pkg88722_
                               (values _pre88720_ _ns88721_ _pkg88722_)
                               (gx#core-read-module-package
                                _path88635_
                                _pre88720_
                                _ns88721_))))
                      (begin
                        (let ((_g90146_
                               (if (##values? _g90145_)
                                   (##vector-length _g90145_)
                                   1)))
                          (if (not (##fx= _g90146_ 3))
                              (error "Context expects 3 values" _g90146_)))
                        (let ((_pre88725_ (##vector-ref _g90145_ 0))
                              (_ns88726_ (##vector-ref _g90145_ 1))
                              (_pkg88727_ (##vector-ref _g90145_ 2)))
                          (let* ((_prelude88729_
                                  (gx#import-module__0 _pre88725_))
                                 (_read-module-body88783_
                                  (let ((_$e88775_
                                         (find (lambda (_e8873088732_)
                                                 (let* ((_g8873488744_
                                                         _e8873088732_)
                                                        (_else8873688752_
                                                         (lambda () '#f))
                                                        (_K8873888756_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g8873488744_
                                                        'gx#module-export::t)
                                                       (let* ((_e8873988759_
                                                               (##unchecked-structure-ref
                                                                _g8873488744_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e8874088762_
                                                               (##unchecked-structure-ref
                                                                _g8873488744_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e8874188765_
                                                               (##unchecked-structure-ref
                                                                _g8873488744_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e8874188765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e8874288768_
                            (##unchecked-structure-ref
                             _g8873488744_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g8877088772_)
                              (eq? _g8877088772_ 'read-module-body))
                            _e8874288768_)
                           (_K8873888756_)
                           (_else8873688752_)))
                     (_else8873688752_)))
               (_else8873688752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude88729_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e88775_
                                        ((lambda (_xport88778_)
                                           (let ((_proc88781_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport88778_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc88781_)
                                                 _proc88781_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path88635_
                                                  _pre88725_
                                                  _proc88781_))))
                                         _$e88775_)
                                        _default-read-module-body88637_)))
                                 (_path-id88785_
                                  (gx#core-module-path->namespace _path88635_))
                                 (_pkg-id88787_
                                  (if _pkg88727_
                                      (string-append
                                       _pkg88727_
                                       '"/"
                                       _path-id88785_)
                                      _path-id88785_))
                                 (_module-id88789_
                                  (string->symbol _pkg-id88787_))
                                 (_module-ns88794_
                                  (let ((_$e88791_ _ns88726_))
                                    (if _$e88791_ _$e88791_ _pkg-id88787_)))
                                 (_body88797_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body88783_ _inp88719_))
                                   gx#current-module-reader-path
                                   _path88635_
                                   gx#current-module-reader-args
                                   _args88723_)))
                            (values _prelude88729_
                                    _module-id88789_
                                    _module-ns88794_
                                    _body88797_)))))))
                 (_string-e88639_
                  (lambda (_obj88716_ _what88717_)
                    (if (string? _obj88716_)
                        _obj88716_
                        (if (symbol? _obj88716_)
                            (symbol->string _obj88716_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what88717_)
                             _path88635_
                             _obj88716_)))))
                 (_read-lang-args88640_
                  (lambda (_inp88671_ _args88672_)
                    (let* ((_args8867388681_ _args88672_)
                           (_else8867588689_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path88635_)))
                           (_K8867788704_
                            (lambda (_args88692_ _prelude88693_)
                              (let* ((_pkg88695_
                                      (pgetq__0 'package: _args88692_))
                                     (_pkg88697_
                                      (if _pkg88695_
                                          (_string-e88639_
                                           _pkg88695_
                                           '"package")
                                          '#f))
                                     (_ns88699_
                                      (pgetq__0 'namespace: _args88692_))
                                     (_ns88701_
                                      (if _ns88699_
                                          (_string-e88639_
                                           _ns88699_
                                           '"namespace")
                                          '#f)))
                                (_read-body88638_
                                 _inp88671_
                                 _prelude88693_
                                 _ns88701_
                                 _pkg88697_
                                 _args88692_)))))
                      (if (##pair? _args8867388681_)
                          (let ((_hd8867888707_ (##car _args8867388681_))
                                (_tl8867988709_ (##cdr _args8867388681_)))
                            (let* ((_prelude88712_ _hd8867888707_)
                                   (_args88714_ _tl8867988709_))
                              (_K8867788704_ _args88714_ _prelude88712_)))
                          (_else8867588689_)))))
                 (_read-lang88641_
                  (lambda (_inp88646_)
                    (let* ((_head88648_ (read-line _inp88646_))
                           (_$e88650_ (string-index__0 _head88648_ '#\space)))
                      (if _$e88650_
                          ((lambda (_ix88653_)
                             (let ((_lang88655_
                                    (substring _head88648_ '0 _ix88653_)))
                               (if (equal? _lang88655_ '"#lang")
                                   (let* ((_rest88657_
                                           (substring
                                            _head88648_
                                            (fx+ _ix88653_ '1)
                                            (string-length _head88648_)))
                                          (_args88668_
                                           (with-catch
                                            (lambda (_g8865888660_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path88635_
                                               _g8865888660_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest88657_
                                               (lambda (_g8866388665_)
                                                 (read-all
                                                  _g8866388665_
                                                  read)))))))
                                     (_read-lang-args88640_
                                      _inp88646_
                                      _args88668_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path88635_))))
                           _$e88650_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path88635_)))))
                 (_read-e88642_
                  (lambda (_inp88644_)
                    (if (eq? (peek-char _inp88644_) '#\#)
                        (_read-lang88641_ _inp88644_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path88635_)))))
          (gx#call-with-input-source-file _path88635_ _read-e88642_))))
    (define gx#core-read-module-package
      (lambda (_path88589_ _pre88590_ _ns88591_)
        (letrec ((_string-e88593_
                  (lambda (_e88633_)
                    (if (symbol? _e88633_)
                        (symbol->string _e88633_)
                        (if (string? _e88633_)
                            _e88633_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e88633_))))))
          (let _lp88595_ ((_dir88597_ (path-directory _path88589_))
                          (_pkg-path88598_ '()))
            (let ((_gerbil.pkg88600_ (path-expand '"gerbil.pkg" _dir88597_)))
              (if (file-exists? _gerbil.pkg88600_)
                  (let ((_plist88602_
                         (gx#core-library-package-plist__% _dir88597_ '#t)))
                    (if (null? _plist88602_)
                        (let ((_pkg88604_
                               (if (not (null? _pkg-path88598_))
                                   (string-join _pkg-path88598_ '"/")
                                   '#f)))
                          (values _pre88590_ _ns88591_ _pkg88604_))
                        (if (list? _plist88602_)
                            (let* ((_root88606_
                                    (pgetq__0 'package: _plist88602_))
                                   (_pkg88610_
                                    (let ((_pkg-path88608_
                                           (if _root88606_
                                               (cons (_string-e88593_
                                                      _root88606_)
                                                     _pkg-path88598_)
                                               _pkg-path88598_)))
                                      (if (not (null? _pkg-path88608_))
                                          (string-join _pkg-path88608_ '"/")
                                          '#f)))
                                   (_ns88617_
                                    (let ((_ns88615_
                                           (let ((_$e88612_ _ns88591_))
                                             (if _$e88612_
                                                 _$e88612_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist88602_)))))
                                      (if _ns88615_
                                          (_string-e88593_ _ns88615_)
                                          '#f)))
                                   (_pre88622_
                                    (let ((_$e88619_ _pre88590_))
                                      (if _$e88619_
                                          _$e88619_
                                          (pgetq__0 'prelude: _plist88602_)))))
                              (values _pre88622_ _ns88617_ _pkg88610_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist88602_))))
                  (let ((_dir*88625_
                         (path-strip-trailing-directory-separator _dir88597_)))
                    (if (or (string-empty? _dir*88625_)
                            (equal? _dir88597_ _dir*88625_))
                        (values _pre88590_ _ns88591_ '#f)
                        (let ((_xpath88630_ (path-strip-directory _dir*88625_))
                              (_xdir88631_ (path-directory _dir*88625_)))
                          (_lp88595_
                           _xdir88631_
                           (cons _xpath88630_ _pkg-path88598_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path88587_)
        (path-strip-extension (path-strip-directory _path88587_))))
    (define gx#core-module-path->id
      (lambda (_path88585_)
        (string->symbol (gx#core-module-path->namespace _path88585_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path88564_ _rel88565_)
        (let* ((_path88567_ (gx#stx-e _stx-path88564_))
               (_path88569_
                (if (string-empty? (path-extension _path88567_))
                    (string-append _path88567_ '".ss")
                    _path88567_)))
          (gx#core-resolve-path__%
           _path88569_
           (let ((_$e88572_ (gx#stx-source _stx-path88564_)))
             (if _$e88572_ _$e88572_ _rel88565_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path88578_)
        (let ((_rel88580_ '#f))
          (gx#core-resolve-module-path__% _stx-path88578_ _rel88580_))))
    (define gx#core-resolve-module-path
      (lambda _g90148_
        (let ((_g90147_ (##length _g90148_)))
          (cond ((##fx= _g90147_ 1)
                 (apply (lambda (_stx-path88578_)
                          (gx#core-resolve-module-path__0 _stx-path88578_))
                        _g90148_))
                ((##fx= _g90147_ 2)
                 (apply (lambda (_stx-path88582_ _rel88583_)
                          (gx#core-resolve-module-path__%
                           _stx-path88582_
                           _rel88583_))
                        _g90148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g90148_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath88450_)
        (let* ((_spath88452_ (symbol->string (gx#stx-e _libpath88450_)))
               (_spath88454_
                (substring _spath88452_ '1 (string-length _spath88452_)))
               (_ext88456_ (path-extension _spath88454_))
               (_ssi88458_
                (if (string-empty? _ext88456_)
                    (string-append _spath88454_ '".ssi")
                    (string-append
                     (path-strip-extension _spath88454_)
                     '".ssi")))
               (_srcs88462_
                (if (string-empty? _ext88456_)
                    (map (lambda (_ext88460_)
                           (string-append _spath88454_ _ext88460_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath88454_ '()))))
          (let _lp88465_ ((_rest88467_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest8846888477_ _rest88467_)
                   (_E8847188481_
                    (lambda ()
                      (error '"No clause matching" _rest8846888477_))))
              (let ((_K8847388551_
                     (lambda (_rest88492_ _dir88493_)
                       (letrec ((_resolve88495_
                                 (lambda (_ssi88507_ _srcs88508_)
                                   (let ((_compiled-path88510_
                                          (path-expand _ssi88507_ _dir88493_)))
                                     (if (file-exists? _compiled-path88510_)
                                         (path-normalize _compiled-path88510_)
                                         (let _lpr88512_ ((_rest-src88514_
                                                           _srcs88508_))
                                           (let* ((_rest-src8851588523_
                                                   _rest-src88514_)
                                                  (_else8851788531_
                                                   (lambda ()
                                                     (_lp88465_ _rest88492_)))
                                                  (_K8851988539_
                                                   (lambda (_rest-src88534_
                                                            _src88535_)
                                                     (let ((_src-path88537_
                                                            (path-expand
                                                             _src88535_
                                                             _dir88493_)))
                                                       (if (file-exists?
                                                            _src-path88537_)
                                                           (path-normalize
                                                            _src-path88537_)
                                                           (_lpr88512_
                                                            _rest-src88534_))))))
                                             (if (##pair? _rest-src8851588523_)
                                                 (let ((_hd8852088542_
                                                        (##car _rest-src8851588523_))
                                                       (_tl8852188544_
                                                        (##cdr _rest-src8851588523_)))
                                                   (let* ((_src88547_
                                                           _hd8852088542_)
                                                          (_rest-src88549_
                                                           _tl8852188544_))
                                                     (_K8851988539_
                                                      _rest-src88549_
                                                      _src88547_)))
                                                 (_else8851788531_)))))))))
                         (let ((_$e88497_
                                (gx#core-library-package-path-prefix
                                 _dir88493_)))
                           (if _$e88497_
                               ((lambda (_prefix88500_)
                                  (if (string-prefix?
                                       _prefix88500_
                                       _spath88454_)
                                      (let ((_ssi88504_
                                             (substring
                                              _ssi88458_
                                              (string-length _prefix88500_)
                                              (string-length _ssi88458_)))
                                            (_srcs88505_
                                             (map (lambda (_src88502_)
                                                    (substring
                                                     _src88502_
                                                     (string-length
                                                      _prefix88500_)
                                                     (string-length
                                                      _src88502_)))
                                                  _srcs88462_)))
                                        (_resolve88495_
                                         _ssi88504_
                                         _srcs88505_))
                                      (_lp88465_ _rest88492_)))
                                _$e88497_)
                               (_resolve88495_ _ssi88458_ _srcs88462_))))))
                    (_K8847288486_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath88450_))))
                (let ((_try-match8847088489_
                       (lambda ()
                         (if (##null? _rest8846888477_)
                             (_K8847288486_)
                             (_E8847188481_)))))
                  (if (##pair? _rest8846888477_)
                      (let ((_tl8847588556_ (##cdr _rest8846888477_))
                            (_hd8847488554_ (##car _rest8846888477_)))
                        (let ((_dir88559_ _hd8847488554_)
                              (_rest88561_ _tl8847588556_))
                          (_K8847388551_ _rest88561_ _dir88559_)))
                      (_try-match8847088489_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath88423_)
        (letrec ((_resolve88425_
                  (lambda (_path88442_ _base88443_)
                    (let ((_$e88445_ (string-rindex__0 _base88443_ '#\/)))
                      (if _$e88445_
                          ((lambda (_idx88448_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base88443_ '0 _idx88448_)
                                '"/"
                                _path88442_))))
                           _$e88445_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path88442_))))))))
          (let ((_spath88427_ (symbol->string (gx#stx-e _modpath88423_)))
                (_mod88428_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod88428_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath88423_))
            (let ((_mpath88430_
                   (symbol->string
                    (##structure-ref
                     _mod88428_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp88432_ ((_spath88434_ _spath88427_)
                              (_mpath88435_ _mpath88430_))
                (if (string-prefix? '"../" _spath88434_)
                    (let ((_$e88437_ (string-rindex__0 _mpath88435_ '#\/)))
                      (if _$e88437_
                          ((lambda (_idx88440_)
                             (_lp88432_
                              (substring
                               _spath88434_
                               '3
                               (string-length _spath88434_))
                              (substring _mpath88435_ '0 _idx88440_)))
                           _$e88437_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath88423_)))
                    (if (string-prefix? '"./" _spath88434_)
                        (_lp88432_
                         (substring
                          _spath88434_
                          '2
                          (string-length _spath88434_))
                         _mpath88435_)
                        (_resolve88425_ _spath88434_ _mpath88435_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir88416_)
        (let ((_$e88418_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir88416_))))
          (if _$e88418_
              ((lambda (_pkg88421_)
                 (string-append (symbol->string _pkg88421_) '"/"))
               _$e88418_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir88388_ _exists?88389_)
        (let* ((_cache88391_ (gx#core-library-package-cache))
               (_$e88393_ (hash-get _cache88391_ _dir88388_)))
          (if _$e88393_
              (values _$e88393_)
              (let* ((_gerbil.pkg88396_ (path-expand '"gerbil.pkg" _dir88388_))
                     (_plist88403_
                      (if (or _exists?88389_ (file-exists? _gerbil.pkg88396_))
                          (let ((_e88401_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg88396_
                                  read)))
                            (if (eof-object? _e88401_)
                                '()
                                (if (list? _e88401_)
                                    _e88401_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg88396_
                                     _e88401_))))
                          '())))
                (hash-put! _cache88391_ _dir88388_ _plist88403_)
                _plist88403_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir88409_)
        (let ((_exists?88411_ '#f))
          (gx#core-library-package-plist__% _dir88409_ _exists?88411_))))
    (define gx#core-library-package-plist
      (lambda _g90150_
        (let ((_g90149_ (##length _g90150_)))
          (cond ((##fx= _g90149_ 1)
                 (apply (lambda (_dir88409_)
                          (gx#core-library-package-plist__0 _dir88409_))
                        _g90150_))
                ((##fx= _g90149_ 2)
                 (apply (lambda (_dir88413_ _exists?88414_)
                          (gx#core-library-package-plist__%
                           _dir88413_
                           _exists?88414_))
                        _g90150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g90150_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e88382_ (gx#current-expander-module-library-package-cache)))
          (if _$e88382_
              (values _$e88382_)
              (let ((_cache88385_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache88385_)
                _cache88385_)))))
    (define gx#core-library-module-path?
      (lambda (_stx88379_) (gx#core-special-module-path? _stx88379_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx88377_) (gx#core-special-module-path? _stx88377_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx88372_ _char88373_)
        (if (gx#identifier? _stx88372_)
            (if (interned-symbol? (gx#stx-e _stx88372_))
                (let ((_str88375_ (symbol->string (gx#stx-e _stx88372_))))
                  (if (fx> (string-length _str88375_) '1)
                      (eq? (string-ref _str88375_ '0) _char88373_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx88366_)
        (gx#core-bound-identifier?__%
         _stx88366_
         (lambda (_g8836788369_)
           (gx#expander-binding?__% _g8836788369_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx88360_)
        (gx#core-bound-identifier?__%
         _stx88360_
         (lambda (_g8836188363_)
           (gx#expander-binding?__% _g8836188363_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx88347_)
        (letrec ((_module-prelude?88349_
                  (lambda (_e88355_)
                    (let ((_$e88357_
                           (##structure-instance-of?
                            _e88355_
                            'gx#module-context::t)))
                      (if _$e88357_
                          _$e88357_
                          (##structure-instance-of?
                           _e88355_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx88347_
           (lambda (_g8835088352_)
             (gx#expander-binding?__%
              _g8835088352_
              _module-prelude?88349_))))))
    (define gx#core-bind-import!__%
      (lambda (_in88277_ _ctx88278_ _force-weak?88279_)
        (let* ((_in8828088289_ _in88277_)
               (_E8828288293_
                (lambda () (error '"No clause matching" _in8828088289_)))
               (_K8828388306_
                (lambda (_weak?88296_ _phi88297_ _key88298_ _source88299_)
                  (gx#core-bind!__%
                   _key88298_
                   (let ((_e88301_
                          (gx#core-resolve-module-export _source88299_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e88301_ '1 gx#binding::t '#f)
                      _key88298_
                      _phi88297_
                      _e88301_
                      (##unchecked-structure-ref
                       _source88299_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e88303_ _force-weak?88279_))
                        (if _$e88303_ _$e88303_ _weak?88296_))))
                   gx#core-context-rebind?
                   _phi88297_
                   _ctx88278_))))
          (if (##structure-direct-instance-of?
               _in8828088289_
               'gx#module-import::t)
              (let* ((_e8828488309_
                      (##unchecked-structure-ref
                       _in8828088289_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source88312_ _e8828488309_)
                     (_e8828588314_
                      (##unchecked-structure-ref
                       _in8828088289_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key88317_ _e8828588314_)
                     (_e8828688319_
                      (##unchecked-structure-ref
                       _in8828088289_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi88322_ _e8828688319_)
                     (_e8828788324_
                      (##unchecked-structure-ref
                       _in8828088289_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?88327_ _e8828788324_))
                (_K8828388306_
                 _weak?88327_
                 _phi88322_
                 _key88317_
                 _source88312_))
              (_E8828288293_)))))
    (define gx#core-bind-import!__0
      (lambda (_in88332_)
        (let* ((_ctx88334_ (gx#current-expander-context))
               (_force-weak?88336_ '#f))
          (gx#core-bind-import!__% _in88332_ _ctx88334_ _force-weak?88336_))))
    (define gx#core-bind-import!__1
      (lambda (_in88338_ _ctx88339_)
        (let ((_force-weak?88341_ '#f))
          (gx#core-bind-import!__% _in88338_ _ctx88339_ _force-weak?88341_))))
    (define gx#core-bind-import!
      (lambda _g90152_
        (let ((_g90151_ (##length _g90152_)))
          (cond ((##fx= _g90151_ 1)
                 (apply (lambda (_in88332_)
                          (gx#core-bind-import!__0 _in88332_))
                        _g90152_))
                ((##fx= _g90151_ 2)
                 (apply (lambda (_in88338_ _ctx88339_)
                          (gx#core-bind-import!__1 _in88338_ _ctx88339_))
                        _g90152_))
                ((##fx= _g90151_ 3)
                 (apply (lambda (_in88343_ _ctx88344_ _force-weak?88345_)
                          (gx#core-bind-import!__%
                           _in88343_
                           _ctx88344_
                           _force-weak?88345_))
                        _g90152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g90152_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in88263_ _ctx88264_)
        (gx#core-bind-import!__% _in88263_ _ctx88264_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in88269_)
        (let ((_ctx88271_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in88269_ _ctx88271_))))
    (define gx#core-bind-weak-import!
      (lambda _g90154_
        (let ((_g90153_ (##length _g90154_)))
          (cond ((##fx= _g90153_ 1)
                 (apply (lambda (_in88269_)
                          (gx#core-bind-weak-import!__0 _in88269_))
                        _g90154_))
                ((##fx= _g90153_ 2)
                 (apply (lambda (_in88273_ _ctx88274_)
                          (gx#core-bind-weak-import!__% _in88273_ _ctx88274_))
                        _g90154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g90154_))))))
    (define gx#core-resolve-module-export
      (lambda (_out88154_)
        (letrec ((_subst88156_
                  (lambda (_key88202_)
                    (let* ((_key8820388211_ _key88202_)
                           (_else8820588219_ (lambda () _key88202_))
                           (_K8820788250_
                            (lambda (_mark88222_ _id88223_)
                              (let* ((_mark8822488230_ _mark88222_)
                                     (_E8822688234_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8822488230_)))
                                     (_K8822788242_
                                      (lambda (_subst88237_)
                                        (let ((_$e88239_
                                               (if _subst88237_
                                                   (hash-get
                                                    _subst88237_
                                                    _id88223_)
                                                   '#f)))
                                          (if _$e88239_
                                              _$e88239_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key88202_))))))
                                (if (##structure-instance-of?
                                     _mark8822488230_
                                     'gx#expander-mark::t)
                                    (let* ((_e8822888245_
                                            (##unchecked-structure-ref
                                             _mark8822488230_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst88248_ _e8822888245_))
                                      (_K8822788242_ _subst88248_))
                                    (_E8822688234_))))))
                      (if (##pair? _key8820388211_)
                          (let ((_hd8820888253_ (##car _key8820388211_))
                                (_tl8820988255_ (##cdr _key8820388211_)))
                            (let* ((_id88258_ _hd8820888253_)
                                   (_mark88260_ _tl8820988255_))
                              (_K8820788250_ _mark88260_ _id88258_)))
                          (_else8820588219_))))))
          (let* ((_out8815788167_ _out88154_)
                 (_E8815988171_
                  (lambda () (error '"No clause matching" _out8815788167_)))
                 (_K8816088178_
                  (lambda (_phi88174_ _key88175_ _ctx88176_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx88176_ _phi88174_)
                     (_subst88156_ _key88175_)))))
            (if (##structure-direct-instance-of?
                 _out8815788167_
                 'gx#module-export::t)
                (let* ((_e8816188181_
                        (##unchecked-structure-ref
                         _out8815788167_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx88184_ _e8816188181_)
                       (_e8816288186_
                        (##unchecked-structure-ref
                         _out8815788167_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key88189_ _e8816288186_)
                       (_e8816388191_
                        (##unchecked-structure-ref
                         _out8815788167_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi88194_ _e8816388191_)
                       (_e8816488196_
                        (##unchecked-structure-ref
                         _out8815788167_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e8816588199_
                        (##unchecked-structure-ref
                         _out8815788167_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K8816088178_ _phi88194_ _key88189_ _ctx88184_))
                (_E8815988171_))))))
    (define gx#core-module-export->import__%
      (lambda (_out88079_ _rename88080_ _dphi88081_)
        (let* ((_out8808288092_ _out88079_)
               (_E8808488096_
                (lambda () (error '"No clause matching" _out8808288092_)))
               (_K8808588108_
                (lambda (_weak?88099_
                         _name88100_
                         _phi88101_
                         _key88102_
                         _ctx88103_)
                  (##structure
                   gx#module-import::t
                   _out88079_
                   (let ((_$e88105_ _rename88080_))
                     (if _$e88105_ _$e88105_ _name88100_))
                   (fx+ _phi88101_ _dphi88081_)
                   _weak?88099_))))
          (if (##structure-direct-instance-of?
               _out8808288092_
               'gx#module-export::t)
              (let* ((_e8808688111_
                      (##unchecked-structure-ref
                       _out8808288092_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx88114_ _e8808688111_)
                     (_e8808788116_
                      (##unchecked-structure-ref
                       _out8808288092_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key88119_ _e8808788116_)
                     (_e8808888121_
                      (##unchecked-structure-ref
                       _out8808288092_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi88124_ _e8808888121_)
                     (_e8808988126_
                      (##unchecked-structure-ref
                       _out8808288092_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name88129_ _e8808988126_)
                     (_e8809088131_
                      (##unchecked-structure-ref
                       _out8808288092_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?88134_ _e8809088131_))
                (_K8808588108_
                 _weak?88134_
                 _name88129_
                 _phi88124_
                 _key88119_
                 _ctx88114_))
              (_E8808488096_)))))
    (define gx#core-module-export->import__0
      (lambda (_out88139_)
        (let* ((_rename88141_ '#f) (_dphi88143_ '0))
          (gx#core-module-export->import__%
           _out88139_
           _rename88141_
           _dphi88143_))))
    (define gx#core-module-export->import__1
      (lambda (_out88145_ _rename88146_)
        (let ((_dphi88148_ '0))
          (gx#core-module-export->import__%
           _out88145_
           _rename88146_
           _dphi88148_))))
    (define gx#core-module-export->import
      (lambda _g90156_
        (let ((_g90155_ (##length _g90156_)))
          (cond ((##fx= _g90155_ 1)
                 (apply (lambda (_out88139_)
                          (gx#core-module-export->import__0 _out88139_))
                        _g90156_))
                ((##fx= _g90155_ 2)
                 (apply (lambda (_out88145_ _rename88146_)
                          (gx#core-module-export->import__1
                           _out88145_
                           _rename88146_))
                        _g90156_))
                ((##fx= _g90155_ 3)
                 (apply (lambda (_out88150_ _rename88151_ _dphi88152_)
                          (gx#core-module-export->import__%
                           _out88150_
                           _rename88151_
                           _dphi88152_))
                        _g90156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g90156_))))))
    (define gx#core-expand-module%
      (lambda (_stx88007_)
        (letrec ((_make-context88009_
                  (lambda (_id88060_)
                    (let* ((_super88062_ (gx#current-expander-context))
                           (_bind-id88064_ (gx#stx-e _id88060_))
                           (_mod-id88066_
                            (if (##structure-instance-of?
                                 _super88062_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super88062_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id88064_)
                                _bind-id88064_))
                           (_ns88068_ (symbol->string _mod-id88066_))
                           (_path88075_
                            (if (##structure-instance-of?
                                 _super88062_
                                 'gx#module-context::t)
                                (let ((_path88070_
                                       (##unchecked-structure-ref
                                        _super88062_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path88070_)
                                          (null? _path88070_))
                                      (cons _bind-id88064_ _path88070_)
                                      (if (not _path88070_)
                                          _bind-id88064_
                                          (cons _bind-id88064_
                                                (cons _path88070_ '())))))
                                _bind-id88064_)))
                      (let ((__obj90132
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
                         __obj90132
                         _mod-id88066_
                         _super88062_
                         _ns88068_
                         _path88075_)
                        __obj90132)))))
          (let* ((_e8801088020_ _stx88007_)
                 (_E8801288024_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8801088020_)))
                 (_E8801188056_
                  (lambda ()
                    (if (gx#stx-pair? _e8801088020_)
                        (let ((_e8801388028_ (gx#syntax-e _e8801088020_)))
                          (let ((_hd8801488031_ (##car _e8801388028_))
                                (_tl8801588033_ (##cdr _e8801388028_)))
                            (if (gx#stx-pair? _tl8801588033_)
                                (let ((_e8801688036_
                                       (gx#syntax-e _tl8801588033_)))
                                  (let ((_hd8801788039_ (##car _e8801688036_))
                                        (_tl8801888041_ (##cdr _e8801688036_)))
                                    (let* ((_id88044_ _hd8801788039_)
                                           (_body88046_ _tl8801888041_))
                                      (if (and (gx#identifier? _id88044_)
                                               (gx#stx-list? _body88046_))
                                          (let* ((_ctx88048_
                                                  (_make-context88009_
                                                   _id88044_))
                                                 (_body88050_
                                                  (gx#core-expand-module-begin
                                                   _body88046_
                                                   _ctx88048_))
                                                 (_body88052_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88050_)
                                                   (gx#stx-source
                                                    _stx88007_))))
                                            (##unchecked-structure-set!
                                             _ctx88048_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body88052_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx88048_
                                             _body88052_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id88044_
                                             _ctx88048_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id88044_)
                                              _body88052_)
                                             (gx#stx-source _stx88007_)))
                                          (_E8801288024_)))))
                                (_E8801288024_))))
                        (_E8801288024_)))))
            (_E8801188056_)))))
    (define gx#core-expand-module-begin
      (lambda (_body87973_ _ctx87974_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx87977_
                   (gx#core-expand-head (cons '%%begin-module _body87973_)))
                  (_e8797887985_ _stx87977_)
                  (_E8798087989_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx87977_)))
                  (_E8797988003_
                   (lambda ()
                     (if (gx#stx-pair? _e8797887985_)
                         (let ((_e8798187993_ (gx#syntax-e _e8797887985_)))
                           (let ((_hd8798287996_ (##car _e8798187993_))
                                 (_tl8798387998_ (##cdr _e8798187993_)))
                             (if (and (gx#identifier? _hd8798287996_)
                                      (gx#core-identifier=?
                                       _hd8798287996_
                                       '%#begin-module))
                                 (let ((_body88001_ _tl8798387998_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx87977_)
                                           _body88001_
                                           (gx#core-expand-module-body
                                            _body88001_))
                                       (_E8798087989_)))
                                 (_E8798087989_))))
                         (_E8798087989_)))))
             (_E8797988003_)))
         gx#current-expander-context
         _ctx87974_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body87769_)
        (letrec ((_expand-special87771_
                  (lambda (_hd87900_ _K87901_ _rest87902_ _r87903_)
                    (let* ((_e8790487921_ _hd87900_)
                           (_E8791687925_
                            (lambda ()
                              (_K87901_
                               _rest87902_
                               (cons (gx#core-expand-top _hd87900_)
                                     _r87903_))))
                           (_E8790687937_
                            (lambda ()
                              (if (gx#stx-pair? _e8790487921_)
                                  (let ((_e8791787929_
                                         (gx#syntax-e _e8790487921_)))
                                    (let ((_hd8791887932_
                                           (##car _e8791787929_))
                                          (_tl8791987934_
                                           (##cdr _e8791787929_)))
                                      (if (and (gx#identifier? _hd8791887932_)
                                               (gx#core-identifier=?
                                                _hd8791887932_
                                                '%#export))
                                          (if '#t
                                              (_K87901_
                                               _rest87902_
                                               (cons _hd87900_ _r87903_))
                                              (_E8791687925_))
                                          (_E8791687925_))))
                                  (_E8791687925_))))
                           (_E8790587969_
                            (lambda ()
                              (if (gx#stx-pair? _e8790487921_)
                                  (let ((_e8790787941_
                                         (gx#syntax-e _e8790487921_)))
                                    (let ((_hd8790887944_
                                           (##car _e8790787941_))
                                          (_tl8790987946_
                                           (##cdr _e8790787941_)))
                                      (if (and (gx#identifier? _hd8790887944_)
                                               (gx#core-identifier=?
                                                _hd8790887944_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8790987946_)
                                              (let ((_e8791087949_
                                                     (gx#syntax-e
                                                      _tl8790987946_)))
                                                (let ((_hd8791187952_
                                                       (##car _e8791087949_))
                                                      (_tl8791287954_
                                                       (##cdr _e8791087949_)))
                                                  (let ((_hd-bind87957_
                                                         _hd8791187952_))
                                                    (if (gx#stx-pair?
                                                         _tl8791287954_)
                                                        (let ((_e8791387959_
                                                               (gx#syntax-e
                                                                _tl8791287954_)))
                                                          (let ((_hd8791487962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8791387959_))
                        (_tl8791587964_ (##cdr _e8791387959_)))
                    (let ((_expr87967_ _hd8791487962_))
                      (if (gx#stx-null? _tl8791587964_)
                          (if (gx#core-bind-values? _hd-bind87957_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind87957_)
                                (_K87901_
                                 _rest87902_
                                 (cons _hd87900_ _r87903_)))
                              (_E8790687937_))
                          (_E8790687937_)))))
                (_E8790687937_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8790687937_))
                                          (_E8790687937_))))
                                  (_E8790687937_)))))
                      (_E8790587969_))))
                 (_expand-body87772_
                  (lambda (_rbody87774_)
                    (let _lp87776_ ((_rest87778_ _rbody87774_)
                                    (_body87779_ '()))
                      (let* ((_rest8778087788_ _rest87778_)
                             (_else8778287796_ (lambda () _body87779_))
                             (_K8778487888_
                              (lambda (_rest87799_ _hd87800_)
                                (let* ((_e8780187822_ _hd87800_)
                                       (_E8781787826_
                                        (lambda ()
                                          (_lp87776_
                                           _rest87799_
                                           (cons (gx#core-expand-expression
                                                  _hd87800_)
                                                 _body87779_))))
                                       (_E8781387840_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8780187822_)
                                              (let ((_e8781887830_
                                                     (gx#syntax-e
                                                      _e8780187822_)))
                                                (let ((_hd8781987833_
                                                       (##car _e8781887830_))
                                                      (_tl8782087835_
                                                       (##cdr _e8781887830_)))
                                                  (let ((_form87838_
                                                         _hd8781987833_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form87838_
                                                         gx#special-form-binding?)
                                                        (_lp87776_
                                                         _rest87799_
                                                         (cons _hd87800_
                                                               _body87779_))
                                                        (_E8781787826_)))))
                                              (_E8781787826_))))
                                       (_E8780387852_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8780187822_)
                                              (let ((_e8781487844_
                                                     (gx#syntax-e
                                                      _e8780187822_)))
                                                (let ((_hd8781587847_
                                                       (##car _e8781487844_))
                                                      (_tl8781687849_
                                                       (##cdr _e8781487844_)))
                                                  (if (and (gx#identifier?
                                                            _hd8781587847_)
                                                           (gx#core-identifier=?
                                                            _hd8781587847_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp87776_
                                                           _rest87799_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd87800_)
                         _body87779_))
                  (_E8781387840_))
              (_E8781387840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8781387840_))))
                                       (_E8780287884_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8780187822_)
                                              (let ((_e8780487856_
                                                     (gx#syntax-e
                                                      _e8780187822_)))
                                                (let ((_hd8780587859_
                                                       (##car _e8780487856_))
                                                      (_tl8780687861_
                                                       (##cdr _e8780487856_)))
                                                  (if (and (gx#identifier?
                                                            _hd8780587859_)
                                                           (gx#core-identifier=?
                                                            _hd8780587859_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8780687861_)
                                                          (let ((_e8780787864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8780687861_)))
                    (let ((_hd8780887867_ (##car _e8780787864_))
                          (_tl8780987869_ (##cdr _e8780787864_)))
                      (let ((_hd-bind87872_ _hd8780887867_))
                        (if (gx#stx-pair? _tl8780987869_)
                            (let ((_e8781087874_ (gx#syntax-e _tl8780987869_)))
                              (let ((_hd8781187877_ (##car _e8781087874_))
                                    (_tl8781287879_ (##cdr _e8781087874_)))
                                (let ((_expr87882_ _hd8781187877_))
                                  (if (gx#stx-null? _tl8781287879_)
                                      (if '#t
                                          (_lp87776_
                                           _rest87799_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind87872_)
                                                   (gx#core-expand-expression
                                                    _expr87882_))
                                                  (gx#stx-source _hd87800_))
                                                 _body87779_))
                                          (_E8780387852_))
                                      (_E8780387852_)))))
                            (_E8780387852_)))))
                  (_E8780387852_))
              (_E8780387852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8780387852_)))))
                                  (_E8780287884_)))))
                        (if (##pair? _rest8778087788_)
                            (let ((_hd8778587891_ (##car _rest8778087788_))
                                  (_tl8778687893_ (##cdr _rest8778087788_)))
                              (let* ((_hd87896_ _hd8778587891_)
                                     (_rest87898_ _tl8778687893_))
                                (_K8778487888_ _rest87898_ _hd87896_)))
                            (_else8778287796_)))))))
          (_expand-body87772_
           (gx#core-expand-block__%
            (cons '%#begin-module _body87769_)
            _expand-special87771_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx87612_
               _expanded?87613_
               _method87614_
               _current-phi87615_
               _expand187616_)
        (letrec ((_K87618_
                  (lambda (_rest87736_ _r87737_)
                    (let* ((_e8773887745_ _rest87736_)
                           (_E8774087749_ (lambda () _r87737_))
                           (_E8773987765_
                            (lambda ()
                              (if (gx#stx-pair? _e8773887745_)
                                  (let ((_e8774187753_
                                         (gx#syntax-e _e8773887745_)))
                                    (let ((_hd8774287756_
                                           (##car _e8774187753_))
                                          (_tl8774387758_
                                           (##cdr _e8774187753_)))
                                      (let* ((_hd87761_ _hd8774287756_)
                                             (_rest87763_ _tl8774387758_))
                                        (if '#t
                                            (_step87619_
                                             _hd87761_
                                             _rest87763_
                                             _r87737_)
                                            (_E8774087749_)))))
                                  (_E8774087749_)))))
                      (_E8773987765_))))
                 (_step87619_
                  (lambda (_hd87650_ _rest87651_ _r87652_)
                    (let* ((_e8765387671_ _hd87650_)
                           (_E8766687675_
                            (lambda ()
                              (if (_expanded?87613_ (gx#stx-e _hd87650_))
                                  (_K87618_
                                   _rest87651_
                                   (cons (gx#stx-e _hd87650_) _r87652_))
                                  (_expand187616_
                                   _hd87650_
                                   _K87618_
                                   _rest87651_
                                   _r87652_))))
                           (_E8766287691_
                            (lambda ()
                              (if (gx#stx-pair? _e8765387671_)
                                  (let ((_e8766787679_
                                         (gx#syntax-e _e8765387671_)))
                                    (let ((_hd8766887682_
                                           (##car _e8766787679_))
                                          (_tl8766987684_
                                           (##cdr _e8766787679_)))
                                      (let* ((_macro87687_ _hd8766887682_)
                                             (_body87689_ _tl8766987684_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro87687_
                                             gx#syntax-binding?)
                                            (_K87618_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro87687_)
                                                    _hd87650_
                                                    _method87614_)
                                                   _rest87651_)
                                             _r87652_)
                                            (_E8766687675_)))))
                                  (_E8766687675_))))
                           (_E8765587705_
                            (lambda ()
                              (if (gx#stx-pair? _e8765387671_)
                                  (let ((_e8766387695_
                                         (gx#syntax-e _e8765387671_)))
                                    (let ((_hd8766487698_
                                           (##car _e8766387695_))
                                          (_tl8766587700_
                                           (##cdr _e8766387695_)))
                                      (if (eq? (gx#stx-e _hd8766487698_)
                                               'begin:)
                                          (let ((_body87703_ _tl8766587700_))
                                            (if '#t
                                                (_K87618_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest87651_
                                                  _body87703_)
                                                 _r87652_)
                                                (_E8766287691_)))
                                          (_E8766287691_))))
                                  (_E8766287691_))))
                           (_E8765487732_
                            (lambda ()
                              (if (gx#stx-pair? _e8765387671_)
                                  (let ((_e8765687709_
                                         (gx#syntax-e _e8765387671_)))
                                    (let ((_hd8765787712_
                                           (##car _e8765687709_))
                                          (_tl8765887714_
                                           (##cdr _e8765687709_)))
                                      (if (eq? (gx#stx-e _hd8765787712_) 'phi:)
                                          (if (gx#stx-pair? _tl8765887714_)
                                              (let ((_e8765987717_
                                                     (gx#syntax-e
                                                      _tl8765887714_)))
                                                (let ((_hd8766087720_
                                                       (##car _e8765987717_))
                                                      (_tl8766187722_
                                                       (##cdr _e8765987717_)))
                                                  (let* ((_dphi87725_
                                                          _hd8766087720_)
                                                         (_body87727_
                                                          _tl8766187722_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi87725_)
                                                        (let ((_rbody87730_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K87618_ _body87727_ '()))
                        _current-phi87615_
                        (fx+ (gx#stx-e _dphi87725_) (_current-phi87615_)))))
                  (_K87618_ _rest87651_ (foldr1 cons _r87652_ _rbody87730_)))
                (_E8765587705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8765587705_))
                                          (_E8765587705_))))
                                  (_E8765587705_)))))
                      (_E8765487732_)))))
          (let* ((_e8762087627_ _stx87612_)
                 (_E8762287631_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8762087627_)))
                 (_E8762187646_
                  (lambda ()
                    (if (gx#stx-pair? _e8762087627_)
                        (let ((_e8762387635_ (gx#syntax-e _e8762087627_)))
                          (let ((_hd8762487638_ (##car _e8762387635_))
                                (_tl8762587640_ (##cdr _e8762387635_)))
                            (let ((_body87643_ _tl8762587640_))
                              (if '#t
                                  (if (_current-phi87615_)
                                      (_K87618_ _body87643_ '())
                                      (call-with-parameters
                                       (lambda () (_K87618_ _body87643_ '()))
                                       _current-phi87615_
                                       (gx#current-expander-phi)))
                                  (_E8762287631_)))))
                        (_E8762287631_)))))
            (_E8762187646_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx87279_ _internal-expand?87280_)
        (letrec ((_expand187282_
                  (lambda (_hd87592_ _K87593_ _rest87594_ _r87595_)
                    (if (gx#core-bound-module? _hd87592_)
                        (_import187283_
                         (gx#syntax-local-e__0 _hd87592_)
                         _K87593_
                         _rest87594_
                         _r87595_)
                        (if (gx#core-library-module-path? _hd87592_)
                            (_import187283_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd87592_))
                             _K87593_
                             _rest87594_
                             _r87595_)
                            (if (gx#core-library-relative-module-path?
                                 _hd87592_)
                                (_import187283_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd87592_))
                                 _K87593_
                                 _rest87594_
                                 _r87595_)
                                (let ((_e87597_ (gx#stx-e _hd87592_)))
                                  (if (pair? _e87597_)
                                      (let ((_$e87599_
                                             (gx#stx-e (car _e87597_))))
                                        (if (eq? 'spec: _$e87599_)
                                            (_import-spec87286_
                                             _hd87592_
                                             _K87593_
                                             _rest87594_
                                             _r87595_)
                                            (if (eq? 'in: _$e87599_)
                                                (_import-submodule87284_
                                                 _hd87592_
                                                 _K87593_
                                                 _rest87594_
                                                 _r87595_)
                                                (if (eq? 'runtime: _$e87599_)
                                                    (_import-runtime87285_
                                                     _hd87592_
                                                     _K87593_
                                                     _rest87594_
                                                     _r87595_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx87279_
                                                     _hd87592_)))))
                                      (if (string? _e87597_)
                                          (_import187283_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd87592_
                                             (gx#stx-source _stx87279_)))
                                           _K87593_
                                           _rest87594_
                                           _r87595_)
                                          (if (##structure-instance-of?
                                               _e87597_
                                               'gx#module-context::t)
                                              (_K87593_
                                               _rest87594_
                                               (cons _e87597_ _r87595_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx87279_
                                               _hd87592_))))))))))
                 (_import187283_
                  (lambda (_ctx87581_ _K87582_ _rest87583_ _r87584_)
                    (let ((_dphi87586_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K87582_
                       _rest87583_
                       (cons (##structure
                              gx#import-set::t
                              _ctx87581_
                              _dphi87586_
                              (map (lambda (_g8758787589_)
                                     (gx#core-module-export->import__%
                                      _g8758787589_
                                      '#f
                                      _dphi87586_))
                                   (##unchecked-structure-ref
                                    _ctx87581_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r87584_)))))
                 (_import-submodule87284_
                  (lambda (_hd87548_ _K87549_ _rest87550_ _r87551_)
                    (let* ((_e8755287559_ _hd87548_)
                           (_E8755487563_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8755287559_)))
                           (_E8755387577_
                            (lambda ()
                              (if (gx#stx-pair? _e8755287559_)
                                  (let ((_e8755587567_
                                         (gx#syntax-e _e8755287559_)))
                                    (let ((_hd8755687570_
                                           (##car _e8755587567_))
                                          (_tl8755787572_
                                           (##cdr _e8755587567_)))
                                      (let ((_spath87575_ _tl8755787572_))
                                        (if '#t
                                            (_import187283_
                                             (_import-spec-source87287_
                                              _spath87575_)
                                             _K87549_
                                             _rest87550_
                                             _r87551_)
                                            (_E8755487563_)))))
                                  (_E8755487563_)))))
                      (_E8755387577_))))
                 (_import-runtime87285_
                  (lambda (_hd87515_ _K87516_ _rest87517_ _r87518_)
                    (let* ((_e8751987526_ _hd87515_)
                           (_E8752187530_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8751987526_)))
                           (_E8752087544_
                            (lambda ()
                              (if (gx#stx-pair? _e8751987526_)
                                  (let ((_e8752287534_
                                         (gx#syntax-e _e8751987526_)))
                                    (let ((_hd8752387537_
                                           (##car _e8752287534_))
                                          (_tl8752487539_
                                           (##cdr _e8752287534_)))
                                      (let ((_spath87542_ _tl8752487539_))
                                        (if '#t
                                            (_K87516_
                                             _rest87517_
                                             (cons (_import-spec-source87287_
                                                    _spath87542_)
                                                   _r87518_))
                                            (_E8752187530_)))))
                                  (_E8752187530_)))))
                      (_E8752087544_))))
                 (_import-spec87286_
                  (lambda (_hd87354_ _K87355_ _rest87356_ _r87357_)
                    (let* ((_e8735887375_ _hd87354_)
                           (_E8736787379_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8735887375_)))
                           (_E8736087489_
                            (lambda ()
                              (if (gx#stx-pair? _e8735887375_)
                                  (let ((_e8736887383_
                                         (gx#syntax-e _e8735887375_)))
                                    (let ((_hd8736987386_
                                           (##car _e8736887383_))
                                          (_tl8737087388_
                                           (##cdr _e8736887383_)))
                                      (if (gx#stx-pair? _tl8737087388_)
                                          (let ((_e8737187391_
                                                 (gx#syntax-e _tl8737087388_)))
                                            (let ((_hd8737287394_
                                                   (##car _e8737187391_))
                                                  (_tl8737387396_
                                                   (##cdr _e8737187391_)))
                                              (let* ((_path87399_
                                                      _hd8737287394_)
                                                     (_specs87401_
                                                      _tl8737387396_))
                                                (if '#t
                                                    (let ((_src-ctx87403_
                                                           (_import-spec-source87287_
                                                            _path87399_))
                                                          (_exports87404_
                                                           (make-hash-table))
                                                          (_specs87405_
                                                           (gx#syntax->list
                                                            _specs87401_)))
                                                      (for-each
                                                       (lambda (_out87407_)
                                                         (hash-put!
                                                          _exports87404_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out87407_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out87407_
                         '4
                         gx#module-export::t
                         '#f))
                  _out87407_))
               (##unchecked-structure-ref
                _src-ctx87403_
                '9
                gx#module-context::t
                '#f))
              (_K87355_
               _rest87356_
               (foldl1 (lambda (_spec87409_ _r87410_)
                         (let* ((_e8741187427_ _spec87409_)
                                (_E8741387431_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8741187427_)))
                                (_E8741287485_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8741187427_)
                                       (let ((_e8741487435_
                                              (gx#syntax-e _e8741187427_)))
                                         (let ((_hd8741587438_
                                                (##car _e8741487435_))
                                               (_tl8741687440_
                                                (##cdr _e8741487435_)))
                                           (let ((_phi87443_ _hd8741587438_))
                                             (if (gx#stx-pair? _tl8741687440_)
                                                 (let ((_e8741787445_
                                                        (gx#syntax-e
                                                         _tl8741687440_)))
                                                   (let ((_hd8741887448_
                                                          (##car _e8741787445_))
                                                         (_tl8741987450_
                                                          (##cdr _e8741787445_)))
                                                     (let ((_name87453_
                                                            _hd8741887448_))
                                                       (if (gx#stx-pair?
                                                            _tl8741987450_)
                                                           (let ((_e8742087455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8741987450_)))
                     (let ((_hd8742187458_ (##car _e8742087455_))
                           (_tl8742287460_ (##cdr _e8742087455_)))
                       (let ((_src-phi87463_ _hd8742187458_))
                         (if (gx#stx-pair? _tl8742287460_)
                             (let ((_e8742387465_
                                    (gx#syntax-e _tl8742287460_)))
                               (let ((_hd8742487468_ (##car _e8742387465_))
                                     (_tl8742587470_ (##cdr _e8742387465_)))
                                 (let ((_src-name87473_ _hd8742487468_))
                                   (if (gx#stx-null? _tl8742587470_)
                                       (if (and (gx#stx-fixnum? _src-phi87463_)
                                                (gx#identifier?
                                                 _src-name87473_)
                                                (gx#stx-fixnum? _phi87443_)
                                                (gx#identifier? _name87453_))
                                           (let ((_src-phi87475_
                                                  (gx#stx-e _src-phi87463_))
                                                 (_src-name87476_
                                                  (gx#core-identifier-key
                                                   _src-name87473_))
                                                 (_phi87477_
                                                  (gx#stx-e _phi87443_))
                                                 (_name87478_
                                                  (gx#core-identifier-key
                                                   _name87453_)))
                                             (let ((_$e87480_
                                                    (hash-get
                                                     _exports87404_
                                                     (cons _src-phi87475_
                                                           _src-name87476_))))
                                               (if _$e87480_
                                                   ((lambda (_out87483_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out87483_
                                                             _name87478_
                                                             (fx- _phi87477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi87475_))
                    _r87410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e87480_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx87279_
                                                    _hd87354_))))
                                           (_E8741387431_))
                                       (_E8741387431_)))))
                             (_E8741387431_)))))
                   (_E8741387431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8741387431_)))))
                                       (_E8741387431_)))))
                           (_E8741287485_)))
                       _r87357_
                       _specs87405_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8736787379_)))))
                                          (_E8736787379_))))
                                  (_E8736787379_))))
                           (_E8735987511_
                            (lambda ()
                              (if (gx#stx-pair? _e8735887375_)
                                  (let ((_e8736187493_
                                         (gx#syntax-e _e8735887375_)))
                                    (let ((_hd8736287496_
                                           (##car _e8736187493_))
                                          (_tl8736387498_
                                           (##cdr _e8736187493_)))
                                      (if (gx#stx-pair? _tl8736387498_)
                                          (let ((_e8736487501_
                                                 (gx#syntax-e _tl8736387498_)))
                                            (let ((_hd8736587504_
                                                   (##car _e8736487501_))
                                                  (_tl8736687506_
                                                   (##cdr _e8736487501_)))
                                              (let ((_path87509_
                                                     _hd8736587504_))
                                                (if (gx#stx-null?
                                                     _tl8736687506_)
                                                    (if '#t
                                                        (_K87355_
                                                         _rest87356_
                                                         (cons (_import-spec-source87287_
                                                                _path87509_)
                                                               _r87357_))
                                                        (_E8736087489_))
                                                    (_E8736087489_)))))
                                          (_E8736087489_))))
                                  (_E8736087489_)))))
                      (_E8735987511_))))
                 (_import-spec-source87287_
                  (lambda (_spath87352_)
                    (gx#core-import-nested-module _spath87352_ _stx87279_)))
                 (_import!87288_
                  (lambda (_rbody87301_)
                    (letrec* ((_current-ctx87303_
                               (gx#current-expander-context))
                              (_deps87304_ (make-hash-table-eq))
                              (_bind!87305_
                               (lambda (_hd87350_)
                                 (gx#core-bind-import!__1
                                  _hd87350_
                                  _current-ctx87303_))))
                      (let _lp87307_ ((_rest87309_ _rbody87301_)
                                      (_body87310_ '()))
                        (let* ((_rest8731187319_ _rest87309_)
                               (_else8731387329_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx87303_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx87303_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx87303_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body87310_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx87327_ _g90157_)
                                     (gx#eval-module _ctx87327_))
                                   _deps87304_)
                                  _body87310_))
                               (_K8731587338_
                                (lambda (_rest87332_ _hd87333_)
                                  (if (##structure-direct-instance-of?
                                       _hd87333_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!87305_ _hd87333_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd87333_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd87333_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps87304_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd87333_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd87333_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!87305_
                                             (##unchecked-structure-ref
                                              _hd87333_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd87333_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps87304_
                                                 (##unchecked-structure-ref
                                                  _hd87333_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e87335_
                                                 (##structure-instance-of?
                                                  _hd87333_
                                                  'gx#module-context::t)))
                                            (if _$e87335_
                                                _$e87335_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx87279_
                                                 _hd87333_)))))
                                  (_lp87307_
                                   _rest87332_
                                   (cons _hd87333_ _body87310_)))))
                          (if (##pair? _rest8731187319_)
                              (let ((_hd8731687341_ (##car _rest8731187319_))
                                    (_tl8731787343_ (##cdr _rest8731187319_)))
                                (let* ((_hd87346_ _hd8731687341_)
                                       (_rest87348_ _tl8731787343_))
                                  (_K8731587338_ _rest87348_ _hd87346_)))
                              (_else8731387329_)))))))
                 (_expanded-import?87289_
                  (lambda (_e87293_)
                    (let ((_$e87295_
                           (##structure-direct-instance-of?
                            _e87293_
                            'gx#import-set::t)))
                      (if _$e87295_
                          _$e87295_
                          (let ((_$e87298_
                                 (##structure-direct-instance-of?
                                  _e87293_
                                  'gx#module-import::t)))
                            (if _$e87298_
                                _$e87298_
                                (##structure-instance-of?
                                 _e87293_
                                 'gx#module-context::t))))))))
          (let ((_rbody87291_
                 (gx#core-expand-import/export
                  _stx87279_
                  _expanded-import?87289_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand187282_)))
            (if _internal-expand?87280_
                (reverse _rbody87291_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!87288_ _rbody87291_))
                 (gx#stx-source _stx87279_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx87605_)
        (let ((_internal-expand?87607_ '#f))
          (gx#core-expand-import%__% _stx87605_ _internal-expand?87607_))))
    (define gx#core-expand-import%
      (lambda _g90159_
        (let ((_g90158_ (##length _g90159_)))
          (cond ((##fx= _g90158_ 1)
                 (apply (lambda (_stx87605_)
                          (gx#core-expand-import%__0 _stx87605_))
                        _g90159_))
                ((##fx= _g90158_ 2)
                 (apply (lambda (_stx87609_ _internal-expand?87610_)
                          (gx#core-expand-import%__%
                           _stx87609_
                           _internal-expand?87610_))
                        _g90159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g90159_))))))
    (define gx#core-import-nested-module
      (lambda (_spath87206_ _where87207_)
        (let* ((_e8720887215_ _spath87206_)
               (_E8721087219_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8720887215_)))
               (_E8720987274_
                (lambda ()
                  (if (gx#stx-pair? _e8720887215_)
                      (let ((_e8721187223_ (gx#syntax-e _e8720887215_)))
                        (let ((_hd8721287226_ (##car _e8721187223_))
                              (_tl8721387228_ (##cdr _e8721187223_)))
                          (let* ((_origin87231_ _hd8721287226_)
                                 (_sub87233_ _tl8721387228_))
                            (if '#t
                                (let ((_origin-ctx87235_
                                       (if (gx#stx-false? _origin87231_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin87231_))))
                                  (let _lp87237_ ((_rest87239_ _sub87233_)
                                                  (_ctx87240_
                                                   _origin-ctx87235_))
                                    (let* ((_e8724187248_ _rest87239_)
                                           (_E8724387252_
                                            (lambda () _ctx87240_))
                                           (_E8724287270_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8724187248_)
                                                  (let ((_e8724487256_
                                                         (gx#syntax-e
                                                          _e8724187248_)))
                                                    (let ((_hd8724587259_
                                                           (##car _e8724487256_))
                                                          (_tl8724687261_
                                                           (##cdr _e8724487256_)))
                                                      (let* ((_id87264_
                                                              _hd8724587259_)
                                                             (_rest87266_
                                                              _tl8724687261_))
                                                        (if '#t
                                                            (let ((_bind87268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id87264_ '0 _ctx87240_)))
                      (if (and (##structure-direct-instance-of?
                                _bind87268_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind87268_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where87207_
                           _spath87206_
                           _id87264_))
                      (_lp87237_
                       _rest87266_
                       (##unchecked-structure-ref
                        _bind87268_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8724387252_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8724387252_)))))
                                      (_E8724287270_))))
                                (_E8721087219_)))))
                      (_E8721087219_)))))
          (_E8720987274_))))
    (define gx#core-expand-import-source
      (lambda (_hd87204_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd87204_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx86712_ _internal-expand?86713_)
        (letrec* ((_make-export__9008890089_
                   (lambda (_bind87152_ _phi87153_ _ctx87154_ _name87155_)
                     (let* ((_key87157_
                             (##unchecked-structure-ref
                              _bind87152_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key87159_
                             (if _name87155_
                                 (gx#core-identifier-key _name87155_)
                                 _key87157_)))
                       (##structure
                        gx#module-export::t
                        _ctx87154_
                        _key87157_
                        _phi87153_
                        _export-key87159_
                        (let ((_$e87162_
                               (##structure-instance-of?
                                _bind87152_
                                'gx#extern-binding::t)))
                          (if _$e87162_
                              _$e87162_
                              (##structure-direct-instance-of?
                               _bind87152_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9009090093_
                   (lambda (_bind87168_)
                     (let* ((_phi87170_ (gx#current-export-expander-phi))
                            (_ctx87172_ (gx#current-expander-context))
                            (_name87174_ '#f))
                       (_make-export__9008890089_
                        _bind87168_
                        _phi87170_
                        _ctx87172_
                        _name87174_))))
                  (_make-export__1__9009190094_
                   (lambda (_bind87176_ _phi87177_)
                     (let* ((_ctx87179_ (gx#current-expander-context))
                            (_name87181_ '#f))
                       (_make-export__9008890089_
                        _bind87176_
                        _phi87177_
                        _ctx87179_
                        _name87181_))))
                  (_make-export__2__9009290095_
                   (lambda (_bind87183_ _phi87184_ _ctx87185_)
                     (let ((_name87187_ '#f))
                       (_make-export__9008890089_
                        _bind87183_
                        _phi87184_
                        _ctx87185_
                        _name87187_))))
                  (_make-export86715_
                   (lambda _g90161_
                     (let ((_g90160_ (##length _g90161_)))
                       (cond ((##fx= _g90160_ 1)
                              (apply (lambda (_bind87168_)
                                       (_make-export__0__9009090093_
                                        _bind87168_))
                                     _g90161_))
                             ((##fx= _g90160_ 2)
                              (apply (lambda (_bind87176_ _phi87177_)
                                       (_make-export__1__9009190094_
                                        _bind87176_
                                        _phi87177_))
                                     _g90161_))
                             ((##fx= _g90160_ 3)
                              (apply (lambda (_bind87183_
                                              _phi87184_
                                              _ctx87185_)
                                       (_make-export__2__9009290095_
                                        _bind87183_
                                        _phi87184_
                                        _ctx87185_))
                                     _g90161_))
                             ((##fx= _g90160_ 4)
                              (apply (lambda (_bind87189_
                                              _phi87190_
                                              _ctx87191_
                                              _name87192_)
                                       (_make-export__9008890089_
                                        _bind87189_
                                        _phi87190_
                                        _ctx87191_
                                        _name87192_))
                                     _g90161_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g90161_))))))
                  (_expand186716_
                   (lambda (_hd86865_ _K86866_ _rest86867_ _r86868_)
                     (let* ((_e8686986901_ _hd86865_)
                            (_E8689686905_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx86712_
                                _hd86865_)))
                            (_E8688686984_
                             (lambda ()
                               (if (gx#stx-pair? _e8686986901_)
                                   (let ((_e8689786909_
                                          (gx#syntax-e _e8686986901_)))
                                     (let ((_hd8689886912_
                                            (##car _e8689786909_))
                                           (_tl8689986914_
                                            (##cdr _e8689786909_)))
                                       (if (eq? (gx#stx-e _hd8689886912_)
                                                'import:)
                                           (let ((_in86917_ _tl8689986914_))
                                             (if (gx#stx-list? _in86917_)
                                                 (let _lp86919_ ((_in-rest86921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in86917_)
                         (_r86922_ _r86868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8692386930_
                                                           _in-rest86921_)
                                                          (_E8692586934_
                                                           (lambda ()
                                                             (_K86866_
                                                              _rest86867_
                                                              _r86922_)))
                                                          (_E8692486980_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8692386930_)
                         (let ((_e8692686938_ (gx#syntax-e _e8692386930_)))
                           (let ((_hd8692786941_ (##car _e8692686938_))
                                 (_tl8692886943_ (##cdr _e8692686938_)))
                             (let* ((_hd86946_ _hd8692786941_)
                                    (_in-rest86948_ _tl8692886943_))
                               (if '#t
                                   (let ((_src86978_
                                          (if (gx#core-bound-module? _hd86946_)
                                              (gx#syntax-local-e__0 _hd86946_)
                                              (if (gx#core-library-module-path?
                                                   _hd86946_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd86946_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd86946_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd86946_))
                                                      (if (gx#stx-string?
                                                           _hd86946_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd86946_
                                                            (gx#stx-source
                                                             _stx86712_)))
                                                          (let* ((_e8694986956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd86946_)
                         (_E8695186960_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx86712_
                             _hd86946_)))
                         (_E8695086974_
                          (lambda ()
                            (if (gx#stx-pair? _e8694986956_)
                                (let ((_e8695286964_
                                       (gx#syntax-e _e8694986956_)))
                                  (let ((_hd8695386967_ (##car _e8695286964_))
                                        (_tl8695486969_ (##cdr _e8695286964_)))
                                    (if (eq? (gx#stx-e _hd8695386967_) 'in:)
                                        (let ((_spath86972_ _tl8695486969_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath86972_
                                               _stx86712_)
                                              (_E8695186960_)))
                                        (_E8695186960_))))
                                (_E8695186960_)))))
                    (_E8695086974_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp86919_
                                      _in-rest86948_
                                      (_export-imports86717_
                                       _src86978_
                                       _r86922_)))
                                   (_E8692586934_)))))
                         (_E8692586934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8692486980_)))
                                                 (_E8689686905_)))
                                           (_E8689686905_))))
                                   (_E8689686905_))))
                            (_E8687387023_
                             (lambda ()
                               (if (gx#stx-pair? _e8686986901_)
                                   (let ((_e8688786988_
                                          (gx#syntax-e _e8686986901_)))
                                     (let ((_hd8688886991_
                                            (##car _e8688786988_))
                                           (_tl8688986993_
                                            (##cdr _e8688786988_)))
                                       (if (eq? (gx#stx-e _hd8688886991_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8688986993_)
                                               (let ((_e8689086996_
                                                      (gx#syntax-e
                                                       _tl8688986993_)))
                                                 (let ((_hd8689186999_
                                                        (##car _e8689086996_))
                                                       (_tl8689287001_
                                                        (##cdr _e8689086996_)))
                                                   (let ((_id87004_
                                                          _hd8689186999_))
                                                     (if (gx#stx-pair?
                                                          _tl8689287001_)
                                                         (let ((_e8689387006_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8689287001_)))
                   (let ((_hd8689487009_ (##car _e8689387006_))
                         (_tl8689587011_ (##cdr _e8689387006_)))
                     (let ((_name87014_ _hd8689487009_))
                       (if (gx#stx-null? _tl8689587011_)
                           (if '#t
                               (let* ((_phi87016_
                                       (gx#current-export-expander-phi))
                                      (_$e87018_
                                       (gx#core-resolve-identifier__1
                                        _id87004_
                                        _phi87016_)))
                                 (if _$e87018_
                                     ((lambda (_bind87021_)
                                        (_K86866_
                                         _rest86867_
                                         (cons (_make-export__9008890089_
                                                _bind87021_
                                                _phi87016_
                                                (gx#current-expander-context)
                                                _name87014_)
                                               _r86868_)))
                                      _$e87018_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx86712_
                                      _hd86865_
                                      _id87004_)))
                               (_E8688686984_))
                           (_E8688686984_)))))
                 (_E8688686984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8688686984_))
                                           (_E8688686984_))))
                                   (_E8688686984_))))
                            (_E8687287072_
                             (lambda ()
                               (if (gx#stx-pair? _e8686986901_)
                                   (let ((_e8687487027_
                                          (gx#syntax-e _e8686986901_)))
                                     (let ((_hd8687587030_
                                            (##car _e8687487027_))
                                           (_tl8687687032_
                                            (##cdr _e8687487027_)))
                                       (if (eq? (gx#stx-e _hd8687587030_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8687687032_)
                                               (let ((_e8687787035_
                                                      (gx#syntax-e
                                                       _tl8687687032_)))
                                                 (let ((_hd8687887038_
                                                        (##car _e8687787035_))
                                                       (_tl8687987040_
                                                        (##cdr _e8687787035_)))
                                                   (let ((_phi87043_
                                                          _hd8687887038_))
                                                     (if (gx#stx-pair?
                                                          _tl8687987040_)
                                                         (let ((_e8688087045_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8687987040_)))
                   (let ((_hd8688187048_ (##car _e8688087045_))
                         (_tl8688287050_ (##cdr _e8688087045_)))
                     (let ((_id87053_ _hd8688187048_))
                       (if (gx#stx-pair? _tl8688287050_)
                           (let ((_e8688387055_ (gx#syntax-e _tl8688287050_)))
                             (let ((_hd8688487058_ (##car _e8688387055_))
                                   (_tl8688587060_ (##cdr _e8688387055_)))
                               (let ((_name87063_ _hd8688487058_))
                                 (if (gx#stx-null? _tl8688587060_)
                                     (if (and (gx#stx-fixnum? _phi87043_)
                                              (gx#identifier? _id87053_)
                                              (gx#identifier? _name87063_))
                                         (let* ((_phi87065_
                                                 (gx#stx-e _phi87043_))
                                                (_$e87067_
                                                 (gx#core-resolve-identifier__1
                                                  _id87053_
                                                  _phi87065_)))
                                           (if _$e87067_
                                               ((lambda (_bind87070_)
                                                  (_K86866_
                                                   _rest86867_
                                                   (cons (_make-export__9008890089_
                                                          _bind87070_
                                                          _phi87065_
                                                          (gx#current-expander-context)
                                                          _name87063_)
                                                         _r86868_)))
                                                _$e87067_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx86712_
                                                _hd86865_
                                                _id87053_)))
                                         (_E8687387023_))
                                     (_E8687387023_)))))
                           (_E8687387023_)))))
                 (_E8687387023_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8687387023_))
                                           (_E8687387023_))))
                                   (_E8687387023_))))
                            (_E8687187083_
                             (lambda ()
                               (let ((_id87076_ _e8686986901_))
                                 (if (gx#identifier? _id87076_)
                                     (let ((_$e87078_
                                            (gx#core-resolve-identifier__1
                                             _id87076_
                                             (gx#current-export-expander-phi))))
                                       (if _$e87078_
                                           ((lambda (_bind87081_)
                                              (_K86866_
                                               _rest86867_
                                               (cons (_make-export__0__9009090093_
                                                      _bind87081_)
                                                     _r86868_)))
                                            _$e87078_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx86712_
                                            _hd86865_)))
                                     (_E8687287072_)))))
                            (_E8687087147_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8686986901_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx87087_
                                               (gx#current-expander-context))
                                              (_current-phi87089_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx87091_
                                               (gx#core-context-shift
                                                _current-ctx87087_
                                                _current-phi87089_))
                                              (_phi-bind87093_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx87091_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp87096_ ((_bind-rest87098_
                                                          _phi-bind87093_)
                                                         (_set87099_ '()))
                                           (let* ((_bind-rest8710087110_
                                                   _bind-rest87098_)
                                                  (_else8710287118_
                                                   (lambda ()
                                                     (_K86866_
                                                      _rest86867_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi87089_
                                                             _set87099_)
                                                            _r86868_))))
                                                  (_K8710487128_
                                                   (lambda (_bind-rest87121_
                                                            _bind87122_
                                                            _key87123_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind87122_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind87122_))
                                                         (_lp87096_
                                                          _bind-rest87121_
                                                          _set87099_)
                                                         (_lp87096_
                                                          _bind-rest87121_
                                                          (cons (_make-export__2__9009290095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind87122_
                         _current-phi87089_
                         _current-ctx87087_)
                        _set87099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8710087110_)
                                                 (let ((_hd8710587131_
                                                        (##car _bind-rest8710087110_))
                                                       (_tl8710687133_
                                                        (##cdr _bind-rest8710087110_)))
                                                   (if (##pair? _hd8710587131_)
                                                       (let ((_hd8710787136_
                                                              (##car _hd8710587131_))
                                                             (_tl8710887138_
                                                              (##cdr _hd8710587131_)))
                                                         (let* ((_key87141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8710787136_)
                        (_bind87143_ _tl8710887138_)
                        (_bind-rest87145_ _tl8710687133_))
                   (_K8710487128_ _bind-rest87145_ _bind87143_ _key87141_)))
               (_else8710287118_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8710287118_)))))
                                       (_E8687187083_))
                                   (_E8687187083_)))))
                       (_E8687087147_))))
                  (_export-imports86717_
                   (lambda (_src86741_ _r86742_)
                     (letrec* ((_current-ctx86744_
                                (gx#current-expander-context))
                               (_current-phi86745_
                                (gx#current-export-expander-phi))
                               (_import->export86746_
                                (lambda (_in86827_)
                                  (let* ((_in8682886836_ _in86827_)
                                         (_E8683086840_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8682886836_)))
                                         (_K8683186847_
                                          (lambda (_phi86843_
                                                   _key86844_
                                                   _out86845_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx86744_
                                             _key86844_
                                             _phi86843_
                                             _key86844_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8682886836_
                                         'gx#module-import::t)
                                        (let* ((_e8683286850_
                                                (##unchecked-structure-ref
                                                 _in8682886836_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out86853_ _e8683286850_)
                                               (_e8683386855_
                                                (##unchecked-structure-ref
                                                 _in8682886836_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key86858_ _e8683386855_)
                                               (_e8683486860_
                                                (##unchecked-structure-ref
                                                 _in8682886836_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi86863_ _e8683486860_))
                                          (_K8683186847_
                                           _phi86863_
                                           _key86858_
                                           _out86853_))
                                        (_E8683086840_)))))
                               (_fold-e86747_
                                (lambda (_in86749_ _r86750_)
                                  (let* ((_in8675186765_ _in86749_)
                                         (_else8675486773_
                                          (lambda () _r86750_)))
                                    (let ((_K8676086809_
                                           (lambda (_phi86805_
                                                    _key86806_
                                                    _out86807_)
                                             (if (and (fx= _phi86805_
                                                           _current-phi86745_)
                                                      (eq? _src86741_
                                                           (##unchecked-structure-ref
                                                            _out86807_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export86746_
                                                        _in86749_)
                                                       _r86750_)
                                                 _r86750_)))
                                          (_K8675686784_
                                           (lambda (_imports86777_
                                                    _phi86778_
                                                    _ctx86779_)
                                             (if (and (fx= _phi86778_
                                                           _current-phi86745_)
                                                      (eq? _src86741_
                                                           _ctx86779_))
                                                 (foldl1 (lambda (_in86781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r86782_)
                   (cons (_import->export86746_ _in86781_) _r86782_))
                 _r86750_
                 _imports86777_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r86750_))))
                                      (let ((_try-match8675386802_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8675186765_
                                                    'gx#import-set::t)
                                                   (let* ((_e8675786787_
                                                           (##unchecked-structure-ref
                                                            _in8675186765_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8675886792_
                                                           (##unchecked-structure-ref
                                                            _in8675186765_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8675986797_
                                                           (##unchecked-structure-ref
                                                            _in8675186765_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx86790_
                                                            _e8675786787_)
                                                           (_phi86795_
                                                            _e8675886792_)
                                                           (_imports86800_
                                                            _e8675986797_))
                                                       (_K8675686784_
                                                        _imports86800_
                                                        _phi86795_
                                                        _ctx86790_)))
                                                   (_else8675486773_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8675186765_
                                             'gx#module-import::t)
                                            (let* ((_e8676186812_
                                                    (##unchecked-structure-ref
                                                     _in8675186765_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8676286817_
                                                    (##unchecked-structure-ref
                                                     _in8675186765_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8676386822_
                                                    (##unchecked-structure-ref
                                                     _in8675186765_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out86815_ _e8676186812_)
                                                    (_key86820_ _e8676286817_)
                                                    (_phi86825_ _e8676386822_))
                                                (_K8676086809_
                                                 _phi86825_
                                                 _key86820_
                                                 _out86815_)))
                                            (_try-match8675386802_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src86741_
                              _current-phi86745_
                              (foldl1 _fold-e86747_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx86744_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r86742_))))
                  (_export!86718_
                   (lambda (_rbody86731_)
                     (letrec* ((_current-ctx86733_
                                (gx#current-expander-context))
                               (_fold-e86734_
                                (lambda (_out86738_ _r86739_)
                                  (if (##structure-direct-instance-of?
                                       _out86738_
                                       'gx#module-export::t)
                                      (cons _out86738_ _r86739_)
                                      (if (##structure-direct-instance-of?
                                           _out86738_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r86739_
                                                  (##unchecked-structure-ref
                                                   _out86738_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r86739_)))))
                       (let ((_body86736_ (reverse _rbody86731_)))
                         (##unchecked-structure-set!
                          _current-ctx86733_
                          (foldl1 _fold-e86734_
                                  (##unchecked-structure-ref
                                   _current-ctx86733_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body86736_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body86736_))))
                  (_expanded-export?86719_
                   (lambda (_e86726_)
                     (let ((_$e86728_
                            (##structure-direct-instance-of?
                             _e86726_
                             'gx#module-export::t)))
                       (if _$e86728_
                           _$e86728_
                           (##structure-direct-instance-of?
                            _e86726_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?86713_)
              (let ((_rbody86724_
                     (gx#core-expand-import/export
                      _stx86712_
                      _expanded-export?86719_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand186716_)))
                (if _internal-expand?86713_
                    (reverse _rbody86724_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!86718_ _rbody86724_))
                     (gx#stx-source _stx86712_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx86712_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx86712_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx87197_)
        (let ((_internal-expand?87199_ '#f))
          (gx#core-expand-export%__% _stx87197_ _internal-expand?87199_))))
    (define gx#core-expand-export%
      (lambda _g90163_
        (let ((_g90162_ (##length _g90163_)))
          (cond ((##fx= _g90162_ 1)
                 (apply (lambda (_stx87197_)
                          (gx#core-expand-export%__0 _stx87197_))
                        _g90163_))
                ((##fx= _g90162_ 2)
                 (apply (lambda (_stx87201_ _internal-expand?87202_)
                          (gx#core-expand-export%__%
                           _stx87201_
                           _internal-expand?87202_))
                        _g90163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g90163_))))))
    (define gx#core-expand-export-source
      (lambda (_hd86709_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd86709_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx86679_)
        (let* ((_e8668086687_ _stx86679_)
               (_E8668286691_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8668086687_)))
               (_E8668186705_
                (lambda ()
                  (if (gx#stx-pair? _e8668086687_)
                      (let ((_e8668386695_ (gx#syntax-e _e8668086687_)))
                        (let ((_hd8668486698_ (##car _e8668386695_))
                              (_tl8668586700_ (##cdr _e8668386695_)))
                          (let ((_body86703_ _tl8668586700_))
                            (if (gx#identifier-list? _body86703_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body86703_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body86703_))
                                   (gx#stx-source _stx86679_)))
                                (_E8668286691_)))))
                      (_E8668286691_)))))
          (_E8668186705_))))
    (define gx#core-bind-feature!__%
      (lambda (_id86645_ _private?86646_ _phi86647_ _ctx86648_)
        (gx#core-bind-syntax!__%
         _id86645_
         ((if _private?86646_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id86645_))
         _private?86646_
         _phi86647_
         _ctx86648_)))
    (define gx#core-bind-feature!__0
      (lambda (_id86653_)
        (let* ((_private?86655_ '#f)
               (_phi86657_ (gx#current-expander-phi))
               (_ctx86659_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id86653_
           _private?86655_
           _phi86657_
           _ctx86659_))))
    (define gx#core-bind-feature!__1
      (lambda (_id86661_ _private?86662_)
        (let* ((_phi86664_ (gx#current-expander-phi))
               (_ctx86666_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id86661_
           _private?86662_
           _phi86664_
           _ctx86666_))))
    (define gx#core-bind-feature!__2
      (lambda (_id86668_ _private?86669_ _phi86670_)
        (let ((_ctx86672_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id86668_
           _private?86669_
           _phi86670_
           _ctx86672_))))
    (define gx#core-bind-feature!
      (lambda _g90165_
        (let ((_g90164_ (##length _g90165_)))
          (cond ((##fx= _g90164_ 1)
                 (apply (lambda (_id86653_)
                          (gx#core-bind-feature!__0 _id86653_))
                        _g90165_))
                ((##fx= _g90164_ 2)
                 (apply (lambda (_id86661_ _private?86662_)
                          (gx#core-bind-feature!__1 _id86661_ _private?86662_))
                        _g90165_))
                ((##fx= _g90164_ 3)
                 (apply (lambda (_id86668_ _private?86669_ _phi86670_)
                          (gx#core-bind-feature!__2
                           _id86668_
                           _private?86669_
                           _phi86670_))
                        _g90165_))
                ((##fx= _g90164_ 4)
                 (apply (lambda (_id86674_
                                 _private?86675_
                                 _phi86676_
                                 _ctx86677_)
                          (gx#core-bind-feature!__%
                           _id86674_
                           _private?86675_
                           _phi86676_
                           _ctx86677_))
                        _g90165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g90165_))))))))
