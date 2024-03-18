(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710715075)
  (begin
    (declare (not safe))
    (define gx#__module-registry (make-hash-table))
    (define gx#__module-pkg-cache (make-hash-table))
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
      (lambda _$args94140_
        (apply make-instance gx#module-import::t _$args94140_)))
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
      (lambda _$args94137_
        (apply make-instance gx#module-export::t _$args94137_)))
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
      (lambda _$args94134_
        (apply make-instance gx#import-set::t _$args94134_)))
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
      (lambda _$args94131_
        (apply make-instance gx#export-set::t _$args94131_)))
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
      (lambda _$args94128_
        (apply make-instance gx#import-expander::t _$args94128_)))
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
      (lambda _$args94125_
        (apply make-instance gx#export-expander::t _$args94125_)))
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
      (lambda _$args94122_
        (apply make-instance gx#import-export-expander::t _$args94122_)))
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
      (lambda (_path94119_ _fun94120_)
        (call-with-input-file
         (cons 'path: (cons _path94119_ gx#source-file-settings))
         _fun94120_)))
    (define gx#module-context:::init!
      (lambda (_self94113_ _id94114_ _super94115_ _ns94116_ _path94117_)
        (if (##fx< '11 (##structure-length _self94113_))
            (begin
              (##unchecked-structure-set!
               _self94113_
               _id94114_
               '1
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               (make-hash-table-eq)
               '2
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               _super94115_
               '3
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               '#f
               '4
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               '#f
               '5
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               _ns94116_
               '6
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               _path94117_
               '7
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               '()
               '8
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               '()
               '9
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               '#f
               '10
               (##structure-type _self94113_)
               '#f)
              (##unchecked-structure-set!
               _self94113_
               '#f
               '11
               (##structure-type _self94113_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self94113_
                   '11
                   (##vector-length _self94113_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self93957_ _ctx93958_ _root93959_)
        (let ((_super93967_
               (let ((_$e93961_ _root93959_))
                 (if _$e93961_
                     _$e93961_
                     (let ((_$e93964_ (gx#core-context-root__0)))
                       (if _$e93964_
                           _$e93964_
                           (let ((__obj94182
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor94183
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj94182
                                     ':init!)))
                               (if __constructor94183
                                   (__constructor94183 __obj94182)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj94182)))))))
          (if _ctx93958_
              (let ((_id93970_
                     (##structure-ref
                      _ctx93958_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path93971_
                     (##structure-ref _ctx93958_ '7 gx#module-context::t '#f))
                    (_in93972_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx93958_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e93973_
                     (make-promise (lambda () (gx#eval-module _ctx93958_)))))
                (if (##fx< '8 (##structure-length _self93957_))
                    (begin
                      (##unchecked-structure-set!
                       _self93957_
                       _id93970_
                       '1
                       (##structure-type _self93957_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93957_
                       (make-hash-table-eq 'size: (length _in93972_))
                       '2
                       (##structure-type _self93957_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93957_
                       _super93967_
                       '3
                       (##structure-type _self93957_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93957_
                       '#f
                       '4
                       (##structure-type _self93957_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93957_
                       '#f
                       '5
                       (##structure-type _self93957_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93957_
                       _path93971_
                       '6
                       (##structure-type _self93957_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93957_
                       _in93972_
                       '7
                       (##structure-type _self93957_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93957_
                       _e93973_
                       '8
                       (##structure-type _self93957_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self93957_
                           '8
                           (##vector-length _self93957_)))
                (for-each
                 (lambda (_g9397493976_)
                   (gx#core-bind-weak-import!__% _g9397493976_ _self93957_))
                 _in93972_))
              (if (##fx< '8 (##structure-length _self93957_))
                  (begin
                    (##unchecked-structure-set!
                     _self93957_
                     '#f
                     '1
                     (##structure-type _self93957_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93957_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self93957_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93957_
                     _super93967_
                     '3
                     (##structure-type _self93957_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93957_
                     '#f
                     '4
                     (##structure-type _self93957_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93957_
                     '#f
                     '5
                     (##structure-type _self93957_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93957_
                     '#f
                     '6
                     (##structure-type _self93957_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93957_
                     '()
                     '7
                     (##structure-type _self93957_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93957_
                     '#f
                     '8
                     (##structure-type _self93957_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self93957_
                         '8
                         (##vector-length _self93957_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self93982_ _ctx93983_)
        (let ((_root93985_ '#f))
          (gx#prelude-context:::init!__% _self93982_ _ctx93983_ _root93985_))))
    (define gx#prelude-context:::init!
      (lambda _g94189_
        (let ((_g94188_ (##length _g94189_)))
          (cond ((##fx= _g94188_ 2)
                 (apply (lambda (_self93982_ _ctx93983_)
                          (gx#prelude-context:::init!__0
                           _self93982_
                           _ctx93983_))
                        _g94189_))
                ((##fx= _g94188_ 3)
                 (apply (lambda (_self93987_ _ctx93988_ _root93989_)
                          (gx#prelude-context:::init!__%
                           _self93987_
                           _ctx93988_
                           _root93989_))
                        _g94189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g94189_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self93831_ _e93832_)
        (if (##fx< '3 (##structure-length _self93831_))
            (begin
              (##unchecked-structure-set!
               _self93831_
               _e93832_
               '1
               (##structure-type _self93831_)
               '#f)
              (##unchecked-structure-set!
               _self93831_
               (gx#current-expander-context)
               '2
               (##structure-type _self93831_)
               '#f)
              (##unchecked-structure-set!
               _self93831_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self93831_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93831_
                   '3
                   (##vector-length _self93831_)))))
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
      (lambda (_g9345793460_ _g9345893462_)
        (gx#core-apply-user-expander__%
         _g9345793460_
         _g9345893462_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9332893331_ _g9332993333_)
        (gx#core-apply-user-expander__%
         _g9332893331_
         _g9332993333_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx93199_)
        (let* ((_path93201_
                (##structure-ref _ctx93199_ '7 gx#module-context::t '#f))
               (_path93203_
                (if (pair? _path93201_) (last _path93201_) _path93201_)))
          (if (string? _path93203_) _path93203_ '#f))))
    (define gx#import-module__%
      (lambda (_path93175_ _reload?93176_ _eval?93177_)
        (let ((_ctx93179_
               ((gx#current-expander-module-import)
                _path93175_
                _reload?93176_)))
          (if (and _ctx93179_ _eval?93177_)
              (gx#eval-module _ctx93179_)
              '#!void)
          _ctx93179_)))
    (define gx#import-module__0
      (lambda (_path93184_)
        (let* ((_reload?93186_ '#f) (_eval?93188_ '#f))
          (gx#import-module__% _path93184_ _reload?93186_ _eval?93188_))))
    (define gx#import-module__1
      (lambda (_path93190_ _reload?93191_)
        (let ((_eval?93193_ '#f))
          (gx#import-module__% _path93190_ _reload?93191_ _eval?93193_))))
    (define gx#import-module
      (lambda _g94191_
        (let ((_g94190_ (##length _g94191_)))
          (cond ((##fx= _g94190_ 1)
                 (apply (lambda (_path93184_)
                          (gx#import-module__0 _path93184_))
                        _g94191_))
                ((##fx= _g94190_ 2)
                 (apply (lambda (_path93190_ _reload?93191_)
                          (gx#import-module__1 _path93190_ _reload?93191_))
                        _g94191_))
                ((##fx= _g94190_ 3)
                 (apply (lambda (_path93195_ _reload?93196_ _eval?93197_)
                          (gx#import-module__%
                           _path93195_
                           _reload?93196_
                           _eval?93197_))
                        _g94191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g94191_))))))
    (define gx#eval-module
      (lambda (_mod93172_) ((gx#current-expander-module-eval) _mod93172_)))
    (define gx#core-eval-module
      (lambda (_obj93157_)
        (letrec ((_force-e93159_
                  (lambda (_getf93168_ _e93169_)
                    (call-with-parameters
                     (lambda () (force (_getf93168_ _e93169_)))
                     gx#current-expander-context
                     _e93169_
                     gx#current-expander-phi
                     '0))))
          (let _recur93161_ ((_e93163_ _obj93157_))
            (if (##structure-instance-of? _e93163_ 'gx#module-context::t)
                (begin
                  (let ((_$e93165_ (gx#core-context-prelude__% _e93163_)))
                    (if _$e93165_ (_recur93161_ _$e93165_) '#!void))
                  (_force-e93159_ gx#module-context-e _e93163_))
                (if (##structure-instance-of? _e93163_ 'gx#prelude-context::t)
                    (_force-e93159_ gx#prelude-context-e _e93163_)
                    (if (gx#stx-string? _e93163_)
                        (_recur93161_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e93163_)))
                        (if (gx#core-library-module-path? _e93163_)
                            (_recur93161_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e93163_)))
                            (error '"Cannot eval module" _obj93157_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx93140_)
        (let _lp93142_ ((_e93144_ _ctx93140_))
          (if (or (##structure-instance-of? _e93144_ 'gx#module-context::t)
                  (##structure-instance-of? _e93144_ 'gx#local-context::t))
              (_lp93142_
               (##unchecked-structure-ref _e93144_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e93144_ 'gx#prelude-context::t)
                  _e93144_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx93153_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx93153_))))
    (define gx#core-context-prelude
      (lambda _g94193_
        (let ((_g94192_ (##length _g94193_)))
          (cond ((##fx= _g94192_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g94193_))
                ((##fx= _g94192_ 1)
                 (apply (lambda (_ctx93155_)
                          (gx#core-context-prelude__% _ctx93155_))
                        _g94193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g94193_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx93132_)
        (let ((_$e93134_ (hash-get gx#__module-registry _ctx93132_)))
          (if _$e93134_
              _$e93134_
              (let ((_pre93137_
                     (let ((__obj94184
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
                       (gx#prelude-context:::init! __obj94184 _ctx93132_)
                       __obj94184)))
                (hash-put! gx#__module-registry _ctx93132_ _pre93137_)
                _pre93137_)))))
    (define gx#core-import-module__%
      (lambda (_rpath93013_ _reload?93014_)
        (letrec ((_import-source93016_
                  (lambda (_path93101_)
                    (if (member _path93101_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path93101_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g94194_ (gx#core-read-module _path93101_)))
                         (begin
                           (let ((_g94195_
                                  (if (##values? _g94194_)
                                      (##vector-length _g94194_)
                                      1)))
                             (if (not (##fx= _g94195_ 4))
                                 (error "Context expects 4 values" _g94195_)))
                           (let ((_pre93104_ (##vector-ref _g94194_ 0))
                                 (_id93105_ (##vector-ref _g94194_ 1))
                                 (_ns93106_ (##vector-ref _g94194_ 2))
                                 (_body93107_ (##vector-ref _g94194_ 3)))
                             (let* ((_prelude93112_
                                     (if (##structure-instance-of?
                                          _pre93104_
                                          'gx#prelude-context::t)
                                         _pre93104_
                                         (if (##structure-instance-of?
                                              _pre93104_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre93104_)
                                             (if (string? _pre93104_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre93104_))
                                                 (if (not _pre93104_)
                                                     (let ((_$e93109_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e93109_
                                                           _$e93109_
                                                           (let ((__obj94185
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
                     (gx#prelude-context:::init! __obj94185 '#f)
                     __obj94185)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath93013_
                                                            _pre93104_))))))
                                    (_ctx93114_
                                     (let ((__obj94186
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
                                        __obj94186
                                        _id93105_
                                        _prelude93112_
                                        _ns93106_
                                        _path93101_)
                                       __obj94186))
                                    (_body93116_
                                     (gx#core-expand-module-begin
                                      _body93107_
                                      _ctx93114_))
                                    (_body93118_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body93116_)
                                      _path93101_
                                      _ctx93114_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx93114_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body93118_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx93114_
                                _body93118_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                gx#__module-registry
                                _path93101_
                                _ctx93114_)
                               (hash-put!
                                gx#__module-registry
                                _id93105_
                                _ctx93114_)
                               _ctx93114_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path93101_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule93017_
                  (lambda (_rpath93029_)
                    (let* ((_rpath9303093037_ _rpath93029_)
                           (_E9303293041_
                            (lambda ()
                              (error '"No clause matching" _rpath9303093037_)))
                           (_K9303393089_
                            (lambda (_refs93044_ _origin93045_)
                              (let ((_ctx93047_
                                     (if _origin93045_
                                         (gx#core-import-module__%
                                          _origin93045_
                                          _reload?93014_)
                                         (gx#current-expander-context))))
                                (let _lp93049_ ((_rest93051_ _refs93044_)
                                                (_ctx93052_ _ctx93047_))
                                  (let* ((_rest9305393061_ _rest93051_)
                                         (_else9305593069_
                                          (lambda () _ctx93052_))
                                         (_K9305793077_
                                          (lambda (_rest93072_ _id93073_)
                                            (let ((_bind93075_
                                                   (gx#resolve-identifier__%
                                                    _id93073_
                                                    '0
                                                    _ctx93052_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind93075_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind93075_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp93049_
                                                   _rest93072_
                                                   (##unchecked-structure-ref
                                                    _bind93075_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath93029_
                                                         _id93073_
                                                         _bind93075_))))))
                                    (if (##pair? _rest9305393061_)
                                        (let ((_hd9305893080_
                                               (##car _rest9305393061_))
                                              (_tl9305993082_
                                               (##cdr _rest9305393061_)))
                                          (let* ((_id93085_ _hd9305893080_)
                                                 (_rest93087_ _tl9305993082_))
                                            (_K9305793077_
                                             _rest93087_
                                             _id93085_)))
                                        (_else9305593069_))))))))
                      (if (##pair? _rpath9303093037_)
                          (let ((_hd9303493092_ (##car _rpath9303093037_))
                                (_tl9303593094_ (##cdr _rpath9303093037_)))
                            (let* ((_origin93097_ _hd9303493092_)
                                   (_refs93099_ _tl9303593094_))
                              (_K9303393089_ _refs93099_ _origin93097_)))
                          (_E9303293041_))))))
          (let ((_$e93019_
                 (if (not _reload?93014_)
                     (hash-get gx#__module-registry _rpath93013_)
                     '#f)))
            (if _$e93019_
                (values _$e93019_)
                (if (list? _rpath93013_)
                    (_import-submodule93017_ _rpath93013_)
                    (if (gx#core-library-module-path? _rpath93013_)
                        (let ((_ctx93022_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath93013_)
                                _reload?93014_)))
                          (hash-put!
                           gx#__module-registry
                           _rpath93013_
                           _ctx93022_)
                          _ctx93022_)
                        (let* ((_npath93024_ (path-normalize _rpath93013_))
                               (_$e93026_
                                (if (not _reload?93014_)
                                    (hash-get
                                     gx#__module-registry
                                     _npath93024_)
                                    '#f)))
                          (if _$e93026_
                              _$e93026_
                              (_import-source93016_ _npath93024_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath93125_)
        (let ((_reload?93127_ '#f))
          (gx#core-import-module__% _rpath93125_ _reload?93127_))))
    (define gx#core-import-module
      (lambda _g94197_
        (let ((_g94196_ (##length _g94197_)))
          (cond ((##fx= _g94196_ 1)
                 (apply (lambda (_rpath93125_)
                          (gx#core-import-module__0 _rpath93125_))
                        _g94197_))
                ((##fx= _g94196_ 2)
                 (apply (lambda (_rpath93129_ _reload?93130_)
                          (gx#core-import-module__%
                           _rpath93129_
                           _reload?93130_))
                        _g94197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g94197_))))))
    (define gx#core-read-module
      (lambda (_path93002_)
        (with-catch
         (lambda (_exn93004_)
           (if (and (datum-parsing-exception? _exn93004_)
                    (eq? (datum-parsing-exception-filepos _exn93004_) '0))
               (gx#core-read-module/lang _path93002_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path93002_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9300693008_)
                      (display-exception _exn93004_ _g9300693008_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path93002_)))))
    (define gx#core-read-module/sexp
      (lambda (_path92865_)
        (let _lp92867_ ((_body92869_ (read-syntax-from-file _path92865_))
                        (_pre92870_ '#f)
                        (_ns92871_ '#f)
                        (_pkg92872_ '#f))
          (let* ((_e9287392897_ _body92869_)
                 (_E9288992919_
                  (lambda ()
                    (let ((_g94198_
                           (if _pkg92872_
                               (values _pre92870_ _ns92871_ _pkg92872_)
                               (gx#core-read-module-package
                                _path92865_
                                _pre92870_
                                _ns92871_))))
                      (begin
                        (let ((_g94199_
                               (if (##values? _g94198_)
                                   (##vector-length _g94198_)
                                   1)))
                          (if (not (##fx= _g94199_ 3))
                              (error "Context expects 3 values" _g94199_)))
                        (let ((_pre92901_ (##vector-ref _g94198_ 0))
                              (_ns92902_ (##vector-ref _g94198_ 1))
                              (_pkg92903_ (##vector-ref _g94198_ 2)))
                          (let* ((_prelude92905_
                                  (if (gx#core-bound-module-prelude?
                                       _pre92901_)
                                      (gx#syntax-local-e__0 _pre92901_)
                                      (if (gx#core-library-module-path?
                                           _pre92901_)
                                          (gx#core-resolve-library-module-path
                                           _pre92901_)
                                          (if (gx#stx-string? _pre92901_)
                                              (gx#core-resolve-module-path__%
                                               _pre92901_
                                               _path92865_)
                                              (gx#stx-e _pre92901_)))))
                                 (_path-id92907_
                                  (gx#core-module-path->namespace _path92865_))
                                 (_pkg-id92909_
                                  (if _pkg92903_
                                      (string-append
                                       _pkg92903_
                                       '"/"
                                       _path-id92907_)
                                      _path-id92907_))
                                 (_module-id92911_
                                  (string->symbol _pkg-id92909_))
                                 (_module-ns92916_
                                  (if (eq? _ns92902_ '#!void)
                                      '#f
                                      (let ((_$e92913_ _ns92902_))
                                        (if _$e92913_
                                            _$e92913_
                                            _pkg-id92909_)))))
                            (values _prelude92905_
                                    _module-id92911_
                                    _module-ns92916_
                                    _body92869_)))))))
                 (_E9288292948_
                  (lambda ()
                    (if (gx#stx-pair? _e9287392897_)
                        (let ((_e9289092923_ (gx#syntax-e _e9287392897_)))
                          (let ((_hd9289192926_ (##car _e9289092923_))
                                (_tl9289292928_ (##cdr _e9289092923_)))
                            (if (eq? (gx#stx-e _hd9289192926_) 'package:)
                                (if (gx#stx-pair? _tl9289292928_)
                                    (let ((_e9289392931_
                                           (gx#syntax-e _tl9289292928_)))
                                      (let ((_hd9289492934_
                                             (##car _e9289392931_))
                                            (_tl9289592936_
                                             (##cdr _e9289392931_)))
                                        (let* ((_pkg92939_ _hd9289492934_)
                                               (_rest92941_ _tl9289592936_))
                                          (if '#t
                                              (let ((_pkg92946_
                                                     (if (gx#identifier?
                                                          _pkg92939_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg92939_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg92939_)
                         (gx#stx-false? _pkg92939_))
                     (gx#stx-e _pkg92939_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg92939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp92867_
                                                 _rest92941_
                                                 _pre92870_
                                                 _ns92871_
                                                 _pkg92946_))
                                              (_E9288992919_)))))
                                    (_E9288992919_))
                                (_E9288992919_))))
                        (_E9288992919_))))
                 (_E9287592974_
                  (lambda ()
                    (if (gx#stx-pair? _e9287392897_)
                        (let ((_e9288392952_ (gx#syntax-e _e9287392897_)))
                          (let ((_hd9288492955_ (##car _e9288392952_))
                                (_tl9288592957_ (##cdr _e9288392952_)))
                            (if (eq? (gx#stx-e _hd9288492955_) 'namespace:)
                                (if (gx#stx-pair? _tl9288592957_)
                                    (let ((_e9288692960_
                                           (gx#syntax-e _tl9288592957_)))
                                      (let ((_hd9288792963_
                                             (##car _e9288692960_))
                                            (_tl9288892965_
                                             (##cdr _e9288692960_)))
                                        (let* ((_ns92968_ _hd9288792963_)
                                               (_rest92970_ _tl9288892965_))
                                          (if '#t
                                              (let ((_ns92972_
                                                     (if (gx#identifier?
                                                          _ns92968_)
                                                         (symbol->string
                                                          (gx#stx-e _ns92968_))
                                                         (if (gx#stx-string?
                                                              _ns92968_)
                                                             (gx#stx-e
                                                              _ns92968_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns92968_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns92968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp92867_
                                                 _rest92970_
                                                 _pre92870_
                                                 _ns92972_
                                                 _pkg92872_))
                                              (_E9288292948_)))))
                                    (_E9288292948_))
                                (_E9288292948_))))
                        (_E9288292948_))))
                 (_E9287492998_
                  (lambda ()
                    (if (gx#stx-pair? _e9287392897_)
                        (let ((_e9287692978_ (gx#syntax-e _e9287392897_)))
                          (let ((_hd9287792981_ (##car _e9287692978_))
                                (_tl9287892983_ (##cdr _e9287692978_)))
                            (if (eq? (gx#stx-e _hd9287792981_) 'prelude:)
                                (if (gx#stx-pair? _tl9287892983_)
                                    (let ((_e9287992986_
                                           (gx#syntax-e _tl9287892983_)))
                                      (let ((_hd9288092989_
                                             (##car _e9287992986_))
                                            (_tl9288192991_
                                             (##cdr _e9287992986_)))
                                        (let* ((_prelude92994_ _hd9288092989_)
                                               (_rest92996_ _tl9288192991_))
                                          (if '#t
                                              (_lp92867_
                                               _rest92996_
                                               _prelude92994_
                                               _ns92871_
                                               _pkg92872_)
                                              (_E9287592974_)))))
                                    (_E9287592974_))
                                (_E9287592974_))))
                        (_E9287592974_)))))
            (_E9287492998_)))))
    (define gx#core-read-module/lang
      (lambda (_path92692_)
        (letrec ((_default-read-module-body92694_
                  (lambda (_inp92857_)
                    (let _lp92859_ ((_body92861_ '()))
                      (let ((_next92863_ (read-syntax _inp92857_)))
                        (if (eof-object? _next92863_)
                            (reverse _body92861_)
                            (_lp92859_ (cons _next92863_ _body92861_)))))))
                 (_read-body92695_
                  (lambda (_inp92776_
                           _pre92777_
                           _ns92778_
                           _pkg92779_
                           _args92780_)
                    (let ((_g94200_
                           (if _pkg92779_
                               (values _pre92777_ _ns92778_ _pkg92779_)
                               (gx#core-read-module-package
                                _path92692_
                                _pre92777_
                                _ns92778_))))
                      (begin
                        (let ((_g94201_
                               (if (##values? _g94200_)
                                   (##vector-length _g94200_)
                                   1)))
                          (if (not (##fx= _g94201_ 3))
                              (error "Context expects 3 values" _g94201_)))
                        (let ((_pre92782_ (##vector-ref _g94200_ 0))
                              (_ns92783_ (##vector-ref _g94200_ 1))
                              (_pkg92784_ (##vector-ref _g94200_ 2)))
                          (let* ((_prelude92786_
                                  (gx#import-module__0 _pre92782_))
                                 (_read-module-body92840_
                                  (let ((_$e92832_
                                         (find (lambda (_e9278792789_)
                                                 (let* ((_g9279192801_
                                                         _e9278792789_)
                                                        (_else9279392809_
                                                         (lambda () '#f))
                                                        (_K9279592813_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9279192801_
                                                        'gx#module-export::t)
                                                       (let* ((_e9279692816_
                                                               (##unchecked-structure-ref
                                                                _g9279192801_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9279792819_
                                                               (##unchecked-structure-ref
                                                                _g9279192801_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9279892822_
                                                               (##unchecked-structure-ref
                                                                _g9279192801_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9279892822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9279992825_
                            (##unchecked-structure-ref
                             _g9279192801_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9282792829_)
                              (eq? _g9282792829_ 'read-module-body))
                            _e9279992825_)
                           (_K9279592813_)
                           (_else9279392809_)))
                     (_else9279392809_)))
               (_else9279392809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude92786_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e92832_
                                        ((lambda (_xport92835_)
                                           (let ((_proc92838_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport92835_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc92838_)
                                                 _proc92838_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path92692_
                                                  _pre92782_
                                                  _proc92838_))))
                                         _$e92832_)
                                        _default-read-module-body92694_)))
                                 (_path-id92842_
                                  (gx#core-module-path->namespace _path92692_))
                                 (_pkg-id92844_
                                  (if _pkg92784_
                                      (string-append
                                       _pkg92784_
                                       '"/"
                                       _path-id92842_)
                                      _path-id92842_))
                                 (_module-id92846_
                                  (string->symbol _pkg-id92844_))
                                 (_module-ns92851_
                                  (let ((_$e92848_ _ns92783_))
                                    (if _$e92848_ _$e92848_ _pkg-id92844_)))
                                 (_body92854_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body92840_ _inp92776_))
                                   gx#current-module-reader-path
                                   _path92692_
                                   gx#current-module-reader-args
                                   _args92780_)))
                            (values _prelude92786_
                                    _module-id92846_
                                    _module-ns92851_
                                    _body92854_)))))))
                 (_string-e92696_
                  (lambda (_obj92773_ _what92774_)
                    (if (string? _obj92773_)
                        _obj92773_
                        (if (symbol? _obj92773_)
                            (symbol->string _obj92773_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what92774_)
                             _path92692_
                             _obj92773_)))))
                 (_read-lang-args92697_
                  (lambda (_inp92728_ _args92729_)
                    (let* ((_args9273092738_ _args92729_)
                           (_else9273292746_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path92692_)))
                           (_K9273492761_
                            (lambda (_args92749_ _prelude92750_)
                              (let* ((_pkg92752_
                                      (pgetq__0 'package: _args92749_))
                                     (_pkg92754_
                                      (if _pkg92752_
                                          (_string-e92696_
                                           _pkg92752_
                                           '"package")
                                          '#f))
                                     (_ns92756_
                                      (pgetq__0 'namespace: _args92749_))
                                     (_ns92758_
                                      (if _ns92756_
                                          (_string-e92696_
                                           _ns92756_
                                           '"namespace")
                                          '#f)))
                                (_read-body92695_
                                 _inp92728_
                                 _prelude92750_
                                 _ns92758_
                                 _pkg92754_
                                 _args92749_)))))
                      (if (##pair? _args9273092738_)
                          (let ((_hd9273592764_ (##car _args9273092738_))
                                (_tl9273692766_ (##cdr _args9273092738_)))
                            (let* ((_prelude92769_ _hd9273592764_)
                                   (_args92771_ _tl9273692766_))
                              (_K9273492761_ _args92771_ _prelude92769_)))
                          (_else9273292746_)))))
                 (_read-lang92698_
                  (lambda (_inp92703_)
                    (let* ((_head92705_ (read-line _inp92703_))
                           (_$e92707_ (string-index__0 _head92705_ '#\space)))
                      (if _$e92707_
                          ((lambda (_ix92710_)
                             (let ((_lang92712_
                                    (substring _head92705_ '0 _ix92710_)))
                               (if (equal? _lang92712_ '"#lang")
                                   (let* ((_rest92714_
                                           (substring
                                            _head92705_
                                            (fx+ _ix92710_ '1)
                                            (string-length _head92705_)))
                                          (_args92725_
                                           (with-catch
                                            (lambda (_g9271592717_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path92692_
                                               _g9271592717_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest92714_
                                               (lambda (_g9272092722_)
                                                 (read-all
                                                  _g9272092722_
                                                  read)))))))
                                     (_read-lang-args92697_
                                      _inp92703_
                                      _args92725_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path92692_))))
                           _$e92707_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path92692_)))))
                 (_read-e92699_
                  (lambda (_inp92701_)
                    (if (eq? (peek-char _inp92701_) '#\#)
                        (_read-lang92698_ _inp92701_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path92692_)))))
          (gx#call-with-input-source-file _path92692_ _read-e92699_))))
    (define gx#core-read-module-package
      (lambda (_path92646_ _pre92647_ _ns92648_)
        (letrec ((_string-e92650_
                  (lambda (_e92690_)
                    (if (symbol? _e92690_)
                        (symbol->string _e92690_)
                        (if (string? _e92690_)
                            _e92690_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e92690_))))))
          (let _lp92652_ ((_dir92654_ (path-directory _path92646_))
                          (_pkg-path92655_ '()))
            (let ((_gerbil.pkg92657_ (path-expand '"gerbil.pkg" _dir92654_)))
              (if (file-exists? _gerbil.pkg92657_)
                  (let ((_plist92659_
                         (gx#core-library-package-plist__% _dir92654_ '#t)))
                    (if (null? _plist92659_)
                        (let ((_pkg92661_
                               (if (not (null? _pkg-path92655_))
                                   (string-join _pkg-path92655_ '"/")
                                   '#f)))
                          (values _pre92647_ _ns92648_ _pkg92661_))
                        (if (list? _plist92659_)
                            (let* ((_root92663_
                                    (pgetq__0 'package: _plist92659_))
                                   (_pkg92667_
                                    (let ((_pkg-path92665_
                                           (if _root92663_
                                               (cons (_string-e92650_
                                                      _root92663_)
                                                     _pkg-path92655_)
                                               _pkg-path92655_)))
                                      (if (not (null? _pkg-path92665_))
                                          (string-join _pkg-path92665_ '"/")
                                          '#f)))
                                   (_ns92674_
                                    (let ((_ns92672_
                                           (let ((_$e92669_ _ns92648_))
                                             (if _$e92669_
                                                 _$e92669_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist92659_)))))
                                      (if _ns92672_
                                          (_string-e92650_ _ns92672_)
                                          '#f)))
                                   (_pre92679_
                                    (let ((_$e92676_ _pre92647_))
                                      (if _$e92676_
                                          _$e92676_
                                          (pgetq__0 'prelude: _plist92659_)))))
                              (values _pre92679_ _ns92674_ _pkg92667_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist92659_))))
                  (let ((_dir*92682_
                         (path-strip-trailing-directory-separator _dir92654_)))
                    (if (or (string-empty? _dir*92682_)
                            (equal? _dir92654_ _dir*92682_))
                        (values _pre92647_ _ns92648_ '#f)
                        (let ((_xpath92687_ (path-strip-directory _dir*92682_))
                              (_xdir92688_ (path-directory _dir*92682_)))
                          (_lp92652_
                           _xdir92688_
                           (cons _xpath92687_ _pkg-path92655_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path92644_)
        (path-strip-extension (path-strip-directory _path92644_))))
    (define gx#core-module-path->id
      (lambda (_path92642_)
        (string->symbol (gx#core-module-path->namespace _path92642_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path92621_ _rel92622_)
        (let* ((_path92624_ (gx#stx-e _stx-path92621_))
               (_path92626_
                (if (string-empty? (path-extension _path92624_))
                    (string-append _path92624_ '".ss")
                    _path92624_)))
          (gx#core-resolve-path__%
           _path92626_
           (let ((_$e92629_ (gx#stx-source _stx-path92621_)))
             (if _$e92629_ _$e92629_ _rel92622_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path92635_)
        (let ((_rel92637_ '#f))
          (gx#core-resolve-module-path__% _stx-path92635_ _rel92637_))))
    (define gx#core-resolve-module-path
      (lambda _g94203_
        (let ((_g94202_ (##length _g94203_)))
          (cond ((##fx= _g94202_ 1)
                 (apply (lambda (_stx-path92635_)
                          (gx#core-resolve-module-path__0 _stx-path92635_))
                        _g94203_))
                ((##fx= _g94202_ 2)
                 (apply (lambda (_stx-path92639_ _rel92640_)
                          (gx#core-resolve-module-path__%
                           _stx-path92639_
                           _rel92640_))
                        _g94203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g94203_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath92507_)
        (let* ((_spath92509_ (symbol->string (gx#stx-e _libpath92507_)))
               (_spath92511_
                (substring _spath92509_ '1 (string-length _spath92509_)))
               (_ext92513_ (path-extension _spath92511_))
               (_ssi92515_
                (if (string-empty? _ext92513_)
                    (string-append _spath92511_ '".ssi")
                    (string-append
                     (path-strip-extension _spath92511_)
                     '".ssi")))
               (_srcs92519_
                (if (string-empty? _ext92513_)
                    (map (lambda (_ext92517_)
                           (string-append _spath92511_ _ext92517_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath92511_ '()))))
          (let _lp92522_ ((_rest92524_ (load-path)))
            (let* ((_rest9252592534_ _rest92524_)
                   (_E9252892538_
                    (lambda ()
                      (error '"No clause matching" _rest9252592534_))))
              (let ((_K9253092608_
                     (lambda (_rest92549_ _dir92550_)
                       (letrec ((_resolve92552_
                                 (lambda (_ssi92564_ _srcs92565_)
                                   (let ((_compiled-path92567_
                                          (path-expand _ssi92564_ _dir92550_)))
                                     (if (file-exists? _compiled-path92567_)
                                         (path-normalize _compiled-path92567_)
                                         (let _lpr92569_ ((_rest-src92571_
                                                           _srcs92565_))
                                           (let* ((_rest-src9257292580_
                                                   _rest-src92571_)
                                                  (_else9257492588_
                                                   (lambda ()
                                                     (_lp92522_ _rest92549_)))
                                                  (_K9257692596_
                                                   (lambda (_rest-src92591_
                                                            _src92592_)
                                                     (let ((_src-path92594_
                                                            (path-expand
                                                             _src92592_
                                                             _dir92550_)))
                                                       (if (file-exists?
                                                            _src-path92594_)
                                                           (path-normalize
                                                            _src-path92594_)
                                                           (_lpr92569_
                                                            _rest-src92591_))))))
                                             (if (##pair? _rest-src9257292580_)
                                                 (let ((_hd9257792599_
                                                        (##car _rest-src9257292580_))
                                                       (_tl9257892601_
                                                        (##cdr _rest-src9257292580_)))
                                                   (let* ((_src92604_
                                                           _hd9257792599_)
                                                          (_rest-src92606_
                                                           _tl9257892601_))
                                                     (_K9257692596_
                                                      _rest-src92606_
                                                      _src92604_)))
                                                 (_else9257492588_)))))))))
                         (let ((_$e92554_
                                (gx#core-library-package-path-prefix
                                 _dir92550_)))
                           (if _$e92554_
                               ((lambda (_prefix92557_)
                                  (if (string-prefix?
                                       _prefix92557_
                                       _spath92511_)
                                      (let ((_ssi92561_
                                             (substring
                                              _ssi92515_
                                              (string-length _prefix92557_)
                                              (string-length _ssi92515_)))
                                            (_srcs92562_
                                             (map (lambda (_src92559_)
                                                    (substring
                                                     _src92559_
                                                     (string-length
                                                      _prefix92557_)
                                                     (string-length
                                                      _src92559_)))
                                                  _srcs92519_)))
                                        (_resolve92552_
                                         _ssi92561_
                                         _srcs92562_))
                                      (_lp92522_ _rest92549_)))
                                _$e92554_)
                               (_resolve92552_ _ssi92515_ _srcs92519_))))))
                    (_K9252992543_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath92507_))))
                (let ((_try-match9252792546_
                       (lambda ()
                         (if (##null? _rest9252592534_)
                             (_K9252992543_)
                             (_E9252892538_)))))
                  (if (##pair? _rest9252592534_)
                      (let ((_tl9253292613_ (##cdr _rest9252592534_))
                            (_hd9253192611_ (##car _rest9252592534_)))
                        (let ((_dir92616_ _hd9253192611_)
                              (_rest92618_ _tl9253292613_))
                          (_K9253092608_ _rest92618_ _dir92616_)))
                      (_try-match9252792546_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath92480_)
        (letrec ((_resolve92482_
                  (lambda (_path92499_ _base92500_)
                    (let ((_$e92502_ (string-rindex__0 _base92500_ '#\/)))
                      (if _$e92502_
                          ((lambda (_idx92505_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base92500_ '0 _idx92505_)
                                '"/"
                                _path92499_))))
                           _$e92502_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path92499_))))))))
          (let ((_spath92484_ (symbol->string (gx#stx-e _modpath92480_)))
                (_mod92485_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod92485_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath92480_))
            (let ((_mpath92487_
                   (symbol->string
                    (##structure-ref
                     _mod92485_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp92489_ ((_spath92491_ _spath92484_)
                              (_mpath92492_ _mpath92487_))
                (if (string-prefix? '"../" _spath92491_)
                    (let ((_$e92494_ (string-rindex__0 _mpath92492_ '#\/)))
                      (if _$e92494_
                          ((lambda (_idx92497_)
                             (_lp92489_
                              (substring
                               _spath92491_
                               '3
                               (string-length _spath92491_))
                              (substring _mpath92492_ '0 _idx92497_)))
                           _$e92494_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath92480_)))
                    (if (string-prefix? '"./" _spath92491_)
                        (_lp92489_
                         (substring
                          _spath92491_
                          '2
                          (string-length _spath92491_))
                         _mpath92492_)
                        (_resolve92482_ _spath92491_ _mpath92492_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir92473_)
        (let ((_$e92475_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir92473_))))
          (if _$e92475_
              ((lambda (_pkg92478_)
                 (string-append (symbol->string _pkg92478_) '"/"))
               _$e92475_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir92447_ _exists?92448_)
        (let ((_$e92450_ (hash-get gx#__module-pkg-cache _dir92447_)))
          (if _$e92450_
              (values _$e92450_)
              (let* ((_gerbil.pkg92453_ (path-expand '"gerbil.pkg" _dir92447_))
                     (_plist92460_
                      (if (or _exists?92448_ (file-exists? _gerbil.pkg92453_))
                          (let ((_e92458_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg92453_
                                  read)))
                            (if (eof-object? _e92458_)
                                '()
                                (if (list? _e92458_)
                                    _e92458_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg92453_
                                     _e92458_))))
                          '())))
                (hash-put! gx#__module-pkg-cache _dir92447_ _plist92460_)
                _plist92460_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir92466_)
        (let ((_exists?92468_ '#f))
          (gx#core-library-package-plist__% _dir92466_ _exists?92468_))))
    (define gx#core-library-package-plist
      (lambda _g94205_
        (let ((_g94204_ (##length _g94205_)))
          (cond ((##fx= _g94204_ 1)
                 (apply (lambda (_dir92466_)
                          (gx#core-library-package-plist__0 _dir92466_))
                        _g94205_))
                ((##fx= _g94204_ 2)
                 (apply (lambda (_dir92470_ _exists?92471_)
                          (gx#core-library-package-plist__%
                           _dir92470_
                           _exists?92471_))
                        _g94205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g94205_))))))
    (define gx#core-library-module-path?
      (lambda (_stx92444_) (gx#core-special-module-path? _stx92444_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx92442_) (gx#core-special-module-path? _stx92442_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx92437_ _char92438_)
        (if (gx#identifier? _stx92437_)
            (if (interned-symbol? (gx#stx-e _stx92437_))
                (let ((_str92440_ (symbol->string (gx#stx-e _stx92437_))))
                  (if (fx> (string-length _str92440_) '1)
                      (eq? (string-ref _str92440_ '0) _char92438_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx92431_)
        (gx#core-bound-identifier?__%
         _stx92431_
         (lambda (_g9243292434_)
           (gx#expander-binding?__% _g9243292434_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx92425_)
        (gx#core-bound-identifier?__%
         _stx92425_
         (lambda (_g9242692428_)
           (gx#expander-binding?__% _g9242692428_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx92412_)
        (letrec ((_module-prelude?92414_
                  (lambda (_e92420_)
                    (let ((_$e92422_
                           (##structure-instance-of?
                            _e92420_
                            'gx#module-context::t)))
                      (if _$e92422_
                          _$e92422_
                          (##structure-instance-of?
                           _e92420_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx92412_
           (lambda (_g9241592417_)
             (gx#expander-binding?__%
              _g9241592417_
              _module-prelude?92414_))))))
    (define gx#core-bind-import!__%
      (lambda (_in92342_ _ctx92343_ _force-weak?92344_)
        (let* ((_in9234592354_ _in92342_)
               (_E9234792358_
                (lambda () (error '"No clause matching" _in9234592354_)))
               (_K9234892371_
                (lambda (_weak?92361_ _phi92362_ _key92363_ _source92364_)
                  (gx#core-bind!__%
                   _key92363_
                   (let ((_e92366_
                          (gx#core-resolve-module-export _source92364_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e92366_ '1 gx#binding::t '#f)
                      _key92363_
                      _phi92362_
                      _e92366_
                      (##unchecked-structure-ref
                       _source92364_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e92368_ _force-weak?92344_))
                        (if _$e92368_ _$e92368_ _weak?92361_))))
                   gx#core-context-rebind?
                   _phi92362_
                   _ctx92343_))))
          (if (##structure-direct-instance-of?
               _in9234592354_
               'gx#module-import::t)
              (let* ((_e9234992374_
                      (##unchecked-structure-ref
                       _in9234592354_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source92377_ _e9234992374_)
                     (_e9235092379_
                      (##unchecked-structure-ref
                       _in9234592354_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key92382_ _e9235092379_)
                     (_e9235192384_
                      (##unchecked-structure-ref
                       _in9234592354_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi92387_ _e9235192384_)
                     (_e9235292389_
                      (##unchecked-structure-ref
                       _in9234592354_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?92392_ _e9235292389_))
                (_K9234892371_
                 _weak?92392_
                 _phi92387_
                 _key92382_
                 _source92377_))
              (_E9234792358_)))))
    (define gx#core-bind-import!__0
      (lambda (_in92397_)
        (let* ((_ctx92399_ (gx#current-expander-context))
               (_force-weak?92401_ '#f))
          (gx#core-bind-import!__% _in92397_ _ctx92399_ _force-weak?92401_))))
    (define gx#core-bind-import!__1
      (lambda (_in92403_ _ctx92404_)
        (let ((_force-weak?92406_ '#f))
          (gx#core-bind-import!__% _in92403_ _ctx92404_ _force-weak?92406_))))
    (define gx#core-bind-import!
      (lambda _g94207_
        (let ((_g94206_ (##length _g94207_)))
          (cond ((##fx= _g94206_ 1)
                 (apply (lambda (_in92397_)
                          (gx#core-bind-import!__0 _in92397_))
                        _g94207_))
                ((##fx= _g94206_ 2)
                 (apply (lambda (_in92403_ _ctx92404_)
                          (gx#core-bind-import!__1 _in92403_ _ctx92404_))
                        _g94207_))
                ((##fx= _g94206_ 3)
                 (apply (lambda (_in92408_ _ctx92409_ _force-weak?92410_)
                          (gx#core-bind-import!__%
                           _in92408_
                           _ctx92409_
                           _force-weak?92410_))
                        _g94207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g94207_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in92328_ _ctx92329_)
        (gx#core-bind-import!__% _in92328_ _ctx92329_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in92334_)
        (let ((_ctx92336_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in92334_ _ctx92336_))))
    (define gx#core-bind-weak-import!
      (lambda _g94209_
        (let ((_g94208_ (##length _g94209_)))
          (cond ((##fx= _g94208_ 1)
                 (apply (lambda (_in92334_)
                          (gx#core-bind-weak-import!__0 _in92334_))
                        _g94209_))
                ((##fx= _g94208_ 2)
                 (apply (lambda (_in92338_ _ctx92339_)
                          (gx#core-bind-weak-import!__% _in92338_ _ctx92339_))
                        _g94209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g94209_))))))
    (define gx#core-resolve-module-export
      (lambda (_out92219_)
        (letrec ((_subst92221_
                  (lambda (_key92267_)
                    (let* ((_key9226892276_ _key92267_)
                           (_else9227092284_ (lambda () _key92267_))
                           (_K9227292315_
                            (lambda (_mark92287_ _id92288_)
                              (let* ((_mark9228992295_ _mark92287_)
                                     (_E9229192299_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9228992295_)))
                                     (_K9229292307_
                                      (lambda (_subst92302_)
                                        (let ((_$e92304_
                                               (if _subst92302_
                                                   (hash-get
                                                    _subst92302_
                                                    _id92288_)
                                                   '#f)))
                                          (if _$e92304_
                                              _$e92304_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key92267_))))))
                                (if (##structure-instance-of?
                                     _mark9228992295_
                                     'gx#expander-mark::t)
                                    (let* ((_e9229392310_
                                            (##unchecked-structure-ref
                                             _mark9228992295_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst92313_ _e9229392310_))
                                      (_K9229292307_ _subst92313_))
                                    (_E9229192299_))))))
                      (if (##pair? _key9226892276_)
                          (let ((_hd9227392318_ (##car _key9226892276_))
                                (_tl9227492320_ (##cdr _key9226892276_)))
                            (let* ((_id92323_ _hd9227392318_)
                                   (_mark92325_ _tl9227492320_))
                              (_K9227292315_ _mark92325_ _id92323_)))
                          (_else9227092284_))))))
          (let* ((_out9222292232_ _out92219_)
                 (_E9222492236_
                  (lambda () (error '"No clause matching" _out9222292232_)))
                 (_K9222592243_
                  (lambda (_phi92239_ _key92240_ _ctx92241_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx92241_ _phi92239_)
                     (_subst92221_ _key92240_)))))
            (if (##structure-direct-instance-of?
                 _out9222292232_
                 'gx#module-export::t)
                (let* ((_e9222692246_
                        (##unchecked-structure-ref
                         _out9222292232_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx92249_ _e9222692246_)
                       (_e9222792251_
                        (##unchecked-structure-ref
                         _out9222292232_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key92254_ _e9222792251_)
                       (_e9222892256_
                        (##unchecked-structure-ref
                         _out9222292232_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi92259_ _e9222892256_)
                       (_e9222992261_
                        (##unchecked-structure-ref
                         _out9222292232_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9223092264_
                        (##unchecked-structure-ref
                         _out9222292232_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9222592243_ _phi92259_ _key92254_ _ctx92249_))
                (_E9222492236_))))))
    (define gx#core-module-export->import__%
      (lambda (_out92144_ _rename92145_ _dphi92146_)
        (let* ((_out9214792157_ _out92144_)
               (_E9214992161_
                (lambda () (error '"No clause matching" _out9214792157_)))
               (_K9215092173_
                (lambda (_weak?92164_
                         _name92165_
                         _phi92166_
                         _key92167_
                         _ctx92168_)
                  (##structure
                   gx#module-import::t
                   _out92144_
                   (let ((_$e92170_ _rename92145_))
                     (if _$e92170_ _$e92170_ _name92165_))
                   (fx+ _phi92166_ _dphi92146_)
                   _weak?92164_))))
          (if (##structure-direct-instance-of?
               _out9214792157_
               'gx#module-export::t)
              (let* ((_e9215192176_
                      (##unchecked-structure-ref
                       _out9214792157_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx92179_ _e9215192176_)
                     (_e9215292181_
                      (##unchecked-structure-ref
                       _out9214792157_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key92184_ _e9215292181_)
                     (_e9215392186_
                      (##unchecked-structure-ref
                       _out9214792157_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi92189_ _e9215392186_)
                     (_e9215492191_
                      (##unchecked-structure-ref
                       _out9214792157_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name92194_ _e9215492191_)
                     (_e9215592196_
                      (##unchecked-structure-ref
                       _out9214792157_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?92199_ _e9215592196_))
                (_K9215092173_
                 _weak?92199_
                 _name92194_
                 _phi92189_
                 _key92184_
                 _ctx92179_))
              (_E9214992161_)))))
    (define gx#core-module-export->import__0
      (lambda (_out92204_)
        (let* ((_rename92206_ '#f) (_dphi92208_ '0))
          (gx#core-module-export->import__%
           _out92204_
           _rename92206_
           _dphi92208_))))
    (define gx#core-module-export->import__1
      (lambda (_out92210_ _rename92211_)
        (let ((_dphi92213_ '0))
          (gx#core-module-export->import__%
           _out92210_
           _rename92211_
           _dphi92213_))))
    (define gx#core-module-export->import
      (lambda _g94211_
        (let ((_g94210_ (##length _g94211_)))
          (cond ((##fx= _g94210_ 1)
                 (apply (lambda (_out92204_)
                          (gx#core-module-export->import__0 _out92204_))
                        _g94211_))
                ((##fx= _g94210_ 2)
                 (apply (lambda (_out92210_ _rename92211_)
                          (gx#core-module-export->import__1
                           _out92210_
                           _rename92211_))
                        _g94211_))
                ((##fx= _g94210_ 3)
                 (apply (lambda (_out92215_ _rename92216_ _dphi92217_)
                          (gx#core-module-export->import__%
                           _out92215_
                           _rename92216_
                           _dphi92217_))
                        _g94211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g94211_))))))
    (define gx#core-expand-module%
      (lambda (_stx92046_)
        (letrec ((_make-context92048_
                  (lambda (_id92125_)
                    (let* ((_super92127_ (gx#current-expander-context))
                           (_bind-id92129_ (gx#stx-e _id92125_))
                           (_mod-id92131_
                            (if (##structure-instance-of?
                                 _super92127_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super92127_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"~"
                                 _bind-id92129_)
                                _bind-id92129_))
                           (_ns92133_ (symbol->string _mod-id92131_))
                           (_path92140_
                            (if (##structure-instance-of?
                                 _super92127_
                                 'gx#module-context::t)
                                (let ((_path92135_
                                       (##unchecked-structure-ref
                                        _super92127_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path92135_)
                                          (null? _path92135_))
                                      (cons _bind-id92129_ _path92135_)
                                      (if (not _path92135_)
                                          _bind-id92129_
                                          (cons _bind-id92129_
                                                (cons _path92135_ '())))))
                                _bind-id92129_)))
                      (let ((__obj94187
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
                         __obj94187
                         _mod-id92131_
                         _super92127_
                         _ns92133_
                         _path92140_)
                        __obj94187))))
                 (_valid-module-id?92049_
                  (lambda (_id92100_)
                    (let* ((_str92102_ (symbol->string _id92100_))
                           (_len92104_ (string-length _str92102_)))
                      (if (fx>= _len92104_ '1)
                          (let _loop92107_ ((_index92109_
                                             (fx- (string-length _str92102_)
                                                  '1)))
                            (if (fx>= _index92109_ '0)
                                (let ((_c92111_
                                       (string-ref _str92102_ _index92109_)))
                                  (if (or (and (char>=? _c92111_ '#\a)
                                               (char<=? _c92111_ '#\z))
                                          (and (char>=? _c92111_ '#\A)
                                               (char<=? _c92111_ '#\Z))
                                          (and (char>=? _c92111_ '#\0)
                                               (char<=? _c92111_ '#\9))
                                          (char=? _c92111_ '#\_)
                                          (char=? _c92111_ '#\-))
                                      (_loop92107_ (fx- _index92109_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_e9205092060_ _stx92046_)
                 (_E9205292064_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9205092060_)))
                 (_E9205192096_
                  (lambda ()
                    (if (gx#stx-pair? _e9205092060_)
                        (let ((_e9205392068_ (gx#syntax-e _e9205092060_)))
                          (let ((_hd9205492071_ (##car _e9205392068_))
                                (_tl9205592073_ (##cdr _e9205392068_)))
                            (if (gx#stx-pair? _tl9205592073_)
                                (let ((_e9205692076_
                                       (gx#syntax-e _tl9205592073_)))
                                  (let ((_hd9205792079_ (##car _e9205692076_))
                                        (_tl9205892081_ (##cdr _e9205692076_)))
                                    (let* ((_id92084_ _hd9205792079_)
                                           (_body92086_ _tl9205892081_))
                                      (if (and (gx#identifier? _id92084_)
                                               (gx#stx-list? _body92086_))
                                          (if (_valid-module-id?92049_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_ctx92088_
                                                      (_make-context92048_
                                                       _id92084_))
                                                     (_body92090_
                                                      (gx#core-expand-module-begin
                                                       _body92086_
                                                       _ctx92088_))
                                                     (_body92092_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _body92090_)
                                                       (gx#stx-source
                                                        _stx92046_))))
                                                (##unchecked-structure-set!
                                                 _ctx92088_
                                                 (make-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _body92092_)))
                                                 '10
                                                 gx#module-context::t
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _ctx92088_
                                                 _body92092_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _id92084_
                                                 _ctx92088_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _id92084_)
                                                  _body92092_)
                                                 (gx#stx-source _stx92046_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _stx92046_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_E9205292064_)))))
                                (_E9205292064_))))
                        (_E9205292064_)))))
            (_E9205192096_)))))
    (define gx#core-expand-module-begin
      (lambda (_body92012_ _ctx92013_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx92016_
                   (gx#core-expand-head (cons '%%begin-module _body92012_)))
                  (_e9201792024_ _stx92016_)
                  (_E9201992028_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx92016_)))
                  (_E9201892042_
                   (lambda ()
                     (if (gx#stx-pair? _e9201792024_)
                         (let ((_e9202092032_ (gx#syntax-e _e9201792024_)))
                           (let ((_hd9202192035_ (##car _e9202092032_))
                                 (_tl9202292037_ (##cdr _e9202092032_)))
                             (if (and (gx#identifier? _hd9202192035_)
                                      (gx#core-identifier=?
                                       _hd9202192035_
                                       '%#begin-module))
                                 (let ((_body92040_ _tl9202292037_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx92016_)
                                           _body92040_
                                           (gx#core-expand-module-body
                                            _body92040_))
                                       (_E9201992028_)))
                                 (_E9201992028_))))
                         (_E9201992028_)))))
             (_E9201892042_)))
         gx#current-expander-context
         _ctx92013_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body91808_)
        (letrec ((_expand-special91810_
                  (lambda (_hd91939_ _K91940_ _rest91941_ _r91942_)
                    (let* ((_e9194391960_ _hd91939_)
                           (_E9195591964_
                            (lambda ()
                              (_K91940_
                               _rest91941_
                               (cons (gx#core-expand-top _hd91939_)
                                     _r91942_))))
                           (_E9194591976_
                            (lambda ()
                              (if (gx#stx-pair? _e9194391960_)
                                  (let ((_e9195691968_
                                         (gx#syntax-e _e9194391960_)))
                                    (let ((_hd9195791971_
                                           (##car _e9195691968_))
                                          (_tl9195891973_
                                           (##cdr _e9195691968_)))
                                      (if (and (gx#identifier? _hd9195791971_)
                                               (gx#core-identifier=?
                                                _hd9195791971_
                                                '%#export))
                                          (if '#t
                                              (_K91940_
                                               _rest91941_
                                               (cons _hd91939_ _r91942_))
                                              (_E9195591964_))
                                          (_E9195591964_))))
                                  (_E9195591964_))))
                           (_E9194492008_
                            (lambda ()
                              (if (gx#stx-pair? _e9194391960_)
                                  (let ((_e9194691980_
                                         (gx#syntax-e _e9194391960_)))
                                    (let ((_hd9194791983_
                                           (##car _e9194691980_))
                                          (_tl9194891985_
                                           (##cdr _e9194691980_)))
                                      (if (and (gx#identifier? _hd9194791983_)
                                               (gx#core-identifier=?
                                                _hd9194791983_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9194891985_)
                                              (let ((_e9194991988_
                                                     (gx#syntax-e
                                                      _tl9194891985_)))
                                                (let ((_hd9195091991_
                                                       (##car _e9194991988_))
                                                      (_tl9195191993_
                                                       (##cdr _e9194991988_)))
                                                  (let ((_hd-bind91996_
                                                         _hd9195091991_))
                                                    (if (gx#stx-pair?
                                                         _tl9195191993_)
                                                        (let ((_e9195291998_
                                                               (gx#syntax-e
                                                                _tl9195191993_)))
                                                          (let ((_hd9195392001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9195291998_))
                        (_tl9195492003_ (##cdr _e9195291998_)))
                    (let ((_expr92006_ _hd9195392001_))
                      (if (gx#stx-null? _tl9195492003_)
                          (if (gx#core-bind-values? _hd-bind91996_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind91996_)
                                (_K91940_
                                 _rest91941_
                                 (cons _hd91939_ _r91942_)))
                              (_E9194591976_))
                          (_E9194591976_)))))
                (_E9194591976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9194591976_))
                                          (_E9194591976_))))
                                  (_E9194591976_)))))
                      (_E9194492008_))))
                 (_expand-body91811_
                  (lambda (_rbody91813_)
                    (let _lp91815_ ((_rest91817_ _rbody91813_)
                                    (_body91818_ '()))
                      (let* ((_rest9181991827_ _rest91817_)
                             (_else9182191835_ (lambda () _body91818_))
                             (_K9182391927_
                              (lambda (_rest91838_ _hd91839_)
                                (let* ((_e9184091861_ _hd91839_)
                                       (_E9185691865_
                                        (lambda ()
                                          (_lp91815_
                                           _rest91838_
                                           (cons (gx#core-expand-expression
                                                  _hd91839_)
                                                 _body91818_))))
                                       (_E9185291879_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9184091861_)
                                              (let ((_e9185791869_
                                                     (gx#syntax-e
                                                      _e9184091861_)))
                                                (let ((_hd9185891872_
                                                       (##car _e9185791869_))
                                                      (_tl9185991874_
                                                       (##cdr _e9185791869_)))
                                                  (let ((_form91877_
                                                         _hd9185891872_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form91877_
                                                         gx#special-form-binding?)
                                                        (_lp91815_
                                                         _rest91838_
                                                         (cons _hd91839_
                                                               _body91818_))
                                                        (_E9185691865_)))))
                                              (_E9185691865_))))
                                       (_E9184291891_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9184091861_)
                                              (let ((_e9185391883_
                                                     (gx#syntax-e
                                                      _e9184091861_)))
                                                (let ((_hd9185491886_
                                                       (##car _e9185391883_))
                                                      (_tl9185591888_
                                                       (##cdr _e9185391883_)))
                                                  (if (and (gx#identifier?
                                                            _hd9185491886_)
                                                           (gx#core-identifier=?
                                                            _hd9185491886_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp91815_
                                                           _rest91838_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd91839_)
                         _body91818_))
                  (_E9185291879_))
              (_E9185291879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9185291879_))))
                                       (_E9184191923_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9184091861_)
                                              (let ((_e9184391895_
                                                     (gx#syntax-e
                                                      _e9184091861_)))
                                                (let ((_hd9184491898_
                                                       (##car _e9184391895_))
                                                      (_tl9184591900_
                                                       (##cdr _e9184391895_)))
                                                  (if (and (gx#identifier?
                                                            _hd9184491898_)
                                                           (gx#core-identifier=?
                                                            _hd9184491898_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9184591900_)
                                                          (let ((_e9184691903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9184591900_)))
                    (let ((_hd9184791906_ (##car _e9184691903_))
                          (_tl9184891908_ (##cdr _e9184691903_)))
                      (let ((_hd-bind91911_ _hd9184791906_))
                        (if (gx#stx-pair? _tl9184891908_)
                            (let ((_e9184991913_ (gx#syntax-e _tl9184891908_)))
                              (let ((_hd9185091916_ (##car _e9184991913_))
                                    (_tl9185191918_ (##cdr _e9184991913_)))
                                (let ((_expr91921_ _hd9185091916_))
                                  (if (gx#stx-null? _tl9185191918_)
                                      (if '#t
                                          (_lp91815_
                                           _rest91838_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind91911_)
                                                   (gx#core-expand-expression
                                                    _expr91921_))
                                                  (gx#stx-source _hd91839_))
                                                 _body91818_))
                                          (_E9184291891_))
                                      (_E9184291891_)))))
                            (_E9184291891_)))))
                  (_E9184291891_))
              (_E9184291891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9184291891_)))))
                                  (_E9184191923_)))))
                        (if (##pair? _rest9181991827_)
                            (let ((_hd9182491930_ (##car _rest9181991827_))
                                  (_tl9182591932_ (##cdr _rest9181991827_)))
                              (let* ((_hd91935_ _hd9182491930_)
                                     (_rest91937_ _tl9182591932_))
                                (_K9182391927_ _rest91937_ _hd91935_)))
                            (_else9182191835_)))))))
          (_expand-body91811_
           (gx#core-expand-block__%
            (cons '%#begin-module _body91808_)
            _expand-special91810_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx91651_
               _expanded?91652_
               _method91653_
               _current-phi91654_
               _expand191655_)
        (letrec ((_K91657_
                  (lambda (_rest91775_ _r91776_)
                    (let* ((_e9177791784_ _rest91775_)
                           (_E9177991788_ (lambda () _r91776_))
                           (_E9177891804_
                            (lambda ()
                              (if (gx#stx-pair? _e9177791784_)
                                  (let ((_e9178091792_
                                         (gx#syntax-e _e9177791784_)))
                                    (let ((_hd9178191795_
                                           (##car _e9178091792_))
                                          (_tl9178291797_
                                           (##cdr _e9178091792_)))
                                      (let* ((_hd91800_ _hd9178191795_)
                                             (_rest91802_ _tl9178291797_))
                                        (if '#t
                                            (_step91658_
                                             _hd91800_
                                             _rest91802_
                                             _r91776_)
                                            (_E9177991788_)))))
                                  (_E9177991788_)))))
                      (_E9177891804_))))
                 (_step91658_
                  (lambda (_hd91689_ _rest91690_ _r91691_)
                    (let* ((_e9169291710_ _hd91689_)
                           (_E9170591714_
                            (lambda ()
                              (if (_expanded?91652_ (gx#stx-e _hd91689_))
                                  (_K91657_
                                   _rest91690_
                                   (cons (gx#stx-e _hd91689_) _r91691_))
                                  (_expand191655_
                                   _hd91689_
                                   _K91657_
                                   _rest91690_
                                   _r91691_))))
                           (_E9170191730_
                            (lambda ()
                              (if (gx#stx-pair? _e9169291710_)
                                  (let ((_e9170691718_
                                         (gx#syntax-e _e9169291710_)))
                                    (let ((_hd9170791721_
                                           (##car _e9170691718_))
                                          (_tl9170891723_
                                           (##cdr _e9170691718_)))
                                      (let* ((_macro91726_ _hd9170791721_)
                                             (_body91728_ _tl9170891723_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro91726_
                                             gx#syntax-binding?)
                                            (_K91657_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro91726_)
                                                    _hd91689_
                                                    _method91653_)
                                                   _rest91690_)
                                             _r91691_)
                                            (_E9170591714_)))))
                                  (_E9170591714_))))
                           (_E9169491744_
                            (lambda ()
                              (if (gx#stx-pair? _e9169291710_)
                                  (let ((_e9170291734_
                                         (gx#syntax-e _e9169291710_)))
                                    (let ((_hd9170391737_
                                           (##car _e9170291734_))
                                          (_tl9170491739_
                                           (##cdr _e9170291734_)))
                                      (if (eq? (gx#stx-e _hd9170391737_)
                                               'begin:)
                                          (let ((_body91742_ _tl9170491739_))
                                            (if '#t
                                                (_K91657_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest91690_
                                                  _body91742_)
                                                 _r91691_)
                                                (_E9170191730_)))
                                          (_E9170191730_))))
                                  (_E9170191730_))))
                           (_E9169391771_
                            (lambda ()
                              (if (gx#stx-pair? _e9169291710_)
                                  (let ((_e9169591748_
                                         (gx#syntax-e _e9169291710_)))
                                    (let ((_hd9169691751_
                                           (##car _e9169591748_))
                                          (_tl9169791753_
                                           (##cdr _e9169591748_)))
                                      (if (eq? (gx#stx-e _hd9169691751_) 'phi:)
                                          (if (gx#stx-pair? _tl9169791753_)
                                              (let ((_e9169891756_
                                                     (gx#syntax-e
                                                      _tl9169791753_)))
                                                (let ((_hd9169991759_
                                                       (##car _e9169891756_))
                                                      (_tl9170091761_
                                                       (##cdr _e9169891756_)))
                                                  (let* ((_dphi91764_
                                                          _hd9169991759_)
                                                         (_body91766_
                                                          _tl9170091761_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi91764_)
                                                        (let ((_rbody91769_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K91657_ _body91766_ '()))
                        _current-phi91654_
                        (fx+ (gx#stx-e _dphi91764_) (_current-phi91654_)))))
                  (_K91657_ _rest91690_ (foldr1 cons _r91691_ _rbody91769_)))
                (_E9169491744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9169491744_))
                                          (_E9169491744_))))
                                  (_E9169491744_)))))
                      (_E9169391771_)))))
          (let* ((_e9165991666_ _stx91651_)
                 (_E9166191670_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9165991666_)))
                 (_E9166091685_
                  (lambda ()
                    (if (gx#stx-pair? _e9165991666_)
                        (let ((_e9166291674_ (gx#syntax-e _e9165991666_)))
                          (let ((_hd9166391677_ (##car _e9166291674_))
                                (_tl9166491679_ (##cdr _e9166291674_)))
                            (let ((_body91682_ _tl9166491679_))
                              (if '#t
                                  (if (_current-phi91654_)
                                      (_K91657_ _body91682_ '())
                                      (call-with-parameters
                                       (lambda () (_K91657_ _body91682_ '()))
                                       _current-phi91654_
                                       (gx#current-expander-phi)))
                                  (_E9166191670_)))))
                        (_E9166191670_)))))
            (_E9166091685_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx91318_ _internal-expand?91319_)
        (letrec ((_expand191321_
                  (lambda (_hd91631_ _K91632_ _rest91633_ _r91634_)
                    (if (gx#core-bound-module? _hd91631_)
                        (_import191322_
                         (gx#syntax-local-e__0 _hd91631_)
                         _K91632_
                         _rest91633_
                         _r91634_)
                        (if (gx#core-library-module-path? _hd91631_)
                            (_import191322_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd91631_))
                             _K91632_
                             _rest91633_
                             _r91634_)
                            (if (gx#core-library-relative-module-path?
                                 _hd91631_)
                                (_import191322_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd91631_))
                                 _K91632_
                                 _rest91633_
                                 _r91634_)
                                (let ((_e91636_ (gx#stx-e _hd91631_)))
                                  (if (pair? _e91636_)
                                      (let ((_$e91638_
                                             (gx#stx-e (car _e91636_))))
                                        (if (eq? 'spec: _$e91638_)
                                            (_import-spec91325_
                                             _hd91631_
                                             _K91632_
                                             _rest91633_
                                             _r91634_)
                                            (if (eq? 'in: _$e91638_)
                                                (_import-submodule91323_
                                                 _hd91631_
                                                 _K91632_
                                                 _rest91633_
                                                 _r91634_)
                                                (if (eq? 'runtime: _$e91638_)
                                                    (_import-runtime91324_
                                                     _hd91631_
                                                     _K91632_
                                                     _rest91633_
                                                     _r91634_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx91318_
                                                     _hd91631_)))))
                                      (if (string? _e91636_)
                                          (_import191322_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd91631_
                                             (gx#stx-source _stx91318_)))
                                           _K91632_
                                           _rest91633_
                                           _r91634_)
                                          (if (##structure-instance-of?
                                               _e91636_
                                               'gx#module-context::t)
                                              (_K91632_
                                               _rest91633_
                                               (cons _e91636_ _r91634_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx91318_
                                               _hd91631_))))))))))
                 (_import191322_
                  (lambda (_ctx91620_ _K91621_ _rest91622_ _r91623_)
                    (let ((_dphi91625_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K91621_
                       _rest91622_
                       (cons (##structure
                              gx#import-set::t
                              _ctx91620_
                              _dphi91625_
                              (map (lambda (_g9162691628_)
                                     (gx#core-module-export->import__%
                                      _g9162691628_
                                      '#f
                                      _dphi91625_))
                                   (##unchecked-structure-ref
                                    _ctx91620_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r91623_)))))
                 (_import-submodule91323_
                  (lambda (_hd91587_ _K91588_ _rest91589_ _r91590_)
                    (let* ((_e9159191598_ _hd91587_)
                           (_E9159391602_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9159191598_)))
                           (_E9159291616_
                            (lambda ()
                              (if (gx#stx-pair? _e9159191598_)
                                  (let ((_e9159491606_
                                         (gx#syntax-e _e9159191598_)))
                                    (let ((_hd9159591609_
                                           (##car _e9159491606_))
                                          (_tl9159691611_
                                           (##cdr _e9159491606_)))
                                      (let ((_spath91614_ _tl9159691611_))
                                        (if '#t
                                            (_import191322_
                                             (_import-spec-source91326_
                                              _spath91614_)
                                             _K91588_
                                             _rest91589_
                                             _r91590_)
                                            (_E9159391602_)))))
                                  (_E9159391602_)))))
                      (_E9159291616_))))
                 (_import-runtime91324_
                  (lambda (_hd91554_ _K91555_ _rest91556_ _r91557_)
                    (let* ((_e9155891565_ _hd91554_)
                           (_E9156091569_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9155891565_)))
                           (_E9155991583_
                            (lambda ()
                              (if (gx#stx-pair? _e9155891565_)
                                  (let ((_e9156191573_
                                         (gx#syntax-e _e9155891565_)))
                                    (let ((_hd9156291576_
                                           (##car _e9156191573_))
                                          (_tl9156391578_
                                           (##cdr _e9156191573_)))
                                      (let ((_spath91581_ _tl9156391578_))
                                        (if '#t
                                            (_K91555_
                                             _rest91556_
                                             (cons (_import-spec-source91326_
                                                    _spath91581_)
                                                   _r91557_))
                                            (_E9156091569_)))))
                                  (_E9156091569_)))))
                      (_E9155991583_))))
                 (_import-spec91325_
                  (lambda (_hd91393_ _K91394_ _rest91395_ _r91396_)
                    (let* ((_e9139791414_ _hd91393_)
                           (_E9140691418_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9139791414_)))
                           (_E9139991528_
                            (lambda ()
                              (if (gx#stx-pair? _e9139791414_)
                                  (let ((_e9140791422_
                                         (gx#syntax-e _e9139791414_)))
                                    (let ((_hd9140891425_
                                           (##car _e9140791422_))
                                          (_tl9140991427_
                                           (##cdr _e9140791422_)))
                                      (if (gx#stx-pair? _tl9140991427_)
                                          (let ((_e9141091430_
                                                 (gx#syntax-e _tl9140991427_)))
                                            (let ((_hd9141191433_
                                                   (##car _e9141091430_))
                                                  (_tl9141291435_
                                                   (##cdr _e9141091430_)))
                                              (let* ((_path91438_
                                                      _hd9141191433_)
                                                     (_specs91440_
                                                      _tl9141291435_))
                                                (if '#t
                                                    (let ((_src-ctx91442_
                                                           (_import-spec-source91326_
                                                            _path91438_))
                                                          (_exports91443_
                                                           (make-hash-table))
                                                          (_specs91444_
                                                           (gx#syntax->list
                                                            _specs91440_)))
                                                      (for-each
                                                       (lambda (_out91446_)
                                                         (hash-put!
                                                          _exports91443_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out91446_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out91446_
                         '4
                         gx#module-export::t
                         '#f))
                  _out91446_))
               (##unchecked-structure-ref
                _src-ctx91442_
                '9
                gx#module-context::t
                '#f))
              (_K91394_
               _rest91395_
               (foldl1 (lambda (_spec91448_ _r91449_)
                         (let* ((_e9145091466_ _spec91448_)
                                (_E9145291470_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9145091466_)))
                                (_E9145191524_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9145091466_)
                                       (let ((_e9145391474_
                                              (gx#syntax-e _e9145091466_)))
                                         (let ((_hd9145491477_
                                                (##car _e9145391474_))
                                               (_tl9145591479_
                                                (##cdr _e9145391474_)))
                                           (let ((_phi91482_ _hd9145491477_))
                                             (if (gx#stx-pair? _tl9145591479_)
                                                 (let ((_e9145691484_
                                                        (gx#syntax-e
                                                         _tl9145591479_)))
                                                   (let ((_hd9145791487_
                                                          (##car _e9145691484_))
                                                         (_tl9145891489_
                                                          (##cdr _e9145691484_)))
                                                     (let ((_name91492_
                                                            _hd9145791487_))
                                                       (if (gx#stx-pair?
                                                            _tl9145891489_)
                                                           (let ((_e9145991494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9145891489_)))
                     (let ((_hd9146091497_ (##car _e9145991494_))
                           (_tl9146191499_ (##cdr _e9145991494_)))
                       (let ((_src-phi91502_ _hd9146091497_))
                         (if (gx#stx-pair? _tl9146191499_)
                             (let ((_e9146291504_
                                    (gx#syntax-e _tl9146191499_)))
                               (let ((_hd9146391507_ (##car _e9146291504_))
                                     (_tl9146491509_ (##cdr _e9146291504_)))
                                 (let ((_src-name91512_ _hd9146391507_))
                                   (if (gx#stx-null? _tl9146491509_)
                                       (if (and (gx#stx-fixnum? _src-phi91502_)
                                                (gx#identifier?
                                                 _src-name91512_)
                                                (gx#stx-fixnum? _phi91482_)
                                                (gx#identifier? _name91492_))
                                           (let ((_src-phi91514_
                                                  (gx#stx-e _src-phi91502_))
                                                 (_src-name91515_
                                                  (gx#core-identifier-key
                                                   _src-name91512_))
                                                 (_phi91516_
                                                  (gx#stx-e _phi91482_))
                                                 (_name91517_
                                                  (gx#core-identifier-key
                                                   _name91492_)))
                                             (let ((_$e91519_
                                                    (hash-get
                                                     _exports91443_
                                                     (cons _src-phi91514_
                                                           _src-name91515_))))
                                               (if _$e91519_
                                                   ((lambda (_out91522_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out91522_
                                                             _name91517_
                                                             (fx- _phi91516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi91514_))
                    _r91449_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e91519_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx91318_
                                                    _hd91393_))))
                                           (_E9145291470_))
                                       (_E9145291470_)))))
                             (_E9145291470_)))))
                   (_E9145291470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9145291470_)))))
                                       (_E9145291470_)))))
                           (_E9145191524_)))
                       _r91396_
                       _specs91444_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9140691418_)))))
                                          (_E9140691418_))))
                                  (_E9140691418_))))
                           (_E9139891550_
                            (lambda ()
                              (if (gx#stx-pair? _e9139791414_)
                                  (let ((_e9140091532_
                                         (gx#syntax-e _e9139791414_)))
                                    (let ((_hd9140191535_
                                           (##car _e9140091532_))
                                          (_tl9140291537_
                                           (##cdr _e9140091532_)))
                                      (if (gx#stx-pair? _tl9140291537_)
                                          (let ((_e9140391540_
                                                 (gx#syntax-e _tl9140291537_)))
                                            (let ((_hd9140491543_
                                                   (##car _e9140391540_))
                                                  (_tl9140591545_
                                                   (##cdr _e9140391540_)))
                                              (let ((_path91548_
                                                     _hd9140491543_))
                                                (if (gx#stx-null?
                                                     _tl9140591545_)
                                                    (if '#t
                                                        (_K91394_
                                                         _rest91395_
                                                         (cons (_import-spec-source91326_
                                                                _path91548_)
                                                               _r91396_))
                                                        (_E9139991528_))
                                                    (_E9139991528_)))))
                                          (_E9139991528_))))
                                  (_E9139991528_)))))
                      (_E9139891550_))))
                 (_import-spec-source91326_
                  (lambda (_spath91391_)
                    (gx#core-import-nested-module _spath91391_ _stx91318_)))
                 (_import!91327_
                  (lambda (_rbody91340_)
                    (letrec* ((_current-ctx91342_
                               (gx#current-expander-context))
                              (_deps91343_ (make-hash-table-eq))
                              (_bind!91344_
                               (lambda (_hd91389_)
                                 (gx#core-bind-import!__1
                                  _hd91389_
                                  _current-ctx91342_))))
                      (let _lp91346_ ((_rest91348_ _rbody91340_)
                                      (_body91349_ '()))
                        (let* ((_rest9135091358_ _rest91348_)
                               (_else9135291368_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx91342_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx91342_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx91342_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body91349_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx91366_ _g94212_)
                                     (gx#eval-module _ctx91366_))
                                   _deps91343_)
                                  _body91349_))
                               (_K9135491377_
                                (lambda (_rest91371_ _hd91372_)
                                  (if (##structure-direct-instance-of?
                                       _hd91372_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!91344_ _hd91372_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd91372_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd91372_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps91343_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd91372_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd91372_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!91344_
                                             (##unchecked-structure-ref
                                              _hd91372_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd91372_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps91343_
                                                 (##unchecked-structure-ref
                                                  _hd91372_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e91374_
                                                 (##structure-instance-of?
                                                  _hd91372_
                                                  'gx#module-context::t)))
                                            (if _$e91374_
                                                _$e91374_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx91318_
                                                 _hd91372_)))))
                                  (_lp91346_
                                   _rest91371_
                                   (cons _hd91372_ _body91349_)))))
                          (if (##pair? _rest9135091358_)
                              (let ((_hd9135591380_ (##car _rest9135091358_))
                                    (_tl9135691382_ (##cdr _rest9135091358_)))
                                (let* ((_hd91385_ _hd9135591380_)
                                       (_rest91387_ _tl9135691382_))
                                  (_K9135491377_ _rest91387_ _hd91385_)))
                              (_else9135291368_)))))))
                 (_expanded-import?91328_
                  (lambda (_e91332_)
                    (let ((_$e91334_
                           (##structure-direct-instance-of?
                            _e91332_
                            'gx#import-set::t)))
                      (if _$e91334_
                          _$e91334_
                          (let ((_$e91337_
                                 (##structure-direct-instance-of?
                                  _e91332_
                                  'gx#module-import::t)))
                            (if _$e91337_
                                _$e91337_
                                (##structure-instance-of?
                                 _e91332_
                                 'gx#module-context::t))))))))
          (let ((_rbody91330_
                 (gx#core-expand-import/export
                  _stx91318_
                  _expanded-import?91328_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand191321_)))
            (if _internal-expand?91319_
                (reverse _rbody91330_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!91327_ _rbody91330_))
                 (gx#stx-source _stx91318_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx91644_)
        (let ((_internal-expand?91646_ '#f))
          (gx#core-expand-import%__% _stx91644_ _internal-expand?91646_))))
    (define gx#core-expand-import%
      (lambda _g94214_
        (let ((_g94213_ (##length _g94214_)))
          (cond ((##fx= _g94213_ 1)
                 (apply (lambda (_stx91644_)
                          (gx#core-expand-import%__0 _stx91644_))
                        _g94214_))
                ((##fx= _g94213_ 2)
                 (apply (lambda (_stx91648_ _internal-expand?91649_)
                          (gx#core-expand-import%__%
                           _stx91648_
                           _internal-expand?91649_))
                        _g94214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g94214_))))))
    (define gx#core-import-nested-module
      (lambda (_spath91245_ _where91246_)
        (let* ((_e9124791254_ _spath91245_)
               (_E9124991258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9124791254_)))
               (_E9124891313_
                (lambda ()
                  (if (gx#stx-pair? _e9124791254_)
                      (let ((_e9125091262_ (gx#syntax-e _e9124791254_)))
                        (let ((_hd9125191265_ (##car _e9125091262_))
                              (_tl9125291267_ (##cdr _e9125091262_)))
                          (let* ((_origin91270_ _hd9125191265_)
                                 (_sub91272_ _tl9125291267_))
                            (if '#t
                                (let ((_origin-ctx91274_
                                       (if (gx#stx-false? _origin91270_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin91270_))))
                                  (let _lp91276_ ((_rest91278_ _sub91272_)
                                                  (_ctx91279_
                                                   _origin-ctx91274_))
                                    (let* ((_e9128091287_ _rest91278_)
                                           (_E9128291291_
                                            (lambda () _ctx91279_))
                                           (_E9128191309_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9128091287_)
                                                  (let ((_e9128391295_
                                                         (gx#syntax-e
                                                          _e9128091287_)))
                                                    (let ((_hd9128491298_
                                                           (##car _e9128391295_))
                                                          (_tl9128591300_
                                                           (##cdr _e9128391295_)))
                                                      (let* ((_id91303_
                                                              _hd9128491298_)
                                                             (_rest91305_
                                                              _tl9128591300_))
                                                        (if '#t
                                                            (let ((_bind91307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id91303_ '0 _ctx91279_)))
                      (if (and (##structure-direct-instance-of?
                                _bind91307_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind91307_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where91246_
                           _spath91245_
                           _id91303_))
                      (_lp91276_
                       _rest91305_
                       (##unchecked-structure-ref
                        _bind91307_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9128291291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9128291291_)))))
                                      (_E9128191309_))))
                                (_E9124991258_)))))
                      (_E9124991258_)))))
          (_E9124891313_))))
    (define gx#core-expand-import-source
      (lambda (_hd91243_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd91243_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx90751_ _internal-expand?90752_)
        (letrec* ((_make-export__9414394144_
                   (lambda (_bind91191_ _phi91192_ _ctx91193_ _name91194_)
                     (let* ((_key91196_
                             (##unchecked-structure-ref
                              _bind91191_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key91198_
                             (if _name91194_
                                 (gx#core-identifier-key _name91194_)
                                 _key91196_)))
                       (##structure
                        gx#module-export::t
                        _ctx91193_
                        _key91196_
                        _phi91192_
                        _export-key91198_
                        (let ((_$e91201_
                               (##structure-instance-of?
                                _bind91191_
                                'gx#extern-binding::t)))
                          (if _$e91201_
                              _$e91201_
                              (##structure-direct-instance-of?
                               _bind91191_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9414594148_
                   (lambda (_bind91207_)
                     (let* ((_phi91209_ (gx#current-export-expander-phi))
                            (_ctx91211_ (gx#current-expander-context))
                            (_name91213_ '#f))
                       (_make-export__9414394144_
                        _bind91207_
                        _phi91209_
                        _ctx91211_
                        _name91213_))))
                  (_make-export__1__9414694149_
                   (lambda (_bind91215_ _phi91216_)
                     (let* ((_ctx91218_ (gx#current-expander-context))
                            (_name91220_ '#f))
                       (_make-export__9414394144_
                        _bind91215_
                        _phi91216_
                        _ctx91218_
                        _name91220_))))
                  (_make-export__2__9414794150_
                   (lambda (_bind91222_ _phi91223_ _ctx91224_)
                     (let ((_name91226_ '#f))
                       (_make-export__9414394144_
                        _bind91222_
                        _phi91223_
                        _ctx91224_
                        _name91226_))))
                  (_make-export90754_
                   (lambda _g94216_
                     (let ((_g94215_ (##length _g94216_)))
                       (cond ((##fx= _g94215_ 1)
                              (apply (lambda (_bind91207_)
                                       (_make-export__0__9414594148_
                                        _bind91207_))
                                     _g94216_))
                             ((##fx= _g94215_ 2)
                              (apply (lambda (_bind91215_ _phi91216_)
                                       (_make-export__1__9414694149_
                                        _bind91215_
                                        _phi91216_))
                                     _g94216_))
                             ((##fx= _g94215_ 3)
                              (apply (lambda (_bind91222_
                                              _phi91223_
                                              _ctx91224_)
                                       (_make-export__2__9414794150_
                                        _bind91222_
                                        _phi91223_
                                        _ctx91224_))
                                     _g94216_))
                             ((##fx= _g94215_ 4)
                              (apply (lambda (_bind91228_
                                              _phi91229_
                                              _ctx91230_
                                              _name91231_)
                                       (_make-export__9414394144_
                                        _bind91228_
                                        _phi91229_
                                        _ctx91230_
                                        _name91231_))
                                     _g94216_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g94216_))))))
                  (_expand190755_
                   (lambda (_hd90904_ _K90905_ _rest90906_ _r90907_)
                     (let* ((_e9090890940_ _hd90904_)
                            (_E9093590944_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx90751_
                                _hd90904_)))
                            (_E9092591023_
                             (lambda ()
                               (if (gx#stx-pair? _e9090890940_)
                                   (let ((_e9093690948_
                                          (gx#syntax-e _e9090890940_)))
                                     (let ((_hd9093790951_
                                            (##car _e9093690948_))
                                           (_tl9093890953_
                                            (##cdr _e9093690948_)))
                                       (if (eq? (gx#stx-e _hd9093790951_)
                                                'import:)
                                           (let ((_in90956_ _tl9093890953_))
                                             (if (gx#stx-list? _in90956_)
                                                 (let _lp90958_ ((_in-rest90960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in90956_)
                         (_r90961_ _r90907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9096290969_
                                                           _in-rest90960_)
                                                          (_E9096490973_
                                                           (lambda ()
                                                             (_K90905_
                                                              _rest90906_
                                                              _r90961_)))
                                                          (_E9096391019_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9096290969_)
                         (let ((_e9096590977_ (gx#syntax-e _e9096290969_)))
                           (let ((_hd9096690980_ (##car _e9096590977_))
                                 (_tl9096790982_ (##cdr _e9096590977_)))
                             (let* ((_hd90985_ _hd9096690980_)
                                    (_in-rest90987_ _tl9096790982_))
                               (if '#t
                                   (let ((_src91017_
                                          (if (gx#core-bound-module? _hd90985_)
                                              (gx#syntax-local-e__0 _hd90985_)
                                              (if (gx#core-library-module-path?
                                                   _hd90985_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd90985_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd90985_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd90985_))
                                                      (if (gx#stx-string?
                                                           _hd90985_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd90985_
                                                            (gx#stx-source
                                                             _stx90751_)))
                                                          (let* ((_e9098890995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90985_)
                         (_E9099090999_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx90751_
                             _hd90985_)))
                         (_E9098991013_
                          (lambda ()
                            (if (gx#stx-pair? _e9098890995_)
                                (let ((_e9099191003_
                                       (gx#syntax-e _e9098890995_)))
                                  (let ((_hd9099291006_ (##car _e9099191003_))
                                        (_tl9099391008_ (##cdr _e9099191003_)))
                                    (if (eq? (gx#stx-e _hd9099291006_) 'in:)
                                        (let ((_spath91011_ _tl9099391008_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath91011_
                                               _stx90751_)
                                              (_E9099090999_)))
                                        (_E9099090999_))))
                                (_E9099090999_)))))
                    (_E9098991013_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp90958_
                                      _in-rest90987_
                                      (_export-imports90756_
                                       _src91017_
                                       _r90961_)))
                                   (_E9096490973_)))))
                         (_E9096490973_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9096391019_)))
                                                 (_E9093590944_)))
                                           (_E9093590944_))))
                                   (_E9093590944_))))
                            (_E9091291062_
                             (lambda ()
                               (if (gx#stx-pair? _e9090890940_)
                                   (let ((_e9092691027_
                                          (gx#syntax-e _e9090890940_)))
                                     (let ((_hd9092791030_
                                            (##car _e9092691027_))
                                           (_tl9092891032_
                                            (##cdr _e9092691027_)))
                                       (if (eq? (gx#stx-e _hd9092791030_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9092891032_)
                                               (let ((_e9092991035_
                                                      (gx#syntax-e
                                                       _tl9092891032_)))
                                                 (let ((_hd9093091038_
                                                        (##car _e9092991035_))
                                                       (_tl9093191040_
                                                        (##cdr _e9092991035_)))
                                                   (let ((_id91043_
                                                          _hd9093091038_))
                                                     (if (gx#stx-pair?
                                                          _tl9093191040_)
                                                         (let ((_e9093291045_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9093191040_)))
                   (let ((_hd9093391048_ (##car _e9093291045_))
                         (_tl9093491050_ (##cdr _e9093291045_)))
                     (let ((_name91053_ _hd9093391048_))
                       (if (gx#stx-null? _tl9093491050_)
                           (if '#t
                               (let* ((_phi91055_
                                       (gx#current-export-expander-phi))
                                      (_$e91057_
                                       (gx#core-resolve-identifier__1
                                        _id91043_
                                        _phi91055_)))
                                 (if _$e91057_
                                     ((lambda (_bind91060_)
                                        (_K90905_
                                         _rest90906_
                                         (cons (_make-export__9414394144_
                                                _bind91060_
                                                _phi91055_
                                                (gx#current-expander-context)
                                                _name91053_)
                                               _r90907_)))
                                      _$e91057_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx90751_
                                      _hd90904_
                                      _id91043_)))
                               (_E9092591023_))
                           (_E9092591023_)))))
                 (_E9092591023_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9092591023_))
                                           (_E9092591023_))))
                                   (_E9092591023_))))
                            (_E9091191111_
                             (lambda ()
                               (if (gx#stx-pair? _e9090890940_)
                                   (let ((_e9091391066_
                                          (gx#syntax-e _e9090890940_)))
                                     (let ((_hd9091491069_
                                            (##car _e9091391066_))
                                           (_tl9091591071_
                                            (##cdr _e9091391066_)))
                                       (if (eq? (gx#stx-e _hd9091491069_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl9091591071_)
                                               (let ((_e9091691074_
                                                      (gx#syntax-e
                                                       _tl9091591071_)))
                                                 (let ((_hd9091791077_
                                                        (##car _e9091691074_))
                                                       (_tl9091891079_
                                                        (##cdr _e9091691074_)))
                                                   (let ((_phi91082_
                                                          _hd9091791077_))
                                                     (if (gx#stx-pair?
                                                          _tl9091891079_)
                                                         (let ((_e9091991084_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9091891079_)))
                   (let ((_hd9092091087_ (##car _e9091991084_))
                         (_tl9092191089_ (##cdr _e9091991084_)))
                     (let ((_id91092_ _hd9092091087_))
                       (if (gx#stx-pair? _tl9092191089_)
                           (let ((_e9092291094_ (gx#syntax-e _tl9092191089_)))
                             (let ((_hd9092391097_ (##car _e9092291094_))
                                   (_tl9092491099_ (##cdr _e9092291094_)))
                               (let ((_name91102_ _hd9092391097_))
                                 (if (gx#stx-null? _tl9092491099_)
                                     (if (and (gx#stx-fixnum? _phi91082_)
                                              (gx#identifier? _id91092_)
                                              (gx#identifier? _name91102_))
                                         (let* ((_phi91104_
                                                 (gx#stx-e _phi91082_))
                                                (_$e91106_
                                                 (gx#core-resolve-identifier__1
                                                  _id91092_
                                                  _phi91104_)))
                                           (if _$e91106_
                                               ((lambda (_bind91109_)
                                                  (_K90905_
                                                   _rest90906_
                                                   (cons (_make-export__9414394144_
                                                          _bind91109_
                                                          _phi91104_
                                                          (gx#current-expander-context)
                                                          _name91102_)
                                                         _r90907_)))
                                                _$e91106_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx90751_
                                                _hd90904_
                                                _id91092_)))
                                         (_E9091291062_))
                                     (_E9091291062_)))))
                           (_E9091291062_)))))
                 (_E9091291062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9091291062_))
                                           (_E9091291062_))))
                                   (_E9091291062_))))
                            (_E9091091122_
                             (lambda ()
                               (let ((_id91115_ _e9090890940_))
                                 (if (gx#identifier? _id91115_)
                                     (let ((_$e91117_
                                            (gx#core-resolve-identifier__1
                                             _id91115_
                                             (gx#current-export-expander-phi))))
                                       (if _$e91117_
                                           ((lambda (_bind91120_)
                                              (_K90905_
                                               _rest90906_
                                               (cons (_make-export__0__9414594148_
                                                      _bind91120_)
                                                     _r90907_)))
                                            _$e91117_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx90751_
                                            _hd90904_)))
                                     (_E9091191111_)))))
                            (_E9090991186_
                             (lambda ()
                               (if (eq? (gx#stx-e _e9090890940_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx91126_
                                               (gx#current-expander-context))
                                              (_current-phi91128_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx91130_
                                               (gx#core-context-shift
                                                _current-ctx91126_
                                                _current-phi91128_))
                                              (_phi-bind91132_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx91130_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp91135_ ((_bind-rest91137_
                                                          _phi-bind91132_)
                                                         (_set91138_ '()))
                                           (let* ((_bind-rest9113991149_
                                                   _bind-rest91137_)
                                                  (_else9114191157_
                                                   (lambda ()
                                                     (_K90905_
                                                      _rest90906_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi91128_
                                                             _set91138_)
                                                            _r90907_))))
                                                  (_K9114391167_
                                                   (lambda (_bind-rest91160_
                                                            _bind91161_
                                                            _key91162_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind91161_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind91161_))
                                                         (_lp91135_
                                                          _bind-rest91160_
                                                          _set91138_)
                                                         (_lp91135_
                                                          _bind-rest91160_
                                                          (cons (_make-export__2__9414794150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind91161_
                         _current-phi91128_
                         _current-ctx91126_)
                        _set91138_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9113991149_)
                                                 (let ((_hd9114491170_
                                                        (##car _bind-rest9113991149_))
                                                       (_tl9114591172_
                                                        (##cdr _bind-rest9113991149_)))
                                                   (if (##pair? _hd9114491170_)
                                                       (let ((_hd9114691175_
                                                              (##car _hd9114491170_))
                                                             (_tl9114791177_
                                                              (##cdr _hd9114491170_)))
                                                         (let* ((_key91180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9114691175_)
                        (_bind91182_ _tl9114791177_)
                        (_bind-rest91184_ _tl9114591172_))
                   (_K9114391167_ _bind-rest91184_ _bind91182_ _key91180_)))
               (_else9114191157_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9114191157_)))))
                                       (_E9091091122_))
                                   (_E9091091122_)))))
                       (_E9090991186_))))
                  (_export-imports90756_
                   (lambda (_src90780_ _r90781_)
                     (letrec* ((_current-ctx90783_
                                (gx#current-expander-context))
                               (_current-phi90784_
                                (gx#current-export-expander-phi))
                               (_import->export90785_
                                (lambda (_in90866_)
                                  (let* ((_in9086790875_ _in90866_)
                                         (_E9086990879_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in9086790875_)))
                                         (_K9087090886_
                                          (lambda (_phi90882_
                                                   _key90883_
                                                   _out90884_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx90783_
                                             _key90883_
                                             _phi90882_
                                             _key90883_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in9086790875_
                                         'gx#module-import::t)
                                        (let* ((_e9087190889_
                                                (##unchecked-structure-ref
                                                 _in9086790875_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out90892_ _e9087190889_)
                                               (_e9087290894_
                                                (##unchecked-structure-ref
                                                 _in9086790875_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key90897_ _e9087290894_)
                                               (_e9087390899_
                                                (##unchecked-structure-ref
                                                 _in9086790875_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi90902_ _e9087390899_))
                                          (_K9087090886_
                                           _phi90902_
                                           _key90897_
                                           _out90892_))
                                        (_E9086990879_)))))
                               (_fold-e90786_
                                (lambda (_in90788_ _r90789_)
                                  (let* ((_in9079090804_ _in90788_)
                                         (_else9079390812_
                                          (lambda () _r90789_)))
                                    (let ((_K9079990848_
                                           (lambda (_phi90844_
                                                    _key90845_
                                                    _out90846_)
                                             (if (and (fx= _phi90844_
                                                           _current-phi90784_)
                                                      (eq? _src90780_
                                                           (##unchecked-structure-ref
                                                            _out90846_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export90785_
                                                        _in90788_)
                                                       _r90789_)
                                                 _r90789_)))
                                          (_K9079590823_
                                           (lambda (_imports90816_
                                                    _phi90817_
                                                    _ctx90818_)
                                             (if (and (fx= _phi90817_
                                                           _current-phi90784_)
                                                      (eq? _src90780_
                                                           _ctx90818_))
                                                 (foldl1 (lambda (_in90820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r90821_)
                   (cons (_import->export90785_ _in90820_) _r90821_))
                 _r90789_
                 _imports90816_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r90789_))))
                                      (let ((_try-match9079290841_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in9079090804_
                                                    'gx#import-set::t)
                                                   (let* ((_e9079690826_
                                                           (##unchecked-structure-ref
                                                            _in9079090804_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9079790831_
                                                           (##unchecked-structure-ref
                                                            _in9079090804_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e9079890836_
                                                           (##unchecked-structure-ref
                                                            _in9079090804_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx90829_
                                                            _e9079690826_)
                                                           (_phi90834_
                                                            _e9079790831_)
                                                           (_imports90839_
                                                            _e9079890836_))
                                                       (_K9079590823_
                                                        _imports90839_
                                                        _phi90834_
                                                        _ctx90829_)))
                                                   (_else9079390812_)))))
                                        (if (##structure-direct-instance-of?
                                             _in9079090804_
                                             'gx#module-import::t)
                                            (let* ((_e9080090851_
                                                    (##unchecked-structure-ref
                                                     _in9079090804_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9080190856_
                                                    (##unchecked-structure-ref
                                                     _in9079090804_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e9080290861_
                                                    (##unchecked-structure-ref
                                                     _in9079090804_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out90854_ _e9080090851_)
                                                    (_key90859_ _e9080190856_)
                                                    (_phi90864_ _e9080290861_))
                                                (_K9079990848_
                                                 _phi90864_
                                                 _key90859_
                                                 _out90854_)))
                                            (_try-match9079290841_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src90780_
                              _current-phi90784_
                              (foldl1 _fold-e90786_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx90783_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r90781_))))
                  (_export!90757_
                   (lambda (_rbody90770_)
                     (letrec* ((_current-ctx90772_
                                (gx#current-expander-context))
                               (_fold-e90773_
                                (lambda (_out90777_ _r90778_)
                                  (if (##structure-direct-instance-of?
                                       _out90777_
                                       'gx#module-export::t)
                                      (cons _out90777_ _r90778_)
                                      (if (##structure-direct-instance-of?
                                           _out90777_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r90778_
                                                  (##unchecked-structure-ref
                                                   _out90777_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r90778_)))))
                       (let ((_body90775_ (reverse _rbody90770_)))
                         (##unchecked-structure-set!
                          _current-ctx90772_
                          (foldl1 _fold-e90773_
                                  (##unchecked-structure-ref
                                   _current-ctx90772_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body90775_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body90775_))))
                  (_expanded-export?90758_
                   (lambda (_e90765_)
                     (let ((_$e90767_
                            (##structure-direct-instance-of?
                             _e90765_
                             'gx#module-export::t)))
                       (if _$e90767_
                           _$e90767_
                           (##structure-direct-instance-of?
                            _e90765_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?90752_)
              (let ((_rbody90763_
                     (gx#core-expand-import/export
                      _stx90751_
                      _expanded-export?90758_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand190755_)))
                (if _internal-expand?90752_
                    (reverse _rbody90763_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!90757_ _rbody90763_))
                     (gx#stx-source _stx90751_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx90751_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx90751_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx91236_)
        (let ((_internal-expand?91238_ '#f))
          (gx#core-expand-export%__% _stx91236_ _internal-expand?91238_))))
    (define gx#core-expand-export%
      (lambda _g94218_
        (let ((_g94217_ (##length _g94218_)))
          (cond ((##fx= _g94217_ 1)
                 (apply (lambda (_stx91236_)
                          (gx#core-expand-export%__0 _stx91236_))
                        _g94218_))
                ((##fx= _g94217_ 2)
                 (apply (lambda (_stx91240_ _internal-expand?91241_)
                          (gx#core-expand-export%__%
                           _stx91240_
                           _internal-expand?91241_))
                        _g94218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g94218_))))))
    (define gx#core-expand-export-source
      (lambda (_hd90748_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd90748_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx90718_)
        (let* ((_e9071990726_ _stx90718_)
               (_E9072190730_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9071990726_)))
               (_E9072090744_
                (lambda ()
                  (if (gx#stx-pair? _e9071990726_)
                      (let ((_e9072290734_ (gx#syntax-e _e9071990726_)))
                        (let ((_hd9072390737_ (##car _e9072290734_))
                              (_tl9072490739_ (##cdr _e9072290734_)))
                          (let ((_body90742_ _tl9072490739_))
                            (if (gx#identifier-list? _body90742_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body90742_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body90742_))
                                   (gx#stx-source _stx90718_)))
                                (_E9072190730_)))))
                      (_E9072190730_)))))
          (_E9072090744_))))
    (define gx#core-bind-feature!__%
      (lambda (_id90684_ _private?90685_ _phi90686_ _ctx90687_)
        (gx#core-bind-syntax!__%
         _id90684_
         ((if _private?90685_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id90684_))
         _private?90685_
         _phi90686_
         _ctx90687_)))
    (define gx#core-bind-feature!__0
      (lambda (_id90692_)
        (let* ((_private?90694_ '#f)
               (_phi90696_ (gx#current-expander-phi))
               (_ctx90698_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90692_
           _private?90694_
           _phi90696_
           _ctx90698_))))
    (define gx#core-bind-feature!__1
      (lambda (_id90700_ _private?90701_)
        (let* ((_phi90703_ (gx#current-expander-phi))
               (_ctx90705_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90700_
           _private?90701_
           _phi90703_
           _ctx90705_))))
    (define gx#core-bind-feature!__2
      (lambda (_id90707_ _private?90708_ _phi90709_)
        (let ((_ctx90711_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id90707_
           _private?90708_
           _phi90709_
           _ctx90711_))))
    (define gx#core-bind-feature!
      (lambda _g94220_
        (let ((_g94219_ (##length _g94220_)))
          (cond ((##fx= _g94219_ 1)
                 (apply (lambda (_id90692_)
                          (gx#core-bind-feature!__0 _id90692_))
                        _g94220_))
                ((##fx= _g94219_ 2)
                 (apply (lambda (_id90700_ _private?90701_)
                          (gx#core-bind-feature!__1 _id90700_ _private?90701_))
                        _g94220_))
                ((##fx= _g94219_ 3)
                 (apply (lambda (_id90707_ _private?90708_ _phi90709_)
                          (gx#core-bind-feature!__2
                           _id90707_
                           _private?90708_
                           _phi90709_))
                        _g94220_))
                ((##fx= _g94219_ 4)
                 (apply (lambda (_id90713_
                                 _private?90714_
                                 _phi90715_
                                 _ctx90716_)
                          (gx#core-bind-feature!__%
                           _id90713_
                           _private?90714_
                           _phi90715_
                           _ctx90716_))
                        _g94220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g94220_))))))))
