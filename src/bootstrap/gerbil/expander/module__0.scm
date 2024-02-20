(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708418155)
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
      (lambda _$args92210_
        (apply make-instance gx#module-import::t _$args92210_)))
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
      (lambda _$args92207_
        (apply make-instance gx#module-export::t _$args92207_)))
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
      (lambda _$args92204_
        (apply make-instance gx#import-set::t _$args92204_)))
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
      (lambda _$args92201_
        (apply make-instance gx#export-set::t _$args92201_)))
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
      (lambda _$args92198_
        (apply make-instance gx#import-expander::t _$args92198_)))
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
      (lambda _$args92195_
        (apply make-instance gx#export-expander::t _$args92195_)))
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
      (lambda _$args92192_
        (apply make-instance gx#import-export-expander::t _$args92192_)))
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
      (lambda (_path92189_ _fun92190_)
        (call-with-input-file
         (cons 'path: (cons _path92189_ gx#source-file-settings))
         _fun92190_)))
    (define gx#module-context:::init!
      (lambda (_self92183_ _id92184_ _super92185_ _ns92186_ _path92187_)
        (if (##fx< '11 (##structure-length _self92183_))
            (begin
              (##unchecked-structure-set!
               _self92183_
               _id92184_
               '1
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               (make-hash-table-eq)
               '2
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               _super92185_
               '3
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               '#f
               '4
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               '#f
               '5
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               _ns92186_
               '6
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               _path92187_
               '7
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               '()
               '8
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               '()
               '9
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               '#f
               '10
               (##structure-type _self92183_)
               '#f)
              (##unchecked-structure-set!
               _self92183_
               '#f
               '11
               (##structure-type _self92183_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92183_
                   '11
                   (##vector-length _self92183_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self92027_ _ctx92028_ _root92029_)
        (let ((_super92037_
               (let ((_$e92031_ _root92029_))
                 (if _$e92031_
                     _$e92031_
                     (let ((_$e92034_ (gx#core-context-root__0)))
                       (if _$e92034_
                           _$e92034_
                           (let ((__obj92252
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor92253
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj92252
                                     ':init!)))
                               (if __constructor92253
                                   (__constructor92253 __obj92252)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj92252)))))))
          (if _ctx92028_
              (let ((_id92040_
                     (##structure-ref
                      _ctx92028_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path92041_
                     (##structure-ref _ctx92028_ '7 gx#module-context::t '#f))
                    (_in92042_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx92028_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e92043_
                     (make-promise (lambda () (gx#eval-module _ctx92028_)))))
                (if (##fx< '8 (##structure-length _self92027_))
                    (begin
                      (##unchecked-structure-set!
                       _self92027_
                       _id92040_
                       '1
                       (##structure-type _self92027_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92027_
                       (make-hash-table-eq 'size: (length _in92042_))
                       '2
                       (##structure-type _self92027_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92027_
                       _super92037_
                       '3
                       (##structure-type _self92027_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92027_
                       '#f
                       '4
                       (##structure-type _self92027_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92027_
                       '#f
                       '5
                       (##structure-type _self92027_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92027_
                       _path92041_
                       '6
                       (##structure-type _self92027_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92027_
                       _in92042_
                       '7
                       (##structure-type _self92027_)
                       '#f)
                      (##unchecked-structure-set!
                       _self92027_
                       _e92043_
                       '8
                       (##structure-type _self92027_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self92027_
                           '8
                           (##vector-length _self92027_)))
                (for-each
                 (lambda (_g9204492046_)
                   (gx#core-bind-weak-import!__% _g9204492046_ _self92027_))
                 _in92042_))
              (if (##fx< '8 (##structure-length _self92027_))
                  (begin
                    (##unchecked-structure-set!
                     _self92027_
                     '#f
                     '1
                     (##structure-type _self92027_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92027_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self92027_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92027_
                     _super92037_
                     '3
                     (##structure-type _self92027_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92027_
                     '#f
                     '4
                     (##structure-type _self92027_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92027_
                     '#f
                     '5
                     (##structure-type _self92027_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92027_
                     '#f
                     '6
                     (##structure-type _self92027_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92027_
                     '()
                     '7
                     (##structure-type _self92027_)
                     '#f)
                    (##unchecked-structure-set!
                     _self92027_
                     '#f
                     '8
                     (##structure-type _self92027_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self92027_
                         '8
                         (##vector-length _self92027_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self92052_ _ctx92053_)
        (let ((_root92055_ '#f))
          (gx#prelude-context:::init!__% _self92052_ _ctx92053_ _root92055_))))
    (define gx#prelude-context:::init!
      (lambda _g92259_
        (let ((_g92258_ (##length _g92259_)))
          (cond ((##fx= _g92258_ 2)
                 (apply (lambda (_self92052_ _ctx92053_)
                          (gx#prelude-context:::init!__0
                           _self92052_
                           _ctx92053_))
                        _g92259_))
                ((##fx= _g92258_ 3)
                 (apply (lambda (_self92057_ _ctx92058_ _root92059_)
                          (gx#prelude-context:::init!__%
                           _self92057_
                           _ctx92058_
                           _root92059_))
                        _g92259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g92259_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self91901_ _e91902_)
        (if (##fx< '3 (##structure-length _self91901_))
            (begin
              (##unchecked-structure-set!
               _self91901_
               _e91902_
               '1
               (##structure-type _self91901_)
               '#f)
              (##unchecked-structure-set!
               _self91901_
               (gx#current-expander-context)
               '2
               (##structure-type _self91901_)
               '#f)
              (##unchecked-structure-set!
               _self91901_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self91901_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91901_
                   '3
                   (##vector-length _self91901_)))))
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
      (lambda (_g9152791530_ _g9152891532_)
        (gx#core-apply-user-expander__%
         _g9152791530_
         _g9152891532_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9139891401_ _g9139991403_)
        (gx#core-apply-user-expander__%
         _g9139891401_
         _g9139991403_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx91269_)
        (let* ((_path91271_
                (##structure-ref _ctx91269_ '7 gx#module-context::t '#f))
               (_path91273_
                (if (pair? _path91271_) (last _path91271_) _path91271_)))
          (if (string? _path91273_) _path91273_ '#f))))
    (define gx#import-module__%
      (lambda (_path91245_ _reload?91246_ _eval?91247_)
        (let ((_ctx91249_
               ((gx#current-expander-module-import)
                _path91245_
                _reload?91246_)))
          (if (and _ctx91249_ _eval?91247_)
              (gx#eval-module _ctx91249_)
              '#!void)
          _ctx91249_)))
    (define gx#import-module__0
      (lambda (_path91254_)
        (let* ((_reload?91256_ '#f) (_eval?91258_ '#f))
          (gx#import-module__% _path91254_ _reload?91256_ _eval?91258_))))
    (define gx#import-module__1
      (lambda (_path91260_ _reload?91261_)
        (let ((_eval?91263_ '#f))
          (gx#import-module__% _path91260_ _reload?91261_ _eval?91263_))))
    (define gx#import-module
      (lambda _g92261_
        (let ((_g92260_ (##length _g92261_)))
          (cond ((##fx= _g92260_ 1)
                 (apply (lambda (_path91254_)
                          (gx#import-module__0 _path91254_))
                        _g92261_))
                ((##fx= _g92260_ 2)
                 (apply (lambda (_path91260_ _reload?91261_)
                          (gx#import-module__1 _path91260_ _reload?91261_))
                        _g92261_))
                ((##fx= _g92260_ 3)
                 (apply (lambda (_path91265_ _reload?91266_ _eval?91267_)
                          (gx#import-module__%
                           _path91265_
                           _reload?91266_
                           _eval?91267_))
                        _g92261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g92261_))))))
    (define gx#eval-module
      (lambda (_mod91242_) ((gx#current-expander-module-eval) _mod91242_)))
    (define gx#core-eval-module
      (lambda (_obj91227_)
        (letrec ((_force-e91229_
                  (lambda (_getf91238_ _e91239_)
                    (call-with-parameters
                     (lambda () (force (_getf91238_ _e91239_)))
                     gx#current-expander-context
                     _e91239_
                     gx#current-expander-phi
                     '0))))
          (let _recur91231_ ((_e91233_ _obj91227_))
            (if (##structure-instance-of? _e91233_ 'gx#module-context::t)
                (begin
                  (let ((_$e91235_ (gx#core-context-prelude__% _e91233_)))
                    (if _$e91235_ (_recur91231_ _$e91235_) '#!void))
                  (_force-e91229_ gx#module-context-e _e91233_))
                (if (##structure-instance-of? _e91233_ 'gx#prelude-context::t)
                    (_force-e91229_ gx#prelude-context-e _e91233_)
                    (if (gx#stx-string? _e91233_)
                        (_recur91231_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e91233_)))
                        (if (gx#core-library-module-path? _e91233_)
                            (_recur91231_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e91233_)))
                            (error '"Cannot eval module" _obj91227_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx91210_)
        (let _lp91212_ ((_e91214_ _ctx91210_))
          (if (or (##structure-instance-of? _e91214_ 'gx#module-context::t)
                  (##structure-instance-of? _e91214_ 'gx#local-context::t))
              (_lp91212_
               (##unchecked-structure-ref _e91214_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e91214_ 'gx#prelude-context::t)
                  _e91214_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx91223_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx91223_))))
    (define gx#core-context-prelude
      (lambda _g92263_
        (let ((_g92262_ (##length _g92263_)))
          (cond ((##fx= _g92262_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g92263_))
                ((##fx= _g92262_ 1)
                 (apply (lambda (_ctx91225_)
                          (gx#core-context-prelude__% _ctx91225_))
                        _g92263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g92263_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx91200_)
        (let* ((_ht91202_ (gx#current-expander-module-registry))
               (_$e91204_ (hash-get _ht91202_ _ctx91200_)))
          (if _$e91204_
              (values _$e91204_)
              (let ((_pre91207_
                     (let ((__obj92254
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
                       (gx#prelude-context:::init! __obj92254 _ctx91200_)
                       __obj92254)))
                (hash-put! _ht91202_ _ctx91200_ _pre91207_)
                _pre91207_)))))
    (define gx#core-import-module__%
      (lambda (_rpath91081_ _reload?91082_)
        (letrec ((_import-source91084_
                  (lambda (_path91169_)
                    (if (member _path91169_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path91169_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g92264_ (gx#core-read-module _path91169_)))
                         (begin
                           (let ((_g92265_
                                  (if (##values? _g92264_)
                                      (##vector-length _g92264_)
                                      1)))
                             (if (not (##fx= _g92265_ 4))
                                 (error "Context expects 4 values" _g92265_)))
                           (let ((_pre91172_ (##vector-ref _g92264_ 0))
                                 (_id91173_ (##vector-ref _g92264_ 1))
                                 (_ns91174_ (##vector-ref _g92264_ 2))
                                 (_body91175_ (##vector-ref _g92264_ 3)))
                             (let* ((_prelude91180_
                                     (if (##structure-instance-of?
                                          _pre91172_
                                          'gx#prelude-context::t)
                                         _pre91172_
                                         (if (##structure-instance-of?
                                              _pre91172_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre91172_)
                                             (if (string? _pre91172_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre91172_))
                                                 (if (not _pre91172_)
                                                     (let ((_$e91177_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e91177_
                                                           _$e91177_
                                                           (let ((__obj92255
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
                     (gx#prelude-context:::init! __obj92255 '#f)
                     __obj92255)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath91081_
                                                            _pre91172_))))))
                                    (_ctx91182_
                                     (let ((__obj92256
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
                                        __obj92256
                                        _id91173_
                                        _prelude91180_
                                        _ns91174_
                                        _path91169_)
                                       __obj92256))
                                    (_body91184_
                                     (gx#core-expand-module-begin
                                      _body91175_
                                      _ctx91182_))
                                    (_body91186_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body91184_)
                                      _path91169_
                                      _ctx91182_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx91182_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body91186_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx91182_
                                _body91186_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path91169_
                                _ctx91182_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id91173_
                                _ctx91182_)
                               _ctx91182_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path91169_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule91085_
                  (lambda (_rpath91097_)
                    (let* ((_rpath9109891105_ _rpath91097_)
                           (_E9110091109_
                            (lambda ()
                              (error '"No clause matching" _rpath9109891105_)))
                           (_K9110191157_
                            (lambda (_refs91112_ _origin91113_)
                              (let ((_ctx91115_
                                     (if _origin91113_
                                         (gx#core-import-module__%
                                          _origin91113_
                                          _reload?91082_)
                                         (gx#current-expander-context))))
                                (let _lp91117_ ((_rest91119_ _refs91112_)
                                                (_ctx91120_ _ctx91115_))
                                  (let* ((_rest9112191129_ _rest91119_)
                                         (_else9112391137_
                                          (lambda () _ctx91120_))
                                         (_K9112591145_
                                          (lambda (_rest91140_ _id91141_)
                                            (let ((_bind91143_
                                                   (gx#resolve-identifier__%
                                                    _id91141_
                                                    '0
                                                    _ctx91120_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind91143_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind91143_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp91117_
                                                   _rest91140_
                                                   (##unchecked-structure-ref
                                                    _bind91143_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath91097_
                                                         _id91141_
                                                         _bind91143_))))))
                                    (if (##pair? _rest9112191129_)
                                        (let ((_hd9112691148_
                                               (##car _rest9112191129_))
                                              (_tl9112791150_
                                               (##cdr _rest9112191129_)))
                                          (let* ((_id91153_ _hd9112691148_)
                                                 (_rest91155_ _tl9112791150_))
                                            (_K9112591145_
                                             _rest91155_
                                             _id91153_)))
                                        (_else9112391137_))))))))
                      (if (##pair? _rpath9109891105_)
                          (let ((_hd9110291160_ (##car _rpath9109891105_))
                                (_tl9110391162_ (##cdr _rpath9109891105_)))
                            (let* ((_origin91165_ _hd9110291160_)
                                   (_refs91167_ _tl9110391162_))
                              (_K9110191157_ _refs91167_ _origin91165_)))
                          (_E9110091109_))))))
          (let ((_$e91087_
                 (if (not _reload?91082_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath91081_)
                     '#f)))
            (if _$e91087_
                (values _$e91087_)
                (if (list? _rpath91081_)
                    (_import-submodule91085_ _rpath91081_)
                    (if (gx#core-library-module-path? _rpath91081_)
                        (let ((_ctx91090_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath91081_)
                                _reload?91082_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath91081_
                           _ctx91090_)
                          _ctx91090_)
                        (let* ((_npath91092_ (path-normalize _rpath91081_))
                               (_$e91094_
                                (if (not _reload?91082_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath91092_)
                                    '#f)))
                          (if _$e91094_
                              (values _$e91094_)
                              (_import-source91084_ _npath91092_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath91193_)
        (let ((_reload?91195_ '#f))
          (gx#core-import-module__% _rpath91193_ _reload?91195_))))
    (define gx#core-import-module
      (lambda _g92267_
        (let ((_g92266_ (##length _g92267_)))
          (cond ((##fx= _g92266_ 1)
                 (apply (lambda (_rpath91193_)
                          (gx#core-import-module__0 _rpath91193_))
                        _g92267_))
                ((##fx= _g92266_ 2)
                 (apply (lambda (_rpath91197_ _reload?91198_)
                          (gx#core-import-module__%
                           _rpath91197_
                           _reload?91198_))
                        _g92267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g92267_))))))
    (define gx#core-read-module
      (lambda (_path91070_)
        (with-catch
         (lambda (_exn91072_)
           (if (and (datum-parsing-exception? _exn91072_)
                    (eq? (datum-parsing-exception-filepos _exn91072_) '0))
               (gx#core-read-module/lang _path91070_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path91070_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9107491076_)
                      (display-exception _exn91072_ _g9107491076_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path91070_)))))
    (define gx#core-read-module/sexp
      (lambda (_path90933_)
        (let _lp90935_ ((_body90937_ (read-syntax-from-file _path90933_))
                        (_pre90938_ '#f)
                        (_ns90939_ '#f)
                        (_pkg90940_ '#f))
          (let* ((_e9094190965_ _body90937_)
                 (_E9095790987_
                  (lambda ()
                    (let ((_g92268_
                           (if _pkg90940_
                               (values _pre90938_ _ns90939_ _pkg90940_)
                               (gx#core-read-module-package
                                _path90933_
                                _pre90938_
                                _ns90939_))))
                      (begin
                        (let ((_g92269_
                               (if (##values? _g92268_)
                                   (##vector-length _g92268_)
                                   1)))
                          (if (not (##fx= _g92269_ 3))
                              (error "Context expects 3 values" _g92269_)))
                        (let ((_pre90969_ (##vector-ref _g92268_ 0))
                              (_ns90970_ (##vector-ref _g92268_ 1))
                              (_pkg90971_ (##vector-ref _g92268_ 2)))
                          (let* ((_prelude90973_
                                  (if (gx#core-bound-module-prelude?
                                       _pre90969_)
                                      (gx#syntax-local-e__0 _pre90969_)
                                      (if (gx#core-library-module-path?
                                           _pre90969_)
                                          (gx#core-resolve-library-module-path
                                           _pre90969_)
                                          (if (gx#stx-string? _pre90969_)
                                              (gx#core-resolve-module-path__%
                                               _pre90969_
                                               _path90933_)
                                              (gx#stx-e _pre90969_)))))
                                 (_path-id90975_
                                  (gx#core-module-path->namespace _path90933_))
                                 (_pkg-id90977_
                                  (if _pkg90971_
                                      (string-append
                                       _pkg90971_
                                       '"/"
                                       _path-id90975_)
                                      _path-id90975_))
                                 (_module-id90979_
                                  (string->symbol _pkg-id90977_))
                                 (_module-ns90984_
                                  (if (eq? _ns90970_ '#!void)
                                      '#f
                                      (let ((_$e90981_ _ns90970_))
                                        (if _$e90981_
                                            _$e90981_
                                            _pkg-id90977_)))))
                            (values _prelude90973_
                                    _module-id90979_
                                    _module-ns90984_
                                    _body90937_)))))))
                 (_E9095091016_
                  (lambda ()
                    (if (gx#stx-pair? _e9094190965_)
                        (let ((_e9095890991_ (gx#syntax-e _e9094190965_)))
                          (let ((_hd9095990994_ (##car _e9095890991_))
                                (_tl9096090996_ (##cdr _e9095890991_)))
                            (if (eq? (gx#stx-e _hd9095990994_) 'package:)
                                (if (gx#stx-pair? _tl9096090996_)
                                    (let ((_e9096190999_
                                           (gx#syntax-e _tl9096090996_)))
                                      (let ((_hd9096291002_
                                             (##car _e9096190999_))
                                            (_tl9096391004_
                                             (##cdr _e9096190999_)))
                                        (let* ((_pkg91007_ _hd9096291002_)
                                               (_rest91009_ _tl9096391004_))
                                          (if '#t
                                              (let ((_pkg91014_
                                                     (if (gx#identifier?
                                                          _pkg91007_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg91007_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg91007_)
                         (gx#stx-false? _pkg91007_))
                     (gx#stx-e _pkg91007_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg91007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90935_
                                                 _rest91009_
                                                 _pre90938_
                                                 _ns90939_
                                                 _pkg91014_))
                                              (_E9095790987_)))))
                                    (_E9095790987_))
                                (_E9095790987_))))
                        (_E9095790987_))))
                 (_E9094391042_
                  (lambda ()
                    (if (gx#stx-pair? _e9094190965_)
                        (let ((_e9095191020_ (gx#syntax-e _e9094190965_)))
                          (let ((_hd9095291023_ (##car _e9095191020_))
                                (_tl9095391025_ (##cdr _e9095191020_)))
                            (if (eq? (gx#stx-e _hd9095291023_) 'namespace:)
                                (if (gx#stx-pair? _tl9095391025_)
                                    (let ((_e9095491028_
                                           (gx#syntax-e _tl9095391025_)))
                                      (let ((_hd9095591031_
                                             (##car _e9095491028_))
                                            (_tl9095691033_
                                             (##cdr _e9095491028_)))
                                        (let* ((_ns91036_ _hd9095591031_)
                                               (_rest91038_ _tl9095691033_))
                                          (if '#t
                                              (let ((_ns91040_
                                                     (if (gx#identifier?
                                                          _ns91036_)
                                                         (symbol->string
                                                          (gx#stx-e _ns91036_))
                                                         (if (gx#stx-string?
                                                              _ns91036_)
                                                             (gx#stx-e
                                                              _ns91036_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns91036_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns91036_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90935_
                                                 _rest91038_
                                                 _pre90938_
                                                 _ns91040_
                                                 _pkg90940_))
                                              (_E9095091016_)))))
                                    (_E9095091016_))
                                (_E9095091016_))))
                        (_E9095091016_))))
                 (_E9094291066_
                  (lambda ()
                    (if (gx#stx-pair? _e9094190965_)
                        (let ((_e9094491046_ (gx#syntax-e _e9094190965_)))
                          (let ((_hd9094591049_ (##car _e9094491046_))
                                (_tl9094691051_ (##cdr _e9094491046_)))
                            (if (eq? (gx#stx-e _hd9094591049_) 'prelude:)
                                (if (gx#stx-pair? _tl9094691051_)
                                    (let ((_e9094791054_
                                           (gx#syntax-e _tl9094691051_)))
                                      (let ((_hd9094891057_
                                             (##car _e9094791054_))
                                            (_tl9094991059_
                                             (##cdr _e9094791054_)))
                                        (let* ((_prelude91062_ _hd9094891057_)
                                               (_rest91064_ _tl9094991059_))
                                          (if '#t
                                              (_lp90935_
                                               _rest91064_
                                               _prelude91062_
                                               _ns90939_
                                               _pkg90940_)
                                              (_E9094391042_)))))
                                    (_E9094391042_))
                                (_E9094391042_))))
                        (_E9094391042_)))))
            (_E9094291066_)))))
    (define gx#core-read-module/lang
      (lambda (_path90760_)
        (letrec ((_default-read-module-body90762_
                  (lambda (_inp90925_)
                    (let _lp90927_ ((_body90929_ '()))
                      (let ((_next90931_ (read-syntax _inp90925_)))
                        (if (eof-object? _next90931_)
                            (reverse _body90929_)
                            (_lp90927_ (cons _next90931_ _body90929_)))))))
                 (_read-body90763_
                  (lambda (_inp90844_
                           _pre90845_
                           _ns90846_
                           _pkg90847_
                           _args90848_)
                    (let ((_g92270_
                           (if _pkg90847_
                               (values _pre90845_ _ns90846_ _pkg90847_)
                               (gx#core-read-module-package
                                _path90760_
                                _pre90845_
                                _ns90846_))))
                      (begin
                        (let ((_g92271_
                               (if (##values? _g92270_)
                                   (##vector-length _g92270_)
                                   1)))
                          (if (not (##fx= _g92271_ 3))
                              (error "Context expects 3 values" _g92271_)))
                        (let ((_pre90850_ (##vector-ref _g92270_ 0))
                              (_ns90851_ (##vector-ref _g92270_ 1))
                              (_pkg90852_ (##vector-ref _g92270_ 2)))
                          (let* ((_prelude90854_
                                  (gx#import-module__0 _pre90850_))
                                 (_read-module-body90908_
                                  (let ((_$e90900_
                                         (find (lambda (_e9085590857_)
                                                 (let* ((_g9085990869_
                                                         _e9085590857_)
                                                        (_else9086190877_
                                                         (lambda () '#f))
                                                        (_K9086390881_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9085990869_
                                                        'gx#module-export::t)
                                                       (let* ((_e9086490884_
                                                               (##unchecked-structure-ref
                                                                _g9085990869_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9086590887_
                                                               (##unchecked-structure-ref
                                                                _g9085990869_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9086690890_
                                                               (##unchecked-structure-ref
                                                                _g9085990869_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9086690890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9086790893_
                            (##unchecked-structure-ref
                             _g9085990869_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9089590897_)
                              (eq? _g9089590897_ 'read-module-body))
                            _e9086790893_)
                           (_K9086390881_)
                           (_else9086190877_)))
                     (_else9086190877_)))
               (_else9086190877_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude90854_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e90900_
                                        ((lambda (_xport90903_)
                                           (let ((_proc90906_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport90903_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc90906_)
                                                 _proc90906_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path90760_
                                                  _pre90850_
                                                  _proc90906_))))
                                         _$e90900_)
                                        _default-read-module-body90762_)))
                                 (_path-id90910_
                                  (gx#core-module-path->namespace _path90760_))
                                 (_pkg-id90912_
                                  (if _pkg90852_
                                      (string-append
                                       _pkg90852_
                                       '"/"
                                       _path-id90910_)
                                      _path-id90910_))
                                 (_module-id90914_
                                  (string->symbol _pkg-id90912_))
                                 (_module-ns90919_
                                  (let ((_$e90916_ _ns90851_))
                                    (if _$e90916_ _$e90916_ _pkg-id90912_)))
                                 (_body90922_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body90908_ _inp90844_))
                                   gx#current-module-reader-path
                                   _path90760_
                                   gx#current-module-reader-args
                                   _args90848_)))
                            (values _prelude90854_
                                    _module-id90914_
                                    _module-ns90919_
                                    _body90922_)))))))
                 (_string-e90764_
                  (lambda (_obj90841_ _what90842_)
                    (if (string? _obj90841_)
                        _obj90841_
                        (if (symbol? _obj90841_)
                            (symbol->string _obj90841_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what90842_)
                             _path90760_
                             _obj90841_)))))
                 (_read-lang-args90765_
                  (lambda (_inp90796_ _args90797_)
                    (let* ((_args9079890806_ _args90797_)
                           (_else9080090814_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path90760_)))
                           (_K9080290829_
                            (lambda (_args90817_ _prelude90818_)
                              (let* ((_pkg90820_
                                      (pgetq__0 'package: _args90817_))
                                     (_pkg90822_
                                      (if _pkg90820_
                                          (_string-e90764_
                                           _pkg90820_
                                           '"package")
                                          '#f))
                                     (_ns90824_
                                      (pgetq__0 'namespace: _args90817_))
                                     (_ns90826_
                                      (if _ns90824_
                                          (_string-e90764_
                                           _ns90824_
                                           '"namespace")
                                          '#f)))
                                (_read-body90763_
                                 _inp90796_
                                 _prelude90818_
                                 _ns90826_
                                 _pkg90822_
                                 _args90817_)))))
                      (if (##pair? _args9079890806_)
                          (let ((_hd9080390832_ (##car _args9079890806_))
                                (_tl9080490834_ (##cdr _args9079890806_)))
                            (let* ((_prelude90837_ _hd9080390832_)
                                   (_args90839_ _tl9080490834_))
                              (_K9080290829_ _args90839_ _prelude90837_)))
                          (_else9080090814_)))))
                 (_read-lang90766_
                  (lambda (_inp90771_)
                    (let* ((_head90773_ (read-line _inp90771_))
                           (_$e90775_ (string-index__0 _head90773_ '#\space)))
                      (if _$e90775_
                          ((lambda (_ix90778_)
                             (let ((_lang90780_
                                    (substring _head90773_ '0 _ix90778_)))
                               (if (equal? _lang90780_ '"#lang")
                                   (let* ((_rest90782_
                                           (substring
                                            _head90773_
                                            (fx+ _ix90778_ '1)
                                            (string-length _head90773_)))
                                          (_args90793_
                                           (with-catch
                                            (lambda (_g9078390785_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path90760_
                                               _g9078390785_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest90782_
                                               (lambda (_g9078890790_)
                                                 (read-all
                                                  _g9078890790_
                                                  read)))))))
                                     (_read-lang-args90765_
                                      _inp90771_
                                      _args90793_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path90760_))))
                           _$e90775_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path90760_)))))
                 (_read-e90767_
                  (lambda (_inp90769_)
                    (if (eq? (peek-char _inp90769_) '#\#)
                        (_read-lang90766_ _inp90769_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path90760_)))))
          (gx#call-with-input-source-file _path90760_ _read-e90767_))))
    (define gx#core-read-module-package
      (lambda (_path90714_ _pre90715_ _ns90716_)
        (letrec ((_string-e90718_
                  (lambda (_e90758_)
                    (if (symbol? _e90758_)
                        (symbol->string _e90758_)
                        (if (string? _e90758_)
                            _e90758_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e90758_))))))
          (let _lp90720_ ((_dir90722_ (path-directory _path90714_))
                          (_pkg-path90723_ '()))
            (let ((_gerbil.pkg90725_ (path-expand '"gerbil.pkg" _dir90722_)))
              (if (file-exists? _gerbil.pkg90725_)
                  (let ((_plist90727_
                         (gx#core-library-package-plist__% _dir90722_ '#t)))
                    (if (null? _plist90727_)
                        (let ((_pkg90729_
                               (if (not (null? _pkg-path90723_))
                                   (string-join _pkg-path90723_ '"/")
                                   '#f)))
                          (values _pre90715_ _ns90716_ _pkg90729_))
                        (if (list? _plist90727_)
                            (let* ((_root90731_
                                    (pgetq__0 'package: _plist90727_))
                                   (_pkg90735_
                                    (let ((_pkg-path90733_
                                           (if _root90731_
                                               (cons (_string-e90718_
                                                      _root90731_)
                                                     _pkg-path90723_)
                                               _pkg-path90723_)))
                                      (if (not (null? _pkg-path90733_))
                                          (string-join _pkg-path90733_ '"/")
                                          '#f)))
                                   (_ns90742_
                                    (let ((_ns90740_
                                           (let ((_$e90737_ _ns90716_))
                                             (if _$e90737_
                                                 _$e90737_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist90727_)))))
                                      (if _ns90740_
                                          (_string-e90718_ _ns90740_)
                                          '#f)))
                                   (_pre90747_
                                    (let ((_$e90744_ _pre90715_))
                                      (if _$e90744_
                                          _$e90744_
                                          (pgetq__0 'prelude: _plist90727_)))))
                              (values _pre90747_ _ns90742_ _pkg90735_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist90727_))))
                  (let ((_dir*90750_
                         (path-strip-trailing-directory-separator _dir90722_)))
                    (if (or (string-empty? _dir*90750_)
                            (equal? _dir90722_ _dir*90750_))
                        (values _pre90715_ _ns90716_ '#f)
                        (let ((_xpath90755_ (path-strip-directory _dir*90750_))
                              (_xdir90756_ (path-directory _dir*90750_)))
                          (_lp90720_
                           _xdir90756_
                           (cons _xpath90755_ _pkg-path90723_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path90712_)
        (path-strip-extension (path-strip-directory _path90712_))))
    (define gx#core-module-path->id
      (lambda (_path90710_)
        (string->symbol (gx#core-module-path->namespace _path90710_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path90689_ _rel90690_)
        (let* ((_path90692_ (gx#stx-e _stx-path90689_))
               (_path90694_
                (if (string-empty? (path-extension _path90692_))
                    (string-append _path90692_ '".ss")
                    _path90692_)))
          (gx#core-resolve-path__%
           _path90694_
           (let ((_$e90697_ (gx#stx-source _stx-path90689_)))
             (if _$e90697_ _$e90697_ _rel90690_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path90703_)
        (let ((_rel90705_ '#f))
          (gx#core-resolve-module-path__% _stx-path90703_ _rel90705_))))
    (define gx#core-resolve-module-path
      (lambda _g92273_
        (let ((_g92272_ (##length _g92273_)))
          (cond ((##fx= _g92272_ 1)
                 (apply (lambda (_stx-path90703_)
                          (gx#core-resolve-module-path__0 _stx-path90703_))
                        _g92273_))
                ((##fx= _g92272_ 2)
                 (apply (lambda (_stx-path90707_ _rel90708_)
                          (gx#core-resolve-module-path__%
                           _stx-path90707_
                           _rel90708_))
                        _g92273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g92273_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath90575_)
        (let* ((_spath90577_ (symbol->string (gx#stx-e _libpath90575_)))
               (_spath90579_
                (substring _spath90577_ '1 (string-length _spath90577_)))
               (_ext90581_ (path-extension _spath90579_))
               (_ssi90583_
                (if (string-empty? _ext90581_)
                    (string-append _spath90579_ '".ssi")
                    (string-append
                     (path-strip-extension _spath90579_)
                     '".ssi")))
               (_srcs90587_
                (if (string-empty? _ext90581_)
                    (map (lambda (_ext90585_)
                           (string-append _spath90579_ _ext90585_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath90579_ '()))))
          (let _lp90590_ ((_rest90592_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9059390602_ _rest90592_)
                   (_E9059690606_
                    (lambda ()
                      (error '"No clause matching" _rest9059390602_))))
              (let ((_K9059890676_
                     (lambda (_rest90617_ _dir90618_)
                       (letrec ((_resolve90620_
                                 (lambda (_ssi90632_ _srcs90633_)
                                   (let ((_compiled-path90635_
                                          (path-expand _ssi90632_ _dir90618_)))
                                     (if (file-exists? _compiled-path90635_)
                                         (path-normalize _compiled-path90635_)
                                         (let _lpr90637_ ((_rest-src90639_
                                                           _srcs90633_))
                                           (let* ((_rest-src9064090648_
                                                   _rest-src90639_)
                                                  (_else9064290656_
                                                   (lambda ()
                                                     (_lp90590_ _rest90617_)))
                                                  (_K9064490664_
                                                   (lambda (_rest-src90659_
                                                            _src90660_)
                                                     (let ((_src-path90662_
                                                            (path-expand
                                                             _src90660_
                                                             _dir90618_)))
                                                       (if (file-exists?
                                                            _src-path90662_)
                                                           (path-normalize
                                                            _src-path90662_)
                                                           (_lpr90637_
                                                            _rest-src90659_))))))
                                             (if (##pair? _rest-src9064090648_)
                                                 (let ((_hd9064590667_
                                                        (##car _rest-src9064090648_))
                                                       (_tl9064690669_
                                                        (##cdr _rest-src9064090648_)))
                                                   (let* ((_src90672_
                                                           _hd9064590667_)
                                                          (_rest-src90674_
                                                           _tl9064690669_))
                                                     (_K9064490664_
                                                      _rest-src90674_
                                                      _src90672_)))
                                                 (_else9064290656_)))))))))
                         (let ((_$e90622_
                                (gx#core-library-package-path-prefix
                                 _dir90618_)))
                           (if _$e90622_
                               ((lambda (_prefix90625_)
                                  (if (string-prefix?
                                       _prefix90625_
                                       _spath90579_)
                                      (let ((_ssi90629_
                                             (substring
                                              _ssi90583_
                                              (string-length _prefix90625_)
                                              (string-length _ssi90583_)))
                                            (_srcs90630_
                                             (map (lambda (_src90627_)
                                                    (substring
                                                     _src90627_
                                                     (string-length
                                                      _prefix90625_)
                                                     (string-length
                                                      _src90627_)))
                                                  _srcs90587_)))
                                        (_resolve90620_
                                         _ssi90629_
                                         _srcs90630_))
                                      (_lp90590_ _rest90617_)))
                                _$e90622_)
                               (_resolve90620_ _ssi90583_ _srcs90587_))))))
                    (_K9059790611_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath90575_))))
                (let ((_try-match9059590614_
                       (lambda ()
                         (if (##null? _rest9059390602_)
                             (_K9059790611_)
                             (_E9059690606_)))))
                  (if (##pair? _rest9059390602_)
                      (let ((_tl9060090681_ (##cdr _rest9059390602_))
                            (_hd9059990679_ (##car _rest9059390602_)))
                        (let ((_dir90684_ _hd9059990679_)
                              (_rest90686_ _tl9060090681_))
                          (_K9059890676_ _rest90686_ _dir90684_)))
                      (_try-match9059590614_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath90548_)
        (letrec ((_resolve90550_
                  (lambda (_path90567_ _base90568_)
                    (let ((_$e90570_ (string-rindex__0 _base90568_ '#\/)))
                      (if _$e90570_
                          ((lambda (_idx90573_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base90568_ '0 _idx90573_)
                                '"/"
                                _path90567_))))
                           _$e90570_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path90567_))))))))
          (let ((_spath90552_ (symbol->string (gx#stx-e _modpath90548_)))
                (_mod90553_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod90553_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath90548_))
            (let ((_mpath90555_
                   (symbol->string
                    (##structure-ref
                     _mod90553_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp90557_ ((_spath90559_ _spath90552_)
                              (_mpath90560_ _mpath90555_))
                (if (string-prefix? '"../" _spath90559_)
                    (let ((_$e90562_ (string-rindex__0 _mpath90560_ '#\/)))
                      (if _$e90562_
                          ((lambda (_idx90565_)
                             (_lp90557_
                              (substring
                               _spath90559_
                               '3
                               (string-length _spath90559_))
                              (substring _mpath90560_ '0 _idx90565_)))
                           _$e90562_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath90548_)))
                    (if (string-prefix? '"./" _spath90559_)
                        (_lp90557_
                         (substring
                          _spath90559_
                          '2
                          (string-length _spath90559_))
                         _mpath90560_)
                        (_resolve90550_ _spath90559_ _mpath90560_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir90541_)
        (let ((_$e90543_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir90541_))))
          (if _$e90543_
              ((lambda (_pkg90546_)
                 (string-append (symbol->string _pkg90546_) '"/"))
               _$e90543_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir90513_ _exists?90514_)
        (let* ((_cache90516_ (gx#core-library-package-cache))
               (_$e90518_ (hash-get _cache90516_ _dir90513_)))
          (if _$e90518_
              (values _$e90518_)
              (let* ((_gerbil.pkg90521_ (path-expand '"gerbil.pkg" _dir90513_))
                     (_plist90528_
                      (if (or _exists?90514_ (file-exists? _gerbil.pkg90521_))
                          (let ((_e90526_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg90521_
                                  read)))
                            (if (eof-object? _e90526_)
                                '()
                                (if (list? _e90526_)
                                    _e90526_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg90521_
                                     _e90526_))))
                          '())))
                (hash-put! _cache90516_ _dir90513_ _plist90528_)
                _plist90528_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir90534_)
        (let ((_exists?90536_ '#f))
          (gx#core-library-package-plist__% _dir90534_ _exists?90536_))))
    (define gx#core-library-package-plist
      (lambda _g92275_
        (let ((_g92274_ (##length _g92275_)))
          (cond ((##fx= _g92274_ 1)
                 (apply (lambda (_dir90534_)
                          (gx#core-library-package-plist__0 _dir90534_))
                        _g92275_))
                ((##fx= _g92274_ 2)
                 (apply (lambda (_dir90538_ _exists?90539_)
                          (gx#core-library-package-plist__%
                           _dir90538_
                           _exists?90539_))
                        _g92275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g92275_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e90507_ (gx#current-expander-module-library-package-cache)))
          (if _$e90507_
              (values _$e90507_)
              (let ((_cache90510_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache90510_)
                _cache90510_)))))
    (define gx#core-library-module-path?
      (lambda (_stx90504_) (gx#core-special-module-path? _stx90504_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx90502_) (gx#core-special-module-path? _stx90502_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx90497_ _char90498_)
        (if (gx#identifier? _stx90497_)
            (if (interned-symbol? (gx#stx-e _stx90497_))
                (let ((_str90500_ (symbol->string (gx#stx-e _stx90497_))))
                  (if (fx> (string-length _str90500_) '1)
                      (eq? (string-ref _str90500_ '0) _char90498_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx90491_)
        (gx#core-bound-identifier?__%
         _stx90491_
         (lambda (_g9049290494_)
           (gx#expander-binding?__% _g9049290494_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx90485_)
        (gx#core-bound-identifier?__%
         _stx90485_
         (lambda (_g9048690488_)
           (gx#expander-binding?__% _g9048690488_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx90472_)
        (letrec ((_module-prelude?90474_
                  (lambda (_e90480_)
                    (let ((_$e90482_
                           (##structure-instance-of?
                            _e90480_
                            'gx#module-context::t)))
                      (if _$e90482_
                          _$e90482_
                          (##structure-instance-of?
                           _e90480_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx90472_
           (lambda (_g9047590477_)
             (gx#expander-binding?__%
              _g9047590477_
              _module-prelude?90474_))))))
    (define gx#core-bind-import!__%
      (lambda (_in90402_ _ctx90403_ _force-weak?90404_)
        (let* ((_in9040590414_ _in90402_)
               (_E9040790418_
                (lambda () (error '"No clause matching" _in9040590414_)))
               (_K9040890431_
                (lambda (_weak?90421_ _phi90422_ _key90423_ _source90424_)
                  (gx#core-bind!__%
                   _key90423_
                   (let ((_e90426_
                          (gx#core-resolve-module-export _source90424_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e90426_ '1 gx#binding::t '#f)
                      _key90423_
                      _phi90422_
                      _e90426_
                      (##unchecked-structure-ref
                       _source90424_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e90428_ _force-weak?90404_))
                        (if _$e90428_ _$e90428_ _weak?90421_))))
                   gx#core-context-rebind?
                   _phi90422_
                   _ctx90403_))))
          (if (##structure-direct-instance-of?
               _in9040590414_
               'gx#module-import::t)
              (let* ((_e9040990434_
                      (##unchecked-structure-ref
                       _in9040590414_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source90437_ _e9040990434_)
                     (_e9041090439_
                      (##unchecked-structure-ref
                       _in9040590414_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key90442_ _e9041090439_)
                     (_e9041190444_
                      (##unchecked-structure-ref
                       _in9040590414_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi90447_ _e9041190444_)
                     (_e9041290449_
                      (##unchecked-structure-ref
                       _in9040590414_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?90452_ _e9041290449_))
                (_K9040890431_
                 _weak?90452_
                 _phi90447_
                 _key90442_
                 _source90437_))
              (_E9040790418_)))))
    (define gx#core-bind-import!__0
      (lambda (_in90457_)
        (let* ((_ctx90459_ (gx#current-expander-context))
               (_force-weak?90461_ '#f))
          (gx#core-bind-import!__% _in90457_ _ctx90459_ _force-weak?90461_))))
    (define gx#core-bind-import!__1
      (lambda (_in90463_ _ctx90464_)
        (let ((_force-weak?90466_ '#f))
          (gx#core-bind-import!__% _in90463_ _ctx90464_ _force-weak?90466_))))
    (define gx#core-bind-import!
      (lambda _g92277_
        (let ((_g92276_ (##length _g92277_)))
          (cond ((##fx= _g92276_ 1)
                 (apply (lambda (_in90457_)
                          (gx#core-bind-import!__0 _in90457_))
                        _g92277_))
                ((##fx= _g92276_ 2)
                 (apply (lambda (_in90463_ _ctx90464_)
                          (gx#core-bind-import!__1 _in90463_ _ctx90464_))
                        _g92277_))
                ((##fx= _g92276_ 3)
                 (apply (lambda (_in90468_ _ctx90469_ _force-weak?90470_)
                          (gx#core-bind-import!__%
                           _in90468_
                           _ctx90469_
                           _force-weak?90470_))
                        _g92277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g92277_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in90388_ _ctx90389_)
        (gx#core-bind-import!__% _in90388_ _ctx90389_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in90394_)
        (let ((_ctx90396_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in90394_ _ctx90396_))))
    (define gx#core-bind-weak-import!
      (lambda _g92279_
        (let ((_g92278_ (##length _g92279_)))
          (cond ((##fx= _g92278_ 1)
                 (apply (lambda (_in90394_)
                          (gx#core-bind-weak-import!__0 _in90394_))
                        _g92279_))
                ((##fx= _g92278_ 2)
                 (apply (lambda (_in90398_ _ctx90399_)
                          (gx#core-bind-weak-import!__% _in90398_ _ctx90399_))
                        _g92279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g92279_))))))
    (define gx#core-resolve-module-export
      (lambda (_out90279_)
        (letrec ((_subst90281_
                  (lambda (_key90327_)
                    (let* ((_key9032890336_ _key90327_)
                           (_else9033090344_ (lambda () _key90327_))
                           (_K9033290375_
                            (lambda (_mark90347_ _id90348_)
                              (let* ((_mark9034990355_ _mark90347_)
                                     (_E9035190359_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9034990355_)))
                                     (_K9035290367_
                                      (lambda (_subst90362_)
                                        (let ((_$e90364_
                                               (if _subst90362_
                                                   (hash-get
                                                    _subst90362_
                                                    _id90348_)
                                                   '#f)))
                                          (if _$e90364_
                                              _$e90364_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key90327_))))))
                                (if (##structure-instance-of?
                                     _mark9034990355_
                                     'gx#expander-mark::t)
                                    (let* ((_e9035390370_
                                            (##unchecked-structure-ref
                                             _mark9034990355_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst90373_ _e9035390370_))
                                      (_K9035290367_ _subst90373_))
                                    (_E9035190359_))))))
                      (if (##pair? _key9032890336_)
                          (let ((_hd9033390378_ (##car _key9032890336_))
                                (_tl9033490380_ (##cdr _key9032890336_)))
                            (let* ((_id90383_ _hd9033390378_)
                                   (_mark90385_ _tl9033490380_))
                              (_K9033290375_ _mark90385_ _id90383_)))
                          (_else9033090344_))))))
          (let* ((_out9028290292_ _out90279_)
                 (_E9028490296_
                  (lambda () (error '"No clause matching" _out9028290292_)))
                 (_K9028590303_
                  (lambda (_phi90299_ _key90300_ _ctx90301_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx90301_ _phi90299_)
                     (_subst90281_ _key90300_)))))
            (if (##structure-direct-instance-of?
                 _out9028290292_
                 'gx#module-export::t)
                (let* ((_e9028690306_
                        (##unchecked-structure-ref
                         _out9028290292_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx90309_ _e9028690306_)
                       (_e9028790311_
                        (##unchecked-structure-ref
                         _out9028290292_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key90314_ _e9028790311_)
                       (_e9028890316_
                        (##unchecked-structure-ref
                         _out9028290292_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi90319_ _e9028890316_)
                       (_e9028990321_
                        (##unchecked-structure-ref
                         _out9028290292_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9029090324_
                        (##unchecked-structure-ref
                         _out9028290292_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9028590303_ _phi90319_ _key90314_ _ctx90309_))
                (_E9028490296_))))))
    (define gx#core-module-export->import__%
      (lambda (_out90204_ _rename90205_ _dphi90206_)
        (let* ((_out9020790217_ _out90204_)
               (_E9020990221_
                (lambda () (error '"No clause matching" _out9020790217_)))
               (_K9021090233_
                (lambda (_weak?90224_
                         _name90225_
                         _phi90226_
                         _key90227_
                         _ctx90228_)
                  (##structure
                   gx#module-import::t
                   _out90204_
                   (let ((_$e90230_ _rename90205_))
                     (if _$e90230_ _$e90230_ _name90225_))
                   (fx+ _phi90226_ _dphi90206_)
                   _weak?90224_))))
          (if (##structure-direct-instance-of?
               _out9020790217_
               'gx#module-export::t)
              (let* ((_e9021190236_
                      (##unchecked-structure-ref
                       _out9020790217_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx90239_ _e9021190236_)
                     (_e9021290241_
                      (##unchecked-structure-ref
                       _out9020790217_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key90244_ _e9021290241_)
                     (_e9021390246_
                      (##unchecked-structure-ref
                       _out9020790217_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi90249_ _e9021390246_)
                     (_e9021490251_
                      (##unchecked-structure-ref
                       _out9020790217_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name90254_ _e9021490251_)
                     (_e9021590256_
                      (##unchecked-structure-ref
                       _out9020790217_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?90259_ _e9021590256_))
                (_K9021090233_
                 _weak?90259_
                 _name90254_
                 _phi90249_
                 _key90244_
                 _ctx90239_))
              (_E9020990221_)))))
    (define gx#core-module-export->import__0
      (lambda (_out90264_)
        (let* ((_rename90266_ '#f) (_dphi90268_ '0))
          (gx#core-module-export->import__%
           _out90264_
           _rename90266_
           _dphi90268_))))
    (define gx#core-module-export->import__1
      (lambda (_out90270_ _rename90271_)
        (let ((_dphi90273_ '0))
          (gx#core-module-export->import__%
           _out90270_
           _rename90271_
           _dphi90273_))))
    (define gx#core-module-export->import
      (lambda _g92281_
        (let ((_g92280_ (##length _g92281_)))
          (cond ((##fx= _g92280_ 1)
                 (apply (lambda (_out90264_)
                          (gx#core-module-export->import__0 _out90264_))
                        _g92281_))
                ((##fx= _g92280_ 2)
                 (apply (lambda (_out90270_ _rename90271_)
                          (gx#core-module-export->import__1
                           _out90270_
                           _rename90271_))
                        _g92281_))
                ((##fx= _g92280_ 3)
                 (apply (lambda (_out90275_ _rename90276_ _dphi90277_)
                          (gx#core-module-export->import__%
                           _out90275_
                           _rename90276_
                           _dphi90277_))
                        _g92281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g92281_))))))
    (define gx#core-expand-module%
      (lambda (_stx90132_)
        (letrec ((_make-context90134_
                  (lambda (_id90185_)
                    (let* ((_super90187_ (gx#current-expander-context))
                           (_bind-id90189_ (gx#stx-e _id90185_))
                           (_mod-id90191_
                            (if (##structure-instance-of?
                                 _super90187_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super90187_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id90189_)
                                _bind-id90189_))
                           (_ns90193_ (symbol->string _mod-id90191_))
                           (_path90200_
                            (if (##structure-instance-of?
                                 _super90187_
                                 'gx#module-context::t)
                                (let ((_path90195_
                                       (##unchecked-structure-ref
                                        _super90187_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path90195_)
                                          (null? _path90195_))
                                      (cons _bind-id90189_ _path90195_)
                                      (if (not _path90195_)
                                          _bind-id90189_
                                          (cons _bind-id90189_
                                                (cons _path90195_ '())))))
                                _bind-id90189_)))
                      (let ((__obj92257
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
                         __obj92257
                         _mod-id90191_
                         _super90187_
                         _ns90193_
                         _path90200_)
                        __obj92257)))))
          (let* ((_e9013590145_ _stx90132_)
                 (_E9013790149_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9013590145_)))
                 (_E9013690181_
                  (lambda ()
                    (if (gx#stx-pair? _e9013590145_)
                        (let ((_e9013890153_ (gx#syntax-e _e9013590145_)))
                          (let ((_hd9013990156_ (##car _e9013890153_))
                                (_tl9014090158_ (##cdr _e9013890153_)))
                            (if (gx#stx-pair? _tl9014090158_)
                                (let ((_e9014190161_
                                       (gx#syntax-e _tl9014090158_)))
                                  (let ((_hd9014290164_ (##car _e9014190161_))
                                        (_tl9014390166_ (##cdr _e9014190161_)))
                                    (let* ((_id90169_ _hd9014290164_)
                                           (_body90171_ _tl9014390166_))
                                      (if (and (gx#identifier? _id90169_)
                                               (gx#stx-list? _body90171_))
                                          (let* ((_ctx90173_
                                                  (_make-context90134_
                                                   _id90169_))
                                                 (_body90175_
                                                  (gx#core-expand-module-begin
                                                   _body90171_
                                                   _ctx90173_))
                                                 (_body90177_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90175_)
                                                   (gx#stx-source
                                                    _stx90132_))))
                                            (##unchecked-structure-set!
                                             _ctx90173_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body90177_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx90173_
                                             _body90177_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id90169_
                                             _ctx90173_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id90169_)
                                              _body90177_)
                                             (gx#stx-source _stx90132_)))
                                          (_E9013790149_)))))
                                (_E9013790149_))))
                        (_E9013790149_)))))
            (_E9013690181_)))))
    (define gx#core-expand-module-begin
      (lambda (_body90098_ _ctx90099_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx90102_
                   (gx#core-expand-head (cons '%%begin-module _body90098_)))
                  (_e9010390110_ _stx90102_)
                  (_E9010590114_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx90102_)))
                  (_E9010490128_
                   (lambda ()
                     (if (gx#stx-pair? _e9010390110_)
                         (let ((_e9010690118_ (gx#syntax-e _e9010390110_)))
                           (let ((_hd9010790121_ (##car _e9010690118_))
                                 (_tl9010890123_ (##cdr _e9010690118_)))
                             (if (and (gx#identifier? _hd9010790121_)
                                      (gx#core-identifier=?
                                       _hd9010790121_
                                       '%#begin-module))
                                 (let ((_body90126_ _tl9010890123_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx90102_)
                                           _body90126_
                                           (gx#core-expand-module-body
                                            _body90126_))
                                       (_E9010590114_)))
                                 (_E9010590114_))))
                         (_E9010590114_)))))
             (_E9010490128_)))
         gx#current-expander-context
         _ctx90099_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body89894_)
        (letrec ((_expand-special89896_
                  (lambda (_hd90025_ _K90026_ _rest90027_ _r90028_)
                    (let* ((_e9002990046_ _hd90025_)
                           (_E9004190050_
                            (lambda ()
                              (_K90026_
                               _rest90027_
                               (cons (gx#core-expand-top _hd90025_)
                                     _r90028_))))
                           (_E9003190062_
                            (lambda ()
                              (if (gx#stx-pair? _e9002990046_)
                                  (let ((_e9004290054_
                                         (gx#syntax-e _e9002990046_)))
                                    (let ((_hd9004390057_
                                           (##car _e9004290054_))
                                          (_tl9004490059_
                                           (##cdr _e9004290054_)))
                                      (if (and (gx#identifier? _hd9004390057_)
                                               (gx#core-identifier=?
                                                _hd9004390057_
                                                '%#export))
                                          (if '#t
                                              (_K90026_
                                               _rest90027_
                                               (cons _hd90025_ _r90028_))
                                              (_E9004190050_))
                                          (_E9004190050_))))
                                  (_E9004190050_))))
                           (_E9003090094_
                            (lambda ()
                              (if (gx#stx-pair? _e9002990046_)
                                  (let ((_e9003290066_
                                         (gx#syntax-e _e9002990046_)))
                                    (let ((_hd9003390069_
                                           (##car _e9003290066_))
                                          (_tl9003490071_
                                           (##cdr _e9003290066_)))
                                      (if (and (gx#identifier? _hd9003390069_)
                                               (gx#core-identifier=?
                                                _hd9003390069_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9003490071_)
                                              (let ((_e9003590074_
                                                     (gx#syntax-e
                                                      _tl9003490071_)))
                                                (let ((_hd9003690077_
                                                       (##car _e9003590074_))
                                                      (_tl9003790079_
                                                       (##cdr _e9003590074_)))
                                                  (let ((_hd-bind90082_
                                                         _hd9003690077_))
                                                    (if (gx#stx-pair?
                                                         _tl9003790079_)
                                                        (let ((_e9003890084_
                                                               (gx#syntax-e
                                                                _tl9003790079_)))
                                                          (let ((_hd9003990087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9003890084_))
                        (_tl9004090089_ (##cdr _e9003890084_)))
                    (let ((_expr90092_ _hd9003990087_))
                      (if (gx#stx-null? _tl9004090089_)
                          (if (gx#core-bind-values? _hd-bind90082_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90082_)
                                (_K90026_
                                 _rest90027_
                                 (cons _hd90025_ _r90028_)))
                              (_E9003190062_))
                          (_E9003190062_)))))
                (_E9003190062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9003190062_))
                                          (_E9003190062_))))
                                  (_E9003190062_)))))
                      (_E9003090094_))))
                 (_expand-body89897_
                  (lambda (_rbody89899_)
                    (let _lp89901_ ((_rest89903_ _rbody89899_)
                                    (_body89904_ '()))
                      (let* ((_rest8990589913_ _rest89903_)
                             (_else8990789921_ (lambda () _body89904_))
                             (_K8990990013_
                              (lambda (_rest89924_ _hd89925_)
                                (let* ((_e8992689947_ _hd89925_)
                                       (_E8994289951_
                                        (lambda ()
                                          (_lp89901_
                                           _rest89924_
                                           (cons (gx#core-expand-expression
                                                  _hd89925_)
                                                 _body89904_))))
                                       (_E8993889965_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8992689947_)
                                              (let ((_e8994389955_
                                                     (gx#syntax-e
                                                      _e8992689947_)))
                                                (let ((_hd8994489958_
                                                       (##car _e8994389955_))
                                                      (_tl8994589960_
                                                       (##cdr _e8994389955_)))
                                                  (let ((_form89963_
                                                         _hd8994489958_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form89963_
                                                         gx#special-form-binding?)
                                                        (_lp89901_
                                                         _rest89924_
                                                         (cons _hd89925_
                                                               _body89904_))
                                                        (_E8994289951_)))))
                                              (_E8994289951_))))
                                       (_E8992889977_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8992689947_)
                                              (let ((_e8993989969_
                                                     (gx#syntax-e
                                                      _e8992689947_)))
                                                (let ((_hd8994089972_
                                                       (##car _e8993989969_))
                                                      (_tl8994189974_
                                                       (##cdr _e8993989969_)))
                                                  (if (and (gx#identifier?
                                                            _hd8994089972_)
                                                           (gx#core-identifier=?
                                                            _hd8994089972_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp89901_
                                                           _rest89924_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89925_)
                         _body89904_))
                  (_E8993889965_))
              (_E8993889965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8993889965_))))
                                       (_E8992790009_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8992689947_)
                                              (let ((_e8992989981_
                                                     (gx#syntax-e
                                                      _e8992689947_)))
                                                (let ((_hd8993089984_
                                                       (##car _e8992989981_))
                                                      (_tl8993189986_
                                                       (##cdr _e8992989981_)))
                                                  (if (and (gx#identifier?
                                                            _hd8993089984_)
                                                           (gx#core-identifier=?
                                                            _hd8993089984_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8993189986_)
                                                          (let ((_e8993289989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8993189986_)))
                    (let ((_hd8993389992_ (##car _e8993289989_))
                          (_tl8993489994_ (##cdr _e8993289989_)))
                      (let ((_hd-bind89997_ _hd8993389992_))
                        (if (gx#stx-pair? _tl8993489994_)
                            (let ((_e8993589999_ (gx#syntax-e _tl8993489994_)))
                              (let ((_hd8993690002_ (##car _e8993589999_))
                                    (_tl8993790004_ (##cdr _e8993589999_)))
                                (let ((_expr90007_ _hd8993690002_))
                                  (if (gx#stx-null? _tl8993790004_)
                                      (if '#t
                                          (_lp89901_
                                           _rest89924_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind89997_)
                                                   (gx#core-expand-expression
                                                    _expr90007_))
                                                  (gx#stx-source _hd89925_))
                                                 _body89904_))
                                          (_E8992889977_))
                                      (_E8992889977_)))))
                            (_E8992889977_)))))
                  (_E8992889977_))
              (_E8992889977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8992889977_)))))
                                  (_E8992790009_)))))
                        (if (##pair? _rest8990589913_)
                            (let ((_hd8991090016_ (##car _rest8990589913_))
                                  (_tl8991190018_ (##cdr _rest8990589913_)))
                              (let* ((_hd90021_ _hd8991090016_)
                                     (_rest90023_ _tl8991190018_))
                                (_K8990990013_ _rest90023_ _hd90021_)))
                            (_else8990789921_)))))))
          (_expand-body89897_
           (gx#core-expand-block__%
            (cons '%#begin-module _body89894_)
            _expand-special89896_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx89737_
               _expanded?89738_
               _method89739_
               _current-phi89740_
               _expand189741_)
        (letrec ((_K89743_
                  (lambda (_rest89861_ _r89862_)
                    (let* ((_e8986389870_ _rest89861_)
                           (_E8986589874_ (lambda () _r89862_))
                           (_E8986489890_
                            (lambda ()
                              (if (gx#stx-pair? _e8986389870_)
                                  (let ((_e8986689878_
                                         (gx#syntax-e _e8986389870_)))
                                    (let ((_hd8986789881_
                                           (##car _e8986689878_))
                                          (_tl8986889883_
                                           (##cdr _e8986689878_)))
                                      (let* ((_hd89886_ _hd8986789881_)
                                             (_rest89888_ _tl8986889883_))
                                        (if '#t
                                            (_step89744_
                                             _hd89886_
                                             _rest89888_
                                             _r89862_)
                                            (_E8986589874_)))))
                                  (_E8986589874_)))))
                      (_E8986489890_))))
                 (_step89744_
                  (lambda (_hd89775_ _rest89776_ _r89777_)
                    (let* ((_e8977889796_ _hd89775_)
                           (_E8979189800_
                            (lambda ()
                              (if (_expanded?89738_ (gx#stx-e _hd89775_))
                                  (_K89743_
                                   _rest89776_
                                   (cons (gx#stx-e _hd89775_) _r89777_))
                                  (_expand189741_
                                   _hd89775_
                                   _K89743_
                                   _rest89776_
                                   _r89777_))))
                           (_E8978789816_
                            (lambda ()
                              (if (gx#stx-pair? _e8977889796_)
                                  (let ((_e8979289804_
                                         (gx#syntax-e _e8977889796_)))
                                    (let ((_hd8979389807_
                                           (##car _e8979289804_))
                                          (_tl8979489809_
                                           (##cdr _e8979289804_)))
                                      (let* ((_macro89812_ _hd8979389807_)
                                             (_body89814_ _tl8979489809_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro89812_
                                             gx#syntax-binding?)
                                            (_K89743_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro89812_)
                                                    _hd89775_
                                                    _method89739_)
                                                   _rest89776_)
                                             _r89777_)
                                            (_E8979189800_)))))
                                  (_E8979189800_))))
                           (_E8978089830_
                            (lambda ()
                              (if (gx#stx-pair? _e8977889796_)
                                  (let ((_e8978889820_
                                         (gx#syntax-e _e8977889796_)))
                                    (let ((_hd8978989823_
                                           (##car _e8978889820_))
                                          (_tl8979089825_
                                           (##cdr _e8978889820_)))
                                      (if (eq? (gx#stx-e _hd8978989823_)
                                               'begin:)
                                          (let ((_body89828_ _tl8979089825_))
                                            (if '#t
                                                (_K89743_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest89776_
                                                  _body89828_)
                                                 _r89777_)
                                                (_E8978789816_)))
                                          (_E8978789816_))))
                                  (_E8978789816_))))
                           (_E8977989857_
                            (lambda ()
                              (if (gx#stx-pair? _e8977889796_)
                                  (let ((_e8978189834_
                                         (gx#syntax-e _e8977889796_)))
                                    (let ((_hd8978289837_
                                           (##car _e8978189834_))
                                          (_tl8978389839_
                                           (##cdr _e8978189834_)))
                                      (if (eq? (gx#stx-e _hd8978289837_) 'phi:)
                                          (if (gx#stx-pair? _tl8978389839_)
                                              (let ((_e8978489842_
                                                     (gx#syntax-e
                                                      _tl8978389839_)))
                                                (let ((_hd8978589845_
                                                       (##car _e8978489842_))
                                                      (_tl8978689847_
                                                       (##cdr _e8978489842_)))
                                                  (let* ((_dphi89850_
                                                          _hd8978589845_)
                                                         (_body89852_
                                                          _tl8978689847_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi89850_)
                                                        (let ((_rbody89855_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K89743_ _body89852_ '()))
                        _current-phi89740_
                        (fx+ (gx#stx-e _dphi89850_) (_current-phi89740_)))))
                  (_K89743_ _rest89776_ (foldr1 cons _r89777_ _rbody89855_)))
                (_E8978089830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8978089830_))
                                          (_E8978089830_))))
                                  (_E8978089830_)))))
                      (_E8977989857_)))))
          (let* ((_e8974589752_ _stx89737_)
                 (_E8974789756_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8974589752_)))
                 (_E8974689771_
                  (lambda ()
                    (if (gx#stx-pair? _e8974589752_)
                        (let ((_e8974889760_ (gx#syntax-e _e8974589752_)))
                          (let ((_hd8974989763_ (##car _e8974889760_))
                                (_tl8975089765_ (##cdr _e8974889760_)))
                            (let ((_body89768_ _tl8975089765_))
                              (if '#t
                                  (if (_current-phi89740_)
                                      (_K89743_ _body89768_ '())
                                      (call-with-parameters
                                       (lambda () (_K89743_ _body89768_ '()))
                                       _current-phi89740_
                                       (gx#current-expander-phi)))
                                  (_E8974789756_)))))
                        (_E8974789756_)))))
            (_E8974689771_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx89404_ _internal-expand?89405_)
        (letrec ((_expand189407_
                  (lambda (_hd89717_ _K89718_ _rest89719_ _r89720_)
                    (if (gx#core-bound-module? _hd89717_)
                        (_import189408_
                         (gx#syntax-local-e__0 _hd89717_)
                         _K89718_
                         _rest89719_
                         _r89720_)
                        (if (gx#core-library-module-path? _hd89717_)
                            (_import189408_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd89717_))
                             _K89718_
                             _rest89719_
                             _r89720_)
                            (if (gx#core-library-relative-module-path?
                                 _hd89717_)
                                (_import189408_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd89717_))
                                 _K89718_
                                 _rest89719_
                                 _r89720_)
                                (let ((_e89722_ (gx#stx-e _hd89717_)))
                                  (if (pair? _e89722_)
                                      (let ((_$e89724_
                                             (gx#stx-e (car _e89722_))))
                                        (if (eq? 'spec: _$e89724_)
                                            (_import-spec89411_
                                             _hd89717_
                                             _K89718_
                                             _rest89719_
                                             _r89720_)
                                            (if (eq? 'in: _$e89724_)
                                                (_import-submodule89409_
                                                 _hd89717_
                                                 _K89718_
                                                 _rest89719_
                                                 _r89720_)
                                                (if (eq? 'runtime: _$e89724_)
                                                    (_import-runtime89410_
                                                     _hd89717_
                                                     _K89718_
                                                     _rest89719_
                                                     _r89720_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx89404_
                                                     _hd89717_)))))
                                      (if (string? _e89722_)
                                          (_import189408_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd89717_
                                             (gx#stx-source _stx89404_)))
                                           _K89718_
                                           _rest89719_
                                           _r89720_)
                                          (if (##structure-instance-of?
                                               _e89722_
                                               'gx#module-context::t)
                                              (_K89718_
                                               _rest89719_
                                               (cons _e89722_ _r89720_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx89404_
                                               _hd89717_))))))))))
                 (_import189408_
                  (lambda (_ctx89706_ _K89707_ _rest89708_ _r89709_)
                    (let ((_dphi89711_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K89707_
                       _rest89708_
                       (cons (##structure
                              gx#import-set::t
                              _ctx89706_
                              _dphi89711_
                              (map (lambda (_g8971289714_)
                                     (gx#core-module-export->import__%
                                      _g8971289714_
                                      '#f
                                      _dphi89711_))
                                   (##unchecked-structure-ref
                                    _ctx89706_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r89709_)))))
                 (_import-submodule89409_
                  (lambda (_hd89673_ _K89674_ _rest89675_ _r89676_)
                    (let* ((_e8967789684_ _hd89673_)
                           (_E8967989688_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8967789684_)))
                           (_E8967889702_
                            (lambda ()
                              (if (gx#stx-pair? _e8967789684_)
                                  (let ((_e8968089692_
                                         (gx#syntax-e _e8967789684_)))
                                    (let ((_hd8968189695_
                                           (##car _e8968089692_))
                                          (_tl8968289697_
                                           (##cdr _e8968089692_)))
                                      (let ((_spath89700_ _tl8968289697_))
                                        (if '#t
                                            (_import189408_
                                             (_import-spec-source89412_
                                              _spath89700_)
                                             _K89674_
                                             _rest89675_
                                             _r89676_)
                                            (_E8967989688_)))))
                                  (_E8967989688_)))))
                      (_E8967889702_))))
                 (_import-runtime89410_
                  (lambda (_hd89640_ _K89641_ _rest89642_ _r89643_)
                    (let* ((_e8964489651_ _hd89640_)
                           (_E8964689655_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8964489651_)))
                           (_E8964589669_
                            (lambda ()
                              (if (gx#stx-pair? _e8964489651_)
                                  (let ((_e8964789659_
                                         (gx#syntax-e _e8964489651_)))
                                    (let ((_hd8964889662_
                                           (##car _e8964789659_))
                                          (_tl8964989664_
                                           (##cdr _e8964789659_)))
                                      (let ((_spath89667_ _tl8964989664_))
                                        (if '#t
                                            (_K89641_
                                             _rest89642_
                                             (cons (_import-spec-source89412_
                                                    _spath89667_)
                                                   _r89643_))
                                            (_E8964689655_)))))
                                  (_E8964689655_)))))
                      (_E8964589669_))))
                 (_import-spec89411_
                  (lambda (_hd89479_ _K89480_ _rest89481_ _r89482_)
                    (let* ((_e8948389500_ _hd89479_)
                           (_E8949289504_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8948389500_)))
                           (_E8948589614_
                            (lambda ()
                              (if (gx#stx-pair? _e8948389500_)
                                  (let ((_e8949389508_
                                         (gx#syntax-e _e8948389500_)))
                                    (let ((_hd8949489511_
                                           (##car _e8949389508_))
                                          (_tl8949589513_
                                           (##cdr _e8949389508_)))
                                      (if (gx#stx-pair? _tl8949589513_)
                                          (let ((_e8949689516_
                                                 (gx#syntax-e _tl8949589513_)))
                                            (let ((_hd8949789519_
                                                   (##car _e8949689516_))
                                                  (_tl8949889521_
                                                   (##cdr _e8949689516_)))
                                              (let* ((_path89524_
                                                      _hd8949789519_)
                                                     (_specs89526_
                                                      _tl8949889521_))
                                                (if '#t
                                                    (let ((_src-ctx89528_
                                                           (_import-spec-source89412_
                                                            _path89524_))
                                                          (_exports89529_
                                                           (make-hash-table))
                                                          (_specs89530_
                                                           (gx#syntax->list
                                                            _specs89526_)))
                                                      (for-each
                                                       (lambda (_out89532_)
                                                         (hash-put!
                                                          _exports89529_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out89532_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out89532_
                         '4
                         gx#module-export::t
                         '#f))
                  _out89532_))
               (##unchecked-structure-ref
                _src-ctx89528_
                '9
                gx#module-context::t
                '#f))
              (_K89480_
               _rest89481_
               (foldl1 (lambda (_spec89534_ _r89535_)
                         (let* ((_e8953689552_ _spec89534_)
                                (_E8953889556_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8953689552_)))
                                (_E8953789610_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8953689552_)
                                       (let ((_e8953989560_
                                              (gx#syntax-e _e8953689552_)))
                                         (let ((_hd8954089563_
                                                (##car _e8953989560_))
                                               (_tl8954189565_
                                                (##cdr _e8953989560_)))
                                           (let ((_phi89568_ _hd8954089563_))
                                             (if (gx#stx-pair? _tl8954189565_)
                                                 (let ((_e8954289570_
                                                        (gx#syntax-e
                                                         _tl8954189565_)))
                                                   (let ((_hd8954389573_
                                                          (##car _e8954289570_))
                                                         (_tl8954489575_
                                                          (##cdr _e8954289570_)))
                                                     (let ((_name89578_
                                                            _hd8954389573_))
                                                       (if (gx#stx-pair?
                                                            _tl8954489575_)
                                                           (let ((_e8954589580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8954489575_)))
                     (let ((_hd8954689583_ (##car _e8954589580_))
                           (_tl8954789585_ (##cdr _e8954589580_)))
                       (let ((_src-phi89588_ _hd8954689583_))
                         (if (gx#stx-pair? _tl8954789585_)
                             (let ((_e8954889590_
                                    (gx#syntax-e _tl8954789585_)))
                               (let ((_hd8954989593_ (##car _e8954889590_))
                                     (_tl8955089595_ (##cdr _e8954889590_)))
                                 (let ((_src-name89598_ _hd8954989593_))
                                   (if (gx#stx-null? _tl8955089595_)
                                       (if (and (gx#stx-fixnum? _src-phi89588_)
                                                (gx#identifier?
                                                 _src-name89598_)
                                                (gx#stx-fixnum? _phi89568_)
                                                (gx#identifier? _name89578_))
                                           (let ((_src-phi89600_
                                                  (gx#stx-e _src-phi89588_))
                                                 (_src-name89601_
                                                  (gx#core-identifier-key
                                                   _src-name89598_))
                                                 (_phi89602_
                                                  (gx#stx-e _phi89568_))
                                                 (_name89603_
                                                  (gx#core-identifier-key
                                                   _name89578_)))
                                             (let ((_$e89605_
                                                    (hash-get
                                                     _exports89529_
                                                     (cons _src-phi89600_
                                                           _src-name89601_))))
                                               (if _$e89605_
                                                   ((lambda (_out89608_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out89608_
                                                             _name89603_
                                                             (fx- _phi89602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi89600_))
                    _r89535_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e89605_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx89404_
                                                    _hd89479_))))
                                           (_E8953889556_))
                                       (_E8953889556_)))))
                             (_E8953889556_)))))
                   (_E8953889556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8953889556_)))))
                                       (_E8953889556_)))))
                           (_E8953789610_)))
                       _r89482_
                       _specs89530_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8949289504_)))))
                                          (_E8949289504_))))
                                  (_E8949289504_))))
                           (_E8948489636_
                            (lambda ()
                              (if (gx#stx-pair? _e8948389500_)
                                  (let ((_e8948689618_
                                         (gx#syntax-e _e8948389500_)))
                                    (let ((_hd8948789621_
                                           (##car _e8948689618_))
                                          (_tl8948889623_
                                           (##cdr _e8948689618_)))
                                      (if (gx#stx-pair? _tl8948889623_)
                                          (let ((_e8948989626_
                                                 (gx#syntax-e _tl8948889623_)))
                                            (let ((_hd8949089629_
                                                   (##car _e8948989626_))
                                                  (_tl8949189631_
                                                   (##cdr _e8948989626_)))
                                              (let ((_path89634_
                                                     _hd8949089629_))
                                                (if (gx#stx-null?
                                                     _tl8949189631_)
                                                    (if '#t
                                                        (_K89480_
                                                         _rest89481_
                                                         (cons (_import-spec-source89412_
                                                                _path89634_)
                                                               _r89482_))
                                                        (_E8948589614_))
                                                    (_E8948589614_)))))
                                          (_E8948589614_))))
                                  (_E8948589614_)))))
                      (_E8948489636_))))
                 (_import-spec-source89412_
                  (lambda (_spath89477_)
                    (gx#core-import-nested-module _spath89477_ _stx89404_)))
                 (_import!89413_
                  (lambda (_rbody89426_)
                    (letrec* ((_current-ctx89428_
                               (gx#current-expander-context))
                              (_deps89429_ (make-hash-table-eq))
                              (_bind!89430_
                               (lambda (_hd89475_)
                                 (gx#core-bind-import!__1
                                  _hd89475_
                                  _current-ctx89428_))))
                      (let _lp89432_ ((_rest89434_ _rbody89426_)
                                      (_body89435_ '()))
                        (let* ((_rest8943689444_ _rest89434_)
                               (_else8943889454_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx89428_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx89428_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx89428_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body89435_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx89452_ _g92282_)
                                     (gx#eval-module _ctx89452_))
                                   _deps89429_)
                                  _body89435_))
                               (_K8944089463_
                                (lambda (_rest89457_ _hd89458_)
                                  (if (##structure-direct-instance-of?
                                       _hd89458_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!89430_ _hd89458_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd89458_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd89458_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps89429_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd89458_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd89458_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!89430_
                                             (##unchecked-structure-ref
                                              _hd89458_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd89458_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps89429_
                                                 (##unchecked-structure-ref
                                                  _hd89458_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e89460_
                                                 (##structure-instance-of?
                                                  _hd89458_
                                                  'gx#module-context::t)))
                                            (if _$e89460_
                                                _$e89460_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx89404_
                                                 _hd89458_)))))
                                  (_lp89432_
                                   _rest89457_
                                   (cons _hd89458_ _body89435_)))))
                          (if (##pair? _rest8943689444_)
                              (let ((_hd8944189466_ (##car _rest8943689444_))
                                    (_tl8944289468_ (##cdr _rest8943689444_)))
                                (let* ((_hd89471_ _hd8944189466_)
                                       (_rest89473_ _tl8944289468_))
                                  (_K8944089463_ _rest89473_ _hd89471_)))
                              (_else8943889454_)))))))
                 (_expanded-import?89414_
                  (lambda (_e89418_)
                    (let ((_$e89420_
                           (##structure-direct-instance-of?
                            _e89418_
                            'gx#import-set::t)))
                      (if _$e89420_
                          _$e89420_
                          (let ((_$e89423_
                                 (##structure-direct-instance-of?
                                  _e89418_
                                  'gx#module-import::t)))
                            (if _$e89423_
                                _$e89423_
                                (##structure-instance-of?
                                 _e89418_
                                 'gx#module-context::t))))))))
          (let ((_rbody89416_
                 (gx#core-expand-import/export
                  _stx89404_
                  _expanded-import?89414_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand189407_)))
            (if _internal-expand?89405_
                (reverse _rbody89416_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!89413_ _rbody89416_))
                 (gx#stx-source _stx89404_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx89730_)
        (let ((_internal-expand?89732_ '#f))
          (gx#core-expand-import%__% _stx89730_ _internal-expand?89732_))))
    (define gx#core-expand-import%
      (lambda _g92284_
        (let ((_g92283_ (##length _g92284_)))
          (cond ((##fx= _g92283_ 1)
                 (apply (lambda (_stx89730_)
                          (gx#core-expand-import%__0 _stx89730_))
                        _g92284_))
                ((##fx= _g92283_ 2)
                 (apply (lambda (_stx89734_ _internal-expand?89735_)
                          (gx#core-expand-import%__%
                           _stx89734_
                           _internal-expand?89735_))
                        _g92284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g92284_))))))
    (define gx#core-import-nested-module
      (lambda (_spath89331_ _where89332_)
        (let* ((_e8933389340_ _spath89331_)
               (_E8933589344_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8933389340_)))
               (_E8933489399_
                (lambda ()
                  (if (gx#stx-pair? _e8933389340_)
                      (let ((_e8933689348_ (gx#syntax-e _e8933389340_)))
                        (let ((_hd8933789351_ (##car _e8933689348_))
                              (_tl8933889353_ (##cdr _e8933689348_)))
                          (let* ((_origin89356_ _hd8933789351_)
                                 (_sub89358_ _tl8933889353_))
                            (if '#t
                                (let ((_origin-ctx89360_
                                       (if (gx#stx-false? _origin89356_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin89356_))))
                                  (let _lp89362_ ((_rest89364_ _sub89358_)
                                                  (_ctx89365_
                                                   _origin-ctx89360_))
                                    (let* ((_e8936689373_ _rest89364_)
                                           (_E8936889377_
                                            (lambda () _ctx89365_))
                                           (_E8936789395_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8936689373_)
                                                  (let ((_e8936989381_
                                                         (gx#syntax-e
                                                          _e8936689373_)))
                                                    (let ((_hd8937089384_
                                                           (##car _e8936989381_))
                                                          (_tl8937189386_
                                                           (##cdr _e8936989381_)))
                                                      (let* ((_id89389_
                                                              _hd8937089384_)
                                                             (_rest89391_
                                                              _tl8937189386_))
                                                        (if '#t
                                                            (let ((_bind89393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id89389_ '0 _ctx89365_)))
                      (if (and (##structure-direct-instance-of?
                                _bind89393_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind89393_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where89332_
                           _spath89331_
                           _id89389_))
                      (_lp89362_
                       _rest89391_
                       (##unchecked-structure-ref
                        _bind89393_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8936889377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8936889377_)))))
                                      (_E8936789395_))))
                                (_E8933589344_)))))
                      (_E8933589344_)))))
          (_E8933489399_))))
    (define gx#core-expand-import-source
      (lambda (_hd89329_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd89329_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx88837_ _internal-expand?88838_)
        (letrec* ((_make-export__9221392214_
                   (lambda (_bind89277_ _phi89278_ _ctx89279_ _name89280_)
                     (let* ((_key89282_
                             (##unchecked-structure-ref
                              _bind89277_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key89284_
                             (if _name89280_
                                 (gx#core-identifier-key _name89280_)
                                 _key89282_)))
                       (##structure
                        gx#module-export::t
                        _ctx89279_
                        _key89282_
                        _phi89278_
                        _export-key89284_
                        (let ((_$e89287_
                               (##structure-instance-of?
                                _bind89277_
                                'gx#extern-binding::t)))
                          (if _$e89287_
                              _$e89287_
                              (##structure-direct-instance-of?
                               _bind89277_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9221592218_
                   (lambda (_bind89293_)
                     (let* ((_phi89295_ (gx#current-export-expander-phi))
                            (_ctx89297_ (gx#current-expander-context))
                            (_name89299_ '#f))
                       (_make-export__9221392214_
                        _bind89293_
                        _phi89295_
                        _ctx89297_
                        _name89299_))))
                  (_make-export__1__9221692219_
                   (lambda (_bind89301_ _phi89302_)
                     (let* ((_ctx89304_ (gx#current-expander-context))
                            (_name89306_ '#f))
                       (_make-export__9221392214_
                        _bind89301_
                        _phi89302_
                        _ctx89304_
                        _name89306_))))
                  (_make-export__2__9221792220_
                   (lambda (_bind89308_ _phi89309_ _ctx89310_)
                     (let ((_name89312_ '#f))
                       (_make-export__9221392214_
                        _bind89308_
                        _phi89309_
                        _ctx89310_
                        _name89312_))))
                  (_make-export88840_
                   (lambda _g92286_
                     (let ((_g92285_ (##length _g92286_)))
                       (cond ((##fx= _g92285_ 1)
                              (apply (lambda (_bind89293_)
                                       (_make-export__0__9221592218_
                                        _bind89293_))
                                     _g92286_))
                             ((##fx= _g92285_ 2)
                              (apply (lambda (_bind89301_ _phi89302_)
                                       (_make-export__1__9221692219_
                                        _bind89301_
                                        _phi89302_))
                                     _g92286_))
                             ((##fx= _g92285_ 3)
                              (apply (lambda (_bind89308_
                                              _phi89309_
                                              _ctx89310_)
                                       (_make-export__2__9221792220_
                                        _bind89308_
                                        _phi89309_
                                        _ctx89310_))
                                     _g92286_))
                             ((##fx= _g92285_ 4)
                              (apply (lambda (_bind89314_
                                              _phi89315_
                                              _ctx89316_
                                              _name89317_)
                                       (_make-export__9221392214_
                                        _bind89314_
                                        _phi89315_
                                        _ctx89316_
                                        _name89317_))
                                     _g92286_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g92286_))))))
                  (_expand188841_
                   (lambda (_hd88990_ _K88991_ _rest88992_ _r88993_)
                     (let* ((_e8899489026_ _hd88990_)
                            (_E8902189030_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx88837_
                                _hd88990_)))
                            (_E8901189109_
                             (lambda ()
                               (if (gx#stx-pair? _e8899489026_)
                                   (let ((_e8902289034_
                                          (gx#syntax-e _e8899489026_)))
                                     (let ((_hd8902389037_
                                            (##car _e8902289034_))
                                           (_tl8902489039_
                                            (##cdr _e8902289034_)))
                                       (if (eq? (gx#stx-e _hd8902389037_)
                                                'import:)
                                           (let ((_in89042_ _tl8902489039_))
                                             (if (gx#stx-list? _in89042_)
                                                 (let _lp89044_ ((_in-rest89046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in89042_)
                         (_r89047_ _r88993_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8904889055_
                                                           _in-rest89046_)
                                                          (_E8905089059_
                                                           (lambda ()
                                                             (_K88991_
                                                              _rest88992_
                                                              _r89047_)))
                                                          (_E8904989105_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8904889055_)
                         (let ((_e8905189063_ (gx#syntax-e _e8904889055_)))
                           (let ((_hd8905289066_ (##car _e8905189063_))
                                 (_tl8905389068_ (##cdr _e8905189063_)))
                             (let* ((_hd89071_ _hd8905289066_)
                                    (_in-rest89073_ _tl8905389068_))
                               (if '#t
                                   (let ((_src89103_
                                          (if (gx#core-bound-module? _hd89071_)
                                              (gx#syntax-local-e__0 _hd89071_)
                                              (if (gx#core-library-module-path?
                                                   _hd89071_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd89071_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd89071_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd89071_))
                                                      (if (gx#stx-string?
                                                           _hd89071_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd89071_
                                                            (gx#stx-source
                                                             _stx88837_)))
                                                          (let* ((_e8907489081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89071_)
                         (_E8907689085_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx88837_
                             _hd89071_)))
                         (_E8907589099_
                          (lambda ()
                            (if (gx#stx-pair? _e8907489081_)
                                (let ((_e8907789089_
                                       (gx#syntax-e _e8907489081_)))
                                  (let ((_hd8907889092_ (##car _e8907789089_))
                                        (_tl8907989094_ (##cdr _e8907789089_)))
                                    (if (eq? (gx#stx-e _hd8907889092_) 'in:)
                                        (let ((_spath89097_ _tl8907989094_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath89097_
                                               _stx88837_)
                                              (_E8907689085_)))
                                        (_E8907689085_))))
                                (_E8907689085_)))))
                    (_E8907589099_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp89044_
                                      _in-rest89073_
                                      (_export-imports88842_
                                       _src89103_
                                       _r89047_)))
                                   (_E8905089059_)))))
                         (_E8905089059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8904989105_)))
                                                 (_E8902189030_)))
                                           (_E8902189030_))))
                                   (_E8902189030_))))
                            (_E8899889148_
                             (lambda ()
                               (if (gx#stx-pair? _e8899489026_)
                                   (let ((_e8901289113_
                                          (gx#syntax-e _e8899489026_)))
                                     (let ((_hd8901389116_
                                            (##car _e8901289113_))
                                           (_tl8901489118_
                                            (##cdr _e8901289113_)))
                                       (if (eq? (gx#stx-e _hd8901389116_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8901489118_)
                                               (let ((_e8901589121_
                                                      (gx#syntax-e
                                                       _tl8901489118_)))
                                                 (let ((_hd8901689124_
                                                        (##car _e8901589121_))
                                                       (_tl8901789126_
                                                        (##cdr _e8901589121_)))
                                                   (let ((_id89129_
                                                          _hd8901689124_))
                                                     (if (gx#stx-pair?
                                                          _tl8901789126_)
                                                         (let ((_e8901889131_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8901789126_)))
                   (let ((_hd8901989134_ (##car _e8901889131_))
                         (_tl8902089136_ (##cdr _e8901889131_)))
                     (let ((_name89139_ _hd8901989134_))
                       (if (gx#stx-null? _tl8902089136_)
                           (if '#t
                               (let* ((_phi89141_
                                       (gx#current-export-expander-phi))
                                      (_$e89143_
                                       (gx#core-resolve-identifier__1
                                        _id89129_
                                        _phi89141_)))
                                 (if _$e89143_
                                     ((lambda (_bind89146_)
                                        (_K88991_
                                         _rest88992_
                                         (cons (_make-export__9221392214_
                                                _bind89146_
                                                _phi89141_
                                                (gx#current-expander-context)
                                                _name89139_)
                                               _r88993_)))
                                      _$e89143_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx88837_
                                      _hd88990_
                                      _id89129_)))
                               (_E8901189109_))
                           (_E8901189109_)))))
                 (_E8901189109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8901189109_))
                                           (_E8901189109_))))
                                   (_E8901189109_))))
                            (_E8899789197_
                             (lambda ()
                               (if (gx#stx-pair? _e8899489026_)
                                   (let ((_e8899989152_
                                          (gx#syntax-e _e8899489026_)))
                                     (let ((_hd8900089155_
                                            (##car _e8899989152_))
                                           (_tl8900189157_
                                            (##cdr _e8899989152_)))
                                       (if (eq? (gx#stx-e _hd8900089155_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8900189157_)
                                               (let ((_e8900289160_
                                                      (gx#syntax-e
                                                       _tl8900189157_)))
                                                 (let ((_hd8900389163_
                                                        (##car _e8900289160_))
                                                       (_tl8900489165_
                                                        (##cdr _e8900289160_)))
                                                   (let ((_phi89168_
                                                          _hd8900389163_))
                                                     (if (gx#stx-pair?
                                                          _tl8900489165_)
                                                         (let ((_e8900589170_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8900489165_)))
                   (let ((_hd8900689173_ (##car _e8900589170_))
                         (_tl8900789175_ (##cdr _e8900589170_)))
                     (let ((_id89178_ _hd8900689173_))
                       (if (gx#stx-pair? _tl8900789175_)
                           (let ((_e8900889180_ (gx#syntax-e _tl8900789175_)))
                             (let ((_hd8900989183_ (##car _e8900889180_))
                                   (_tl8901089185_ (##cdr _e8900889180_)))
                               (let ((_name89188_ _hd8900989183_))
                                 (if (gx#stx-null? _tl8901089185_)
                                     (if (and (gx#stx-fixnum? _phi89168_)
                                              (gx#identifier? _id89178_)
                                              (gx#identifier? _name89188_))
                                         (let* ((_phi89190_
                                                 (gx#stx-e _phi89168_))
                                                (_$e89192_
                                                 (gx#core-resolve-identifier__1
                                                  _id89178_
                                                  _phi89190_)))
                                           (if _$e89192_
                                               ((lambda (_bind89195_)
                                                  (_K88991_
                                                   _rest88992_
                                                   (cons (_make-export__9221392214_
                                                          _bind89195_
                                                          _phi89190_
                                                          (gx#current-expander-context)
                                                          _name89188_)
                                                         _r88993_)))
                                                _$e89192_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx88837_
                                                _hd88990_
                                                _id89178_)))
                                         (_E8899889148_))
                                     (_E8899889148_)))))
                           (_E8899889148_)))))
                 (_E8899889148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8899889148_))
                                           (_E8899889148_))))
                                   (_E8899889148_))))
                            (_E8899689208_
                             (lambda ()
                               (let ((_id89201_ _e8899489026_))
                                 (if (gx#identifier? _id89201_)
                                     (let ((_$e89203_
                                            (gx#core-resolve-identifier__1
                                             _id89201_
                                             (gx#current-export-expander-phi))))
                                       (if _$e89203_
                                           ((lambda (_bind89206_)
                                              (_K88991_
                                               _rest88992_
                                               (cons (_make-export__0__9221592218_
                                                      _bind89206_)
                                                     _r88993_)))
                                            _$e89203_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx88837_
                                            _hd88990_)))
                                     (_E8899789197_)))))
                            (_E8899589272_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8899489026_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx89212_
                                               (gx#current-expander-context))
                                              (_current-phi89214_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx89216_
                                               (gx#core-context-shift
                                                _current-ctx89212_
                                                _current-phi89214_))
                                              (_phi-bind89218_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx89216_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp89221_ ((_bind-rest89223_
                                                          _phi-bind89218_)
                                                         (_set89224_ '()))
                                           (let* ((_bind-rest8922589235_
                                                   _bind-rest89223_)
                                                  (_else8922789243_
                                                   (lambda ()
                                                     (_K88991_
                                                      _rest88992_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi89214_
                                                             _set89224_)
                                                            _r88993_))))
                                                  (_K8922989253_
                                                   (lambda (_bind-rest89246_
                                                            _bind89247_
                                                            _key89248_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind89247_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind89247_))
                                                         (_lp89221_
                                                          _bind-rest89246_
                                                          _set89224_)
                                                         (_lp89221_
                                                          _bind-rest89246_
                                                          (cons (_make-export__2__9221792220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind89247_
                         _current-phi89214_
                         _current-ctx89212_)
                        _set89224_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8922589235_)
                                                 (let ((_hd8923089256_
                                                        (##car _bind-rest8922589235_))
                                                       (_tl8923189258_
                                                        (##cdr _bind-rest8922589235_)))
                                                   (if (##pair? _hd8923089256_)
                                                       (let ((_hd8923289261_
                                                              (##car _hd8923089256_))
                                                             (_tl8923389263_
                                                              (##cdr _hd8923089256_)))
                                                         (let* ((_key89266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8923289261_)
                        (_bind89268_ _tl8923389263_)
                        (_bind-rest89270_ _tl8923189258_))
                   (_K8922989253_ _bind-rest89270_ _bind89268_ _key89266_)))
               (_else8922789243_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8922789243_)))))
                                       (_E8899689208_))
                                   (_E8899689208_)))))
                       (_E8899589272_))))
                  (_export-imports88842_
                   (lambda (_src88866_ _r88867_)
                     (letrec* ((_current-ctx88869_
                                (gx#current-expander-context))
                               (_current-phi88870_
                                (gx#current-export-expander-phi))
                               (_import->export88871_
                                (lambda (_in88952_)
                                  (let* ((_in8895388961_ _in88952_)
                                         (_E8895588965_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8895388961_)))
                                         (_K8895688972_
                                          (lambda (_phi88968_
                                                   _key88969_
                                                   _out88970_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx88869_
                                             _key88969_
                                             _phi88968_
                                             _key88969_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8895388961_
                                         'gx#module-import::t)
                                        (let* ((_e8895788975_
                                                (##unchecked-structure-ref
                                                 _in8895388961_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out88978_ _e8895788975_)
                                               (_e8895888980_
                                                (##unchecked-structure-ref
                                                 _in8895388961_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key88983_ _e8895888980_)
                                               (_e8895988985_
                                                (##unchecked-structure-ref
                                                 _in8895388961_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi88988_ _e8895988985_))
                                          (_K8895688972_
                                           _phi88988_
                                           _key88983_
                                           _out88978_))
                                        (_E8895588965_)))))
                               (_fold-e88872_
                                (lambda (_in88874_ _r88875_)
                                  (let* ((_in8887688890_ _in88874_)
                                         (_else8887988898_
                                          (lambda () _r88875_)))
                                    (let ((_K8888588934_
                                           (lambda (_phi88930_
                                                    _key88931_
                                                    _out88932_)
                                             (if (and (fx= _phi88930_
                                                           _current-phi88870_)
                                                      (eq? _src88866_
                                                           (##unchecked-structure-ref
                                                            _out88932_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export88871_
                                                        _in88874_)
                                                       _r88875_)
                                                 _r88875_)))
                                          (_K8888188909_
                                           (lambda (_imports88902_
                                                    _phi88903_
                                                    _ctx88904_)
                                             (if (and (fx= _phi88903_
                                                           _current-phi88870_)
                                                      (eq? _src88866_
                                                           _ctx88904_))
                                                 (foldl1 (lambda (_in88906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r88907_)
                   (cons (_import->export88871_ _in88906_) _r88907_))
                 _r88875_
                 _imports88902_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r88875_))))
                                      (let ((_try-match8887888927_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8887688890_
                                                    'gx#import-set::t)
                                                   (let* ((_e8888288912_
                                                           (##unchecked-structure-ref
                                                            _in8887688890_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8888388917_
                                                           (##unchecked-structure-ref
                                                            _in8887688890_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8888488922_
                                                           (##unchecked-structure-ref
                                                            _in8887688890_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx88915_
                                                            _e8888288912_)
                                                           (_phi88920_
                                                            _e8888388917_)
                                                           (_imports88925_
                                                            _e8888488922_))
                                                       (_K8888188909_
                                                        _imports88925_
                                                        _phi88920_
                                                        _ctx88915_)))
                                                   (_else8887988898_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8887688890_
                                             'gx#module-import::t)
                                            (let* ((_e8888688937_
                                                    (##unchecked-structure-ref
                                                     _in8887688890_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8888788942_
                                                    (##unchecked-structure-ref
                                                     _in8887688890_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8888888947_
                                                    (##unchecked-structure-ref
                                                     _in8887688890_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out88940_ _e8888688937_)
                                                    (_key88945_ _e8888788942_)
                                                    (_phi88950_ _e8888888947_))
                                                (_K8888588934_
                                                 _phi88950_
                                                 _key88945_
                                                 _out88940_)))
                                            (_try-match8887888927_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src88866_
                              _current-phi88870_
                              (foldl1 _fold-e88872_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx88869_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r88867_))))
                  (_export!88843_
                   (lambda (_rbody88856_)
                     (letrec* ((_current-ctx88858_
                                (gx#current-expander-context))
                               (_fold-e88859_
                                (lambda (_out88863_ _r88864_)
                                  (if (##structure-direct-instance-of?
                                       _out88863_
                                       'gx#module-export::t)
                                      (cons _out88863_ _r88864_)
                                      (if (##structure-direct-instance-of?
                                           _out88863_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r88864_
                                                  (##unchecked-structure-ref
                                                   _out88863_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r88864_)))))
                       (let ((_body88861_ (reverse _rbody88856_)))
                         (##unchecked-structure-set!
                          _current-ctx88858_
                          (foldl1 _fold-e88859_
                                  (##unchecked-structure-ref
                                   _current-ctx88858_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body88861_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body88861_))))
                  (_expanded-export?88844_
                   (lambda (_e88851_)
                     (let ((_$e88853_
                            (##structure-direct-instance-of?
                             _e88851_
                             'gx#module-export::t)))
                       (if _$e88853_
                           _$e88853_
                           (##structure-direct-instance-of?
                            _e88851_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?88838_)
              (let ((_rbody88849_
                     (gx#core-expand-import/export
                      _stx88837_
                      _expanded-export?88844_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand188841_)))
                (if _internal-expand?88838_
                    (reverse _rbody88849_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!88843_ _rbody88849_))
                     (gx#stx-source _stx88837_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx88837_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx88837_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx89322_)
        (let ((_internal-expand?89324_ '#f))
          (gx#core-expand-export%__% _stx89322_ _internal-expand?89324_))))
    (define gx#core-expand-export%
      (lambda _g92288_
        (let ((_g92287_ (##length _g92288_)))
          (cond ((##fx= _g92287_ 1)
                 (apply (lambda (_stx89322_)
                          (gx#core-expand-export%__0 _stx89322_))
                        _g92288_))
                ((##fx= _g92287_ 2)
                 (apply (lambda (_stx89326_ _internal-expand?89327_)
                          (gx#core-expand-export%__%
                           _stx89326_
                           _internal-expand?89327_))
                        _g92288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g92288_))))))
    (define gx#core-expand-export-source
      (lambda (_hd88834_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd88834_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx88804_)
        (let* ((_e8880588812_ _stx88804_)
               (_E8880788816_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8880588812_)))
               (_E8880688830_
                (lambda ()
                  (if (gx#stx-pair? _e8880588812_)
                      (let ((_e8880888820_ (gx#syntax-e _e8880588812_)))
                        (let ((_hd8880988823_ (##car _e8880888820_))
                              (_tl8881088825_ (##cdr _e8880888820_)))
                          (let ((_body88828_ _tl8881088825_))
                            (if (gx#identifier-list? _body88828_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body88828_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body88828_))
                                   (gx#stx-source _stx88804_)))
                                (_E8880788816_)))))
                      (_E8880788816_)))))
          (_E8880688830_))))
    (define gx#core-bind-feature!__%
      (lambda (_id88770_ _private?88771_ _phi88772_ _ctx88773_)
        (gx#core-bind-syntax!__%
         _id88770_
         ((if _private?88771_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id88770_))
         _private?88771_
         _phi88772_
         _ctx88773_)))
    (define gx#core-bind-feature!__0
      (lambda (_id88778_)
        (let* ((_private?88780_ '#f)
               (_phi88782_ (gx#current-expander-phi))
               (_ctx88784_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88778_
           _private?88780_
           _phi88782_
           _ctx88784_))))
    (define gx#core-bind-feature!__1
      (lambda (_id88786_ _private?88787_)
        (let* ((_phi88789_ (gx#current-expander-phi))
               (_ctx88791_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88786_
           _private?88787_
           _phi88789_
           _ctx88791_))))
    (define gx#core-bind-feature!__2
      (lambda (_id88793_ _private?88794_ _phi88795_)
        (let ((_ctx88797_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88793_
           _private?88794_
           _phi88795_
           _ctx88797_))))
    (define gx#core-bind-feature!
      (lambda _g92290_
        (let ((_g92289_ (##length _g92290_)))
          (cond ((##fx= _g92289_ 1)
                 (apply (lambda (_id88778_)
                          (gx#core-bind-feature!__0 _id88778_))
                        _g92290_))
                ((##fx= _g92289_ 2)
                 (apply (lambda (_id88786_ _private?88787_)
                          (gx#core-bind-feature!__1 _id88786_ _private?88787_))
                        _g92290_))
                ((##fx= _g92289_ 3)
                 (apply (lambda (_id88793_ _private?88794_ _phi88795_)
                          (gx#core-bind-feature!__2
                           _id88793_
                           _private?88794_
                           _phi88795_))
                        _g92290_))
                ((##fx= _g92289_ 4)
                 (apply (lambda (_id88799_
                                 _private?88800_
                                 _phi88801_
                                 _ctx88802_)
                          (gx#core-bind-feature!__%
                           _id88799_
                           _private?88800_
                           _phi88801_
                           _ctx88802_))
                        _g92290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g92290_))))))))
