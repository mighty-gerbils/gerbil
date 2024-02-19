(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1708353891)
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
      (lambda _$args92129_
        (apply make-instance gx#module-import::t _$args92129_)))
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
      (lambda _$args92126_
        (apply make-instance gx#module-export::t _$args92126_)))
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
      (lambda _$args92123_
        (apply make-instance gx#import-set::t _$args92123_)))
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
      (lambda _$args92120_
        (apply make-instance gx#export-set::t _$args92120_)))
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
      (lambda _$args92117_
        (apply make-instance gx#import-expander::t _$args92117_)))
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
      (lambda _$args92114_
        (apply make-instance gx#export-expander::t _$args92114_)))
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
      (lambda _$args92111_
        (apply make-instance gx#import-export-expander::t _$args92111_)))
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
      (lambda (_path92108_ _fun92109_)
        (call-with-input-file
         (cons 'path: (cons _path92108_ gx#source-file-settings))
         _fun92109_)))
    (define gx#module-context:::init!
      (lambda (_self92102_ _id92103_ _super92104_ _ns92105_ _path92106_)
        (if (##fx< '11 (##structure-length _self92102_))
            (begin
              (##unchecked-structure-set!
               _self92102_
               _id92103_
               '1
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               (make-hash-table-eq)
               '2
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               _super92104_
               '3
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               '#f
               '4
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               '#f
               '5
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               _ns92105_
               '6
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               _path92106_
               '7
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               '()
               '8
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               '()
               '9
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               '#f
               '10
               (##structure-type _self92102_)
               '#f)
              (##unchecked-structure-set!
               _self92102_
               '#f
               '11
               (##structure-type _self92102_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92102_
                   '11
                   (##vector-length _self92102_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self91946_ _ctx91947_ _root91948_)
        (let ((_super91956_
               (let ((_$e91950_ _root91948_))
                 (if _$e91950_
                     _$e91950_
                     (let ((_$e91953_ (gx#core-context-root__0)))
                       (if _$e91953_
                           _$e91953_
                           (let ((__obj92171
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor92172
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj92171
                                     ':init!)))
                               (if __constructor92172
                                   (__constructor92172 __obj92171)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj92171)))))))
          (if _ctx91947_
              (let ((_id91959_
                     (##structure-ref
                      _ctx91947_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path91960_
                     (##structure-ref _ctx91947_ '7 gx#module-context::t '#f))
                    (_in91961_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx91947_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e91962_
                     (make-promise (lambda () (gx#eval-module _ctx91947_)))))
                (if (##fx< '8 (##structure-length _self91946_))
                    (begin
                      (##unchecked-structure-set!
                       _self91946_
                       _id91959_
                       '1
                       (##structure-type _self91946_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91946_
                       (make-hash-table-eq 'size: (length _in91961_))
                       '2
                       (##structure-type _self91946_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91946_
                       _super91956_
                       '3
                       (##structure-type _self91946_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91946_
                       '#f
                       '4
                       (##structure-type _self91946_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91946_
                       '#f
                       '5
                       (##structure-type _self91946_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91946_
                       _path91960_
                       '6
                       (##structure-type _self91946_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91946_
                       _in91961_
                       '7
                       (##structure-type _self91946_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91946_
                       _e91962_
                       '8
                       (##structure-type _self91946_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self91946_
                           '8
                           (##vector-length _self91946_)))
                (for-each
                 (lambda (_g9196391965_)
                   (gx#core-bind-weak-import!__% _g9196391965_ _self91946_))
                 _in91961_))
              (if (##fx< '8 (##structure-length _self91946_))
                  (begin
                    (##unchecked-structure-set!
                     _self91946_
                     '#f
                     '1
                     (##structure-type _self91946_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91946_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self91946_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91946_
                     _super91956_
                     '3
                     (##structure-type _self91946_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91946_
                     '#f
                     '4
                     (##structure-type _self91946_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91946_
                     '#f
                     '5
                     (##structure-type _self91946_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91946_
                     '#f
                     '6
                     (##structure-type _self91946_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91946_
                     '()
                     '7
                     (##structure-type _self91946_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91946_
                     '#f
                     '8
                     (##structure-type _self91946_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self91946_
                         '8
                         (##vector-length _self91946_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self91971_ _ctx91972_)
        (let ((_root91974_ '#f))
          (gx#prelude-context:::init!__% _self91971_ _ctx91972_ _root91974_))))
    (define gx#prelude-context:::init!
      (lambda _g92178_
        (let ((_g92177_ (##length _g92178_)))
          (cond ((##fx= _g92177_ 2)
                 (apply (lambda (_self91971_ _ctx91972_)
                          (gx#prelude-context:::init!__0
                           _self91971_
                           _ctx91972_))
                        _g92178_))
                ((##fx= _g92177_ 3)
                 (apply (lambda (_self91976_ _ctx91977_ _root91978_)
                          (gx#prelude-context:::init!__%
                           _self91976_
                           _ctx91977_
                           _root91978_))
                        _g92178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g92178_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self91820_ _e91821_)
        (if (##fx< '3 (##structure-length _self91820_))
            (begin
              (##unchecked-structure-set!
               _self91820_
               _e91821_
               '1
               (##structure-type _self91820_)
               '#f)
              (##unchecked-structure-set!
               _self91820_
               (gx#current-expander-context)
               '2
               (##structure-type _self91820_)
               '#f)
              (##unchecked-structure-set!
               _self91820_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self91820_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91820_
                   '3
                   (##vector-length _self91820_)))))
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
      (lambda (_g9144691449_ _g9144791451_)
        (gx#core-apply-user-expander__%
         _g9144691449_
         _g9144791451_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9131791320_ _g9131891322_)
        (gx#core-apply-user-expander__%
         _g9131791320_
         _g9131891322_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx91188_)
        (let* ((_path91190_
                (##structure-ref _ctx91188_ '7 gx#module-context::t '#f))
               (_path91192_
                (if (pair? _path91190_) (last _path91190_) _path91190_)))
          (if (string? _path91192_) _path91192_ '#f))))
    (define gx#import-module__%
      (lambda (_path91164_ _reload?91165_ _eval?91166_)
        (let ((_ctx91168_
               ((gx#current-expander-module-import)
                _path91164_
                _reload?91165_)))
          (if (and _ctx91168_ _eval?91166_)
              (gx#eval-module _ctx91168_)
              '#!void)
          _ctx91168_)))
    (define gx#import-module__0
      (lambda (_path91173_)
        (let* ((_reload?91175_ '#f) (_eval?91177_ '#f))
          (gx#import-module__% _path91173_ _reload?91175_ _eval?91177_))))
    (define gx#import-module__1
      (lambda (_path91179_ _reload?91180_)
        (let ((_eval?91182_ '#f))
          (gx#import-module__% _path91179_ _reload?91180_ _eval?91182_))))
    (define gx#import-module
      (lambda _g92180_
        (let ((_g92179_ (##length _g92180_)))
          (cond ((##fx= _g92179_ 1)
                 (apply (lambda (_path91173_)
                          (gx#import-module__0 _path91173_))
                        _g92180_))
                ((##fx= _g92179_ 2)
                 (apply (lambda (_path91179_ _reload?91180_)
                          (gx#import-module__1 _path91179_ _reload?91180_))
                        _g92180_))
                ((##fx= _g92179_ 3)
                 (apply (lambda (_path91184_ _reload?91185_ _eval?91186_)
                          (gx#import-module__%
                           _path91184_
                           _reload?91185_
                           _eval?91186_))
                        _g92180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g92180_))))))
    (define gx#eval-module
      (lambda (_mod91161_) ((gx#current-expander-module-eval) _mod91161_)))
    (define gx#core-eval-module
      (lambda (_obj91146_)
        (letrec ((_force-e91148_
                  (lambda (_getf91157_ _e91158_)
                    (call-with-parameters
                     (lambda () (force (_getf91157_ _e91158_)))
                     gx#current-expander-context
                     _e91158_
                     gx#current-expander-phi
                     '0))))
          (let _recur91150_ ((_e91152_ _obj91146_))
            (if (##structure-instance-of? _e91152_ 'gx#module-context::t)
                (begin
                  (let ((_$e91154_ (gx#core-context-prelude__% _e91152_)))
                    (if _$e91154_ (_recur91150_ _$e91154_) '#!void))
                  (_force-e91148_ gx#module-context-e _e91152_))
                (if (##structure-instance-of? _e91152_ 'gx#prelude-context::t)
                    (_force-e91148_ gx#prelude-context-e _e91152_)
                    (if (gx#stx-string? _e91152_)
                        (_recur91150_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e91152_)))
                        (if (gx#core-library-module-path? _e91152_)
                            (_recur91150_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e91152_)))
                            (error '"Cannot eval module" _obj91146_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx91129_)
        (let _lp91131_ ((_e91133_ _ctx91129_))
          (if (or (##structure-instance-of? _e91133_ 'gx#module-context::t)
                  (##structure-instance-of? _e91133_ 'gx#local-context::t))
              (_lp91131_
               (##unchecked-structure-ref _e91133_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e91133_ 'gx#prelude-context::t)
                  _e91133_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx91142_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx91142_))))
    (define gx#core-context-prelude
      (lambda _g92182_
        (let ((_g92181_ (##length _g92182_)))
          (cond ((##fx= _g92181_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g92182_))
                ((##fx= _g92181_ 1)
                 (apply (lambda (_ctx91144_)
                          (gx#core-context-prelude__% _ctx91144_))
                        _g92182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g92182_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx91119_)
        (let* ((_ht91121_ (gx#current-expander-module-registry))
               (_$e91123_ (hash-get _ht91121_ _ctx91119_)))
          (if _$e91123_
              (values _$e91123_)
              (let ((_pre91126_
                     (let ((__obj92173
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
                       (gx#prelude-context:::init! __obj92173 _ctx91119_)
                       __obj92173)))
                (hash-put! _ht91121_ _ctx91119_ _pre91126_)
                _pre91126_)))))
    (define gx#core-import-module__%
      (lambda (_rpath91000_ _reload?91001_)
        (letrec ((_import-source91003_
                  (lambda (_path91088_)
                    (if (member _path91088_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path91088_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g92183_ (gx#core-read-module _path91088_)))
                         (begin
                           (let ((_g92184_
                                  (if (##values? _g92183_)
                                      (##vector-length _g92183_)
                                      1)))
                             (if (not (##fx= _g92184_ 4))
                                 (error "Context expects 4 values" _g92184_)))
                           (let ((_pre91091_ (##vector-ref _g92183_ 0))
                                 (_id91092_ (##vector-ref _g92183_ 1))
                                 (_ns91093_ (##vector-ref _g92183_ 2))
                                 (_body91094_ (##vector-ref _g92183_ 3)))
                             (let* ((_prelude91099_
                                     (if (##structure-instance-of?
                                          _pre91091_
                                          'gx#prelude-context::t)
                                         _pre91091_
                                         (if (##structure-instance-of?
                                              _pre91091_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre91091_)
                                             (if (string? _pre91091_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre91091_))
                                                 (if (not _pre91091_)
                                                     (let ((_$e91096_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e91096_
                                                           _$e91096_
                                                           (let ((__obj92174
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
                     (gx#prelude-context:::init! __obj92174 '#f)
                     __obj92174)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath91000_
                                                            _pre91091_))))))
                                    (_ctx91101_
                                     (let ((__obj92175
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
                                        __obj92175
                                        _id91092_
                                        _prelude91099_
                                        _ns91093_
                                        _path91088_)
                                       __obj92175))
                                    (_body91103_
                                     (gx#core-expand-module-begin
                                      _body91094_
                                      _ctx91101_))
                                    (_body91105_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body91103_)
                                      _path91088_
                                      _ctx91101_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx91101_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body91105_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx91101_
                                _body91105_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path91088_
                                _ctx91101_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id91092_
                                _ctx91101_)
                               _ctx91101_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path91088_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule91004_
                  (lambda (_rpath91016_)
                    (let* ((_rpath9101791024_ _rpath91016_)
                           (_E9101991028_
                            (lambda ()
                              (error '"No clause matching" _rpath9101791024_)))
                           (_K9102091076_
                            (lambda (_refs91031_ _origin91032_)
                              (let ((_ctx91034_
                                     (if _origin91032_
                                         (gx#core-import-module__%
                                          _origin91032_
                                          _reload?91001_)
                                         (gx#current-expander-context))))
                                (let _lp91036_ ((_rest91038_ _refs91031_)
                                                (_ctx91039_ _ctx91034_))
                                  (let* ((_rest9104091048_ _rest91038_)
                                         (_else9104291056_
                                          (lambda () _ctx91039_))
                                         (_K9104491064_
                                          (lambda (_rest91059_ _id91060_)
                                            (let ((_bind91062_
                                                   (gx#resolve-identifier__%
                                                    _id91060_
                                                    '0
                                                    _ctx91039_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind91062_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind91062_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp91036_
                                                   _rest91059_
                                                   (##unchecked-structure-ref
                                                    _bind91062_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath91016_
                                                         _id91060_
                                                         _bind91062_))))))
                                    (if (##pair? _rest9104091048_)
                                        (let ((_hd9104591067_
                                               (##car _rest9104091048_))
                                              (_tl9104691069_
                                               (##cdr _rest9104091048_)))
                                          (let* ((_id91072_ _hd9104591067_)
                                                 (_rest91074_ _tl9104691069_))
                                            (_K9104491064_
                                             _rest91074_
                                             _id91072_)))
                                        (_else9104291056_))))))))
                      (if (##pair? _rpath9101791024_)
                          (let ((_hd9102191079_ (##car _rpath9101791024_))
                                (_tl9102291081_ (##cdr _rpath9101791024_)))
                            (let* ((_origin91084_ _hd9102191079_)
                                   (_refs91086_ _tl9102291081_))
                              (_K9102091076_ _refs91086_ _origin91084_)))
                          (_E9101991028_))))))
          (let ((_$e91006_
                 (if (not _reload?91001_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath91000_)
                     '#f)))
            (if _$e91006_
                (values _$e91006_)
                (if (list? _rpath91000_)
                    (_import-submodule91004_ _rpath91000_)
                    (if (gx#core-library-module-path? _rpath91000_)
                        (let ((_ctx91009_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath91000_)
                                _reload?91001_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath91000_
                           _ctx91009_)
                          _ctx91009_)
                        (let* ((_npath91011_ (path-normalize _rpath91000_))
                               (_$e91013_
                                (if (not _reload?91001_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath91011_)
                                    '#f)))
                          (if _$e91013_
                              (values _$e91013_)
                              (_import-source91003_ _npath91011_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath91112_)
        (let ((_reload?91114_ '#f))
          (gx#core-import-module__% _rpath91112_ _reload?91114_))))
    (define gx#core-import-module
      (lambda _g92186_
        (let ((_g92185_ (##length _g92186_)))
          (cond ((##fx= _g92185_ 1)
                 (apply (lambda (_rpath91112_)
                          (gx#core-import-module__0 _rpath91112_))
                        _g92186_))
                ((##fx= _g92185_ 2)
                 (apply (lambda (_rpath91116_ _reload?91117_)
                          (gx#core-import-module__%
                           _rpath91116_
                           _reload?91117_))
                        _g92186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g92186_))))))
    (define gx#core-read-module
      (lambda (_path90989_)
        (with-catch
         (lambda (_exn90991_)
           (if (and (datum-parsing-exception? _exn90991_)
                    (eq? (datum-parsing-exception-filepos _exn90991_) '0))
               (gx#core-read-module/lang _path90989_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path90989_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9099390995_)
                      (display-exception _exn90991_ _g9099390995_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path90989_)))))
    (define gx#core-read-module/sexp
      (lambda (_path90852_)
        (let _lp90854_ ((_body90856_ (read-syntax-from-file _path90852_))
                        (_pre90857_ '#f)
                        (_ns90858_ '#f)
                        (_pkg90859_ '#f))
          (let* ((_e9086090884_ _body90856_)
                 (_E9087690906_
                  (lambda ()
                    (let ((_g92187_
                           (if _pkg90859_
                               (values _pre90857_ _ns90858_ _pkg90859_)
                               (gx#core-read-module-package
                                _path90852_
                                _pre90857_
                                _ns90858_))))
                      (begin
                        (let ((_g92188_
                               (if (##values? _g92187_)
                                   (##vector-length _g92187_)
                                   1)))
                          (if (not (##fx= _g92188_ 3))
                              (error "Context expects 3 values" _g92188_)))
                        (let ((_pre90888_ (##vector-ref _g92187_ 0))
                              (_ns90889_ (##vector-ref _g92187_ 1))
                              (_pkg90890_ (##vector-ref _g92187_ 2)))
                          (let* ((_prelude90892_
                                  (if (gx#core-bound-module-prelude?
                                       _pre90888_)
                                      (gx#syntax-local-e__0 _pre90888_)
                                      (if (gx#core-library-module-path?
                                           _pre90888_)
                                          (gx#core-resolve-library-module-path
                                           _pre90888_)
                                          (if (gx#stx-string? _pre90888_)
                                              (gx#core-resolve-module-path__%
                                               _pre90888_
                                               _path90852_)
                                              (gx#stx-e _pre90888_)))))
                                 (_path-id90894_
                                  (gx#core-module-path->namespace _path90852_))
                                 (_pkg-id90896_
                                  (if _pkg90890_
                                      (string-append
                                       _pkg90890_
                                       '"/"
                                       _path-id90894_)
                                      _path-id90894_))
                                 (_module-id90898_
                                  (string->symbol _pkg-id90896_))
                                 (_module-ns90903_
                                  (if (eq? _ns90889_ '#!void)
                                      '#f
                                      (let ((_$e90900_ _ns90889_))
                                        (if _$e90900_
                                            _$e90900_
                                            _pkg-id90896_)))))
                            (values _prelude90892_
                                    _module-id90898_
                                    _module-ns90903_
                                    _body90856_)))))))
                 (_E9086990935_
                  (lambda ()
                    (if (gx#stx-pair? _e9086090884_)
                        (let ((_e9087790910_ (gx#syntax-e _e9086090884_)))
                          (let ((_hd9087890913_ (##car _e9087790910_))
                                (_tl9087990915_ (##cdr _e9087790910_)))
                            (if (eq? (gx#stx-e _hd9087890913_) 'package:)
                                (if (gx#stx-pair? _tl9087990915_)
                                    (let ((_e9088090918_
                                           (gx#syntax-e _tl9087990915_)))
                                      (let ((_hd9088190921_
                                             (##car _e9088090918_))
                                            (_tl9088290923_
                                             (##cdr _e9088090918_)))
                                        (let* ((_pkg90926_ _hd9088190921_)
                                               (_rest90928_ _tl9088290923_))
                                          (if '#t
                                              (let ((_pkg90933_
                                                     (if (gx#identifier?
                                                          _pkg90926_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg90926_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg90926_)
                         (gx#stx-false? _pkg90926_))
                     (gx#stx-e _pkg90926_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg90926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90854_
                                                 _rest90928_
                                                 _pre90857_
                                                 _ns90858_
                                                 _pkg90933_))
                                              (_E9087690906_)))))
                                    (_E9087690906_))
                                (_E9087690906_))))
                        (_E9087690906_))))
                 (_E9086290961_
                  (lambda ()
                    (if (gx#stx-pair? _e9086090884_)
                        (let ((_e9087090939_ (gx#syntax-e _e9086090884_)))
                          (let ((_hd9087190942_ (##car _e9087090939_))
                                (_tl9087290944_ (##cdr _e9087090939_)))
                            (if (eq? (gx#stx-e _hd9087190942_) 'namespace:)
                                (if (gx#stx-pair? _tl9087290944_)
                                    (let ((_e9087390947_
                                           (gx#syntax-e _tl9087290944_)))
                                      (let ((_hd9087490950_
                                             (##car _e9087390947_))
                                            (_tl9087590952_
                                             (##cdr _e9087390947_)))
                                        (let* ((_ns90955_ _hd9087490950_)
                                               (_rest90957_ _tl9087590952_))
                                          (if '#t
                                              (let ((_ns90959_
                                                     (if (gx#identifier?
                                                          _ns90955_)
                                                         (symbol->string
                                                          (gx#stx-e _ns90955_))
                                                         (if (gx#stx-string?
                                                              _ns90955_)
                                                             (gx#stx-e
                                                              _ns90955_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns90955_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns90955_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90854_
                                                 _rest90957_
                                                 _pre90857_
                                                 _ns90959_
                                                 _pkg90859_))
                                              (_E9086990935_)))))
                                    (_E9086990935_))
                                (_E9086990935_))))
                        (_E9086990935_))))
                 (_E9086190985_
                  (lambda ()
                    (if (gx#stx-pair? _e9086090884_)
                        (let ((_e9086390965_ (gx#syntax-e _e9086090884_)))
                          (let ((_hd9086490968_ (##car _e9086390965_))
                                (_tl9086590970_ (##cdr _e9086390965_)))
                            (if (eq? (gx#stx-e _hd9086490968_) 'prelude:)
                                (if (gx#stx-pair? _tl9086590970_)
                                    (let ((_e9086690973_
                                           (gx#syntax-e _tl9086590970_)))
                                      (let ((_hd9086790976_
                                             (##car _e9086690973_))
                                            (_tl9086890978_
                                             (##cdr _e9086690973_)))
                                        (let* ((_prelude90981_ _hd9086790976_)
                                               (_rest90983_ _tl9086890978_))
                                          (if '#t
                                              (_lp90854_
                                               _rest90983_
                                               _prelude90981_
                                               _ns90858_
                                               _pkg90859_)
                                              (_E9086290961_)))))
                                    (_E9086290961_))
                                (_E9086290961_))))
                        (_E9086290961_)))))
            (_E9086190985_)))))
    (define gx#core-read-module/lang
      (lambda (_path90679_)
        (letrec ((_default-read-module-body90681_
                  (lambda (_inp90844_)
                    (let _lp90846_ ((_body90848_ '()))
                      (let ((_next90850_ (read-syntax _inp90844_)))
                        (if (eof-object? _next90850_)
                            (reverse _body90848_)
                            (_lp90846_ (cons _next90850_ _body90848_)))))))
                 (_read-body90682_
                  (lambda (_inp90763_
                           _pre90764_
                           _ns90765_
                           _pkg90766_
                           _args90767_)
                    (let ((_g92189_
                           (if _pkg90766_
                               (values _pre90764_ _ns90765_ _pkg90766_)
                               (gx#core-read-module-package
                                _path90679_
                                _pre90764_
                                _ns90765_))))
                      (begin
                        (let ((_g92190_
                               (if (##values? _g92189_)
                                   (##vector-length _g92189_)
                                   1)))
                          (if (not (##fx= _g92190_ 3))
                              (error "Context expects 3 values" _g92190_)))
                        (let ((_pre90769_ (##vector-ref _g92189_ 0))
                              (_ns90770_ (##vector-ref _g92189_ 1))
                              (_pkg90771_ (##vector-ref _g92189_ 2)))
                          (let* ((_prelude90773_
                                  (gx#import-module__0 _pre90769_))
                                 (_read-module-body90827_
                                  (let ((_$e90819_
                                         (find (lambda (_e9077490776_)
                                                 (let* ((_g9077890788_
                                                         _e9077490776_)
                                                        (_else9078090796_
                                                         (lambda () '#f))
                                                        (_K9078290800_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9077890788_
                                                        'gx#module-export::t)
                                                       (let* ((_e9078390803_
                                                               (##unchecked-structure-ref
                                                                _g9077890788_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9078490806_
                                                               (##unchecked-structure-ref
                                                                _g9077890788_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9078590809_
                                                               (##unchecked-structure-ref
                                                                _g9077890788_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9078590809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9078690812_
                            (##unchecked-structure-ref
                             _g9077890788_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9081490816_)
                              (eq? _g9081490816_ 'read-module-body))
                            _e9078690812_)
                           (_K9078290800_)
                           (_else9078090796_)))
                     (_else9078090796_)))
               (_else9078090796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude90773_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e90819_
                                        ((lambda (_xport90822_)
                                           (let ((_proc90825_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport90822_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc90825_)
                                                 _proc90825_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path90679_
                                                  _pre90769_
                                                  _proc90825_))))
                                         _$e90819_)
                                        _default-read-module-body90681_)))
                                 (_path-id90829_
                                  (gx#core-module-path->namespace _path90679_))
                                 (_pkg-id90831_
                                  (if _pkg90771_
                                      (string-append
                                       _pkg90771_
                                       '"/"
                                       _path-id90829_)
                                      _path-id90829_))
                                 (_module-id90833_
                                  (string->symbol _pkg-id90831_))
                                 (_module-ns90838_
                                  (let ((_$e90835_ _ns90770_))
                                    (if _$e90835_ _$e90835_ _pkg-id90831_)))
                                 (_body90841_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body90827_ _inp90763_))
                                   gx#current-module-reader-path
                                   _path90679_
                                   gx#current-module-reader-args
                                   _args90767_)))
                            (values _prelude90773_
                                    _module-id90833_
                                    _module-ns90838_
                                    _body90841_)))))))
                 (_string-e90683_
                  (lambda (_obj90760_ _what90761_)
                    (if (string? _obj90760_)
                        _obj90760_
                        (if (symbol? _obj90760_)
                            (symbol->string _obj90760_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what90761_)
                             _path90679_
                             _obj90760_)))))
                 (_read-lang-args90684_
                  (lambda (_inp90715_ _args90716_)
                    (let* ((_args9071790725_ _args90716_)
                           (_else9071990733_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path90679_)))
                           (_K9072190748_
                            (lambda (_args90736_ _prelude90737_)
                              (let* ((_pkg90739_
                                      (pgetq__0 'package: _args90736_))
                                     (_pkg90741_
                                      (if _pkg90739_
                                          (_string-e90683_
                                           _pkg90739_
                                           '"package")
                                          '#f))
                                     (_ns90743_
                                      (pgetq__0 'namespace: _args90736_))
                                     (_ns90745_
                                      (if _ns90743_
                                          (_string-e90683_
                                           _ns90743_
                                           '"namespace")
                                          '#f)))
                                (_read-body90682_
                                 _inp90715_
                                 _prelude90737_
                                 _ns90745_
                                 _pkg90741_
                                 _args90736_)))))
                      (if (##pair? _args9071790725_)
                          (let ((_hd9072290751_ (##car _args9071790725_))
                                (_tl9072390753_ (##cdr _args9071790725_)))
                            (let* ((_prelude90756_ _hd9072290751_)
                                   (_args90758_ _tl9072390753_))
                              (_K9072190748_ _args90758_ _prelude90756_)))
                          (_else9071990733_)))))
                 (_read-lang90685_
                  (lambda (_inp90690_)
                    (let* ((_head90692_ (read-line _inp90690_))
                           (_$e90694_ (string-index__0 _head90692_ '#\space)))
                      (if _$e90694_
                          ((lambda (_ix90697_)
                             (let ((_lang90699_
                                    (substring _head90692_ '0 _ix90697_)))
                               (if (equal? _lang90699_ '"#lang")
                                   (let* ((_rest90701_
                                           (substring
                                            _head90692_
                                            (fx+ _ix90697_ '1)
                                            (string-length _head90692_)))
                                          (_args90712_
                                           (with-catch
                                            (lambda (_g9070290704_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path90679_
                                               _g9070290704_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest90701_
                                               (lambda (_g9070790709_)
                                                 (read-all
                                                  _g9070790709_
                                                  read)))))))
                                     (_read-lang-args90684_
                                      _inp90690_
                                      _args90712_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path90679_))))
                           _$e90694_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path90679_)))))
                 (_read-e90686_
                  (lambda (_inp90688_)
                    (if (eq? (peek-char _inp90688_) '#\#)
                        (_read-lang90685_ _inp90688_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path90679_)))))
          (gx#call-with-input-source-file _path90679_ _read-e90686_))))
    (define gx#core-read-module-package
      (lambda (_path90633_ _pre90634_ _ns90635_)
        (letrec ((_string-e90637_
                  (lambda (_e90677_)
                    (if (symbol? _e90677_)
                        (symbol->string _e90677_)
                        (if (string? _e90677_)
                            _e90677_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e90677_))))))
          (let _lp90639_ ((_dir90641_ (path-directory _path90633_))
                          (_pkg-path90642_ '()))
            (let ((_gerbil.pkg90644_ (path-expand '"gerbil.pkg" _dir90641_)))
              (if (file-exists? _gerbil.pkg90644_)
                  (let ((_plist90646_
                         (gx#core-library-package-plist__% _dir90641_ '#t)))
                    (if (null? _plist90646_)
                        (let ((_pkg90648_
                               (if (not (null? _pkg-path90642_))
                                   (string-join _pkg-path90642_ '"/")
                                   '#f)))
                          (values _pre90634_ _ns90635_ _pkg90648_))
                        (if (list? _plist90646_)
                            (let* ((_root90650_
                                    (pgetq__0 'package: _plist90646_))
                                   (_pkg90654_
                                    (let ((_pkg-path90652_
                                           (if _root90650_
                                               (cons (_string-e90637_
                                                      _root90650_)
                                                     _pkg-path90642_)
                                               _pkg-path90642_)))
                                      (if (not (null? _pkg-path90652_))
                                          (string-join _pkg-path90652_ '"/")
                                          '#f)))
                                   (_ns90661_
                                    (let ((_ns90659_
                                           (let ((_$e90656_ _ns90635_))
                                             (if _$e90656_
                                                 _$e90656_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist90646_)))))
                                      (if _ns90659_
                                          (_string-e90637_ _ns90659_)
                                          '#f)))
                                   (_pre90666_
                                    (let ((_$e90663_ _pre90634_))
                                      (if _$e90663_
                                          _$e90663_
                                          (pgetq__0 'prelude: _plist90646_)))))
                              (values _pre90666_ _ns90661_ _pkg90654_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist90646_))))
                  (let ((_dir*90669_
                         (path-strip-trailing-directory-separator _dir90641_)))
                    (if (or (string-empty? _dir*90669_)
                            (equal? _dir90641_ _dir*90669_))
                        (values _pre90634_ _ns90635_ '#f)
                        (let ((_xpath90674_ (path-strip-directory _dir*90669_))
                              (_xdir90675_ (path-directory _dir*90669_)))
                          (_lp90639_
                           _xdir90675_
                           (cons _xpath90674_ _pkg-path90642_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path90631_)
        (path-strip-extension (path-strip-directory _path90631_))))
    (define gx#core-module-path->id
      (lambda (_path90629_)
        (string->symbol (gx#core-module-path->namespace _path90629_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path90608_ _rel90609_)
        (let* ((_path90611_ (gx#stx-e _stx-path90608_))
               (_path90613_
                (if (string-empty? (path-extension _path90611_))
                    (string-append _path90611_ '".ss")
                    _path90611_)))
          (gx#core-resolve-path__%
           _path90613_
           (let ((_$e90616_ (gx#stx-source _stx-path90608_)))
             (if _$e90616_ _$e90616_ _rel90609_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path90622_)
        (let ((_rel90624_ '#f))
          (gx#core-resolve-module-path__% _stx-path90622_ _rel90624_))))
    (define gx#core-resolve-module-path
      (lambda _g92192_
        (let ((_g92191_ (##length _g92192_)))
          (cond ((##fx= _g92191_ 1)
                 (apply (lambda (_stx-path90622_)
                          (gx#core-resolve-module-path__0 _stx-path90622_))
                        _g92192_))
                ((##fx= _g92191_ 2)
                 (apply (lambda (_stx-path90626_ _rel90627_)
                          (gx#core-resolve-module-path__%
                           _stx-path90626_
                           _rel90627_))
                        _g92192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g92192_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath90494_)
        (let* ((_spath90496_ (symbol->string (gx#stx-e _libpath90494_)))
               (_spath90498_
                (substring _spath90496_ '1 (string-length _spath90496_)))
               (_ext90500_ (path-extension _spath90498_))
               (_ssi90502_
                (if (string-empty? _ext90500_)
                    (string-append _spath90498_ '".ssi")
                    (string-append
                     (path-strip-extension _spath90498_)
                     '".ssi")))
               (_srcs90506_
                (if (string-empty? _ext90500_)
                    (map (lambda (_ext90504_)
                           (string-append _spath90498_ _ext90504_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath90498_ '()))))
          (let _lp90509_ ((_rest90511_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9051290521_ _rest90511_)
                   (_E9051590525_
                    (lambda ()
                      (error '"No clause matching" _rest9051290521_))))
              (let ((_K9051790595_
                     (lambda (_rest90536_ _dir90537_)
                       (letrec ((_resolve90539_
                                 (lambda (_ssi90551_ _srcs90552_)
                                   (let ((_compiled-path90554_
                                          (path-expand _ssi90551_ _dir90537_)))
                                     (if (file-exists? _compiled-path90554_)
                                         (path-normalize _compiled-path90554_)
                                         (let _lpr90556_ ((_rest-src90558_
                                                           _srcs90552_))
                                           (let* ((_rest-src9055990567_
                                                   _rest-src90558_)
                                                  (_else9056190575_
                                                   (lambda ()
                                                     (_lp90509_ _rest90536_)))
                                                  (_K9056390583_
                                                   (lambda (_rest-src90578_
                                                            _src90579_)
                                                     (let ((_src-path90581_
                                                            (path-expand
                                                             _src90579_
                                                             _dir90537_)))
                                                       (if (file-exists?
                                                            _src-path90581_)
                                                           (path-normalize
                                                            _src-path90581_)
                                                           (_lpr90556_
                                                            _rest-src90578_))))))
                                             (if (##pair? _rest-src9055990567_)
                                                 (let ((_hd9056490586_
                                                        (##car _rest-src9055990567_))
                                                       (_tl9056590588_
                                                        (##cdr _rest-src9055990567_)))
                                                   (let* ((_src90591_
                                                           _hd9056490586_)
                                                          (_rest-src90593_
                                                           _tl9056590588_))
                                                     (_K9056390583_
                                                      _rest-src90593_
                                                      _src90591_)))
                                                 (_else9056190575_)))))))))
                         (let ((_$e90541_
                                (gx#core-library-package-path-prefix
                                 _dir90537_)))
                           (if _$e90541_
                               ((lambda (_prefix90544_)
                                  (if (string-prefix?
                                       _prefix90544_
                                       _spath90498_)
                                      (let ((_ssi90548_
                                             (substring
                                              _ssi90502_
                                              (string-length _prefix90544_)
                                              (string-length _ssi90502_)))
                                            (_srcs90549_
                                             (map (lambda (_src90546_)
                                                    (substring
                                                     _src90546_
                                                     (string-length
                                                      _prefix90544_)
                                                     (string-length
                                                      _src90546_)))
                                                  _srcs90506_)))
                                        (_resolve90539_
                                         _ssi90548_
                                         _srcs90549_))
                                      (_lp90509_ _rest90536_)))
                                _$e90541_)
                               (_resolve90539_ _ssi90502_ _srcs90506_))))))
                    (_K9051690530_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath90494_))))
                (let ((_try-match9051490533_
                       (lambda ()
                         (if (##null? _rest9051290521_)
                             (_K9051690530_)
                             (_E9051590525_)))))
                  (if (##pair? _rest9051290521_)
                      (let ((_tl9051990600_ (##cdr _rest9051290521_))
                            (_hd9051890598_ (##car _rest9051290521_)))
                        (let ((_dir90603_ _hd9051890598_)
                              (_rest90605_ _tl9051990600_))
                          (_K9051790595_ _rest90605_ _dir90603_)))
                      (_try-match9051490533_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath90467_)
        (letrec ((_resolve90469_
                  (lambda (_path90486_ _base90487_)
                    (let ((_$e90489_ (string-rindex__0 _base90487_ '#\/)))
                      (if _$e90489_
                          ((lambda (_idx90492_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base90487_ '0 _idx90492_)
                                '"/"
                                _path90486_))))
                           _$e90489_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path90486_))))))))
          (let ((_spath90471_ (symbol->string (gx#stx-e _modpath90467_)))
                (_mod90472_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod90472_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath90467_))
            (let ((_mpath90474_
                   (symbol->string
                    (##structure-ref
                     _mod90472_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp90476_ ((_spath90478_ _spath90471_)
                              (_mpath90479_ _mpath90474_))
                (if (string-prefix? '"../" _spath90478_)
                    (let ((_$e90481_ (string-rindex__0 _mpath90479_ '#\/)))
                      (if _$e90481_
                          ((lambda (_idx90484_)
                             (_lp90476_
                              (substring
                               _spath90478_
                               '3
                               (string-length _spath90478_))
                              (substring _mpath90479_ '0 _idx90484_)))
                           _$e90481_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath90467_)))
                    (if (string-prefix? '"./" _spath90478_)
                        (_lp90476_
                         (substring
                          _spath90478_
                          '2
                          (string-length _spath90478_))
                         _mpath90479_)
                        (_resolve90469_ _spath90478_ _mpath90479_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir90460_)
        (let ((_$e90462_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir90460_))))
          (if _$e90462_
              ((lambda (_pkg90465_)
                 (string-append (symbol->string _pkg90465_) '"/"))
               _$e90462_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir90432_ _exists?90433_)
        (let* ((_cache90435_ (gx#core-library-package-cache))
               (_$e90437_ (hash-get _cache90435_ _dir90432_)))
          (if _$e90437_
              (values _$e90437_)
              (let* ((_gerbil.pkg90440_ (path-expand '"gerbil.pkg" _dir90432_))
                     (_plist90447_
                      (if (or _exists?90433_ (file-exists? _gerbil.pkg90440_))
                          (let ((_e90445_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg90440_
                                  read)))
                            (if (eof-object? _e90445_)
                                '()
                                (if (list? _e90445_)
                                    _e90445_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg90440_
                                     _e90445_))))
                          '())))
                (hash-put! _cache90435_ _dir90432_ _plist90447_)
                _plist90447_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir90453_)
        (let ((_exists?90455_ '#f))
          (gx#core-library-package-plist__% _dir90453_ _exists?90455_))))
    (define gx#core-library-package-plist
      (lambda _g92194_
        (let ((_g92193_ (##length _g92194_)))
          (cond ((##fx= _g92193_ 1)
                 (apply (lambda (_dir90453_)
                          (gx#core-library-package-plist__0 _dir90453_))
                        _g92194_))
                ((##fx= _g92193_ 2)
                 (apply (lambda (_dir90457_ _exists?90458_)
                          (gx#core-library-package-plist__%
                           _dir90457_
                           _exists?90458_))
                        _g92194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g92194_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e90426_ (gx#current-expander-module-library-package-cache)))
          (if _$e90426_
              (values _$e90426_)
              (let ((_cache90429_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache90429_)
                _cache90429_)))))
    (define gx#core-library-module-path?
      (lambda (_stx90423_) (gx#core-special-module-path? _stx90423_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx90421_) (gx#core-special-module-path? _stx90421_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx90416_ _char90417_)
        (if (gx#identifier? _stx90416_)
            (if (interned-symbol? (gx#stx-e _stx90416_))
                (let ((_str90419_ (symbol->string (gx#stx-e _stx90416_))))
                  (if (fx> (string-length _str90419_) '1)
                      (eq? (string-ref _str90419_ '0) _char90417_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx90410_)
        (gx#core-bound-identifier?__%
         _stx90410_
         (lambda (_g9041190413_)
           (gx#expander-binding?__% _g9041190413_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx90404_)
        (gx#core-bound-identifier?__%
         _stx90404_
         (lambda (_g9040590407_)
           (gx#expander-binding?__% _g9040590407_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx90391_)
        (letrec ((_module-prelude?90393_
                  (lambda (_e90399_)
                    (let ((_$e90401_
                           (##structure-instance-of?
                            _e90399_
                            'gx#module-context::t)))
                      (if _$e90401_
                          _$e90401_
                          (##structure-instance-of?
                           _e90399_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx90391_
           (lambda (_g9039490396_)
             (gx#expander-binding?__%
              _g9039490396_
              _module-prelude?90393_))))))
    (define gx#core-bind-import!__%
      (lambda (_in90321_ _ctx90322_ _force-weak?90323_)
        (let* ((_in9032490333_ _in90321_)
               (_E9032690337_
                (lambda () (error '"No clause matching" _in9032490333_)))
               (_K9032790350_
                (lambda (_weak?90340_ _phi90341_ _key90342_ _source90343_)
                  (gx#core-bind!__%
                   _key90342_
                   (let ((_e90345_
                          (gx#core-resolve-module-export _source90343_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e90345_ '1 gx#binding::t '#f)
                      _key90342_
                      _phi90341_
                      _e90345_
                      (##unchecked-structure-ref
                       _source90343_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e90347_ _force-weak?90323_))
                        (if _$e90347_ _$e90347_ _weak?90340_))))
                   gx#core-context-rebind?
                   _phi90341_
                   _ctx90322_))))
          (if (##structure-direct-instance-of?
               _in9032490333_
               'gx#module-import::t)
              (let* ((_e9032890353_
                      (##unchecked-structure-ref
                       _in9032490333_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source90356_ _e9032890353_)
                     (_e9032990358_
                      (##unchecked-structure-ref
                       _in9032490333_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key90361_ _e9032990358_)
                     (_e9033090363_
                      (##unchecked-structure-ref
                       _in9032490333_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi90366_ _e9033090363_)
                     (_e9033190368_
                      (##unchecked-structure-ref
                       _in9032490333_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?90371_ _e9033190368_))
                (_K9032790350_
                 _weak?90371_
                 _phi90366_
                 _key90361_
                 _source90356_))
              (_E9032690337_)))))
    (define gx#core-bind-import!__0
      (lambda (_in90376_)
        (let* ((_ctx90378_ (gx#current-expander-context))
               (_force-weak?90380_ '#f))
          (gx#core-bind-import!__% _in90376_ _ctx90378_ _force-weak?90380_))))
    (define gx#core-bind-import!__1
      (lambda (_in90382_ _ctx90383_)
        (let ((_force-weak?90385_ '#f))
          (gx#core-bind-import!__% _in90382_ _ctx90383_ _force-weak?90385_))))
    (define gx#core-bind-import!
      (lambda _g92196_
        (let ((_g92195_ (##length _g92196_)))
          (cond ((##fx= _g92195_ 1)
                 (apply (lambda (_in90376_)
                          (gx#core-bind-import!__0 _in90376_))
                        _g92196_))
                ((##fx= _g92195_ 2)
                 (apply (lambda (_in90382_ _ctx90383_)
                          (gx#core-bind-import!__1 _in90382_ _ctx90383_))
                        _g92196_))
                ((##fx= _g92195_ 3)
                 (apply (lambda (_in90387_ _ctx90388_ _force-weak?90389_)
                          (gx#core-bind-import!__%
                           _in90387_
                           _ctx90388_
                           _force-weak?90389_))
                        _g92196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g92196_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in90307_ _ctx90308_)
        (gx#core-bind-import!__% _in90307_ _ctx90308_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in90313_)
        (let ((_ctx90315_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in90313_ _ctx90315_))))
    (define gx#core-bind-weak-import!
      (lambda _g92198_
        (let ((_g92197_ (##length _g92198_)))
          (cond ((##fx= _g92197_ 1)
                 (apply (lambda (_in90313_)
                          (gx#core-bind-weak-import!__0 _in90313_))
                        _g92198_))
                ((##fx= _g92197_ 2)
                 (apply (lambda (_in90317_ _ctx90318_)
                          (gx#core-bind-weak-import!__% _in90317_ _ctx90318_))
                        _g92198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g92198_))))))
    (define gx#core-resolve-module-export
      (lambda (_out90198_)
        (letrec ((_subst90200_
                  (lambda (_key90246_)
                    (let* ((_key9024790255_ _key90246_)
                           (_else9024990263_ (lambda () _key90246_))
                           (_K9025190294_
                            (lambda (_mark90266_ _id90267_)
                              (let* ((_mark9026890274_ _mark90266_)
                                     (_E9027090278_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9026890274_)))
                                     (_K9027190286_
                                      (lambda (_subst90281_)
                                        (let ((_$e90283_
                                               (if _subst90281_
                                                   (hash-get
                                                    _subst90281_
                                                    _id90267_)
                                                   '#f)))
                                          (if _$e90283_
                                              _$e90283_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key90246_))))))
                                (if (##structure-instance-of?
                                     _mark9026890274_
                                     'gx#expander-mark::t)
                                    (let* ((_e9027290289_
                                            (##unchecked-structure-ref
                                             _mark9026890274_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst90292_ _e9027290289_))
                                      (_K9027190286_ _subst90292_))
                                    (_E9027090278_))))))
                      (if (##pair? _key9024790255_)
                          (let ((_hd9025290297_ (##car _key9024790255_))
                                (_tl9025390299_ (##cdr _key9024790255_)))
                            (let* ((_id90302_ _hd9025290297_)
                                   (_mark90304_ _tl9025390299_))
                              (_K9025190294_ _mark90304_ _id90302_)))
                          (_else9024990263_))))))
          (let* ((_out9020190211_ _out90198_)
                 (_E9020390215_
                  (lambda () (error '"No clause matching" _out9020190211_)))
                 (_K9020490222_
                  (lambda (_phi90218_ _key90219_ _ctx90220_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx90220_ _phi90218_)
                     (_subst90200_ _key90219_)))))
            (if (##structure-direct-instance-of?
                 _out9020190211_
                 'gx#module-export::t)
                (let* ((_e9020590225_
                        (##unchecked-structure-ref
                         _out9020190211_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx90228_ _e9020590225_)
                       (_e9020690230_
                        (##unchecked-structure-ref
                         _out9020190211_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key90233_ _e9020690230_)
                       (_e9020790235_
                        (##unchecked-structure-ref
                         _out9020190211_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi90238_ _e9020790235_)
                       (_e9020890240_
                        (##unchecked-structure-ref
                         _out9020190211_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9020990243_
                        (##unchecked-structure-ref
                         _out9020190211_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9020490222_ _phi90238_ _key90233_ _ctx90228_))
                (_E9020390215_))))))
    (define gx#core-module-export->import__%
      (lambda (_out90123_ _rename90124_ _dphi90125_)
        (let* ((_out9012690136_ _out90123_)
               (_E9012890140_
                (lambda () (error '"No clause matching" _out9012690136_)))
               (_K9012990152_
                (lambda (_weak?90143_
                         _name90144_
                         _phi90145_
                         _key90146_
                         _ctx90147_)
                  (##structure
                   gx#module-import::t
                   _out90123_
                   (let ((_$e90149_ _rename90124_))
                     (if _$e90149_ _$e90149_ _name90144_))
                   (fx+ _phi90145_ _dphi90125_)
                   _weak?90143_))))
          (if (##structure-direct-instance-of?
               _out9012690136_
               'gx#module-export::t)
              (let* ((_e9013090155_
                      (##unchecked-structure-ref
                       _out9012690136_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx90158_ _e9013090155_)
                     (_e9013190160_
                      (##unchecked-structure-ref
                       _out9012690136_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key90163_ _e9013190160_)
                     (_e9013290165_
                      (##unchecked-structure-ref
                       _out9012690136_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi90168_ _e9013290165_)
                     (_e9013390170_
                      (##unchecked-structure-ref
                       _out9012690136_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name90173_ _e9013390170_)
                     (_e9013490175_
                      (##unchecked-structure-ref
                       _out9012690136_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?90178_ _e9013490175_))
                (_K9012990152_
                 _weak?90178_
                 _name90173_
                 _phi90168_
                 _key90163_
                 _ctx90158_))
              (_E9012890140_)))))
    (define gx#core-module-export->import__0
      (lambda (_out90183_)
        (let* ((_rename90185_ '#f) (_dphi90187_ '0))
          (gx#core-module-export->import__%
           _out90183_
           _rename90185_
           _dphi90187_))))
    (define gx#core-module-export->import__1
      (lambda (_out90189_ _rename90190_)
        (let ((_dphi90192_ '0))
          (gx#core-module-export->import__%
           _out90189_
           _rename90190_
           _dphi90192_))))
    (define gx#core-module-export->import
      (lambda _g92200_
        (let ((_g92199_ (##length _g92200_)))
          (cond ((##fx= _g92199_ 1)
                 (apply (lambda (_out90183_)
                          (gx#core-module-export->import__0 _out90183_))
                        _g92200_))
                ((##fx= _g92199_ 2)
                 (apply (lambda (_out90189_ _rename90190_)
                          (gx#core-module-export->import__1
                           _out90189_
                           _rename90190_))
                        _g92200_))
                ((##fx= _g92199_ 3)
                 (apply (lambda (_out90194_ _rename90195_ _dphi90196_)
                          (gx#core-module-export->import__%
                           _out90194_
                           _rename90195_
                           _dphi90196_))
                        _g92200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g92200_))))))
    (define gx#core-expand-module%
      (lambda (_stx90051_)
        (letrec ((_make-context90053_
                  (lambda (_id90104_)
                    (let* ((_super90106_ (gx#current-expander-context))
                           (_bind-id90108_ (gx#stx-e _id90104_))
                           (_mod-id90110_
                            (if (##structure-instance-of?
                                 _super90106_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super90106_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id90108_)
                                _bind-id90108_))
                           (_ns90112_ (symbol->string _mod-id90110_))
                           (_path90119_
                            (if (##structure-instance-of?
                                 _super90106_
                                 'gx#module-context::t)
                                (let ((_path90114_
                                       (##unchecked-structure-ref
                                        _super90106_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path90114_)
                                          (null? _path90114_))
                                      (cons _bind-id90108_ _path90114_)
                                      (if (not _path90114_)
                                          _bind-id90108_
                                          (cons _bind-id90108_
                                                (cons _path90114_ '())))))
                                _bind-id90108_)))
                      (let ((__obj92176
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
                         __obj92176
                         _mod-id90110_
                         _super90106_
                         _ns90112_
                         _path90119_)
                        __obj92176)))))
          (let* ((_e9005490064_ _stx90051_)
                 (_E9005690068_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9005490064_)))
                 (_E9005590100_
                  (lambda ()
                    (if (gx#stx-pair? _e9005490064_)
                        (let ((_e9005790072_ (gx#syntax-e _e9005490064_)))
                          (let ((_hd9005890075_ (##car _e9005790072_))
                                (_tl9005990077_ (##cdr _e9005790072_)))
                            (if (gx#stx-pair? _tl9005990077_)
                                (let ((_e9006090080_
                                       (gx#syntax-e _tl9005990077_)))
                                  (let ((_hd9006190083_ (##car _e9006090080_))
                                        (_tl9006290085_ (##cdr _e9006090080_)))
                                    (let* ((_id90088_ _hd9006190083_)
                                           (_body90090_ _tl9006290085_))
                                      (if (and (gx#identifier? _id90088_)
                                               (gx#stx-list? _body90090_))
                                          (let* ((_ctx90092_
                                                  (_make-context90053_
                                                   _id90088_))
                                                 (_body90094_
                                                  (gx#core-expand-module-begin
                                                   _body90090_
                                                   _ctx90092_))
                                                 (_body90096_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90094_)
                                                   (gx#stx-source
                                                    _stx90051_))))
                                            (##unchecked-structure-set!
                                             _ctx90092_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body90096_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx90092_
                                             _body90096_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id90088_
                                             _ctx90092_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id90088_)
                                              _body90096_)
                                             (gx#stx-source _stx90051_)))
                                          (_E9005690068_)))))
                                (_E9005690068_))))
                        (_E9005690068_)))))
            (_E9005590100_)))))
    (define gx#core-expand-module-begin
      (lambda (_body90017_ _ctx90018_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx90021_
                   (gx#core-expand-head (cons '%%begin-module _body90017_)))
                  (_e9002290029_ _stx90021_)
                  (_E9002490033_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx90021_)))
                  (_E9002390047_
                   (lambda ()
                     (if (gx#stx-pair? _e9002290029_)
                         (let ((_e9002590037_ (gx#syntax-e _e9002290029_)))
                           (let ((_hd9002690040_ (##car _e9002590037_))
                                 (_tl9002790042_ (##cdr _e9002590037_)))
                             (if (and (gx#identifier? _hd9002690040_)
                                      (gx#core-identifier=?
                                       _hd9002690040_
                                       '%#begin-module))
                                 (let ((_body90045_ _tl9002790042_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx90021_)
                                           _body90045_
                                           (gx#core-expand-module-body
                                            _body90045_))
                                       (_E9002490033_)))
                                 (_E9002490033_))))
                         (_E9002490033_)))))
             (_E9002390047_)))
         gx#current-expander-context
         _ctx90018_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body89813_)
        (letrec ((_expand-special89815_
                  (lambda (_hd89944_ _K89945_ _rest89946_ _r89947_)
                    (let* ((_e8994889965_ _hd89944_)
                           (_E8996089969_
                            (lambda ()
                              (_K89945_
                               _rest89946_
                               (cons (gx#core-expand-top _hd89944_)
                                     _r89947_))))
                           (_E8995089981_
                            (lambda ()
                              (if (gx#stx-pair? _e8994889965_)
                                  (let ((_e8996189973_
                                         (gx#syntax-e _e8994889965_)))
                                    (let ((_hd8996289976_
                                           (##car _e8996189973_))
                                          (_tl8996389978_
                                           (##cdr _e8996189973_)))
                                      (if (and (gx#identifier? _hd8996289976_)
                                               (gx#core-identifier=?
                                                _hd8996289976_
                                                '%#export))
                                          (if '#t
                                              (_K89945_
                                               _rest89946_
                                               (cons _hd89944_ _r89947_))
                                              (_E8996089969_))
                                          (_E8996089969_))))
                                  (_E8996089969_))))
                           (_E8994990013_
                            (lambda ()
                              (if (gx#stx-pair? _e8994889965_)
                                  (let ((_e8995189985_
                                         (gx#syntax-e _e8994889965_)))
                                    (let ((_hd8995289988_
                                           (##car _e8995189985_))
                                          (_tl8995389990_
                                           (##cdr _e8995189985_)))
                                      (if (and (gx#identifier? _hd8995289988_)
                                               (gx#core-identifier=?
                                                _hd8995289988_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8995389990_)
                                              (let ((_e8995489993_
                                                     (gx#syntax-e
                                                      _tl8995389990_)))
                                                (let ((_hd8995589996_
                                                       (##car _e8995489993_))
                                                      (_tl8995689998_
                                                       (##cdr _e8995489993_)))
                                                  (let ((_hd-bind90001_
                                                         _hd8995589996_))
                                                    (if (gx#stx-pair?
                                                         _tl8995689998_)
                                                        (let ((_e8995790003_
                                                               (gx#syntax-e
                                                                _tl8995689998_)))
                                                          (let ((_hd8995890006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8995790003_))
                        (_tl8995990008_ (##cdr _e8995790003_)))
                    (let ((_expr90011_ _hd8995890006_))
                      (if (gx#stx-null? _tl8995990008_)
                          (if (gx#core-bind-values? _hd-bind90001_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90001_)
                                (_K89945_
                                 _rest89946_
                                 (cons _hd89944_ _r89947_)))
                              (_E8995089981_))
                          (_E8995089981_)))))
                (_E8995089981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8995089981_))
                                          (_E8995089981_))))
                                  (_E8995089981_)))))
                      (_E8994990013_))))
                 (_expand-body89816_
                  (lambda (_rbody89818_)
                    (let _lp89820_ ((_rest89822_ _rbody89818_)
                                    (_body89823_ '()))
                      (let* ((_rest8982489832_ _rest89822_)
                             (_else8982689840_ (lambda () _body89823_))
                             (_K8982889932_
                              (lambda (_rest89843_ _hd89844_)
                                (let* ((_e8984589866_ _hd89844_)
                                       (_E8986189870_
                                        (lambda ()
                                          (_lp89820_
                                           _rest89843_
                                           (cons (gx#core-expand-expression
                                                  _hd89844_)
                                                 _body89823_))))
                                       (_E8985789884_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8984589866_)
                                              (let ((_e8986289874_
                                                     (gx#syntax-e
                                                      _e8984589866_)))
                                                (let ((_hd8986389877_
                                                       (##car _e8986289874_))
                                                      (_tl8986489879_
                                                       (##cdr _e8986289874_)))
                                                  (let ((_form89882_
                                                         _hd8986389877_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form89882_
                                                         gx#special-form-binding?)
                                                        (_lp89820_
                                                         _rest89843_
                                                         (cons _hd89844_
                                                               _body89823_))
                                                        (_E8986189870_)))))
                                              (_E8986189870_))))
                                       (_E8984789896_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8984589866_)
                                              (let ((_e8985889888_
                                                     (gx#syntax-e
                                                      _e8984589866_)))
                                                (let ((_hd8985989891_
                                                       (##car _e8985889888_))
                                                      (_tl8986089893_
                                                       (##cdr _e8985889888_)))
                                                  (if (and (gx#identifier?
                                                            _hd8985989891_)
                                                           (gx#core-identifier=?
                                                            _hd8985989891_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp89820_
                                                           _rest89843_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89844_)
                         _body89823_))
                  (_E8985789884_))
              (_E8985789884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8985789884_))))
                                       (_E8984689928_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8984589866_)
                                              (let ((_e8984889900_
                                                     (gx#syntax-e
                                                      _e8984589866_)))
                                                (let ((_hd8984989903_
                                                       (##car _e8984889900_))
                                                      (_tl8985089905_
                                                       (##cdr _e8984889900_)))
                                                  (if (and (gx#identifier?
                                                            _hd8984989903_)
                                                           (gx#core-identifier=?
                                                            _hd8984989903_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8985089905_)
                                                          (let ((_e8985189908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8985089905_)))
                    (let ((_hd8985289911_ (##car _e8985189908_))
                          (_tl8985389913_ (##cdr _e8985189908_)))
                      (let ((_hd-bind89916_ _hd8985289911_))
                        (if (gx#stx-pair? _tl8985389913_)
                            (let ((_e8985489918_ (gx#syntax-e _tl8985389913_)))
                              (let ((_hd8985589921_ (##car _e8985489918_))
                                    (_tl8985689923_ (##cdr _e8985489918_)))
                                (let ((_expr89926_ _hd8985589921_))
                                  (if (gx#stx-null? _tl8985689923_)
                                      (if '#t
                                          (_lp89820_
                                           _rest89843_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind89916_)
                                                   (gx#core-expand-expression
                                                    _expr89926_))
                                                  (gx#stx-source _hd89844_))
                                                 _body89823_))
                                          (_E8984789896_))
                                      (_E8984789896_)))))
                            (_E8984789896_)))))
                  (_E8984789896_))
              (_E8984789896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8984789896_)))))
                                  (_E8984689928_)))))
                        (if (##pair? _rest8982489832_)
                            (let ((_hd8982989935_ (##car _rest8982489832_))
                                  (_tl8983089937_ (##cdr _rest8982489832_)))
                              (let* ((_hd89940_ _hd8982989935_)
                                     (_rest89942_ _tl8983089937_))
                                (_K8982889932_ _rest89942_ _hd89940_)))
                            (_else8982689840_)))))))
          (_expand-body89816_
           (gx#core-expand-block__%
            (cons '%#begin-module _body89813_)
            _expand-special89815_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx89656_
               _expanded?89657_
               _method89658_
               _current-phi89659_
               _expand189660_)
        (letrec ((_K89662_
                  (lambda (_rest89780_ _r89781_)
                    (let* ((_e8978289789_ _rest89780_)
                           (_E8978489793_ (lambda () _r89781_))
                           (_E8978389809_
                            (lambda ()
                              (if (gx#stx-pair? _e8978289789_)
                                  (let ((_e8978589797_
                                         (gx#syntax-e _e8978289789_)))
                                    (let ((_hd8978689800_
                                           (##car _e8978589797_))
                                          (_tl8978789802_
                                           (##cdr _e8978589797_)))
                                      (let* ((_hd89805_ _hd8978689800_)
                                             (_rest89807_ _tl8978789802_))
                                        (if '#t
                                            (_step89663_
                                             _hd89805_
                                             _rest89807_
                                             _r89781_)
                                            (_E8978489793_)))))
                                  (_E8978489793_)))))
                      (_E8978389809_))))
                 (_step89663_
                  (lambda (_hd89694_ _rest89695_ _r89696_)
                    (let* ((_e8969789715_ _hd89694_)
                           (_E8971089719_
                            (lambda ()
                              (if (_expanded?89657_ (gx#stx-e _hd89694_))
                                  (_K89662_
                                   _rest89695_
                                   (cons (gx#stx-e _hd89694_) _r89696_))
                                  (_expand189660_
                                   _hd89694_
                                   _K89662_
                                   _rest89695_
                                   _r89696_))))
                           (_E8970689735_
                            (lambda ()
                              (if (gx#stx-pair? _e8969789715_)
                                  (let ((_e8971189723_
                                         (gx#syntax-e _e8969789715_)))
                                    (let ((_hd8971289726_
                                           (##car _e8971189723_))
                                          (_tl8971389728_
                                           (##cdr _e8971189723_)))
                                      (let* ((_macro89731_ _hd8971289726_)
                                             (_body89733_ _tl8971389728_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro89731_
                                             gx#syntax-binding?)
                                            (_K89662_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro89731_)
                                                    _hd89694_
                                                    _method89658_)
                                                   _rest89695_)
                                             _r89696_)
                                            (_E8971089719_)))))
                                  (_E8971089719_))))
                           (_E8969989749_
                            (lambda ()
                              (if (gx#stx-pair? _e8969789715_)
                                  (let ((_e8970789739_
                                         (gx#syntax-e _e8969789715_)))
                                    (let ((_hd8970889742_
                                           (##car _e8970789739_))
                                          (_tl8970989744_
                                           (##cdr _e8970789739_)))
                                      (if (eq? (gx#stx-e _hd8970889742_)
                                               'begin:)
                                          (let ((_body89747_ _tl8970989744_))
                                            (if '#t
                                                (_K89662_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest89695_
                                                  _body89747_)
                                                 _r89696_)
                                                (_E8970689735_)))
                                          (_E8970689735_))))
                                  (_E8970689735_))))
                           (_E8969889776_
                            (lambda ()
                              (if (gx#stx-pair? _e8969789715_)
                                  (let ((_e8970089753_
                                         (gx#syntax-e _e8969789715_)))
                                    (let ((_hd8970189756_
                                           (##car _e8970089753_))
                                          (_tl8970289758_
                                           (##cdr _e8970089753_)))
                                      (if (eq? (gx#stx-e _hd8970189756_) 'phi:)
                                          (if (gx#stx-pair? _tl8970289758_)
                                              (let ((_e8970389761_
                                                     (gx#syntax-e
                                                      _tl8970289758_)))
                                                (let ((_hd8970489764_
                                                       (##car _e8970389761_))
                                                      (_tl8970589766_
                                                       (##cdr _e8970389761_)))
                                                  (let* ((_dphi89769_
                                                          _hd8970489764_)
                                                         (_body89771_
                                                          _tl8970589766_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi89769_)
                                                        (let ((_rbody89774_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K89662_ _body89771_ '()))
                        _current-phi89659_
                        (fx+ (gx#stx-e _dphi89769_) (_current-phi89659_)))))
                  (_K89662_ _rest89695_ (foldr1 cons _r89696_ _rbody89774_)))
                (_E8969989749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8969989749_))
                                          (_E8969989749_))))
                                  (_E8969989749_)))))
                      (_E8969889776_)))))
          (let* ((_e8966489671_ _stx89656_)
                 (_E8966689675_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8966489671_)))
                 (_E8966589690_
                  (lambda ()
                    (if (gx#stx-pair? _e8966489671_)
                        (let ((_e8966789679_ (gx#syntax-e _e8966489671_)))
                          (let ((_hd8966889682_ (##car _e8966789679_))
                                (_tl8966989684_ (##cdr _e8966789679_)))
                            (let ((_body89687_ _tl8966989684_))
                              (if '#t
                                  (if (_current-phi89659_)
                                      (_K89662_ _body89687_ '())
                                      (call-with-parameters
                                       (lambda () (_K89662_ _body89687_ '()))
                                       _current-phi89659_
                                       (gx#current-expander-phi)))
                                  (_E8966689675_)))))
                        (_E8966689675_)))))
            (_E8966589690_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx89323_ _internal-expand?89324_)
        (letrec ((_expand189326_
                  (lambda (_hd89636_ _K89637_ _rest89638_ _r89639_)
                    (if (gx#core-bound-module? _hd89636_)
                        (_import189327_
                         (gx#syntax-local-e__0 _hd89636_)
                         _K89637_
                         _rest89638_
                         _r89639_)
                        (if (gx#core-library-module-path? _hd89636_)
                            (_import189327_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd89636_))
                             _K89637_
                             _rest89638_
                             _r89639_)
                            (if (gx#core-library-relative-module-path?
                                 _hd89636_)
                                (_import189327_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd89636_))
                                 _K89637_
                                 _rest89638_
                                 _r89639_)
                                (let ((_e89641_ (gx#stx-e _hd89636_)))
                                  (if (pair? _e89641_)
                                      (let ((_$e89643_
                                             (gx#stx-e (car _e89641_))))
                                        (if (eq? 'spec: _$e89643_)
                                            (_import-spec89330_
                                             _hd89636_
                                             _K89637_
                                             _rest89638_
                                             _r89639_)
                                            (if (eq? 'in: _$e89643_)
                                                (_import-submodule89328_
                                                 _hd89636_
                                                 _K89637_
                                                 _rest89638_
                                                 _r89639_)
                                                (if (eq? 'runtime: _$e89643_)
                                                    (_import-runtime89329_
                                                     _hd89636_
                                                     _K89637_
                                                     _rest89638_
                                                     _r89639_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx89323_
                                                     _hd89636_)))))
                                      (if (string? _e89641_)
                                          (_import189327_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd89636_
                                             (gx#stx-source _stx89323_)))
                                           _K89637_
                                           _rest89638_
                                           _r89639_)
                                          (if (##structure-instance-of?
                                               _e89641_
                                               'gx#module-context::t)
                                              (_K89637_
                                               _rest89638_
                                               (cons _e89641_ _r89639_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx89323_
                                               _hd89636_))))))))))
                 (_import189327_
                  (lambda (_ctx89625_ _K89626_ _rest89627_ _r89628_)
                    (let ((_dphi89630_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K89626_
                       _rest89627_
                       (cons (##structure
                              gx#import-set::t
                              _ctx89625_
                              _dphi89630_
                              (map (lambda (_g8963189633_)
                                     (gx#core-module-export->import__%
                                      _g8963189633_
                                      '#f
                                      _dphi89630_))
                                   (##unchecked-structure-ref
                                    _ctx89625_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r89628_)))))
                 (_import-submodule89328_
                  (lambda (_hd89592_ _K89593_ _rest89594_ _r89595_)
                    (let* ((_e8959689603_ _hd89592_)
                           (_E8959889607_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8959689603_)))
                           (_E8959789621_
                            (lambda ()
                              (if (gx#stx-pair? _e8959689603_)
                                  (let ((_e8959989611_
                                         (gx#syntax-e _e8959689603_)))
                                    (let ((_hd8960089614_
                                           (##car _e8959989611_))
                                          (_tl8960189616_
                                           (##cdr _e8959989611_)))
                                      (let ((_spath89619_ _tl8960189616_))
                                        (if '#t
                                            (_import189327_
                                             (_import-spec-source89331_
                                              _spath89619_)
                                             _K89593_
                                             _rest89594_
                                             _r89595_)
                                            (_E8959889607_)))))
                                  (_E8959889607_)))))
                      (_E8959789621_))))
                 (_import-runtime89329_
                  (lambda (_hd89559_ _K89560_ _rest89561_ _r89562_)
                    (let* ((_e8956389570_ _hd89559_)
                           (_E8956589574_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8956389570_)))
                           (_E8956489588_
                            (lambda ()
                              (if (gx#stx-pair? _e8956389570_)
                                  (let ((_e8956689578_
                                         (gx#syntax-e _e8956389570_)))
                                    (let ((_hd8956789581_
                                           (##car _e8956689578_))
                                          (_tl8956889583_
                                           (##cdr _e8956689578_)))
                                      (let ((_spath89586_ _tl8956889583_))
                                        (if '#t
                                            (_K89560_
                                             _rest89561_
                                             (cons (_import-spec-source89331_
                                                    _spath89586_)
                                                   _r89562_))
                                            (_E8956589574_)))))
                                  (_E8956589574_)))))
                      (_E8956489588_))))
                 (_import-spec89330_
                  (lambda (_hd89398_ _K89399_ _rest89400_ _r89401_)
                    (let* ((_e8940289419_ _hd89398_)
                           (_E8941189423_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8940289419_)))
                           (_E8940489533_
                            (lambda ()
                              (if (gx#stx-pair? _e8940289419_)
                                  (let ((_e8941289427_
                                         (gx#syntax-e _e8940289419_)))
                                    (let ((_hd8941389430_
                                           (##car _e8941289427_))
                                          (_tl8941489432_
                                           (##cdr _e8941289427_)))
                                      (if (gx#stx-pair? _tl8941489432_)
                                          (let ((_e8941589435_
                                                 (gx#syntax-e _tl8941489432_)))
                                            (let ((_hd8941689438_
                                                   (##car _e8941589435_))
                                                  (_tl8941789440_
                                                   (##cdr _e8941589435_)))
                                              (let* ((_path89443_
                                                      _hd8941689438_)
                                                     (_specs89445_
                                                      _tl8941789440_))
                                                (if '#t
                                                    (let ((_src-ctx89447_
                                                           (_import-spec-source89331_
                                                            _path89443_))
                                                          (_exports89448_
                                                           (make-hash-table))
                                                          (_specs89449_
                                                           (gx#syntax->list
                                                            _specs89445_)))
                                                      (for-each
                                                       (lambda (_out89451_)
                                                         (hash-put!
                                                          _exports89448_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out89451_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out89451_
                         '4
                         gx#module-export::t
                         '#f))
                  _out89451_))
               (##unchecked-structure-ref
                _src-ctx89447_
                '9
                gx#module-context::t
                '#f))
              (_K89399_
               _rest89400_
               (foldl1 (lambda (_spec89453_ _r89454_)
                         (let* ((_e8945589471_ _spec89453_)
                                (_E8945789475_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8945589471_)))
                                (_E8945689529_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8945589471_)
                                       (let ((_e8945889479_
                                              (gx#syntax-e _e8945589471_)))
                                         (let ((_hd8945989482_
                                                (##car _e8945889479_))
                                               (_tl8946089484_
                                                (##cdr _e8945889479_)))
                                           (let ((_phi89487_ _hd8945989482_))
                                             (if (gx#stx-pair? _tl8946089484_)
                                                 (let ((_e8946189489_
                                                        (gx#syntax-e
                                                         _tl8946089484_)))
                                                   (let ((_hd8946289492_
                                                          (##car _e8946189489_))
                                                         (_tl8946389494_
                                                          (##cdr _e8946189489_)))
                                                     (let ((_name89497_
                                                            _hd8946289492_))
                                                       (if (gx#stx-pair?
                                                            _tl8946389494_)
                                                           (let ((_e8946489499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8946389494_)))
                     (let ((_hd8946589502_ (##car _e8946489499_))
                           (_tl8946689504_ (##cdr _e8946489499_)))
                       (let ((_src-phi89507_ _hd8946589502_))
                         (if (gx#stx-pair? _tl8946689504_)
                             (let ((_e8946789509_
                                    (gx#syntax-e _tl8946689504_)))
                               (let ((_hd8946889512_ (##car _e8946789509_))
                                     (_tl8946989514_ (##cdr _e8946789509_)))
                                 (let ((_src-name89517_ _hd8946889512_))
                                   (if (gx#stx-null? _tl8946989514_)
                                       (if (and (gx#stx-fixnum? _src-phi89507_)
                                                (gx#identifier?
                                                 _src-name89517_)
                                                (gx#stx-fixnum? _phi89487_)
                                                (gx#identifier? _name89497_))
                                           (let ((_src-phi89519_
                                                  (gx#stx-e _src-phi89507_))
                                                 (_src-name89520_
                                                  (gx#core-identifier-key
                                                   _src-name89517_))
                                                 (_phi89521_
                                                  (gx#stx-e _phi89487_))
                                                 (_name89522_
                                                  (gx#core-identifier-key
                                                   _name89497_)))
                                             (let ((_$e89524_
                                                    (hash-get
                                                     _exports89448_
                                                     (cons _src-phi89519_
                                                           _src-name89520_))))
                                               (if _$e89524_
                                                   ((lambda (_out89527_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out89527_
                                                             _name89522_
                                                             (fx- _phi89521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi89519_))
                    _r89454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e89524_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx89323_
                                                    _hd89398_))))
                                           (_E8945789475_))
                                       (_E8945789475_)))))
                             (_E8945789475_)))))
                   (_E8945789475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8945789475_)))))
                                       (_E8945789475_)))))
                           (_E8945689529_)))
                       _r89401_
                       _specs89449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8941189423_)))))
                                          (_E8941189423_))))
                                  (_E8941189423_))))
                           (_E8940389555_
                            (lambda ()
                              (if (gx#stx-pair? _e8940289419_)
                                  (let ((_e8940589537_
                                         (gx#syntax-e _e8940289419_)))
                                    (let ((_hd8940689540_
                                           (##car _e8940589537_))
                                          (_tl8940789542_
                                           (##cdr _e8940589537_)))
                                      (if (gx#stx-pair? _tl8940789542_)
                                          (let ((_e8940889545_
                                                 (gx#syntax-e _tl8940789542_)))
                                            (let ((_hd8940989548_
                                                   (##car _e8940889545_))
                                                  (_tl8941089550_
                                                   (##cdr _e8940889545_)))
                                              (let ((_path89553_
                                                     _hd8940989548_))
                                                (if (gx#stx-null?
                                                     _tl8941089550_)
                                                    (if '#t
                                                        (_K89399_
                                                         _rest89400_
                                                         (cons (_import-spec-source89331_
                                                                _path89553_)
                                                               _r89401_))
                                                        (_E8940489533_))
                                                    (_E8940489533_)))))
                                          (_E8940489533_))))
                                  (_E8940489533_)))))
                      (_E8940389555_))))
                 (_import-spec-source89331_
                  (lambda (_spath89396_)
                    (gx#core-import-nested-module _spath89396_ _stx89323_)))
                 (_import!89332_
                  (lambda (_rbody89345_)
                    (letrec* ((_current-ctx89347_
                               (gx#current-expander-context))
                              (_deps89348_ (make-hash-table-eq))
                              (_bind!89349_
                               (lambda (_hd89394_)
                                 (gx#core-bind-import!__1
                                  _hd89394_
                                  _current-ctx89347_))))
                      (let _lp89351_ ((_rest89353_ _rbody89345_)
                                      (_body89354_ '()))
                        (let* ((_rest8935589363_ _rest89353_)
                               (_else8935789373_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx89347_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx89347_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx89347_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body89354_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx89371_ _g92201_)
                                     (gx#eval-module _ctx89371_))
                                   _deps89348_)
                                  _body89354_))
                               (_K8935989382_
                                (lambda (_rest89376_ _hd89377_)
                                  (if (##structure-direct-instance-of?
                                       _hd89377_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!89349_ _hd89377_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd89377_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd89377_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps89348_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd89377_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd89377_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!89349_
                                             (##unchecked-structure-ref
                                              _hd89377_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd89377_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps89348_
                                                 (##unchecked-structure-ref
                                                  _hd89377_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e89379_
                                                 (##structure-instance-of?
                                                  _hd89377_
                                                  'gx#module-context::t)))
                                            (if _$e89379_
                                                _$e89379_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx89323_
                                                 _hd89377_)))))
                                  (_lp89351_
                                   _rest89376_
                                   (cons _hd89377_ _body89354_)))))
                          (if (##pair? _rest8935589363_)
                              (let ((_hd8936089385_ (##car _rest8935589363_))
                                    (_tl8936189387_ (##cdr _rest8935589363_)))
                                (let* ((_hd89390_ _hd8936089385_)
                                       (_rest89392_ _tl8936189387_))
                                  (_K8935989382_ _rest89392_ _hd89390_)))
                              (_else8935789373_)))))))
                 (_expanded-import?89333_
                  (lambda (_e89337_)
                    (let ((_$e89339_
                           (##structure-direct-instance-of?
                            _e89337_
                            'gx#import-set::t)))
                      (if _$e89339_
                          _$e89339_
                          (let ((_$e89342_
                                 (##structure-direct-instance-of?
                                  _e89337_
                                  'gx#module-import::t)))
                            (if _$e89342_
                                _$e89342_
                                (##structure-instance-of?
                                 _e89337_
                                 'gx#module-context::t))))))))
          (let ((_rbody89335_
                 (gx#core-expand-import/export
                  _stx89323_
                  _expanded-import?89333_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand189326_)))
            (if _internal-expand?89324_
                (reverse _rbody89335_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!89332_ _rbody89335_))
                 (gx#stx-source _stx89323_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx89649_)
        (let ((_internal-expand?89651_ '#f))
          (gx#core-expand-import%__% _stx89649_ _internal-expand?89651_))))
    (define gx#core-expand-import%
      (lambda _g92203_
        (let ((_g92202_ (##length _g92203_)))
          (cond ((##fx= _g92202_ 1)
                 (apply (lambda (_stx89649_)
                          (gx#core-expand-import%__0 _stx89649_))
                        _g92203_))
                ((##fx= _g92202_ 2)
                 (apply (lambda (_stx89653_ _internal-expand?89654_)
                          (gx#core-expand-import%__%
                           _stx89653_
                           _internal-expand?89654_))
                        _g92203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g92203_))))))
    (define gx#core-import-nested-module
      (lambda (_spath89250_ _where89251_)
        (let* ((_e8925289259_ _spath89250_)
               (_E8925489263_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8925289259_)))
               (_E8925389318_
                (lambda ()
                  (if (gx#stx-pair? _e8925289259_)
                      (let ((_e8925589267_ (gx#syntax-e _e8925289259_)))
                        (let ((_hd8925689270_ (##car _e8925589267_))
                              (_tl8925789272_ (##cdr _e8925589267_)))
                          (let* ((_origin89275_ _hd8925689270_)
                                 (_sub89277_ _tl8925789272_))
                            (if '#t
                                (let ((_origin-ctx89279_
                                       (if (gx#stx-false? _origin89275_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin89275_))))
                                  (let _lp89281_ ((_rest89283_ _sub89277_)
                                                  (_ctx89284_
                                                   _origin-ctx89279_))
                                    (let* ((_e8928589292_ _rest89283_)
                                           (_E8928789296_
                                            (lambda () _ctx89284_))
                                           (_E8928689314_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8928589292_)
                                                  (let ((_e8928889300_
                                                         (gx#syntax-e
                                                          _e8928589292_)))
                                                    (let ((_hd8928989303_
                                                           (##car _e8928889300_))
                                                          (_tl8929089305_
                                                           (##cdr _e8928889300_)))
                                                      (let* ((_id89308_
                                                              _hd8928989303_)
                                                             (_rest89310_
                                                              _tl8929089305_))
                                                        (if '#t
                                                            (let ((_bind89312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id89308_ '0 _ctx89284_)))
                      (if (and (##structure-direct-instance-of?
                                _bind89312_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind89312_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where89251_
                           _spath89250_
                           _id89308_))
                      (_lp89281_
                       _rest89310_
                       (##unchecked-structure-ref
                        _bind89312_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8928789296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8928789296_)))))
                                      (_E8928689314_))))
                                (_E8925489263_)))))
                      (_E8925489263_)))))
          (_E8925389318_))))
    (define gx#core-expand-import-source
      (lambda (_hd89248_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd89248_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx88756_ _internal-expand?88757_)
        (letrec* ((_make-export__9213292133_
                   (lambda (_bind89196_ _phi89197_ _ctx89198_ _name89199_)
                     (let* ((_key89201_
                             (##unchecked-structure-ref
                              _bind89196_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key89203_
                             (if _name89199_
                                 (gx#core-identifier-key _name89199_)
                                 _key89201_)))
                       (##structure
                        gx#module-export::t
                        _ctx89198_
                        _key89201_
                        _phi89197_
                        _export-key89203_
                        (let ((_$e89206_
                               (##structure-instance-of?
                                _bind89196_
                                'gx#extern-binding::t)))
                          (if _$e89206_
                              _$e89206_
                              (##structure-direct-instance-of?
                               _bind89196_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9213492137_
                   (lambda (_bind89212_)
                     (let* ((_phi89214_ (gx#current-export-expander-phi))
                            (_ctx89216_ (gx#current-expander-context))
                            (_name89218_ '#f))
                       (_make-export__9213292133_
                        _bind89212_
                        _phi89214_
                        _ctx89216_
                        _name89218_))))
                  (_make-export__1__9213592138_
                   (lambda (_bind89220_ _phi89221_)
                     (let* ((_ctx89223_ (gx#current-expander-context))
                            (_name89225_ '#f))
                       (_make-export__9213292133_
                        _bind89220_
                        _phi89221_
                        _ctx89223_
                        _name89225_))))
                  (_make-export__2__9213692139_
                   (lambda (_bind89227_ _phi89228_ _ctx89229_)
                     (let ((_name89231_ '#f))
                       (_make-export__9213292133_
                        _bind89227_
                        _phi89228_
                        _ctx89229_
                        _name89231_))))
                  (_make-export88759_
                   (lambda _g92205_
                     (let ((_g92204_ (##length _g92205_)))
                       (cond ((##fx= _g92204_ 1)
                              (apply (lambda (_bind89212_)
                                       (_make-export__0__9213492137_
                                        _bind89212_))
                                     _g92205_))
                             ((##fx= _g92204_ 2)
                              (apply (lambda (_bind89220_ _phi89221_)
                                       (_make-export__1__9213592138_
                                        _bind89220_
                                        _phi89221_))
                                     _g92205_))
                             ((##fx= _g92204_ 3)
                              (apply (lambda (_bind89227_
                                              _phi89228_
                                              _ctx89229_)
                                       (_make-export__2__9213692139_
                                        _bind89227_
                                        _phi89228_
                                        _ctx89229_))
                                     _g92205_))
                             ((##fx= _g92204_ 4)
                              (apply (lambda (_bind89233_
                                              _phi89234_
                                              _ctx89235_
                                              _name89236_)
                                       (_make-export__9213292133_
                                        _bind89233_
                                        _phi89234_
                                        _ctx89235_
                                        _name89236_))
                                     _g92205_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g92205_))))))
                  (_expand188760_
                   (lambda (_hd88909_ _K88910_ _rest88911_ _r88912_)
                     (let* ((_e8891388945_ _hd88909_)
                            (_E8894088949_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx88756_
                                _hd88909_)))
                            (_E8893089028_
                             (lambda ()
                               (if (gx#stx-pair? _e8891388945_)
                                   (let ((_e8894188953_
                                          (gx#syntax-e _e8891388945_)))
                                     (let ((_hd8894288956_
                                            (##car _e8894188953_))
                                           (_tl8894388958_
                                            (##cdr _e8894188953_)))
                                       (if (eq? (gx#stx-e _hd8894288956_)
                                                'import:)
                                           (let ((_in88961_ _tl8894388958_))
                                             (if (gx#stx-list? _in88961_)
                                                 (let _lp88963_ ((_in-rest88965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in88961_)
                         (_r88966_ _r88912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8896788974_
                                                           _in-rest88965_)
                                                          (_E8896988978_
                                                           (lambda ()
                                                             (_K88910_
                                                              _rest88911_
                                                              _r88966_)))
                                                          (_E8896889024_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8896788974_)
                         (let ((_e8897088982_ (gx#syntax-e _e8896788974_)))
                           (let ((_hd8897188985_ (##car _e8897088982_))
                                 (_tl8897288987_ (##cdr _e8897088982_)))
                             (let* ((_hd88990_ _hd8897188985_)
                                    (_in-rest88992_ _tl8897288987_))
                               (if '#t
                                   (let ((_src89022_
                                          (if (gx#core-bound-module? _hd88990_)
                                              (gx#syntax-local-e__0 _hd88990_)
                                              (if (gx#core-library-module-path?
                                                   _hd88990_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd88990_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd88990_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd88990_))
                                                      (if (gx#stx-string?
                                                           _hd88990_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd88990_
                                                            (gx#stx-source
                                                             _stx88756_)))
                                                          (let* ((_e8899389000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd88990_)
                         (_E8899589004_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx88756_
                             _hd88990_)))
                         (_E8899489018_
                          (lambda ()
                            (if (gx#stx-pair? _e8899389000_)
                                (let ((_e8899689008_
                                       (gx#syntax-e _e8899389000_)))
                                  (let ((_hd8899789011_ (##car _e8899689008_))
                                        (_tl8899889013_ (##cdr _e8899689008_)))
                                    (if (eq? (gx#stx-e _hd8899789011_) 'in:)
                                        (let ((_spath89016_ _tl8899889013_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath89016_
                                               _stx88756_)
                                              (_E8899589004_)))
                                        (_E8899589004_))))
                                (_E8899589004_)))))
                    (_E8899489018_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp88963_
                                      _in-rest88992_
                                      (_export-imports88761_
                                       _src89022_
                                       _r88966_)))
                                   (_E8896988978_)))))
                         (_E8896988978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8896889024_)))
                                                 (_E8894088949_)))
                                           (_E8894088949_))))
                                   (_E8894088949_))))
                            (_E8891789067_
                             (lambda ()
                               (if (gx#stx-pair? _e8891388945_)
                                   (let ((_e8893189032_
                                          (gx#syntax-e _e8891388945_)))
                                     (let ((_hd8893289035_
                                            (##car _e8893189032_))
                                           (_tl8893389037_
                                            (##cdr _e8893189032_)))
                                       (if (eq? (gx#stx-e _hd8893289035_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8893389037_)
                                               (let ((_e8893489040_
                                                      (gx#syntax-e
                                                       _tl8893389037_)))
                                                 (let ((_hd8893589043_
                                                        (##car _e8893489040_))
                                                       (_tl8893689045_
                                                        (##cdr _e8893489040_)))
                                                   (let ((_id89048_
                                                          _hd8893589043_))
                                                     (if (gx#stx-pair?
                                                          _tl8893689045_)
                                                         (let ((_e8893789050_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8893689045_)))
                   (let ((_hd8893889053_ (##car _e8893789050_))
                         (_tl8893989055_ (##cdr _e8893789050_)))
                     (let ((_name89058_ _hd8893889053_))
                       (if (gx#stx-null? _tl8893989055_)
                           (if '#t
                               (let* ((_phi89060_
                                       (gx#current-export-expander-phi))
                                      (_$e89062_
                                       (gx#core-resolve-identifier__1
                                        _id89048_
                                        _phi89060_)))
                                 (if _$e89062_
                                     ((lambda (_bind89065_)
                                        (_K88910_
                                         _rest88911_
                                         (cons (_make-export__9213292133_
                                                _bind89065_
                                                _phi89060_
                                                (gx#current-expander-context)
                                                _name89058_)
                                               _r88912_)))
                                      _$e89062_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx88756_
                                      _hd88909_
                                      _id89048_)))
                               (_E8893089028_))
                           (_E8893089028_)))))
                 (_E8893089028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8893089028_))
                                           (_E8893089028_))))
                                   (_E8893089028_))))
                            (_E8891689116_
                             (lambda ()
                               (if (gx#stx-pair? _e8891388945_)
                                   (let ((_e8891889071_
                                          (gx#syntax-e _e8891388945_)))
                                     (let ((_hd8891989074_
                                            (##car _e8891889071_))
                                           (_tl8892089076_
                                            (##cdr _e8891889071_)))
                                       (if (eq? (gx#stx-e _hd8891989074_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8892089076_)
                                               (let ((_e8892189079_
                                                      (gx#syntax-e
                                                       _tl8892089076_)))
                                                 (let ((_hd8892289082_
                                                        (##car _e8892189079_))
                                                       (_tl8892389084_
                                                        (##cdr _e8892189079_)))
                                                   (let ((_phi89087_
                                                          _hd8892289082_))
                                                     (if (gx#stx-pair?
                                                          _tl8892389084_)
                                                         (let ((_e8892489089_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8892389084_)))
                   (let ((_hd8892589092_ (##car _e8892489089_))
                         (_tl8892689094_ (##cdr _e8892489089_)))
                     (let ((_id89097_ _hd8892589092_))
                       (if (gx#stx-pair? _tl8892689094_)
                           (let ((_e8892789099_ (gx#syntax-e _tl8892689094_)))
                             (let ((_hd8892889102_ (##car _e8892789099_))
                                   (_tl8892989104_ (##cdr _e8892789099_)))
                               (let ((_name89107_ _hd8892889102_))
                                 (if (gx#stx-null? _tl8892989104_)
                                     (if (and (gx#stx-fixnum? _phi89087_)
                                              (gx#identifier? _id89097_)
                                              (gx#identifier? _name89107_))
                                         (let* ((_phi89109_
                                                 (gx#stx-e _phi89087_))
                                                (_$e89111_
                                                 (gx#core-resolve-identifier__1
                                                  _id89097_
                                                  _phi89109_)))
                                           (if _$e89111_
                                               ((lambda (_bind89114_)
                                                  (_K88910_
                                                   _rest88911_
                                                   (cons (_make-export__9213292133_
                                                          _bind89114_
                                                          _phi89109_
                                                          (gx#current-expander-context)
                                                          _name89107_)
                                                         _r88912_)))
                                                _$e89111_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx88756_
                                                _hd88909_
                                                _id89097_)))
                                         (_E8891789067_))
                                     (_E8891789067_)))))
                           (_E8891789067_)))))
                 (_E8891789067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8891789067_))
                                           (_E8891789067_))))
                                   (_E8891789067_))))
                            (_E8891589127_
                             (lambda ()
                               (let ((_id89120_ _e8891388945_))
                                 (if (gx#identifier? _id89120_)
                                     (let ((_$e89122_
                                            (gx#core-resolve-identifier__1
                                             _id89120_
                                             (gx#current-export-expander-phi))))
                                       (if _$e89122_
                                           ((lambda (_bind89125_)
                                              (_K88910_
                                               _rest88911_
                                               (cons (_make-export__0__9213492137_
                                                      _bind89125_)
                                                     _r88912_)))
                                            _$e89122_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx88756_
                                            _hd88909_)))
                                     (_E8891689116_)))))
                            (_E8891489191_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8891388945_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx89131_
                                               (gx#current-expander-context))
                                              (_current-phi89133_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx89135_
                                               (gx#core-context-shift
                                                _current-ctx89131_
                                                _current-phi89133_))
                                              (_phi-bind89137_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx89135_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp89140_ ((_bind-rest89142_
                                                          _phi-bind89137_)
                                                         (_set89143_ '()))
                                           (let* ((_bind-rest8914489154_
                                                   _bind-rest89142_)
                                                  (_else8914689162_
                                                   (lambda ()
                                                     (_K88910_
                                                      _rest88911_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi89133_
                                                             _set89143_)
                                                            _r88912_))))
                                                  (_K8914889172_
                                                   (lambda (_bind-rest89165_
                                                            _bind89166_
                                                            _key89167_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind89166_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind89166_))
                                                         (_lp89140_
                                                          _bind-rest89165_
                                                          _set89143_)
                                                         (_lp89140_
                                                          _bind-rest89165_
                                                          (cons (_make-export__2__9213692139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind89166_
                         _current-phi89133_
                         _current-ctx89131_)
                        _set89143_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8914489154_)
                                                 (let ((_hd8914989175_
                                                        (##car _bind-rest8914489154_))
                                                       (_tl8915089177_
                                                        (##cdr _bind-rest8914489154_)))
                                                   (if (##pair? _hd8914989175_)
                                                       (let ((_hd8915189180_
                                                              (##car _hd8914989175_))
                                                             (_tl8915289182_
                                                              (##cdr _hd8914989175_)))
                                                         (let* ((_key89185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8915189180_)
                        (_bind89187_ _tl8915289182_)
                        (_bind-rest89189_ _tl8915089177_))
                   (_K8914889172_ _bind-rest89189_ _bind89187_ _key89185_)))
               (_else8914689162_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8914689162_)))))
                                       (_E8891589127_))
                                   (_E8891589127_)))))
                       (_E8891489191_))))
                  (_export-imports88761_
                   (lambda (_src88785_ _r88786_)
                     (letrec* ((_current-ctx88788_
                                (gx#current-expander-context))
                               (_current-phi88789_
                                (gx#current-export-expander-phi))
                               (_import->export88790_
                                (lambda (_in88871_)
                                  (let* ((_in8887288880_ _in88871_)
                                         (_E8887488884_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8887288880_)))
                                         (_K8887588891_
                                          (lambda (_phi88887_
                                                   _key88888_
                                                   _out88889_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx88788_
                                             _key88888_
                                             _phi88887_
                                             _key88888_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8887288880_
                                         'gx#module-import::t)
                                        (let* ((_e8887688894_
                                                (##unchecked-structure-ref
                                                 _in8887288880_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out88897_ _e8887688894_)
                                               (_e8887788899_
                                                (##unchecked-structure-ref
                                                 _in8887288880_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key88902_ _e8887788899_)
                                               (_e8887888904_
                                                (##unchecked-structure-ref
                                                 _in8887288880_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi88907_ _e8887888904_))
                                          (_K8887588891_
                                           _phi88907_
                                           _key88902_
                                           _out88897_))
                                        (_E8887488884_)))))
                               (_fold-e88791_
                                (lambda (_in88793_ _r88794_)
                                  (let* ((_in8879588809_ _in88793_)
                                         (_else8879888817_
                                          (lambda () _r88794_)))
                                    (let ((_K8880488853_
                                           (lambda (_phi88849_
                                                    _key88850_
                                                    _out88851_)
                                             (if (and (fx= _phi88849_
                                                           _current-phi88789_)
                                                      (eq? _src88785_
                                                           (##unchecked-structure-ref
                                                            _out88851_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export88790_
                                                        _in88793_)
                                                       _r88794_)
                                                 _r88794_)))
                                          (_K8880088828_
                                           (lambda (_imports88821_
                                                    _phi88822_
                                                    _ctx88823_)
                                             (if (and (fx= _phi88822_
                                                           _current-phi88789_)
                                                      (eq? _src88785_
                                                           _ctx88823_))
                                                 (foldl1 (lambda (_in88825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r88826_)
                   (cons (_import->export88790_ _in88825_) _r88826_))
                 _r88794_
                 _imports88821_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r88794_))))
                                      (let ((_try-match8879788846_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8879588809_
                                                    'gx#import-set::t)
                                                   (let* ((_e8880188831_
                                                           (##unchecked-structure-ref
                                                            _in8879588809_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8880288836_
                                                           (##unchecked-structure-ref
                                                            _in8879588809_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8880388841_
                                                           (##unchecked-structure-ref
                                                            _in8879588809_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx88834_
                                                            _e8880188831_)
                                                           (_phi88839_
                                                            _e8880288836_)
                                                           (_imports88844_
                                                            _e8880388841_))
                                                       (_K8880088828_
                                                        _imports88844_
                                                        _phi88839_
                                                        _ctx88834_)))
                                                   (_else8879888817_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8879588809_
                                             'gx#module-import::t)
                                            (let* ((_e8880588856_
                                                    (##unchecked-structure-ref
                                                     _in8879588809_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8880688861_
                                                    (##unchecked-structure-ref
                                                     _in8879588809_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8880788866_
                                                    (##unchecked-structure-ref
                                                     _in8879588809_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out88859_ _e8880588856_)
                                                    (_key88864_ _e8880688861_)
                                                    (_phi88869_ _e8880788866_))
                                                (_K8880488853_
                                                 _phi88869_
                                                 _key88864_
                                                 _out88859_)))
                                            (_try-match8879788846_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src88785_
                              _current-phi88789_
                              (foldl1 _fold-e88791_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx88788_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r88786_))))
                  (_export!88762_
                   (lambda (_rbody88775_)
                     (letrec* ((_current-ctx88777_
                                (gx#current-expander-context))
                               (_fold-e88778_
                                (lambda (_out88782_ _r88783_)
                                  (if (##structure-direct-instance-of?
                                       _out88782_
                                       'gx#module-export::t)
                                      (cons _out88782_ _r88783_)
                                      (if (##structure-direct-instance-of?
                                           _out88782_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r88783_
                                                  (##unchecked-structure-ref
                                                   _out88782_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r88783_)))))
                       (let ((_body88780_ (reverse _rbody88775_)))
                         (##unchecked-structure-set!
                          _current-ctx88777_
                          (foldl1 _fold-e88778_
                                  (##unchecked-structure-ref
                                   _current-ctx88777_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body88780_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body88780_))))
                  (_expanded-export?88763_
                   (lambda (_e88770_)
                     (let ((_$e88772_
                            (##structure-direct-instance-of?
                             _e88770_
                             'gx#module-export::t)))
                       (if _$e88772_
                           _$e88772_
                           (##structure-direct-instance-of?
                            _e88770_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?88757_)
              (let ((_rbody88768_
                     (gx#core-expand-import/export
                      _stx88756_
                      _expanded-export?88763_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand188760_)))
                (if _internal-expand?88757_
                    (reverse _rbody88768_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!88762_ _rbody88768_))
                     (gx#stx-source _stx88756_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx88756_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx88756_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx89241_)
        (let ((_internal-expand?89243_ '#f))
          (gx#core-expand-export%__% _stx89241_ _internal-expand?89243_))))
    (define gx#core-expand-export%
      (lambda _g92207_
        (let ((_g92206_ (##length _g92207_)))
          (cond ((##fx= _g92206_ 1)
                 (apply (lambda (_stx89241_)
                          (gx#core-expand-export%__0 _stx89241_))
                        _g92207_))
                ((##fx= _g92206_ 2)
                 (apply (lambda (_stx89245_ _internal-expand?89246_)
                          (gx#core-expand-export%__%
                           _stx89245_
                           _internal-expand?89246_))
                        _g92207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g92207_))))))
    (define gx#core-expand-export-source
      (lambda (_hd88753_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd88753_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx88723_)
        (let* ((_e8872488731_ _stx88723_)
               (_E8872688735_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8872488731_)))
               (_E8872588749_
                (lambda ()
                  (if (gx#stx-pair? _e8872488731_)
                      (let ((_e8872788739_ (gx#syntax-e _e8872488731_)))
                        (let ((_hd8872888742_ (##car _e8872788739_))
                              (_tl8872988744_ (##cdr _e8872788739_)))
                          (let ((_body88747_ _tl8872988744_))
                            (if (gx#identifier-list? _body88747_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body88747_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body88747_))
                                   (gx#stx-source _stx88723_)))
                                (_E8872688735_)))))
                      (_E8872688735_)))))
          (_E8872588749_))))
    (define gx#core-bind-feature!__%
      (lambda (_id88689_ _private?88690_ _phi88691_ _ctx88692_)
        (gx#core-bind-syntax!__%
         _id88689_
         ((if _private?88690_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id88689_))
         _private?88690_
         _phi88691_
         _ctx88692_)))
    (define gx#core-bind-feature!__0
      (lambda (_id88697_)
        (let* ((_private?88699_ '#f)
               (_phi88701_ (gx#current-expander-phi))
               (_ctx88703_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88697_
           _private?88699_
           _phi88701_
           _ctx88703_))))
    (define gx#core-bind-feature!__1
      (lambda (_id88705_ _private?88706_)
        (let* ((_phi88708_ (gx#current-expander-phi))
               (_ctx88710_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88705_
           _private?88706_
           _phi88708_
           _ctx88710_))))
    (define gx#core-bind-feature!__2
      (lambda (_id88712_ _private?88713_ _phi88714_)
        (let ((_ctx88716_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88712_
           _private?88713_
           _phi88714_
           _ctx88716_))))
    (define gx#core-bind-feature!
      (lambda _g92209_
        (let ((_g92208_ (##length _g92209_)))
          (cond ((##fx= _g92208_ 1)
                 (apply (lambda (_id88697_)
                          (gx#core-bind-feature!__0 _id88697_))
                        _g92209_))
                ((##fx= _g92208_ 2)
                 (apply (lambda (_id88705_ _private?88706_)
                          (gx#core-bind-feature!__1 _id88705_ _private?88706_))
                        _g92209_))
                ((##fx= _g92208_ 3)
                 (apply (lambda (_id88712_ _private?88713_ _phi88714_)
                          (gx#core-bind-feature!__2
                           _id88712_
                           _private?88713_
                           _phi88714_))
                        _g92209_))
                ((##fx= _g92208_ 4)
                 (apply (lambda (_id88718_
                                 _private?88719_
                                 _phi88720_
                                 _ctx88721_)
                          (gx#core-bind-feature!__%
                           _id88718_
                           _private?88719_
                           _phi88720_
                           _ctx88721_))
                        _g92209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g92209_))))))))
