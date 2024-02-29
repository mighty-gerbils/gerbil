(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1709213450)
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
      (lambda _$args93208_
        (apply make-instance gx#module-import::t _$args93208_)))
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
      (lambda _$args93205_
        (apply make-instance gx#module-export::t _$args93205_)))
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
      (lambda _$args93202_
        (apply make-instance gx#import-set::t _$args93202_)))
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
      (lambda _$args93199_
        (apply make-instance gx#export-set::t _$args93199_)))
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
      (lambda _$args93196_
        (apply make-instance gx#import-expander::t _$args93196_)))
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
      (lambda _$args93193_
        (apply make-instance gx#export-expander::t _$args93193_)))
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
      (lambda _$args93190_
        (apply make-instance gx#import-export-expander::t _$args93190_)))
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
      (lambda (_path93187_ _fun93188_)
        (call-with-input-file
         (cons 'path: (cons _path93187_ gx#source-file-settings))
         _fun93188_)))
    (define gx#module-context:::init!
      (lambda (_self93181_ _id93182_ _super93183_ _ns93184_ _path93185_)
        (if (##fx< '11 (##structure-length _self93181_))
            (begin
              (##unchecked-structure-set!
               _self93181_
               _id93182_
               '1
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               (make-hash-table-eq)
               '2
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               _super93183_
               '3
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               '#f
               '4
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               '#f
               '5
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               _ns93184_
               '6
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               _path93185_
               '7
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               '()
               '8
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               '()
               '9
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               '#f
               '10
               (##structure-type _self93181_)
               '#f)
              (##unchecked-structure-set!
               _self93181_
               '#f
               '11
               (##structure-type _self93181_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self93181_
                   '11
                   (##vector-length _self93181_)))))
    (bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self93025_ _ctx93026_ _root93027_)
        (let ((_super93035_
               (let ((_$e93029_ _root93027_))
                 (if _$e93029_
                     _$e93029_
                     (let ((_$e93032_ (gx#core-context-root__0)))
                       (if _$e93032_
                           _$e93032_
                           (let ((__obj93250
                                  (##structure gx#root-context::t '#f '#f)))
                             (let ((__constructor93251
                                    (direct-method-ref
                                     gx#root-context::t
                                     __obj93250
                                     ':init!)))
                               (if __constructor93251
                                   (__constructor93251 __obj93250)
                                   (error '"missing constructor method implementation"
                                          'class:
                                          gx#root-context::t
                                          'method:
                                          ':init!)))
                             __obj93250)))))))
          (if _ctx93026_
              (let ((_id93038_
                     (##structure-ref
                      _ctx93026_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path93039_
                     (##structure-ref _ctx93026_ '7 gx#module-context::t '#f))
                    (_in93040_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx93026_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e93041_
                     (make-promise (lambda () (gx#eval-module _ctx93026_)))))
                (if (##fx< '8 (##structure-length _self93025_))
                    (begin
                      (##unchecked-structure-set!
                       _self93025_
                       _id93038_
                       '1
                       (##structure-type _self93025_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93025_
                       (make-hash-table-eq 'size: (length _in93040_))
                       '2
                       (##structure-type _self93025_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93025_
                       _super93035_
                       '3
                       (##structure-type _self93025_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93025_
                       '#f
                       '4
                       (##structure-type _self93025_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93025_
                       '#f
                       '5
                       (##structure-type _self93025_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93025_
                       _path93039_
                       '6
                       (##structure-type _self93025_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93025_
                       _in93040_
                       '7
                       (##structure-type _self93025_)
                       '#f)
                      (##unchecked-structure-set!
                       _self93025_
                       _e93041_
                       '8
                       (##structure-type _self93025_)
                       '#f))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self93025_
                           '8
                           (##vector-length _self93025_)))
                (for-each
                 (lambda (_g9304293044_)
                   (gx#core-bind-weak-import!__% _g9304293044_ _self93025_))
                 _in93040_))
              (if (##fx< '8 (##structure-length _self93025_))
                  (begin
                    (##unchecked-structure-set!
                     _self93025_
                     '#f
                     '1
                     (##structure-type _self93025_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93025_
                     (make-hash-table-eq)
                     '2
                     (##structure-type _self93025_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93025_
                     _super93035_
                     '3
                     (##structure-type _self93025_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93025_
                     '#f
                     '4
                     (##structure-type _self93025_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93025_
                     '#f
                     '5
                     (##structure-type _self93025_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93025_
                     '#f
                     '6
                     (##structure-type _self93025_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93025_
                     '()
                     '7
                     (##structure-type _self93025_)
                     '#f)
                    (##unchecked-structure-set!
                     _self93025_
                     '#f
                     '8
                     (##structure-type _self93025_)
                     '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self93025_
                         '8
                         (##vector-length _self93025_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self93050_ _ctx93051_)
        (let ((_root93053_ '#f))
          (gx#prelude-context:::init!__% _self93050_ _ctx93051_ _root93053_))))
    (define gx#prelude-context:::init!
      (lambda _g93257_
        (let ((_g93256_ (##length _g93257_)))
          (cond ((##fx= _g93256_ 2)
                 (apply (lambda (_self93050_ _ctx93051_)
                          (gx#prelude-context:::init!__0
                           _self93050_
                           _ctx93051_))
                        _g93257_))
                ((##fx= _g93256_ 3)
                 (apply (lambda (_self93055_ _ctx93056_ _root93057_)
                          (gx#prelude-context:::init!__%
                           _self93055_
                           _ctx93056_
                           _root93057_))
                        _g93257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g93257_))))))
    (bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_self92899_ _e92900_)
        (if (##fx< '3 (##structure-length _self92899_))
            (begin
              (##unchecked-structure-set!
               _self92899_
               _e92900_
               '1
               (##structure-type _self92899_)
               '#f)
              (##unchecked-structure-set!
               _self92899_
               (gx#current-expander-context)
               '2
               (##structure-type _self92899_)
               '#f)
              (##unchecked-structure-set!
               _self92899_
               (fx- (gx#current-expander-phi) '1)
               '3
               (##structure-type _self92899_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self92899_
                   '3
                   (##vector-length _self92899_)))))
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
      (lambda (_g9252592528_ _g9252692530_)
        (gx#core-apply-user-expander__%
         _g9252592528_
         _g9252692530_
         'apply-import-expander)))
    (bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g9239692399_ _g9239792401_)
        (gx#core-apply-user-expander__%
         _g9239692399_
         _g9239792401_
         'apply-export-expander)))
    (bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx92267_)
        (let* ((_path92269_
                (##structure-ref _ctx92267_ '7 gx#module-context::t '#f))
               (_path92271_
                (if (pair? _path92269_) (last _path92269_) _path92269_)))
          (if (string? _path92271_) _path92271_ '#f))))
    (define gx#import-module__%
      (lambda (_path92243_ _reload?92244_ _eval?92245_)
        (let ((_ctx92247_
               ((gx#current-expander-module-import)
                _path92243_
                _reload?92244_)))
          (if (and _ctx92247_ _eval?92245_)
              (gx#eval-module _ctx92247_)
              '#!void)
          _ctx92247_)))
    (define gx#import-module__0
      (lambda (_path92252_)
        (let* ((_reload?92254_ '#f) (_eval?92256_ '#f))
          (gx#import-module__% _path92252_ _reload?92254_ _eval?92256_))))
    (define gx#import-module__1
      (lambda (_path92258_ _reload?92259_)
        (let ((_eval?92261_ '#f))
          (gx#import-module__% _path92258_ _reload?92259_ _eval?92261_))))
    (define gx#import-module
      (lambda _g93259_
        (let ((_g93258_ (##length _g93259_)))
          (cond ((##fx= _g93258_ 1)
                 (apply (lambda (_path92252_)
                          (gx#import-module__0 _path92252_))
                        _g93259_))
                ((##fx= _g93258_ 2)
                 (apply (lambda (_path92258_ _reload?92259_)
                          (gx#import-module__1 _path92258_ _reload?92259_))
                        _g93259_))
                ((##fx= _g93258_ 3)
                 (apply (lambda (_path92263_ _reload?92264_ _eval?92265_)
                          (gx#import-module__%
                           _path92263_
                           _reload?92264_
                           _eval?92265_))
                        _g93259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g93259_))))))
    (define gx#eval-module
      (lambda (_mod92240_) ((gx#current-expander-module-eval) _mod92240_)))
    (define gx#core-eval-module
      (lambda (_obj92225_)
        (letrec ((_force-e92227_
                  (lambda (_getf92236_ _e92237_)
                    (call-with-parameters
                     (lambda () (force (_getf92236_ _e92237_)))
                     gx#current-expander-context
                     _e92237_
                     gx#current-expander-phi
                     '0))))
          (let _recur92229_ ((_e92231_ _obj92225_))
            (if (##structure-instance-of? _e92231_ 'gx#module-context::t)
                (begin
                  (let ((_$e92233_ (gx#core-context-prelude__% _e92231_)))
                    (if _$e92233_ (_recur92229_ _$e92233_) '#!void))
                  (_force-e92227_ gx#module-context-e _e92231_))
                (if (##structure-instance-of? _e92231_ 'gx#prelude-context::t)
                    (_force-e92227_ gx#prelude-context-e _e92231_)
                    (if (gx#stx-string? _e92231_)
                        (_recur92229_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e92231_)))
                        (if (gx#core-library-module-path? _e92231_)
                            (_recur92229_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e92231_)))
                            (error '"Cannot eval module" _obj92225_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx92208_)
        (let _lp92210_ ((_e92212_ _ctx92208_))
          (if (or (##structure-instance-of? _e92212_ 'gx#module-context::t)
                  (##structure-instance-of? _e92212_ 'gx#local-context::t))
              (_lp92210_
               (##unchecked-structure-ref _e92212_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e92212_ 'gx#prelude-context::t)
                  _e92212_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx92221_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx92221_))))
    (define gx#core-context-prelude
      (lambda _g93261_
        (let ((_g93260_ (##length _g93261_)))
          (cond ((##fx= _g93260_ 0)
                 (apply (lambda () (gx#core-context-prelude__0)) _g93261_))
                ((##fx= _g93260_ 1)
                 (apply (lambda (_ctx92223_)
                          (gx#core-context-prelude__% _ctx92223_))
                        _g93261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g93261_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx92198_)
        (let* ((_ht92200_ (gx#current-expander-module-registry))
               (_$e92202_ (hash-get _ht92200_ _ctx92198_)))
          (if _$e92202_
              (values _$e92202_)
              (let ((_pre92205_
                     (let ((__obj93252
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
                       (gx#prelude-context:::init! __obj93252 _ctx92198_)
                       __obj93252)))
                (hash-put! _ht92200_ _ctx92198_ _pre92205_)
                _pre92205_)))))
    (define gx#core-import-module__%
      (lambda (_rpath92079_ _reload?92080_)
        (letrec ((_import-source92082_
                  (lambda (_path92167_)
                    (if (member _path92167_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path92167_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g93262_ (gx#core-read-module _path92167_)))
                         (begin
                           (let ((_g93263_
                                  (if (##values? _g93262_)
                                      (##vector-length _g93262_)
                                      1)))
                             (if (not (##fx= _g93263_ 4))
                                 (error "Context expects 4 values" _g93263_)))
                           (let ((_pre92170_ (##vector-ref _g93262_ 0))
                                 (_id92171_ (##vector-ref _g93262_ 1))
                                 (_ns92172_ (##vector-ref _g93262_ 2))
                                 (_body92173_ (##vector-ref _g93262_ 3)))
                             (let* ((_prelude92178_
                                     (if (##structure-instance-of?
                                          _pre92170_
                                          'gx#prelude-context::t)
                                         _pre92170_
                                         (if (##structure-instance-of?
                                              _pre92170_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre92170_)
                                             (if (string? _pre92170_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre92170_))
                                                 (if (not _pre92170_)
                                                     (let ((_$e92175_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e92175_
                                                           _$e92175_
                                                           (let ((__obj93253
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
                     (gx#prelude-context:::init! __obj93253 '#f)
                     __obj93253)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath92079_
                                                            _pre92170_))))))
                                    (_ctx92180_
                                     (let ((__obj93254
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
                                        __obj93254
                                        _id92171_
                                        _prelude92178_
                                        _ns92172_
                                        _path92167_)
                                       __obj93254))
                                    (_body92182_
                                     (gx#core-expand-module-begin
                                      _body92173_
                                      _ctx92180_))
                                    (_body92184_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body92182_)
                                      _path92167_
                                      _ctx92180_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx92180_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body92184_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx92180_
                                _body92184_
                                '11
                                gx#module-context::t
                                '#f)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _path92167_
                                _ctx92180_)
                               (hash-put!
                                (gx#current-expander-module-registry)
                                _id92171_
                                _ctx92180_)
                               _ctx92180_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path92167_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule92083_
                  (lambda (_rpath92095_)
                    (let* ((_rpath9209692103_ _rpath92095_)
                           (_E9209892107_
                            (lambda ()
                              (error '"No clause matching" _rpath9209692103_)))
                           (_K9209992155_
                            (lambda (_refs92110_ _origin92111_)
                              (let ((_ctx92113_
                                     (if _origin92111_
                                         (gx#core-import-module__%
                                          _origin92111_
                                          _reload?92080_)
                                         (gx#current-expander-context))))
                                (let _lp92115_ ((_rest92117_ _refs92110_)
                                                (_ctx92118_ _ctx92113_))
                                  (let* ((_rest9211992127_ _rest92117_)
                                         (_else9212192135_
                                          (lambda () _ctx92118_))
                                         (_K9212392143_
                                          (lambda (_rest92138_ _id92139_)
                                            (let ((_bind92141_
                                                   (gx#resolve-identifier__%
                                                    _id92139_
                                                    '0
                                                    _ctx92118_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind92141_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind92141_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp92115_
                                                   _rest92138_
                                                   (##unchecked-structure-ref
                                                    _bind92141_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath92095_
                                                         _id92139_
                                                         _bind92141_))))))
                                    (if (##pair? _rest9211992127_)
                                        (let ((_hd9212492146_
                                               (##car _rest9211992127_))
                                              (_tl9212592148_
                                               (##cdr _rest9211992127_)))
                                          (let* ((_id92151_ _hd9212492146_)
                                                 (_rest92153_ _tl9212592148_))
                                            (_K9212392143_
                                             _rest92153_
                                             _id92151_)))
                                        (_else9212192135_))))))))
                      (if (##pair? _rpath9209692103_)
                          (let ((_hd9210092158_ (##car _rpath9209692103_))
                                (_tl9210192160_ (##cdr _rpath9209692103_)))
                            (let* ((_origin92163_ _hd9210092158_)
                                   (_refs92165_ _tl9210192160_))
                              (_K9209992155_ _refs92165_ _origin92163_)))
                          (_E9209892107_))))))
          (let ((_$e92085_
                 (if (not _reload?92080_)
                     (hash-get
                      (gx#current-expander-module-registry)
                      _rpath92079_)
                     '#f)))
            (if _$e92085_
                (values _$e92085_)
                (if (list? _rpath92079_)
                    (_import-submodule92083_ _rpath92079_)
                    (if (gx#core-library-module-path? _rpath92079_)
                        (let ((_ctx92088_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath92079_)
                                _reload?92080_)))
                          (hash-put!
                           (gx#current-expander-module-registry)
                           _rpath92079_
                           _ctx92088_)
                          _ctx92088_)
                        (let* ((_npath92090_ (path-normalize _rpath92079_))
                               (_$e92092_
                                (if (not _reload?92080_)
                                    (hash-get
                                     (gx#current-expander-module-registry)
                                     _npath92090_)
                                    '#f)))
                          (if _$e92092_
                              (values _$e92092_)
                              (_import-source92082_ _npath92090_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath92191_)
        (let ((_reload?92193_ '#f))
          (gx#core-import-module__% _rpath92191_ _reload?92193_))))
    (define gx#core-import-module
      (lambda _g93265_
        (let ((_g93264_ (##length _g93265_)))
          (cond ((##fx= _g93264_ 1)
                 (apply (lambda (_rpath92191_)
                          (gx#core-import-module__0 _rpath92191_))
                        _g93265_))
                ((##fx= _g93264_ 2)
                 (apply (lambda (_rpath92195_ _reload?92196_)
                          (gx#core-import-module__%
                           _rpath92195_
                           _reload?92196_))
                        _g93265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g93265_))))))
    (define gx#core-read-module
      (lambda (_path92068_)
        (with-catch
         (lambda (_exn92070_)
           (if (and (datum-parsing-exception? _exn92070_)
                    (eq? (datum-parsing-exception-filepos _exn92070_) '0))
               (gx#core-read-module/lang _path92068_)
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _path92068_
                (call-with-parameters
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_g9207292074_)
                      (display-exception _exn92070_ _g9207292074_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _path92068_)))))
    (define gx#core-read-module/sexp
      (lambda (_path91931_)
        (let _lp91933_ ((_body91935_ (read-syntax-from-file _path91931_))
                        (_pre91936_ '#f)
                        (_ns91937_ '#f)
                        (_pkg91938_ '#f))
          (let* ((_e9193991963_ _body91935_)
                 (_E9195591985_
                  (lambda ()
                    (let ((_g93266_
                           (if _pkg91938_
                               (values _pre91936_ _ns91937_ _pkg91938_)
                               (gx#core-read-module-package
                                _path91931_
                                _pre91936_
                                _ns91937_))))
                      (begin
                        (let ((_g93267_
                               (if (##values? _g93266_)
                                   (##vector-length _g93266_)
                                   1)))
                          (if (not (##fx= _g93267_ 3))
                              (error "Context expects 3 values" _g93267_)))
                        (let ((_pre91967_ (##vector-ref _g93266_ 0))
                              (_ns91968_ (##vector-ref _g93266_ 1))
                              (_pkg91969_ (##vector-ref _g93266_ 2)))
                          (let* ((_prelude91971_
                                  (if (gx#core-bound-module-prelude?
                                       _pre91967_)
                                      (gx#syntax-local-e__0 _pre91967_)
                                      (if (gx#core-library-module-path?
                                           _pre91967_)
                                          (gx#core-resolve-library-module-path
                                           _pre91967_)
                                          (if (gx#stx-string? _pre91967_)
                                              (gx#core-resolve-module-path__%
                                               _pre91967_
                                               _path91931_)
                                              (gx#stx-e _pre91967_)))))
                                 (_path-id91973_
                                  (gx#core-module-path->namespace _path91931_))
                                 (_pkg-id91975_
                                  (if _pkg91969_
                                      (string-append
                                       _pkg91969_
                                       '"/"
                                       _path-id91973_)
                                      _path-id91973_))
                                 (_module-id91977_
                                  (string->symbol _pkg-id91975_))
                                 (_module-ns91982_
                                  (if (eq? _ns91968_ '#!void)
                                      '#f
                                      (let ((_$e91979_ _ns91968_))
                                        (if _$e91979_
                                            _$e91979_
                                            _pkg-id91975_)))))
                            (values _prelude91971_
                                    _module-id91977_
                                    _module-ns91982_
                                    _body91935_)))))))
                 (_E9194892014_
                  (lambda ()
                    (if (gx#stx-pair? _e9193991963_)
                        (let ((_e9195691989_ (gx#syntax-e _e9193991963_)))
                          (let ((_hd9195791992_ (##car _e9195691989_))
                                (_tl9195891994_ (##cdr _e9195691989_)))
                            (if (eq? (gx#stx-e _hd9195791992_) 'package:)
                                (if (gx#stx-pair? _tl9195891994_)
                                    (let ((_e9195991997_
                                           (gx#syntax-e _tl9195891994_)))
                                      (let ((_hd9196092000_
                                             (##car _e9195991997_))
                                            (_tl9196192002_
                                             (##cdr _e9195991997_)))
                                        (let* ((_pkg92005_ _hd9196092000_)
                                               (_rest92007_ _tl9196192002_))
                                          (if '#t
                                              (let ((_pkg92012_
                                                     (if (gx#identifier?
                                                          _pkg92005_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg92005_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg92005_)
                         (gx#stx-false? _pkg92005_))
                     (gx#stx-e _pkg92005_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg92005_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91933_
                                                 _rest92007_
                                                 _pre91936_
                                                 _ns91937_
                                                 _pkg92012_))
                                              (_E9195591985_)))))
                                    (_E9195591985_))
                                (_E9195591985_))))
                        (_E9195591985_))))
                 (_E9194192040_
                  (lambda ()
                    (if (gx#stx-pair? _e9193991963_)
                        (let ((_e9194992018_ (gx#syntax-e _e9193991963_)))
                          (let ((_hd9195092021_ (##car _e9194992018_))
                                (_tl9195192023_ (##cdr _e9194992018_)))
                            (if (eq? (gx#stx-e _hd9195092021_) 'namespace:)
                                (if (gx#stx-pair? _tl9195192023_)
                                    (let ((_e9195292026_
                                           (gx#syntax-e _tl9195192023_)))
                                      (let ((_hd9195392029_
                                             (##car _e9195292026_))
                                            (_tl9195492031_
                                             (##cdr _e9195292026_)))
                                        (let* ((_ns92034_ _hd9195392029_)
                                               (_rest92036_ _tl9195492031_))
                                          (if '#t
                                              (let ((_ns92038_
                                                     (if (gx#identifier?
                                                          _ns92034_)
                                                         (symbol->string
                                                          (gx#stx-e _ns92034_))
                                                         (if (gx#stx-string?
                                                              _ns92034_)
                                                             (gx#stx-e
                                                              _ns92034_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns92034_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns92034_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp91933_
                                                 _rest92036_
                                                 _pre91936_
                                                 _ns92038_
                                                 _pkg91938_))
                                              (_E9194892014_)))))
                                    (_E9194892014_))
                                (_E9194892014_))))
                        (_E9194892014_))))
                 (_E9194092064_
                  (lambda ()
                    (if (gx#stx-pair? _e9193991963_)
                        (let ((_e9194292044_ (gx#syntax-e _e9193991963_)))
                          (let ((_hd9194392047_ (##car _e9194292044_))
                                (_tl9194492049_ (##cdr _e9194292044_)))
                            (if (eq? (gx#stx-e _hd9194392047_) 'prelude:)
                                (if (gx#stx-pair? _tl9194492049_)
                                    (let ((_e9194592052_
                                           (gx#syntax-e _tl9194492049_)))
                                      (let ((_hd9194692055_
                                             (##car _e9194592052_))
                                            (_tl9194792057_
                                             (##cdr _e9194592052_)))
                                        (let* ((_prelude92060_ _hd9194692055_)
                                               (_rest92062_ _tl9194792057_))
                                          (if '#t
                                              (_lp91933_
                                               _rest92062_
                                               _prelude92060_
                                               _ns91937_
                                               _pkg91938_)
                                              (_E9194192040_)))))
                                    (_E9194192040_))
                                (_E9194192040_))))
                        (_E9194192040_)))))
            (_E9194092064_)))))
    (define gx#core-read-module/lang
      (lambda (_path91758_)
        (letrec ((_default-read-module-body91760_
                  (lambda (_inp91923_)
                    (let _lp91925_ ((_body91927_ '()))
                      (let ((_next91929_ (read-syntax _inp91923_)))
                        (if (eof-object? _next91929_)
                            (reverse _body91927_)
                            (_lp91925_ (cons _next91929_ _body91927_)))))))
                 (_read-body91761_
                  (lambda (_inp91842_
                           _pre91843_
                           _ns91844_
                           _pkg91845_
                           _args91846_)
                    (let ((_g93268_
                           (if _pkg91845_
                               (values _pre91843_ _ns91844_ _pkg91845_)
                               (gx#core-read-module-package
                                _path91758_
                                _pre91843_
                                _ns91844_))))
                      (begin
                        (let ((_g93269_
                               (if (##values? _g93268_)
                                   (##vector-length _g93268_)
                                   1)))
                          (if (not (##fx= _g93269_ 3))
                              (error "Context expects 3 values" _g93269_)))
                        (let ((_pre91848_ (##vector-ref _g93268_ 0))
                              (_ns91849_ (##vector-ref _g93268_ 1))
                              (_pkg91850_ (##vector-ref _g93268_ 2)))
                          (let* ((_prelude91852_
                                  (gx#import-module__0 _pre91848_))
                                 (_read-module-body91906_
                                  (let ((_$e91898_
                                         (find (lambda (_e9185391855_)
                                                 (let* ((_g9185791867_
                                                         _e9185391855_)
                                                        (_else9185991875_
                                                         (lambda () '#f))
                                                        (_K9186191879_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g9185791867_
                                                        'gx#module-export::t)
                                                       (let* ((_e9186291882_
                                                               (##unchecked-structure-ref
                                                                _g9185791867_
                                                                '1
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9186391885_
                                                               (##unchecked-structure-ref
                                                                _g9185791867_
                                                                '2
                                                                gx#module-export::t
                                                                '#f))
                                                              (_e9186491888_
                                                               (##unchecked-structure-ref
                                                                _g9185791867_
                                                                '3
                                                                gx#module-export::t
                                                                '#f)))
                                                         (if (##eq? _e9186491888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e9186591891_
                            (##unchecked-structure-ref
                             _g9185791867_
                             '4
                             gx#module-export::t
                             '#f)))
                       (if ((lambda (_g9189391895_)
                              (eq? _g9189391895_ 'read-module-body))
                            _e9186591891_)
                           (_K9186191879_)
                           (_else9185991875_)))
                     (_else9185991875_)))
               (_else9185991875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude91852_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e91898_
                                        ((lambda (_xport91901_)
                                           (let ((_proc91904_
                                                  (with-catch
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport91901_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc91904_)
                                                 _proc91904_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path91758_
                                                  _pre91848_
                                                  _proc91904_))))
                                         _$e91898_)
                                        _default-read-module-body91760_)))
                                 (_path-id91908_
                                  (gx#core-module-path->namespace _path91758_))
                                 (_pkg-id91910_
                                  (if _pkg91850_
                                      (string-append
                                       _pkg91850_
                                       '"/"
                                       _path-id91908_)
                                      _path-id91908_))
                                 (_module-id91912_
                                  (string->symbol _pkg-id91910_))
                                 (_module-ns91917_
                                  (let ((_$e91914_ _ns91849_))
                                    (if _$e91914_ _$e91914_ _pkg-id91910_)))
                                 (_body91920_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body91906_ _inp91842_))
                                   gx#current-module-reader-path
                                   _path91758_
                                   gx#current-module-reader-args
                                   _args91846_)))
                            (values _prelude91852_
                                    _module-id91912_
                                    _module-ns91917_
                                    _body91920_)))))))
                 (_string-e91762_
                  (lambda (_obj91839_ _what91840_)
                    (if (string? _obj91839_)
                        _obj91839_
                        (if (symbol? _obj91839_)
                            (symbol->string _obj91839_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what91840_)
                             _path91758_
                             _obj91839_)))))
                 (_read-lang-args91763_
                  (lambda (_inp91794_ _args91795_)
                    (let* ((_args9179691804_ _args91795_)
                           (_else9179891812_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path91758_)))
                           (_K9180091827_
                            (lambda (_args91815_ _prelude91816_)
                              (let* ((_pkg91818_
                                      (pgetq__0 'package: _args91815_))
                                     (_pkg91820_
                                      (if _pkg91818_
                                          (_string-e91762_
                                           _pkg91818_
                                           '"package")
                                          '#f))
                                     (_ns91822_
                                      (pgetq__0 'namespace: _args91815_))
                                     (_ns91824_
                                      (if _ns91822_
                                          (_string-e91762_
                                           _ns91822_
                                           '"namespace")
                                          '#f)))
                                (_read-body91761_
                                 _inp91794_
                                 _prelude91816_
                                 _ns91824_
                                 _pkg91820_
                                 _args91815_)))))
                      (if (##pair? _args9179691804_)
                          (let ((_hd9180191830_ (##car _args9179691804_))
                                (_tl9180291832_ (##cdr _args9179691804_)))
                            (let* ((_prelude91835_ _hd9180191830_)
                                   (_args91837_ _tl9180291832_))
                              (_K9180091827_ _args91837_ _prelude91835_)))
                          (_else9179891812_)))))
                 (_read-lang91764_
                  (lambda (_inp91769_)
                    (let* ((_head91771_ (read-line _inp91769_))
                           (_$e91773_ (string-index__0 _head91771_ '#\space)))
                      (if _$e91773_
                          ((lambda (_ix91776_)
                             (let ((_lang91778_
                                    (substring _head91771_ '0 _ix91776_)))
                               (if (equal? _lang91778_ '"#lang")
                                   (let* ((_rest91780_
                                           (substring
                                            _head91771_
                                            (fx+ _ix91776_ '1)
                                            (string-length _head91771_)))
                                          (_args91791_
                                           (with-catch
                                            (lambda (_g9178191783_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path91758_
                                               _g9178191783_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest91780_
                                               (lambda (_g9178691788_)
                                                 (read-all
                                                  _g9178691788_
                                                  read)))))))
                                     (_read-lang-args91763_
                                      _inp91769_
                                      _args91791_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path91758_))))
                           _$e91773_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path91758_)))))
                 (_read-e91765_
                  (lambda (_inp91767_)
                    (if (eq? (peek-char _inp91767_) '#\#)
                        (_read-lang91764_ _inp91767_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path91758_)))))
          (gx#call-with-input-source-file _path91758_ _read-e91765_))))
    (define gx#core-read-module-package
      (lambda (_path91712_ _pre91713_ _ns91714_)
        (letrec ((_string-e91716_
                  (lambda (_e91756_)
                    (if (symbol? _e91756_)
                        (symbol->string _e91756_)
                        (if (string? _e91756_)
                            _e91756_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e91756_))))))
          (let _lp91718_ ((_dir91720_ (path-directory _path91712_))
                          (_pkg-path91721_ '()))
            (let ((_gerbil.pkg91723_ (path-expand '"gerbil.pkg" _dir91720_)))
              (if (file-exists? _gerbil.pkg91723_)
                  (let ((_plist91725_
                         (gx#core-library-package-plist__% _dir91720_ '#t)))
                    (if (null? _plist91725_)
                        (let ((_pkg91727_
                               (if (not (null? _pkg-path91721_))
                                   (string-join _pkg-path91721_ '"/")
                                   '#f)))
                          (values _pre91713_ _ns91714_ _pkg91727_))
                        (if (list? _plist91725_)
                            (let* ((_root91729_
                                    (pgetq__0 'package: _plist91725_))
                                   (_pkg91733_
                                    (let ((_pkg-path91731_
                                           (if _root91729_
                                               (cons (_string-e91716_
                                                      _root91729_)
                                                     _pkg-path91721_)
                                               _pkg-path91721_)))
                                      (if (not (null? _pkg-path91731_))
                                          (string-join _pkg-path91731_ '"/")
                                          '#f)))
                                   (_ns91740_
                                    (let ((_ns91738_
                                           (let ((_$e91735_ _ns91714_))
                                             (if _$e91735_
                                                 _$e91735_
                                                 (pgetq__0
                                                  'namespace:
                                                  _plist91725_)))))
                                      (if _ns91738_
                                          (_string-e91716_ _ns91738_)
                                          '#f)))
                                   (_pre91745_
                                    (let ((_$e91742_ _pre91713_))
                                      (if _$e91742_
                                          _$e91742_
                                          (pgetq__0 'prelude: _plist91725_)))))
                              (values _pre91745_ _ns91740_ _pkg91733_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist91725_))))
                  (let ((_dir*91748_
                         (path-strip-trailing-directory-separator _dir91720_)))
                    (if (or (string-empty? _dir*91748_)
                            (equal? _dir91720_ _dir*91748_))
                        (values _pre91713_ _ns91714_ '#f)
                        (let ((_xpath91753_ (path-strip-directory _dir*91748_))
                              (_xdir91754_ (path-directory _dir*91748_)))
                          (_lp91718_
                           _xdir91754_
                           (cons _xpath91753_ _pkg-path91721_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path91710_)
        (path-strip-extension (path-strip-directory _path91710_))))
    (define gx#core-module-path->id
      (lambda (_path91708_)
        (string->symbol (gx#core-module-path->namespace _path91708_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path91687_ _rel91688_)
        (let* ((_path91690_ (gx#stx-e _stx-path91687_))
               (_path91692_
                (if (string-empty? (path-extension _path91690_))
                    (string-append _path91690_ '".ss")
                    _path91690_)))
          (gx#core-resolve-path__%
           _path91692_
           (let ((_$e91695_ (gx#stx-source _stx-path91687_)))
             (if _$e91695_ _$e91695_ _rel91688_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path91701_)
        (let ((_rel91703_ '#f))
          (gx#core-resolve-module-path__% _stx-path91701_ _rel91703_))))
    (define gx#core-resolve-module-path
      (lambda _g93271_
        (let ((_g93270_ (##length _g93271_)))
          (cond ((##fx= _g93270_ 1)
                 (apply (lambda (_stx-path91701_)
                          (gx#core-resolve-module-path__0 _stx-path91701_))
                        _g93271_))
                ((##fx= _g93270_ 2)
                 (apply (lambda (_stx-path91705_ _rel91706_)
                          (gx#core-resolve-module-path__%
                           _stx-path91705_
                           _rel91706_))
                        _g93271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g93271_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath91573_)
        (let* ((_spath91575_ (symbol->string (gx#stx-e _libpath91573_)))
               (_spath91577_
                (substring _spath91575_ '1 (string-length _spath91575_)))
               (_ext91579_ (path-extension _spath91577_))
               (_ssi91581_
                (if (string-empty? _ext91579_)
                    (string-append _spath91577_ '".ssi")
                    (string-append
                     (path-strip-extension _spath91577_)
                     '".ssi")))
               (_srcs91585_
                (if (string-empty? _ext91579_)
                    (map (lambda (_ext91583_)
                           (string-append _spath91577_ _ext91583_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath91577_ '()))))
          (let _lp91588_ ((_rest91590_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest9159191600_ _rest91590_)
                   (_E9159491604_
                    (lambda ()
                      (error '"No clause matching" _rest9159191600_))))
              (let ((_K9159691674_
                     (lambda (_rest91615_ _dir91616_)
                       (letrec ((_resolve91618_
                                 (lambda (_ssi91630_ _srcs91631_)
                                   (let ((_compiled-path91633_
                                          (path-expand _ssi91630_ _dir91616_)))
                                     (if (file-exists? _compiled-path91633_)
                                         (path-normalize _compiled-path91633_)
                                         (let _lpr91635_ ((_rest-src91637_
                                                           _srcs91631_))
                                           (let* ((_rest-src9163891646_
                                                   _rest-src91637_)
                                                  (_else9164091654_
                                                   (lambda ()
                                                     (_lp91588_ _rest91615_)))
                                                  (_K9164291662_
                                                   (lambda (_rest-src91657_
                                                            _src91658_)
                                                     (let ((_src-path91660_
                                                            (path-expand
                                                             _src91658_
                                                             _dir91616_)))
                                                       (if (file-exists?
                                                            _src-path91660_)
                                                           (path-normalize
                                                            _src-path91660_)
                                                           (_lpr91635_
                                                            _rest-src91657_))))))
                                             (if (##pair? _rest-src9163891646_)
                                                 (let ((_hd9164391665_
                                                        (##car _rest-src9163891646_))
                                                       (_tl9164491667_
                                                        (##cdr _rest-src9163891646_)))
                                                   (let* ((_src91670_
                                                           _hd9164391665_)
                                                          (_rest-src91672_
                                                           _tl9164491667_))
                                                     (_K9164291662_
                                                      _rest-src91672_
                                                      _src91670_)))
                                                 (_else9164091654_)))))))))
                         (let ((_$e91620_
                                (gx#core-library-package-path-prefix
                                 _dir91616_)))
                           (if _$e91620_
                               ((lambda (_prefix91623_)
                                  (if (string-prefix?
                                       _prefix91623_
                                       _spath91577_)
                                      (let ((_ssi91627_
                                             (substring
                                              _ssi91581_
                                              (string-length _prefix91623_)
                                              (string-length _ssi91581_)))
                                            (_srcs91628_
                                             (map (lambda (_src91625_)
                                                    (substring
                                                     _src91625_
                                                     (string-length
                                                      _prefix91623_)
                                                     (string-length
                                                      _src91625_)))
                                                  _srcs91585_)))
                                        (_resolve91618_
                                         _ssi91627_
                                         _srcs91628_))
                                      (_lp91588_ _rest91615_)))
                                _$e91620_)
                               (_resolve91618_ _ssi91581_ _srcs91585_))))))
                    (_K9159591609_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath91573_))))
                (let ((_try-match9159391612_
                       (lambda ()
                         (if (##null? _rest9159191600_)
                             (_K9159591609_)
                             (_E9159491604_)))))
                  (if (##pair? _rest9159191600_)
                      (let ((_tl9159891679_ (##cdr _rest9159191600_))
                            (_hd9159791677_ (##car _rest9159191600_)))
                        (let ((_dir91682_ _hd9159791677_)
                              (_rest91684_ _tl9159891679_))
                          (_K9159691674_ _rest91684_ _dir91682_)))
                      (_try-match9159391612_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath91546_)
        (letrec ((_resolve91548_
                  (lambda (_path91565_ _base91566_)
                    (let ((_$e91568_ (string-rindex__0 _base91566_ '#\/)))
                      (if _$e91568_
                          ((lambda (_idx91571_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base91566_ '0 _idx91571_)
                                '"/"
                                _path91565_))))
                           _$e91568_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path91565_))))))))
          (let ((_spath91550_ (symbol->string (gx#stx-e _modpath91546_)))
                (_mod91551_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod91551_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath91546_))
            (let ((_mpath91553_
                   (symbol->string
                    (##structure-ref
                     _mod91551_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp91555_ ((_spath91557_ _spath91550_)
                              (_mpath91558_ _mpath91553_))
                (if (string-prefix? '"../" _spath91557_)
                    (let ((_$e91560_ (string-rindex__0 _mpath91558_ '#\/)))
                      (if _$e91560_
                          ((lambda (_idx91563_)
                             (_lp91555_
                              (substring
                               _spath91557_
                               '3
                               (string-length _spath91557_))
                              (substring _mpath91558_ '0 _idx91563_)))
                           _$e91560_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath91546_)))
                    (if (string-prefix? '"./" _spath91557_)
                        (_lp91555_
                         (substring
                          _spath91557_
                          '2
                          (string-length _spath91557_))
                         _mpath91558_)
                        (_resolve91548_ _spath91557_ _mpath91558_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir91539_)
        (let ((_$e91541_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _dir91539_))))
          (if _$e91541_
              ((lambda (_pkg91544_)
                 (string-append (symbol->string _pkg91544_) '"/"))
               _$e91541_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir91511_ _exists?91512_)
        (let* ((_cache91514_ (gx#core-library-package-cache))
               (_$e91516_ (hash-get _cache91514_ _dir91511_)))
          (if _$e91516_
              (values _$e91516_)
              (let* ((_gerbil.pkg91519_ (path-expand '"gerbil.pkg" _dir91511_))
                     (_plist91526_
                      (if (or _exists?91512_ (file-exists? _gerbil.pkg91519_))
                          (let ((_e91524_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg91519_
                                  read)))
                            (if (eof-object? _e91524_)
                                '()
                                (if (list? _e91524_)
                                    _e91524_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg91519_
                                     _e91524_))))
                          '())))
                (hash-put! _cache91514_ _dir91511_ _plist91526_)
                _plist91526_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir91532_)
        (let ((_exists?91534_ '#f))
          (gx#core-library-package-plist__% _dir91532_ _exists?91534_))))
    (define gx#core-library-package-plist
      (lambda _g93273_
        (let ((_g93272_ (##length _g93273_)))
          (cond ((##fx= _g93272_ 1)
                 (apply (lambda (_dir91532_)
                          (gx#core-library-package-plist__0 _dir91532_))
                        _g93273_))
                ((##fx= _g93272_ 2)
                 (apply (lambda (_dir91536_ _exists?91537_)
                          (gx#core-library-package-plist__%
                           _dir91536_
                           _exists?91537_))
                        _g93273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g93273_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e91505_ (gx#current-expander-module-library-package-cache)))
          (if _$e91505_
              (values _$e91505_)
              (let ((_cache91508_ (make-hash-table)))
                (gx#current-expander-module-library-package-cache _cache91508_)
                _cache91508_)))))
    (define gx#core-library-module-path?
      (lambda (_stx91502_) (gx#core-special-module-path? _stx91502_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx91500_) (gx#core-special-module-path? _stx91500_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx91495_ _char91496_)
        (if (gx#identifier? _stx91495_)
            (if (interned-symbol? (gx#stx-e _stx91495_))
                (let ((_str91498_ (symbol->string (gx#stx-e _stx91495_))))
                  (if (fx> (string-length _str91498_) '1)
                      (eq? (string-ref _str91498_ '0) _char91496_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx91489_)
        (gx#core-bound-identifier?__%
         _stx91489_
         (lambda (_g9149091492_)
           (gx#expander-binding?__% _g9149091492_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx91483_)
        (gx#core-bound-identifier?__%
         _stx91483_
         (lambda (_g9148491486_)
           (gx#expander-binding?__% _g9148491486_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx91470_)
        (letrec ((_module-prelude?91472_
                  (lambda (_e91478_)
                    (let ((_$e91480_
                           (##structure-instance-of?
                            _e91478_
                            'gx#module-context::t)))
                      (if _$e91480_
                          _$e91480_
                          (##structure-instance-of?
                           _e91478_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx91470_
           (lambda (_g9147391475_)
             (gx#expander-binding?__%
              _g9147391475_
              _module-prelude?91472_))))))
    (define gx#core-bind-import!__%
      (lambda (_in91400_ _ctx91401_ _force-weak?91402_)
        (let* ((_in9140391412_ _in91400_)
               (_E9140591416_
                (lambda () (error '"No clause matching" _in9140391412_)))
               (_K9140691429_
                (lambda (_weak?91419_ _phi91420_ _key91421_ _source91422_)
                  (gx#core-bind!__%
                   _key91421_
                   (let ((_e91424_
                          (gx#core-resolve-module-export _source91422_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e91424_ '1 gx#binding::t '#f)
                      _key91421_
                      _phi91420_
                      _e91424_
                      (##unchecked-structure-ref
                       _source91422_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e91426_ _force-weak?91402_))
                        (if _$e91426_ _$e91426_ _weak?91419_))))
                   gx#core-context-rebind?
                   _phi91420_
                   _ctx91401_))))
          (if (##structure-direct-instance-of?
               _in9140391412_
               'gx#module-import::t)
              (let* ((_e9140791432_
                      (##unchecked-structure-ref
                       _in9140391412_
                       '1
                       gx#module-import::t
                       '#f))
                     (_source91435_ _e9140791432_)
                     (_e9140891437_
                      (##unchecked-structure-ref
                       _in9140391412_
                       '2
                       gx#module-import::t
                       '#f))
                     (_key91440_ _e9140891437_)
                     (_e9140991442_
                      (##unchecked-structure-ref
                       _in9140391412_
                       '3
                       gx#module-import::t
                       '#f))
                     (_phi91445_ _e9140991442_)
                     (_e9141091447_
                      (##unchecked-structure-ref
                       _in9140391412_
                       '4
                       gx#module-import::t
                       '#f))
                     (_weak?91450_ _e9141091447_))
                (_K9140691429_
                 _weak?91450_
                 _phi91445_
                 _key91440_
                 _source91435_))
              (_E9140591416_)))))
    (define gx#core-bind-import!__0
      (lambda (_in91455_)
        (let* ((_ctx91457_ (gx#current-expander-context))
               (_force-weak?91459_ '#f))
          (gx#core-bind-import!__% _in91455_ _ctx91457_ _force-weak?91459_))))
    (define gx#core-bind-import!__1
      (lambda (_in91461_ _ctx91462_)
        (let ((_force-weak?91464_ '#f))
          (gx#core-bind-import!__% _in91461_ _ctx91462_ _force-weak?91464_))))
    (define gx#core-bind-import!
      (lambda _g93275_
        (let ((_g93274_ (##length _g93275_)))
          (cond ((##fx= _g93274_ 1)
                 (apply (lambda (_in91455_)
                          (gx#core-bind-import!__0 _in91455_))
                        _g93275_))
                ((##fx= _g93274_ 2)
                 (apply (lambda (_in91461_ _ctx91462_)
                          (gx#core-bind-import!__1 _in91461_ _ctx91462_))
                        _g93275_))
                ((##fx= _g93274_ 3)
                 (apply (lambda (_in91466_ _ctx91467_ _force-weak?91468_)
                          (gx#core-bind-import!__%
                           _in91466_
                           _ctx91467_
                           _force-weak?91468_))
                        _g93275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g93275_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in91386_ _ctx91387_)
        (gx#core-bind-import!__% _in91386_ _ctx91387_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in91392_)
        (let ((_ctx91394_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in91392_ _ctx91394_))))
    (define gx#core-bind-weak-import!
      (lambda _g93277_
        (let ((_g93276_ (##length _g93277_)))
          (cond ((##fx= _g93276_ 1)
                 (apply (lambda (_in91392_)
                          (gx#core-bind-weak-import!__0 _in91392_))
                        _g93277_))
                ((##fx= _g93276_ 2)
                 (apply (lambda (_in91396_ _ctx91397_)
                          (gx#core-bind-weak-import!__% _in91396_ _ctx91397_))
                        _g93277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g93277_))))))
    (define gx#core-resolve-module-export
      (lambda (_out91277_)
        (letrec ((_subst91279_
                  (lambda (_key91325_)
                    (let* ((_key9132691334_ _key91325_)
                           (_else9132891342_ (lambda () _key91325_))
                           (_K9133091373_
                            (lambda (_mark91345_ _id91346_)
                              (let* ((_mark9134791353_ _mark91345_)
                                     (_E9134991357_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark9134791353_)))
                                     (_K9135091365_
                                      (lambda (_subst91360_)
                                        (let ((_$e91362_
                                               (if _subst91360_
                                                   (hash-get
                                                    _subst91360_
                                                    _id91346_)
                                                   '#f)))
                                          (if _$e91362_
                                              _$e91362_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key91325_))))))
                                (if (##structure-instance-of?
                                     _mark9134791353_
                                     'gx#expander-mark::t)
                                    (let* ((_e9135191368_
                                            (##unchecked-structure-ref
                                             _mark9134791353_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst91371_ _e9135191368_))
                                      (_K9135091365_ _subst91371_))
                                    (_E9134991357_))))))
                      (if (##pair? _key9132691334_)
                          (let ((_hd9133191376_ (##car _key9132691334_))
                                (_tl9133291378_ (##cdr _key9132691334_)))
                            (let* ((_id91381_ _hd9133191376_)
                                   (_mark91383_ _tl9133291378_))
                              (_K9133091373_ _mark91383_ _id91381_)))
                          (_else9132891342_))))))
          (let* ((_out9128091290_ _out91277_)
                 (_E9128291294_
                  (lambda () (error '"No clause matching" _out9128091290_)))
                 (_K9128391301_
                  (lambda (_phi91297_ _key91298_ _ctx91299_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx91299_ _phi91297_)
                     (_subst91279_ _key91298_)))))
            (if (##structure-direct-instance-of?
                 _out9128091290_
                 'gx#module-export::t)
                (let* ((_e9128491304_
                        (##unchecked-structure-ref
                         _out9128091290_
                         '1
                         gx#module-export::t
                         '#f))
                       (_ctx91307_ _e9128491304_)
                       (_e9128591309_
                        (##unchecked-structure-ref
                         _out9128091290_
                         '2
                         gx#module-export::t
                         '#f))
                       (_key91312_ _e9128591309_)
                       (_e9128691314_
                        (##unchecked-structure-ref
                         _out9128091290_
                         '3
                         gx#module-export::t
                         '#f))
                       (_phi91317_ _e9128691314_)
                       (_e9128791319_
                        (##unchecked-structure-ref
                         _out9128091290_
                         '4
                         gx#module-export::t
                         '#f))
                       (_e9128891322_
                        (##unchecked-structure-ref
                         _out9128091290_
                         '5
                         gx#module-export::t
                         '#f)))
                  (_K9128391301_ _phi91317_ _key91312_ _ctx91307_))
                (_E9128291294_))))))
    (define gx#core-module-export->import__%
      (lambda (_out91202_ _rename91203_ _dphi91204_)
        (let* ((_out9120591215_ _out91202_)
               (_E9120791219_
                (lambda () (error '"No clause matching" _out9120591215_)))
               (_K9120891231_
                (lambda (_weak?91222_
                         _name91223_
                         _phi91224_
                         _key91225_
                         _ctx91226_)
                  (##structure
                   gx#module-import::t
                   _out91202_
                   (let ((_$e91228_ _rename91203_))
                     (if _$e91228_ _$e91228_ _name91223_))
                   (fx+ _phi91224_ _dphi91204_)
                   _weak?91222_))))
          (if (##structure-direct-instance-of?
               _out9120591215_
               'gx#module-export::t)
              (let* ((_e9120991234_
                      (##unchecked-structure-ref
                       _out9120591215_
                       '1
                       gx#module-export::t
                       '#f))
                     (_ctx91237_ _e9120991234_)
                     (_e9121091239_
                      (##unchecked-structure-ref
                       _out9120591215_
                       '2
                       gx#module-export::t
                       '#f))
                     (_key91242_ _e9121091239_)
                     (_e9121191244_
                      (##unchecked-structure-ref
                       _out9120591215_
                       '3
                       gx#module-export::t
                       '#f))
                     (_phi91247_ _e9121191244_)
                     (_e9121291249_
                      (##unchecked-structure-ref
                       _out9120591215_
                       '4
                       gx#module-export::t
                       '#f))
                     (_name91252_ _e9121291249_)
                     (_e9121391254_
                      (##unchecked-structure-ref
                       _out9120591215_
                       '5
                       gx#module-export::t
                       '#f))
                     (_weak?91257_ _e9121391254_))
                (_K9120891231_
                 _weak?91257_
                 _name91252_
                 _phi91247_
                 _key91242_
                 _ctx91237_))
              (_E9120791219_)))))
    (define gx#core-module-export->import__0
      (lambda (_out91262_)
        (let* ((_rename91264_ '#f) (_dphi91266_ '0))
          (gx#core-module-export->import__%
           _out91262_
           _rename91264_
           _dphi91266_))))
    (define gx#core-module-export->import__1
      (lambda (_out91268_ _rename91269_)
        (let ((_dphi91271_ '0))
          (gx#core-module-export->import__%
           _out91268_
           _rename91269_
           _dphi91271_))))
    (define gx#core-module-export->import
      (lambda _g93279_
        (let ((_g93278_ (##length _g93279_)))
          (cond ((##fx= _g93278_ 1)
                 (apply (lambda (_out91262_)
                          (gx#core-module-export->import__0 _out91262_))
                        _g93279_))
                ((##fx= _g93278_ 2)
                 (apply (lambda (_out91268_ _rename91269_)
                          (gx#core-module-export->import__1
                           _out91268_
                           _rename91269_))
                        _g93279_))
                ((##fx= _g93278_ 3)
                 (apply (lambda (_out91273_ _rename91274_ _dphi91275_)
                          (gx#core-module-export->import__%
                           _out91273_
                           _rename91274_
                           _dphi91275_))
                        _g93279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g93279_))))))
    (define gx#core-expand-module%
      (lambda (_stx91130_)
        (letrec ((_make-context91132_
                  (lambda (_id91183_)
                    (let* ((_super91185_ (gx#current-expander-context))
                           (_bind-id91187_ (gx#stx-e _id91183_))
                           (_mod-id91189_
                            (if (##structure-instance-of?
                                 _super91185_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##structure-ref
                                  _super91185_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id91187_)
                                _bind-id91187_))
                           (_ns91191_ (symbol->string _mod-id91189_))
                           (_path91198_
                            (if (##structure-instance-of?
                                 _super91185_
                                 'gx#module-context::t)
                                (let ((_path91193_
                                       (##unchecked-structure-ref
                                        _super91185_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path91193_)
                                          (null? _path91193_))
                                      (cons _bind-id91187_ _path91193_)
                                      (if (not _path91193_)
                                          _bind-id91187_
                                          (cons _bind-id91187_
                                                (cons _path91193_ '())))))
                                _bind-id91187_)))
                      (let ((__obj93255
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
                         __obj93255
                         _mod-id91189_
                         _super91185_
                         _ns91191_
                         _path91198_)
                        __obj93255)))))
          (let* ((_e9113391143_ _stx91130_)
                 (_E9113591147_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9113391143_)))
                 (_E9113491179_
                  (lambda ()
                    (if (gx#stx-pair? _e9113391143_)
                        (let ((_e9113691151_ (gx#syntax-e _e9113391143_)))
                          (let ((_hd9113791154_ (##car _e9113691151_))
                                (_tl9113891156_ (##cdr _e9113691151_)))
                            (if (gx#stx-pair? _tl9113891156_)
                                (let ((_e9113991159_
                                       (gx#syntax-e _tl9113891156_)))
                                  (let ((_hd9114091162_ (##car _e9113991159_))
                                        (_tl9114191164_ (##cdr _e9113991159_)))
                                    (let* ((_id91167_ _hd9114091162_)
                                           (_body91169_ _tl9114191164_))
                                      (if (and (gx#identifier? _id91167_)
                                               (gx#stx-list? _body91169_))
                                          (let* ((_ctx91171_
                                                  (_make-context91132_
                                                   _id91167_))
                                                 (_body91173_
                                                  (gx#core-expand-module-begin
                                                   _body91169_
                                                   _ctx91171_))
                                                 (_body91175_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body91173_)
                                                   (gx#stx-source
                                                    _stx91130_))))
                                            (##unchecked-structure-set!
                                             _ctx91171_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body91175_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx91171_
                                             _body91175_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id91167_
                                             _ctx91171_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id91167_)
                                              _body91175_)
                                             (gx#stx-source _stx91130_)))
                                          (_E9113591147_)))))
                                (_E9113591147_))))
                        (_E9113591147_)))))
            (_E9113491179_)))))
    (define gx#core-expand-module-begin
      (lambda (_body91096_ _ctx91097_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx91100_
                   (gx#core-expand-head (cons '%%begin-module _body91096_)))
                  (_e9110191108_ _stx91100_)
                  (_E9110391112_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx91100_)))
                  (_E9110291126_
                   (lambda ()
                     (if (gx#stx-pair? _e9110191108_)
                         (let ((_e9110491116_ (gx#syntax-e _e9110191108_)))
                           (let ((_hd9110591119_ (##car _e9110491116_))
                                 (_tl9110691121_ (##cdr _e9110491116_)))
                             (if (and (gx#identifier? _hd9110591119_)
                                      (gx#core-identifier=?
                                       _hd9110591119_
                                       '%#begin-module))
                                 (let ((_body91124_ _tl9110691121_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx91100_)
                                           _body91124_
                                           (gx#core-expand-module-body
                                            _body91124_))
                                       (_E9110391112_)))
                                 (_E9110391112_))))
                         (_E9110391112_)))))
             (_E9110291126_)))
         gx#current-expander-context
         _ctx91097_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body90892_)
        (letrec ((_expand-special90894_
                  (lambda (_hd91023_ _K91024_ _rest91025_ _r91026_)
                    (let* ((_e9102791044_ _hd91023_)
                           (_E9103991048_
                            (lambda ()
                              (_K91024_
                               _rest91025_
                               (cons (gx#core-expand-top _hd91023_)
                                     _r91026_))))
                           (_E9102991060_
                            (lambda ()
                              (if (gx#stx-pair? _e9102791044_)
                                  (let ((_e9104091052_
                                         (gx#syntax-e _e9102791044_)))
                                    (let ((_hd9104191055_
                                           (##car _e9104091052_))
                                          (_tl9104291057_
                                           (##cdr _e9104091052_)))
                                      (if (and (gx#identifier? _hd9104191055_)
                                               (gx#core-identifier=?
                                                _hd9104191055_
                                                '%#export))
                                          (if '#t
                                              (_K91024_
                                               _rest91025_
                                               (cons _hd91023_ _r91026_))
                                              (_E9103991048_))
                                          (_E9103991048_))))
                                  (_E9103991048_))))
                           (_E9102891092_
                            (lambda ()
                              (if (gx#stx-pair? _e9102791044_)
                                  (let ((_e9103091064_
                                         (gx#syntax-e _e9102791044_)))
                                    (let ((_hd9103191067_
                                           (##car _e9103091064_))
                                          (_tl9103291069_
                                           (##cdr _e9103091064_)))
                                      (if (and (gx#identifier? _hd9103191067_)
                                               (gx#core-identifier=?
                                                _hd9103191067_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9103291069_)
                                              (let ((_e9103391072_
                                                     (gx#syntax-e
                                                      _tl9103291069_)))
                                                (let ((_hd9103491075_
                                                       (##car _e9103391072_))
                                                      (_tl9103591077_
                                                       (##cdr _e9103391072_)))
                                                  (let ((_hd-bind91080_
                                                         _hd9103491075_))
                                                    (if (gx#stx-pair?
                                                         _tl9103591077_)
                                                        (let ((_e9103691082_
                                                               (gx#syntax-e
                                                                _tl9103591077_)))
                                                          (let ((_hd9103791085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9103691082_))
                        (_tl9103891087_ (##cdr _e9103691082_)))
                    (let ((_expr91090_ _hd9103791085_))
                      (if (gx#stx-null? _tl9103891087_)
                          (if (gx#core-bind-values? _hd-bind91080_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind91080_)
                                (_K91024_
                                 _rest91025_
                                 (cons _hd91023_ _r91026_)))
                              (_E9102991060_))
                          (_E9102991060_)))))
                (_E9102991060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9102991060_))
                                          (_E9102991060_))))
                                  (_E9102991060_)))))
                      (_E9102891092_))))
                 (_expand-body90895_
                  (lambda (_rbody90897_)
                    (let _lp90899_ ((_rest90901_ _rbody90897_)
                                    (_body90902_ '()))
                      (let* ((_rest9090390911_ _rest90901_)
                             (_else9090590919_ (lambda () _body90902_))
                             (_K9090791011_
                              (lambda (_rest90922_ _hd90923_)
                                (let* ((_e9092490945_ _hd90923_)
                                       (_E9094090949_
                                        (lambda ()
                                          (_lp90899_
                                           _rest90922_
                                           (cons (gx#core-expand-expression
                                                  _hd90923_)
                                                 _body90902_))))
                                       (_E9093690963_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9092490945_)
                                              (let ((_e9094190953_
                                                     (gx#syntax-e
                                                      _e9092490945_)))
                                                (let ((_hd9094290956_
                                                       (##car _e9094190953_))
                                                      (_tl9094390958_
                                                       (##cdr _e9094190953_)))
                                                  (let ((_form90961_
                                                         _hd9094290956_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form90961_
                                                         gx#special-form-binding?)
                                                        (_lp90899_
                                                         _rest90922_
                                                         (cons _hd90923_
                                                               _body90902_))
                                                        (_E9094090949_)))))
                                              (_E9094090949_))))
                                       (_E9092690975_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9092490945_)
                                              (let ((_e9093790967_
                                                     (gx#syntax-e
                                                      _e9092490945_)))
                                                (let ((_hd9093890970_
                                                       (##car _e9093790967_))
                                                      (_tl9093990972_
                                                       (##cdr _e9093790967_)))
                                                  (if (and (gx#identifier?
                                                            _hd9093890970_)
                                                           (gx#core-identifier=?
                                                            _hd9093890970_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp90899_
                                                           _rest90922_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90923_)
                         _body90902_))
                  (_E9093690963_))
              (_E9093690963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9093690963_))))
                                       (_E9092591007_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9092490945_)
                                              (let ((_e9092790979_
                                                     (gx#syntax-e
                                                      _e9092490945_)))
                                                (let ((_hd9092890982_
                                                       (##car _e9092790979_))
                                                      (_tl9092990984_
                                                       (##cdr _e9092790979_)))
                                                  (if (and (gx#identifier?
                                                            _hd9092890982_)
                                                           (gx#core-identifier=?
                                                            _hd9092890982_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9092990984_)
                                                          (let ((_e9093090987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9092990984_)))
                    (let ((_hd9093190990_ (##car _e9093090987_))
                          (_tl9093290992_ (##cdr _e9093090987_)))
                      (let ((_hd-bind90995_ _hd9093190990_))
                        (if (gx#stx-pair? _tl9093290992_)
                            (let ((_e9093390997_ (gx#syntax-e _tl9093290992_)))
                              (let ((_hd9093491000_ (##car _e9093390997_))
                                    (_tl9093591002_ (##cdr _e9093390997_)))
                                (let ((_expr91005_ _hd9093491000_))
                                  (if (gx#stx-null? _tl9093591002_)
                                      (if '#t
                                          (_lp90899_
                                           _rest90922_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind90995_)
                                                   (gx#core-expand-expression
                                                    _expr91005_))
                                                  (gx#stx-source _hd90923_))
                                                 _body90902_))
                                          (_E9092690975_))
                                      (_E9092690975_)))))
                            (_E9092690975_)))))
                  (_E9092690975_))
              (_E9092690975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9092690975_)))))
                                  (_E9092591007_)))))
                        (if (##pair? _rest9090390911_)
                            (let ((_hd9090891014_ (##car _rest9090390911_))
                                  (_tl9090991016_ (##cdr _rest9090390911_)))
                              (let* ((_hd91019_ _hd9090891014_)
                                     (_rest91021_ _tl9090991016_))
                                (_K9090791011_ _rest91021_ _hd91019_)))
                            (_else9090590919_)))))))
          (_expand-body90895_
           (gx#core-expand-block__%
            (cons '%#begin-module _body90892_)
            _expand-special90894_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx90735_
               _expanded?90736_
               _method90737_
               _current-phi90738_
               _expand190739_)
        (letrec ((_K90741_
                  (lambda (_rest90859_ _r90860_)
                    (let* ((_e9086190868_ _rest90859_)
                           (_E9086390872_ (lambda () _r90860_))
                           (_E9086290888_
                            (lambda ()
                              (if (gx#stx-pair? _e9086190868_)
                                  (let ((_e9086490876_
                                         (gx#syntax-e _e9086190868_)))
                                    (let ((_hd9086590879_
                                           (##car _e9086490876_))
                                          (_tl9086690881_
                                           (##cdr _e9086490876_)))
                                      (let* ((_hd90884_ _hd9086590879_)
                                             (_rest90886_ _tl9086690881_))
                                        (if '#t
                                            (_step90742_
                                             _hd90884_
                                             _rest90886_
                                             _r90860_)
                                            (_E9086390872_)))))
                                  (_E9086390872_)))))
                      (_E9086290888_))))
                 (_step90742_
                  (lambda (_hd90773_ _rest90774_ _r90775_)
                    (let* ((_e9077690794_ _hd90773_)
                           (_E9078990798_
                            (lambda ()
                              (if (_expanded?90736_ (gx#stx-e _hd90773_))
                                  (_K90741_
                                   _rest90774_
                                   (cons (gx#stx-e _hd90773_) _r90775_))
                                  (_expand190739_
                                   _hd90773_
                                   _K90741_
                                   _rest90774_
                                   _r90775_))))
                           (_E9078590814_
                            (lambda ()
                              (if (gx#stx-pair? _e9077690794_)
                                  (let ((_e9079090802_
                                         (gx#syntax-e _e9077690794_)))
                                    (let ((_hd9079190805_
                                           (##car _e9079090802_))
                                          (_tl9079290807_
                                           (##cdr _e9079090802_)))
                                      (let* ((_macro90810_ _hd9079190805_)
                                             (_body90812_ _tl9079290807_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro90810_
                                             gx#syntax-binding?)
                                            (_K90741_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro90810_)
                                                    _hd90773_
                                                    _method90737_)
                                                   _rest90774_)
                                             _r90775_)
                                            (_E9078990798_)))))
                                  (_E9078990798_))))
                           (_E9077890828_
                            (lambda ()
                              (if (gx#stx-pair? _e9077690794_)
                                  (let ((_e9078690818_
                                         (gx#syntax-e _e9077690794_)))
                                    (let ((_hd9078790821_
                                           (##car _e9078690818_))
                                          (_tl9078890823_
                                           (##cdr _e9078690818_)))
                                      (if (eq? (gx#stx-e _hd9078790821_)
                                               'begin:)
                                          (let ((_body90826_ _tl9078890823_))
                                            (if '#t
                                                (_K90741_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest90774_
                                                  _body90826_)
                                                 _r90775_)
                                                (_E9078590814_)))
                                          (_E9078590814_))))
                                  (_E9078590814_))))
                           (_E9077790855_
                            (lambda ()
                              (if (gx#stx-pair? _e9077690794_)
                                  (let ((_e9077990832_
                                         (gx#syntax-e _e9077690794_)))
                                    (let ((_hd9078090835_
                                           (##car _e9077990832_))
                                          (_tl9078190837_
                                           (##cdr _e9077990832_)))
                                      (if (eq? (gx#stx-e _hd9078090835_) 'phi:)
                                          (if (gx#stx-pair? _tl9078190837_)
                                              (let ((_e9078290840_
                                                     (gx#syntax-e
                                                      _tl9078190837_)))
                                                (let ((_hd9078390843_
                                                       (##car _e9078290840_))
                                                      (_tl9078490845_
                                                       (##cdr _e9078290840_)))
                                                  (let* ((_dphi90848_
                                                          _hd9078390843_)
                                                         (_body90850_
                                                          _tl9078490845_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi90848_)
                                                        (let ((_rbody90853_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K90741_ _body90850_ '()))
                        _current-phi90738_
                        (fx+ (gx#stx-e _dphi90848_) (_current-phi90738_)))))
                  (_K90741_ _rest90774_ (foldr1 cons _r90775_ _rbody90853_)))
                (_E9077890828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9077890828_))
                                          (_E9077890828_))))
                                  (_E9077890828_)))))
                      (_E9077790855_)))))
          (let* ((_e9074390750_ _stx90735_)
                 (_E9074590754_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e9074390750_)))
                 (_E9074490769_
                  (lambda ()
                    (if (gx#stx-pair? _e9074390750_)
                        (let ((_e9074690758_ (gx#syntax-e _e9074390750_)))
                          (let ((_hd9074790761_ (##car _e9074690758_))
                                (_tl9074890763_ (##cdr _e9074690758_)))
                            (let ((_body90766_ _tl9074890763_))
                              (if '#t
                                  (if (_current-phi90738_)
                                      (_K90741_ _body90766_ '())
                                      (call-with-parameters
                                       (lambda () (_K90741_ _body90766_ '()))
                                       _current-phi90738_
                                       (gx#current-expander-phi)))
                                  (_E9074590754_)))))
                        (_E9074590754_)))))
            (_E9074490769_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx90402_ _internal-expand?90403_)
        (letrec ((_expand190405_
                  (lambda (_hd90715_ _K90716_ _rest90717_ _r90718_)
                    (if (gx#core-bound-module? _hd90715_)
                        (_import190406_
                         (gx#syntax-local-e__0 _hd90715_)
                         _K90716_
                         _rest90717_
                         _r90718_)
                        (if (gx#core-library-module-path? _hd90715_)
                            (_import190406_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd90715_))
                             _K90716_
                             _rest90717_
                             _r90718_)
                            (if (gx#core-library-relative-module-path?
                                 _hd90715_)
                                (_import190406_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd90715_))
                                 _K90716_
                                 _rest90717_
                                 _r90718_)
                                (let ((_e90720_ (gx#stx-e _hd90715_)))
                                  (if (pair? _e90720_)
                                      (let ((_$e90722_
                                             (gx#stx-e (car _e90720_))))
                                        (if (eq? 'spec: _$e90722_)
                                            (_import-spec90409_
                                             _hd90715_
                                             _K90716_
                                             _rest90717_
                                             _r90718_)
                                            (if (eq? 'in: _$e90722_)
                                                (_import-submodule90407_
                                                 _hd90715_
                                                 _K90716_
                                                 _rest90717_
                                                 _r90718_)
                                                (if (eq? 'runtime: _$e90722_)
                                                    (_import-runtime90408_
                                                     _hd90715_
                                                     _K90716_
                                                     _rest90717_
                                                     _r90718_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx90402_
                                                     _hd90715_)))))
                                      (if (string? _e90720_)
                                          (_import190406_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd90715_
                                             (gx#stx-source _stx90402_)))
                                           _K90716_
                                           _rest90717_
                                           _r90718_)
                                          (if (##structure-instance-of?
                                               _e90720_
                                               'gx#module-context::t)
                                              (_K90716_
                                               _rest90717_
                                               (cons _e90720_ _r90718_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx90402_
                                               _hd90715_))))))))))
                 (_import190406_
                  (lambda (_ctx90704_ _K90705_ _rest90706_ _r90707_)
                    (let ((_dphi90709_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K90705_
                       _rest90706_
                       (cons (##structure
                              gx#import-set::t
                              _ctx90704_
                              _dphi90709_
                              (map (lambda (_g9071090712_)
                                     (gx#core-module-export->import__%
                                      _g9071090712_
                                      '#f
                                      _dphi90709_))
                                   (##unchecked-structure-ref
                                    _ctx90704_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r90707_)))))
                 (_import-submodule90407_
                  (lambda (_hd90671_ _K90672_ _rest90673_ _r90674_)
                    (let* ((_e9067590682_ _hd90671_)
                           (_E9067790686_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9067590682_)))
                           (_E9067690700_
                            (lambda ()
                              (if (gx#stx-pair? _e9067590682_)
                                  (let ((_e9067890690_
                                         (gx#syntax-e _e9067590682_)))
                                    (let ((_hd9067990693_
                                           (##car _e9067890690_))
                                          (_tl9068090695_
                                           (##cdr _e9067890690_)))
                                      (let ((_spath90698_ _tl9068090695_))
                                        (if '#t
                                            (_import190406_
                                             (_import-spec-source90410_
                                              _spath90698_)
                                             _K90672_
                                             _rest90673_
                                             _r90674_)
                                            (_E9067790686_)))))
                                  (_E9067790686_)))))
                      (_E9067690700_))))
                 (_import-runtime90408_
                  (lambda (_hd90638_ _K90639_ _rest90640_ _r90641_)
                    (let* ((_e9064290649_ _hd90638_)
                           (_E9064490653_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9064290649_)))
                           (_E9064390667_
                            (lambda ()
                              (if (gx#stx-pair? _e9064290649_)
                                  (let ((_e9064590657_
                                         (gx#syntax-e _e9064290649_)))
                                    (let ((_hd9064690660_
                                           (##car _e9064590657_))
                                          (_tl9064790662_
                                           (##cdr _e9064590657_)))
                                      (let ((_spath90665_ _tl9064790662_))
                                        (if '#t
                                            (_K90639_
                                             _rest90640_
                                             (cons (_import-spec-source90410_
                                                    _spath90665_)
                                                   _r90641_))
                                            (_E9064490653_)))))
                                  (_E9064490653_)))))
                      (_E9064390667_))))
                 (_import-spec90409_
                  (lambda (_hd90477_ _K90478_ _rest90479_ _r90480_)
                    (let* ((_e9048190498_ _hd90477_)
                           (_E9049090502_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9048190498_)))
                           (_E9048390612_
                            (lambda ()
                              (if (gx#stx-pair? _e9048190498_)
                                  (let ((_e9049190506_
                                         (gx#syntax-e _e9048190498_)))
                                    (let ((_hd9049290509_
                                           (##car _e9049190506_))
                                          (_tl9049390511_
                                           (##cdr _e9049190506_)))
                                      (if (gx#stx-pair? _tl9049390511_)
                                          (let ((_e9049490514_
                                                 (gx#syntax-e _tl9049390511_)))
                                            (let ((_hd9049590517_
                                                   (##car _e9049490514_))
                                                  (_tl9049690519_
                                                   (##cdr _e9049490514_)))
                                              (let* ((_path90522_
                                                      _hd9049590517_)
                                                     (_specs90524_
                                                      _tl9049690519_))
                                                (if '#t
                                                    (let ((_src-ctx90526_
                                                           (_import-spec-source90410_
                                                            _path90522_))
                                                          (_exports90527_
                                                           (make-hash-table))
                                                          (_specs90528_
                                                           (gx#syntax->list
                                                            _specs90524_)))
                                                      (for-each
                                                       (lambda (_out90530_)
                                                         (hash-put!
                                                          _exports90527_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out90530_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out90530_
                         '4
                         gx#module-export::t
                         '#f))
                  _out90530_))
               (##unchecked-structure-ref
                _src-ctx90526_
                '9
                gx#module-context::t
                '#f))
              (_K90478_
               _rest90479_
               (foldl1 (lambda (_spec90532_ _r90533_)
                         (let* ((_e9053490550_ _spec90532_)
                                (_E9053690554_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid syntax-case clause"
                                    _e9053490550_)))
                                (_E9053590608_
                                 (lambda ()
                                   (if (gx#stx-pair? _e9053490550_)
                                       (let ((_e9053790558_
                                              (gx#syntax-e _e9053490550_)))
                                         (let ((_hd9053890561_
                                                (##car _e9053790558_))
                                               (_tl9053990563_
                                                (##cdr _e9053790558_)))
                                           (let ((_phi90566_ _hd9053890561_))
                                             (if (gx#stx-pair? _tl9053990563_)
                                                 (let ((_e9054090568_
                                                        (gx#syntax-e
                                                         _tl9053990563_)))
                                                   (let ((_hd9054190571_
                                                          (##car _e9054090568_))
                                                         (_tl9054290573_
                                                          (##cdr _e9054090568_)))
                                                     (let ((_name90576_
                                                            _hd9054190571_))
                                                       (if (gx#stx-pair?
                                                            _tl9054290573_)
                                                           (let ((_e9054390578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl9054290573_)))
                     (let ((_hd9054490581_ (##car _e9054390578_))
                           (_tl9054590583_ (##cdr _e9054390578_)))
                       (let ((_src-phi90586_ _hd9054490581_))
                         (if (gx#stx-pair? _tl9054590583_)
                             (let ((_e9054690588_
                                    (gx#syntax-e _tl9054590583_)))
                               (let ((_hd9054790591_ (##car _e9054690588_))
                                     (_tl9054890593_ (##cdr _e9054690588_)))
                                 (let ((_src-name90596_ _hd9054790591_))
                                   (if (gx#stx-null? _tl9054890593_)
                                       (if (and (gx#stx-fixnum? _src-phi90586_)
                                                (gx#identifier?
                                                 _src-name90596_)
                                                (gx#stx-fixnum? _phi90566_)
                                                (gx#identifier? _name90576_))
                                           (let ((_src-phi90598_
                                                  (gx#stx-e _src-phi90586_))
                                                 (_src-name90599_
                                                  (gx#core-identifier-key
                                                   _src-name90596_))
                                                 (_phi90600_
                                                  (gx#stx-e _phi90566_))
                                                 (_name90601_
                                                  (gx#core-identifier-key
                                                   _name90576_)))
                                             (let ((_$e90603_
                                                    (hash-get
                                                     _exports90527_
                                                     (cons _src-phi90598_
                                                           _src-name90599_))))
                                               (if _$e90603_
                                                   ((lambda (_out90606_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out90606_
                                                             _name90601_
                                                             (fx- _phi90600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi90598_))
                    _r90533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e90603_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx90402_
                                                    _hd90477_))))
                                           (_E9053690554_))
                                       (_E9053690554_)))))
                             (_E9053690554_)))))
                   (_E9053690554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E9053690554_)))))
                                       (_E9053690554_)))))
                           (_E9053590608_)))
                       _r90480_
                       _specs90528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9049090502_)))))
                                          (_E9049090502_))))
                                  (_E9049090502_))))
                           (_E9048290634_
                            (lambda ()
                              (if (gx#stx-pair? _e9048190498_)
                                  (let ((_e9048490616_
                                         (gx#syntax-e _e9048190498_)))
                                    (let ((_hd9048590619_
                                           (##car _e9048490616_))
                                          (_tl9048690621_
                                           (##cdr _e9048490616_)))
                                      (if (gx#stx-pair? _tl9048690621_)
                                          (let ((_e9048790624_
                                                 (gx#syntax-e _tl9048690621_)))
                                            (let ((_hd9048890627_
                                                   (##car _e9048790624_))
                                                  (_tl9048990629_
                                                   (##cdr _e9048790624_)))
                                              (let ((_path90632_
                                                     _hd9048890627_))
                                                (if (gx#stx-null?
                                                     _tl9048990629_)
                                                    (if '#t
                                                        (_K90478_
                                                         _rest90479_
                                                         (cons (_import-spec-source90410_
                                                                _path90632_)
                                                               _r90480_))
                                                        (_E9048390612_))
                                                    (_E9048390612_)))))
                                          (_E9048390612_))))
                                  (_E9048390612_)))))
                      (_E9048290634_))))
                 (_import-spec-source90410_
                  (lambda (_spath90475_)
                    (gx#core-import-nested-module _spath90475_ _stx90402_)))
                 (_import!90411_
                  (lambda (_rbody90424_)
                    (letrec* ((_current-ctx90426_
                               (gx#current-expander-context))
                              (_deps90427_ (make-hash-table-eq))
                              (_bind!90428_
                               (lambda (_hd90473_)
                                 (gx#core-bind-import!__1
                                  _hd90473_
                                  _current-ctx90426_))))
                      (let _lp90430_ ((_rest90432_ _rbody90424_)
                                      (_body90433_ '()))
                        (let* ((_rest9043490442_ _rest90432_)
                               (_else9043690452_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx90426_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx90426_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx90426_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body90433_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (hash-for-each
                                   (lambda (_ctx90450_ _g93280_)
                                     (gx#eval-module _ctx90450_))
                                   _deps90427_)
                                  _body90433_))
                               (_K9043890461_
                                (lambda (_rest90455_ _hd90456_)
                                  (if (##structure-direct-instance-of?
                                       _hd90456_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!90428_ _hd90456_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd90456_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd90456_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (hash-put!
                                             _deps90427_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd90456_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd90456_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!90428_
                                             (##unchecked-structure-ref
                                              _hd90456_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd90456_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (hash-put!
                                                 _deps90427_
                                                 (##unchecked-structure-ref
                                                  _hd90456_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e90458_
                                                 (##structure-instance-of?
                                                  _hd90456_
                                                  'gx#module-context::t)))
                                            (if _$e90458_
                                                _$e90458_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx90402_
                                                 _hd90456_)))))
                                  (_lp90430_
                                   _rest90455_
                                   (cons _hd90456_ _body90433_)))))
                          (if (##pair? _rest9043490442_)
                              (let ((_hd9043990464_ (##car _rest9043490442_))
                                    (_tl9044090466_ (##cdr _rest9043490442_)))
                                (let* ((_hd90469_ _hd9043990464_)
                                       (_rest90471_ _tl9044090466_))
                                  (_K9043890461_ _rest90471_ _hd90469_)))
                              (_else9043690452_)))))))
                 (_expanded-import?90412_
                  (lambda (_e90416_)
                    (let ((_$e90418_
                           (##structure-direct-instance-of?
                            _e90416_
                            'gx#import-set::t)))
                      (if _$e90418_
                          _$e90418_
                          (let ((_$e90421_
                                 (##structure-direct-instance-of?
                                  _e90416_
                                  'gx#module-import::t)))
                            (if _$e90421_
                                _$e90421_
                                (##structure-instance-of?
                                 _e90416_
                                 'gx#module-context::t))))))))
          (let ((_rbody90414_
                 (gx#core-expand-import/export
                  _stx90402_
                  _expanded-import?90412_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand190405_)))
            (if _internal-expand?90403_
                (reverse _rbody90414_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!90411_ _rbody90414_))
                 (gx#stx-source _stx90402_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx90728_)
        (let ((_internal-expand?90730_ '#f))
          (gx#core-expand-import%__% _stx90728_ _internal-expand?90730_))))
    (define gx#core-expand-import%
      (lambda _g93282_
        (let ((_g93281_ (##length _g93282_)))
          (cond ((##fx= _g93281_ 1)
                 (apply (lambda (_stx90728_)
                          (gx#core-expand-import%__0 _stx90728_))
                        _g93282_))
                ((##fx= _g93281_ 2)
                 (apply (lambda (_stx90732_ _internal-expand?90733_)
                          (gx#core-expand-import%__%
                           _stx90732_
                           _internal-expand?90733_))
                        _g93282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g93282_))))))
    (define gx#core-import-nested-module
      (lambda (_spath90329_ _where90330_)
        (let* ((_e9033190338_ _spath90329_)
               (_E9033390342_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9033190338_)))
               (_E9033290397_
                (lambda ()
                  (if (gx#stx-pair? _e9033190338_)
                      (let ((_e9033490346_ (gx#syntax-e _e9033190338_)))
                        (let ((_hd9033590349_ (##car _e9033490346_))
                              (_tl9033690351_ (##cdr _e9033490346_)))
                          (let* ((_origin90354_ _hd9033590349_)
                                 (_sub90356_ _tl9033690351_))
                            (if '#t
                                (let ((_origin-ctx90358_
                                       (if (gx#stx-false? _origin90354_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin90354_))))
                                  (let _lp90360_ ((_rest90362_ _sub90356_)
                                                  (_ctx90363_
                                                   _origin-ctx90358_))
                                    (let* ((_e9036490371_ _rest90362_)
                                           (_E9036690375_
                                            (lambda () _ctx90363_))
                                           (_E9036590393_
                                            (lambda ()
                                              (if (gx#stx-pair? _e9036490371_)
                                                  (let ((_e9036790379_
                                                         (gx#syntax-e
                                                          _e9036490371_)))
                                                    (let ((_hd9036890382_
                                                           (##car _e9036790379_))
                                                          (_tl9036990384_
                                                           (##cdr _e9036790379_)))
                                                      (let* ((_id90387_
                                                              _hd9036890382_)
                                                             (_rest90389_
                                                              _tl9036990384_))
                                                        (if '#t
                                                            (let ((_bind90391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id90387_ '0 _ctx90363_)))
                      (if (and (##structure-direct-instance-of?
                                _bind90391_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind90391_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where90330_
                           _spath90329_
                           _id90387_))
                      (_lp90360_
                       _rest90389_
                       (##unchecked-structure-ref
                        _bind90391_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E9036690375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9036690375_)))))
                                      (_E9036590393_))))
                                (_E9033390342_)))))
                      (_E9033390342_)))))
          (_E9033290397_))))
    (define gx#core-expand-import-source
      (lambda (_hd90327_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd90327_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx89835_ _internal-expand?89836_)
        (letrec* ((_make-export__9321193212_
                   (lambda (_bind90275_ _phi90276_ _ctx90277_ _name90278_)
                     (let* ((_key90280_
                             (##unchecked-structure-ref
                              _bind90275_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key90282_
                             (if _name90278_
                                 (gx#core-identifier-key _name90278_)
                                 _key90280_)))
                       (##structure
                        gx#module-export::t
                        _ctx90277_
                        _key90280_
                        _phi90276_
                        _export-key90282_
                        (let ((_$e90285_
                               (##structure-instance-of?
                                _bind90275_
                                'gx#extern-binding::t)))
                          (if _$e90285_
                              _$e90285_
                              (##structure-direct-instance-of?
                               _bind90275_
                               'gx#import-binding::t)))))))
                  (_make-export__0__9321393216_
                   (lambda (_bind90291_)
                     (let* ((_phi90293_ (gx#current-export-expander-phi))
                            (_ctx90295_ (gx#current-expander-context))
                            (_name90297_ '#f))
                       (_make-export__9321193212_
                        _bind90291_
                        _phi90293_
                        _ctx90295_
                        _name90297_))))
                  (_make-export__1__9321493217_
                   (lambda (_bind90299_ _phi90300_)
                     (let* ((_ctx90302_ (gx#current-expander-context))
                            (_name90304_ '#f))
                       (_make-export__9321193212_
                        _bind90299_
                        _phi90300_
                        _ctx90302_
                        _name90304_))))
                  (_make-export__2__9321593218_
                   (lambda (_bind90306_ _phi90307_ _ctx90308_)
                     (let ((_name90310_ '#f))
                       (_make-export__9321193212_
                        _bind90306_
                        _phi90307_
                        _ctx90308_
                        _name90310_))))
                  (_make-export89838_
                   (lambda _g93284_
                     (let ((_g93283_ (##length _g93284_)))
                       (cond ((##fx= _g93283_ 1)
                              (apply (lambda (_bind90291_)
                                       (_make-export__0__9321393216_
                                        _bind90291_))
                                     _g93284_))
                             ((##fx= _g93283_ 2)
                              (apply (lambda (_bind90299_ _phi90300_)
                                       (_make-export__1__9321493217_
                                        _bind90299_
                                        _phi90300_))
                                     _g93284_))
                             ((##fx= _g93283_ 3)
                              (apply (lambda (_bind90306_
                                              _phi90307_
                                              _ctx90308_)
                                       (_make-export__2__9321593218_
                                        _bind90306_
                                        _phi90307_
                                        _ctx90308_))
                                     _g93284_))
                             ((##fx= _g93283_ 4)
                              (apply (lambda (_bind90312_
                                              _phi90313_
                                              _ctx90314_
                                              _name90315_)
                                       (_make-export__9321193212_
                                        _bind90312_
                                        _phi90313_
                                        _ctx90314_
                                        _name90315_))
                                     _g93284_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g93284_))))))
                  (_expand189839_
                   (lambda (_hd89988_ _K89989_ _rest89990_ _r89991_)
                     (let* ((_e8999290024_ _hd89988_)
                            (_E9001990028_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx89835_
                                _hd89988_)))
                            (_E9000990107_
                             (lambda ()
                               (if (gx#stx-pair? _e8999290024_)
                                   (let ((_e9002090032_
                                          (gx#syntax-e _e8999290024_)))
                                     (let ((_hd9002190035_
                                            (##car _e9002090032_))
                                           (_tl9002290037_
                                            (##cdr _e9002090032_)))
                                       (if (eq? (gx#stx-e _hd9002190035_)
                                                'import:)
                                           (let ((_in90040_ _tl9002290037_))
                                             (if (gx#stx-list? _in90040_)
                                                 (let _lp90042_ ((_in-rest90044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in90040_)
                         (_r90045_ _r89991_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e9004690053_
                                                           _in-rest90044_)
                                                          (_E9004890057_
                                                           (lambda ()
                                                             (_K89989_
                                                              _rest89990_
                                                              _r90045_)))
                                                          (_E9004790103_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e9004690053_)
                         (let ((_e9004990061_ (gx#syntax-e _e9004690053_)))
                           (let ((_hd9005090064_ (##car _e9004990061_))
                                 (_tl9005190066_ (##cdr _e9004990061_)))
                             (let* ((_hd90069_ _hd9005090064_)
                                    (_in-rest90071_ _tl9005190066_))
                               (if '#t
                                   (let ((_src90101_
                                          (if (gx#core-bound-module? _hd90069_)
                                              (gx#syntax-local-e__0 _hd90069_)
                                              (if (gx#core-library-module-path?
                                                   _hd90069_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd90069_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd90069_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd90069_))
                                                      (if (gx#stx-string?
                                                           _hd90069_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd90069_
                                                            (gx#stx-source
                                                             _stx89835_)))
                                                          (let* ((_e9007290079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd90069_)
                         (_E9007490083_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx89835_
                             _hd90069_)))
                         (_E9007390097_
                          (lambda ()
                            (if (gx#stx-pair? _e9007290079_)
                                (let ((_e9007590087_
                                       (gx#syntax-e _e9007290079_)))
                                  (let ((_hd9007690090_ (##car _e9007590087_))
                                        (_tl9007790092_ (##cdr _e9007590087_)))
                                    (if (eq? (gx#stx-e _hd9007690090_) 'in:)
                                        (let ((_spath90095_ _tl9007790092_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath90095_
                                               _stx89835_)
                                              (_E9007490083_)))
                                        (_E9007490083_))))
                                (_E9007490083_)))))
                    (_E9007390097_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp90042_
                                      _in-rest90071_
                                      (_export-imports89840_
                                       _src90101_
                                       _r90045_)))
                                   (_E9004890057_)))))
                         (_E9004890057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9004790103_)))
                                                 (_E9001990028_)))
                                           (_E9001990028_))))
                                   (_E9001990028_))))
                            (_E8999690146_
                             (lambda ()
                               (if (gx#stx-pair? _e8999290024_)
                                   (let ((_e9001090111_
                                          (gx#syntax-e _e8999290024_)))
                                     (let ((_hd9001190114_
                                            (##car _e9001090111_))
                                           (_tl9001290116_
                                            (##cdr _e9001090111_)))
                                       (if (eq? (gx#stx-e _hd9001190114_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl9001290116_)
                                               (let ((_e9001390119_
                                                      (gx#syntax-e
                                                       _tl9001290116_)))
                                                 (let ((_hd9001490122_
                                                        (##car _e9001390119_))
                                                       (_tl9001590124_
                                                        (##cdr _e9001390119_)))
                                                   (let ((_id90127_
                                                          _hd9001490122_))
                                                     (if (gx#stx-pair?
                                                          _tl9001590124_)
                                                         (let ((_e9001690129_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9001590124_)))
                   (let ((_hd9001790132_ (##car _e9001690129_))
                         (_tl9001890134_ (##cdr _e9001690129_)))
                     (let ((_name90137_ _hd9001790132_))
                       (if (gx#stx-null? _tl9001890134_)
                           (if '#t
                               (let* ((_phi90139_
                                       (gx#current-export-expander-phi))
                                      (_$e90141_
                                       (gx#core-resolve-identifier__1
                                        _id90127_
                                        _phi90139_)))
                                 (if _$e90141_
                                     ((lambda (_bind90144_)
                                        (_K89989_
                                         _rest89990_
                                         (cons (_make-export__9321193212_
                                                _bind90144_
                                                _phi90139_
                                                (gx#current-expander-context)
                                                _name90137_)
                                               _r89991_)))
                                      _$e90141_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx89835_
                                      _hd89988_
                                      _id90127_)))
                               (_E9000990107_))
                           (_E9000990107_)))))
                 (_E9000990107_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E9000990107_))
                                           (_E9000990107_))))
                                   (_E9000990107_))))
                            (_E8999590195_
                             (lambda ()
                               (if (gx#stx-pair? _e8999290024_)
                                   (let ((_e8999790150_
                                          (gx#syntax-e _e8999290024_)))
                                     (let ((_hd8999890153_
                                            (##car _e8999790150_))
                                           (_tl8999990155_
                                            (##cdr _e8999790150_)))
                                       (if (eq? (gx#stx-e _hd8999890153_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl8999990155_)
                                               (let ((_e9000090158_
                                                      (gx#syntax-e
                                                       _tl8999990155_)))
                                                 (let ((_hd9000190161_
                                                        (##car _e9000090158_))
                                                       (_tl9000290163_
                                                        (##cdr _e9000090158_)))
                                                   (let ((_phi90166_
                                                          _hd9000190161_))
                                                     (if (gx#stx-pair?
                                                          _tl9000290163_)
                                                         (let ((_e9000390168_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl9000290163_)))
                   (let ((_hd9000490171_ (##car _e9000390168_))
                         (_tl9000590173_ (##cdr _e9000390168_)))
                     (let ((_id90176_ _hd9000490171_))
                       (if (gx#stx-pair? _tl9000590173_)
                           (let ((_e9000690178_ (gx#syntax-e _tl9000590173_)))
                             (let ((_hd9000790181_ (##car _e9000690178_))
                                   (_tl9000890183_ (##cdr _e9000690178_)))
                               (let ((_name90186_ _hd9000790181_))
                                 (if (gx#stx-null? _tl9000890183_)
                                     (if (and (gx#stx-fixnum? _phi90166_)
                                              (gx#identifier? _id90176_)
                                              (gx#identifier? _name90186_))
                                         (let* ((_phi90188_
                                                 (gx#stx-e _phi90166_))
                                                (_$e90190_
                                                 (gx#core-resolve-identifier__1
                                                  _id90176_
                                                  _phi90188_)))
                                           (if _$e90190_
                                               ((lambda (_bind90193_)
                                                  (_K89989_
                                                   _rest89990_
                                                   (cons (_make-export__9321193212_
                                                          _bind90193_
                                                          _phi90188_
                                                          (gx#current-expander-context)
                                                          _name90186_)
                                                         _r89991_)))
                                                _$e90190_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx89835_
                                                _hd89988_
                                                _id90176_)))
                                         (_E8999690146_))
                                     (_E8999690146_)))))
                           (_E8999690146_)))))
                 (_E8999690146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E8999690146_))
                                           (_E8999690146_))))
                                   (_E8999690146_))))
                            (_E8999490206_
                             (lambda ()
                               (let ((_id90199_ _e8999290024_))
                                 (if (gx#identifier? _id90199_)
                                     (let ((_$e90201_
                                            (gx#core-resolve-identifier__1
                                             _id90199_
                                             (gx#current-export-expander-phi))))
                                       (if _$e90201_
                                           ((lambda (_bind90204_)
                                              (_K89989_
                                               _rest89990_
                                               (cons (_make-export__0__9321393216_
                                                      _bind90204_)
                                                     _r89991_)))
                                            _$e90201_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx89835_
                                            _hd89988_)))
                                     (_E8999590195_)))))
                            (_E8999390270_
                             (lambda ()
                               (if (eq? (gx#stx-e _e8999290024_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx90210_
                                               (gx#current-expander-context))
                                              (_current-phi90212_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx90214_
                                               (gx#core-context-shift
                                                _current-ctx90210_
                                                _current-phi90212_))
                                              (_phi-bind90216_
                                               (hash->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx90214_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp90219_ ((_bind-rest90221_
                                                          _phi-bind90216_)
                                                         (_set90222_ '()))
                                           (let* ((_bind-rest9022390233_
                                                   _bind-rest90221_)
                                                  (_else9022590241_
                                                   (lambda ()
                                                     (_K89989_
                                                      _rest89990_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi90212_
                                                             _set90222_)
                                                            _r89991_))))
                                                  (_K9022790251_
                                                   (lambda (_bind-rest90244_
                                                            _bind90245_
                                                            _key90246_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind90245_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind90245_))
                                                         (_lp90219_
                                                          _bind-rest90244_
                                                          _set90222_)
                                                         (_lp90219_
                                                          _bind-rest90244_
                                                          (cons (_make-export__2__9321593218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind90245_
                         _current-phi90212_
                         _current-ctx90210_)
                        _set90222_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest9022390233_)
                                                 (let ((_hd9022890254_
                                                        (##car _bind-rest9022390233_))
                                                       (_tl9022990256_
                                                        (##cdr _bind-rest9022390233_)))
                                                   (if (##pair? _hd9022890254_)
                                                       (let ((_hd9023090259_
                                                              (##car _hd9022890254_))
                                                             (_tl9023190261_
                                                              (##cdr _hd9022890254_)))
                                                         (let* ((_key90264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9023090259_)
                        (_bind90266_ _tl9023190261_)
                        (_bind-rest90268_ _tl9022990256_))
                   (_K9022790251_ _bind-rest90268_ _bind90266_ _key90264_)))
               (_else9022590241_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else9022590241_)))))
                                       (_E8999490206_))
                                   (_E8999490206_)))))
                       (_E8999390270_))))
                  (_export-imports89840_
                   (lambda (_src89864_ _r89865_)
                     (letrec* ((_current-ctx89867_
                                (gx#current-expander-context))
                               (_current-phi89868_
                                (gx#current-export-expander-phi))
                               (_import->export89869_
                                (lambda (_in89950_)
                                  (let* ((_in8995189959_ _in89950_)
                                         (_E8995389963_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in8995189959_)))
                                         (_K8995489970_
                                          (lambda (_phi89966_
                                                   _key89967_
                                                   _out89968_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx89867_
                                             _key89967_
                                             _phi89966_
                                             _key89967_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in8995189959_
                                         'gx#module-import::t)
                                        (let* ((_e8995589973_
                                                (##unchecked-structure-ref
                                                 _in8995189959_
                                                 '1
                                                 gx#module-import::t
                                                 '#f))
                                               (_out89976_ _e8995589973_)
                                               (_e8995689978_
                                                (##unchecked-structure-ref
                                                 _in8995189959_
                                                 '2
                                                 gx#module-import::t
                                                 '#f))
                                               (_key89981_ _e8995689978_)
                                               (_e8995789983_
                                                (##unchecked-structure-ref
                                                 _in8995189959_
                                                 '3
                                                 gx#module-import::t
                                                 '#f))
                                               (_phi89986_ _e8995789983_))
                                          (_K8995489970_
                                           _phi89986_
                                           _key89981_
                                           _out89976_))
                                        (_E8995389963_)))))
                               (_fold-e89870_
                                (lambda (_in89872_ _r89873_)
                                  (let* ((_in8987489888_ _in89872_)
                                         (_else8987789896_
                                          (lambda () _r89873_)))
                                    (let ((_K8988389932_
                                           (lambda (_phi89928_
                                                    _key89929_
                                                    _out89930_)
                                             (if (and (fx= _phi89928_
                                                           _current-phi89868_)
                                                      (eq? _src89864_
                                                           (##unchecked-structure-ref
                                                            _out89930_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export89869_
                                                        _in89872_)
                                                       _r89873_)
                                                 _r89873_)))
                                          (_K8987989907_
                                           (lambda (_imports89900_
                                                    _phi89901_
                                                    _ctx89902_)
                                             (if (and (fx= _phi89901_
                                                           _current-phi89868_)
                                                      (eq? _src89864_
                                                           _ctx89902_))
                                                 (foldl1 (lambda (_in89904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r89905_)
                   (cons (_import->export89869_ _in89904_) _r89905_))
                 _r89873_
                 _imports89900_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r89873_))))
                                      (let ((_try-match8987689925_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in8987489888_
                                                    'gx#import-set::t)
                                                   (let* ((_e8988089910_
                                                           (##unchecked-structure-ref
                                                            _in8987489888_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8988189915_
                                                           (##unchecked-structure-ref
                                                            _in8987489888_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_e8988289920_
                                                           (##unchecked-structure-ref
                                                            _in8987489888_
                                                            '3
                                                            gx#import-set::t
                                                            '#f)))
                                                     (let ((_ctx89913_
                                                            _e8988089910_)
                                                           (_phi89918_
                                                            _e8988189915_)
                                                           (_imports89923_
                                                            _e8988289920_))
                                                       (_K8987989907_
                                                        _imports89923_
                                                        _phi89918_
                                                        _ctx89913_)))
                                                   (_else8987789896_)))))
                                        (if (##structure-direct-instance-of?
                                             _in8987489888_
                                             'gx#module-import::t)
                                            (let* ((_e8988489935_
                                                    (##unchecked-structure-ref
                                                     _in8987489888_
                                                     '1
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8988589940_
                                                    (##unchecked-structure-ref
                                                     _in8987489888_
                                                     '2
                                                     gx#module-import::t
                                                     '#f))
                                                   (_e8988689945_
                                                    (##unchecked-structure-ref
                                                     _in8987489888_
                                                     '3
                                                     gx#module-import::t
                                                     '#f)))
                                              (let ((_out89938_ _e8988489935_)
                                                    (_key89943_ _e8988589940_)
                                                    (_phi89948_ _e8988689945_))
                                                (_K8988389932_
                                                 _phi89948_
                                                 _key89943_
                                                 _out89938_)))
                                            (_try-match8987689925_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src89864_
                              _current-phi89868_
                              (foldl1 _fold-e89870_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx89867_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r89865_))))
                  (_export!89841_
                   (lambda (_rbody89854_)
                     (letrec* ((_current-ctx89856_
                                (gx#current-expander-context))
                               (_fold-e89857_
                                (lambda (_out89861_ _r89862_)
                                  (if (##structure-direct-instance-of?
                                       _out89861_
                                       'gx#module-export::t)
                                      (cons _out89861_ _r89862_)
                                      (if (##structure-direct-instance-of?
                                           _out89861_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r89862_
                                                  (##unchecked-structure-ref
                                                   _out89861_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r89862_)))))
                       (let ((_body89859_ (reverse _rbody89854_)))
                         (##unchecked-structure-set!
                          _current-ctx89856_
                          (foldl1 _fold-e89857_
                                  (##unchecked-structure-ref
                                   _current-ctx89856_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body89859_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body89859_))))
                  (_expanded-export?89842_
                   (lambda (_e89849_)
                     (let ((_$e89851_
                            (##structure-direct-instance-of?
                             _e89849_
                             'gx#module-export::t)))
                       (if _$e89851_
                           _$e89851_
                           (##structure-direct-instance-of?
                            _e89849_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?89836_)
              (let ((_rbody89847_
                     (gx#core-expand-import/export
                      _stx89835_
                      _expanded-export?89842_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand189839_)))
                (if _internal-expand?89836_
                    (reverse _rbody89847_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!89841_ _rbody89847_))
                     (gx#stx-source _stx89835_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx89835_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx89835_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx90320_)
        (let ((_internal-expand?90322_ '#f))
          (gx#core-expand-export%__% _stx90320_ _internal-expand?90322_))))
    (define gx#core-expand-export%
      (lambda _g93286_
        (let ((_g93285_ (##length _g93286_)))
          (cond ((##fx= _g93285_ 1)
                 (apply (lambda (_stx90320_)
                          (gx#core-expand-export%__0 _stx90320_))
                        _g93286_))
                ((##fx= _g93285_ 2)
                 (apply (lambda (_stx90324_ _internal-expand?90325_)
                          (gx#core-expand-export%__%
                           _stx90324_
                           _internal-expand?90325_))
                        _g93286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g93286_))))))
    (define gx#core-expand-export-source
      (lambda (_hd89832_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd89832_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx89802_)
        (let* ((_e8980389810_ _stx89802_)
               (_E8980589814_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8980389810_)))
               (_E8980489828_
                (lambda ()
                  (if (gx#stx-pair? _e8980389810_)
                      (let ((_e8980689818_ (gx#syntax-e _e8980389810_)))
                        (let ((_hd8980789821_ (##car _e8980689818_))
                              (_tl8980889823_ (##cdr _e8980689818_)))
                          (let ((_body89826_ _tl8980889823_))
                            (if (gx#identifier-list? _body89826_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body89826_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body89826_))
                                   (gx#stx-source _stx89802_)))
                                (_E8980589814_)))))
                      (_E8980589814_)))))
          (_E8980489828_))))
    (define gx#core-bind-feature!__%
      (lambda (_id89768_ _private?89769_ _phi89770_ _ctx89771_)
        (gx#core-bind-syntax!__%
         _id89768_
         ((if _private?89769_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id89768_))
         _private?89769_
         _phi89770_
         _ctx89771_)))
    (define gx#core-bind-feature!__0
      (lambda (_id89776_)
        (let* ((_private?89778_ '#f)
               (_phi89780_ (gx#current-expander-phi))
               (_ctx89782_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89776_
           _private?89778_
           _phi89780_
           _ctx89782_))))
    (define gx#core-bind-feature!__1
      (lambda (_id89784_ _private?89785_)
        (let* ((_phi89787_ (gx#current-expander-phi))
               (_ctx89789_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89784_
           _private?89785_
           _phi89787_
           _ctx89789_))))
    (define gx#core-bind-feature!__2
      (lambda (_id89791_ _private?89792_ _phi89793_)
        (let ((_ctx89795_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id89791_
           _private?89792_
           _phi89793_
           _ctx89795_))))
    (define gx#core-bind-feature!
      (lambda _g93288_
        (let ((_g93287_ (##length _g93288_)))
          (cond ((##fx= _g93287_ 1)
                 (apply (lambda (_id89776_)
                          (gx#core-bind-feature!__0 _id89776_))
                        _g93288_))
                ((##fx= _g93287_ 2)
                 (apply (lambda (_id89784_ _private?89785_)
                          (gx#core-bind-feature!__1 _id89784_ _private?89785_))
                        _g93288_))
                ((##fx= _g93287_ 3)
                 (apply (lambda (_id89791_ _private?89792_ _phi89793_)
                          (gx#core-bind-feature!__2
                           _id89791_
                           _private?89792_
                           _phi89793_))
                        _g93288_))
                ((##fx= _g93287_ 4)
                 (apply (lambda (_id89797_
                                 _private?89798_
                                 _phi89799_
                                 _ctx89800_)
                          (gx#core-bind-feature!__%
                           _id89797_
                           _private?89798_
                           _phi89799_
                           _ctx89800_))
                        _g93288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g93288_))))))))
