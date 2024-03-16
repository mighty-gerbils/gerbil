(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1710617602)
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
      (lambda _$args91535_
        (apply make-instance gx#module-import::t _$args91535_)))
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
      (lambda _$args91532_
        (apply make-instance gx#module-export::t _$args91532_)))
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
      (lambda _$args91529_
        (apply make-instance gx#import-set::t _$args91529_)))
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
      (lambda _$args91526_
        (apply make-instance gx#export-set::t _$args91526_)))
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
      (lambda _$args91523_
        (apply make-instance gx#import-expander::t _$args91523_)))
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
      (lambda _$args91520_
        (apply make-instance gx#export-expander::t _$args91520_)))
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
      (lambda _$args91517_
        (apply make-instance gx#import-export-expander::t _$args91517_)))
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
      (lambda (_path91514_ _fun91515_)
        (call-with-input-file
         (cons 'path: (cons _path91514_ gx#source-file-settings))
         _fun91515_)))
    (define gx#module-context:::init!
      (lambda (_self91508_ _id91509_ _super91510_ _ns91511_ _path91512_)
        (if (##fx< '11 (##structure-length _self91508_))
            (begin
              (##unchecked-structure-set!
               _self91508_
               _id91509_
               '1
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               (make-hash-table-eq)
               '2
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               _super91510_
               '3
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               '#f
               '4
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               '#f
               '5
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               _ns91511_
               '6
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               _path91512_
               '7
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               '()
               '8
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               '()
               '9
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               '#f
               '10
               (##structure-type _self91508_)
               '#f)
              (##unchecked-structure-set!
               _self91508_
               '#f
               '11
               (##structure-type _self91508_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91508_
                   '11
                   (##vector-length _self91508_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self91352_ _ctx91353_ _root91354_)
        (let ((_super91362_
               (let ((_$e91356_ _root91354_))
                 (if _$e91356_
                     _$e91356_
                     (let ((_$e91359_ (gx#core-context-root__0)))
                       (if _$e91359_
                           _$e91359_
                           (let ((__obj91577
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor91578
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj91577
                                     ':init!)))
                               (if __constructor91578
                                   (__constructor91578 __obj91577)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj91577)))))))
          (if _ctx91353_
              (let ((_id91365_
                     (##structure-ref
                      _ctx91353_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path91366_
                     (##structure-ref _ctx91353_ '7 gx#module-context::t '#f))
                    (_in91367_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx91353_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e91368_
                     (make-promise (lambda () (gx#eval-module _ctx91353_)))))
                (if (##fx< '8 (##structure-length _self91352_))
                    (begin
                      (##unchecked-structure-set!
                       _self91352_
                       _id91365_
                       '1
                       (##structure-type _self91352_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91352_
                       (make-hash-table-eq 'size: (length _in91367_))
                       '2
                       (##structure-type _self91352_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91352_
                       _super91362_
                       '3
                       (##structure-type _self91352_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91352_
                       '#f
                       '4
                       (##structure-type _self91352_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91352_
                       '#f
                       '5
                       (##structure-type _self91352_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91352_
                       _path91366_
                       '6
                       (##structure-type _self91352_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91352_
                       _in91367_
                       '7
                       (##structure-type _self91352_)
                       '#f)
                      (##unchecked-structure-set!
                       _self91352_
                       _e91368_
                       '8
                       (##structure-type _self91352_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self91352_
                           '8
                           (##vector-length _self91352_)))
                (for-each
                 (lambda (_g9136991371_)
                   (gx#core-bind-weak-import!__% _g9136991371_ _self91352_))
                 _in91367_))
              (if (##fx< '8 (##structure-length _self91352_))
                  (begin
                    (##unchecked-structure-set!
                     _self91352_
                     '#f
                     '1
                     (##structure-type _self91352_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91352_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self91352_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91352_
                     _super91362_
                     '3
                     (##structure-type _self91352_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91352_
                     '#f
                     '4
                     (##structure-type _self91352_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91352_
                     '#f
                     '5
                     (##structure-type _self91352_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91352_
                     '#f
                     '6
                     (##structure-type _self91352_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91352_
                     '()
                     '7
                     (##structure-type _self91352_)
                     '#f)
                    (##unchecked-structure-set!
                     _self91352_
                     '#f
                     '8
                     (##structure-type _self91352_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self91352_
                         '8
                         (##vector-length _self91352_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self91377_ _ctx91378_)
        (let ((_root91380_ '#f))
          (gx#prelude-context:::init!__% _self91377_ _ctx91378_ _root91380_))))
    (define gx#prelude-context:::init!
      (lambda _g91584_
        (let ((_g91583_ (##length _g91584_)))
          (cond ((##fx= _g91583_ 2)
                 (apply (lambda (_self91377_ _ctx91378_)
                          (gx#prelude-context:::init!__0
                           _self91377_
                           _ctx91378_))
                        _g91584_))
                ((##fx= _g91583_ 3)
                 (apply (lambda (_self91382_ _ctx91383_ _root91384_)
                          (gx#prelude-context:::init!__%
                           _self91382_
                           _ctx91383_
                           _root91384_))
                        _g91584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g91584_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self91226_ _e91227_)
        (if (##fx< '3 (##structure-length _self91226_))
            (begin
              (##unchecked-structure-set!
               _self91226_
               _e91227_
               '1
               (##structure-type _self91226_)
               '#f)
              (##unchecked-structure-set!
               _self91226_
               (gx#current-expander-context)
               '2
               (##structure-type _self91226_)
               '#f)
              (##unchecked-structure-set!
               _self91226_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self91226_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self91226_
                   '3
                   (##vector-length _self91226_)))))
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
      (lambda (_g9085290855_ _g9085390857_)
        (gx#core-apply-user-expander__%
         _g9085290855_
         _g9085390857_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9072390726_ _g9072490728_)
        (gx#core-apply-user-expander__%
         _g9072390726_
         _g9072490728_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx90594_)
        (let* ((_path90596_
                (##structure-ref _ctx90594_ '7 gx#module-context::t '#f))
               (_path90598_
                (if (pair? _path90596_) (last _path90596_) _path90596_)))
          (if (string? _path90598_) _path90598_ '#f))))
    (define gx#import-module__%
      (lambda (_path90570_ _reload?90571_ _eval?90572_)
        (let ((_ctx90574_
               ((gx#current-expander-module-import)
                _path90570_
                _reload?90571_)))
          (if (and _ctx90574_ _eval?90572_)
              (gx#eval-module _ctx90574_)
              '#!void)
          _ctx90574_)))
    (define gx#import-module__0
      (lambda (_path90579_)
        (let* ((_reload?90581_ '#f) (_eval?90583_ '#f))
          (gx#import-module__% _path90579_ _reload?90581_ _eval?90583_))))
    (define gx#import-module__1
      (lambda (_path90585_ _reload?90586_)
        (let ((_eval?90588_ '#f))
          (gx#import-module__% _path90585_ _reload?90586_ _eval?90588_))))
    (define gx#import-module
      (lambda _g91586_
        (let ((_g91585_ (##length _g91586_)))
          (cond ((##fx= _g91585_ 1)
                 (apply (lambda (_path90579_)
                          (gx#import-module__0 _path90579_))
                        _g91586_))
                ((##fx= _g91585_ 2)
                 (apply (lambda (_path90585_ _reload?90586_)
                          (gx#import-module__1 _path90585_ _reload?90586_))
                        _g91586_))
                ((##fx= _g91585_ 3)
                 (apply (lambda (_path90590_ _reload?90591_ _eval?90592_)
                          (gx#import-module__%
                           _path90590_
                           _reload?90591_
                           _eval?90592_))
                        _g91586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g91586_))))))
    (define gx#eval-module
      (lambda (_mod90567_) ((gx#current-expander-module-eval) _mod90567_)))
    (define gx#core-eval-module
      (lambda (_obj90552_)
        (letrec ((_force-e90554_
                  (lambda (_getf90563_ _e90564_)
                    (call-with-parameters
                     (lambda () (force (_getf90563_ _e90564_)))
                     gx#current-expander-context
                     _e90564_
                     gx#current-expander-phi
                     '0))))
          (let _recur90556_ ((_e90558_ _obj90552_))
            (if (##structure-instance-of? _e90558_ 'gx#module-context::t)
                (begin
                  (let ((_$e90560_ (gx#core-context-prelude__% _e90558_)))
                    (if _$e90560_ (_recur90556_ _$e90560_) '#!void))
                  (_force-e90554_ gx#module-context-e _e90558_))
                (if (##structure-instance-of? _e90558_ 'gx#prelude-context::t)
                    (_force-e90554_ gx#prelude-context-e _e90558_)
                    (if (gx#stx-string? _e90558_)
                        (_recur90556_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e90558_)))
                        (if (gx#core-library-module-path? _e90558_)
                            (_recur90556_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e90558_)))
                            (error '"Cannot eval module" _obj90552_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx90535_)
        (let _lp90537_ ((_e90539_ _ctx90535_))
          (if (or (##structure-instance-of? _e90539_ 'gx#module-context::t)
                  (##structure-instance-of? _e90539_ 'gx#local-context::t))
              (_lp90537_
               (##unchecked-structure-ref _e90539_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e90539_ 'gx#prelude-context::t)
                  _e90539_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx90548_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx90548_))))
    (define gx#core-context-prelude
      (lambda _g91588_
        (let ((_g91587_ (##length _g91588_)))
          (cond ((##fx= _g91587_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g91588_))
                ((##fx= _g91587_ 1)
                 (apply (lambda (_ctx90550_)
                          (gx#core-context-prelude__% _ctx90550_))
                        _g91588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g91588_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx90525_)
        (let* ((_ht90527_ (gx#current-expander-module-registry))
               (_$e90529_ (hash-get _ht90527_ _ctx90525_)))
          (if _$e90529_
              (values _$e90529_)
              (let ((_pre90532_
                     (let ((__obj91579
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
                       (gx#prelude-context:::init! __obj91579 _ctx90525_)
                       __obj91579)))
                (hash-put! _ht90527_ _ctx90525_ _pre90532_)
                _pre90532_)))))
    (define gx#core-import-module__%
      (lambda (_rpath90406_ _reload?90407_)
        (letrec ((_import-source90409_
                  (lambda (_path90494_)
                    (if (member _path90494_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path90494_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g91589_ (gx#core-read-module _path90494_)))
                         (begin
                           (let ((_g91590_
                                  (if (##values? _g91589_)
                                      (##vector-length _g91589_)
                                      1)))
                             (if (not (##fx= _g91590_ 4))
                                 (error "Context expects 4 values" _g91590_)))
                           (let ((_pre90497_ (##vector-ref _g91589_ 0))
                                 (_id90498_ (##vector-ref _g91589_ 1))
                                 (_ns90499_ (##vector-ref _g91589_ 2))
                                 (_body90500_ (##vector-ref _g91589_ 3)))
                             (let* ((_prelude90505_
                                     (if (##structure-instance-of?
                                          _pre90497_
                                          'gx#prelude-context::t)
                                         _pre90497_
                                         (if (##structure-instance-of?
                                              _pre90497_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre90497_)
                                             (if (string? _pre90497_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre90497_))
                                                 (if (not _pre90497_)
                                                     (let ((_$e90502_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e90502_
                                                           _$e90502_
                                                           (let ((__obj91580
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
                     (gx#prelude-context:::init! __obj91580 '#f)
                     __obj91580)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath90406_
                                                            _pre90497_))))))
                                    (_ctx90507_
                                     (let ((__obj91581
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
                                        __obj91581
                                        _id90498_
                                        _prelude90505_
                                        _ns90499_
                                        _path90494_)
                                       __obj91581))
                                    (_body90509_
                                     (gx#core-expand-module-begin
                                      _body90500_
                                      _ctx90507_))
                                    (_body90511_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body90509_)
                                      _path90494_
                                      _ctx90507_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx90507_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body90511_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx90507_
                                _body90511_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path90494_
                                _ctx90507_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id90498_
                                _ctx90507_)
                               _ctx90507_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path90494_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule90410_
                  (lambda (_rpath90422_)
                    (let* ((_rpath9042390430_ _rpath90422_)
                           (_E9042590434_
                            (lambda ()
                              (error '"No clause matching" _rpath9042390430_)))
                           (_K9042690482_
                            (lambda (_refs90437_ _origin90438_)
                              (let ((_ctx90440_
                                     (if _origin90438_
                                         (gx#core-import-module__%
                                          _origin90438_
                                          _reload?90407_)
                                         (gx#current-expander-context))))
                                (let _lp90442_ ((_rest90444_ _refs90437_)
                                                (_ctx90445_ _ctx90440_))
                                  (let* ((_rest9044690454_ _rest90444_)
                                         (_else9044890462_
                                          (lambda () _ctx90445_))
                                         (_K9045090470_
                                          (lambda (_rest90465_ _id90466_)
                                            (let ((_bind90468_
                                                   (gx#resolve-identifier__%
                                                    _id90466_
                                                    '0
                                                    _ctx90445_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind90468_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind90468_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp90442_
                                                   _rest90465_
                                                   (##unchecked-structure-ref
                                                    _bind90468_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath90422_
                                                         _id90466_
                                                         _bind90468_))))))
                                    (if (##pair? _rest9044690454_)
                                        (let ((_hd9045190473_
                                               (##car _rest9044690454_))
                                              (_tl9045290475_
                                               (##cdr _rest9044690454_)))
                                          (let* ((_id90478_ _hd9045190473_)
                                                 (_rest90480_ _tl9045290475_))
                                            (_K9045090470_
                                             _rest90480_
                                             _id90478_)))
                                        (_else9044890462_))))))))
                      (if (##pair? _rpath9042390430_)
                          (let ((_hd9042790485_ (##car _rpath9042390430_))
                                (_tl9042890487_ (##cdr _rpath9042390430_)))
                            (let* ((_origin90490_ _hd9042790485_)
                                   (_refs90492_ _tl9042890487_))
                              (_K9042690482_ _refs90492_ _origin90490_)))
                          (_E9042590434_))))))
          (let ((_$e90412_
                 (if (not _reload?90407_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath90406_)
                     '#f)))
            (if _$e90412_
                (values _$e90412_)
                (if (list? _rpath90406_)
                    (_import-submodule90410_ _rpath90406_)
                    (if (gx#core-library-module-path? _rpath90406_)
                        (let ((_ctx90415_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath90406_)
                                _reload?90407_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath90406_
                           _ctx90415_)
                          _ctx90415_)
                        (let* ((_npath90417_ (path-normalize _rpath90406_))
                               (_$e90419_
                                (if (not _reload?90407_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath90417_)
                                    '#f)))
                          (if _$e90419_
                              (values _$e90419_)
                              (_import-source90409_ _npath90417_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath90518_)
        (let ((_reload?90520_ '#f))
          (gx#core-import-module__% _rpath90518_ _reload?90520_))))
    (define gx#core-import-module
      (lambda _g91592_
        (let ((_g91591_ (##length _g91592_)))
          (cond ((##fx= _g91591_ 1)
                 (apply (lambda (_rpath90518_)
                          (gx#core-import-module__0 _rpath90518_))
                        _g91592_))
                ((##fx= _g91591_ 2)
                 (apply (lambda (_rpath90522_ _reload?90523_)
                          (gx#core-import-module__%
                           _rpath90522_
                           _reload?90523_))
                        _g91592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g91592_))))))
    (define gx#core-read-module
      (lambda (_path90395_)
        (with-catch
         (lambda (_exn90397_)
           (if (and (datum-parsing-exception? _exn90397_)
                    (eq? (datum-parsing-exception-filepos _exn90397_) '0))
               (gx#core-read-module/lang _path90395_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path90395_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9039990401_)
                      (display-exception _exn90397_ _g9039990401_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path90395_)))))
    (define gx#core-read-module/sexp
      (lambda (_path90258_)
        (let _lp90260_ ((_body90262_ (read-syntax-from-file _path90258_))
                        (_pre90263_ '#f)
                        (_ns90264_ '#f)
                        (_pkg90265_ '#f))
          (let* ((_e9026690290_ _body90262_)
                 (_E9028290312_
                  (lambda ()
                    (let ((_g91593_
                           (if _pkg90265_
                               (values _pre90263_ _ns90264_ _pkg90265_)
                               (gx#core-read-module-package
                                _path90258_
                                _pre90263_
                                _ns90264_))))
                      (begin
                        (let ((_g91594_
                               (if (##values? _g91593_)
                                   (##vector-length _g91593_)
                                   1)))
                          (if (not (##fx= _g91594_ 3))
                              (error "Context expects 3 values" _g91594_)))
                        (let ((_pre90294_ (##vector-ref _g91593_ 0))
                              (_ns90295_ (##vector-ref _g91593_ 1))
                              (_pkg90296_ (##vector-ref _g91593_ 2)))
                          (let* ((_prelude90298_
                                  (if (gx#core-bound-module-prelude?
                                       _pre90294_)
                                      (gx#syntax-local-e__0 _pre90294_)
                                      (if (gx#core-library-module-path?
                                           _pre90294_)
                                          (gx#core-resolve-library-module-path
                                           _pre90294_)
                                          (if (gx#stx-string? _pre90294_)
                                              (gx#core-resolve-module-path__%
                                               _pre90294_
                                               _path90258_)
                                              (gx#stx-e _pre90294_)))))
                                 (_path-id90300_
                                  (gx#core-module-path->namespace _path90258_))
                                 (_pkg-id90302_
                                  (if _pkg90296_
                                      (string-append
                                       _pkg90296_
                                       '"/"
                                       _path-id90300_)
                                      _path-id90300_))
                                 (_module-id90304_
                                  (string->symbol _pkg-id90302_))
                                 (_module-ns90309_
                                  (if (eq? _ns90295_ '#!void)
                                      '#f
                                      (let ((_$e90306_ _ns90295_))
                                        (if _$e90306_
                                            _$e90306_
                                            _pkg-id90302_)))))
                            (values _prelude90298_
                                    _module-id90304_
                                    _module-ns90309_
                                    _body90262_)))))))
                 (_E9027590341_
                  (lambda ()
                    (if (gx#stx-pair? _e9026690290_)
                        (let ((_e9028390316_ (gx#syntax-e _e9026690290_)))
                          (let ((_hd9028490319_ (##car _e9028390316_))
                                (_tl9028590321_ (##cdr _e9028390316_)))
                            (if (eq? (gx#stx-e _hd9028490319_) 'package:)
                                (if (gx#stx-pair? _tl9028590321_)
                                    (let ((_e9028690324_
                                           (gx#syntax-e _tl9028590321_)))
                                      (let ((_hd9028790327_
                                             (##car _e9028690324_))
                                            (_tl9028890329_
                                             (##cdr _e9028690324_)))
                                        (let* ((_pkg90332_ _hd9028790327_)
                                               (_rest90334_ _tl9028890329_))
                                          (if '#t
                                              (let ((_pkg90339_
                                                     (if (gx#identifier?
                                                          _pkg90332_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg90332_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg90332_)
                         (gx#stx-false? _pkg90332_))
                     (gx#stx-e _pkg90332_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg90332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90260_
                                                 _rest90334_
                                                 _pre90263_
                                                 _ns90264_
                                                 _pkg90339_))
                                              (_E9028290312_)))))
                                    (_E9028290312_))
                                (_E9028290312_))))
                        (_E9028290312_))))
                 (_E9026890367_
                  (lambda ()
                    (if (gx#stx-pair? _e9026690290_)
                        (let ((_e9027690345_ (gx#syntax-e _e9026690290_)))
                          (let ((_hd9027790348_ (##car _e9027690345_))
                                (_tl9027890350_ (##cdr _e9027690345_)))
                            (if (eq? (gx#stx-e _hd9027790348_) 'namespace:)
                                (if (gx#stx-pair? _tl9027890350_)
                                    (let ((_e9027990353_
                                           (gx#syntax-e _tl9027890350_)))
                                      (let ((_hd9028090356_
                                             (##car _e9027990353_))
                                            (_tl9028190358_
                                             (##cdr _e9027990353_)))
                                        (let* ((_ns90361_ _hd9028090356_)
                                               (_rest90363_ _tl9028190358_))
                                          (if '#t
                                              (let ((_ns90365_
                                                     (if (gx#identifier?
                                                          _ns90361_)
                                                         (symbol->string
                                                          (gx#stx-e _ns90361_))
                                                         (if (gx#stx-string?
                                                              _ns90361_)
                                                             (gx#stx-e
                                                              _ns90361_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns90361_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns90361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp90260_
                                                 _rest90363_
                                                 _pre90263_
                                                 _ns90365_
                                                 _pkg90265_))
                                              (_E9027590341_)))))
                                    (_E9027590341_))
                                (_E9027590341_))))
                        (_E9027590341_))))
                 (_E9026790391_
                  (lambda ()
                    (if (gx#stx-pair? _e9026690290_)
                        (let ((_e9026990371_ (gx#syntax-e _e9026690290_)))
                          (let ((_hd9027090374_ (##car _e9026990371_))
                                (_tl9027190376_ (##cdr _e9026990371_)))
                            (if (eq? (gx#stx-e _hd9027090374_) 'prelude:)
                                (if (gx#stx-pair? _tl9027190376_)
                                    (let ((_e9027290379_
                                           (gx#syntax-e _tl9027190376_)))
                                      (let ((_hd9027390382_
                                             (##car _e9027290379_))
                                            (_tl9027490384_
                                             (##cdr _e9027290379_)))
                                        (let* ((_prelude90387_ _hd9027390382_)
                                               (_rest90389_ _tl9027490384_))
                                          (if '#t
                                              (_lp90260_
                                               _rest90389_
                                               _prelude90387_
                                               _ns90264_
                                               _pkg90265_)
                                              (_E9026890367_)))))
                                    (_E9026890367_))
                                (_E9026890367_))))
                        (_E9026890367_)))))
            (_E9026790391_)))))
    (define gx#core-read-module/lang
      (lambda (_path90085_)
        (letrec ((_default-read-module-body90087_
                  (lambda (_inp90250_)
                    (let _lp90252_ ((_body90254_ '()))
                      (let ((_next90256_ (read-syntax _inp90250_)))
                        (if (eof-object? _next90256_)
                            (reverse _body90254_)
                            (_lp90252_ (cons _next90256_ _body90254_)))))))
                 (_read-body90088_
                  (lambda (_inp90169_
                           _pre90170_
                           _ns90171_
                           _pkg90172_
                           _args90173_)
                    (let ((_g91595_
                           (if _pkg90172_
                               (values _pre90170_ _ns90171_ _pkg90172_)
                               (gx#core-read-module-package
                                _path90085_
                                _pre90170_
                                _ns90171_))))
                      (begin
                        (let ((_g91596_
                               (if (##values? _g91595_)
                                   (##vector-length _g91595_)
                                   1)))
                          (if (not (##fx= _g91596_ 3))
                              (error "Context expects 3 values" _g91596_)))
                        (let ((_pre90175_ (##vector-ref _g91595_ 0))
                              (_ns90176_ (##vector-ref _g91595_ 1))
                              (_pkg90177_ (##vector-ref _g91595_ 2)))
                          (let* ((_prelude90179_
                                  (gx#import-module__0 _pre90175_))
                                 (_read-module-body90233_
                                  (let ((_$e90225_
                                         (find (lambda (_e9018090182_)
                                                 (let* ((_g9018490194_
                                                         _e9018090182_)
                                                        (_else9018690202_
                                                         (lambda () '#f))
                                                        (_K9018890206_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9018490194_
                                                        'gx#module-export::t)
                                                       (let* ((_e9018990209_
                                                               (##unchecked-structure-ref
                                                                _g9018490194_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9019090212_
                                                               (##unchecked-structure-ref
                                                                _g9018490194_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9019190215_
                                                               (##unchecked-structure-ref
                                                                _g9018490194_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9019190215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9019290218_
                            (##unchecked-structure-ref
                             _g9018490194_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9022090222_)
                              (eq? _g9022090222_ 'read-module-body))
                            _e9019290218_)
                           (_K9018890206_)
                           (_else9018690202_)))
                     (_else9018690202_)))
               (_else9018690202_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude90179_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e90225_
                                        ((lambda (_xport90228_)
                                           (let ((_proc90231_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport90228_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc90231_)
                                                 _proc90231_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path90085_
                                                  _pre90175_
                                                  _proc90231_))))
                                         _$e90225_)
                                        _default-read-module-body90087_)))
                                 (_path-id90235_
                                  (gx#core-module-path->namespace _path90085_))
                                 (_pkg-id90237_
                                  (if _pkg90177_
                                      (string-append
                                       _pkg90177_
                                       '"/"
                                       _path-id90235_)
                                      _path-id90235_))
                                 (_module-id90239_
                                  (string->symbol _pkg-id90237_))
                                 (_module-ns90244_
                                  (let ((_$e90241_ _ns90176_))
                                    (if _$e90241_ _$e90241_ _pkg-id90237_)))
                                 (_body90247_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body90233_ _inp90169_))
                                   gx#current-module-reader-path
                                   _path90085_
                                   gx#current-module-reader-args
                                   _args90173_)))
                            (values _prelude90179_
                                    _module-id90239_
                                    _module-ns90244_
                                    _body90247_)))))))
                 (_string-e90089_
                  (lambda (_obj90166_ _what90167_)
                    (if (string? _obj90166_)
                        _obj90166_
                        (if (symbol? _obj90166_)
                            (symbol->string _obj90166_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what90167_)
                             _path90085_
                             _obj90166_)))))
                 (_read-lang-args90090_
                  (lambda (_inp90121_ _args90122_)
                    (let* ((_args9012390131_ _args90122_)
                           (_else9012590139_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path90085_)))
                           (_K9012790154_
                            (lambda (_args90142_ _prelude90143_)
                              (let* ((_pkg90145_
                                      (pgetq__0 'package: _args90142_))
                                     (_pkg90147_
                                      (if _pkg90145_
                                          (_string-e90089_
                                           _pkg90145_
                                           '"package")
                                          '#f))
                                     (_ns90149_
                                      (pgetq__0 'namespace: _args90142_))
                                     (_ns90151_
                                      (if _ns90149_
                                          (_string-e90089_
                                           _ns90149_
                                           '"namespace")
                                          '#f)))
                                (_read-body90088_
                                 _inp90121_
                                 _prelude90143_
                                 _ns90151_
                                 _pkg90147_
                                 _args90142_)))))
                      (if (##pair? _args9012390131_)
                          (let ((_hd9012890157_ (##car _args9012390131_))
                                (_tl9012990159_ (##cdr _args9012390131_)))
                            (let* ((_prelude90162_ _hd9012890157_)
                                   (_args90164_ _tl9012990159_))
                              (_K9012790154_ _args90164_ _prelude90162_)))
                          (_else9012590139_)))))
                 (_read-lang90091_
                  (lambda (_inp90096_)
                    (let* ((_head90098_ (read-line _inp90096_))
                           (_$e90100_ (string-index__0 _head90098_ '#\space)))
                      (if _$e90100_
                          ((lambda (_ix90103_)
                             (let ((_lang90105_
                                    (substring _head90098_ '0 _ix90103_)))
                               (if (equal? _lang90105_ '"#lang")
                                   (let* ((_rest90107_
                                           (substring
                                            _head90098_
                                            (fx+ _ix90103_ '1)
                                            (string-length _head90098_)))
                                          (_args90118_
                                           (with-catch
                                            (lambda (_g9010890110_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path90085_
                                               _g9010890110_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest90107_
                                               (lambda (_g9011390115_)
                                                 (read-all
                                                  _g9011390115_
                                                  read)))))))
                                     (_read-lang-args90090_
                                      _inp90096_
                                      _args90118_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path90085_))))
                           _$e90100_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path90085_)))))
                 (_read-e90092_
                  (lambda (_inp90094_)
                    (if (eq? (peek-char _inp90094_) '#\#)
                        (_read-lang90091_ _inp90094_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path90085_)))))
          (gx#call-with-input-source-file _path90085_ _read-e90092_))))
    (define gx#core-read-module-package
      (lambda (_path90039_ _pre90040_ _ns90041_)
        (letrec ((_string-e90043_
                  (lambda (_e90083_)
                    (if (symbol? _e90083_)
                        (symbol->string _e90083_)
                        (if (string? _e90083_)
                            _e90083_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e90083_))))))
          (let _lp90045_ ((_dir90047_ (path-directory _path90039_))
                          (_pkg-path90048_ '()))
            (let ((_gerbil.pkg90050_ (path-expand '"gerbil.pkg" _dir90047_)))
              (if (file-exists? _gerbil.pkg90050_)
                  (let ((_plist90052_
                         (gx#core-library-package-plist__% _dir90047_ '#t)))
                    (if (null? _plist90052_)
                        (let ((_pkg90054_
                               (if (not (null? _pkg-path90048_))
                                   (string-join _pkg-path90048_ '"/")
                                   '#f)))
                          (values _pre90040_ _ns90041_ _pkg90054_))
                        (if (list? _plist90052_)
                            (let* ((_root90056_
                                    (pgetq__0 'package: _plist90052_))
                                   (_pkg90060_
                                    (let ((_pkg-path90058_
                                           (if _root90056_
                                               (cons (_string-e90043_
                                                      _root90056_)
                                                     _pkg-path90048_)
                                               _pkg-path90048_)))
                                      (if (not (null? _pkg-path90058_))
                                          (string-join _pkg-path90058_ '"/")
                                          '#f)))
                                   (_ns90067_
                                    (let ((_ns90065_
                                           (let ((_$e90062_ _ns90041_))
                                             (if _$e90062_
                                                 _$e90062_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist90052_)))))
                                      (if _ns90065_
                                          (_string-e90043_ _ns90065_)
                                          '#f)))
                                   (_pre90072_
                                    (let ((_$e90069_ _pre90040_))
                                      (if _$e90069_
                                          _$e90069_
                                          (pgetq__0 'prelude: _plist90052_)))))
                              (values _pre90072_ _ns90067_ _pkg90060_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist90052_))))
                  (let ((_dir*90075_
                         (path-strip-trailing-directory-separator _dir90047_)))
                    (if (or (string-empty? _dir*90075_)
                            (equal? _dir90047_ _dir*90075_))
                        (values _pre90040_ _ns90041_ '#f)
                        (let ((_xpath90080_ (path-strip-directory _dir*90075_))
                              (_xdir90081_ (path-directory _dir*90075_)))
                          (_lp90045_
                           _xdir90081_
                           (cons _xpath90080_ _pkg-path90048_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path90037_)
        (path-strip-extension (path-strip-directory _path90037_))))
    (define gx#core-module-path->id
      (lambda (_path90035_)
        (string->symbol (gx#core-module-path->namespace _path90035_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path90014_ _rel90015_)
        (let* ((_path90017_ (gx#stx-e _stx-path90014_))
               (_path90019_
                (if (string-empty? (path-extension _path90017_))
                    (string-append _path90017_ '".ss")
                    _path90017_)))
          (gx#core-resolve-path__%
           _path90019_
           (let ((_$e90022_ (gx#stx-source _stx-path90014_)))
             (if _$e90022_ _$e90022_ _rel90015_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path90028_)
        (let ((_rel90030_ '#f))
          (gx#core-resolve-module-path__% _stx-path90028_ _rel90030_))))
    (define gx#core-resolve-module-path
      (lambda _g91598_
        (let ((_g91597_ (##length _g91598_)))
          (cond ((##fx= _g91597_ 1)
                 (apply (lambda (_stx-path90028_)
                          (gx#core-resolve-module-path__0 _stx-path90028_))
                        _g91598_))
                ((##fx= _g91597_ 2)
                 (apply (lambda (_stx-path90032_ _rel90033_)
                          (gx#core-resolve-module-path__%
                           _stx-path90032_
                           _rel90033_))
                        _g91598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g91598_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath89900_)
        (let* ((_spath89902_ (symbol->string (gx#stx-e _libpath89900_)))
               (_spath89904_
                (substring _spath89902_ '1 (string-length _spath89902_)))
               (_ext89906_ (path-extension _spath89904_))
               (_ssi89908_
                (if (string-empty? _ext89906_)
                    (string-append _spath89904_ '".ssi")
                    (string-append
                     (path-strip-extension _spath89904_)
                     '".ssi")))
               (_srcs89912_
                (if (string-empty? _ext89906_)
                    (map (lambda (_ext89910_)
                           (string-append _spath89904_ _ext89910_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath89904_ '()))))
          (let _lp89915_ ((_rest89917_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest8991889927_ _rest89917_)
                   (_E8992189931_
                    (lambda ()
                      (error '"No clause matching" _rest8991889927_))))
              (let ((_K8992390001_
                     (lambda (_rest89942_ _dir89943_)
                       (letrec ((_resolve89945_
                                 (lambda (_ssi89957_ _srcs89958_)
                                   (let ((_compiled-path89960_
                                          (path-expand _ssi89957_ _dir89943_)))
                                     (if (file-exists? _compiled-path89960_)
                                         (path-normalize _compiled-path89960_)
                                         (let _lpr89962_ ((_rest-src89964_
                                                           _srcs89958_))
                                           (let* ((_rest-src8996589973_
                                                   _rest-src89964_)
                                                  (_else8996789981_
                                                   (lambda ()
                                                     (_lp89915_ _rest89942_)))
                                                  (_K8996989989_
                                                   (lambda (_rest-src89984_
                                                            _src89985_)
                                                     (let ((_src-path89987_
                                                            (path-expand
                                                             _src89985_
                                                             _dir89943_)))
                                                       (if (file-exists?
                                                            _src-path89987_)
                                                           (path-normalize
                                                            _src-path89987_)
                                                           (_lpr89962_
                                                            _rest-src89984_))))))
                                             (if (##pair? _rest-src8996589973_)
                                                 (let ((_hd8997089992_
                                                        (##car _rest-src8996589973_))
                                                       (_tl8997189994_
                                                        (##cdr _rest-src8996589973_)))
                                                   (let* ((_src89997_
                                                           _hd8997089992_)
                                                          (_rest-src89999_
                                                           _tl8997189994_))
                                                     (_K8996989989_
                                                      _rest-src89999_
                                                      _src89997_)))
                                                 (_else8996789981_)))))))))
                         (let ((_$e89947_
                                (gx#core-library-package-path-prefix
                                 _dir89943_)))
                           (if _$e89947_
                               ((lambda (_prefix89950_)
                                  (if (string-prefix?
                                       _prefix89950_
                                       _spath89904_)
                                      (let ((_ssi89954_
                                             (substring
                                              _ssi89908_
                                              (string-length _prefix89950_)
                                              (string-length _ssi89908_)))
                                            (_srcs89955_
                                             (map (lambda (_src89952_)
                                                    (substring
                                                     _src89952_
                                                     (string-length
                                                      _prefix89950_)
                                                     (string-length
                                                      _src89952_)))
                                                  _srcs89912_)))
                                        (_resolve89945_
                                         _ssi89954_
                                         _srcs89955_))
                                      (_lp89915_ _rest89942_)))
                                _$e89947_)
                               (_resolve89945_ _ssi89908_ _srcs89912_))))))
                    (_K8992289936_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath89900_))))
                (let ((_try-match8992089939_
                       (lambda ()
                         (if (##null? _rest8991889927_)
                             (_K8992289936_)
                             (_E8992189931_)))))
                  (if (##pair? _rest8991889927_)
                      (let ((_tl8992590006_ (##cdr _rest8991889927_))
                            (_hd8992490004_ (##car _rest8991889927_)))
                        (let ((_dir90009_ _hd8992490004_)
                              (_rest90011_ _tl8992590006_))
                          (_K8992390001_ _rest90011_ _dir90009_)))
                      (_try-match8992089939_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath89873_)
        (letrec ((_resolve89875_
                  (lambda (_path89892_ _base89893_)
                    (let ((_$e89895_ (string-rindex__0 _base89893_ '#\/)))
                      (if _$e89895_
                          ((lambda (_idx89898_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base89893_ '0 _idx89898_)
                                '"/"
                                _path89892_))))
                           _$e89895_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path89892_))))))))
          (let ((_spath89877_ (symbol->string (gx#stx-e _modpath89873_)))
                (_mod89878_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod89878_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath89873_))
            (let ((_mpath89880_
                   (symbol->string
                    (##structure-ref
                     _mod89878_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp89882_ ((_spath89884_ _spath89877_)
                              (_mpath89885_ _mpath89880_))
                (if (string-prefix? '"../" _spath89884_)
                    (let ((_$e89887_ (string-rindex__0 _mpath89885_ '#\/)))
                      (if _$e89887_
                          ((lambda (_idx89890_)
                             (_lp89882_
                              (substring
                               _spath89884_
                               '3
                               (string-length _spath89884_))
                              (substring _mpath89885_ '0 _idx89890_)))
                           _$e89887_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath89873_)))
                    (if (string-prefix? '"./" _spath89884_)
                        (_lp89882_
                         (substring
                          _spath89884_
                          '2
                          (string-length _spath89884_))
                         _mpath89885_)
                        (_resolve89875_ _spath89884_ _mpath89885_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir89866_)
        (let ((_$e89868_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir89866_))))
          (if _$e89868_
              ((lambda (_pkg89871_)
                 (string-append (symbol->string _pkg89871_) '"/"))
               _$e89868_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir89838_ _exists?89839_)
        (let* ((_cache89841_ (gx#core-library-package-cache))
               (_$e89843_ (hash-get _cache89841_ _dir89838_)))
          (if _$e89843_
              (values _$e89843_)
              (let* ((_gerbil.pkg89846_ (path-expand '"gerbil.pkg" _dir89838_))
                     (_plist89853_
                      (if (or _exists?89839_ (file-exists? _gerbil.pkg89846_))
                          (let ((_e89851_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg89846_
                                  read)))
                            (if (eof-object? _e89851_)
                                '()
                                (if (list? _e89851_)
                                    _e89851_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg89846_
                                     _e89851_))))
                          '())))
                (hash-put! _cache89841_ _dir89838_ _plist89853_)
                _plist89853_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir89859_)
        (let ((_exists?89861_ '#f))
          (gx#core-library-package-plist__% _dir89859_ _exists?89861_))))
    (define gx#core-library-package-plist
      (lambda _g91600_
        (let ((_g91599_ (##length _g91600_)))
          (cond ((##fx= _g91599_ 1)
                 (apply (lambda (_dir89859_)
                          (gx#core-library-package-plist__0 _dir89859_))
                        _g91600_))
                ((##fx= _g91599_ 2)
                 (apply (lambda (_dir89863_ _exists?89864_)
                          (gx#core-library-package-plist__%
                           _dir89863_
                           _exists?89864_))
                        _g91600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g91600_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e89832_ (gx#current-expander-module-library-package-cache)))
          (if _$e89832_
              (values _$e89832_)
              (let ((_cache89835_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache89835_)
                _cache89835_)))))
    (define gx#core-library-module-path?
      (lambda (_stx89829_) (gx#core-special-module-path? _stx89829_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx89827_) (gx#core-special-module-path? _stx89827_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx89822_ _char89823_)
        (if (gx#identifier? _stx89822_)
            (if (interned-symbol? (gx#stx-e _stx89822_))
                (let ((_str89825_ (symbol->string (gx#stx-e _stx89822_))))
                  (if (fx> (string-length _str89825_) '1)
                      (eq? (string-ref _str89825_ '0) _char89823_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx89816_)
        (gx#core-bound-identifier?__%
         _stx89816_
         (lambda (_g8981789819_)
           (gx#expander-binding?__% _g8981789819_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx89810_)
        (gx#core-bound-identifier?__%
         _stx89810_
         (lambda (_g8981189813_)
           (gx#expander-binding?__% _g8981189813_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx89797_)
        (letrec ((_module-prelude?89799_
                  (lambda (_e89805_)
                    (let ((_$e89807_
                           (##structure-instance-of?
                            _e89805_
                            'gx#module-context::t)))
                      (if _$e89807_
                          _$e89807_
                          (##structure-instance-of?
                           _e89805_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx89797_
           (lambda (_g8980089802_)
             (gx#expander-binding?__%
              _g8980089802_
              _module-prelude?89799_))))))
    (define gx#core-bind-import!__%
      (lambda (_in89727_ _ctx89728_ _force-weak?89729_)
        (let* ((_in8973089739_ _in89727_)
               (_E8973289743_
                (lambda () (error '"No clause matching" _in8973089739_)))
               (_K8973389756_
                (lambda (_weak?89746_ _phi89747_ _key89748_ _source89749_)
                  (gx#core-bind!__%
                   _key89748_
                   (let ((_e89751_
                          (gx#core-resolve-module-export _source89749_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e89751_ '1 gx#binding::t '#f)
                      _key89748_
                      _phi89747_
                      _e89751_
                      (##unchecked-structure-ref
                       _source89749_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e89753_ _force-weak?89729_))
                        (if _$e89753_ _$e89753_ _weak?89746_))))
                   gx#core-context-rebind?
                   _phi89747_
                   _ctx89728_))))
          (if (##structure-direct-instance-of?
               _in8973089739_
               'gx#module-import::t)
              (let* ((_e8973489759_
                      (##unchecked-structure-ref
                       _in8973089739_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source89762_ _e8973489759_)
                     (_e8973589764_
                      (##unchecked-structure-ref
                       _in8973089739_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key89767_ _e8973589764_)
                     (_e8973689769_
                      (##unchecked-structure-ref
                       _in8973089739_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi89772_ _e8973689769_)
                     (_e8973789774_
                      (##unchecked-structure-ref
                       _in8973089739_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?89777_ _e8973789774_))
                (_K8973389756_
                 _weak?89777_
                 _phi89772_
                 _key89767_
                 _source89762_))
              (_E8973289743_)))))
    (define gx#core-bind-import!__0
      (lambda (_in89782_)
        (let* ((_ctx89784_ (gx#current-expander-context))
               (_force-weak?89786_ '#f))
          (gx#core-bind-import!__% _in89782_ _ctx89784_ _force-weak?89786_))))
    (define gx#core-bind-import!__1
      (lambda (_in89788_ _ctx89789_)
        (let ((_force-weak?89791_ '#f))
          (gx#core-bind-import!__% _in89788_ _ctx89789_ _force-weak?89791_))))
    (define gx#core-bind-import!
      (lambda _g91602_
        (let ((_g91601_ (##length _g91602_)))
          (cond ((##fx= _g91601_ 1)
                 (apply (lambda (_in89782_)
                          (gx#core-bind-import!__0 _in89782_))
                        _g91602_))
                ((##fx= _g91601_ 2)
                 (apply (lambda (_in89788_ _ctx89789_)
                          (gx#core-bind-import!__1 _in89788_ _ctx89789_))
                        _g91602_))
                ((##fx= _g91601_ 3)
                 (apply (lambda (_in89793_ _ctx89794_ _force-weak?89795_)
                          (gx#core-bind-import!__%
                           _in89793_
                           _ctx89794_
                           _force-weak?89795_))
                        _g91602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g91602_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in89713_ _ctx89714_)
        (gx#core-bind-import!__% _in89713_ _ctx89714_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in89719_)
        (let ((_ctx89721_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in89719_ _ctx89721_))))
    (define gx#core-bind-weak-import!
      (lambda _g91604_
        (let ((_g91603_ (##length _g91604_)))
          (cond ((##fx= _g91603_ 1)
                 (apply (lambda (_in89719_)
                          (gx#core-bind-weak-import!__0 _in89719_))
                        _g91604_))
                ((##fx= _g91603_ 2)
                 (apply (lambda (_in89723_ _ctx89724_)
                          (gx#core-bind-weak-import!__% _in89723_ _ctx89724_))
                        _g91604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g91604_))))))
    (define gx#core-resolve-module-export
      (lambda (_out89604_)
        (letrec ((_subst89606_
                  (lambda (_key89652_)
                    (let* ((_key8965389661_ _key89652_)
                           (_else8965589669_ (lambda () _key89652_))
                           (_K8965789700_
                            (lambda (_mark89672_ _id89673_)
                              (let* ((_mark8967489680_ _mark89672_)
                                     (_E8967689684_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8967489680_)))
                                     (_K8967789692_
                                      (lambda (_subst89687_)
                                        (let ((_$e89689_
                                               (if _subst89687_
                                                   (hash-get
                                                    _subst89687_
                                                    _id89673_)
                                                   '#f)))
                                          (if _$e89689_
                                              _$e89689_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key89652_))))))
                                (if (##structure-instance-of?
                                     _mark8967489680_
                                     'gx#expander-mark::t)
                                    (let* ((_e8967889695_
                                            (##unchecked-structure-ref
                                             _mark8967489680_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst89698_ _e8967889695_))
                                      (_K8967789692_ _subst89698_))
                                    (_E8967689684_))))))
                      (if (##pair? _key8965389661_)
                          (let ((_hd8965889703_ (##car _key8965389661_))
                                (_tl8965989705_ (##cdr _key8965389661_)))
                            (let* ((_id89708_ _hd8965889703_)
                                   (_mark89710_ _tl8965989705_))
                              (_K8965789700_ _mark89710_ _id89708_)))
                          (_else8965589669_))))))
          (let* ((_out8960789617_ _out89604_)
                 (_E8960989621_
                  (lambda () (error '"No clause matching" _out8960789617_)))
                 (_K8961089628_
                  (lambda (_phi89624_ _key89625_ _ctx89626_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx89626_ _phi89624_)
                     (_subst89606_ _key89625_)))))
            (if (##structure-direct-instance-of?
                 _out8960789617_
                 'gx#module-export::t)
                (let* ((_e8961189631_
                        (##unchecked-structure-ref
                         _out8960789617_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx89634_ _e8961189631_)
                       (_e8961289636_
                        (##unchecked-structure-ref
                         _out8960789617_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key89639_ _e8961289636_)
                       (_e8961389641_
                        (##unchecked-structure-ref
                         _out8960789617_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi89644_ _e8961389641_)
                       (_e8961489646_
                        (##unchecked-structure-ref
                         _out8960789617_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e8961589649_
                        (##unchecked-structure-ref
                         _out8960789617_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K8961089628_ _phi89644_ _key89639_ _ctx89634_))
                (_E8960989621_))))))
    (define gx#core-module-export->import__%
      (lambda (_out89529_ _rename89530_ _dphi89531_)
        (let* ((_out8953289542_ _out89529_)
               (_E8953489546_
                (lambda () (error '"No clause matching" _out8953289542_)))
               (_K8953589558_
                (lambda (_weak?89549_
                         _name89550_
                         _phi89551_
                         _key89552_
                         _ctx89553_)
                  (##structure
                   gx#module-import::t
                   _out89529_
                   (let ((_$e89555_ _rename89530_))
                     (if _$e89555_ _$e89555_ _name89550_))
                   (fx+ _phi89551_ _dphi89531_)
                   _weak?89549_))))
          (if (##structure-direct-instance-of?
               _out8953289542_
               'gx#module-export::t)
              (let* ((_e8953689561_
                      (##unchecked-structure-ref
                       _out8953289542_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx89564_ _e8953689561_)
                     (_e8953789566_
                      (##unchecked-structure-ref
                       _out8953289542_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key89569_ _e8953789566_)
                     (_e8953889571_
                      (##unchecked-structure-ref
                       _out8953289542_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi89574_ _e8953889571_)
                     (_e8953989576_
                      (##unchecked-structure-ref
                       _out8953289542_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name89579_ _e8953989576_)
                     (_e8954089581_
                      (##unchecked-structure-ref
                       _out8953289542_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?89584_ _e8954089581_))
                (_K8953589558_
                 _weak?89584_
                 _name89579_
                 _phi89574_
                 _key89569_
                 _ctx89564_))
              (_E8953489546_)))))
    (define gx#core-module-export->import__0
      (lambda (_out89589_)
        (let* ((_rename89591_ '#f) (_dphi89593_ '0))
          (gx#core-module-export->import__%
           _out89589_
           _rename89591_
           _dphi89593_))))
    (define gx#core-module-export->import__1
      (lambda (_out89595_ _rename89596_)
        (let ((_dphi89598_ '0))
          (gx#core-module-export->import__%
           _out89595_
           _rename89596_
           _dphi89598_))))
    (define gx#core-module-export->import
      (lambda _g91606_
        (let ((_g91605_ (##length _g91606_)))
          (cond ((##fx= _g91605_ 1)
                 (apply (lambda (_out89589_)
                          (gx#core-module-export->import__0 _out89589_))
                        _g91606_))
                ((##fx= _g91605_ 2)
                 (apply (lambda (_out89595_ _rename89596_)
                          (gx#core-module-export->import__1
                           _out89595_
                           _rename89596_))
                        _g91606_))
                ((##fx= _g91605_ 3)
                 (apply (lambda (_out89600_ _rename89601_ _dphi89602_)
                          (gx#core-module-export->import__%
                           _out89600_
                           _rename89601_
                           _dphi89602_))
                        _g91606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g91606_))))))
    (define gx#core-expand-module%
      (lambda (_stx89457_)
        (letrec ((_make-context89459_
                  (lambda (_id89510_)
                    (let* ((_super89512_ (gx#current-expander-context))
                           (_bind-id89514_ (gx#stx-e _id89510_))
                           (_mod-id89516_
                            (if (##structure-instance-of?
                                 _super89512_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super89512_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id89514_)
                                _bind-id89514_))
                           (_ns89518_ (symbol->string _mod-id89516_))
                           (_path89525_
                            (if (##structure-instance-of?
                                 _super89512_
                                 'gx#module-context::t)
                                (let ((_path89520_
                                       (##unchecked-structure-ref
                                        _super89512_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path89520_)
                                          (null? _path89520_))
                                      (cons _bind-id89514_ _path89520_)
                                      (if (not _path89520_)
                                          _bind-id89514_
                                          (cons _bind-id89514_
                                                (cons _path89520_ '())))))
                                _bind-id89514_)))
                      (let ((__obj91582
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
                         __obj91582
                         _mod-id89516_
                         _super89512_
                         _ns89518_
                         _path89525_)
                        __obj91582)))))
          (let* ((_e8946089470_ _stx89457_)
                 (_E8946289474_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8946089470_)))
                 (_E8946189506_
                  (lambda ()
                    (if (gx#stx-pair? _e8946089470_)
                        (let ((_e8946389478_ (gx#syntax-e _e8946089470_)))
                          (let ((_hd8946489481_ (##car _e8946389478_))
                                (_tl8946589483_ (##cdr _e8946389478_)))
                            (if (gx#stx-pair? _tl8946589483_)
                                (let ((_e8946689486_
                                       (gx#syntax-e _tl8946589483_)))
                                  (let ((_hd8946789489_ (##car _e8946689486_))
                                        (_tl8946889491_ (##cdr _e8946689486_)))
                                    (let* ((_id89494_ _hd8946789489_)
                                           (_body89496_ _tl8946889491_))
                                      (if (and (gx#identifier? _id89494_)
                                               (gx#stx-list? _body89496_))
                                          (let* ((_ctx89498_
                                                  (_make-context89459_
                                                   _id89494_))
                                                 (_body89500_
                                                  (gx#core-expand-module-begin
                                                   _body89496_
                                                   _ctx89498_))
                                                 (_body89502_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body89500_)
                                                   (gx#stx-source
                                                    _stx89457_))))
                                            (##unchecked-structure-set!
                                             _ctx89498_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body89502_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx89498_
                                             _body89502_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id89494_
                                             _ctx89498_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id89494_)
                                              _body89502_)
                                             (gx#stx-source _stx89457_)))
                                          (_E8946289474_)))))
                                (_E8946289474_))))
                        (_E8946289474_)))))
            (_E8946189506_)))))
    (define gx#core-expand-module-begin
      (lambda (_body89423_ _ctx89424_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx89427_
                   (gx#core-expand-head (cons '%%begin-module _body89423_)))
                  (_e8942889435_ _stx89427_)
                  (_E8943089439_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx89427_)))
                  (_E8942989453_
                   (lambda ()
                     (if (gx#stx-pair? _e8942889435_)
                         (let ((_e8943189443_ (gx#syntax-e _e8942889435_)))
                           (let ((_hd8943289446_ (##car _e8943189443_))
                                 (_tl8943389448_ (##cdr _e8943189443_)))
                             (if (and (gx#identifier? _hd8943289446_)
                                      (gx#core-identifier=?
                                       _hd8943289446_
                                       '%#begin-module))
                                 (let ((_body89451_ _tl8943389448_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx89427_)
                                           _body89451_
                                           (gx#core-expand-module-body
                                            _body89451_))
                                       (_E8943089439_)))
                                 (_E8943089439_))))
                         (_E8943089439_)))))
             (_E8942989453_)))
         gx#current-expander-context
         _ctx89424_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body89219_)
        (letrec ((_expand-special89221_
                  (lambda (_hd89350_ _K89351_ _rest89352_ _r89353_)
                    (let* ((_e8935489371_ _hd89350_)
                           (_E8936689375_
                            (lambda ()
                              (_K89351_
                               _rest89352_
                               (cons (gx#core-expand-top _hd89350_)
                                     _r89353_))))
                           (_E8935689387_
                            (lambda ()
                              (if (gx#stx-pair? _e8935489371_)
                                  (let ((_e8936789379_
                                         (gx#syntax-e _e8935489371_)))
                                    (let ((_hd8936889382_
                                           (##car _e8936789379_))
                                          (_tl8936989384_
                                           (##cdr _e8936789379_)))
                                      (if (and (gx#identifier? _hd8936889382_)
                                               (gx#core-identifier=?
                                                _hd8936889382_
                                                '%#export))
                                          (if '#t
                                              (_K89351_
                                               _rest89352_
                                               (cons _hd89350_ _r89353_))
                                              (_E8936689375_))
                                          (_E8936689375_))))
                                  (_E8936689375_))))
                           (_E8935589419_
                            (lambda ()
                              (if (gx#stx-pair? _e8935489371_)
                                  (let ((_e8935789391_
                                         (gx#syntax-e _e8935489371_)))
                                    (let ((_hd8935889394_
                                           (##car _e8935789391_))
                                          (_tl8935989396_
                                           (##cdr _e8935789391_)))
                                      (if (and (gx#identifier? _hd8935889394_)
                                               (gx#core-identifier=?
                                                _hd8935889394_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8935989396_)
                                              (let ((_e8936089399_
                                                     (gx#syntax-e
                                                      _tl8935989396_)))
                                                (let ((_hd8936189402_
                                                       (##car _e8936089399_))
                                                      (_tl8936289404_
                                                       (##cdr _e8936089399_)))
                                                  (let ((_hd-bind89407_
                                                         _hd8936189402_))
                                                    (if (gx#stx-pair?
                                                         _tl8936289404_)
                                                        (let ((_e8936389409_
                                                               (gx#syntax-e
                                                                _tl8936289404_)))
                                                          (let ((_hd8936489412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8936389409_))
                        (_tl8936589414_ (##cdr _e8936389409_)))
                    (let ((_expr89417_ _hd8936489412_))
                      (if (gx#stx-null? _tl8936589414_)
                          (if (gx#core-bind-values? _hd-bind89407_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89407_)
                                (_K89351_
                                 _rest89352_
                                 (cons _hd89350_ _r89353_)))
                              (_E8935689387_))
                          (_E8935689387_)))))
                (_E8935689387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8935689387_))
                                          (_E8935689387_))))
                                  (_E8935689387_)))))
                      (_E8935589419_))))
                 (_expand-body89222_
                  (lambda (_rbody89224_)
                    (let _lp89226_ ((_rest89228_ _rbody89224_)
                                    (_body89229_ '()))
                      (let* ((_rest8923089238_ _rest89228_)
                             (_else8923289246_ (lambda () _body89229_))
                             (_K8923489338_
                              (lambda (_rest89249_ _hd89250_)
                                (let* ((_e8925189272_ _hd89250_)
                                       (_E8926789276_
                                        (lambda ()
                                          (_lp89226_
                                           _rest89249_
                                           (cons (gx#core-expand-expression
                                                  _hd89250_)
                                                 _body89229_))))
                                       (_E8926389290_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8925189272_)
                                              (let ((_e8926889280_
                                                     (gx#syntax-e
                                                      _e8925189272_)))
                                                (let ((_hd8926989283_
                                                       (##car _e8926889280_))
                                                      (_tl8927089285_
                                                       (##cdr _e8926889280_)))
                                                  (let ((_form89288_
                                                         _hd8926989283_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form89288_
                                                         gx#special-form-binding?)
                                                        (_lp89226_
                                                         _rest89249_
                                                         (cons _hd89250_
                                                               _body89229_))
                                                        (_E8926789276_)))))
                                              (_E8926789276_))))
                                       (_E8925389302_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8925189272_)
                                              (let ((_e8926489294_
                                                     (gx#syntax-e
                                                      _e8925189272_)))
                                                (let ((_hd8926589297_
                                                       (##car _e8926489294_))
                                                      (_tl8926689299_
                                                       (##cdr _e8926489294_)))
                                                  (if (and (gx#identifier?
                                                            _hd8926589297_)
                                                           (gx#core-identifier=?
                                                            _hd8926589297_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp89226_
                                                           _rest89249_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd89250_)
                         _body89229_))
                  (_E8926389290_))
              (_E8926389290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8926389290_))))
                                       (_E8925289334_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8925189272_)
                                              (let ((_e8925489306_
                                                     (gx#syntax-e
                                                      _e8925189272_)))
                                                (let ((_hd8925589309_
                                                       (##car _e8925489306_))
                                                      (_tl8925689311_
                                                       (##cdr _e8925489306_)))
                                                  (if (and (gx#identifier?
                                                            _hd8925589309_)
                                                           (gx#core-identifier=?
                                                            _hd8925589309_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8925689311_)
                                                          (let ((_e8925789314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8925689311_)))
                    (let ((_hd8925889317_ (##car _e8925789314_))
                          (_tl8925989319_ (##cdr _e8925789314_)))
                      (let ((_hd-bind89322_ _hd8925889317_))
                        (if (gx#stx-pair? _tl8925989319_)
                            (let ((_e8926089324_ (gx#syntax-e _tl8925989319_)))
                              (let ((_hd8926189327_ (##car _e8926089324_))
                                    (_tl8926289329_ (##cdr _e8926089324_)))
                                (let ((_expr89332_ _hd8926189327_))
                                  (if (gx#stx-null? _tl8926289329_)
                                      (if '#t
                                          (_lp89226_
                                           _rest89249_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind89322_)
                                                   (gx#core-expand-expression
                                                    _expr89332_))
                                                  (gx#stx-source _hd89250_))
                                                 _body89229_))
                                          (_E8925389302_))
                                      (_E8925389302_)))))
                            (_E8925389302_)))))
                  (_E8925389302_))
              (_E8925389302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8925389302_)))))
                                  (_E8925289334_)))))
                        (if (##pair? _rest8923089238_)
                            (let ((_hd8923589341_ (##car _rest8923089238_))
                                  (_tl8923689343_ (##cdr _rest8923089238_)))
                              (let* ((_hd89346_ _hd8923589341_)
                                     (_rest89348_ _tl8923689343_))
                                (_K8923489338_ _rest89348_ _hd89346_)))
                            (_else8923289246_)))))))
          (_expand-body89222_
           (gx#core-expand-block__%
            (cons '%#begin-module _body89219_)
            _expand-special89221_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx89062_
               _expanded?89063_
               _method89064_
               _current-phi89065_
               _expand189066_)
        (letrec ((_K89068_
                  (lambda (_rest89186_ _r89187_)
                    (let* ((_e8918889195_ _rest89186_)
                           (_E8919089199_ (lambda () _r89187_))
                           (_E8918989215_
                            (lambda ()
                              (if (gx#stx-pair? _e8918889195_)
                                  (let ((_e8919189203_
                                         (gx#syntax-e _e8918889195_)))
                                    (let ((_hd8919289206_
                                           (##car _e8919189203_))
                                          (_tl8919389208_
                                           (##cdr _e8919189203_)))
                                      (let* ((_hd89211_ _hd8919289206_)
                                             (_rest89213_ _tl8919389208_))
                                        (if '#t
                                            (_step89069_
                                             _hd89211_
                                             _rest89213_
                                             _r89187_)
                                            (_E8919089199_)))))
                                  (_E8919089199_)))))
                      (_E8918989215_))))
                 (_step89069_
                  (lambda (_hd89100_ _rest89101_ _r89102_)
                    (let* ((_e8910389121_ _hd89100_)
                           (_E8911689125_
                            (lambda ()
                              (if (_expanded?89063_ (gx#stx-e _hd89100_))
                                  (_K89068_
                                   _rest89101_
                                   (cons (gx#stx-e _hd89100_) _r89102_))
                                  (_expand189066_
                                   _hd89100_
                                   _K89068_
                                   _rest89101_
                                   _r89102_))))
                           (_E8911289141_
                            (lambda ()
                              (if (gx#stx-pair? _e8910389121_)
                                  (let ((_e8911789129_
                                         (gx#syntax-e _e8910389121_)))
                                    (let ((_hd8911889132_
                                           (##car _e8911789129_))
                                          (_tl8911989134_
                                           (##cdr _e8911789129_)))
                                      (let* ((_macro89137_ _hd8911889132_)
                                             (_body89139_ _tl8911989134_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro89137_
                                             gx#syntax-binding?)
                                            (_K89068_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro89137_)
                                                    _hd89100_
                                                    _method89064_)
                                                   _rest89101_)
                                             _r89102_)
                                            (_E8911689125_)))))
                                  (_E8911689125_))))
                           (_E8910589155_
                            (lambda ()
                              (if (gx#stx-pair? _e8910389121_)
                                  (let ((_e8911389145_
                                         (gx#syntax-e _e8910389121_)))
                                    (let ((_hd8911489148_
                                           (##car _e8911389145_))
                                          (_tl8911589150_
                                           (##cdr _e8911389145_)))
                                      (if (eq? (gx#stx-e _hd8911489148_)
                                               'begin:)
                                          (let ((_body89153_ _tl8911589150_))
                                            (if '#t
                                                (_K89068_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest89101_
                                                  _body89153_)
                                                 _r89102_)
                                                (_E8911289141_)))
                                          (_E8911289141_))))
                                  (_E8911289141_))))
                           (_E8910489182_
                            (lambda ()
                              (if (gx#stx-pair? _e8910389121_)
                                  (let ((_e8910689159_
                                         (gx#syntax-e _e8910389121_)))
                                    (let ((_hd8910789162_
                                           (##car _e8910689159_))
                                          (_tl8910889164_
                                           (##cdr _e8910689159_)))
                                      (if (eq? (gx#stx-e _hd8910789162_) 'phi:)
                                          (if (gx#stx-pair? _tl8910889164_)
                                              (let ((_e8910989167_
                                                     (gx#syntax-e
                                                      _tl8910889164_)))
                                                (let ((_hd8911089170_
                                                       (##car _e8910989167_))
                                                      (_tl8911189172_
                                                       (##cdr _e8910989167_)))
                                                  (let* ((_dphi89175_
                                                          _hd8911089170_)
                                                         (_body89177_
                                                          _tl8911189172_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi89175_)
                                                        (let ((_rbody89180_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K89068_ _body89177_ '()))
                        _current-phi89065_
                        (fx+ (gx#stx-e _dphi89175_) (_current-phi89065_)))))
                  (_K89068_ _rest89101_ (foldr1 cons _r89102_ _rbody89180_)))
                (_E8910589155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8910589155_))
                                          (_E8910589155_))))
                                  (_E8910589155_)))))
                      (_E8910489182_)))))
          (let* ((_e8907089077_ _stx89062_)
                 (_E8907289081_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8907089077_)))
                 (_E8907189096_
                  (lambda ()
                    (if (gx#stx-pair? _e8907089077_)
                        (let ((_e8907389085_ (gx#syntax-e _e8907089077_)))
                          (let ((_hd8907489088_ (##car _e8907389085_))
                                (_tl8907589090_ (##cdr _e8907389085_)))
                            (let ((_body89093_ _tl8907589090_))
                              (if '#t
                                  (if (_current-phi89065_)
                                      (_K89068_ _body89093_ '())
                                      (call-with-parameters
                                       (lambda () (_K89068_ _body89093_ '()))
                                       _current-phi89065_
                                       (gx#current-expander-phi)))
                                  (_E8907289081_)))))
                        (_E8907289081_)))))
            (_E8907189096_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx88729_ _internal-expand?88730_)
        (letrec ((_expand188732_
                  (lambda (_hd89042_ _K89043_ _rest89044_ _r89045_)
                    (if (gx#core-bound-module? _hd89042_)
                        (_import188733_
                         (gx#syntax-local-e__0 _hd89042_)
                         _K89043_
                         _rest89044_
                         _r89045_)
                        (if (gx#core-library-module-path? _hd89042_)
                            (_import188733_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd89042_))
                             _K89043_
                             _rest89044_
                             _r89045_)
                            (if (gx#core-library-relative-module-path?
                                 _hd89042_)
                                (_import188733_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd89042_))
                                 _K89043_
                                 _rest89044_
                                 _r89045_)
                                (let ((_e89047_ (gx#stx-e _hd89042_)))
                                  (if (pair? _e89047_)
                                      (let ((_$e89049_
                                             (gx#stx-e (car _e89047_))))
                                        (if (eq? 'spec: _$e89049_)
                                            (_import-spec88736_
                                             _hd89042_
                                             _K89043_
                                             _rest89044_
                                             _r89045_)
                                            (if (eq? 'in: _$e89049_)
                                                (_import-submodule88734_
                                                 _hd89042_
                                                 _K89043_
                                                 _rest89044_
                                                 _r89045_)
                                                (if (eq? 'runtime: _$e89049_)
                                                    (_import-runtime88735_
                                                     _hd89042_
                                                     _K89043_
                                                     _rest89044_
                                                     _r89045_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx88729_
                                                     _hd89042_)))))
                                      (if (string? _e89047_)
                                          (_import188733_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd89042_
                                             (gx#stx-source _stx88729_)))
                                           _K89043_
                                           _rest89044_
                                           _r89045_)
                                          (if (##structure-instance-of?
                                               _e89047_
                                               'gx#module-context::t)
                                              (_K89043_
                                               _rest89044_
                                               (cons _e89047_ _r89045_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx88729_
                                               _hd89042_))))))))))
                 (_import188733_
                  (lambda (_ctx89031_ _K89032_ _rest89033_ _r89034_)
                    (let ((_dphi89036_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K89032_
                       _rest89033_
                       (cons (##structure
                              gx#import-set::t
                              _ctx89031_
                              _dphi89036_
                              (map (lambda (_g8903789039_)
                                     (gx#core-module-export->import__%
                                      _g8903789039_
                                      '#f
                                      _dphi89036_))
                                   (##unchecked-structure-ref
                                    _ctx89031_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r89034_)))))
                 (_import-submodule88734_
                  (lambda (_hd88998_ _K88999_ _rest89000_ _r89001_)
                    (let* ((_e8900289009_ _hd88998_)
                           (_E8900489013_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8900289009_)))
                           (_E8900389027_
                            (lambda ()
                              (if (gx#stx-pair? _e8900289009_)
                                  (let ((_e8900589017_
                                         (gx#syntax-e _e8900289009_)))
                                    (let ((_hd8900689020_
                                           (##car _e8900589017_))
                                          (_tl8900789022_
                                           (##cdr _e8900589017_)))
                                      (let ((_spath89025_ _tl8900789022_))
                                        (if '#t
                                            (_import188733_
                                             (_import-spec-source88737_
                                              _spath89025_)
                                             _K88999_
                                             _rest89000_
                                             _r89001_)
                                            (_E8900489013_)))))
                                  (_E8900489013_)))))
                      (_E8900389027_))))
                 (_import-runtime88735_
                  (lambda (_hd88965_ _K88966_ _rest88967_ _r88968_)
                    (let* ((_e8896988976_ _hd88965_)
                           (_E8897188980_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8896988976_)))
                           (_E8897088994_
                            (lambda ()
                              (if (gx#stx-pair? _e8896988976_)
                                  (let ((_e8897288984_
                                         (gx#syntax-e _e8896988976_)))
                                    (let ((_hd8897388987_
                                           (##car _e8897288984_))
                                          (_tl8897488989_
                                           (##cdr _e8897288984_)))
                                      (let ((_spath88992_ _tl8897488989_))
                                        (if '#t
                                            (_K88966_
                                             _rest88967_
                                             (cons (_import-spec-source88737_
                                                    _spath88992_)
                                                   _r88968_))
                                            (_E8897188980_)))))
                                  (_E8897188980_)))))
                      (_E8897088994_))))
                 (_import-spec88736_
                  (lambda (_hd88804_ _K88805_ _rest88806_ _r88807_)
                    (let* ((_e8880888825_ _hd88804_)
                           (_E8881788829_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8880888825_)))
                           (_E8881088939_
                            (lambda ()
                              (if (gx#stx-pair? _e8880888825_)
                                  (let ((_e8881888833_
                                         (gx#syntax-e _e8880888825_)))
                                    (let ((_hd8881988836_
                                           (##car _e8881888833_))
                                          (_tl8882088838_
                                           (##cdr _e8881888833_)))
                                      (if (gx#stx-pair? _tl8882088838_)
                                          (let ((_e8882188841_
                                                 (gx#syntax-e _tl8882088838_)))
                                            (let ((_hd8882288844_
                                                   (##car _e8882188841_))
                                                  (_tl8882388846_
                                                   (##cdr _e8882188841_)))
                                              (let* ((_path88849_
                                                      _hd8882288844_)
                                                     (_specs88851_
                                                      _tl8882388846_))
                                                (if '#t
                                                    (let ((_src-ctx88853_
                                                           (_import-spec-source88737_
                                                            _path88849_))
                                                          (_exports88854_
                                                           (make-hash-table))
                                                          (_specs88855_
                                                           (gx#syntax->list
                                                            _specs88851_)))
                                                      (for-each
                                                       (lambda (_out88857_)
                                                         (hash-put!
                                                          _exports88854_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out88857_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out88857_
                         '4
                         gx#module-export::t
                         '#f))
                  _out88857_))
               (##unchecked-structure-ref
                _src-ctx88853_
                '9
                gx#module-context::t
                '#f))
              (_K88805_
               _rest88806_
               (foldl1 (lambda (_spec88859_ _r88860_)
                         (let* ((_e8886188877_ _spec88859_)
                                (_E8886388881_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e8886188877_)))
                                (_E8886288935_
                                 (lambda ()
                                   (if (gx#stx-pair? _e8886188877_)
                                       (let ((_e8886488885_
                                              (gx#syntax-e _e8886188877_)))
                                         (let ((_hd8886588888_
                                                (##car _e8886488885_))
                                               (_tl8886688890_
                                                (##cdr _e8886488885_)))
                                           (let ((_phi88893_ _hd8886588888_))
                                             (if (gx#stx-pair? _tl8886688890_)
                                                 (let ((_e8886788895_
                                                        (gx#syntax-e
                                                         _tl8886688890_)))
                                                   (let ((_hd8886888898_
                                                          (##car _e8886788895_))
                                                         (_tl8886988900_
                                                          (##cdr _e8886788895_)))
                                                     (let ((_name88903_
                                                            _hd8886888898_))
                                                       (if (gx#stx-pair?
                                                            _tl8886988900_)
                                                           (let ((_e8887088905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl8886988900_)))
                     (let ((_hd8887188908_ (##car _e8887088905_))
                           (_tl8887288910_ (##cdr _e8887088905_)))
                       (let ((_src-phi88913_ _hd8887188908_))
                         (if (gx#stx-pair? _tl8887288910_)
                             (let ((_e8887388915_
                                    (gx#syntax-e _tl8887288910_)))
                               (let ((_hd8887488918_ (##car _e8887388915_))
                                     (_tl8887588920_ (##cdr _e8887388915_)))
                                 (let ((_src-name88923_ _hd8887488918_))
                                   (if (gx#stx-null? _tl8887588920_)
                                       (if (and (gx#stx-fixnum? _src-phi88913_)
                                                (gx#identifier?
                                                 _src-name88923_)
                                                (gx#stx-fixnum? _phi88893_)
                                                (gx#identifier? _name88903_))
                                           (let ((_src-phi88925_
                                                  (gx#stx-e _src-phi88913_))
                                                 (_src-name88926_
                                                  (gx#core-identifier-key
                                                   _src-name88923_))
                                                 (_phi88927_
                                                  (gx#stx-e _phi88893_))
                                                 (_name88928_
                                                  (gx#core-identifier-key
                                                   _name88903_)))
                                             (let ((_$e88930_
                                                    (hash-get
                                                     _exports88854_
                                                     (cons _src-phi88925_
                                                           _src-name88926_))))
                                               (if _$e88930_
                                                   ((lambda (_out88933_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out88933_
                                                             _name88928_
                                                             (fx- _phi88927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi88925_))
                    _r88860_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e88930_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx88729_
                                                    _hd88804_))))
                                           (_E8886388881_))
                                       (_E8886388881_)))))
                             (_E8886388881_)))))
                   (_E8886388881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E8886388881_)))))
                                       (_E8886388881_)))))
                           (_E8886288935_)))
                       _r88807_
                       _specs88855_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8881788829_)))))
                                          (_E8881788829_))))
                                  (_E8881788829_))))
                           (_E8880988961_
                            (lambda ()
                              (if (gx#stx-pair? _e8880888825_)
                                  (let ((_e8881188943_
                                         (gx#syntax-e _e8880888825_)))
                                    (let ((_hd8881288946_
                                           (##car _e8881188943_))
                                          (_tl8881388948_
                                           (##cdr _e8881188943_)))
                                      (if (gx#stx-pair? _tl8881388948_)
                                          (let ((_e8881488951_
                                                 (gx#syntax-e _tl8881388948_)))
                                            (let ((_hd8881588954_
                                                   (##car _e8881488951_))
                                                  (_tl8881688956_
                                                   (##cdr _e8881488951_)))
                                              (let ((_path88959_
                                                     _hd8881588954_))
                                                (if (gx#stx-null?
                                                     _tl8881688956_)
                                                    (if '#t
                                                        (_K88805_
                                                         _rest88806_
                                                         (cons (_import-spec-source88737_
                                                                _path88959_)
                                                               _r88807_))
                                                        (_E8881088939_))
                                                    (_E8881088939_)))))
                                          (_E8881088939_))))
                                  (_E8881088939_)))))
                      (_E8880988961_))))
                 (_import-spec-source88737_
                  (lambda (_spath88802_)
                    (gx#core-import-nested-module _spath88802_ _stx88729_)))
                 (_import!88738_
                  (lambda (_rbody88751_)
                    (letrec* ((_current-ctx88753_
                               (gx#current-expander-context))
                              (_deps88754_ (make-hash-table-eq))
                              (_bind!88755_
                               (lambda (_hd88800_)
                                 (gx#core-bind-import!__1
                                  _hd88800_
                                  _current-ctx88753_))))
                      (let _lp88757_ ((_rest88759_ _rbody88751_)
                                      (_body88760_ '()))
                        (let* ((_rest8876188769_ _rest88759_)
                               (_else8876388779_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx88753_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx88753_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx88753_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body88760_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx88777_ _g91607_)
                                     (gx#eval-module _ctx88777_))
                                   _deps88754_)
                                  _body88760_))
                               (_K8876588788_
                                (lambda (_rest88782_ _hd88783_)
                                  (if (##structure-direct-instance-of?
                                       _hd88783_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!88755_ _hd88783_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd88783_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd88783_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps88754_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd88783_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd88783_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!88755_
                                             (##unchecked-structure-ref
                                              _hd88783_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd88783_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps88754_
                                                 (##unchecked-structure-ref
                                                  _hd88783_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e88785_
                                                 (##structure-instance-of?
                                                  _hd88783_
                                                  'gx#module-context::t)))
                                            (if _$e88785_
                                                _$e88785_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx88729_
                                                 _hd88783_)))))
                                  (_lp88757_
                                   _rest88782_
                                   (cons _hd88783_ _body88760_)))))
                          (if (##pair? _rest8876188769_)
                              (let ((_hd8876688791_ (##car _rest8876188769_))
                                    (_tl8876788793_ (##cdr _rest8876188769_)))
                                (let* ((_hd88796_ _hd8876688791_)
                                       (_rest88798_ _tl8876788793_))
                                  (_K8876588788_ _rest88798_ _hd88796_)))
                              (_else8876388779_)))))))
                 (_expanded-import?88739_
                  (lambda (_e88743_)
                    (let ((_$e88745_
                           (##structure-direct-instance-of?
                            _e88743_
                            'gx#import-set::t)))
                      (if _$e88745_
                          _$e88745_
                          (let ((_$e88748_
                                 (##structure-direct-instance-of?
                                  _e88743_
                                  'gx#module-import::t)))
                            (if _$e88748_
                                _$e88748_
                                (##structure-instance-of?
                                 _e88743_
                                 'gx#module-context::t))))))))
          (let ((_rbody88741_
                 (gx#core-expand-import/export
                  _stx88729_
                  _expanded-import?88739_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand188732_)))
            (if _internal-expand?88730_
                (reverse _rbody88741_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!88738_ _rbody88741_))
                 (gx#stx-source _stx88729_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx89055_)
        (let ((_internal-expand?89057_ '#f))
          (gx#core-expand-import%__% _stx89055_ _internal-expand?89057_))))
    (define gx#core-expand-import%
      (lambda _g91609_
        (let ((_g91608_ (##length _g91609_)))
          (cond ((##fx= _g91608_ 1)
                 (apply (lambda (_stx89055_)
                          (gx#core-expand-import%__0 _stx89055_))
                        _g91609_))
                ((##fx= _g91608_ 2)
                 (apply (lambda (_stx89059_ _internal-expand?89060_)
                          (gx#core-expand-import%__%
                           _stx89059_
                           _internal-expand?89060_))
                        _g91609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g91609_))))))
    (define gx#core-import-nested-module
      (lambda (_spath88656_ _where88657_)
        (let* ((_e8865888665_ _spath88656_)
               (_E8866088669_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8865888665_)))
               (_E8865988724_
                (lambda ()
                  (if (gx#stx-pair? _e8865888665_)
                      (let ((_e8866188673_ (gx#syntax-e _e8865888665_)))
                        (let ((_hd8866288676_ (##car _e8866188673_))
                              (_tl8866388678_ (##cdr _e8866188673_)))
                          (let* ((_origin88681_ _hd8866288676_)
                                 (_sub88683_ _tl8866388678_))
                            (if '#t
                                (let ((_origin-ctx88685_
                                       (if (gx#stx-false? _origin88681_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin88681_))))
                                  (let _lp88687_ ((_rest88689_ _sub88683_)
                                                  (_ctx88690_
                                                   _origin-ctx88685_))
                                    (let* ((_e8869188698_ _rest88689_)
                                           (_E8869388702_
                                            (lambda () _ctx88690_))
                                           (_E8869288720_
                                            (lambda ()
                                              (if (gx#stx-pair? _e8869188698_)
                                                  (let ((_e8869488706_
                                                         (gx#syntax-e
                                                          _e8869188698_)))
                                                    (let ((_hd8869588709_
                                                           (##car _e8869488706_))
                                                          (_tl8869688711_
                                                           (##cdr _e8869488706_)))
                                                      (let* ((_id88714_
                                                              _hd8869588709_)
                                                             (_rest88716_
                                                              _tl8869688711_))
                                                        (if '#t
                                                            (let ((_bind88718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id88714_ '0 _ctx88690_)))
                      (if (and (##structure-direct-instance-of?
                                _bind88718_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind88718_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where88657_
                           _spath88656_
                           _id88714_))
                      (_lp88687_
                       _rest88716_
                       (##unchecked-structure-ref
                        _bind88718_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E8869388702_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8869388702_)))))
                                      (_E8869288720_))))
                                (_E8866088669_)))))
                      (_E8866088669_)))))
          (_E8865988724_))))
    (define gx#core-expand-import-source
      (lambda (_hd88654_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd88654_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx88162_ _internal-expand?88163_)
        (letrec* ((_make-export__9153891539_
                   (lambda (_bind88602_ _phi88603_ _ctx88604_ _name88605_)
                     (let* ((_key88607_
                             (##unchecked-structure-ref
                              _bind88602_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key88609_
                             (if _name88605_
                                 (gx#core-identifier-key _name88605_)
                                 _key88607_)))
                       (##structure
                        gx#module-export::t
                        _ctx88604_
                        _key88607_
                        _phi88603_
                        _export-key88609_
                        (let ((_$e88612_
                               (##structure-instance-of?
                                _bind88602_
                                'gx#extern-binding::t)))
                          (if _$e88612_
                              _$e88612_
                              (##structure-direct-instance-of?
                               _bind88602_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9154091543_
                   (lambda (_bind88618_)
                     (let* ((_phi88620_ (gx#current-export-expander-phi))
                            (_ctx88622_ (gx#current-expander-context))
                            (_name88624_ '#f))
                       (_make-export__9153891539_
                        _bind88618_
                        _phi88620_
                        _ctx88622_
                        _name88624_))))
                  (_make-export__1__9154191544_
                   (lambda (_bind88626_ _phi88627_)
                     (let* ((_ctx88629_ (gx#current-expander-context))
                            (_name88631_ '#f))
                       (_make-export__9153891539_
                        _bind88626_
                        _phi88627_
                        _ctx88629_
                        _name88631_))))
                  (_make-export__2__9154291545_
                   (lambda (_bind88633_ _phi88634_ _ctx88635_)
                     (let ((_name88637_ '#f))
                       (_make-export__9153891539_
                        _bind88633_
                        _phi88634_
                        _ctx88635_
                        _name88637_))))
                  (_make-export88165_
                   (lambda _g91611_
                     (let ((_g91610_ (##length _g91611_)))
                       (cond ((##fx= _g91610_ 1)
                              (apply (lambda (_bind88618_)
                                       (_make-export__0__9154091543_
                                        _bind88618_))
                                     _g91611_))
                             ((##fx= _g91610_ 2)
                              (apply (lambda (_bind88626_ _phi88627_)
                                       (_make-export__1__9154191544_
                                        _bind88626_
                                        _phi88627_))
                                     _g91611_))
                             ((##fx= _g91610_ 3)
                              (apply (lambda (_bind88633_
                                              _phi88634_
                                              _ctx88635_)
                                       (_make-export__2__9154291545_
                                        _bind88633_
                                        _phi88634_
                                        _ctx88635_))
                                     _g91611_))
                             ((##fx= _g91610_ 4)
                              (apply (lambda (_bind88639_
                                              _phi88640_
                                              _ctx88641_
                                              _name88642_)
                                       (_make-export__9153891539_
                                        _bind88639_
                                        _phi88640_
                                        _ctx88641_
                                        _name88642_))
                                     _g91611_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g91611_))))))
                  (_expand188166_
                   (lambda (_hd88315_ _K88316_ _rest88317_ _r88318_)
                     (let* ((_e8831988351_ _hd88315_)
                            (_E8834688355_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx88162_
                                _hd88315_)))
                            (_E8833688434_
                             (lambda ()
                               (if (gx#stx-pair? _e8831988351_)
                                   (let ((_e8834788359_
                                          (gx#syntax-e _e8831988351_)))
                                     (let ((_hd8834888362_
                                            (##car _e8834788359_))
                                           (_tl8834988364_
                                            (##cdr _e8834788359_)))
                                       (if (eq? (gx#stx-e _hd8834888362_)
                                                'import:)
                                           (let ((_in88367_ _tl8834988364_))
                                             (if (gx#stx-list? _in88367_)
                                                 (let _lp88369_ ((_in-rest88371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in88367_)
                         (_r88372_ _r88318_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e8837388380_
                                                           _in-rest88371_)
                                                          (_E8837588384_
                                                           (lambda ()
                                                             (_K88316_
                                                              _rest88317_
                                                              _r88372_)))
                                                          (_E8837488430_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8837388380_)
                         (let ((_e8837688388_ (gx#syntax-e _e8837388380_)))
                           (let ((_hd8837788391_ (##car _e8837688388_))
                                 (_tl8837888393_ (##cdr _e8837688388_)))
                             (let* ((_hd88396_ _hd8837788391_)
                                    (_in-rest88398_ _tl8837888393_))
                               (if '#t
                                   (let ((_src88428_
                                          (if (gx#core-bound-module? _hd88396_)
                                              (gx#syntax-local-e__0 _hd88396_)
                                              (if (gx#core-library-module-path?
                                                   _hd88396_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd88396_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd88396_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd88396_))
                                                      (if (gx#stx-string?
                                                           _hd88396_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd88396_
                                                            (gx#stx-source
                                                             _stx88162_)))
                                                          (let* ((_e8839988406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd88396_)
                         (_E8840188410_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx88162_
                             _hd88396_)))
                         (_E8840088424_
                          (lambda ()
                            (if (gx#stx-pair? _e8839988406_)
                                (let ((_e8840288414_
                                       (gx#syntax-e _e8839988406_)))
                                  (let ((_hd8840388417_ (##car _e8840288414_))
                                        (_tl8840488419_ (##cdr _e8840288414_)))
                                    (if (eq? (gx#stx-e _hd8840388417_) 'in:)
                                        (let ((_spath88422_ _tl8840488419_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath88422_
                                               _stx88162_)
                                              (_E8840188410_)))
                                        (_E8840188410_))))
                                (_E8840188410_)))))
                    (_E8840088424_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp88369_
                                      _in-rest88398_
                                      (_export-imports88167_
                                       _src88428_
                                       _r88372_)))
                                   (_E8837588384_)))))
                         (_E8837588384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8837488430_)))
                                                 (_E8834688355_)))
                                           (_E8834688355_))))
                                   (_E8834688355_))))
                            (_E8832388473_
                             (lambda ()
                               (if (gx#stx-pair? _e8831988351_)
                                   (let ((_e8833788438_
                                          (gx#syntax-e _e8831988351_)))
                                     (let ((_hd8833888441_
                                            (##car _e8833788438_))
                                           (_tl8833988443_
                                            (##cdr _e8833788438_)))
                                       (if (eq? (gx#stx-e _hd8833888441_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl8833988443_)
                                               (let ((_e8834088446_
                                                      (gx#syntax-e
                                                       _tl8833988443_)))
                                                 (let ((_hd8834188449_
                                                        (##car _e8834088446_))
                                                       (_tl8834288451_
                                                        (##cdr _e8834088446_)))
                                                   (let ((_id88454_
                                                          _hd8834188449_))
                                                     (if (gx#stx-pair?
                                                          _tl8834288451_)
                                                         (let ((_e8834388456_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8834288451_)))
                   (let ((_hd8834488459_ (##car _e8834388456_))
                         (_tl8834588461_ (##cdr _e8834388456_)))
                     (let ((_name88464_ _hd8834488459_))
                       (if (gx#stx-null? _tl8834588461_)
                           (if '#t
                               (let* ((_phi88466_
                                       (gx#current-export-expander-phi))
                                      (_$e88468_
                                       (gx#core-resolve-identifier__1
                                        _id88454_
                                        _phi88466_)))
                                 (if _$e88468_
                                     ((lambda (_bind88471_)
                                        (_K88316_
                                         _rest88317_
                                         (cons (_make-export__9153891539_
                                                _bind88471_
                                                _phi88466_
                                                (gx#current-expander-context)
                                                _name88464_)
                                               _r88318_)))
                                      _$e88468_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx88162_
                                      _hd88315_
                                      _id88454_)))
                               (_E8833688434_))
                           (_E8833688434_)))))
                 (_E8833688434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8833688434_))
                                           (_E8833688434_))))
                                   (_E8833688434_))))
                            (_E8832288522_
                             (lambda ()
                               (if (gx#stx-pair? _e8831988351_)
                                   (let ((_e8832488477_
                                          (gx#syntax-e _e8831988351_)))
                                     (let ((_hd8832588480_
                                            (##car _e8832488477_))
                                           (_tl8832688482_
                                            (##cdr _e8832488477_)))
                                       (if (eq? (gx#stx-e _hd8832588480_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8832688482_)
                                               (let ((_e8832788485_
                                                      (gx#syntax-e
                                                       _tl8832688482_)))
                                                 (let ((_hd8832888488_
                                                        (##car _e8832788485_))
                                                       (_tl8832988490_
                                                        (##cdr _e8832788485_)))
                                                   (let ((_phi88493_
                                                          _hd8832888488_))
                                                     (if (gx#stx-pair?
                                                          _tl8832988490_)
                                                         (let ((_e8833088495_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8832988490_)))
                   (let ((_hd8833188498_ (##car _e8833088495_))
                         (_tl8833288500_ (##cdr _e8833088495_)))
                     (let ((_id88503_ _hd8833188498_))
                       (if (gx#stx-pair? _tl8833288500_)
                           (let ((_e8833388505_ (gx#syntax-e _tl8833288500_)))
                             (let ((_hd8833488508_ (##car _e8833388505_))
                                   (_tl8833588510_ (##cdr _e8833388505_)))
                               (let ((_name88513_ _hd8833488508_))
                                 (if (gx#stx-null? _tl8833588510_)
                                     (if (and (gx#stx-fixnum? _phi88493_)
                                              (gx#identifier? _id88503_)
                                              (gx#identifier? _name88513_))
                                         (let* ((_phi88515_
                                                 (gx#stx-e _phi88493_))
                                                (_$e88517_
                                                 (gx#core-resolve-identifier__1
                                                  _id88503_
                                                  _phi88515_)))
                                           (if _$e88517_
                                               ((lambda (_bind88520_)
                                                  (_K88316_
                                                   _rest88317_
                                                   (cons (_make-export__9153891539_
                                                          _bind88520_
                                                          _phi88515_
                                                          (gx#current-expander-context)
                                                          _name88513_)
                                                         _r88318_)))
                                                _$e88517_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx88162_
                                                _hd88315_
                                                _id88503_)))
                                         (_E8832388473_))
                                     (_E8832388473_)))))
                           (_E8832388473_)))))
                 (_E8832388473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8832388473_))
                                           (_E8832388473_))))
                                   (_E8832388473_))))
                            (_E8832188533_
                             (lambda ()
                               (let ((_id88526_ _e8831988351_))
                                 (if (gx#identifier? _id88526_)
                                     (let ((_$e88528_
                                            (gx#core-resolve-identifier__1
                                             _id88526_
                                             (gx#current-export-expander-phi))))
                                       (if _$e88528_
                                           ((lambda (_bind88531_)
                                              (_K88316_
                                               _rest88317_
                                               (cons (_make-export__0__9154091543_
                                                      _bind88531_)
                                                     _r88318_)))
                                            _$e88528_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx88162_
                                            _hd88315_)))
                                     (_E8832288522_)))))
                            (_E8832088597_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8831988351_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx88537_
                                               (gx#current-expander-context))
                                              (_current-phi88539_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx88541_
                                               (gx#core-context-shift
                                                _current-ctx88537_
                                                _current-phi88539_))
                                              (_phi-bind88543_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx88541_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp88546_ ((_bind-rest88548_
                                                          _phi-bind88543_)
                                                         (_set88549_ '()))
                                           (let* ((_bind-rest8855088560_
                                                   _bind-rest88548_)
                                                  (_else8855288568_
                                                   (lambda ()
                                                     (_K88316_
                                                      _rest88317_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi88539_
                                                             _set88549_)
                                                            _r88318_))))
                                                  (_K8855488578_
                                                   (lambda (_bind-rest88571_
                                                            _bind88572_
                                                            _key88573_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind88572_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind88572_))
                                                         (_lp88546_
                                                          _bind-rest88571_
                                                          _set88549_)
                                                         (_lp88546_
                                                          _bind-rest88571_
                                                          (cons (_make-export__2__9154291545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind88572_
                         _current-phi88539_
                         _current-ctx88537_)
                        _set88549_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest8855088560_)
                                                 (let ((_hd8855588581_
                                                        (##car _bind-rest8855088560_))
                                                       (_tl8855688583_
                                                        (##cdr _bind-rest8855088560_)))
                                                   (if (##pair? _hd8855588581_)
                                                       (let ((_hd8855788586_
                                                              (##car _hd8855588581_))
                                                             (_tl8855888588_
                                                              (##cdr _hd8855588581_)))
                                                         (let* ((_key88591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd8855788586_)
                        (_bind88593_ _tl8855888588_)
                        (_bind-rest88595_ _tl8855688583_))
                   (_K8855488578_ _bind-rest88595_ _bind88593_ _key88591_)))
               (_else8855288568_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else8855288568_)))))
                                       (_E8832188533_))
                                   (_E8832188533_)))))
                       (_E8832088597_))))
                  (_export-imports88167_
                   (lambda (_src88191_ _r88192_)
                     (letrec* ((_current-ctx88194_
                                (gx#current-expander-context))
                               (_current-phi88195_
                                (gx#current-export-expander-phi))
                               (_import->export88196_
                                (lambda (_in88277_)
                                  (let* ((_in8827888286_ _in88277_)
                                         (_E8828088290_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8827888286_)))
                                         (_K8828188297_
                                          (lambda (_phi88293_
                                                   _key88294_
                                                   _out88295_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx88194_
                                             _key88294_
                                             _phi88293_
                                             _key88294_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8827888286_
                                         'gx#module-import::t)
                                        (let* ((_e8828288300_
                                                (##unchecked-structure-ref
                                                 _in8827888286_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out88303_ _e8828288300_)
                                               (_e8828388305_
                                                (##unchecked-structure-ref
                                                 _in8827888286_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key88308_ _e8828388305_)
                                               (_e8828488310_
                                                (##unchecked-structure-ref
                                                 _in8827888286_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi88313_ _e8828488310_))
                                          (_K8828188297_
                                           _phi88313_
                                           _key88308_
                                           _out88303_))
                                        (_E8828088290_)))))
                               (_fold-e88197_
                                (lambda (_in88199_ _r88200_)
                                  (let* ((_in8820188215_ _in88199_)
                                         (_else8820488223_
                                          (lambda () _r88200_)))
                                    (let ((_K8821088259_
                                           (lambda (_phi88255_
                                                    _key88256_
                                                    _out88257_)
                                             (if (and (fx= _phi88255_
                                                           _current-phi88195_)
                                                      (eq? _src88191_
                                                           (##unchecked-structure-ref
                                                            _out88257_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export88196_
                                                        _in88199_)
                                                       _r88200_)
                                                 _r88200_)))
                                          (_K8820688234_
                                           (lambda (_imports88227_
                                                    _phi88228_
                                                    _ctx88229_)
                                             (if (and (fx= _phi88228_
                                                           _current-phi88195_)
                                                      (eq? _src88191_
                                                           _ctx88229_))
                                                 (foldl1 (lambda (_in88231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r88232_)
                   (cons (_import->export88196_ _in88231_) _r88232_))
                 _r88200_
                 _imports88227_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r88200_))))
                                      (let ((_try-match8820388252_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8820188215_
                                                    'gx#import-set::t)
                                                   (let* ((_e8820788237_
                                                           (##unchecked-structure-ref
                                                            _in8820188215_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8820888242_
                                                           (##unchecked-structure-ref
                                                            _in8820188215_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8820988247_
                                                           (##unchecked-structure-ref
                                                            _in8820188215_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx88240_
                                                            _e8820788237_)
                                                           (_phi88245_
                                                            _e8820888242_)
                                                           (_imports88250_
                                                            _e8820988247_))
                                                       (_K8820688234_
                                                        _imports88250_
                                                        _phi88245_
                                                        _ctx88240_)))
                                                   (_else8820488223_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8820188215_
                                             'gx#module-import::t)
                                            (let* ((_e8821188262_
                                                    (##unchecked-structure-ref
                                                     _in8820188215_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8821288267_
                                                    (##unchecked-structure-ref
                                                     _in8820188215_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8821388272_
                                                    (##unchecked-structure-ref
                                                     _in8820188215_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out88265_ _e8821188262_)
                                                    (_key88270_ _e8821288267_)
                                                    (_phi88275_ _e8821388272_))
                                                (_K8821088259_
                                                 _phi88275_
                                                 _key88270_
                                                 _out88265_)))
                                            (_try-match8820388252_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src88191_
                              _current-phi88195_
                              (foldl1 _fold-e88197_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx88194_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r88192_))))
                  (_export!88168_
                   (lambda (_rbody88181_)
                     (letrec* ((_current-ctx88183_
                                (gx#current-expander-context))
                               (_fold-e88184_
                                (lambda (_out88188_ _r88189_)
                                  (if (##structure-direct-instance-of?
                                       _out88188_
                                       'gx#module-export::t)
                                      (cons _out88188_ _r88189_)
                                      (if (##structure-direct-instance-of?
                                           _out88188_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r88189_
                                                  (##unchecked-structure-ref
                                                   _out88188_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r88189_)))))
                       (let ((_body88186_ (reverse _rbody88181_)))
                         (##unchecked-structure-set!
                          _current-ctx88183_
                          (foldl1 _fold-e88184_
                                  (##unchecked-structure-ref
                                   _current-ctx88183_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body88186_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body88186_))))
                  (_expanded-export?88169_
                   (lambda (_e88176_)
                     (let ((_$e88178_
                            (##structure-direct-instance-of?
                             _e88176_
                             'gx#module-export::t)))
                       (if _$e88178_
                           _$e88178_
                           (##structure-direct-instance-of?
                            _e88176_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?88163_)
              (let ((_rbody88174_
                     (gx#core-expand-import/export
                      _stx88162_
                      _expanded-export?88169_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand188166_)))
                (if _internal-expand?88163_
                    (reverse _rbody88174_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!88168_ _rbody88174_))
                     (gx#stx-source _stx88162_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx88162_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx88162_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx88647_)
        (let ((_internal-expand?88649_ '#f))
          (gx#core-expand-export%__% _stx88647_ _internal-expand?88649_))))
    (define gx#core-expand-export%
      (lambda _g91613_
        (let ((_g91612_ (##length _g91613_)))
          (cond ((##fx= _g91612_ 1)
                 (apply (lambda (_stx88647_)
                          (gx#core-expand-export%__0 _stx88647_))
                        _g91613_))
                ((##fx= _g91612_ 2)
                 (apply (lambda (_stx88651_ _internal-expand?88652_)
                          (gx#core-expand-export%__%
                           _stx88651_
                           _internal-expand?88652_))
                        _g91613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g91613_))))))
    (define gx#core-expand-export-source
      (lambda (_hd88159_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd88159_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx88129_)
        (let* ((_e8813088137_ _stx88129_)
               (_E8813288141_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8813088137_)))
               (_E8813188155_
                (lambda ()
                  (if (gx#stx-pair? _e8813088137_)
                      (let ((_e8813388145_ (gx#syntax-e _e8813088137_)))
                        (let ((_hd8813488148_ (##car _e8813388145_))
                              (_tl8813588150_ (##cdr _e8813388145_)))
                          (let ((_body88153_ _tl8813588150_))
                            (if (gx#identifier-list? _body88153_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body88153_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body88153_))
                                   (gx#stx-source _stx88129_)))
                                (_E8813288141_)))))
                      (_E8813288141_)))))
          (_E8813188155_))))
    (define gx#core-bind-feature!__%
      (lambda (_id88095_ _private?88096_ _phi88097_ _ctx88098_)
        (gx#core-bind-syntax!__%
         _id88095_
         ((if _private?88096_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id88095_))
         _private?88096_
         _phi88097_
         _ctx88098_)))
    (define gx#core-bind-feature!__0
      (lambda (_id88103_)
        (let* ((_private?88105_ '#f)
               (_phi88107_ (gx#current-expander-phi))
               (_ctx88109_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88103_
           _private?88105_
           _phi88107_
           _ctx88109_))))
    (define gx#core-bind-feature!__1
      (lambda (_id88111_ _private?88112_)
        (let* ((_phi88114_ (gx#current-expander-phi))
               (_ctx88116_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88111_
           _private?88112_
           _phi88114_
           _ctx88116_))))
    (define gx#core-bind-feature!__2
      (lambda (_id88118_ _private?88119_ _phi88120_)
        (let ((_ctx88122_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id88118_
           _private?88119_
           _phi88120_
           _ctx88122_))))
    (define gx#core-bind-feature!
      (lambda _g91615_
        (let ((_g91614_ (##length _g91615_)))
          (cond ((##fx= _g91614_ 1)
                 (apply (lambda (_id88103_)
                          (gx#core-bind-feature!__0 _id88103_))
                        _g91615_))
                ((##fx= _g91614_ 2)
                 (apply (lambda (_id88111_ _private?88112_)
                          (gx#core-bind-feature!__1 _id88111_ _private?88112_))
                        _g91615_))
                ((##fx= _g91614_ 3)
                 (apply (lambda (_id88118_ _private?88119_ _phi88120_)
                          (gx#core-bind-feature!__2
                           _id88118_
                           _private?88119_
                           _phi88120_))
                        _g91615_))
                ((##fx= _g91614_ 4)
                 (apply (lambda (_id88124_
                                 _private?88125_
                                 _phi88126_
                                 _ctx88127_)
                          (gx#core-bind-feature!__%
                           _id88124_
                           _private?88125_
                           _phi88126_
                           _ctx88127_))
                        _g91615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g91615_))))))))
